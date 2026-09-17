#tag Class
Protected Class TemplateManager
	#tag Method, Flags = &h0
		Shared Function AllTemplates() As ProjectTemplate()
		  Var result() As ProjectTemplate
		  For Each t As ProjectTemplate In BuiltIns
		    result.Add(t)
		  Next
		  For Each t As ProjectTemplate In UserTemplates
		    result.Add(t)
		  Next
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function BuiltIns() As ProjectTemplate()
		  Var result() As ProjectTemplate
		  
		  // 1) Paquet vide.
		  result.Add(New ProjectTemplate(Loc.kTplEmpty, New PackageProject, True))
		  
		  // 2) Application dans /Applications.
		  Var appProject As New PackageProject
		  appProject.Settings.PackageName = "MonApplication"
		  appProject.Components(0).Name = "Application"
		  appProject.Components(0).Identifier = "fr.vdsc.monapplication"
		  appProject.Components(0).InstallLocation = "/"
		  appProject.Components(0).Payload.Tree.Add(PayloadNode.DirectoryNode("Applications"))
		  appProject.Presentation.WelcomeText = "Bienvenue dans l'installateur de MonApplication."
		  result.Add(New ProjectTemplate(Loc.kTplAppInApplications, appProject, True))
		  
		  // 3) Distribution à 2 composants.
		  Var suite As New PackageProject
		  suite.Settings.PackageName = "MaSuite"
		  Var appComp As New PkgComponent
		  appComp.Name = "Application"
		  appComp.Identifier = "fr.vdsc.suite.app"
		  appComp.Payload.Tree.Add(PayloadNode.DirectoryNode("Applications"))
		  Var resComp As New PkgComponent
		  resComp.Name = "Ressources"
		  resComp.Identifier = "fr.vdsc.suite.ressources"
		  resComp.ComponentDescription = "Fichiers de support (facultatif)."
		  resComp.StartSelected = False
		  resComp.Payload.Tree.Add(PayloadNode.DirectoryNode("Library"))
		  suite.Components.RemoveAll
		  suite.Components.Add(appComp)
		  suite.Components.Add(resComp)
		  result.Add(New ProjectTemplate(Loc.kTplTwoComponents, suite, True))
		  
		  // 4) Ligne de commande dans /usr/local/bin.
		  Var cli As New PackageProject
		  cli.Settings.PackageName = "MonOutil"
		  cli.Components(0).Name = "Outil en ligne de commande"
		  cli.Components(0).Identifier = "fr.vdsc.monoutil"
		  cli.Components(0).InstallLocation = "/"
		  cli.Components(0).Payload.Tree.Add(DirChain(Array("usr", "local", "bin")))
		  result.Add(New ProjectTemplate(Loc.kTplCommandLine, cli, True))
		  
		  // 5) Plug-in / extension dans /Library.
		  Var plugin As New PackageProject
		  plugin.Settings.PackageName = "MonPlugin"
		  plugin.Components(0).Name = "Extension"
		  plugin.Components(0).Identifier = "fr.vdsc.monplugin"
		  plugin.Components(0).InstallLocation = "/"
		  plugin.Components(0).Payload.Tree.Add(DirChain(Array("Library", "Application Support")))
		  result.Add(New ProjectTemplate(Loc.kTplPlugin, plugin, True))
		  
		  // 6) Paquet avec licence (présentation préremplie).
		  Var licensed As New PackageProject
		  licensed.Settings.PackageName = "MonApplication"
		  licensed.Components(0).Name = "Application"
		  licensed.Components(0).Identifier = "fr.vdsc.monapplication"
		  licensed.Components(0).Payload.Tree.Add(PayloadNode.DirectoryNode("Applications"))
		  licensed.Presentation.WelcomeText = "Bienvenue dans l'installateur de MonApplication."
		  licensed.Presentation.LicenseText = "CONTRAT DE LICENCE" + EndOfLine + EndOfLine _
		  + "Remplacez ce texte par votre contrat de licence. En cliquant sur « Continuer », " _
		  + "l'utilisateur devra accepter les termes pour poursuivre l'installation."
		  licensed.Presentation.ConclusionText = "Installation terminée. Merci d'avoir installé MonApplication."
		  result.Add(New ProjectTemplate(Loc.kTplLicensed, licensed, True))
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub DeleteTemplate(t As ProjectTemplate)
		  If t Is Nil Or t.IsBuiltIn Then Return
		  Var f As FolderItem = Directory.Child(t.Name + "." + FileExtension)
		  PkgFS.DeleteRecursively(f)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function DirChain(names() As String) As PayloadNode
		  // Chaîne de dossiers imbriqués (usr → local → bin).
		  Var child As PayloadNode
		  For i As Integer = names.LastIndex DownTo 0
		    Var dir As PayloadNode = PayloadNode.DirectoryNode(names(i))
		    If child <> Nil Then dir.Children.Add(child)
		    child = dir
		  Next
		  Return child
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Directory() As FolderItem
		  Var base As FolderItem = SpecialFolder.ApplicationData.Child("XPackager")
		  If Not base.Exists Then base.CreateFolder
		  Var dir As FolderItem = base.Child("Templates")
		  If Not dir.Exists Then dir.CreateFolder
		  Return dir
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub ImportFile(f As FolderItem, name As String)
		  Var p As PackageProject = PackageProject.Load(f)
		  Var finalName As String = name
		  If finalName.Trim = "" Then
		    finalName = f.Name
		    Var dot As Integer = finalName.LastIndexOf(".")
		    If dot > 0 Then finalName = finalName.Left(dot)
		  End If
		  Call SaveTemplate(p, finalName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SaveTemplate(p As PackageProject, name As String) As ProjectTemplate
		  Var clean As String = Sanitized(name)
		  If clean = "" Then Raise New BuildError("Le nom du modèle est vide.")
		  Var f As FolderItem = Directory.Child(clean + "." + FileExtension)
		  p.Save(f)
		  Return New ProjectTemplate(clean, p, False)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Sanitized(name As String) As String
		  Var clean As String = name.Trim
		  clean = clean.ReplaceAll("/", "-")
		  clean = clean.ReplaceAll(":", "-")
		  Return clean
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function UserTemplates() As ProjectTemplate()
		  Var result() As ProjectTemplate
		  Var names() As String
		  Var byName As New Dictionary
		  Try
		    For Each f As FolderItem In Directory.Children
		      If f Is Nil Or f.IsFolder Then Continue
		      If PkgFS.FileExtension(f.Name) <> FileExtension Then Continue
		      Var name As String = f.Name.Left(f.Name.Length - FileExtension.Length - 1)
		      Try
		        byName.Value(name) = PackageProject.Load(f)
		        names.Add(name)
		      Catch err As RuntimeException
		      End Try
		    Next
		  Catch err As RuntimeException
		  End Try
		  names.Sort
		  For Each name As String In names
		    result.Add(New ProjectTemplate(name, byName.Value(name), False))
		  Next
		  Return result
		End Function
	#tag EndMethod


	#tag Constant, Name = FileExtension, Type = String, Dynamic = False, Default = \"xpackmodel", Scope = Public
	#tag EndConstant


End Class
#tag EndClass
