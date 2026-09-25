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
		  For Each code As String In LocalizedCodes
		    c.SetLocalizedName(code, LocalizedName(code))
		    c.SetLocalizedDescription(code, LocalizedDescription(code))
		  Next
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  ComponentID = PkgIDs.NewID
		  Payload = New PkgPayload
		  Scripts = New PkgScripts
		  mNames = New Dictionary
		  mDescriptions = New Dictionary
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
		  // Nom et description du choix par langue ; tableau pour garder l'ordre.
		  If j.HasKey("localized") Then
		    Var arr As JSONItem = j.Value("localized")
		    For i As Integer = 0 To arr.Count - 1
		      Var item As JSONItem = arr.ChildAt(i)
		      If item Is Nil Or Not item.HasKey("code") Then Continue
		      Var code As String = PkgPresentation.NormalizeLanguage(item.Value("code"))
		      If code = "" Then Continue
		      If item.HasKey("name") Then c.SetLocalizedName(code, item.Value("name"))
		      If item.HasKey("componentDescription") Then c.SetLocalizedDescription(code, item.Value("componentDescription"))
		    Next
		  End If
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocalizedCodes() As String()
		  // Les langues où ce composant a un nom ou une description traduits.
		  Var out() As String
		  If mOrder = Nil Then Return out
		  For Each code As String In mOrder
		    out.Add(code)
		  Next
		  Return out
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocalizedDescription(code As String) As String
		  If mDescriptions = Nil Then Return ""
		  Var c As String = PkgPresentation.NormalizeLanguage(code)
		  If c = "" Or Not mDescriptions.HasKey(c) Then Return ""
		  Return mDescriptions.Value(c)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocalizedName(code As String) As String
		  If mNames = Nil Then Return ""
		  Var c As String = PkgPresentation.NormalizeLanguage(code)
		  If c = "" Or Not mNames.HasKey(c) Then Return ""
		  Return mNames.Value(c)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RememberCode(code As String)
		  For Each known As String In mOrder
		    If known = code Then Return
		  Next
		  mOrder.Add(code)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLocalizedDescription(code As String, value As String)
		  Var c As String = PkgPresentation.NormalizeLanguage(code)
		  If c = "" Then Return
		  mDescriptions.Value(c) = value
		  RememberCode(c)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLocalizedName(code As String, value As String)
		  Var c As String = PkgPresentation.NormalizeLanguage(code)
		  If c = "" Then Return
		  mNames.Value(c) = value
		  RememberCode(c)
		End Sub
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
		  Var codes() As String = LocalizedCodes
		  If codes.Count > 0 Then
		    Var arr As New JSONItem
		    arr.Compact = False
		    For Each code As String In codes
		      Var item As New JSONItem
		      item.Compact = False
		      item.Value("code") = code
		      item.Value("name") = LocalizedName(code)
		      item.Value("componentDescription") = LocalizedDescription(code)
		      arr.Add(item)
		    Next
		    j.Value("localized") = arr
		  End If
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ComponentDescription As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDescriptions As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mNames As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mOrder() As String
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
