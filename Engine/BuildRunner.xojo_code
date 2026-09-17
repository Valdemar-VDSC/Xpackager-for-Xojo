#tag Class
Protected Class BuildRunner
	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub DoneDelegate(success As Boolean, message As String)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub LogDelegate(text As String)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub PhaseDelegate(text As String, progress As Double)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h21
		Private Sub Cleanup()
		  PkgFS.DeleteRecursively(mWork)
		  mWork = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Emit(text As String)
		  LogHandler.Invoke(text)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Fail(message As String)
		  Cleanup
		  mRunning = False
		  Emit(EndOfLine + "❌ " + message + EndOfLine)
		  SetPhase(Loc.kFailed, -1.0)
		  DoneHandler.Invoke(False, message)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FirstSubmissionID(text As String) As String
		  // Extrait le premier identifiant de soumission (UUID) de la sortie notarytool.
		  For Each line As String In text.Split(EndOfLine)
		    Var t As String = line.Trim
		    If t.BeginsWith("id:") Then
		      Var id As String = t.Middle(3).Trim
		      If id.Length = 36 Then Return id
		    End If
		  Next
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsRunning() As Boolean
		  Return mRunning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunCurrentCommand(useFallback As Boolean)
		  Var current As BuildStep = mSteps(mIndex)
		  Var args() As String
		  If useFallback Then
		    For Each a As String In current.FallbackArgs
		      args.Add(a)
		    Next
		  Else
		    For Each a As String In current.Args
		      args.Add(a)
		    Next
		  End If
		  mStepOutput = ""
		  If current.EchoCommand Then Emit(ToolRunner.Display(current.ToolPath, args) + EndOfLine)
		  mShell.Execute(ToolRunner.CommandLine(current.ToolPath, args) + " 2>&1")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunNext()
		  mIndex = mIndex + 1
		  mUsedFallback = False
		  If mIndex > mSteps.LastIndex Then
		    Cleanup
		    mRunning = False
		    SetPhase(Loc.kFinished, 1.0)
		    Emit(EndOfLine + "✅ " + Loc.kPackageCreated + " " + mOutputPath + EndOfLine)
		    DoneHandler.Invoke(True, Loc.kPackageCreated + " " + mOutputPath)
		    Return
		  End If
		  
		  Var current As BuildStep = mSteps(mIndex)
		  If current.Phase <> "" Then SetPhase(current.Phase, current.Progress)
		  If Not current.Quiet Then Emit(EndOfLine + "— " + current.Label + " —" + EndOfLine)
		  RunCurrentCommand(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetPhase(text As String, progress As Double)
		  PhaseHandler.Invoke(text, progress)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShellCompleted(sender As Shell)
		  Var rest As String = sender.ReadAll
		  If rest <> "" Then
		    mStepOutput = mStepOutput + rest
		    If Not mSteps(mIndex).Quiet Then Emit(rest)
		  End If
		  
		  Var current As BuildStep = mSteps(mIndex)
		  Var code As Integer = sender.ExitCode
		  
		  If current.CheckAccepted Then
		    // notarytool renvoie parfois 0 même pour « Invalid » : on se fie au statut.
		    If mStepOutput.Lowercase.IndexOf("status: accepted") < 0 Then
		      Var id As String = FirstSubmissionID(mStepOutput)
		      If id <> "" And current.NotaryProfile <> "" Then
		        SetPhase(Loc.kPhaseRejectionLog, -1.0)
		        Emit(EndOfLine + Loc.kPhaseRejectionLog + EndOfLine)
		        Var logArgs() As String = Array("notarytool", "log", id, "--keychain-profile", current.NotaryProfile)
		        Var out As String
		        Call ToolRunner.Run("/usr/bin/xcrun", logArgs, out)
		        Emit(out + EndOfLine)
		      End If
		      If mStepOutput.Lowercase.IndexOf("status: invalid") >= 0 Then
		        Fail(Loc.kErrNotarizeInvalid)
		      Else
		        Fail(Loc.kErrNotarizeNotAccepted)
		      End If
		      Return
		    End If
		    RunNext
		    Return
		  End If
		  
		  If code <> 0 Then
		    // Repli éventuel (codesign sans --preserve-metadata).
		    If Not mUsedFallback And current.FallbackArgs.Count > 0 Then
		      mUsedFallback = True
		      RunCurrentCommand(True)
		      Return
		    End If
		    If current.Quiet And mStepOutput <> "" Then Emit(mStepOutput)
		    Var message As String = current.FailureMessage
		    If message = "" Then message = "« " + current.Label + " » a échoué."
		    Fail(message + " (code " + Str(code) + ")")
		    Return
		  End If
		  
		  RunNext
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShellData(sender As Shell)
		  // STREAMING RÉEL : appelé au fil de l'eau (ex. « Current status: In Progress… »).
		  Var chunk As String = sender.ReadAll
		  If chunk = "" Then Return
		  mStepOutput = mStepOutput + chunk
		  If mSteps(mIndex).Quiet Then Return
		  If mSteps(mIndex).CheckAccepted And chunk.IndexOf("Waiting for processing") >= 0 Then
		    SetPhase(Loc.kPhaseNotarizeWaiting, -1.0)
		  End If
		  Emit(chunk)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Start(steps() As BuildStep, work As FolderItem, outputPath As String)
		  // Copie de la liste d'étapes (assignation d'array non garantie en Xojo).
		  mSteps.RemoveAll
		  For Each s As BuildStep In steps
		    mSteps.Add(s)
		  Next
		  mWork = work
		  mOutputPath = outputPath
		  mIndex = -1
		  mRunning = True
		  
		  mShell = New Shell
		  mShell.ExecuteMode = Shell.ExecuteModes.Asynchronous
		  mShell.Timeout = -1
		  AddHandler mShell.DataAvailable, AddressOf ShellData
		  AddHandler mShell.Completed, AddressOf ShellCompleted
		  
		  SetPhase(Loc.kPreparingEllipsis, 0.02)
		  RunNext
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DoneHandler As DoneDelegate
	#tag EndProperty

	#tag Property, Flags = &h0
		LogHandler As LogDelegate
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mOutputPath As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRunning As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShell As Shell
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mStepOutput As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSteps() As BuildStep
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUsedFallback As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mWork As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		PhaseHandler As PhaseDelegate
	#tag EndProperty


End Class
#tag EndClass
