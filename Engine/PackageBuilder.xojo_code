#tag Class
Protected Class PackageBuilder
	#tag Method, Flags = &h21
		Private Shared Sub AssembleStaging(nodes() As PayloadNode, parent As FolderItem)
		  // Assemble récursivement la hiérarchie de payload dans `parent`.
		  For Each node As PayloadNode In nodes
		    Var dest As FolderItem = parent.Child(node.Name)
		    If node.IsDirectory Then
		      If Not dest.Exists Then dest.CreateFolder
		      // Import facultatif du contenu d'un dossier source.
		      If node.SourcePath.Trim <> "" Then
		        Var src As FolderItem = PkgFS.ItemAtPath(node.SourcePath)
		        If src <> Nil And src.Exists And src.IsFolder Then
		          For Each child As FolderItem In src.Children
		            PkgFS.CopyInto(child, dest)
		          Next
		        End If
		      End If
		      AssembleStaging(node.Children, dest)
		    Else
		      Var src As FolderItem = PkgFS.ItemAtPath(node.SourcePath)
		      If node.SourcePath.Trim = "" Or src Is Nil Or Not src.Exists Then
		        Raise New BuildError(Loc.kErrFileNotFound + " " + node.Name + " — " + node.SourcePath)
		      End If
		      PkgFS.CopyInto(src, parent, node.Name)
		    End If
		    
		    // On applique le mode POSIX uniquement aux dossiers créés par l'utilisateur
		    // et aux fichiers réguliers. Un bundle (.app) copié comme feuille reste un
		    // dossier : lui appliquer un mode « fichier » (0644) casserait la traversée.
		    dest = parent.Child(node.Name)
		    If node.IsDirectory Or (dest <> Nil And dest.Exists And Not dest.IsFolder) Then
		      PkgFS.SetPermissions(dest, node.Permissions)
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub CopyScript(src As String, dest As FolderItem)
		  Var source As FolderItem = PkgFS.ItemAtPath(src)
		  If source Is Nil Or Not source.Exists Then
		    Raise New BuildError("Script introuvable : " + src)
		  End If
		  If dest.Exists Then PkgFS.DeleteRecursively(dest)
		  PkgFS.CopyInto(source, dest.Parent, dest.Name)
		  PkgFS.SetPermissions(dest, &o755)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub HardenSteps(root As FolderItem, identity As String, steps() As BuildStep, phase As String, progress As Double)
		  // Re-signe en Hardened Runtime (+ horodatage) chaque bundle .app de premier
		  // niveau trouvé sous `root`, « de l'intérieur vers l'extérieur ».
		  For Each app As FolderItem In TopLevelAppBundles(root)
		    Var nested() As FolderItem = SignableItems(app)
		    For Each item As FolderItem In nested
		      steps.Add(CodesignStep(item, identity, True, phase, progress))
		    Next
		    Var last As BuildStep = CodesignStep(app, identity, False, phase, progress)
		    last.Label = Loc.kHardenLabel + " " + app.Name
		    steps.Add(last)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function CodesignStep(item As FolderItem, identity As String, quiet As Boolean, phase As String, progress As Double) As BuildStep
		  // Tente d'abord de préserver les entitlements (utile pour les XPC de Sparkle),
		  // sinon signe sans — exactement comme la version Swift.
		  Var st As New BuildStep
		  st.Label = "codesign " + item.Name
		  st.Phase = phase
		  st.Progress = progress
		  st.Quiet = quiet
		  st.EchoCommand = Not quiet
		  st.ToolPath = "/usr/bin/codesign"
		  st.AddArg("--preserve-metadata=entitlements")
		  st.AddArg("--force")
		  st.AddArg("--options")
		  st.AddArg("runtime")
		  st.AddArg("--timestamp")
		  st.AddArg("--sign")
		  st.AddArg(identity)
		  st.AddArg(item.NativePath)
		  st.AddFallback("--force")
		  st.AddFallback("--options")
		  st.AddFallback("runtime")
		  st.AddFallback("--timestamp")
		  st.AddFallback("--sign")
		  st.AddFallback(identity)
		  st.AddFallback(item.NativePath)
		  st.FailureMessage = Loc.kErrCodesignItem + " (" + item.Name + ")"
		  Return st
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function LaunchSnippet(appPath As String) As String()
		  // Lignes shell lançant `appPath` en tant qu'utilisateur de la console.
		  Var escaped As String = appPath
		  escaped = escaped.ReplaceAll("\", "\\")
		  escaped = escaped.ReplaceAll("""", "\""")
		  escaped = escaped.ReplaceAll("$", "\$")
		  escaped = escaped.ReplaceAll("`", "\`")
		  Var lines() As String
		  lines.Add("loggedInUser=$(/usr/bin/stat -f ""%Su"" /dev/console)")
		  lines.Add("if [ -n ""$loggedInUser"" ] && [ ""$loggedInUser"" != ""root"" ]; then")
		  lines.Add("  uid=$(/usr/bin/id -u ""$loggedInUser"")")
		  lines.Add("  /bin/launchctl asuser ""$uid"" /usr/bin/open """ + escaped + """")
		  lines.Add("fi")
		  lines.Add("exit 0")
		  Return lines
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function PrepareSteps(project As PackageProject, outputFile As FolderItem, ByRef work As FolderItem) As BuildStep()
		  // Prépare le staging, les scripts et distribution.xml (synchrone et rapide),
		  // puis renvoie la liste des étapes d'OUTILS exécutées par BuildRunner.
		  Var steps() As BuildStep
		  If project.Components.Count = 0 Then
		    Raise New BuildError(Loc.kErrNoComponents)
		  End If
		  
		  work = PkgFS.TempWorkFolder
		  
		  // Le lancement d'app en fin d'installation est porté par le dernier composant.
		  Var launchApp As Boolean = project.PostInstall.LaunchApp And project.PostInstall.AppPath.Trim <> ""
		  Var launchIndex As Integer = project.Components.LastIndex
		  Var n As Integer = project.Components.Count
		  Var hardenIdentity As String = ""
		  If project.Settings.HardenPayloadApps And project.Settings.AppSigningIdentity.Trim <> "" Then
		    hardenIdentity = project.Settings.AppSigningIdentity
		  End If
		  
		  Var componentFiles() As String
		  For index As Integer = 0 To project.Components.LastIndex
		    Var comp As PkgComponent = project.Components(index)
		    Var compLabel As String = Loc.kComponent + " " + Str(index + 1) + "/" + Str(n) + " : " + comp.Name
		    Var progress As Double = 0.05 + 0.45 * index / n
		    
		    // 1) Résolution du payload : arbre prioritaire, sinon dossier racine.
		    Var payloadPath As String
		    Var useRecommendedOwnership As Boolean
		    Var stagingRoot As FolderItem
		    
		    If comp.Payload.Tree.Count > 0 Then
		      stagingRoot = work.Child("payload-" + Str(index))
		      stagingRoot.CreateFolder
		      AssembleStaging(comp.Payload.Tree, stagingRoot)
		      payloadPath = stagingRoot.NativePath
		      useRecommendedOwnership = True
		    Else
		      Var root As FolderItem = PkgFS.ItemAtPath(comp.Payload.RootPath)
		      If comp.Payload.RootPath.Trim = "" Or root Is Nil Or Not root.Exists Or Not root.IsFolder Then
		        Raise New BuildError(Loc.kErrNoPayload + " (" + comp.Name + ")")
		      End If
		      If hardenIdentity <> "" Then
		        // Copie du dossier racine pour renforcer sans modifier l'original.
		        stagingRoot = work.Child("payload-" + Str(index))
		        stagingRoot.CreateFolder
		        For Each item As FolderItem In root.Children
		          PkgFS.CopyInto(item, stagingRoot)
		        Next
		        payloadPath = stagingRoot.NativePath
		        useRecommendedOwnership = True
		      Else
		        payloadPath = root.NativePath
		        useRecommendedOwnership = False
		      End If
		    End If
		    
		    // 2) Renforcement Hardened Runtime (toujours sur la copie de staging).
		    If hardenIdentity <> "" And stagingRoot <> Nil Then
		      HardenSteps(stagingRoot, hardenIdentity, steps, compLabel, progress)
		    End If
		    
		    // 3) Dossier de scripts (si renseigné, ou si un lancement d'app est demandé).
		    Var scriptsDir As FolderItem
		    Var wantsLaunch As Boolean = launchApp And index = launchIndex
		    If comp.Scripts.PreinstallPath.Trim <> "" Or comp.Scripts.PostinstallPath.Trim <> "" Or wantsLaunch Then
		      scriptsDir = work.Child("scripts-" + Str(index))
		      scriptsDir.CreateFolder
		      If comp.Scripts.PreinstallPath.Trim <> "" Then
		        CopyScript(comp.Scripts.PreinstallPath, scriptsDir.Child("preinstall"))
		      End If
		      If wantsLaunch Then
		        WriteLaunchPostinstall(scriptsDir, comp.Scripts.PostinstallPath, project.PostInstall.AppPath)
		      ElseIf comp.Scripts.PostinstallPath.Trim <> "" Then
		        CopyScript(comp.Scripts.PostinstallPath, scriptsDir.Child("postinstall"))
		      End If
		    End If
		    
		    // 4) pkgbuild du composant.
		    Var pkg As FolderItem = work.Child("component-" + Str(index) + ".pkg")
		    Var st As New BuildStep
		    st.Label = compLabel
		    st.Phase = compLabel + "…"
		    st.Progress = progress
		    st.ToolPath = "/usr/bin/pkgbuild"
		    st.AddArg("--root")
		    st.AddArg(payloadPath)
		    st.AddArg("--identifier")
		    st.AddArg(comp.Identifier)
		    st.AddArg("--version")
		    st.AddArg(comp.Version)
		    st.AddArg("--install-location")
		    st.AddArg(comp.InstallLocation)
		    If useRecommendedOwnership Then
		      st.AddArg("--ownership")
		      st.AddArg("recommended")
		    End If
		    If scriptsDir <> Nil Then
		      st.AddArg("--scripts")
		      st.AddArg(scriptsDir.NativePath)
		    End If
		    st.AddArg(pkg.NativePath)
		    st.FailureMessage = Loc.kErrPkgbuild + " (" + comp.Name + ")"
		    steps.Add(st)
		    componentFiles.Add(pkg.Name)
		  Next
		  
		  // 5) Ressources (niveau produit) + distribution.xml.
		  Var resDir As FolderItem = work.Child("resources")
		  resDir.CreateFolder
		  Var dist As String = DistributionXML.Make(project, componentFiles, resDir)
		  Var distFile As FolderItem = work.Child("distribution.xml")
		  PkgFS.WriteTextFile(distFile, dist)
		  
		  // 6) productbuild → paquet distribution final.
		  If outputFile.Exists Then PkgFS.DeleteRecursively(outputFile)
		  Var pb As New BuildStep
		  pb.Label = "Assemblage et signature du paquet"
		  pb.Phase = Loc.kPhaseAssembling
		  pb.Progress = 0.55
		  pb.ToolPath = "/usr/bin/productbuild"
		  pb.AddArg("--distribution")
		  pb.AddArg(distFile.NativePath)
		  pb.AddArg("--package-path")
		  pb.AddArg(work.NativePath)
		  pb.AddArg("--resources")
		  pb.AddArg(resDir.NativePath)
		  If project.Settings.SigningIdentity.Trim <> "" Then
		    pb.AddArg("--sign")
		    pb.AddArg(project.Settings.SigningIdentity)
		  End If
		  pb.AddArg(outputFile.NativePath)
		  pb.FailureMessage = Loc.kErrProductbuild
		  steps.Add(pb)
		  
		  // 7) Notarisation (facultative).
		  If project.Notarization.Enabled Then
		    If project.Settings.SigningIdentity.Trim = "" Then
		      Raise New BuildError(Loc.kErrNotarizeNeedsSigned)
		    End If
		    Var profile As String = project.Notarization.KeychainProfile.Trim
		    If profile = "" Then
		      Raise New BuildError(Loc.kErrNotaryProfileMissing)
		    End If
		    
		    Var nz As New BuildStep
		    nz.Label = Loc.kSubmitToApple
		    nz.Phase = Loc.kPhaseNotarizeSubmit
		    nz.Progress = 0.7
		    nz.CheckAccepted = True
		    nz.NotaryProfile = profile
		    nz.ToolPath = "/usr/bin/xcrun"
		    nz.AddArg("notarytool")
		    nz.AddArg("submit")
		    nz.AddArg(outputFile.NativePath)
		    nz.AddArg("--keychain-profile")
		    nz.AddArg(profile)
		    nz.AddArg("--wait")
		    steps.Add(nz)
		    
		    Var stp As New BuildStep
		    stp.Label = "Agrafage du ticket (stapler)"
		    stp.Phase = Loc.kPhaseStapling
		    stp.Progress = 0.95
		    stp.ToolPath = "/usr/bin/xcrun"
		    stp.AddArg("stapler")
		    stp.AddArg("staple")
		    stp.AddArg(outputFile.NativePath)
		    stp.FailureMessage = Loc.kErrStapler
		    steps.Add(stp)
		  End If
		  
		  Return steps
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function SignableItems(app As FolderItem) As FolderItem()
		  // Code imbriqué à signer AVANT l'app elle-même, les plus profonds d'abord.
		  // `--deep` est volontairement évité : il produit des signatures invalides.
		  Var found() As FolderItem
		  CollectSignable(app, found)
		  // Tri : profondeur décroissante (nombre de « / » du chemin).
		  Var depths() As Integer
		  For Each f As FolderItem In found
		    depths.Add(-f.NativePath.Split("/").Count)
		  Next
		  depths.SortWith(found)
		  Return found
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub CollectSignable(folder As FolderItem, found() As FolderItem)
		  If folder Is Nil Or Not folder.Exists Or Not folder.IsFolder Then Return
		  Try
		    For Each child As FolderItem In folder.Children
		      If child Is Nil Then Continue
		      Var ext As String = PkgFS.FileExtension(child.Name).Lowercase
		      Select Case ext
		      Case "framework", "app", "xpc", "bundle", "appex", "plugin", "dylib"
		        found.Add(child)
		      Case Else
		        If Not child.IsFolder And PkgFS.IsMachO(child) Then found.Add(child)
		      End Select
		      If child.IsFolder Then CollectSignable(child, found)
		    Next
		  Catch err As RuntimeException
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function TopLevelAppBundles(root As FolderItem) As FolderItem()
		  // Bundles .app de premier niveau ; les .app imbriquées dans une autre .app
		  // sont ignorées (elles sont signées avec leur hôte).
		  Var apps() As FolderItem
		  CollectApps(root, apps)
		  Return apps
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub CollectApps(folder As FolderItem, apps() As FolderItem)
		  If folder Is Nil Or Not folder.Exists Or Not folder.IsFolder Then Return
		  Try
		    For Each child As FolderItem In folder.Children
		      If child Is Nil Or Not child.IsFolder Then Continue
		      If PkgFS.FileExtension(child.Name).Lowercase = "app" Then
		        apps.Add(child)
		      Else
		        CollectApps(child, apps)
		      End If
		    Next
		  Catch err As RuntimeException
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub WriteLaunchPostinstall(dir As FolderItem, userPostinstall As String, appPath As String)
		  // postinstall injecté : exécute l'éventuel postinstall utilisateur puis lance l'app.
		  Var lines() As String
		  lines.Add("#!/bin/sh")
		  If userPostinstall.Trim <> "" Then
		    CopyScript(userPostinstall, dir.Child("xpackager_user_postinstall"))
		    lines.Add("""$(dirname ""$0"")/xpackager_user_postinstall"" ""$@""")
		  End If
		  For Each l As String In LaunchSnippet(appPath)
		    lines.Add(l)
		  Next
		  Var post As FolderItem = dir.Child("postinstall")
		  PkgFS.WriteTextFile(post, String.FromArray(lines, EndOfLine) + EndOfLine)
		  PkgFS.SetPermissions(post, &o755)
		End Sub
	#tag EndMethod


End Class
#tag EndClass
