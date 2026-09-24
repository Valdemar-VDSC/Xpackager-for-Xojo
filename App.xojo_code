#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Sub DocumentOpened(item As FolderItem)
		  Call OpenFile(item)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  NativeWindowMenu.Install(WindowMenu)
		  
		  Prefs.Load
		  
		  If mWindows.Count = 0 Then Call OpenProjectWindow(New PackageProject, "")
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function AppPreferences() As Boolean Handles AppPreferences.Action
		  ShowPreferences
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileAbout() As Boolean Handles FileAbout.Action
		  If mAbout Is Nil Then mAbout = New AboutWindow
		  mAbout.Show()
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileBuild() As Boolean Handles FileBuild.Action
		  If Self.WindowCount = 0 Then Return True
		  Var w As DesktopWindow = Self.Window(0)
		  If w IsA ProjectWindow Then ProjectWindow(w).BuildPackage
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileNew() As Boolean Handles FileNew.Action
		  Call OpenProjectWindow(New PackageProject, "")
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileNewFromTemplate() As Boolean Handles FileNewFromTemplate.Action
		  Var w As New TemplateChooserWindow
		  w.Show
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileOpen() As Boolean Handles FileOpen.Action
		  Var panel As New NativeFilePanel(NativeFilePanel.Modes.Open)
		  panel.SetOpenOptions(True, False, False)
		  panel.SetAllowedExtensions("xpackager", "xpkgproj", "xpackmodel")
		  panel.SetTexts(Loc.kOpenProject, "", "")
		  If Not panel.RunModal Then Return True
		  Call OpenFile(panel.Value)
		  Return True
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ForgetWindow(w As ProjectWindow)
		  For i As Integer = mWindows.LastIndex DownTo 0
		    If mWindows(i) Is w Then mWindows.RemoveAt(i)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OpenFile(item As FolderItem) As Boolean
		  If item Is Nil Or Not item.Exists Then Return False
		  Var ext As String = PkgFS.FileExtension(item.Name).Lowercase
		  Select Case ext
		  Case "xpackager", "xpkgproj"
		    // Fenêtre déjà ouverte sur ce fichier : on la ramène au premier plan.
		    For Each w As ProjectWindow In mWindows
		      Var f As FolderItem = w.ProjectFile
		      If f <> Nil And f.NativePath = item.NativePath Then
		        w.Show
		        Return True
		      End If
		    Next
		    Var win As New ProjectWindow
		    mWindows.Add(win)
		    win.Show
		    Try
		      win.LoadFile(item)
		    Catch err As RuntimeException
		      XPUI.ShowError(err.Message)
		    End Try
		    Return True
		  Case "xpackmodel"
		    // Un modèle ouvre un nouveau projet prérempli, non enregistré.
		    Try
		      Var name As String = item.Name
		      Var dot As Integer = name.LastIndexOf(".")
		      If dot > 0 Then name = name.Left(dot)
		      Call OpenProjectWindow(PackageProject.Load(item), name)
		    Catch err As RuntimeException
		      XPUI.ShowError(err.Message)
		    End Try
		    Return True
		  End Select
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OpenProjectWindow(p As PackageProject, suggestedName As String) As ProjectWindow
		  Var win As New ProjectWindow
		  mWindows.Add(win)
		  win.Show
		  win.LoadProject(p, suggestedName)
		  Return win
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowPreferences()
		  If mPrefs Is Nil Then mPrefs = New PrefsWindow
		  mPrefs.Show
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mAbout As AboutWindow
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPrefs As PrefsWindow
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mWindows() As ProjectWindow
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProcessID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
