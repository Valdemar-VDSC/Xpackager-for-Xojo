#tag Class
Protected Class ProjectTemplate
	#tag Method, Flags = &h0
		Sub Constructor(templateName As String, p As PackageProject, builtIn As Boolean)
		  Name = templateName
		  Project = p
		  IsBuiltIn = builtIn
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		IsBuiltIn As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Project As PackageProject
	#tag EndProperty


End Class
#tag EndClass
