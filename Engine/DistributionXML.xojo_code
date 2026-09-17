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
		  Var welcome As String = Resolve(p.WelcomePath, p.WelcomeRTF, p.WelcomeText, "welcome", resourcesDir)
		  Var readme As String = Resolve(p.ReadmePath, p.ReadmeRTF, p.ReadmeText, "readme", resourcesDir)
		  Var license As String = Resolve(p.LicensePath, p.LicenseRTF, p.LicenseText, "license", resourcesDir)
		  Var conclusion As String = Resolve(p.ConclusionPath, p.ConclusionRTF, p.ConclusionText, "conclusion", resourcesDir)
		  Var background As String = CopyRes(p.BackgroundPath, resourcesDir)
		  
		  Var rawTitle As String = p.Title
		  If rawTitle.Trim = "" Then rawTitle = PackageNaming.Resolve(project.Settings.PackageName, project)
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
		    If comp.ComponentDescription.Trim <> "" Then
		      attrs = attrs + " description=""" + Escape(comp.ComponentDescription) + """"
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
