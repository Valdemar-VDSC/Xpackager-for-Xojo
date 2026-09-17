#tag Module
Protected Module PayloadTree
	#tag Method, Flags = &h0
		Function AddNode(Extends nodes() As PayloadNode, node As PayloadNode, parentID As String) As Boolean
		  // Ajoute `node` sous le dossier `parentID` (racine si parentID est vide).
		  // Renvoie False si le parent visé n'est pas un dossier.
		  If parentID = "" Then
		    nodes.Add(node)
		    Return True
		  End If
		  For i As Integer = 0 To nodes.LastIndex
		    If nodes(i).NodeID = parentID Then
		      If Not nodes(i).IsDirectory Then Return False
		      nodes(i).Children.Add(node)
		      Return True
		    End If
		    If nodes(i).Children.AddNode(node, parentID) Then Return True
		  Next
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CloneTree(Extends nodes() As PayloadNode) As PayloadNode()
		  Var result() As PayloadNode
		  For Each n As PayloadNode In nodes
		    result.Add(n.Clone)
		  Next
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DetachNode(Extends nodes() As PayloadNode, id As String) As PayloadNode
		  // Retire et renvoie le nœud `id`, en profondeur.
		  For i As Integer = 0 To nodes.LastIndex
		    If nodes(i).NodeID = id Then
		      Var found As PayloadNode = nodes(i)
		      nodes.RemoveAt(i)
		      Return found
		    End If
		  Next
		  For i As Integer = 0 To nodes.LastIndex
		    Var found As PayloadNode = nodes(i).Children.DetachNode(id)
		    If found <> Nil Then Return found
		  Next
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindNode(Extends nodes() As PayloadNode, id As String) As PayloadNode
		  For Each n As PayloadNode In nodes
		    If n.NodeID = id Then Return n
		    Var found As PayloadNode = n.Children.FindNode(id)
		    If found <> Nil Then Return found
		  Next
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveNode(Extends nodes() As PayloadNode, id As String, parentID As String)
		  // Sans effet si la cible est le nœud lui-même, un de ses descendants,
		  // ou un parent qui n'est pas un dossier.
		  If parentID <> "" Then
		    If id = parentID Then Return
		    Var moving As PayloadNode = nodes.FindNode(id)
		    If moving <> Nil And moving.SubtreeContains(parentID) Then Return
		    Var parent As PayloadNode = nodes.FindNode(parentID)
		    If parent Is Nil Or Not parent.IsDirectory Then Return
		  End If
		  Var node As PayloadNode = nodes.DetachNode(id)
		  If node Is Nil Then Return
		  If Not nodes.AddNode(node, parentID) Then nodes.Add(node)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParentIDOf(Extends nodes() As PayloadNode, id As String) As String
		  // Identifiant du dossier contenant `id` (vide si à la racine ou introuvable).
		  For Each n As PayloadNode In nodes
		    For Each c As PayloadNode In n.Children
		      If c.NodeID = id Then Return n.NodeID
		    Next
		    Var found As String = n.Children.ParentIDOf(id)
		    If found <> "" Then Return found
		  Next
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveNode(Extends nodes() As PayloadNode, id As String) As Boolean
		  Return nodes.DetachNode(id) <> Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateName(Extends nodes() As PayloadNode, id As String, newName As String)
		  Var n As PayloadNode = nodes.FindNode(id)
		  If n <> Nil Then n.Name = newName
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdatePermissions(Extends nodes() As PayloadNode, id As String, mode As Integer)
		  Var n As PayloadNode = nodes.FindNode(id)
		  If n <> Nil Then n.Permissions = mode
		End Sub
	#tag EndMethod


End Module
#tag EndModule
