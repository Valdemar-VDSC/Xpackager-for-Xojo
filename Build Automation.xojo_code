#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				  DeveloperID=Apple Development: Valdemar De SOUSA (NC32DR648M)
				  macOSEntitlements={"App Sandbox":"False","Hardened Runtime":"False","Notarize":"False","UserEntitlements":""}
				End
				Begin IDEScriptBuildStep PaquetLivre , AppliesTo = 2, Architecture = 0, Target = 0
					// Fabrique le paquet livré juste après l'application.
					//
					// « Build Automation.xojo_code » est le MÊME fichier pour XPackager et pour
					// XPackagerBuild : sans ce garde, construire l'outil en ligne de commande
					// lancerait une notarisation. CurrentBuildAppName porte l'extension.
					//
					// ProjectShellPath désigne le FICHIER projet et arrive déjà échappé pour le
					// shell : on le concatène nu, et c'est « dirname » qui en tire le dossier.
					//
					// Le paquet est fabriqué par l'outil DÉJÀ construit : après une modification
					// du moteur, reconstruire XPackagerBuild avant l'application.
					If CurrentBuildTargetIsMacOS And CurrentBuildAppName = "XPackager.app" Then
					Dim cmd As String = "racine=$(dirname " + ProjectShellPath + ") && " + _
					"cd ""$racine"" && " + _
					"""./Builds - XPackagerBuild/macOS Universal/xpackagerbuild/xpackagerbuild"" " + _
					"""$racine/XPackager.xpackager"" > /tmp/xpackager-build.log 2>&1 || echo ECHEC"
					// La notarisation dure une à deux minutes, pendant lesquelles l'IDE attend.
					Dim sortie As String = DoShellCommand(cmd)
					If InStr(sortie, "ECHEC") > 0 Then Print "Le paquet a échoué — voir /tmp/xpackager-build.log"
					End If
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
