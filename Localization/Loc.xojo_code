#tag Module
Protected Module Loc
	#tag Constant, Name = kSettings, Type = String, Dynamic = True, Default = \"R\xC3\xA9glages", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Settings"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Ajustes"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Einstellungen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Impostazioni"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Defini\xC3\xA7\xC3\xB5es"
	#tag EndConstant

	#tag Constant, Name = kComponents, Type = String, Dynamic = True, Default = \"Composants", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Components"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Componentes"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Komponenten"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Componenti"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Componentes"
	#tag EndConstant

	#tag Constant, Name = kRequirements, Type = String, Dynamic = True, Default = \"Pr\xC3\xA9requis", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Requirements"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Requisitos"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Voraussetzungen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Requisiti"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Requisitos"
	#tag EndConstant

	#tag Constant, Name = kPresentation, Type = String, Dynamic = True, Default = \"Pr\xC3\xA9sentation", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Presentation"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Presentaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Darstellung"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Presentazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Apresenta\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kPreferences, Type = String, Dynamic = True, Default = \"R\xC3\xA9glages", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Settings"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Ajustes"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Einstellungen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Impostazioni"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Defini\xC3\xA7\xC3\xB5es"
	#tag EndConstant

	#tag Constant, Name = kBuildEllipsis, Type = String, Dynamic = True, Default = \"Construire\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Build\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Compilar\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Erstellen\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Compila\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Compilar\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kBuildThePackage, Type = String, Dynamic = True, Default = \"Construire le paquet .pkg", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Build the .pkg package"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Compilar el paquete .pkg"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Das .pkg-Paket erstellen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Crea il pacchetto .pkg"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Compilar o pacote .pkg"
	#tag EndConstant

	#tag Constant, Name = kSavePackage, Type = String, Dynamic = True, Default = \"Enregistrer le paquet", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Save the package"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Guardar el paquete"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Paket sichern"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Salva il pacchetto"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Guardar o pacote"
	#tag EndConstant

	#tag Constant, Name = kProduct, Type = String, Dynamic = True, Default = \"Produit", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Product"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Producto"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Produkt"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Prodotto"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Produto"
	#tag EndConstant

	#tag Constant, Name = kPackageName, Type = String, Dynamic = True, Default = \"Nom du paquet", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Package name"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre del paquete"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Paketname"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nome del pacchetto"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nome do pacote"
	#tag EndConstant

	#tag Constant, Name = kPackageNameHelp, Type = String, Dynamic = True, Default = \"Prend en charge le texte dynamique (ex. $(bundleName) $(bundleVerString)). Cliquez sur \xE2\x93\x98 pour la liste des variables.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Supports dynamic text (e.g. $(bundleName) $(bundleVerString)). Click \xE2\x93\x98 for the list of variables."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Admite texto din\xC3\xA1mico (p. ej. $(bundleName) $(bundleVerString)). Haz clic en \xE2\x93\x98 para ver la lista de variables."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Unterst\xC3\xBCtzt dynamischen Text (z. B. $(bundleName) $(bundleVerString)). F\xC3\xBCr die Variablenliste auf \xE2\x93\x98 klicken."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Supporta il testo dinamico (es. $(bundleName) $(bundleVerString)). Fai clic su \xE2\x93\x98 per l\xE2\x80\x99elenco delle variabili."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Suporta texto din\xC3\xA2mico (ex. $(bundleName) $(bundleVerString)). Clica em \xE2\x93\x98 para ver a lista de vari\xC3\xA1veis."
	#tag EndConstant

	#tag Constant, Name = kInsertVariable, Type = String, Dynamic = True, Default = \"Ins\xC3\xA9rer une variable", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Insert a variable"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Insertar una variable"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Variable einf\xC3\xBCgen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Inserisci una variabile"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Inserir uma vari\xC3\xA1vel"
	#tag EndConstant

	#tag Constant, Name = kDynamicTokensHelp, Type = String, Dynamic = True, Default = \"Variables de texte dynamique disponibles", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Available dynamic-text variables"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Variables de texto din\xC3\xA1mico disponibles"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verf\xC3\xBCgbare Variablen f\xC3\xBCr dynamischen Text"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Variabili di testo dinamico disponibili"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Vari\xC3\xA1veis de texto din\xC3\xA2mico dispon\xC3\xADveis"
	#tag EndConstant

	#tag Constant, Name = kWebSafeToggle, Type = String, Dynamic = True, Default = \"Nom compatible web (espaces \xE2\x86\x92 \xC2\xAB _ \xC2\xBB\x2C accents simplifi\xC3\xA9s)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Web-safe name (spaces \xE2\x86\x92 \xE2\x80\x9C_\xE2\x80\x9D\x2C accents simplified)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre compatible con web (espacios \xE2\x86\x92 \xC2\xAB_\xC2\xBB\x2C acentos simplificados)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Web-tauglicher Name (Leerzeichen \xE2\x86\x92 \xE2\x80\x9E_\xE2\x80\x9C\x2C Akzente vereinfacht)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nome compatibile col web (spazi \xE2\x86\x92 \xC2\xAB_\xC2\xBB\x2C accenti semplificati)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nome compat\xC3\xADvel com a web (espa\xC3\xA7os \xE2\x86\x92 \xC2\xAB_\xC2\xBB\x2C acentos simplificados)"
	#tag EndConstant

	#tag Constant, Name = kPreviewLabel, Type = String, Dynamic = True, Default = \"Aper\xC3\xA7u :", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Preview:"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Vista previa:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vorschau:"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Anteprima:"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Pr\xC3\xA9-visualiza\xC3\xA7\xC3\xA3o:"
	#tag EndConstant

	#tag Constant, Name = kPerComponentNote, Type = String, Dynamic = True, Default = \"L'identifiant\x2C la version et l'emplacement se d\xC3\xA9finissent par composant\x2C dans l'onglet Composants.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"The identifier\x2C version and location are set per component\x2C in the Components tab."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"El identificador\x2C la versi\xC3\xB3n y la ubicaci\xC3\xB3n se definen por componente\x2C en la pesta\xC3\xB1a Componentes."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Kennung\x2C Version und Speicherort werden pro Komponente im Tab \xE2\x80\x9EKomponenten\xE2\x80\x9C festgelegt."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Identificatore\x2C versione e posizione si definiscono per componente\x2C nella scheda Componenti."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"O identificador\x2C a vers\xC3\xA3o e a localiza\xC3\xA7\xC3\xA3o definem-se por componente\x2C no separador Componentes."
	#tag EndConstant

	#tag Constant, Name = kSupportedDynamicText, Type = String, Dynamic = True, Default = \"Texte dynamique pris en charge :", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Supported dynamic text:"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Texto din\xC3\xA1mico admitido:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Unterst\xC3\xBCtzter dynamischer Text:"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Testo dinamico supportato:"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Texto din\xC3\xA2mico suportado:"
	#tag EndConstant

	#tag Constant, Name = kTokenValuesSource, Type = String, Dynamic = True, Default = \"Valeurs lues depuis la premi\xC3\xA8re app (.app) du payload et l'identit\xC3\xA9 de signature.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Values read from the first app (.app) in the payload and the signing identity."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Valores le\xC3\xADdos de la primera app (.app) del payload y de la identidad de firma."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Werte werden aus der ersten App (.app) im Payload und der Signaturidentit\xC3\xA4t gelesen."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Valori letti dalla prima app (.app) del payload e dall\xE2\x80\x99identit\xC3\xA0 di firma."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Valores lidos da primeira app (.app) do payload e da identidade de assinatura."
	#tag EndConstant

	#tag Constant, Name = kTokBundleName, Type = String, Dynamic = True, Default = \"Nom de l'application", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"App name"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre de la app"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"App-Name"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nome dell\xE2\x80\x99app"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nome da app"
	#tag EndConstant

	#tag Constant, Name = kTokBundleVerString, Type = String, Dynamic = True, Default = \"Version (cha\xC3\xAEne\x2C ex. 1.0.2)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Version (string\x2C e.g. 1.0.2)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Versi\xC3\xB3n (cadena\x2C p. ej. 1.0.2)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Version (Zeichenkette\x2C z. B. 1.0.2)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Versione (stringa\x2C es. 1.0.2)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Vers\xC3\xA3o (cadeia\x2C ex. 1.0.2)"
	#tag EndConstant

	#tag Constant, Name = kTokBundleVersion, Type = String, Dynamic = True, Default = \"Version de build (ex. 512)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Build version (e.g. 512)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Versi\xC3\xB3n de compilaci\xC3\xB3n (p. ej. 512)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Build-Version (z. B. 512)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Versione di build (es. 512)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Vers\xC3\xA3o de compila\xC3\xA7\xC3\xA3o (ex. 512)"
	#tag EndConstant

	#tag Constant, Name = kTokBundleID, Type = String, Dynamic = True, Default = \"Identifiant du bundle", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Bundle identifier"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Identificador del bundle"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bundle-Kennung"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Identificatore del bundle"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Identificador do bundle"
	#tag EndConstant

	#tag Constant, Name = kTokBundleArch, Type = String, Dynamic = True, Default = \"Architecture (arm64\x2C x86_64\x2C UB\xE2\x80\xA6)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Architecture (arm64\x2C x86_64\x2C UB\xE2\x80\xA6)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Arquitectura (arm64\x2C x86_64\x2C UB\xE2\x80\xA6)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Architektur (arm64\x2C x86_64\x2C UB\xE2\x80\xA6)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Architettura (arm64\x2C x86_64\x2C UB\xE2\x80\xA6)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Arquitetura (arm64\x2C x86_64\x2C UB\xE2\x80\xA6)"
	#tag EndConstant

	#tag Constant, Name = kTokMinOS, Type = String, Dynamic = True, Default = \"Version minimale de macOS", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Minimum macOS version"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Versi\xC3\xB3n m\xC3\xADnima de macOS"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mindest-macOS-Version"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Versione minima di macOS"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Vers\xC3\xA3o m\xC3\xADnima do macOS"
	#tag EndConstant

	#tag Constant, Name = kTokDateYear, Type = String, Dynamic = True, Default = \"Ann\xC3\xA9e courante", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Current year"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"A\xC3\xB1o actual"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aktuelles Jahr"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Anno corrente"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Ano atual"
	#tag EndConstant

	#tag Constant, Name = kTokCertDeveloperName, Type = String, Dynamic = True, Default = \"Nom du certificat de signature", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Signing certificate name"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre del certificado de firma"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Name des Signaturzertifikats"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nome del certificato di firma"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nome do certificado de assinatura"
	#tag EndConstant

	#tag Constant, Name = kTokCertTeamID, Type = String, Dynamic = True, Default = \"Team ID du certificat", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Certificate Team ID"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Team ID del certificado"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Team-ID des Zertifikats"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Team ID del certificato"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Team ID do certificado"
	#tag EndConstant

	#tag Constant, Name = kSignatureOptional, Type = String, Dynamic = True, Default = \"Signature (facultatif)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Signing (optional)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Firma (opcional)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Signatur (optional)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Firma (facoltativo)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Assinatura (opcional)"
	#tag EndConstant

	#tag Constant, Name = kSigningIdentity, Type = String, Dynamic = True, Default = \"Identit\xC3\xA9 de signature", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Signing identity"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Identidad de firma"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Signaturidentit\xC3\xA4t"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Identit\xC3\xA0 di firma"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Identidade de assinatura"
	#tag EndConstant

	#tag Constant, Name = kUnsigned, Type = String, Dynamic = True, Default = \"Non sign\xC3\xA9", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Unsigned"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Sin firmar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nicht signiert"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Non firmato"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"N\xC3\xA3o assinado"
	#tag EndConstant

	#tag Constant, Name = kNoInstallerIdentity, Type = String, Dynamic = True, Default = \"Aucune identit\xC3\xA9 \xC2\xAB Installer \xC2\xBB trouv\xC3\xA9e dans le trousseau.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"No \xE2\x80\x9CInstaller\xE2\x80\x9D identity found in the keychain."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"No se encontr\xC3\xB3 ninguna identidad \xC2\xABInstaller\xC2\xBB en el llavero."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Keine \xE2\x80\x9EInstaller\xE2\x80\x9C-Identit\xC3\xA4t im Schl\xC3\xBCsselbund gefunden."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nessuna identit\xC3\xA0 \xC2\xABInstaller\xC2\xBB trovata nel portachiavi."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nenhuma identidade \xC2\xABInstaller\xC2\xBB encontrada no porta-chaves."
	#tag EndConstant

	#tag Constant, Name = kSignsWithProductbuild, Type = String, Dynamic = True, Default = \"Signe le paquet avec `productbuild --sign`.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Signs the package with `productbuild --sign`."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Firma el paquete con `productbuild --sign`."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Signiert das Paket mit `productbuild --sign`."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Firma il pacchetto con `productbuild --sign`."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Assina o pacote com `productbuild --sign`."
	#tag EndConstant

	#tag Constant, Name = kRefreshIdentities, Type = String, Dynamic = True, Default = \"Rafra\xC3\xAEchir la liste des identit\xC3\xA9s", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Refresh the identity list"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Actualizar la lista de identidades"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Identit\xC3\xA4tsliste aktualisieren"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Aggiorna l\xE2\x80\x99elenco delle identit\xC3\xA0"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Atualizar a lista de identidades"
	#tag EndConstant

	#tag Constant, Name = kUnavailable, Type = String, Dynamic = True, Default = \"%@ (indisponible)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"%@ (unavailable)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"%@ (no disponible)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"%@ (nicht verf\xC3\xBCgbar)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"%@ (non disponibile)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"%@ (indispon\xC3\xADvel)"
	#tag EndConstant

	#tag Constant, Name = kWhichCertificate, Type = String, Dynamic = True, Default = \"Quel certificat choisir ?", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWhichCertificateBody, Type = String, Dynamic = True, Default = \"\xC2\xAB Developer ID Installer \xC2\xBB \xE2\x86\x92 distribution directe (double-clic) + notarisation. \xC2\xAB 3rd Party Mac Developer Installer \xC2\xBB \xE2\x86\x92 soumission au Mac App Store uniquement.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMASCertificate, Type = String, Dynamic = True, Default = \"Certificat pour le Mac App Store", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMASCertificateBody, Type = String, Dynamic = True, Default = \"\xC2\xAB 3rd Party Mac Developer Installer \xC2\xBB sert \xC3\xA0 soumettre au Mac App Store : le .pkg produit n'est pas installable par double-clic\x2C il s'envoie via Transporter / App Store Connect. Pour un paquet installable directement (distribution hors App Store)\x2C choisissez plut\xC3\xB4t \xC2\xAB Developer ID Installer \xC2\xBB\x2C puis notarisez ci-dessous.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOutsideMAS, Type = String, Dynamic = True, Default = \"Distribution hors App Store", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOutsideMASBody, Type = String, Dynamic = True, Default = \"\xC2\xAB Developer ID Installer \xC2\xBB produit un paquet installable par double-clic. Activez la notarisation ci-dessous pour qu'il passe Gatekeeper sans avertissement.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kHardeningSection, Type = String, Dynamic = True, Default = \"Renforcement du payload (facultatif)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Payload hardening (optional)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Refuerzo del payload (opcional)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Payload-H\xC3\xA4rtung (optional)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Rafforzamento del payload (facoltativo)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Refor\xC3\xA7o do payload (opcional)"
	#tag EndConstant

	#tag Constant, Name = kHardenToggle, Type = String, Dynamic = True, Default = \"Re-signer les apps en Hardened Runtime avant de packager", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Re-sign apps with Hardened Runtime before packaging"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Volver a firmar las apps con Hardened Runtime antes de empaquetar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Apps vor dem Paketieren mit Hardened Runtime neu signieren"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Rifirma le app in Hardened Runtime prima di creare il pacchetto"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Reassinar as apps com Hardened Runtime antes de empacotar"
	#tag EndConstant

	#tag Constant, Name = kAppIdentityLabel, Type = String, Dynamic = True, Default = \"Identit\xC3\xA9 (Developer ID Application)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Identity (Developer ID Application)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Identidad (Developer ID Application)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Identit\xC3\xA4t (Developer ID Application)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Identit\xC3\xA0 (Developer ID Application)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Identidade (Developer ID Application)"
	#tag EndConstant

	#tag Constant, Name = kChooseEllipsis, Type = String, Dynamic = True, Default = \"Choisir\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Choose\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Elegir\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ausw\xC3\xA4hlen\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Scegli\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Escolher\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kHardenHelp, Type = String, Dynamic = True, Default = \"Chaque .app du payload est re-sign\xC3\xA9e (`codesign --options runtime --timestamp`) sur une copie \xE2\x80\x94 vos originaux ne sont pas modifi\xC3\xA9s. Indispensable pour notariser des apps sans Hardened Runtime (ex. Xojo).", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Each .app in the payload is re-signed (`codesign --options runtime --timestamp`) on a copy \xE2\x80\x94 your originals are untouched. Required to notarize apps without Hardened Runtime (e.g. Xojo)."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Cada .app del payload se vuelve a firmar (`codesign --options runtime --timestamp`) en una copia \xE2\x80\x94 tus originales no se modifican. Imprescindible para notarizar apps sin Hardened Runtime (p. ej. Xojo)."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jede .app im Payload wird auf einer Kopie neu signiert (`codesign --options runtime --timestamp`) \xE2\x80\x94 deine Originale bleiben unver\xC3\xA4ndert. Erforderlich\x2C um Apps ohne Hardened Runtime zu notarisieren (z. B. Xojo)."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Ogni .app del payload viene rifirmata (`codesign --options runtime --timestamp`) su una copia \xE2\x80\x94 gli originali non vengono modificati. Indispensabile per notarizzare app senza Hardened Runtime (es. Xojo)."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Cada .app do payload \xC3\xA9 reassinada (`codesign --options runtime --timestamp`) numa c\xC3\xB3pia \xE2\x80\x94 os originais n\xC3\xA3o s\xC3\xA3o alterados. Indispens\xC3\xA1vel para notarizar apps sem Hardened Runtime (ex. Xojo)."
	#tag EndConstant

	#tag Constant, Name = kNoAppIdentity, Type = String, Dynamic = True, Default = \"Aucune identit\xC3\xA9 \xC2\xAB Application \xC2\xBB trouv\xC3\xA9e dans le trousseau.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"No \xE2\x80\x9CApplication\xE2\x80\x9D identity found in the keychain."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"No se encontr\xC3\xB3 ninguna identidad \xC2\xABApplication\xC2\xBB en el llavero."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Keine \xE2\x80\x9EApplication\xE2\x80\x9C-Identit\xC3\xA4t im Schl\xC3\xBCsselbund gefunden."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nessuna identit\xC3\xA0 \xC2\xABApplication\xC2\xBB trovata nel portachiavi."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nenhuma identidade \xC2\xABApplication\xC2\xBB encontrada no porta-chaves."
	#tag EndConstant

	#tag Constant, Name = kNotarizationOptional, Type = String, Dynamic = True, Default = \"Notarisation (facultatif)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarization (optional)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Notarizaci\xC3\xB3n (opcional)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Notarisierung (optional)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Notarizzazione (facoltativo)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Notariza\xC3\xA7\xC3\xA3o (opcional)"
	#tag EndConstant

	#tag Constant, Name = kNotarizeAfterBuild, Type = String, Dynamic = True, Default = \"Notariser apr\xC3\xA8s la construction", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarize after building"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Notarizar tras la compilaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nach dem Erstellen notarisieren"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Notarizza dopo la creazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Notarizar ap\xC3\xB3s a compila\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kNotaryProfileInPrefs, Type = String, Dynamic = True, Default = \"Le profil et les identifiants notarytool se configurent dans R\xC3\xA9glages (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarisation.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"The notarytool profile and credentials are configured in Settings (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarization."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"El perfil y las credenciales de notarytool se configuran en Ajustes (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarizaci\xC3\xB3n."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Das notarytool-Profil und die Anmeldedaten werden unter Einstellungen (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarisierung konfiguriert."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Il profilo e le credenziali di notarytool si configurano in Impostazioni (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarizzazione."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"O perfil e as credenciais do notarytool configuram-se em Defini\xC3\xA7\xC3\xB5es (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notariza\xC3\xA7\xC3\xA3o."
	#tag EndConstant

	#tag Constant, Name = kNotarizeNeedsSigned, Type = String, Dynamic = True, Default = \"La notarisation exige un paquet sign\xC3\xA9 (Developer ID Installer).", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarization requires a signed package (Developer ID Installer)."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"La notarizaci\xC3\xB3n requiere un paquete firmado (Developer ID Installer)."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Die Notarisierung erfordert ein signiertes Paket (Developer ID Installer)."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"La notarizzazione richiede un pacchetto firmato (Developer ID Installer)."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A notariza\xC3\xA7\xC3\xA3o exige um pacote assinado (Developer ID Installer)."
	#tag EndConstant

	#tag Constant, Name = kComponent, Type = String, Dynamic = True, Default = \"Composant", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kComponentsPlural, Type = String, Dynamic = True, Default = \"composants", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"components"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"componentes"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Komponenten"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"componenti"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"componentes"
	#tag EndConstant

	#tag Constant, Name = kComponentSingular, Type = String, Dynamic = True, Default = \"composant", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"component"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"componente"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Komponente"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"componente"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"componente"
	#tag EndConstant

	#tag Constant, Name = kAddComponent, Type = String, Dynamic = True, Default = \"Ajouter un composant", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Add a component"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"A\xC3\xB1adir un componente"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Komponente hinzuf\xC3\xBCgen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Aggiungi un componente"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Adicionar um componente"
	#tag EndConstant

	#tag Constant, Name = kRemoveComponent, Type = String, Dynamic = True, Default = \"Retirer le composant", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Remove the component"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Quitar el componente"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Komponente entfernen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Rimuovi il componente"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Remover o componente"
	#tag EndConstant

	#tag Constant, Name = kNoComponent, Type = String, Dynamic = True, Default = \"Aucun composant", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"No component"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Ning\xC3\xBAn componente"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Keine Komponente"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nessun componente"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nenhum componente"
	#tag EndConstant

	#tag Constant, Name = kComponentIdentity, Type = String, Dynamic = True, Default = \"Identit\xC3\xA9 du composant", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Component identity"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Identidad del componente"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Komponentenidentit\xC3\xA4t"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Identit\xC3\xA0 del componente"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Identidade do componente"
	#tag EndConstant

	#tag Constant, Name = kNameChoiceTitle, Type = String, Dynamic = True, Default = \"Nom (titre du choix)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Name (choice title)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre (t\xC3\xADtulo de la opci\xC3\xB3n)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Name (Titel der Auswahl)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nome (titolo della scelta)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nome (t\xC3\xADtulo da op\xC3\xA7\xC3\xA3o)"
	#tag EndConstant

	#tag Constant, Name = kIdentifier, Type = String, Dynamic = True, Default = \"Identifiant", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Identifier"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Identificador"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Kennung"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Identificatore"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Identificador"
	#tag EndConstant

	#tag Constant, Name = kVersionLabel, Type = String, Dynamic = True, Default = \"Version", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Version"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Versi\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Version"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Versione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Vers\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kInstallLocation, Type = String, Dynamic = True, Default = \"Emplacement d'installation", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Install location"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Ubicaci\xC3\xB3n de instalaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Installationsort"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Posizione d\xE2\x80\x99installazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Localiza\xC3\xA7\xC3\xA3o de instala\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kInstallOptions, Type = String, Dynamic = True, Default = \"Options d'installation", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Install options"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Opciones de instalaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Installationsoptionen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Opzioni d\xE2\x80\x99installazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Op\xC3\xA7\xC3\xB5es de instala\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kDescriptionLabel, Type = String, Dynamic = True, Default = \"Description", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Description"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Descripci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Beschreibung"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Descrizione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Descri\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kStartSelected, Type = String, Dynamic = True, Default = \"S\xC3\xA9lectionn\xC3\xA9 par d\xC3\xA9faut", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Selected by default"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Seleccionado por omisi\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Standardm\xC3\xA4\xC3\x9Fig ausgew\xC3\xA4hlt"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Selezionato di default"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Selecionado por omiss\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kUserToggleable, Type = String, Dynamic = True, Default = \"Modifiable par l'utilisateur", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"User-changeable"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Modificable por el usuario"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vom Benutzer \xC3\xA4nderbar"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Modificabile dall\xE2\x80\x99utente"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Modific\xC3\xA1vel pelo utilizador"
	#tag EndConstant

	#tag Constant, Name = kVisibleInCustomList, Type = String, Dynamic = True, Default = \"Visible dans la liste personnalis\xC3\xA9e", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Visible in the custom list"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Visible en la lista personalizada"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"In der angepassten Liste sichtbar"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Visibile nell\xE2\x80\x99elenco personalizzato"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Vis\xC3\xADvel na lista personalizada"
	#tag EndConstant

	#tag Constant, Name = kMultiComponentNote, Type = String, Dynamic = True, Default = \"Avec plusieurs composants\x2C l'assistant propose une installation personnalis\xC3\xA9e (cases \xC3\xA0 cocher).", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"With several components\x2C the installer offers a custom installation (checkboxes)."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Con varios componentes\x2C el instalador ofrece una instalaci\xC3\xB3n personalizada (casillas)."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bei mehreren Komponenten bietet der Installer eine benutzerdefinierte Installation (Ankreuzfelder)."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Con pi\xC3\xB9 componenti\x2C l\xE2\x80\x99installer propone un\xE2\x80\x99installazione personalizzata (caselle)."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Com v\xC3\xA1rios componentes\x2C o instalador oferece uma instala\xC3\xA7\xC3\xA3o personalizada (caixas)."
	#tag EndConstant

	#tag Constant, Name = kPayload, Type = String, Dynamic = True, Default = \"Payload", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kFolderButton, Type = String, Dynamic = True, Default = \"Dossier", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Folder"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Carpeta"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ordner"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Cartella"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Pasta"
	#tag EndConstant

	#tag Constant, Name = kFilesEllipsis, Type = String, Dynamic = True, Default = \"Fichiers\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Files\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Archivos\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Dateien\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"File\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Ficheiros\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kRemoveButton, Type = String, Dynamic = True, Default = \"Retirer", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Remove"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Quitar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Entfernen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Rimuovi"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Remover"
	#tag EndConstant

	#tag Constant, Name = kTemplateButton, Type = String, Dynamic = True, Default = \"Mod\xC3\xA8le", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Template"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Plantilla"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vorlage"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Modello"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Modelo"
	#tag EndConstant

	#tag Constant, Name = kDropFilesHere, Type = String, Dynamic = True, Default = \"Glissez des fichiers ou dossiers ici", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Drag files or folders here"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Arrastra archivos o carpetas aqu\xC3\xAD"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Dateien oder Ordner hierher ziehen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Trascina file o cartelle qui"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Arrasta ficheiros ou pastas para aqui"
	#tag EndConstant

	#tag Constant, Name = kDropFilesHint, Type = String, Dynamic = True, Default = \"\xE2\x80\xA6ou utilisez les boutons ci-dessus. Un dossier est import\xC3\xA9 avec son arborescence ; une app (.app) est copi\xC3\xA9e telle quelle.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"\xE2\x80\xA6or use the buttons above. A folder is imported with its hierarchy; an app (.app) is copied as is."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"\xE2\x80\xA6o usa los botones de arriba. Una carpeta se importa con su jerarqu\xC3\xADa; una app (.app) se copia tal cual."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xE2\x80\xA6oder verwende die Tasten oben. Ein Ordner wird mit seiner Hierarchie importiert; eine App (.app) wird unver\xC3\xA4ndert kopiert."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"\xE2\x80\xA6oppure usa i pulsanti sopra. Una cartella viene importata con la sua gerarchia; un\xE2\x80\x99app (.app) viene copiata cos\xC3\xAC com\xE2\x80\x99\xC3\xA8."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"\xE2\x80\xA6ou usa os bot\xC3\xB5es acima. Uma pasta \xC3\xA9 importada com a sua hierarquia; uma app (.app) \xC3\xA9 copiada tal como est\xC3\xA1."
	#tag EndConstant

	#tag Constant, Name = kSelectedItem, Type = String, Dynamic = True, Default = \"\xC3\x89l\xC3\xA9ment s\xC3\xA9lectionn\xC3\xA9", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Selected item"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Elemento seleccionado"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ausgew\xC3\xA4hltes Objekt"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Elemento selezionato"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Item selecionado"
	#tag EndConstant

	#tag Constant, Name = kNameLabel, Type = String, Dynamic = True, Default = \"Nom", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Name"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Name"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nome"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nome"
	#tag EndConstant

	#tag Constant, Name = kTypeLabel, Type = String, Dynamic = True, Default = \"Type", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Type"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Tipo"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Typ"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Tipo"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Tipo"
	#tag EndConstant

	#tag Constant, Name = kFolderKind, Type = String, Dynamic = True, Default = \"Dossier", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Folder"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Carpeta"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ordner"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Cartella"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Pasta"
	#tag EndConstant

	#tag Constant, Name = kFileKind, Type = String, Dynamic = True, Default = \"Fichier", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSourceLabel, Type = String, Dynamic = True, Default = \"Source", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Source"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Origen"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Quelle"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Origine"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Origem"
	#tag EndConstant

	#tag Constant, Name = kPermissionsLabel, Type = String, Dynamic = True, Default = \"Permissions", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Permissions"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Permisos"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Berechtigungen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Permessi"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Permiss\xC3\xB5es"
	#tag EndConstant

	#tag Constant, Name = kSelectItemForPermissions, Type = String, Dynamic = True, Default = \"S\xC3\xA9lectionnez un \xC3\xA9l\xC3\xA9ment pour modifier ses permissions.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select an item to edit its permissions."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Selecciona un elemento para editar sus permisos."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"W\xC3\xA4hle ein Objekt\x2C um seine Berechtigungen zu bearbeiten."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Seleziona un elemento per modificarne i permessi."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Seleciona um item para editar as suas permiss\xC3\xB5es."
	#tag EndConstant

	#tag Constant, Name = kNewFolderName, Type = String, Dynamic = True, Default = \"nouveau-dossier", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kScripts, Type = String, Dynamic = True, Default = \"Scripts", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kInstallScripts, Type = String, Dynamic = True, Default = \"Scripts d'installation", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Install scripts"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Scripts de instalaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Installationsskripte"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Script d\xE2\x80\x99installazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Scripts de instala\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kScriptsHelp, Type = String, Dynamic = True, Default = \"Ex\xC3\xA9cut\xC3\xA9s respectivement avant et apr\xC3\xA8s l'installation du payload.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Run before and after the payload is installed\x2C respectively."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Se ejecutan antes y despu\xC3\xA9s de instalar el payload\x2C respectivamente."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Werden vor bzw. nach der Installation des Payloads ausgef\xC3\xBChrt."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Eseguiti rispettivamente prima e dopo l\xE2\x80\x99installazione del payload."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Executados antes e depois da instala\xC3\xA7\xC3\xA3o do payload\x2C respetivamente."
	#tag EndConstant

	#tag Constant, Name = kSystemSection, Type = String, Dynamic = True, Default = \"Syst\xC3\xA8me", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"System"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Sistema"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"System"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Sistema"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Sistema"
	#tag EndConstant

	#tag Constant, Name = kMinimumOSField, Type = String, Dynamic = True, Default = \"Version minimale de macOS (ex. 15.0)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Minimum macOS version (e.g. 15.0)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Versi\xC3\xB3n m\xC3\xADnima de macOS (p. ej. 15.0)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mindest-macOS-Version (z. B. 15.0)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Versione minima di macOS (es. 15.0)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Vers\xC3\xA3o m\xC3\xADnima do macOS (ex. 15.0)"
	#tag EndConstant

	#tag Constant, Name = kMinimumOSHelp, Type = String, Dynamic = True, Default = \"Laisser vide pour n'imposer aucune version.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Leave empty to require no version."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"D\xC3\xA9jalo vac\xC3\xADo para no exigir ninguna versi\xC3\xB3n."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Leer lassen\x2C um keine Version zu verlangen."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Lascia vuoto per non richiedere alcuna versione."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Deixa vazio para n\xC3\xA3o exigir qualquer vers\xC3\xA3o."
	#tag EndConstant

	#tag Constant, Name = kAllowedArchitectures, Type = String, Dynamic = True, Default = \"Architectures autoris\xC3\xA9es", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Allowed architectures"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Arquitecturas permitidas"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Erlaubte Architekturen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Architetture consentite"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Arquiteturas permitidas"
	#tag EndConstant

	#tag Constant, Name = kAppleSilicon, Type = String, Dynamic = True, Default = \"Apple Silicon (arm64)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Apple Silicon (arm64)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Apple Silicon (arm64)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Apple Silicon (arm64)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Apple Silicon (arm64)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Apple Silicon (arm64)"
	#tag EndConstant

	#tag Constant, Name = kIntelArch, Type = String, Dynamic = True, Default = \"Intel (x86_64)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Intel (x86_64)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Intel (x86_64)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Intel (x86_64)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Intel (x86_64)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Intel (x86_64)"
	#tag EndConstant

	#tag Constant, Name = kInstallConditions, Type = String, Dynamic = True, Default = \"Conditions d'installation (locators)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Installation conditions (locators)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Condiciones de instalaci\xC3\xB3n (locators)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Installationsbedingungen (Locators)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Condizioni d\xE2\x80\x99installazione (locator)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Condi\xC3\xA7\xC3\xB5es de instala\xC3\xA7\xC3\xA3o (locators)"
	#tag EndConstant

	#tag Constant, Name = kNoConditions, Type = String, Dynamic = True, Default = \"Aucune condition. Ajoutez-en pour bloquer l'installation selon la pr\xC3\xA9sence d'un fichier ou la m\xC3\xA9moire disponible.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"No conditions. Add some to block installation based on a file\xE2\x80\x99s presence or available memory."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Sin condiciones. A\xC3\xB1ade alguna para bloquear la instalaci\xC3\xB3n seg\xC3\xBAn la presencia de un archivo o la memoria disponible."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Keine Bedingungen. F\xC3\xBCge welche hinzu\x2C um die Installation je nach Vorhandensein einer Datei oder verf\xC3\xBCgbarem Speicher zu blockieren."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nessuna condizione. Aggiungine per bloccare l\xE2\x80\x99installazione in base alla presenza di un file o alla memoria disponibile."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Sem condi\xC3\xA7\xC3\xB5es. Adiciona algumas para bloquear a instala\xC3\xA7\xC3\xA3o consoante a presen\xC3\xA7a de um ficheiro ou a mem\xC3\xB3ria dispon\xC3\xADvel."
	#tag EndConstant

	#tag Constant, Name = kAddCondition, Type = String, Dynamic = True, Default = \"Ajouter une condition", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRemoveCondition, Type = String, Dynamic = True, Default = \"Retirer cette condition", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Remove this condition"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Quitar esta condici\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Diese Bedingung entfernen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Rimuovi questa condizione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Remover esta condi\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kKindFileExists, Type = String, Dynamic = True, Default = \"Fichier pr\xC3\xA9sent", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"File present"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Archivo presente"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datei vorhanden"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"File presente"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Ficheiro presente"
	#tag EndConstant

	#tag Constant, Name = kKindFileAbsent, Type = String, Dynamic = True, Default = \"Fichier absent", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"File absent"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Archivo ausente"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datei fehlt"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"File assente"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Ficheiro ausente"
	#tag EndConstant

	#tag Constant, Name = kKindMinimumRAM, Type = String, Dynamic = True, Default = \"RAM minimale (Go)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Minimum RAM (GB)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"RAM m\xC3\xADnima (GB)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mindest-RAM (GB)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"RAM minima (GB)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"RAM m\xC3\xADnima (GB)"
	#tag EndConstant

	#tag Constant, Name = kPathPlaceholder, Type = String, Dynamic = True, Default = \"/chemin/vers/\xC3\xA9l\xC3\xA9ment", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"/path/to/item"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"/ruta/al/elemento"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"/pfad/zum/objekt"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"/percorso/all\xE2\x80\x99elemento"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"/caminho/para/o/item"
	#tag EndConstant

	#tag Constant, Name = kBrowseEllipsis, Type = String, Dynamic = True, Default = \"Parcourir\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Browse\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Explorar\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Durchsuchen\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Sfoglia\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Procurar\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kConditionMessage, Type = String, Dynamic = True, Default = \"Message affich\xC3\xA9 si la condition \xC3\xA9choue (facultatif)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Message shown if the condition fails (optional)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Mensaje mostrado si la condici\xC3\xB3n falla (opcional)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Meldung\x2C wenn die Bedingung fehlschl\xC3\xA4gt (optional)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Messaggio mostrato se la condizione fallisce (facoltativo)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Mensagem apresentada se a condi\xC3\xA7\xC3\xA3o falhar (opcional)"
	#tag EndConstant

	#tag Constant, Name = kChooseItemToCheck, Type = String, Dynamic = True, Default = \"Choisir le fichier ou dossier \xC3\xA0 v\xC3\xA9rifier", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Choose the file or folder to check"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Elegir el archivo o carpeta a comprobar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Zu pr\xC3\xBCfende Datei oder Ordner ausw\xC3\xA4hlen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Scegli il file o la cartella da verificare"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Escolher o ficheiro ou pasta a verificar"
	#tag EndConstant

	#tag Constant, Name = kInstallerAssistant, Type = String, Dynamic = True, Default = \"Assistant d'installation", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Installer"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Asistente de instalaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Installationsassistent"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Assistente d\xE2\x80\x99installazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Assistente de instala\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kTitleLabel, Type = String, Dynamic = True, Default = \"Titre", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Title"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"T\xC3\xADtulo"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Titel"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Titolo"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"T\xC3\xADtulo"
	#tag EndConstant

	#tag Constant, Name = kTitleEmptyHelp, Type = String, Dynamic = True, Default = \"Laisser vide pour utiliser le nom du produit.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Leave empty to use the product name."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"D\xC3\xA9jalo vac\xC3\xADo para usar el nombre del producto."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Leer lassen\x2C um den Produktnamen zu verwenden."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Lascia vuoto per usare il nome del prodotto."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Deixa vazio para usar o nome do produto."
	#tag EndConstant

	#tag Constant, Name = kWelcome, Type = String, Dynamic = True, Default = \"Bienvenue", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Welcome"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Bienvenida"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Willkommen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Benvenuto"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Bem-vindo"
	#tag EndConstant

	#tag Constant, Name = kReadMe, Type = String, Dynamic = True, Default = \"Lisez-moi", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Read Me"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"L\xC3\xA9ame"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bitte lesen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Leggimi"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Leia-me"
	#tag EndConstant

	#tag Constant, Name = kLicense, Type = String, Dynamic = True, Default = \"Licence", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"License"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Licencia"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Lizenz"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Licenza"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Licen\xC3\xA7a"
	#tag EndConstant

	#tag Constant, Name = kConclusion, Type = String, Dynamic = True, Default = \"Conclusion", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Conclusion"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Conclusi\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Abschluss"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Conclusione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Conclus\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kRTFStoredInProject, Type = String, Dynamic = True, Default = \"Mise en forme enregistr\xC3\xA9e dans le projet\x2C \xC3\xA9crite en .rtf \xC3\xA0 la construction.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Formatting saved in the project\x2C written as .rtf at build time."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Formato guardado en el proyecto\x2C escrito como .rtf al compilar."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Formatierung im Projekt gespeichert\x2C beim Erstellen als .rtf geschrieben."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Formattazione salvata nel progetto\x2C scritta in .rtf alla creazione."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Formata\xC3\xA7\xC3\xA3o guardada no projeto\x2C escrita em .rtf na compila\xC3\xA7\xC3\xA3o."
	#tag EndConstant

	#tag Constant, Name = kImportFileEllipsis, Type = String, Dynamic = True, Default = \"Importer un fichier\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Import a file\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Importar un archivo\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datei importieren\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Importa un file\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Importar um ficheiro\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kExternalFileUsed, Type = String, Dynamic = True, Default = \"Fichier externe utilis\xC3\xA9 (le texte saisi est ignor\xC3\xA9).", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"External file used (typed text is ignored)."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Se usa un archivo externo (se ignora el texto escrito)."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Externe Datei wird verwendet (eingegebener Text wird ignoriert)."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Viene usato un file esterno (il testo digitato \xC3\xA8 ignorato)."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"\xC3\x89 usado um ficheiro externo (o texto digitado \xC3\xA9 ignorado)."
	#tag EndConstant

	#tag Constant, Name = kChangeEllipsis, Type = String, Dynamic = True, Default = \"Changer\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Change\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Cambiar\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x84ndern\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Cambia\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Alterar\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kUseTheEditor, Type = String, Dynamic = True, Default = \"Utiliser l'\xC3\xA9diteur", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Use the editor"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Usar el editor"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Editor verwenden"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Usa l\xE2\x80\x99editor"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Usar o editor"
	#tag EndConstant

	#tag Constant, Name = kFileLabel, Type = String, Dynamic = True, Default = \"Fichier", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kBackgroundImage, Type = String, Dynamic = True, Default = \"Image de fond", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Background image"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Imagen de fondo"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Hintergrundbild"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Immagine di sfondo"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Imagem de fundo"
	#tag EndConstant

	#tag Constant, Name = kImagePng, Type = String, Dynamic = True, Default = \"Image (png)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Image (png)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Imagen (png)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bild (png)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Immagine (png)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Imagem (png)"
	#tag EndConstant

	#tag Constant, Name = kAtEndOfInstall, Type = String, Dynamic = True, Default = \"\xC3\x80 la fin de l'installation", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"At the end of installation"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Al final de la instalaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Am Ende der Installation"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Alla fine dell\xE2\x80\x99installazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"No fim da instala\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kFinalAction, Type = String, Dynamic = True, Default = \"Action finale", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Final action"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Acci\xC3\xB3n final"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Abschlussaktion"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Azione finale"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A\xC3\xA7\xC3\xA3o final"
	#tag EndConstant

	#tag Constant, Name = kConclusionNone, Type = String, Dynamic = True, Default = \"Aucune", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"None"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Ninguna"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Keine"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nessuna"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nenhuma"
	#tag EndConstant

	#tag Constant, Name = kConclusionLogout, Type = String, Dynamic = True, Default = \"Fermer la session", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Log out"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Cerrar sesi\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Abmelden"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Esci dalla sessione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Terminar sess\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kConclusionRestart, Type = String, Dynamic = True, Default = \"Red\xC3\xA9marrer", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Restart"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Reiniciar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Neustart"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Riavvia"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Reiniciar"
	#tag EndConstant

	#tag Constant, Name = kConclusionShutdown, Type = String, Dynamic = True, Default = \"\xC3\x89teindre", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Shut down"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Apagar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ausschalten"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Spegni"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Encerrar"
	#tag EndConstant

	#tag Constant, Name = kOnConclusionHelp, Type = String, Dynamic = True, Default = \"L'installateur exigera cette action \xC3\xA0 la fin (attribut onConclusion).", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"The installer will require this action at the end (onConclusion attribute)."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"El instalador exigir\xC3\xA1 esta acci\xC3\xB3n al final (atributo onConclusion)."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Der Installer verlangt diese Aktion am Ende (Attribut onConclusion)."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"L\xE2\x80\x99installer richieder\xC3\xA0 questa azione alla fine (attributo onConclusion)."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"O instalador exigir\xC3\xA1 esta a\xC3\xA7\xC3\xA3o no fim (atributo onConclusion)."
	#tag EndConstant

	#tag Constant, Name = kLaunchAnApp, Type = String, Dynamic = True, Default = \"Lancer une application", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Launch an application"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Abrir una aplicaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Programm starten"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Avvia un\xE2\x80\x99applicazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Abrir uma aplica\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kInstalledAppField, Type = String, Dynamic = True, Default = \"Application install\xC3\xA9e (.app)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Installed application (.app)"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Aplicaci\xC3\xB3n instalada (.app)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Installierte App (.app)"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Applicazione installata (.app)"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Aplica\xC3\xA7\xC3\xA3o instalada (.app)"
	#tag EndConstant

	#tag Constant, Name = kLaunchAppHelp, Type = String, Dynamic = True, Default = \"Chemin de l'app une fois install\xC3\xA9e (ex. /Applications/MonApp.app). Elle est lanc\xC3\xA9e dans la session de l'utilisateur\x2C \xC3\xA0 la fin de l'installation.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Path of the app once installed (e.g. /Applications/MyApp.app). It is launched in the user\xE2\x80\x99s session at the end of installation."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Ruta de la app una vez instalada (p. ej. /Applications/MiApp.app). Se abre en la sesi\xC3\xB3n del usuario al final de la instalaci\xC3\xB3n."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Pfad der App nach der Installation (z. B. /Applications/MeineApp.app). Sie wird am Ende der Installation in der Benutzersitzung gestartet."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Percorso dell\xE2\x80\x99app una volta installata (es. /Applications/MiaApp.app). Viene avviata nella sessione dell\xE2\x80\x99utente alla fine dell\xE2\x80\x99installazione."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Caminho da app depois de instalada (ex. /Applications/MinhaApp.app). \xC3\x89 aberta na sess\xC3\xA3o do utilizador no fim da instala\xC3\xA7\xC3\xA3o."
	#tag EndConstant

	#tag Constant, Name = kRestartCancelsLaunch, Type = String, Dynamic = True, Default = \"Un red\xC3\xA9marrage/arr\xC3\xAAt annulera l'ouverture de l'application.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"A restart/shutdown will cancel launching the app."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Un reinicio/apagado cancelar\xC3\xA1 la apertura de la app."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ein Neustart/Herunterfahren verhindert das Starten der App."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Un riavvio/spegnimento annuller\xC3\xA0 l\xE2\x80\x99avvio dell\xE2\x80\x99app."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Um rein\xC3\xADcio/encerramento cancelar\xC3\xA1 a abertura da app."
	#tag EndConstant

	#tag Constant, Name = kBuildingEllipsis, Type = String, Dynamic = True, Default = \"Construction en cours\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Building\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Compilando\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Wird erstellt\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Creazione in corso\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A compilar\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kBuildSucceeded, Type = String, Dynamic = True, Default = \"Construction r\xC3\xA9ussie", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Build succeeded"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Compilaci\xC3\xB3n correcta"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Erstellung erfolgreich"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Creazione riuscita"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Compila\xC3\xA7\xC3\xA3o bem-sucedida"
	#tag EndConstant

	#tag Constant, Name = kBuildFailed, Type = String, Dynamic = True, Default = \"\xC3\x89chec de la construction", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Build failed"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Error de compilaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Erstellung fehlgeschlagen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Creazione non riuscita"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Falha na compila\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kBuildLog, Type = String, Dynamic = True, Default = \"Journal de construction", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Build log"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Registro de compilaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Erstellungsprotokoll"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Log di creazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Registo de compila\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kCloseButton, Type = String, Dynamic = True, Default = \"Fermer", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Close"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Cerrar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Schlie\xC3\x9Fen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Chiudi"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Fechar"
	#tag EndConstant

	#tag Constant, Name = kPreparingEllipsis, Type = String, Dynamic = True, Default = \"Pr\xC3\xA9paration\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Preparing\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Preparando\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vorbereitung\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Preparazione\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A preparar\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kFinished, Type = String, Dynamic = True, Default = \"Termin\xC3\xA9", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Done"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Listo"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Fertig"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Fatto"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Conclu\xC3\xADdo"
	#tag EndConstant

	#tag Constant, Name = kFailed, Type = String, Dynamic = True, Default = \"\xC3\x89chec", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Failed"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Error"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Fehlgeschlagen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Non riuscito"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Falhou"
	#tag EndConstant

	#tag Constant, Name = kTemplates, Type = String, Dynamic = True, Default = \"Mod\xC3\xA8les", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Templates"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Plantillas"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vorlagen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Modelli"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Modelos"
	#tag EndConstant

	#tag Constant, Name = kNotarization, Type = String, Dynamic = True, Default = \"Notarisation", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarization"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Notarizaci\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Notarisierung"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Notarizzazione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Notariza\xC3\xA7\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kBuiltInTemplates, Type = String, Dynamic = True, Default = \"Mod\xC3\xA8les fournis", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Built-in templates"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Plantillas incluidas"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mitgelieferte Vorlagen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Modelli inclusi"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Modelos inclu\xC3\xADdos"
	#tag EndConstant

	#tag Constant, Name = kMyTemplates, Type = String, Dynamic = True, Default = \"Mes mod\xC3\xA8les", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"My templates"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Mis plantillas"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Meine Vorlagen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"I miei modelli"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Os meus modelos"
	#tag EndConstant

	#tag Constant, Name = kNoUserTemplate, Type = String, Dynamic = True, Default = \"Aucun mod\xC3\xA8le personnalis\xC3\xA9. Cr\xC3\xA9ez-en un depuis \xC2\xAB Fichier \xE2\x96\xB8 Enregistrer le projet comme mod\xC3\xA8le\xE2\x80\xA6 \xC2\xBB.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"No custom templates. Create one from \xE2\x80\x9CFile \xE2\x96\xB8 Save Project as Template\xE2\x80\xA6\xE2\x80\x9D."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"No hay plantillas personalizadas. Crea una desde \xC2\xABArchivo \xE2\x96\xB8 Guardar el proyecto como plantilla\xE2\x80\xA6\xC2\xBB."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Keine eigenen Vorlagen. Erstelle eine \xC3\xBCber \xE2\x80\x9EAblage \xE2\x96\xB8 Projekt als Vorlage sichern\xE2\x80\xA6\xE2\x80\x9C."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nessun modello personalizzato. Creane uno da \xC2\xABFile \xE2\x96\xB8 Salva il progetto come modello\xE2\x80\xA6\xC2\xBB."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Sem modelos personalizados. Cria um em \xC2\xABFicheiro \xE2\x96\xB8 Guardar projeto como modelo\xE2\x80\xA6\xC2\xBB."
	#tag EndConstant

	#tag Constant, Name = kDeleteThisTemplate, Type = String, Dynamic = True, Default = \"Supprimer ce mod\xC3\xA8le", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Delete this template"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Eliminar esta plantilla"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Diese Vorlage l\xC3\xB6schen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Elimina questo modello"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Eliminar este modelo"
	#tag EndConstant

	#tag Constant, Name = kImportProjectOrTemplate, Type = String, Dynamic = True, Default = \"Importer un projet ou un mod\xC3\xA8le\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Import a project or template\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Importar un proyecto o una plantilla\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Projekt oder Vorlage importieren\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Importa un progetto o un modello\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Importar um projeto ou modelo\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kTemplatesAppearIn, Type = String, Dynamic = True, Default = \"Les mod\xC3\xA8les apparaissent dans \xC2\xAB Fichier \xE2\x96\xB8 Nouveau \xC3\xA0 partir d'un mod\xC3\xA8le \xC2\xBB.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Templates appear in \xE2\x80\x9CFile \xE2\x96\xB8 New from Template\xE2\x80\x9D."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Las plantillas aparecen en \xC2\xABArchivo \xE2\x96\xB8 Nuevo a partir de una plantilla\xC2\xBB."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vorlagen erscheinen unter \xE2\x80\x9EAblage \xE2\x96\xB8 Neu aus Vorlage\xE2\x80\x9C."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"I modelli appaiono in \xC2\xABFile \xE2\x96\xB8 Nuovo da modello\xC2\xBB."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Os modelos aparecem em \xC2\xABFicheiro \xE2\x96\xB8 Novo a partir de modelo\xC2\xBB."
	#tag EndConstant

	#tag Constant, Name = kImportTemplate, Type = String, Dynamic = True, Default = \"Importer un mod\xC3\xA8le", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Import a template"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Importar una plantilla"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vorlage importieren"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Importa un modello"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Importar um modelo"
	#tag EndConstant

	#tag Constant, Name = kNewTemplate, Type = String, Dynamic = True, Default = \"Nouveau mod\xC3\xA8le", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"New template"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nueva plantilla"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Neue Vorlage"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nuovo modello"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Novo modelo"
	#tag EndConstant

	#tag Constant, Name = kTemplateName, Type = String, Dynamic = True, Default = \"Nom du mod\xC3\xA8le :", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Template name:"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre de la plantilla:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vorlagenname:"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nome del modello:"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nome do modelo:"
	#tag EndConstant

	#tag Constant, Name = kSaveAsTemplate, Type = String, Dynamic = True, Default = \"Enregistrer comme mod\xC3\xA8le", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Save as Template"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Guardar como plantilla"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Als Vorlage sichern"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Salva come modello"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Guardar como modelo"
	#tag EndConstant

	#tag Constant, Name = kNotaryCredentialsProfile, Type = String, Dynamic = True, Default = \"Profil d'identifiants notarytool", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"notarytool credentials profile"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Perfil de credenciales notarytool"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"notarytool-Anmeldeprofil"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Profilo credenziali notarytool"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Perfil de credenciais notarytool"
	#tag EndConstant

	#tag Constant, Name = kProfileName, Type = String, Dynamic = True, Default = \"Nom du profil", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Profile name"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre del perfil"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Profilname"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nome del profilo"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nome do perfil"
	#tag EndConstant

	#tag Constant, Name = kAppleID, Type = String, Dynamic = True, Default = \"Identifiant Apple", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Apple ID"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Apple ID"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Apple-ID"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Apple ID"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Apple ID"
	#tag EndConstant

	#tag Constant, Name = kTeamID, Type = String, Dynamic = True, Default = \"Team ID", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Team ID"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Team ID"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Team-ID"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Team ID"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Team ID"
	#tag EndConstant

	#tag Constant, Name = kAppSpecificPassword, Type = String, Dynamic = True, Default = \"Mot de passe sp\xC3\xA9cifique", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"App-specific password"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Contrase\xC3\xB1a espec\xC3\xADfica"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"App-spezifisches Passwort"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Password specifica"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Palavra-passe espec\xC3\xADfica"
	#tag EndConstant

	#tag Constant, Name = kPasswordNotStored, Type = String, Dynamic = True, Default = \"Il n'est **pas** enregistr\xC3\xA9 par XPackager : il ne sert qu'\xC3\xA0 cr\xC3\xA9er le profil dans le trousseau via notarytool.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"It is **not** stored by XPackager: it is only used to create the profile in the keychain via notarytool."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"XPackager **no** la guarda: solo se usa para crear el perfil en el llavero mediante notarytool."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Es wird von XPackager **nicht** gespeichert: es dient nur dazu\x2C das Profil per notarytool im Schl\xC3\xBCsselbund zu erstellen."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Non viene **memorizzata** da XPackager: serve solo a creare il profilo nel portachiavi tramite notarytool."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"**N\xC3\xA3o** \xC3\xA9 guardada pelo XPackager: serve apenas para criar o perfil no porta-chaves via notarytool."
	#tag EndConstant

	#tag Constant, Name = kGeneratePasswordLink, Type = String, Dynamic = True, Default = \"G\xC3\xA9n\xC3\xA9rer un mot de passe sp\xC3\xA9cifique\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Generate an app-specific password\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Generar una contrase\xC3\xB1a espec\xC3\xADfica\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"App-spezifisches Passwort erzeugen\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Genera una password specifica\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Gerar uma palavra-passe espec\xC3\xADfica\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kCreateOrUpdateProfile, Type = String, Dynamic = True, Default = \"Cr\xC3\xA9er / mettre \xC3\xA0 jour le profil", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Create / update the profile"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Crear / actualizar el perfil"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Profil erstellen/aktualisieren"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Crea / aggiorna il profilo"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Criar / atualizar o perfil"
	#tag EndConstant

	#tag Constant, Name = kVerifyButton, Type = String, Dynamic = True, Default = \"V\xC3\xA9rifier", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Verify"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Verificar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Pr\xC3\xBCfen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Verifica"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Verificar"
	#tag EndConstant

	#tag Constant, Name = kCreatingProfile, Type = String, Dynamic = True, Default = \"Cr\xC3\xA9ation du profil\xE2\x80\xA6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kVerifyingEllipsis, Type = String, Dynamic = True, Default = \"V\xC3\xA9rification\xE2\x80\xA6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kProfileNameUsedIn, Type = String, Dynamic = True, Default = \"Le nom du profil est celui \xC3\xA0 indiquer dans R\xC3\xA9glages \xE2\x96\xB8 Notarisation d'un projet.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"The profile name is the one to enter in a project\xE2\x80\x99s Settings \xE2\x96\xB8 Notarization."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"El nombre del perfil es el que se indica en Ajustes \xE2\x96\xB8 Notarizaci\xC3\xB3n de un proyecto."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Der Profilname ist derjenige\x2C der in den Projekt-Einstellungen \xE2\x96\xB8 Notarisierung anzugeben ist."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Il nome del profilo \xC3\xA8 quello da indicare in Impostazioni \xE2\x96\xB8 Notarizzazione di un progetto."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"O nome do perfil \xC3\xA9 o que se indica em Defini\xC3\xA7\xC3\xB5es \xE2\x96\xB8 Notariza\xC3\xA7\xC3\xA3o de um projeto."
	#tag EndConstant

	#tag Constant, Name = kTplEmpty, Type = String, Dynamic = True, Default = \"Paquet vide", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTplAppInApplications, Type = String, Dynamic = True, Default = \"Application dans /Applications", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTplTwoComponents, Type = String, Dynamic = True, Default = \"Distribution \xC3\xA0 2 composants", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTplCommandLine, Type = String, Dynamic = True, Default = \"Ligne de commande dans /usr/local/bin", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTplPlugin, Type = String, Dynamic = True, Default = \"Plug-in dans /Library", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTplLicensed, Type = String, Dynamic = True, Default = \"Paquet avec licence", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kAboutXPackager, Type = String, Dynamic = True, Default = \"\xC3\x80 propos de XPackager", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"About XPackager"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Acerca de XPackager"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x9Cber XPackager"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Informazioni su XPackager"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Acerca do XPackager"
	#tag EndConstant

	#tag Constant, Name = kAboutTagline, Type = String, Dynamic = True, Default = \"Cr\xC3\xA9ation de paquets d'installation macOS (.pkg).\nFront\xE2\x80\x91end natif pour pkgbuild / productbuild.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Create macOS installer packages (.pkg).\nNative front end for pkgbuild / productbuild."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Creaci\xC3\xB3n de paquetes de instalaci\xC3\xB3n de macOS (.pkg).\nInterfaz nativa para pkgbuild / productbuild."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Erstellung von macOS-Installationspaketen (.pkg).\nNatives Frontend f\xC3\xBCr pkgbuild / productbuild."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Creazione di pacchetti d\xE2\x80\x99installazione macOS (.pkg).\nInterfaccia nativa per pkgbuild / productbuild."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Cria\xC3\xA7\xC3\xA3o de pacotes de instala\xC3\xA7\xC3\xA3o macOS (.pkg).\nInterface nativa para pkgbuild / productbuild."
	#tag EndConstant

	#tag Constant, Name = kVersionPrefix, Type = String, Dynamic = True, Default = \"Version", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Version"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Versi\xC3\xB3n"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Version"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Versione"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Vers\xC3\xA3o"
	#tag EndConstant

	#tag Constant, Name = kNewProject, Type = String, Dynamic = True, Default = \"Nouveau projet", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"New Project"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nuevo proyecto"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Neues Projekt"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nuovo progetto"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Novo projeto"
	#tag EndConstant

	#tag Constant, Name = kNewFromTemplate, Type = String, Dynamic = True, Default = \"Nouveau \xC3\xA0 partir d'un mod\xC3\xA8le", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"New from Template"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nuevo a partir de una plantilla"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Neu aus Vorlage"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nuovo da modello"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Novo a partir de modelo"
	#tag EndConstant

	#tag Constant, Name = kSaveProjectAsTemplate, Type = String, Dynamic = True, Default = \"Enregistrer le projet comme mod\xC3\xA8le\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Save Project as Template\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Guardar el proyecto como plantilla\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Projekt als Vorlage sichern\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Salva il progetto come modello\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Guardar projeto como modelo\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kUntitledProject, Type = String, Dynamic = True, Default = \"Sans titre", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSaveChangesQuestion, Type = String, Dynamic = True, Default = \"Enregistrer les modifications de ce projet avant de fermer ?", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDontSave, Type = String, Dynamic = True, Default = \"Ne pas enregistrer", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kFileMenu, Type = String, Dynamic = True, Default = \"Fichier", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOpenEllipsis, Type = String, Dynamic = True, Default = \"Ouvrir\xE2\x80\xA6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSaveAsEllipsis, Type = String, Dynamic = True, Default = \"Enregistrer sous\xE2\x80\xA6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNewFromTemplateEllipsis, Type = String, Dynamic = True, Default = \"Nouveau \xC3\xA0 partir d'un mod\xC3\xA8le\xE2\x80\xA6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kChooseTemplate, Type = String, Dynamic = True, Default = \"Choisir un mod\xC3\xA8le", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCreateButton, Type = String, Dynamic = True, Default = \"Cr\xC3\xA9er", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOpenProject, Type = String, Dynamic = True, Default = \"Ouvrir un projet XPackager", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kProductNamePlaceholder, Type = String, Dynamic = True, Default = \"Nom du produit", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Product name"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Nombre del producto"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Produktname"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Nome del prodotto"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Nome do produto"
	#tag EndConstant

	#tag Constant, Name = kGoUnit, Type = String, Dynamic = True, Default = \"Go", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kHostArchFormat, Type = String, Dynamic = True, Default = \"hostArchitectures \x3D \xC2\xAB %@ \xC2\xBB", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCopyright, Type = String, Dynamic = True, Default = \"\xC2\xA9 2026 VDSC", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kAppleIDPlaceholder, Type = String, Dynamic = True, Default = \"vous@exemple.com", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTeamIDPlaceholder, Type = String, Dynamic = True, Default = \"NHZMQ2KB94", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPermsPlaceholder, Type = String, Dynamic = True, Default = \"0755", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRamPlaceholder, Type = String, Dynamic = True, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOpenAppleAccountHelp, Type = String, Dynamic = True, Default = \"Ouvre account.apple.com \xE2\x96\xB8 Connexion et s\xC3\xA9curit\xC3\xA9 \xE2\x96\xB8 Mots de passe sp\xC3\xA9cifiques", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Opens account.apple.com \xE2\x96\xB8 Sign-In and Security \xE2\x96\xB8 App-Specific Passwords"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Abre account.apple.com \xE2\x96\xB8 Inicio de sesi\xC3\xB3n y seguridad \xE2\x96\xB8 Contrase\xC3\xB1as espec\xC3\xADficas"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x96ffnet account.apple.com \xE2\x96\xB8 Anmelden und Sicherheit \xE2\x96\xB8 App-spezifische Passw\xC3\xB6rter"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Apre account.apple.com \xE2\x96\xB8 Accesso e sicurezza \xE2\x96\xB8 Password specifiche"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Abre account.apple.com \xE2\x96\xB8 In\xC3\xADcio de sess\xC3\xA3o e seguran\xC3\xA7a \xE2\x96\xB8 Palavras-passe espec\xC3\xADficas"
	#tag EndConstant

	#tag Constant, Name = kPhaseAssembling, Type = String, Dynamic = True, Default = \"Assemblage et signature du paquet\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Assembling and signing the package\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Ensamblando y firmando el paquete\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Paket zusammenstellen und signieren\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Assemblaggio e firma del pacchetto\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A montar e assinar o pacote\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kPhaseNotarizeSubmit, Type = String, Dynamic = True, Default = \"Notarisation : envoi \xC3\xA0 Apple\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarization: uploading to Apple\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Notarizaci\xC3\xB3n: enviando a Apple\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Notarisierung: Upload an Apple\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Notarizzazione: invio ad Apple\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Notariza\xC3\xA7\xC3\xA3o: a enviar para a Apple\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kPhaseNotarizeWaiting, Type = String, Dynamic = True, Default = \"Notarisation : attente du verdict Apple\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarization: waiting for Apple\xE2\x80\x99s verdict\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Notarizaci\xC3\xB3n: esperando el veredicto de Apple\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Notarisierung: warte auf Apples Entscheidung\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Notarizzazione: in attesa del verdetto di Apple\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Notariza\xC3\xA7\xC3\xA3o: a aguardar o veredicto da Apple\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kPhaseStapling, Type = String, Dynamic = True, Default = \"Agrafage du ticket\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Stapling the ticket\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Adjuntando el t\xC3\xADquet\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ticket wird angeheftet\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Applicazione del ticket\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A anexar o ticket\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kPhaseRejectionLog, Type = String, Dynamic = True, Default = \"R\xC3\xA9cup\xC3\xA9ration du journal de rejet\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Fetching the rejection log\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Obteniendo el registro de rechazo\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ablehnungsprotokoll wird abgerufen\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Recupero del log di rifiuto\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A obter o registo de rejei\xC3\xA7\xC3\xA3o\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kSubmitToApple, Type = String, Dynamic = True, Default = \"Soumission \xC3\xA0 Apple (cela peut prendre quelques minutes)\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Submitting to Apple (this may take a few minutes)\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Enviando a Apple (puede tardar unos minutos)\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x9Cbermittlung an Apple (kann einige Minuten dauern)\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Invio ad Apple (pu\xC3\xB2 richiedere alcuni minuti)\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A submeter \xC3\xA0 Apple (pode demorar alguns minutos)\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kPackageCreated, Type = String, Dynamic = True, Default = \"Paquet cr\xC3\xA9\xC3\xA9 :", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Package created:"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Paquete creado:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Paket erstellt:"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Pacchetto creato:"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Pacote criado:"
	#tag EndConstant

	#tag Constant, Name = kHardenLabel, Type = String, Dynamic = True, Default = \"Renforcement (Hardened Runtime) :", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Hardening (Hardened Runtime):"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Refuerzo (Hardened Runtime):"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"H\xC3\xA4rtung (Hardened Runtime):"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Rafforzamento (Hardened Runtime):"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Refor\xC3\xA7o (Hardened Runtime):"
	#tag EndConstant

	#tag Constant, Name = kErrNoComponents, Type = String, Dynamic = True, Default = \"Le projet ne contient aucun composant.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"The project contains no components."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"El proyecto no contiene componentes."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Das Projekt enth\xC3\xA4lt keine Komponenten."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Il progetto non contiene componenti."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"O projeto n\xC3\xA3o cont\xC3\xA9m componentes."
	#tag EndConstant

	#tag Constant, Name = kErrNoPayload, Type = String, Dynamic = True, Default = \"Payload non d\xC3\xA9fini pour ce composant : ajoutez des \xC3\xA9l\xC3\xA9ments \xC3\xA0 la hi\xC3\xA9rarchie ou choisissez un dossier racine.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Payload not defined for this component: add items to the hierarchy or choose a root folder."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Payload no definido para este componente: a\xC3\xB1ade elementos a la jerarqu\xC3\xADa o elige una carpeta ra\xC3\xADz."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"F\xC3\xBCr diese Komponente ist kein Payload definiert: Objekte zur Hierarchie hinzuf\xC3\xBCgen oder einen Stammordner w\xC3\xA4hlen."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Payload non definito per questo componente: aggiungi elementi alla gerarchia o scegli una cartella radice."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Payload n\xC3\xA3o definido para este componente: adiciona itens \xC3\xA0 hierarquia ou escolhe uma pasta raiz."
	#tag EndConstant

	#tag Constant, Name = kErrPkgbuild, Type = String, Dynamic = True, Default = \"pkgbuild a \xC3\xA9chou\xC3\xA9 pour ce composant.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"pkgbuild failed for this component."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"pkgbuild fall\xC3\xB3 para este componente."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"pkgbuild ist f\xC3\xBCr diese Komponente fehlgeschlagen."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"pkgbuild non riuscito per questo componente."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"pkgbuild falhou para este componente."
	#tag EndConstant
	#tag Constant, Name = kErrLocalizedMix, Type = String, Dynamic = True, Default = \"Formats de fichier incompatibles entre les langues pour l'\xC3\xA9cran", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Incompatible file formats across languages for screen"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Formatos de archivo incompatibles entre idiomas para la pantalla"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nicht kompatible Dateiformate zwischen den Sprachen f\xC3\xBCr die Seite"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Formati di file incompatibili tra le lingue per la schermata"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Formatos de ficheiro incompat\xC3\xADveis entre idiomas para o ecr\xC3\xA3"
	#tag EndConstant
	#tag Constant, Name = kReferenceLanguage, Type = String, Dynamic = True, Default = \"r\xC3\xA9f\xC3\xA9rence", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"reference"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"referencia"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Referenz"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"riferimento"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"refer\xC3\xAAncia"
	#tag EndConstant

	#tag Constant, Name = kErrProductbuild, Type = String, Dynamic = True, Default = \"productbuild a \xC3\xA9chou\xC3\xA9.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"productbuild failed."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"productbuild fall\xC3\xB3."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"productbuild ist fehlgeschlagen."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"productbuild non riuscito."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"productbuild falhou."
	#tag EndConstant

	#tag Constant, Name = kErrFileNotFound, Type = String, Dynamic = True, Default = \"Fichier introuvable dans le payload :", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"File not found in the payload:"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Archivo no encontrado en el payload:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datei im Payload nicht gefunden:"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"File non trovato nel payload:"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Ficheiro n\xC3\xA3o encontrado no payload:"
	#tag EndConstant

	#tag Constant, Name = kErrNotarizeNeedsSigned, Type = String, Dynamic = True, Default = \"La notarisation exige un paquet sign\xC3\xA9 : choisissez une identit\xC3\xA9 \xC2\xAB Developer ID Installer \xC2\xBB dans R\xC3\xA9glages.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarization requires a signed package: choose a \xE2\x80\x9CDeveloper ID Installer\xE2\x80\x9D identity in Settings."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"La notarizaci\xC3\xB3n requiere un paquete firmado: elige una identidad \xC2\xABDeveloper ID Installer\xC2\xBB en Ajustes."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Die Notarisierung erfordert ein signiertes Paket: W\xC3\xA4hle in den Einstellungen eine \xE2\x80\x9EDeveloper ID Installer\xE2\x80\x9C-Identit\xC3\xA4t."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"La notarizzazione richiede un pacchetto firmato: scegli un\xE2\x80\x99identit\xC3\xA0 \xC2\xABDeveloper ID Installer\xC2\xBB in Impostazioni."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A notariza\xC3\xA7\xC3\xA3o exige um pacote assinado: escolhe uma identidade \xC2\xABDeveloper ID Installer\xC2\xBB em Defini\xC3\xA7\xC3\xB5es."
	#tag EndConstant

	#tag Constant, Name = kErrNotaryProfileMissing, Type = String, Dynamic = True, Default = \"Profil de notarisation manquant. Cr\xC3\xA9ez-en un depuis R\xC3\xA9glages (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarisation.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarization profile missing. Create one from Settings (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarization."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Falta el perfil de notarizaci\xC3\xB3n. Cr\xC3\xA9alo desde Ajustes (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarizaci\xC3\xB3n."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Notarisierungsprofil fehlt. Erstelle eines unter Einstellungen (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarisierung."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Profilo di notarizzazione mancante. Creane uno da Impostazioni (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notarizzazione."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Perfil de notariza\xC3\xA7\xC3\xA3o em falta. Cria um em Defini\xC3\xA7\xC3\xB5es (\xE2\x8C\x98\x2C) \xE2\x96\xB8 Notariza\xC3\xA7\xC3\xA3o."
	#tag EndConstant

	#tag Constant, Name = kErrNotarizeInvalid, Type = String, Dynamic = True, Default = \"Notarisation refus\xC3\xA9e par Apple (statut \xC2\xAB Invalid \xC2\xBB). Voir le journal ci-dessus. Cause fr\xC3\xA9quente : un ex\xC3\xA9cutable du paquet n'est pas sign\xC3\xA9 en Developer ID avec Hardened Runtime et horodatage s\xC3\xA9curis\xC3\xA9.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarization rejected by Apple (status \xE2\x80\x9CInvalid\xE2\x80\x9D). See the log above. Common cause: an executable in the package is not signed with Developer ID\x2C Hardened Runtime and a secure timestamp."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Notarizaci\xC3\xB3n rechazada por Apple (estado \xC2\xABInvalid\xC2\xBB). Consulta el registro anterior. Causa habitual: un ejecutable del paquete no est\xC3\xA1 firmado con Developer ID\x2C Hardened Runtime y marca de tiempo segura."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Notarisierung von Apple abgelehnt (Status \xE2\x80\x9EInvalid\xE2\x80\x9C). Siehe Protokoll oben. H\xC3\xA4ufige Ursache: Eine ausf\xC3\xBChrbare Datei im Paket ist nicht mit Developer ID\x2C Hardened Runtime und sicherem Zeitstempel signiert."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Notarizzazione rifiutata da Apple (stato \xC2\xABInvalid\xC2\xBB). Vedi il log sopra. Causa comune: un eseguibile del pacchetto non \xC3\xA8 firmato con Developer ID\x2C Hardened Runtime e marca temporale sicura."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Notariza\xC3\xA7\xC3\xA3o recusada pela Apple (estado \xC2\xABInvalid\xC2\xBB). Consulta o registo acima. Causa frequente: um execut\xC3\xA1vel do pacote n\xC3\xA3o est\xC3\xA1 assinado com Developer ID\x2C Hardened Runtime e marca temporal segura."
	#tag EndConstant

	#tag Constant, Name = kErrNotarizeNotAccepted, Type = String, Dynamic = True, Default = \"La notarisation n'a pas abouti (statut \xC2\xAB Accepted \xC2\xBB non obtenu). Voir le journal ci-dessus.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Notarization did not succeed (\xE2\x80\x9CAccepted\xE2\x80\x9D status not reached). See the log above."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"La notarizaci\xC3\xB3n no se complet\xC3\xB3 (no se alcanz\xC3\xB3 el estado \xC2\xABAccepted\xC2\xBB). Consulta el registro anterior."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Die Notarisierung war nicht erfolgreich (Status \xE2\x80\x9EAccepted\xE2\x80\x9C nicht erreicht). Siehe Protokoll oben."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"La notarizzazione non \xC3\xA8 andata a buon fine (stato \xC2\xABAccepted\xC2\xBB non raggiunto). Vedi il log sopra."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"A notariza\xC3\xA7\xC3\xA3o n\xC3\xA3o foi conclu\xC3\xADda (estado \xC2\xABAccepted\xC2\xBB n\xC3\xA3o alcan\xC3\xA7ado). Consulta o registo acima."
	#tag EndConstant

	#tag Constant, Name = kErrStapler, Type = String, Dynamic = True, Default = \"L'agrafage a \xC3\xA9chou\xC3\xA9. Le paquet est notaris\xC3\xA9 mais sans ticket agraf\xC3\xA9.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Stapling failed. The package is notarized but without a stapled ticket."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Fall\xC3\xB3 el adjuntado. El paquete est\xC3\xA1 notarizado pero sin t\xC3\xADquet adjunto."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Das Anheften ist fehlgeschlagen. Das Paket ist notarisiert\x2C aber ohne angeheftetes Ticket."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Applicazione del ticket non riuscita. Il pacchetto \xC3\xA8 notarizzato ma senza ticket applicato."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Falha ao anexar. O pacote est\xC3\xA1 notarizado mas sem ticket anexado."
	#tag EndConstant

	#tag Constant, Name = kErrCodesignItem, Type = String, Dynamic = True, Default = \"Signature d'un \xC3\xA9l\xC3\xA9ment \xC3\xA9chou\xC3\xA9e. V\xC3\xA9rifiez l'identit\xC3\xA9 \xC2\xAB Developer ID Application \xC2\xBB.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Failed to sign an item. Check the \xE2\x80\x9CDeveloper ID Application\xE2\x80\x9D identity."
		#Tag Instance, Platform = Any, Language = es, Definition  = \"No se pudo firmar un elemento. Comprueba la identidad \xC2\xABDeveloper ID Application\xC2\xBB."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ein Objekt konnte nicht signiert werden. Pr\xC3\xBCfe die \xE2\x80\x9EDeveloper ID Application\xE2\x80\x9C-Identit\xC3\xA4t."
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Firma di un elemento non riuscita. Verifica l\xE2\x80\x99identit\xC3\xA0 \xC2\xABDeveloper ID Application\xC2\xBB."
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Falha ao assinar um item. Verifica a identidade \xC2\xABDeveloper ID Application\xC2\xBB."
	#tag EndConstant

	#tag Constant, Name = kCancelButton, Type = String, Dynamic = True, Default = \"Annuler", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Cancel"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Cancelar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Abbrechen"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Annulla"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Cancelar"
	#tag EndConstant

	#tag Constant, Name = kSaveButton, Type = String, Dynamic = True, Default = \"Enregistrer", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Save"
		#Tag Instance, Platform = Any, Language = es, Definition  = \"Guardar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Sichern"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Salva"
		#Tag Instance, Platform = Any, Language = pt, Definition  = \"Guardar"
	#tag EndConstant


End Module
#tag EndModule
