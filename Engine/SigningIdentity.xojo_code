#tag Class
Protected Class SigningIdentity
	#tag Method, Flags = &h0
		Shared Function AllIdentities() As String()
		  // Noms communs (CN) de toutes les identités valides du trousseau.
		  // Lignes du type :   3) <HASH> "Developer ID Installer: Nom (TEAMID)"
		  Var names() As String
		  Var args() As String = Array("find-identity", "-v", "-p", "basic")
		  Var output As String = ToolRunner.RunQuiet("/usr/bin/security", args)
		  For Each line As String In output.Split(EndOfLine)
		    Var first As Integer = line.IndexOf("""")
		    Var last As Integer = line.LastIndexOf("""")
		    If first < 0 Or last <= first Then Continue
		    Var name As String = line.Middle(first + 1, last - first - 1)
		    If name = "" Then Continue
		    If names.IndexOf(name) < 0 Then names.Add(name)
		  Next
		  Return names
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ApplicationIdentities() As String()
		  // Identités aptes à signer du code : Developer ID Application,
		  // Apple Distribution, Apple Development.
		  Var result() As String
		  For Each name As String In AllIdentities
		    Var lower As String = name.Lowercase
		    If lower.IndexOf("developer id application") >= 0 _
		      Or lower.IndexOf("apple distribution") >= 0 _
		      Or lower.IndexOf("apple development") >= 0 Then
		      result.Add(name)
		    End If
		  Next
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function InstallerIdentities() As String()
		  // Identités aptes à signer un paquet installateur (productbuild --sign).
		  Var result() As String
		  For Each name As String In AllIdentities
		    If name.Lowercase.IndexOf("installer") >= 0 Then result.Add(name)
		  Next
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function StoreNotaryProfile(profile As String, appleID As String, teamID As String, password As String, ByRef log As String) As Boolean
		  // Crée (ou met à jour) un profil d'identifiants notarytool dans le trousseau.
		  // Le mot de passe n'est pas conservé : il n'est passé qu'à notarytool.
		  Var args() As String = Array("notarytool", "store-credentials", profile, _
		  "--apple-id", appleID, "--team-id", teamID, "--password", password)
		  Var out As String
		  Var code As Integer = ToolRunner.Run("/usr/bin/xcrun", args, out)
		  log = out
		  Return code = 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ValidateNotaryProfile(profile As String) As Boolean
		  // Teste un profil via notarytool history (n'envoie rien à noter).
		  If profile.Trim = "" Then Return False
		  Var args() As String = Array("notarytool", "history", "--keychain-profile", profile)
		  Var out As String
		  Return ToolRunner.Run("/usr/bin/xcrun", args, out) = 0
		End Function
	#tag EndMethod


End Class
#tag EndClass
