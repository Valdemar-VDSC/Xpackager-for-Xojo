#tag Class
Protected Class PkgPayload
	#tag Method, Flags = &h0
		Function Clone() As PkgPayload
		  Var c As New PkgPayload
		  c.RootPath = RootPath
		  For Each n As PayloadNode In Tree
		    c.Tree.Add(n.Clone)
		  Next
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgPayload
		  Var p As New PkgPayload
		  If j Is Nil Then Return p
		  If j.HasKey("rootPath") Then p.RootPath = j.Value("rootPath")
		  If j.HasKey("tree") Then
		    Var t As JSONItem = j.Value("tree")
		    For i As Integer = 0 To t.Count - 1
		      p.Tree.Add(PayloadNode.FromJSON(t.ChildAt(i)))
		    Next
		  End If
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Value("rootPath") = RootPath
		  Var t As New JSONItem
		  t.Compact = False
		  For Each n As PayloadNode In Tree
		    t.Add(n.ToJSON)
		  Next
		  j.Value("tree") = t
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		RootPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Tree() As PayloadNode
	#tag EndProperty


End Class
#tag EndClass
