#tag Class
Protected Class PkgScripts
	#tag Method, Flags = &h0
		Function Clone() As PkgScripts
		  Var c As New PkgScripts
		  c.PreinstallPath = PreinstallPath
		  c.PostinstallPath = PostinstallPath
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgScripts
		  Var s As New PkgScripts
		  If j Is Nil Then Return s
		  If j.HasKey("preinstallPath") Then s.PreinstallPath = j.Value("preinstallPath")
		  If j.HasKey("postinstallPath") Then s.PostinstallPath = j.Value("postinstallPath")
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Value("preinstallPath") = PreinstallPath
		  j.Value("postinstallPath") = PostinstallPath
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		PostinstallPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PreinstallPath As String
	#tag EndProperty


End Class
#tag EndClass
