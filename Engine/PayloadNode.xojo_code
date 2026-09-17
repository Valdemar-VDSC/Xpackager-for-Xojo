#tag Class
Protected Class PayloadNode
	#tag Method, Flags = &h0
		Function Clone() As PayloadNode
		  Var copy As New PayloadNode
		  copy.NodeID = Me.NodeID
		  copy.Name = Me.Name
		  copy.IsDirectory = Me.IsDirectory
		  copy.SourcePath = Me.SourcePath
		  copy.Permissions = Me.Permissions
		  For Each child As PayloadNode In Me.Children
		    copy.Children.Add(child.Clone)
		  Next
		  Return copy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  NodeID = PkgIDs.NewID
		  Permissions = &o755
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function DirectoryNode(name As String, permissions As Integer = &o755) As PayloadNode
		  Var n As New PayloadNode
		  n.Name = name
		  n.IsDirectory = True
		  n.Permissions = permissions
		  Return n
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FileNode(f As FolderItem) As PayloadNode
		  // Un .app est un bundle (dossier) copié en bloc : il lui faut un mode
		  // traversable (0755) et non un mode « fichier » (0644).
		  Var n As New PayloadNode
		  n.Name = f.Name
		  n.IsDirectory = False
		  n.SourcePath = f.NativePath
		  If f.IsFolder Then
		    n.Permissions = &o755
		  Else
		    n.Permissions = &o644
		  End If
		  Return n
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromItem(f As FolderItem) As PayloadNode
		  // Fichier ou bundle (.app, .framework…) → feuille opaque copiée en bloc ;
		  // dossier ordinaire → nœud dossier dont les enfants reflètent le contenu.
		  If f Is Nil Then Return Nil
		  If Not f.IsFolder Or PkgFS.IsPackage(f) Then Return PayloadNode.FileNode(f)
		  
		  Var node As PayloadNode = PayloadNode.DirectoryNode(f.Name)
		  Var names() As String
		  Var byName As New Dictionary
		  Try
		    For Each child As FolderItem In f.Children
		      If child Is Nil Then Continue
		      If child.Name.BeginsWith(".") Then Continue
		      names.Add(child.Name)
		      byName.Value(child.Name) = child
		    Next
		  Catch err As RuntimeException
		    // Dossier illisible : on garde le nœud, sans ses enfants.
		  End Try
		  names.Sort
		  For Each n As String In names
		    Var child As FolderItem = byName.Value(n)
		    Var childNode As PayloadNode = PayloadNode.FromItem(child)
		    If childNode <> Nil Then node.Children.Add(childNode)
		  Next
		  Return node
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PayloadNode
		  // Décodage tolérant : un simple HasKey suffit (pas de Codable).
		  Var n As New PayloadNode
		  If j.HasKey("isDirectory") Then n.IsDirectory = j.Value("isDirectory")
		  If n.IsDirectory Then
		    n.Permissions = &o755
		  Else
		    n.Permissions = &o644
		  End If
		  If j.HasKey("id") Then n.NodeID = j.Value("id")
		  If j.HasKey("name") Then n.Name = j.Value("name")
		  If j.HasKey("sourcePath") Then n.SourcePath = j.Value("sourcePath")
		  If j.HasKey("permissions") Then n.Permissions = j.Value("permissions")
		  If j.HasKey("children") Then
		    Var kids As JSONItem = j.Value("children")
		    For i As Integer = 0 To kids.Count - 1
		      n.Children.Add(PayloadNode.FromJSON(kids.ChildAt(i)))
		    Next
		  End If
		  Return n
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PermissionsString() As String
		  // Représentation octale sur 4 chiffres, ex. « 0755 ».
		  Var o As String = Oct(Permissions)
		  While o.Length < 4
		    o = "0" + o
		  Wend
		  Return o
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubtreeContains(id As String) As Boolean
		  If Me.NodeID = id Then Return True
		  For Each child As PayloadNode In Me.Children
		    If child.SubtreeContains(id) Then Return True
		  Next
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Value("id") = NodeID
		  j.Value("name") = Name
		  j.Value("isDirectory") = IsDirectory
		  j.Value("sourcePath") = SourcePath
		  j.Value("permissions") = Permissions
		  If Children.Count > 0 Or IsDirectory Then
		    Var kids As New JSONItem
		    kids.Compact = False
		    For Each child As PayloadNode In Children
		      kids.Add(child.ToJSON)
		    Next
		    j.Value("children") = kids
		  End If
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Children() As PayloadNode
	#tag EndProperty

	#tag Property, Flags = &h0
		IsDirectory As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NodeID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Permissions As Integer = &o755
	#tag EndProperty

	#tag Property, Flags = &h0
		SourcePath As String
	#tag EndProperty


End Class
#tag EndClass
