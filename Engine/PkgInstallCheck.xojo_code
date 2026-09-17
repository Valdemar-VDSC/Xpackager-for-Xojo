#tag Class
Protected Class PkgInstallCheck
	#tag Method, Flags = &h0
		Function Clone() As PkgInstallCheck
		  Var c As New PkgInstallCheck
		  c.CheckID = CheckID
		  c.Kind = Kind
		  c.Value = Value
		  c.Message = Message
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  CheckID = PkgIDs.NewID
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgInstallCheck
		  Var c As New PkgInstallCheck
		  If j Is Nil Then Return c
		  If j.HasKey("id") Then c.CheckID = j.Value("id")
		  If j.HasKey("kind") Then c.Kind = PkgInstallCheck.KindFromRaw(j.Value("kind"))
		  If j.HasKey("value") Then c.Value = j.Value("value")
		  If j.HasKey("message") Then c.Message = j.Value("message")
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function KindFromRaw(raw As String) As Kinds
		  Select Case raw
		  Case "fileAbsent"
		    Return Kinds.FileAbsent
		  Case "minimumRAM"
		    Return Kinds.MinimumRAM
		  End Select
		  Return Kinds.FileExists
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RawKind() As String
		  Select Case Kind
		  Case Kinds.FileAbsent
		    Return "fileAbsent"
		  Case Kinds.MinimumRAM
		    Return "minimumRAM"
		  End Select
		  Return "fileExists"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
		  j.Value("id") = CheckID
		  j.Value("kind") = RawKind
		  j.Value("value") = Value
		  j.Value("message") = Message
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		CheckID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Kind As Kinds = Kinds.FileExists
	#tag EndProperty

	#tag Property, Flags = &h0
		Message As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Value As String
	#tag EndProperty


	#tag Enum, Name = Kinds, Type = Integer, Flags = &h0
		FileExists
		  FileAbsent
		MinimumRAM
	#tag EndEnum


End Class
#tag EndClass
