#tag Class
Protected Class PkgPresentationTexts
	#tag Method, Flags = &h0
		Function Clone() As PkgPresentationTexts
		  Var c As New PkgPresentationTexts
		  c.Title = Title
		  c.WelcomePath = WelcomePath
		  c.WelcomeRTF = WelcomeRTF
		  c.WelcomeText = WelcomeText
		  c.ReadmePath = ReadmePath
		  c.ReadmeRTF = ReadmeRTF
		  c.ReadmeText = ReadmeText
		  c.LicensePath = LicensePath
		  c.LicenseRTF = LicenseRTF
		  c.LicenseText = LicenseText
		  c.ConclusionPath = ConclusionPath
		  c.ConclusionRTF = ConclusionRTF
		  c.ConclusionText = ConclusionText
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgPresentationTexts
		  // Les clés sont les mêmes à plat (langue de référence) et dans un objet de
		  // langue : un seul lecteur pour les deux.
		  Var t As New PkgPresentationTexts
		  If j Is Nil Then Return t
		  If j.HasKey("title") Then t.Title = j.Value("title")
		  If j.HasKey("welcomePath") Then t.WelcomePath = j.Value("welcomePath")
		  If j.HasKey("welcomeRTF") Then t.WelcomeRTF = j.Value("welcomeRTF")
		  If j.HasKey("welcomeText") Then t.WelcomeText = j.Value("welcomeText")
		  If j.HasKey("readmePath") Then t.ReadmePath = j.Value("readmePath")
		  If j.HasKey("readmeRTF") Then t.ReadmeRTF = j.Value("readmeRTF")
		  If j.HasKey("readmeText") Then t.ReadmeText = j.Value("readmeText")
		  If j.HasKey("licensePath") Then t.LicensePath = j.Value("licensePath")
		  If j.HasKey("licenseRTF") Then t.LicenseRTF = j.Value("licenseRTF")
		  If j.HasKey("licenseText") Then t.LicenseText = j.Value("licenseText")
		  If j.HasKey("conclusionPath") Then t.ConclusionPath = j.Value("conclusionPath")
		  If j.HasKey("conclusionRTF") Then t.ConclusionRTF = j.Value("conclusionRTF")
		  If j.HasKey("conclusionText") Then t.ConclusionText = j.Value("conclusionText")
		  Return t
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasContent(screen As Integer) As Boolean
		  Return Path(screen).Trim <> "" Or RTF(screen) <> "" Or Text(screen) <> ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsEmpty() As Boolean
		  // Le titre compte : une langue qui n'a que lui n'est pas vide.
		  If Title.Trim <> "" Then Return False
		  For s As Integer = 0 To kScreenCount - 1
		    If HasContent(s) Then Return False
		  Next
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Path(screen As Integer) As String
		  Select Case screen
		  Case kReadme
		    Return ReadmePath
		  Case kLicense
		    Return LicensePath
		  Case kConclusion
		    Return ConclusionPath
		  End Select
		  Return WelcomePath
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPath(screen As Integer, value As String)
		  Select Case screen
		  Case kReadme
		    ReadmePath = value
		  Case kLicense
		    LicensePath = value
		  Case kConclusion
		    ConclusionPath = value
		  Else
		    WelcomePath = value
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RTF(screen As Integer) As String
		  Select Case screen
		  Case kReadme
		    Return ReadmeRTF
		  Case kLicense
		    Return LicenseRTF
		  Case kConclusion
		    Return ConclusionRTF
		  End Select
		  Return WelcomeRTF
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRTF(screen As Integer, value As String)
		  Select Case screen
		  Case kReadme
		    ReadmeRTF = value
		  Case kLicense
		    LicenseRTF = value
		  Case kConclusion
		    ConclusionRTF = value
		  Else
		    WelcomeRTF = value
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Text(screen As Integer) As String
		  Select Case screen
		  Case kReadme
		    Return ReadmeText
		  Case kLicense
		    Return LicenseText
		  Case kConclusion
		    Return ConclusionText
		  End Select
		  Return WelcomeText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetText(screen As Integer, value As String)
		  Select Case screen
		  Case kReadme
		    ReadmeText = value
		  Case kLicense
		    LicenseText = value
		  Case kConclusion
		    ConclusionText = value
		  Else
		    WelcomeText = value
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ScreenKey(screen As Integer) As String
		  // Nom de base du fichier de ressource : welcome.rtf, readme.rtf, …
		  Select Case screen
		  Case kReadme
		    Return "readme"
		  Case kLicense
		    Return "license"
		  Case kConclusion
		    Return "conclusion"
		  End Select
		  Return "welcome"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
		  WriteInto(j)
		  Return j
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteInto(j As JSONItem)
		  // Écrit les douze champs dans l'objet reçu : à plat pour la référence
		  // ou dans l'objet d'une langue.
		  If j Is Nil Then Return
		  j.Value("title") = Title
		  j.Value("welcomePath") = WelcomePath
		  j.Value("welcomeRTF") = WelcomeRTF
		  j.Value("welcomeText") = WelcomeText
		  j.Value("readmePath") = ReadmePath
		  j.Value("readmeRTF") = ReadmeRTF
		  j.Value("readmeText") = ReadmeText
		  j.Value("licensePath") = LicensePath
		  j.Value("licenseRTF") = LicenseRTF
		  j.Value("licenseText") = LicenseText
		  j.Value("conclusionPath") = ConclusionPath
		  j.Value("conclusionRTF") = ConclusionRTF
		  j.Value("conclusionText") = ConclusionText
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ConclusionPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ConclusionRTF As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ConclusionText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		LicensePath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		LicenseRTF As String
	#tag EndProperty

	#tag Property, Flags = &h0
		LicenseText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReadmePath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReadmeRTF As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReadmeText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Title As String
	#tag EndProperty

	#tag Property, Flags = &h0
		WelcomePath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		WelcomeRTF As String
	#tag EndProperty

	#tag Property, Flags = &h0
		WelcomeText As String
	#tag EndProperty


	#tag Constant, Name = kWelcome, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kReadme, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kLicense, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kConclusion, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kScreenCount, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant


End Class
#tag EndClass
