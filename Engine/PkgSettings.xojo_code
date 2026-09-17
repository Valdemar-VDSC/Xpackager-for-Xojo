#tag Class
Protected Class PkgSettings
	#tag Method, Flags = &h0
		Function Clone() As PkgSettings
		  Var c As New PkgSettings
		  c.PackageName = PackageName
		  c.SigningIdentity = SigningIdentity
		  c.HardenPayloadApps = HardenPayloadApps
		  c.AppSigningIdentity = AppSigningIdentity
		  c.WebSafeName = WebSafeName
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgSettings
		  Var s As New PkgSettings
		  If j Is Nil Then Return s
		  If j.HasKey("packageName") Then s.PackageName = j.Value("packageName")
		  If j.HasKey("signingIdentity") Then s.SigningIdentity = j.Value("signingIdentity")
		  If j.HasKey("hardenPayloadApps") Then s.HardenPayloadApps = j.Value("hardenPayloadApps")
		  If j.HasKey("appSigningIdentity") Then s.AppSigningIdentity = j.Value("appSigningIdentity")
		  If j.HasKey("webSafeName") Then s.WebSafeName = j.Value("webSafeName")
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
		  j.Value("packageName") = PackageName
		  j.Value("signingIdentity") = SigningIdentity
		  j.Value("hardenPayloadApps") = HardenPayloadApps
		  j.Value("appSigningIdentity") = AppSigningIdentity
		  j.Value("webSafeName") = WebSafeName
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		AppSigningIdentity As String
	#tag EndProperty

	#tag Property, Flags = &h0
		HardenPayloadApps As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		PackageName As String = "MonPaquet"
	#tag EndProperty

	#tag Property, Flags = &h0
		SigningIdentity As String
	#tag EndProperty

	#tag Property, Flags = &h0
		WebSafeName As Boolean
	#tag EndProperty


End Class
#tag EndClass
