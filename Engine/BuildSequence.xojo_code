#tag Module
Protected Module BuildSequence
	#tag Method, Flags = &h21
		Private Function FirstSubmissionID(text As String) As String
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
		Function RunSteps(steps() As BuildStep, work As FolderItem, outputPath As String, quiet As Boolean, ByRef message As String) As Boolean
		  // Exécution SYNCHRONE des étapes (pour l'outil en ligne de commande).
		  // L'app de bureau utilise BuildRunner (asynchrone, journal streamé).
		  For Each current As BuildStep In steps
		    If Not quiet And Not current.Quiet Then
		      Print(EndOfLine + "— " + current.Label + " —")
		      If current.EchoCommand Then Print(ToolRunner.Display(current.ToolPath, current.Args))
		    End If
		    
		    Var output As String
		    Var code As Integer = ToolRunner.Run(current.ToolPath, current.Args, output)
		    If code <> 0 And current.FallbackArgs.Count > 0 Then
		      code = ToolRunner.Run(current.ToolPath, current.FallbackArgs, output)
		    End If
		    If Not quiet And Not current.Quiet And output <> "" Then Print(output)
		    
		    If current.CheckAccepted Then
		      If output.Lowercase.IndexOf("status: accepted") < 0 Then
		        Var id As String = FirstSubmissionID(output)
		        If id <> "" And current.NotaryProfile <> "" Then
		          Var logArgs() As String = Array("notarytool", "log", id, "--keychain-profile", current.NotaryProfile)
		          Var logOut As String
		          Call ToolRunner.Run("/usr/bin/xcrun", logArgs, logOut)
		          If Not quiet Then Print(logOut)
		        End If
		        PkgFS.DeleteRecursively(work)
		        If output.Lowercase.IndexOf("status: invalid") >= 0 Then
		          message = Loc.kErrNotarizeInvalid
		        Else
		          message = Loc.kErrNotarizeNotAccepted
		        End If
		        Return False
		      End If
		      Continue
		    End If
		    
		    If code <> 0 Then
		      PkgFS.DeleteRecursively(work)
		      message = current.FailureMessage
		      If message = "" Then message = "« " + current.Label + " » a échoué."
		      message = message + " (code " + Str(code) + ")"
		      Return False
		    End If
		  Next
		  
		  PkgFS.DeleteRecursively(work)
		  message = outputPath
		  Return True
		End Function
	#tag EndMethod


End Module
#tag EndModule
