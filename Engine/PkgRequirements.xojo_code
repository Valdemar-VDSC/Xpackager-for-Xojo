#tag Class
Protected Class PkgRequirements
	#tag Method, Flags = &h0
		Function Clone() As PkgRequirements
		  Var c As New PkgRequirements
		  c.MinimumOSVersion = MinimumOSVersion
		  c.AllowArm64 = AllowArm64
		  c.AllowIntel = AllowIntel
		  For Each chk As PkgInstallCheck In Checks
		    c.Checks.Add(chk.Clone)
		  Next
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgRequirements
		  Var r As New PkgRequirements
		  If j Is Nil Then Return r
		  If j.HasKey("minimumOSVersion") Then r.MinimumOSVersion = j.Value("minimumOSVersion")
		  If j.HasKey("allowArm64") Then r.AllowArm64 = j.Value("allowArm64")
		  If j.HasKey("allowIntel") Then r.AllowIntel = j.Value("allowIntel")
		  If j.HasKey("checks") Then
		    Var list As JSONItem = j.Value("checks")
		    For i As Integer = 0 To list.Count - 1
		      r.Checks.Add(PkgInstallCheck.FromJSON(list.ChildAt(i)))
		    Next
		  End If
		  Return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HostArchitectures() As String
		  // Valeur de l'attribut hostArchitectures (au moins une architecture).
		  Var archs() As String
		  If AllowArm64 Then archs.Add("arm64")
		  If AllowIntel Then archs.Add("x86_64")
		  If archs.Count = 0 Then Return "arm64"
		  Return String.FromArray(archs, ",")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
		  j.Value("minimumOSVersion") = MinimumOSVersion
		  j.Value("allowArm64") = AllowArm64
		  j.Value("allowIntel") = AllowIntel
		  Var list As New JSONItem
		  list.Compact = False
		  For Each chk As PkgInstallCheck In Checks
		    list.Add(chk.ToJSON)
		  Next
		  j.Value("checks") = list
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		AllowArm64 As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		AllowIntel As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		Checks() As PkgInstallCheck
	#tag EndProperty

	#tag Property, Flags = &h0
		MinimumOSVersion As String
	#tag EndProperty


End Class
#tag EndClass
