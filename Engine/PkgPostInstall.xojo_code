#tag Class
Protected Class PkgPostInstall
	#tag Method, Flags = &h0
		Function Clone() As PkgPostInstall
		  Var c As New PkgPostInstall
		  c.LaunchApp = LaunchApp
		  c.AppPath = AppPath
		  c.Conclusion = Conclusion
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ConclusionFromRaw(raw As String) As Conclusions
		  Select Case raw
		  Case "logout"
		    Return Conclusions.Logout
		  Case "restart"
		    Return Conclusions.Restart
		  Case "shutdown"
		    Return Conclusions.Shutdown
		  End Select
		  Return Conclusions.NoAction
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromJSON(j As JSONItem) As PkgPostInstall
		  Var p As New PkgPostInstall
		  If j Is Nil Then Return p
		  If j.HasKey("launchApp") Then p.LaunchApp = j.Value("launchApp")
		  If j.HasKey("appPath") Then p.AppPath = j.Value("appPath")
		  If j.HasKey("conclusion") Then p.Conclusion = PkgPostInstall.ConclusionFromRaw(j.Value("conclusion"))
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OnConclusionValue() As String
		  // Valeur de l'attribut onConclusion des pkg-ref.
		  Select Case Conclusion
		  Case Conclusions.Logout
		    Return "RequireLogout"
		  Case Conclusions.Restart
		    Return "RequireRestart"
		  Case Conclusions.Shutdown
		    Return "RequireShutdown"
		  End Select
		  Return "none"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RawConclusion() As String
		  Select Case Conclusion
		  Case Conclusions.Logout
		    Return "logout"
		  Case Conclusions.Restart
		    Return "restart"
		  Case Conclusions.Shutdown
		    Return "shutdown"
		  End Select
		  Return "none"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  Var j As New JSONItem
		  j.Compact = False
		  j.Value("launchApp") = LaunchApp
		  j.Value("appPath") = AppPath
		  j.Value("conclusion") = RawConclusion
		  Return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		AppPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Conclusion As Conclusions = Conclusions.NoAction
	#tag EndProperty

	#tag Property, Flags = &h0
		LaunchApp As Boolean
	#tag EndProperty


	#tag Enum, Name = Conclusions, Type = Integer, Flags = &h0
		NoAction
		  Logout
		  Restart
		Shutdown
	#tag EndEnum


End Class
#tag EndClass
