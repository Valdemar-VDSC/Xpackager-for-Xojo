#tag Module
Protected Module PkgIDs
	#tag Method, Flags = &h0
		Function NewID() As String
		  // Identifiant stable et unique dans la session (équivalent des UUID Swift).
		  mCounter = mCounter + 1
		  Return Format(System.Microseconds, "0") + "-" + mCounter.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mCounter As Integer
	#tag EndProperty


End Module
#tag EndModule
