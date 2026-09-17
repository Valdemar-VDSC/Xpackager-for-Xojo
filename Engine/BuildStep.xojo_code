#tag Class
Protected Class BuildStep
	#tag Method, Flags = &h0
		Sub AddArg(value As String)
		  Args.Add(value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddFallback(value As String)
		  FallbackArgs.Add(value)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Args() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CheckAccepted As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		EchoCommand As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		FailureMessage As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FallbackArgs() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Label As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NotaryProfile As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Phase As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Progress As Double = -1.0
	#tag EndProperty

	#tag Property, Flags = &h0
		Quiet As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ToolPath As String
	#tag EndProperty


End Class
#tag EndClass
