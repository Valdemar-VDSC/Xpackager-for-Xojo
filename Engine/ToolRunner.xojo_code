#tag Class
Protected Class ToolRunner
	#tag Method, Flags = &h0
		Shared Function CommandLine(toolPath As String, args() As String) As String
		  // ⚠︎ Shell = commande-chaîne (pas argv) : il FAUT citer chaque argument,
		  // sinon les chemins contenant des espaces cassent.
		  Var cmd As String = ShellQuote(toolPath)
		  For Each a As String In args
		    cmd = cmd + " " + ShellQuote(a)
		  Next
		  Return cmd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Display(toolPath As String, args() As String) As String
		  // Ligne affichée dans le journal (non citée), comme la version Swift.
		  Var name As String = toolPath
		  Var slash As Integer = name.LastIndexOf("/")
		  If slash >= 0 Then name = name.Middle(slash + 1)
		  Return "$ " + name + " " + String.FromArray(args, " ")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Run(toolPath As String, args() As String, ByRef output As String) As Integer
		  // Exécution SYNCHRONE : la sortie arrive d'un bloc à la fin.
		  // Pour du streaming, voir BuildRunner (Shell asynchrone + DataAvailable).
		  Var sh As New Shell
		  sh.Timeout = -1
		  sh.ExecuteMode = Shell.ExecuteModes.Synchronous
		  sh.Execute(CommandLine(toolPath, args) + " 2>&1")
		  output = sh.Result
		  Return sh.ExitCode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function RunQuiet(toolPath As String, args() As String) As String
		  // Renvoie stdout seul (stderr ignoré) — pour security, lipo, plutil…
		  Var sh As New Shell
		  sh.Timeout = -1
		  sh.ExecuteMode = Shell.ExecuteModes.Synchronous
		  sh.Execute(CommandLine(toolPath, args) + " 2>/dev/null")
		  Return sh.Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ShellQuote(s As String) As String
		  // Quoting POSIX. En Xojo, les littéraux n'interprètent pas « \ » :
		  // "'\''" vaut donc littéralement les 4 caractères ' \ ' '.
		  Return "'" + s.ReplaceAll("'", "'\''") + "'"
		End Function
	#tag EndMethod


End Class
#tag EndClass
