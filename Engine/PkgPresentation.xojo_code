#tag Class
Protected Class PkgPresentation
	#tag Method, Flags = &h0
		Function AddLanguage(code As String) As String
		  // Déclare une langue supplémentaire ; renvoie le code normalisé, ou "" si le
		  // code est inutilisable ou déjà déclaré.
		  Var c As String = NormalizeLanguage(code)
		  If c = "" Or HasLanguage(c) Then Return ""
		  mLanguages.Add(c)
		  mTexts.Value(c) = New PkgPresentationTexts
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Base() As PkgPresentationTexts
		  // Les textes de référence : ceux écrits à plat dans les ressources, qui
			// servent de repli quand la langue du système ne correspond à aucun .lproj.
		  Return mBase
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Clone() As PkgPresentation
		  Var c As New PkgPresentation
		  c.BaseLanguage = BaseLanguage
		  c.SetBase(mBase.Clone)
		  For Each code As String In mLanguages
		    c.SetTexts(code, Texts(code).Clone)
		  Next
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mBase = New PkgPresentationTexts
		  mTexts = New Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EnsureTexts(code As String) As PkgPresentationTexts
		  // Les textes d'une langue, déclarée au besoin.
		  Var c As String = NormalizeLanguage(code)
		  If c = "" Then Return mBase
		  If Not HasLanguage(c) Then Call AddLanguage(c)
		  Return mTexts.Value(c)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgPresentation
		  Var p As New PkgPresentation
		  If j Is Nil Then Return p
		  
		  // Les douze clés à plat sont la langue de référence : un projet écrit avant le
		  // multilingue se relit tel quel.
		  p.SetBase(PkgPresentationTexts.FromJSON(j))
		  // « MonPaquet » était l'ancien défaut : on le neutralise pour que le titre suive
		  // le nom du produit.
		  If p.Title = "MonPaquet" Then p.Title = ""
		  If j.HasKey("baseLanguage") Then p.BaseLanguage = j.Value("baseLanguage")
		  
		  // « localized » est un tableau pour garder l'ordre d'affichage des langues.
		  If j.HasKey("localized") Then
		    Var arr As JSONItem = j.Value("localized")
		    For i As Integer = 0 To arr.Count - 1
		      Var item As JSONItem = arr.ChildAt(i)
		      If item Is Nil Or Not item.HasKey("code") Then Continue
		      Var code As String = NormalizeLanguage(item.Value("code"))
		      If code = "" Then Continue
		      p.SetTexts(code, PkgPresentationTexts.FromJSON(item))
		    Next
		  End If
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasLanguage(code As String) As Boolean
		  Return mTexts.HasKey(NormalizeLanguage(code))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsLocalized() As Boolean
		  // Vrai dès qu'une langue est déclarée : la construction passe alors en mode
		  // .lproj, sinon elle garde le chemin d'origine à l'octet près.
		  Return mLanguages.Count > 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LanguageCount() As Integer
		  Return mLanguages.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Languages() As String()
		  // Copie : l'ordre appartient au modèle.
		  Var out() As String
		  For Each code As String In mLanguages
		    out.Add(code)
		  Next
		  Return out
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function NormalizeLanguage(code As String) As String
		  // Nom de dossier .lproj : « fr » « en » « pt-BR » « zh-Hans ». Renvoie "" si le
		  // code contient autre chose que des lettres des chiffres et des tirets — le nom
		  // finit en dossier sur le disque.
		  Var raw As String = code.Trim.ReplaceAll("_", "-")
		  If raw = "" Then Return ""
		  For Each ch As String In raw.Characters
		    If ch = "-" Then Continue
		    Var cp As Integer = Asc(ch)
		    Var ok As Boolean = (cp >= 65 And cp <= 90) Or (cp >= 97 And cp <= 122) Or (cp >= 48 And cp <= 57)
		    If Not ok Then Return ""
		  Next
		  Var parts() As String = raw.Split("-")
		  Var out() As String
		  For i As Integer = 0 To parts.LastIndex
		    Var part As String = parts(i)
		    If part = "" Then Continue
		    If out.Count = 0 Then
		      out.Add(part.Lowercase)
		    ElseIf part.Length = 4 Then
		      out.Add(part.Left(1).Uppercase + part.Middle(1).Lowercase)
		    Else
		      out.Add(part.Uppercase)
		    End If
		  Next
		  Return String.FromArray(out, "-")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveLanguage(code As String)
		  Var c As String = NormalizeLanguage(code)
		  If c = "" Then Return
		  For i As Integer = mLanguages.LastIndex DownTo 0
		    If mLanguages(i) = c Then mLanguages.RemoveAt(i)
		  Next
		  If mTexts.HasKey(c) Then mTexts.Remove(c)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SeedFromBase(code As String)
		  // Part des textes de référence pour une langue vide : personne ne retape
		  // quatre écrans à la main avant de traduire.
		  Var c As String = NormalizeLanguage(code)
		  If c = "" Or Not HasLanguage(c) Then Return
		  Var t As PkgPresentationTexts = mTexts.Value(c)
		  If Not t.IsEmpty Then Return
		  SetTexts(c, mBase.Clone)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBase(value As PkgPresentationTexts)
		  If value Is Nil Then Return
		  mBase = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTexts(code As String, value As PkgPresentationTexts)
		  Var c As String = NormalizeLanguage(code)
		  If value Is Nil Then Return
		  If c = "" Then
		    mBase = value
		    Return
		  End If
		  If Not HasLanguage(c) Then mLanguages.Add(c)
		  mTexts.Value(c) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Texts(code As String) As PkgPresentationTexts
		  // "" désigne la langue de référence ; une langue non déclarée renvoie Nil.
		  Var c As String = NormalizeLanguage(code)
		  If c = "" Then Return mBase
		  If Not mTexts.HasKey(c) Then Return Nil
		  Return mTexts.Value(c)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
		  // La référence reste écrite à plat : un XPackager plus ancien lit encore le
		  // fichier et y retrouve sa présentation.
		  mBase.WriteInto(j)
		  If BaseLanguage.Trim <> "" Then j.Value("baseLanguage") = BaseLanguage
		  If mLanguages.Count > 0 Then
		    Var arr As New JSONItem
		    arr.Compact = False
		    For Each code As String In mLanguages
		      Var item As JSONItem = PkgPresentationTexts(mTexts.Value(code)).ToJSON
		      item.Value("code") = code
		      arr.Add(item)
		    Next
		    j.Value("localized") = arr
		  End If
		  Return j
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.BackgroundPath
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.BackgroundPath = value
			End Set
		#tag EndSetter
		BackgroundPath As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		BaseLanguage As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.Title
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.Title = value
			End Set
		#tag EndSetter
		Title As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mBase As PkgPresentationTexts
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLanguages() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTexts As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.WelcomePath
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.WelcomePath = value
			End Set
		#tag EndSetter
		WelcomePath As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.WelcomeRTF
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.WelcomeRTF = value
			End Set
		#tag EndSetter
		WelcomeRTF As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.WelcomeText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.WelcomeText = value
			End Set
		#tag EndSetter
		WelcomeText As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.ReadmePath
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.ReadmePath = value
			End Set
		#tag EndSetter
		ReadmePath As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.ReadmeRTF
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.ReadmeRTF = value
			End Set
		#tag EndSetter
		ReadmeRTF As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.ReadmeText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.ReadmeText = value
			End Set
		#tag EndSetter
		ReadmeText As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.LicensePath
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.LicensePath = value
			End Set
		#tag EndSetter
		LicensePath As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.LicenseRTF
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.LicenseRTF = value
			End Set
		#tag EndSetter
		LicenseRTF As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.LicenseText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.LicenseText = value
			End Set
		#tag EndSetter
		LicenseText As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.ConclusionPath
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.ConclusionPath = value
			End Set
		#tag EndSetter
		ConclusionPath As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.ConclusionRTF
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.ConclusionRTF = value
			End Set
		#tag EndSetter
		ConclusionRTF As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBase.ConclusionText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBase.ConclusionText = value
			End Set
		#tag EndSetter
		ConclusionText As String
	#tag EndComputedProperty


End Class
#tag EndClass
