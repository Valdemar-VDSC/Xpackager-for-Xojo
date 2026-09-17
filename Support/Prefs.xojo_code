#tag Module
Protected Module Prefs
	#tag Method, Flags = &h21
		Private Function File() As FolderItem
		  Var base As FolderItem = SpecialFolder.ApplicationData.Child("XPackager")
		  If Not base.Exists Then base.CreateFolder
		  Return base.Child("prefs.json")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load()
		  If mLoaded Then Return
		  mLoaded = True
		  Var f As FolderItem = File
		  If f Is Nil Or Not f.Exists Then Return
		  Try
		    Var j As New JSONItem(PkgFS.ReadTextFile(f))
		    If j.HasKey("notaryProfile") Then NotaryProfile = j.Value("notaryProfile")
		    If j.HasKey("notaryAppleID") Then NotaryAppleID = j.Value("notaryAppleID")
		    If j.HasKey("notaryTeamID") Then NotaryTeamID = j.Value("notaryTeamID")
		    If j.HasKey("sidebarWidth") Then SidebarWidth = j.Value("sidebarWidth")
		  Catch err As RuntimeException
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  Var j As New JSONItem
		  j.Compact = False
		  j.Value("notaryProfile") = NotaryProfile
		  j.Value("notaryAppleID") = NotaryAppleID
		  j.Value("notaryTeamID") = NotaryTeamID
		  j.Value("sidebarWidth") = SidebarWidth
		  Try
		    PkgFS.WriteTextFile(File, j.ToString)
		  Catch err As RuntimeException
		  End Try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mLoaded As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		NotaryAppleID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NotaryProfile As String = "XPackager"
	#tag EndProperty

	#tag Property, Flags = &h0
		NotaryTeamID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SidebarWidth As Double = 200.0
	#tag EndProperty


End Module
#tag EndModule
