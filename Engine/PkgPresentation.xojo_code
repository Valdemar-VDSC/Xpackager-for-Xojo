#tag Class
Protected Class PkgPresentation
	#tag Method, Flags = &h0
		Function Clone() As PkgPresentation
		  Var c As New PkgPresentation
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
		  c.BackgroundPath = BackgroundPath
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgPresentation
		  Var p As New PkgPresentation
		  If j Is Nil Then Return p
		  If j.HasKey("title") Then
		    // « MonPaquet » était l'ancien défaut : on le neutralise pour que le titre
		    // suive le nom du produit.
		    Var t As String = j.Value("title")
		    If t <> "MonPaquet" Then p.Title = t
		  End If
		  If j.HasKey("welcomePath") Then p.WelcomePath = j.Value("welcomePath")
		  If j.HasKey("welcomeRTF") Then p.WelcomeRTF = j.Value("welcomeRTF")
		  If j.HasKey("welcomeText") Then p.WelcomeText = j.Value("welcomeText")
		  If j.HasKey("readmePath") Then p.ReadmePath = j.Value("readmePath")
		  If j.HasKey("readmeRTF") Then p.ReadmeRTF = j.Value("readmeRTF")
		  If j.HasKey("readmeText") Then p.ReadmeText = j.Value("readmeText")
		  If j.HasKey("licensePath") Then p.LicensePath = j.Value("licensePath")
		  If j.HasKey("licenseRTF") Then p.LicenseRTF = j.Value("licenseRTF")
		  If j.HasKey("licenseText") Then p.LicenseText = j.Value("licenseText")
		  If j.HasKey("conclusionPath") Then p.ConclusionPath = j.Value("conclusionPath")
		  If j.HasKey("conclusionRTF") Then p.ConclusionRTF = j.Value("conclusionRTF")
		  If j.HasKey("conclusionText") Then p.ConclusionText = j.Value("conclusionText")
		  If j.HasKey("backgroundPath") Then p.BackgroundPath = j.Value("backgroundPath")
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
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
		  j.Value("backgroundPath") = BackgroundPath
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		BackgroundPath As String
	#tag EndProperty

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


End Class
#tag EndClass
