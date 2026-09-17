#tag Class
Protected Class PkgComponent
	#tag Method, Flags = &h0
		Function Clone() As PkgComponent
		  Var c As New PkgComponent
		  c.ComponentID = ComponentID
		  c.Name = Name
		  c.Identifier = Identifier
		  c.Version = Version
		  c.InstallLocation = InstallLocation
		  c.Payload = Payload.Clone
		  c.Scripts = Scripts.Clone
		  c.ComponentDescription = ComponentDescription
		  c.StartSelected = StartSelected
		  c.UserToggleable = UserToggleable
		  c.IsVisible = IsVisible
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  ComponentID = PkgIDs.NewID
		  Payload = New PkgPayload
		  Scripts = New PkgScripts
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisplayName() As String
		  If Name.Trim = "" Then Return Identifier
		  Return Name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgComponent
		  Var c As New PkgComponent
		  If j Is Nil Then Return c
		  If j.HasKey("id") Then c.ComponentID = j.Value("id")
		  If j.HasKey("name") Then c.Name = j.Value("name")
		  If j.HasKey("identifier") Then c.Identifier = j.Value("identifier")
		  If j.HasKey("version") Then c.Version = j.Value("version")
		  If j.HasKey("installLocation") Then c.InstallLocation = j.Value("installLocation")
		  If j.HasKey("payload") Then c.Payload = PkgPayload.FromJSON(j.Value("payload"))
		  If j.HasKey("scripts") Then c.Scripts = PkgScripts.FromJSON(j.Value("scripts"))
		  If j.HasKey("componentDescription") Then c.ComponentDescription = j.Value("componentDescription")
		  If j.HasKey("startSelected") Then c.StartSelected = j.Value("startSelected")
		  If j.HasKey("userToggleable") Then c.UserToggleable = j.Value("userToggleable")
		  If j.HasKey("visible") Then c.IsVisible = j.Value("visible")
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
		  j.Value("id") = ComponentID
		  j.Value("name") = Name
		  j.Value("identifier") = Identifier
		  j.Value("version") = Version
		  j.Value("installLocation") = InstallLocation
		  j.Value("payload") = Payload.ToJSON
		  j.Value("scripts") = Scripts.ToJSON
		  j.Value("componentDescription") = ComponentDescription
		  j.Value("startSelected") = StartSelected
		  j.Value("userToggleable") = UserToggleable
		  j.Value("visible") = IsVisible
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ComponentDescription As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ComponentID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Identifier As String = "fr.vdsc.composant"
	#tag EndProperty

	#tag Property, Flags = &h0
		InstallLocation As String = "/"
	#tag EndProperty

	#tag Property, Flags = &h0
		IsVisible As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String = "Composant"
	#tag EndProperty

	#tag Property, Flags = &h0
		Payload As PkgPayload
	#tag EndProperty

	#tag Property, Flags = &h0
		Scripts As PkgScripts
	#tag EndProperty

	#tag Property, Flags = &h0
		StartSelected As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		UserToggleable As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		Version As String = "1.0"
	#tag EndProperty


End Class
#tag EndClass
