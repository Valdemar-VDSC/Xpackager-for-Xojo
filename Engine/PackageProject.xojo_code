#tag Class
Protected Class PackageProject
	#tag Method, Flags = &h0
		Function Clone() As PackageProject
		  Var c As New PackageProject
		  c.Settings = Settings.Clone
		  c.Presentation = Presentation.Clone
		  c.Requirements = Requirements.Clone
		  c.Notarization = Notarization.Clone
		  c.PostInstall = PostInstall.Clone
		  c.Components.RemoveAll
		  For Each comp As PkgComponent In Components
		    c.Components.Add(comp.Clone)
		  Next
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Settings = New PkgSettings
		  Presentation = New PkgPresentation
		  Requirements = New PkgRequirements
		  Notarization = New PkgNotarization
		  PostInstall = New PkgPostInstall
		  Components.Add(New PkgComponent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(root As JSONItem) As PackageProject
		  // Décodage tolérant aux clés manquantes : on part des valeurs par défaut et
		  // on n'écrase que les clés présentes (rétro-compatibilité des .xpackager).
		  Var p As New PackageProject
		  If root Is Nil Then Return p
		  If root.HasKey("settings") Then p.Settings = PkgSettings.FromJSON(root.Value("settings"))
		  If root.HasKey("presentation") Then p.Presentation = PkgPresentation.FromJSON(root.Value("presentation"))
		  If root.HasKey("requirements") Then p.Requirements = PkgRequirements.FromJSON(root.Value("requirements"))
		  If root.HasKey("notarization") Then p.Notarization = PkgNotarization.FromJSON(root.Value("notarization"))
		  If root.HasKey("postInstall") Then p.PostInstall = PkgPostInstall.FromJSON(root.Value("postInstall"))
		  
		  Var loaded() As PkgComponent
		  If root.HasKey("components") Then
		    Var comps As JSONItem = root.Value("components")
		    For i As Integer = 0 To comps.Count - 1
		      loaded.Add(PkgComponent.FromJSON(comps.ChildAt(i)))
		    Next
		  End If
		  
		  If loaded.Count > 0 Then
		    p.Components.RemoveAll
		    For Each comp As PkgComponent In loaded
		      p.Components.Add(comp)
		    Next
		    Return p
		  End If
		  
		  // Migration depuis l'ancien format mono-composant (payload/scripts à la racine
		  // et identifier/version/installLocation dans settings).
		  Var comp As PkgComponent = p.Components(0)
		  comp.Name = p.Settings.PackageName
		  If root.HasKey("settings") Then
		    Var s As JSONItem = root.Value("settings")
		    If s.HasKey("identifier") Then comp.Identifier = s.Value("identifier")
		    If s.HasKey("version") Then comp.Version = s.Value("version")
		    If s.HasKey("installLocation") Then comp.InstallLocation = s.Value("installLocation")
		  End If
		  If root.HasKey("payload") Then comp.Payload = PkgPayload.FromJSON(root.Value("payload"))
		  If root.HasKey("scripts") Then comp.Scripts = PkgScripts.FromJSON(root.Value("scripts"))
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Load(file As FolderItem) As PackageProject
		  Var stream As TextInputStream = TextInputStream.Open(file)
		  Var raw As String = stream.ReadAll(Encodings.UTF8)
		  stream.Close
		  Var root As New JSONItem(raw)
		  Return PackageProject.FromJSON(root)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save(file As FolderItem)
		  Var out As TextOutputStream = TextOutputStream.Create(file)
		  out.Write(ToJSON.ToString)
		  out.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
		  j.Value("settings") = Settings.ToJSON
		  j.Value("presentation") = Presentation.ToJSON
		  j.Value("requirements") = Requirements.ToJSON
		  j.Value("notarization") = Notarization.ToJSON
		  j.Value("postInstall") = PostInstall.ToJSON
		  Var comps As New JSONItem
		  comps.Compact = False
		  For Each comp As PkgComponent In Components
		    comps.Add(comp.ToJSON)
		  Next
		  j.Value("components") = comps
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Components() As PkgComponent
	#tag EndProperty

	#tag Property, Flags = &h0
		Notarization As PkgNotarization
	#tag EndProperty

	#tag Property, Flags = &h0
		PostInstall As PkgPostInstall
	#tag EndProperty

	#tag Property, Flags = &h0
		Presentation As PkgPresentation
	#tag EndProperty

	#tag Property, Flags = &h0
		Requirements As PkgRequirements
	#tag EndProperty

	#tag Property, Flags = &h0
		Settings As PkgSettings
	#tag EndProperty


End Class
#tag EndClass
