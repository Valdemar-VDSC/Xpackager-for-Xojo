#tag Class
Protected Class DistributionXML
	#tag Method, Flags = &h21
		Private Shared Function CopyRes(path As String, resourcesDir As FolderItem) As String
		  // Copie une ressource dans le dossier --resources ; renvoie son nom de fichier.
		  If path.Trim = "" Then Return ""
		  Var src As FolderItem = PkgFS.ItemAtPath(path)
		  If src Is Nil Or Not src.Exists Then Return ""
		  Try
		    PkgFS.CopyInto(src, resourcesDir)
		  Catch err As RuntimeException
		    Return ""
		  End Try
		  Return src.Name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function DefaultMessage(chk As PkgInstallCheck) As String
		  Select Case chk.Kind
		  Case PkgInstallCheck.Kinds.FileAbsent
		    Return "Élément incompatible détecté : " + chk.Value
		  Case PkgInstallCheck.Kinds.MinimumRAM
		    Return chk.Value + " Go de mémoire requis."
		  End Select
		  Return "Élément requis introuvable : " + chk.Value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Escape(s As String) As String
		  Var r As String = s
		  r = r.ReplaceAll("&", "&amp;")
		  r = r.ReplaceAll("<", "&lt;")
		  r = r.ReplaceAll(">", "&gt;")
		  r = r.ReplaceAll("""", "&quot;")
		  Return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function FailLines(jsMessage As String) As String()
		  Var lines() As String
		  lines.Add("        my.result.title = " + jsMessage + ";")
		  lines.Add("        my.result.type = 'Fatal';")
		  lines.Add("        return false;")
		  lines.Add("    }")
		  Return lines
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function InstallationCheckScript(checks() As PkgInstallCheck) As String
		  // Génère la fonction JavaScript xpackager_installation_check() à partir des
		  // conditions, ou une chaîne vide s'il n'y a aucune condition exploitable.
		  Var body() As String
		  For Each chk As PkgInstallCheck In checks
		    Var raw As String = chk.Message
		    If raw.Trim = "" Then raw = DefaultMessage(chk)
		    Var message As String = JSString(raw)
		    Select Case chk.Kind
		    Case PkgInstallCheck.Kinds.FileExists
		      If chk.Value.Trim = "" Then Continue
		      body.Add("    if (!(system.files.fileExistsAtPath(" + JSString(chk.Value) + "))) {")
		      For Each fl As String In FailLines(message)
		        body.Add(fl)
		      Next
		    Case PkgInstallCheck.Kinds.FileAbsent
		      If chk.Value.Trim = "" Then Continue
		      body.Add("    if (system.files.fileExistsAtPath(" + JSString(chk.Value) + ")) {")
		      For Each fl As String In FailLines(message)
		        body.Add(fl)
		      Next
		    Case PkgInstallCheck.Kinds.MinimumRAM
		      Var normalized As String = chk.Value.ReplaceAll(",", ".")
		      Var gb As Double = Val(normalized)
		      If gb <= 0 Then Continue
		      body.Add("    if (system.ram < " + Str(gb) + " * 1073741824) {")
		      For Each fl As String In FailLines(message)
		        body.Add(fl)
		      Next
		    End Select
		  Next
		  If body.Count = 0 Then Return ""
		  
		  Var js() As String
		  js.Add("function xpackager_installation_check() {")
		  For Each b As String In body
		    js.Add(b)
		  Next
		  js.Add("    return true;")
		  js.Add("}")
		  Return String.FromArray(js, EndOfLine)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function JSString(s As String) As String
		  // Encode une chaîne en littéral JavaScript entre apostrophes.
		  Var e As String = s
		  e = e.ReplaceAll("\", "\\")
		  e = e.ReplaceAll("'", "\'")
		  e = e.ReplaceAll(Chr(13), " ")
		  e = e.ReplaceAll(Chr(10), " ")
		  e = e.ReplaceAll("]]>", "]] >")   // ne pas clore le CDATA
		  Return "'" + e + "'"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Make(project As PackageProject, componentFiles() As String, resourcesDir As FolderItem) As String
		  Var p As PkgPresentation = project.Presentation
		  Var welcome As String = ResolveScreen(p, PkgPresentationTexts.kWelcome, resourcesDir)
		  Var readme As String = ResolveScreen(p, PkgPresentationTexts.kReadme, resourcesDir)
		  Var license As String = ResolveScreen(p, PkgPresentationTexts.kLicense, resourcesDir)
		  Var conclusion As String = ResolveScreen(p, PkgPresentationTexts.kConclusion, resourcesDir)
		  Var background As String = CopyRes(p.BackgroundPath, resourcesDir)
		  
		  Var localized As Boolean = p.IsLocalized
		  Var rawTitle As String = p.Title
		  If rawTitle.Trim = "" Then rawTitle = PackageNaming.Resolve(project.Settings.PackageName, project)
		  // Multilingue : le texte de référence reste dans le distribution.xml et sert de
		  // clé — Installer le remplace par l'entrée du Localizable.strings de la langue
		  // du système quand elle existe, et l'affiche tel quel sinon.
		  Var title As String = Escape(rawTitle)
		  
		  Var req As PkgRequirements = project.Requirements
		  // Personnalisable dès qu'il y a plusieurs composants.
		  Var customize As String = "never"
		  If componentFiles.Count > 1 Then customize = "always"
		  
		  Var lines() As String
		  lines.Add("<?xml version=""1.0"" encoding=""utf-8""?>")
		  lines.Add("<installer-gui-script minSpecVersion=""2"">")
		  lines.Add("    <title>" + title + "</title>")
		  
		  If req.MinimumOSVersion.Trim <> "" Then
		    lines.Add("    <volume-check>")
		    lines.Add("        <allowed-os-versions>")
		    lines.Add("            <os-version min=""" + Escape(req.MinimumOSVersion) + """/>")
		    lines.Add("        </allowed-os-versions>")
		    lines.Add("    </volume-check>")
		  End If
		  
		  // Prérequis avancés → installation-check en JavaScript.
		  Var script As String = InstallationCheckScript(req.Checks)
		  If script <> "" Then
		    lines.Add("    <installation-check script=""xpackager_installation_check();""/>")
		    lines.Add("    <script><![CDATA[")
		    lines.Add(script)
		    lines.Add("]]></script>")
		  End If
		  
		  If welcome <> "" Then lines.Add("    <welcome file=""" + Escape(welcome) + """/>")
		  If readme <> "" Then lines.Add("    <readme file=""" + Escape(readme) + """/>")
		  If license <> "" Then lines.Add("    <license file=""" + Escape(license) + """/>")
		  If conclusion <> "" Then lines.Add("    <conclusion file=""" + Escape(conclusion) + """/>")
		  If background <> "" Then
		    lines.Add("    <background file=""" + Escape(background) + """ alignment=""bottomleft"" scaling=""none""/>")
		  End If
		  lines.Add("    <options customize=""" + customize + """ require-scripts=""false"" hostArchitectures=""" + Escape(req.HostArchitectures) + """/>")
		  
		  // choices-outline : un choix par composant.
		  lines.Add("    <choices-outline>")
		  For i As Integer = 0 To componentFiles.LastIndex
		    lines.Add("        <line choice=""choice" + i.ToString + """/>")
		  Next
		  lines.Add("    </choices-outline>")
		  
		  // Un <choice> par composant, référençant son <pkg-ref>.
		  For i As Integer = 0 To componentFiles.LastIndex
		    Var comp As PkgComponent = project.Components(i)
		    Var attrs As String = "id=""choice" + i.ToString + """ title=""" + Escape(comp.DisplayName) + """"
		    Var choiceDesc As String = ChoiceDescription(p, comp)
		    If choiceDesc.Trim <> "" Then
		      attrs = attrs + " description=""" + Escape(choiceDesc) + """"
		    End If
		    attrs = attrs + " start_selected=""" + BoolText(comp.StartSelected) + """"
		    attrs = attrs + " start_enabled=""" + BoolText(comp.UserToggleable) + """"
		    attrs = attrs + " visible=""" + BoolText(comp.IsVisible) + """"
		    lines.Add("    <choice " + attrs + ">")
		    lines.Add("        <pkg-ref id=""" + Escape(comp.Identifier) + """/>")
		    lines.Add("    </choice>")
		  Next
		  
		  // Les <pkg-ref> pointant vers chaque paquet élémentaire.
		  Var onConclusion As String = project.PostInstall.OnConclusionValue
		  For i As Integer = 0 To componentFiles.LastIndex
		    Var comp As PkgComponent = project.Components(i)
		    lines.Add("    <pkg-ref id=""" + Escape(comp.Identifier) + """ version=""" + Escape(comp.Version) _
		    + """ onConclusion=""" + onConclusion + """>" + Escape(componentFiles(i)) + "</pkg-ref>")
		  Next
		  
		  lines.Add("</installer-gui-script>")
		  If localized Then WriteStringsTables(project, rawTitle, resourcesDir)
		  Return String.FromArray(lines, EndOfLine)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function BoolText(b As Boolean) As String
		  If b Then Return "true"
		  Return "false"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function StringsEntry(key As String, value As String) As String
		  // Une ligne de table .strings : "CLÉ" = "valeur";
		  Return Chr(34) + StringsQuote(key) + Chr(34) + " = " + Chr(34) + StringsQuote(value) + Chr(34) + ";"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function StringsQuote(value As String) As String
		  Var v As String = value
		  v = v.ReplaceAll("\", "\\")
		  v = v.ReplaceAll(Chr(34), "\" + Chr(34))
		  v = v.ReplaceAll(Chr(13) + Chr(10), "\n")
		  v = v.ReplaceAll(Chr(13), "\n")
		  v = v.ReplaceAll(Chr(10), "\n")
		  v = v.ReplaceAll(Chr(9), "\t")
		  Return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function TitleFor(project As PackageProject, code As String, refTitle As String) As String
		  If code = "" Then Return refTitle
		  Var texts As PkgPresentationTexts = project.Presentation.Texts(code)
		  If texts Is Nil Or texts.Title.Trim = "" Then Return refTitle
		  Return texts.Title
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub WriteStringsTables(project As PackageProject, refTitle As String, resourcesDir As FolderItem)
		  // Un Localizable.strings par langue déclarée. La clé est le texte de référence
		  // lui-même : une langue sans entrée — ou sans .lproj — voit donc la référence,
		  // jamais une clé brute. productbuild écarte une table posée à la racine des
		  // ressources : inutile d'en écrire une.
		  For Each code As String In project.Presentation.Languages
		    Var lines() As String
		    
		    Var texts As PkgPresentationTexts = project.Presentation.Texts(code)
		    If texts <> Nil And texts.Title.Trim <> "" And refTitle.Trim <> "" Then
		      lines.Add(StringsEntry(refTitle, texts.Title))
		    End If
		    
		    For Each comp As PkgComponent In project.Components
		      Var name As String = comp.LocalizedName(code).Trim
		      If name <> "" And comp.DisplayName.Trim <> "" Then
		        lines.Add(StringsEntry(comp.DisplayName, name))
		      End If
		      Var desc As String = comp.LocalizedDescription(code).Trim
		      Var refDesc As String = ChoiceDescription(project.Presentation, comp)
		      // Rien à écrire quand la traduction est déjà le texte porté par le
		      // distribution.xml : il s'affichera tel quel.
		      If desc <> "" And refDesc.Trim <> "" And desc <> refDesc Then
		        lines.Add(StringsEntry(refDesc, desc))
		      End If
		    Next
		    
		    If lines.Count = 0 Then Continue
		    Var dir As FolderItem = LProjFolder(resourcesDir, code)
		    If dir Is Nil Then Continue
		    Call WriteFile(String.FromArray(lines, EndOfLine), dir, "Localizable.strings")
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ChoiceDescription(p As PkgPresentation, comp As PkgComponent) As String
		  // Le distribution.xml porte le texte qui sert aussi de clé de traduction. Sans
		  // description de référence, une traduction n'aurait rien où s'accrocher et serait
		  // perdue : on prend alors celle de la langue de référence, sinon la première
		  // langue déclarée qui en a une. Les autres langues la traduisent comme d'habitude.
		  If comp.ComponentDescription.Trim <> "" Then Return comp.ComponentDescription
		  If Not p.IsLocalized Then Return ""
		  Var codes() As String
		  If p.BaseLanguage.Trim <> "" Then codes.Add(p.BaseLanguage)
		  For Each code As String In p.Languages
		    codes.Add(code)
		  Next
		  For Each code As String In codes
		    Var desc As String = comp.LocalizedDescription(code).Trim
		    If desc <> "" Then Return desc
		  Next
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ContentExtension(p As PkgPresentation, screen As Integer, code As String) As String
		  // Extension du contenu qu'une langue apporte pour cet écran, "" si elle
		  // n'apporte rien. Priorité identique à Resolve : fichier externe, puis RTF,
		  // puis texte simple.
		  Var t As PkgPresentationTexts = TextsFor(p, code)
		  If t Is Nil Then Return ""
		  Var f As FolderItem = ExternalFile(t.Path(screen))
		  If f <> Nil Then
		    Var e As String = PkgFS.FileExtension(f.Name).Lowercase
		    If e = "" Then e = "txt"
		    Return e
		  End If
		  If t.RTF(screen) <> "" Then Return "rtf"
		  If t.Text(screen) <> "" Then Return "txt"
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ExternalFile(path As String) As FolderItem
		  If path.Trim = "" Then Return Nil
		  Var f As FolderItem = PkgFS.ItemAtPath(path)
		  If f Is Nil Or Not f.Exists Then Return Nil
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function LProjFolder(resourcesDir As FolderItem, code As String) As FolderItem
		  Var dir As FolderItem = resourcesDir.Child(code + ".lproj")
		  If dir Is Nil Then Return Nil
		  If Not dir.Exists Then
		    Try
		      dir.CreateFolder
		    Catch err As RuntimeException
		      Return Nil
		    End Try
		  End If
		  Return dir
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ResolveScreen(p As PkgPresentation, screen As Integer, resourcesDir As FolderItem) As String
		  // Sans langue déclarée, on garde le chemin historique : un fichier à plat.
		  If Not p.IsLocalized Then
		    Var b As PkgPresentationTexts = p.Base
		    Return Resolve(b.Path(screen), b.RTF(screen), b.Text(screen), PkgPresentationTexts.ScreenKey(screen), resourcesDir)
		  End If
		  
		  // Multilingue : rien à la racine. Un fichier posé là masque tous les .lproj —
		  // Installer le trouve d'abord — donc chaque langue a son dossier, la référence
		  // comprise, et une langue sans texte reçoit une copie de la référence pour que
		  // son écran ne soit jamais vide.
		  Var baseCode As String = PkgPresentation.NormalizeLanguage(p.BaseLanguage)
		  If baseCode = "" Then Raise New BuildError(Loc.kErrNoReferenceLanguage)
		  
		  Var codes() As String
		  codes.Add(baseCode)
		  For Each code As String In p.Languages
		    If code <> baseCode Then codes.Add(code)
		  Next
		  
		  // Le distribution.xml ne référence qu'un nom de fichier : toutes les langues
		  // écrivent donc le même nom, donc la même extension.
		  Var ext As String = ""
		  Var sources() As String
		  sources.Add("")
		  For Each code As String In p.Languages
		    sources.Add(code)
		  Next
		  For Each code As String In sources
		    Var cand As String = ContentExtension(p, screen, code)
		    If cand = "" Then Continue
		    If ext = "" Then
		      ext = cand
		    ElseIf ext <> cand Then
		      // Seul mélange rattrapable : du texte simple à promouvoir en RTF.
		      If ext = "txt" And cand = "rtf" Then
		        ext = "rtf"
		      ElseIf ext = "rtf" And cand = "txt" Then
		        // le texte simple sera converti
		      Else
		        Var langue As String = code
		        If langue = "" Then langue = Loc.kReferenceLanguage
		        Raise New BuildError(Loc.kErrLocalizedMix + " " + PkgPresentationTexts.ScreenKey(screen) + " : " + ext + " / " + cand + " (" + langue + ")")
		      End If
		    End If
		  Next
		  If ext = "" Then Return ""
		  
		  // Nom du fichier : celui du fichier externe de référence quand il en a un.
		  Var fileName As String = PkgPresentationTexts.ScreenKey(screen) + "." + ext
		  Var baseFile As FolderItem = ExternalFile(p.Base.Path(screen))
		  If baseFile <> Nil And PkgFS.FileExtension(baseFile.Name).Lowercase = ext Then fileName = baseFile.Name
		  
		  Var written As Boolean = False
		  For Each code As String In codes
		    // Les textes de cette langue, ou ceux de la référence si elle n'en a pas.
		    Var source As String = code
		    If ContentExtension(p, screen, source) = "" Then source = ""
		    If ContentExtension(p, screen, source) = "" Then Continue
		    Var dir As FolderItem = LProjFolder(resourcesDir, code)
		    If dir Is Nil Then Continue
		    If WriteScreen(p, screen, source, ext, dir, fileName) Then written = True
		  Next
		  If Not written Then Return ""
		  Return fileName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function RTFEscape(s As String) As String
		  Var norm As String = s.ReplaceAll(Chr(13) + Chr(10), Chr(10)).ReplaceAll(Chr(13), Chr(10))
		  Var out As String
		  For Each ch As String In norm.Characters
		    Select Case ch
		    Case "\"
		      out = out + "\\"
		    Case "{"
		      out = out + "\{"
		    Case "}"
		      out = out + "\}"
		    Case Chr(9)
		      out = out + "\tab "
		    Case Chr(10)
		      out = out + "\par" + EndOfLine
		    Else
		      Var cp As Integer = Asc(ch)
		      If cp < 128 Then
		        out = out + ch
		      ElseIf cp <= 65535 Then
		        Var signed As Integer = cp
		        If signed > 32767 Then signed = signed - 65536
		        out = out + "\u" + Str(signed) + "?"
		      Else
		        out = out + "?"
		      End If
		    End Select
		  Next
		  Return out
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function TextToRTF(content As String) As String
		  // Dès qu'une langue est riche, le texte simple des autres doit devenir du RTF :
		  // le fichier référencé porte la même extension partout.
		  Var lines() As String
		  lines.Add("{\rtf1\ansi\ansicpg1252")
		  lines.Add("{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}")
		  lines.Add("\pard\f0\fs26 " + RTFEscape(content) + "}")
		  Return String.FromArray(lines, EndOfLine)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function TextsFor(p As PkgPresentation, code As String) As PkgPresentationTexts
		  If code = "" Then Return p.Base
		  Return p.Texts(code)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function WriteFile(content As String, destDir As FolderItem, fileName As String) As Boolean
		  Var dest As FolderItem = destDir.Child(fileName)
		  If dest Is Nil Then Return False
		  Try
		    PkgFS.WriteTextFile(dest, content)
		  Catch err As RuntimeException
		    Return False
		  End Try
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function WriteScreen(p As PkgPresentation, screen As Integer, code As String, ext As String, destDir As FolderItem, fileName As String) As Boolean
		  // Écrit le contenu d'une langue pour un écran, sous le nom commun.
		  Var t As PkgPresentationTexts = TextsFor(p, code)
		  If t Is Nil Then Return False
		  Var src As FolderItem = ExternalFile(t.Path(screen))
		  If src <> Nil Then
		    Var srcExt As String = PkgFS.FileExtension(src.Name).Lowercase
		    If srcExt = "" Then srcExt = "txt"
		    If srcExt = ext Then
		      Try
		        PkgFS.CopyInto(src, destDir, fileName)
		      Catch err As RuntimeException
		        Return False
		      End Try
		      Return True
		    End If
		    // Un .txt externe face à des langues riches : converti comme le texte saisi.
		    If ext = "rtf" And srcExt = "txt" Then
		      Return WriteFile(TextToRTF(PkgFS.ReadTextFile(src)), destDir, fileName)
		    End If
		    Return False
		  End If
		  Var rtf As String = t.RTF(screen)
		  If rtf <> "" Then Return WriteFile(rtf, destDir, fileName)
		  Var txt As String = t.Text(screen)
		  If txt = "" Then Return False
		  If ext = "rtf" Then Return WriteFile(TextToRTF(txt), destDir, fileName)
		  Return WriteFile(txt, destDir, fileName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Resolve(path As String, rtf As String, text As String, name As String, resourcesDir As FolderItem) As String
		  // Priorité : fichier externe > RTF (éditeur riche) > texte simple hérité.
		  Var copied As String = CopyRes(path, resourcesDir)
		  If copied <> "" Then Return copied
		  Var inlineRTF As String = WriteInline(rtf, name, "rtf", resourcesDir)
		  If inlineRTF <> "" Then Return inlineRTF
		  Return WriteInline(text, name, "txt", resourcesDir)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function WriteInline(content As String, name As String, ext As String, resourcesDir As FolderItem) As String
		  If content = "" Then Return ""
		  Var dest As FolderItem = resourcesDir.Child(name + "." + ext)
		  Try
		    PkgFS.WriteTextFile(dest, content)
		  Catch err As RuntimeException
		    Return ""
		  End Try
		  Return dest.Name
		End Function
	#tag EndMethod



End Class
#tag EndClass
