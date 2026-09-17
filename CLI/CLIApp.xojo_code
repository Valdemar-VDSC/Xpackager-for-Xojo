#tag Class
Protected Class CLIApp
Inherits ConsoleApplication
	#tag Event
		Function Run(args() As String) As Integer
		  Var projectPath As String
		  Var outputPath As String
		  Var signIdentity As String
		  Var appSignIdentity As String
		  Var notaryProfile As String
		  Var forceNoNotarize As Boolean
		  Var quiet As Boolean
		  
		  Var i As Integer = 1
		  While i <= args.LastIndex
		    Var a As String = args(i)
		    Select Case a
		    Case "-h", "--help"
		      PrintUsage
		      Return 0
		    Case "-v", "--version"
		      Print("xpackagerbuild " + VersionString)
		      Return 0
		    Case "-q", "--quiet"
		      quiet = True
		    Case "-o", "--output"
		      i = i + 1
		      If i > args.LastIndex Then Return Fail("Option -o : chemin manquant.")
		      outputPath = args(i)
		    Case "--sign"
		      i = i + 1
		      If i > args.LastIndex Then Return Fail("Option --sign : identité manquante.")
		      signIdentity = args(i)
		    Case "--app-sign"
		      i = i + 1
		      If i > args.LastIndex Then Return Fail("Option --app-sign : identité manquante.")
		      appSignIdentity = args(i)
		    Case "--notarize"
		      i = i + 1
		      If i > args.LastIndex Then Return Fail("Option --notarize : profil manquant.")
		      notaryProfile = args(i)
		    Case "--no-notarize"
		      forceNoNotarize = True
		    Case Else
		      If a.BeginsWith("-") Then Return Fail("Option inconnue : " + a)
		      If projectPath <> "" Then Return Fail("Un seul projet peut être construit à la fois.")
		      projectPath = a
		    End Select
		    i = i + 1
		  Wend
		  
		  If projectPath = "" Then
		    PrintUsage
		    Return 1
		  End If
		  
		  Var projectFile As FolderItem = PkgFS.ItemAtPath(projectPath)
		  If projectFile Is Nil Or Not projectFile.Exists Then
		    Return Fail("Projet introuvable : " + projectPath)
		  End If
		  
		  Var project As PackageProject
		  Try
		    project = PackageProject.Load(projectFile)
		  Catch err As RuntimeException
		    Return Fail("Projet illisible : " + err.Message)
		  End Try
		  
		  // Options de la ligne de commande : elles priment sur le projet.
		  If signIdentity <> "" Then project.Settings.SigningIdentity = signIdentity
		  If appSignIdentity <> "" Then
		    project.Settings.AppSigningIdentity = appSignIdentity
		    project.Settings.HardenPayloadApps = True
		  End If
		  If notaryProfile <> "" Then
		    project.Notarization.Enabled = True
		    project.Notarization.KeychainProfile = notaryProfile
		  End If
		  If forceNoNotarize Then project.Notarization.Enabled = False
		  
		  // Destination : -o, sinon le nom résolu à côté du projet.
		  Var output As FolderItem
		  If outputPath <> "" Then
		    output = PkgFS.ItemAtPath(outputPath)
		  Else
		    output = projectFile.Parent.Child(PackageNaming.OutputName(project) + ".pkg")
		  End If
		  If output Is Nil Then Return Fail("Destination invalide.")
		  
		  Var work As FolderItem
		  Var steps() As BuildStep
		  Try
		    steps = PackageBuilder.PrepareSteps(project, output, work)
		  Catch err As RuntimeException
		    PkgFS.DeleteRecursively(work)
		    Return Fail(err.Message)
		  End Try
		  
		  Var message As String
		  If Not BuildSequence.RunSteps(steps, work, output.NativePath, quiet, message) Then
		    Return Fail(message)
		  End If
		  
		  If quiet Then
		    Print(output.NativePath)
		  Else
		    Print(EndOfLine + "✅ " + Loc.kPackageCreated + " " + output.NativePath)
		  End If
		  Return 0
		End Function
	#tag EndEvent

	#tag Method, Flags = &h21
		Private Function Fail(message As String) As Integer
		  Var err As TextOutputStream = TextOutputStream.Open(StandardError)
		  err.WriteLine("xpackagerbuild: " + message)
		  Return 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PrintUsage()
		  Print("xpackagerbuild " + VersionString + " — construit un .pkg depuis un projet .xpackager")
		  Print("")
		  Print("Usage : xpackagerbuild <projet.xpackager> [options]")
		  Print("")
		  Print("Options :")
		  Print("  -o, --output <chemin>    Destination du paquet (défaut : à côté du projet)")
		  Print("      --sign <identité>    Identité « Developer ID Installer » (productbuild --sign)")
		  Print("      --app-sign <ident.>  Identité « Developer ID Application » (renforcement)")
		  Print("      --notarize <profil>  Notarise avec ce profil de trousseau notarytool")
		  Print("      --no-notarize        Désactive la notarisation même si le projet l'active")
		  Print("  -q, --quiet              Silencieux (imprime seulement le chemin du .pkg)")
		  Print("  -h, --help               Affiche cette aide")
		  Print("  -v, --version            Affiche la version")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function VersionString() As String
		  Return Str(Self.MajorVersion) + "." + Str(Self.MinorVersion) + "." + Str(Self.BugVersion)
		End Function
	#tag EndMethod


End Class
#tag EndClass
