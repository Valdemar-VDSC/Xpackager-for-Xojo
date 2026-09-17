#tag Class
Protected Class PackageNaming
	#tag Method, Flags = &h21
		Private Shared Function Architectures(app As FolderItem, info As JSONItem) As String
		  Var exec As String = PlistString(info, "CFBundleExecutable")
		  If exec = "" Then
		    exec = app.Name
		    If exec.EndsWith(".app") Then exec = exec.Left(exec.Length - 4)
		  End If
		  Var binary As FolderItem = app.Child("Contents").Child("MacOS").Child(exec)
		  If binary Is Nil Or Not binary.Exists Then Return ""
		  Var args() As String = Array("-archs", binary.NativePath)
		  Var out As String = ToolRunner.RunQuiet("/usr/bin/lipo", args).Trim
		  Var hasArm As Boolean = out.IndexOf("arm64") >= 0
		  Var hasIntel As Boolean = out.IndexOf("x86_64") >= 0
		  If hasArm And hasIntel Then Return "UB"
		  If hasArm Then Return "arm64"
		  If hasIntel Then Return "x86_64"
		  If out.IndexOf("i386") >= 0 Then Return "Intel"
		  Return out
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function FirstAppBundle(project As PackageProject) As FolderItem
		  For Each comp As PkgComponent In project.Components
		    Var found As FolderItem = FirstAppInTree(comp.Payload.Tree)
		    If found <> Nil Then Return found
		    If comp.Payload.RootPath.Trim <> "" Then
		      Var folder As FolderItem = PkgFS.ItemAtPath(comp.Payload.RootPath)
		      If folder <> Nil And folder.Exists Then
		        Var app As FolderItem = FirstAppInFolder(folder)
		        If app <> Nil Then Return app
		      End If
		    End If
		  Next
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function FirstAppInFolder(folder As FolderItem) As FolderItem
		  If folder Is Nil Or Not folder.Exists Or Not folder.IsFolder Then Return Nil
		  Var subFolders() As FolderItem
		  Try
		    For Each child As FolderItem In folder.Children
		      If child Is Nil Then Continue
		      If PkgFS.FileExtension(child.Name).Lowercase = "app" Then Return child
		      If child.IsFolder Then subFolders.Add(child)
		    Next
		  Catch err As RuntimeException
		    Return Nil
		  End Try
		  For Each sub2 As FolderItem In subFolders
		    Var found As FolderItem = FirstAppInFolder(sub2)
		    If found <> Nil Then Return found
		  Next
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function FirstAppInTree(nodes() As PayloadNode) As FolderItem
		  For Each n As PayloadNode In nodes
		    If n.Name.Lowercase.EndsWith(".app") And n.SourcePath.Trim <> "" Then
		      Return PkgFS.ItemAtPath(n.SourcePath)
		    End If
		    Var found As FolderItem = FirstAppInTree(n.Children)
		    If found <> Nil Then Return found
		  Next
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FirstInstalledAppPath(project As PackageProject) As String
		  // Chemin d'installation de la première .app du composant 1
		  // (ex. « /Applications/MonApp.app »), pour pré-remplir le lancement final.
		  If project.Components.Count = 0 Then Return ""
		  Var comp As PkgComponent = project.Components(0)
		  Var base As String = comp.InstallLocation
		  If base.Trim = "" Then base = "/"
		  
		  Var rel As String = InstallRelativePath(comp.Payload.Tree, "")
		  If rel <> "" Then Return PkgFS.JoinPath(base, rel)
		  
		  If comp.Payload.RootPath.Trim <> "" Then
		    Var root As FolderItem = PkgFS.ItemAtPath(comp.Payload.RootPath)
		    If root <> Nil And root.Exists Then
		      Var app As FolderItem = FirstAppInFolder(root)
		      If app <> Nil Then
		        Var rootPath As String = root.NativePath
		        Var appPath As String = app.NativePath
		        Var relative As String = app.Name
		        If appPath.BeginsWith(rootPath) Then relative = appPath.Middle(rootPath.Length)
		        Return PkgFS.JoinPath(base, relative)
		      End If
		    End If
		  End If
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function InfoPlist(app As FolderItem) As JSONItem
		  // plutil -convert json : évite d'écrire un lecteur de plist binaire.
		  If app Is Nil Or Not app.Exists Then Return Nil
		  Var plist As FolderItem = app.Child("Contents").Child("Info.plist")
		  If plist Is Nil Or Not plist.Exists Then Return Nil
		  Var args() As String = Array("-convert", "json", "-o", "-", plist.NativePath)
		  Var out As String = ToolRunner.RunQuiet("/usr/bin/plutil", args)
		  If out.Trim = "" Then Return Nil
		  Try
		    Return New JSONItem(out)
		  Catch err As RuntimeException
		    Return Nil
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function InstallRelativePath(nodes() As PayloadNode, prefix As String) As String
		  For Each n As PayloadNode In nodes
		    Var path As String = n.Name
		    If prefix <> "" Then path = prefix + "/" + n.Name
		    If n.Name.Lowercase.EndsWith(".app") Then Return path
		    Var found As String = InstallRelativePath(n.Children, path)
		    If found <> "" Then Return found
		  Next
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function OutputName(project As PackageProject) As String
		  // Nom de fichier final : variables résolues, puis rendu compatible web si activé.
		  Var resolved As String = Resolve(project.Settings.PackageName, project)
		  If project.Settings.WebSafeName Then Return WebSafe(resolved)
		  Return resolved
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ParseIdentity(identity As String, ByRef developer As String, ByRef team As String)
		  // Découpe « Developer ID Installer: Nom Prénom (TEAMID) » → (nom, teamID).
		  developer = ""
		  team = ""
		  Var colon As Integer = identity.IndexOf(": ")
		  If colon >= 0 Then
		    Var rest As String = identity.Middle(colon + 2)
		    Var paren As Integer = rest.IndexOf(" (")
		    If paren >= 0 Then
		      developer = rest.Left(paren)
		    Else
		      developer = rest
		    End If
		  End If
		  Var openParen As Integer = identity.IndexOf("(")
		  Var closeParen As Integer = identity.LastIndexOf(")")
		  If openParen >= 0 And closeParen > openParen Then
		    team = identity.Middle(openParen + 1, closeParen - openParen - 1)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function PlistString(info As JSONItem, key As String) As String
		  If info Is Nil Then Return ""
		  If Not info.HasKey(key) Then Return ""
		  Try
		    Return info.Value(key).StringValue
		  Catch err As RuntimeException
		    Return ""
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Resolve(template As String, project As PackageProject) As String
		  // Remplace les $(variable) de `template` par leurs valeurs.
		  If template.IndexOf("$(") < 0 Then Return template
		  
		  Var values As New Dictionary
		  values.Value("dateYear") = DateTime.Now.Year.ToString
		  
		  Var developer, team As String
		  ParseIdentity(project.Settings.SigningIdentity, developer, team)
		  values.Value("certDeveloperName") = developer
		  values.Value("certTeamID") = team
		  
		  Var app As FolderItem = FirstAppBundle(project)
		  If app <> Nil Then
		    Var info As JSONItem = InfoPlist(app)
		    Var bundleName As String = PlistString(info, "CFBundleName")
		    If bundleName = "" Then bundleName = PlistString(info, "CFBundleDisplayName")
		    If bundleName = "" Then
		      bundleName = app.Name
		      If bundleName.EndsWith(".app") Then bundleName = bundleName.Left(bundleName.Length - 4)
		    End If
		    values.Value("bundleName") = bundleName
		    values.Value("bundleVerString") = PlistString(info, "CFBundleShortVersionString")
		    values.Value("bundleVersion") = PlistString(info, "CFBundleVersion")
		    values.Value("bundleID") = PlistString(info, "CFBundleIdentifier")
		    values.Value("minOS") = PlistString(info, "LSMinimumSystemVersion")
		    If template.IndexOf("$(bundleArch)") >= 0 Then
		      values.Value("bundleArch") = Architectures(app, info)
		    End If
		  End If
		  
		  Var result As String = template
		  For Each key As String In values.Keys
		    result = result.ReplaceAll("$(" + key + ")", values.Value(key))
		  Next
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TokenNames() As String()
		  // Variables de texte dynamique disponibles pour le nom du paquet.
		  Return Array("bundleName", "bundleVerString", "bundleVersion", "bundleID", _
		  "bundleArch", "minOS", "dateYear", "certDeveloperName", "certTeamID")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function WebSafe(name As String) As String
		  // Espaces → « _ », accents translittérés, caractères spéciaux → « _ »,
		  // doublons de « _ » réduits.
		  Var folded As String = PkgFS.FoldDiacritics(name)
		  Var mapped As String
		  For i As Integer = 0 To folded.Length - 1
		    Var ch As String = folded.Middle(i, 1)
		    If ch = " " Then
		      mapped = mapped + "_"
		    ElseIf IsAllowed(ch) Then
		      mapped = mapped + ch
		    Else
		      mapped = mapped + "_"
		    End If
		  Next
		  While mapped.IndexOf("__") >= 0
		    mapped = mapped.ReplaceAll("__", "_")
		  Wend
		  While mapped.BeginsWith("_")
		    mapped = mapped.Middle(1)
		  Wend
		  While mapped.EndsWith("_")
		    mapped = mapped.Left(mapped.Length - 1)
		  Wend
		  Return mapped
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function IsAllowed(ch As String) As Boolean
		  If ch = "." Or ch = "_" Or ch = "-" Then Return True
		  Var code As Integer = Asc(ch)
		  If code >= 48 And code <= 57 Then Return True
		  If code >= 65 And code <= 90 Then Return True
		  If code >= 97 And code <= 122 Then Return True
		  Return False
		End Function
	#tag EndMethod


End Class
#tag EndClass
