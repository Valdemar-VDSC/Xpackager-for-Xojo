#tag Class
Protected Class PkgNotarization
	#tag Method, Flags = &h0
		Function Clone() As PkgNotarization
		  Var c As New PkgNotarization
		  c.Enabled = Enabled
		  c.KeychainProfile = KeychainProfile
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgNotarization
		  Var n As New PkgNotarization
		  If j Is Nil Then Return n
		  If j.HasKey("enabled") Then n.Enabled = j.Value("enabled")
		  If j.HasKey("keychainProfile") Then n.KeychainProfile = j.Value("keychainProfile")
		  Return n
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
		  j.Value("enabled") = Enabled
		  j.Value("keychainProfile") = KeychainProfile
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Enabled As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		KeychainProfile As String
	#tag EndProperty


End Class
#tag EndClass
