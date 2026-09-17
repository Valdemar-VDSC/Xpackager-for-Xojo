#tag Module
Protected Module PkgFS
	#tag Method, Flags = &h0
		Sub CopyInto(src As FolderItem, destParent As FolderItem, newName As String = "")
		  // Copie un élément (fichier OU bundle) dans destParent, en écrasant la cible.
		  //
		  // Via ditto plutôt que FolderItem.CopyTo : celui-ci recopie les attributs
		  // étendus et matérialise au passage des AppleDouble « ._nom » — vus dans le
		  // dossier de scripts du paquet. --norsrc --noextattr --noacl copie le seul
		  // contenu, en préservant la hiérarchie d'un bundle.
		  //
		  // À ne pas confondre avec les « write: Permission denied » de pkgbuild, qui
		  // viennent de com.apple.provenance (macOS 14+) : cet attribut n'est pas
		  // effaçable, même par xattr -rc, et pkgbuild ajoute alors ses propres ._nom
		  // au Bom. Reproduit hors de XPackager ; la version Swift fait de même.
		  If src Is Nil Or Not src.Exists Then Return
		  Var name As String = newName
		  If name = "" Then name = src.Name
		  Var dest As FolderItem = destParent.Child(name)
		  If dest <> Nil And dest.Exists Then DeleteRecursively(dest)
		  
		  Var args() As String = Array("--norsrc", "--noextattr", "--noacl", _
		  src.NativePath, dest.NativePath)
		  Var out As String
		  If ToolRunner.Run("/usr/bin/ditto", args, out) <> 0 Then
		    Raise New BuildError("Copie impossible : " + src.Name + EndOfLine + out)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteRecursively(f As FolderItem)
		  If f Is Nil Or Not f.Exists Then Return
		  If f.IsFolder Then
		    Try
		      For Each child As FolderItem In f.Children
		        DeleteRecursively(child)
		      Next
		    Catch err As RuntimeException
		    End Try
		  End If
		  Try
		    f.Remove
		  Catch err As RuntimeException
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FileExtension(name As String) As String
		  Var dot As Integer = name.LastIndexOf(".")
		  If dot <= 0 Then Return ""
		  Return name.Middle(dot + 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FoldDiacritics(s As String) As String
		  // Translittération des accents (é → e), comme String.folding(.diacriticInsensitive).
		  #If TargetMacOS
		    Const kDiacriticInsensitive = 128
		    Declare Function stringByFolding Lib "Foundation" Selector "stringByFoldingWithOptions:locale:" _
		    (target As CFStringRef, options As Integer, loc As Ptr) As CFStringRef
		    Return stringByFolding(s, kDiacriticInsensitive, Nil)
		  #Else
		    Return s
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsMachO(f As FolderItem) As Boolean
		  // Détecte un binaire Mach-O par ses octets magiques (toutes variantes).
		  If f Is Nil Or Not f.Exists Or f.IsFolder Then Return False
		  Var stream As BinaryStream
		  Try
		    stream = BinaryStream.Open(f, False)
		  Catch err As IOException
		    Return False
		  End Try
		  If stream Is Nil Then Return False
		  If stream.Length < 4 Then
		    stream.Close
		    Return False
		  End If
		  Var magic As UInt32 = stream.ReadUInt32
		  stream.Close
		  Select Case magic
		  Case &hFEEDFACE, &hFEEDFACF, &hCAFEBABE, &hCAFEBABF
		    Return True
		  Case &hCEFAEDFE, &hCFFAEDFE, &hBEBAFECA, &hBFBAFECA
		    Return True
		  End Select
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsPackage(f As FolderItem) As Boolean
		  // Vrai pour un dossier que le Finder présente comme un document :
		  // .app, .framework, .rtfd, bibliothèque Photos… (équivalent de .isPackageKey).
		  If f Is Nil Or Not f.Exists Or Not f.IsFolder Then Return False
		  #If TargetMacOS
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    Declare Function fileURLWithPath Lib "Foundation" Selector "fileURLWithPath:" _
		    (cls As Ptr, path As CFStringRef) As Ptr
		    Declare Function getResourceValue Lib "Foundation" Selector "getResourceValue:forKey:error:" _
		    (url As Ptr, ByRef value As Ptr, key As CFStringRef, e As Ptr) As Boolean
		    Declare Function boolValue Lib "Foundation" Selector "boolValue" (n As Ptr) As Boolean
		    
		    Var cls As Ptr = NSClassFromString("NSURL")
		    If cls = Nil Then Return False
		    Var url As Ptr = fileURLWithPath(cls, f.NativePath)
		    If url = Nil Then Return False
		    Var out As Ptr
		    If Not getResourceValue(url, out, "NSURLIsPackageKey", Nil) Then Return False
		    If out = Nil Then Return False
		    Return boolValue(out)
		  #Else
		    Return False
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ItemAtPath(path As String) As FolderItem
		  If path.Trim = "" Then Return Nil
		  Try
		    Return New FolderItem(path, FolderItem.PathModes.Native)
		  Catch err As RuntimeException
		    Return Nil
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function JoinPath(base As String, relative As String) As String
		  Var b As String = base
		  If Not b.EndsWith("/") Then b = b + "/"
		  Var r As String = relative
		  While r.BeginsWith("/")
		    r = r.Middle(1)
		  Wend
		  Return b + r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastIndexOf(Extends s As String, needle As String) As Integer
		  // Xojo n'expose pas String.LastIndexOf : on balaie vers l'avant.
		  Var found As Integer = -1
		  Var pos As Integer = s.IndexOf(needle)
		  While pos >= 0
		    found = pos
		    pos = s.IndexOf(pos + 1, needle)
		  Wend
		  Return found
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadTextFile(f As FolderItem) As String
		  If f Is Nil Or Not f.Exists Then Return ""
		  Var stream As TextInputStream
		  Try
		    stream = TextInputStream.Open(f)
		  Catch err As IOException
		    Return ""
		  End Try
		  Var content As String = stream.ReadAll(Encodings.UTF8)
		  stream.Close
		  Return content
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPermissions(f As FolderItem, mode As Integer)
		  If f Is Nil Or Not f.Exists Then Return
		  Try
		    f.Permissions = mode
		  Catch err As RuntimeException
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TempWorkFolder() As FolderItem
		  Var work As FolderItem = SpecialFolder.Temporary.Child("XPackager-" + PkgIDs.NewID)
		  work.CreateFolder
		  Return work
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteTextFile(f As FolderItem, content As String)
		  Var out As TextOutputStream = TextOutputStream.Create(f)
		  out.Write(content)
		  out.Close
		End Sub
	#tag EndMethod


End Module
#tag EndModule
