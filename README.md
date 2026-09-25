# XPackager (Xojo)

Portage Xojo — à l'identique — de l'application macOS **XPackager** écrite en SwiftUI,
au-dessus de la librairie **VDSTools** (contrôles AppKit natifs par Declares).

Deux projets partagent le même moteur (les mêmes fichiers sur le disque) :

| Projet | Type | Rôle |
|---|---|---|
| `XPackager.xojo_project` | Desktop | L'application (fenêtres multi-documents) |
| `XPackagerBuild.xojo_project` | Console | L'outil `xpackagerbuild` (équivalent de `packagesbuild`) |

## Avant d'ouvrir le projet

**VDSTools n'est pas versionné ici** : le `.xojo_library` est volontairement exclu
(`*.xojo_library`) et doit être déposé localement à la racine du projet, où l'IDE le
charge automatiquement. Sans lui, le projet s'ouvre mais ne compile pas : toute
l'interface repose sur des classes `Native…`.

La version 1.1.1 est requise. La 1.1 apporte `NativeIconButtonControl`, sur lequel
reposent les boutons à symbole SF ; la 1.1.1 corrige l'ordre des événements à l'export,
sans quoi `Opening` et `Paint` sont intervertis sur onze contrôles (voir les pièges).

## Arborescence

| Dossier | Contenu |
|---|---|
| `Engine/` | Moteur : modèle `.xpackager`, staging, `pkgbuild` → `productbuild` → `notarytool` → `stapler` |
| `UI/` | Fenêtres et conteneurs (barre latérale + barre d'outils natives VDSTools) |
| `Support/` | Modèles de projet, préférences, aides d'interface |
| `Localization/` | `Loc` : constantes dynamiques (fr source + en, es, de, it, pt) |
| `CLI/` | `CLIApp` : l'outil en ligne de commande |

## L'outil en ligne de commande

Xojo ne produit pas un binaire mais un dossier de six fichiers — 22 Mo, dont 10 pour
`rbframework.dylib` — et **aucune bibliothèque n'est superflue** : retirer n'importe laquelle
fait tomber l'outil au démarrage. Seul `Resources/*.lproj` est facultatif ; sans lui l'outil
tourne et perd ses messages traduits.

`./make-cli-pkg.sh` fabrique donc le paquet qui range tout ça hors du chemin :

```
/usr/local/libexec/xpackager/   le binaire et ses bibliothèques
/usr/local/bin/xpackagerbuild   un lanceur de deux lignes qui l'appelle
```

L'utilisateur tape `xpackagerbuild` et ne voit jamais les dylibs. Le script prend
`--sign « Developer ID Installer: … »` et `--out chemin.pkg`, lit la version dans l'outil
lui-même et enchaîne `pkgbuild` puis `productbuild` — la même paire que XPackager.

Deux choses à savoir en le vérifiant :

- `pkgutil --payload-files` affiche des entrées `._…` : c'est ainsi que les attributs
  étendus voyagent dans une charge utile. `pkgutil --expand-full` montre ce qui atterrit
  vraiment sur le disque — l'arborescence y est nette.
- La CLI Swift d'origine produit, elle, un binaire unique de 1,1 Mo sans dépendance. Elle n'a
  pas été gardée parce qu'elle suppose **un second moteur** : celui de Swift est resté à
  l'état d'avant le multilingue, et deux implémentations du même format de fichier divergent
  en silence. Un seul moteur, un problème d'installation en échange.

## Correspondance avec la version Swift

| Swift | Xojo |
|---|---|
| `Engine/PackageProject.swift` | `PackageProject` + `PkgSettings`, `PkgPresentation` (+ `PkgPresentationTexts`), `PkgRequirements`, `PkgNotarization`, `PkgPostInstall`, `PkgComponent`, `PkgPayload`, `PkgScripts`, `PkgInstallCheck` |
| `Engine/PayloadNode.swift` | `PayloadNode` + module `PayloadTree` (méthodes d'extension de tableau) |
| `Engine/PackageBuilder.swift` | `PackageBuilder.PrepareSteps` (staging + scripts, synchrone) puis `BuildRunner` (asynchrone) ou `BuildSequence` (CLI) |
| `Engine/DistributionXML.swift` | `DistributionXML` |
| `Engine/PackageNaming.swift` | `PackageNaming` |
| `Engine/ProcessRunner.swift` | `ToolRunner` (+ `ShellQuote`) et `BuildRunner` pour le streaming |
| `Engine/SigningIdentity.swift` | `SigningIdentity` |
| `Sources/Views/ContentView.swift` | `UI/ProjectWindow` (NativeSidebar + NativeWindowChrome + NativeToolbar) |
| `Sources/Views/Editors.swift` | `UI/SettingsPanel`, `UI/RequirementsPanel`, `UI/PresentationPanel` |
| `Sources/Views/ComponentsEditor.swift` | `UI/ComponentsPanel` |
| `Sources/Views/PayloadEditor.swift` | `UI/PayloadPanel` (NativeOutlineView) |
| `Sources/Views/RichTextEditor.swift` | `NativeRichTextEditor` / `NativeTextView` de VDSTools |
| `Sources/Views/BuildLogView.swift` | `UI/BuildLogWindow` |
| `Sources/Views/PreferencesView.swift` | `UI/PrefsWindow` |
| `Sources/Views/AboutView.swift` | `UI/AboutWindow` |
| `Sources/Build/TemplateManager.swift` | `Support/TemplateManager` + `Support/ProjectTemplate` |
| `Sources/Localizable.xcstrings` | `Localization/Loc` (traductions reprises telles quelles) |
| `CLI/main.swift` | `CLI/CLIApp` |

## Les trois vraies différences avec Swift

1. **`Shell` prend une commande-chaîne, pas un `argv`.** `ToolRunner.ShellQuote` cite donc
   chaque argument, sinon les chemins contenant des espaces cassent.
2. **Pas d'`await`.** Le streaming du journal passe par un `Shell` asynchrone
   (`DataAvailable` / `Completed`) piloté par une machine à états (`BuildRunner`) ;
   la CLI, elle, enchaîne les mêmes étapes en synchrone (`BuildSequence`).
3. **Pas de `Codable`.** Le décodage tolérant se fait par de simples `HasKey` sur un
   `JSONItem` — plus court qu'en Swift, et même format de fichier `.xpackager`.

## Présentation multilingue

Ajout par rapport à la version Swift, qui n'a pas de notion de langue.

- **Modèle** : `PkgPresentation` porte les textes de **référence** (un
  `PkgPresentationTexts` : quatre écrans × chemin externe / RTF / texte simple) plus un jeu
  par langue déclarée. Les douze propriétés historiques (`WelcomeRTF`, `LicensePath`…)
  adressent toujours la référence, donc le panneau et les modèles de projet n'ont pas bougé.
  Langues : `AddLanguage`, `RemoveLanguage`, `Languages`, `Texts(code)`, `EnsureTexts(code)`,
  `SeedFromBase(code)` ; les codes sont normalisés en nom de dossier `.lproj` (`fr`, `pt-BR`,
  `zh-Hans`) et un code contenant autre chose que des lettres des chiffres ou des tirets est
  refusé — il finit en dossier sur le disque.
- **Format `.xpackager`** : les clés à plat restent la référence, donc un XPackager plus
  ancien relit le fichier et y retrouve sa présentation. S'ajoutent `baseLanguage` (simple
  étiquette) et `localized`, un **tableau** d'objets `{ "code": "en", … }` — un tableau pour
  que l'ordre d'affichage des langues soit stable.
- **Construction** : sans langue déclarée, rien ne change — un fichier à plat par écran. Dès
  qu'une langue est déclarée, **plus rien n'est écrit à la racine** : chaque langue reçoit
  `<code>.lproj/<même nom de fichier>`, la référence comprise. C'est l'inverse de ce qu'on
  croit : un fichier posé à la racine des ressources **masque tous les `.lproj`** — Installer
  le trouve d'abord — et la traduction ne s'affiche jamais. Vérifié en ouvrant les paquets
  dans Installer. La langue de référence devient donc obligatoire (sinon son `.lproj` n'a pas
  de nom) et la construction s'arrête avec un message clair si elle manque. Une langue sans
  texte pour un écran reçoit une copie de la référence : son écran n'est jamais vide.
- **Un seul nom de fichier : donc une seule extension.** Le texte simple d'une langue est
  promu en RTF (`TextToRTF`, échappement `\uN?`) dès qu'une autre langue est riche, et un
  fichier externe est recopié sous le nom de la référence. Un mélange irrécupérable (`.html`
  d'un côté, RTF de l'autre) lève une `BuildError` qui nomme l'écran, la langue et les deux
  extensions.
- **Interface** : à droite du sélecteur d'écran, un popup choisit la langue éditée
  (« Référence », puis « anglais — en »…) et un menu `globe` à côté ajoute une langue
  (liste courante ou code libre), retire la langue courante ou y recopie le texte de la
  référence. Le titre du groupe rappelle ce qu'on édite (« Licence — anglais — en ») et le
  rappel sous l'éditeur annonce le repli quand l'écran est vide dans cette langue. Trois
  pièges tenus par le code : `Flush` avant tout changement de langue **et** avant de retirer
  une langue — sans quoi le texte encore dans la vue ne compte pas et la langue part sans
  confirmation ; le menu hébergé n'est construit qu'à l'ouverture du panneau ; et le nom de
  langue vient de `localizedStringForLocaleIdentifier:` — le sélecteur
  `localizedStringForLanguageIdentifier:` n'existe pas et faisait tomber l'application.
- **Langue de la référence** : le même menu la règle (« Langue de la référence… »). Elle ne
  sert qu'à étiqueter la référence dans le popup — la construction, elle, garde le fichier à
  plat comme repli. Effacer l'étiquette et renoncer donnent la même chaîne vide, d'où
  `XPUI.PromptForText` et son drapeau `accepted` : Annuler ne touche à rien.
- **Titre et choix** : ils ne sont pas des fichiers mais des chaînes du `distribution.xml`.
  Installer les traduit par une table `Localizable.strings` dans chaque `.lproj`, **en prenant
  le texte lui-même comme clé** — `"Installateur de Démo" = "Demo Installer";`. Le
  `distribution.xml` garde donc le texte de référence et aucune clé brute ne peut fuiter. Une
  table posée à la racine des ressources est écartée par `productbuild` : inutile d'en écrire
  une. **Chaque langue déclarée porte sa propre table, avec toutes les clés** — sa traduction
  ou le texte de référence à défaut : une langue dont le `.lproj` n'a pas de table ne retombe
  pas sur la référence, la recherche part chercher la table d'une autre langue. Un paquet
  français + anglais affichait ainsi un titre anglais à un Français dont les écrans restaient
  en français. Pour vérifier langue par langue sans changer les réglages du Mac :
  `installer -showChoicesXML -pkg x.pkg -target / -AppleLanguages '(de)'`. Quand la description de référence est
  vide alors qu'une langue en a une, c'est cette traduction — celle de la langue de référence
  sinon la première déclarée — qui devient le texte du `distribution.xml` et donc la clé :
  sans ça la traduction n'avait rien à quoi s'accrocher et disparaissait du paquet.
  Vérification sans clic : `installer -showChoicesXML -pkg x.pkg -target /` affiche les
  intitulés de choix déjà traduits.
- **Image de fond** : traduisible comme le reste. Sans langue déclarée elle reste à plat ;
  sinon chaque `.lproj` reçoit la sienne — celle de la référence pour les langues qui n'en
  fixent pas — sous un nom de fichier commun, puisque le `distribution.xml` n'en référence
  qu'un. Elle n'entre pas dans le décompte d'avancement : une image se traduit rarement et la
  compter aurait poussé à la dupliquer pour rien.
- **Avancement** : chaque ligne des deux popups de langue porte ce qu'il reste à traduire —
  « anglais — en · 2/8 » — et rien du tout quand la langue est complète, pour que seules les
  langues incomplètes attirent l'œil. Le décompte (`PackageProject.TranslatedCount`) ne
  retient que ce que la référence porte vraiment : son titre, les écrans qu'elle remplit,
  puis le nom et la description de chaque choix. Il se recalcule au changement d'écran, de
  langue ou de composant — **jamais depuis `ShowScreen`** : reposer les lignes d'un popup
  depuis le chemin d'affichage relançait l'affichage et l'application n'ouvrait plus.
- **Où les saisir** : le titre suit le popup de langue de la page Présentation ; le nom et la
  description du choix suivent un popup de langue ajouté à la page Composants, qui n'apparaît
  que si le projet déclare des langues. Sur une langue, les champs qui ne se traduisent pas —
  identifiant, version, emplacement, interrupteurs, scripts — sont grisés, et le filigrane des
  deux champs traduisibles rappelle le texte de référence qui servira si on les laisse vides.

## Contrôles d'interface

L'intégralité de la mise en page utilise les contrôles **VDSTools** ; les contrôles Xojo
ne subsistent que là où VDSTools n'offre pas d'équivalent.

| Rôle | Contrôle |
|---|---|
| Libellés, champs, boutons, menus locaux | `NativeLabelControl`, `NativeTextFieldControl`, `NativeButtonControl`, `NativePopupMenuControl` |
| Boutons à symbole SF | `NativeIconButtonControl` |
| Interrupteurs (les `Toggle` d'un `Form` groupé) | `NativeSwitchControl` |
| Menus sans bordure : « Modèle », « Insérer une variable », identités de signature | `NativePopupButton` hébergé dans un canevas |
| Filets d'un formulaire groupé | `NativeBox.Separator` |
| Zone de journal | `NativeTextAreaControl` |
| Barre de progression | `NativeProgressBarControl` |
| Onglets internes (Composants, Présentation, Réglages) | `NativeSegmentedButtonControl` |
| Listes (conditions, modèles) | `NativeTableViewControl` (`NSTableView`) |
| Arbre du payload | `NativeOutlineViewControl` (`NSOutlineView`) |
| Barre latérale, barre d'outils, chrome de fenêtre | `NativeSidebar`, `NativeToolbar`, `NativeWindowChrome` |
| Éditeur riche, panneaux de fichiers, alertes, popover, icône | `NativeRichTextEditor`, `NativeFilePanel`, `NativeAlert`, `NativePopover`, `NativeImageView` |

Restent en Xojo natif, faute d'équivalent : `DesktopSeparator` (filets fixes), `DesktopPagePanel`
(pages sans onglets visibles) et deux `DesktopCanvas` servant d'hôtes à l'éditeur RTF et à
l'icône de la fenêtre « À propos ».

## Un piège : où Xojo croit que commence le volet de détail

`NativeWindowChrome.Install` confie le `contentViewController` de la fenêtre à un
`NSSplitViewController`, et `ChromeDetailResized` donne la taille du volet de détail. La
règle y est : la **taille** par l'API Xojo — seul geste qui remet les enfants d'un
conteneur en page — et la **position** par AppKit.

Les quatre conteneurs sont enfants de `DetailPanel`, dont AppKit a déjà placé la vue sous
la barre d'outils. Ils devraient donc se coller à son origine. Sauf que Xojo déduit
l'ordonnée d'un conteneur embarqué de la hauteur de son parent — une hauteur qu'il ne
remet à jour qu'à la passe de mise en page suivante. Pendant `Opening`, il compte encore
les 790 du markup au lieu des 725 du volet :

```
y = 790 - (Top + 725)   →  Top = 0  donne y = 66   (panneau 66 points trop haut)
y = 725 - (Top + 725)   →  Top = 66 donne y = -66  (panneau 66 points trop bas)
```

D'où un symptôme qui se retourne selon le moment : longtemps posés à
`Top = SafeAreaTop`, les panneaux étaient justes à l'ouverture et descendaient d'une
hauteur de barre d'outils au premier redimensionnement. À `Top = 0`, l'inverse.

Le correctif ne choisit pas entre les deux : `PlacePanel` donne la taille par Xojo, puis
**écrit le cadre** par `Cocoa.SetViewFrame`, ce qui rend la pose indépendante de la
hauteur que Xojo croit. Et comme `Relayout` ne rejoue pas l'événement quand la géométrie
n'a pas bougé, `Opening` se termine par un `Timer.CallLater(0, …)` qui rappelle
`ApplyDetailLayout` une fois la main rendue.

Mesure à l'appui, cadres relevés par `Cocoa.ViewFrame` juste après la pose :

```
avant :  ouverture  dp=0,0 1000x725   sp=0,66 1000x725
         après redim.                 sp=0,-66
après :  ouverture  dp=0,0 1000x725   sp=0,0  1000x725
         après redim.                 sp=0,0
```

Deux détails qui font perdre du temps : `SafeAreaTop` vaut 32 tant que la barre d'outils
n'est pas construite, puis 66 — toute valeur lue avant `BuildNativeToolbar` est trompeuse ;
et seule la **hauteur** retranche la zone sûre (`usable = h - SafeAreaTop`), jamais la
position des conteneurs.

## Autres pièges rencontrés

Tous ont été constatés à l'exécution, sur des mesures, et non déduits de la
documentation.

### Mise en page

- **`Left` et `Top` sont faux dans un conteneur déplacé par AppKit.** Xojo les convertit
  via la position qu'il *croit* être celle du conteneur (x = 0), alors que la vue est à
  x = 230, derrière la barre latérale : tout contrôle déplacé atterrissait à x = −230.
  D'où `XPUI.Place` : la **taille** par Xojo, qui relaie ses événements de
  redimensionnement, puis le **cadre** par AppKit, qui a le dernier mot.
- **Xojo rattache au canevas tout contrôle posé dans son rectangle**, quel que soit
  `InitialParent`. L'invite du payload était enfant de l'arbre : masquer l'arbre la
  masquait avec lui, exactement quand elle devait paraître.
- **`TextAlignment = 1` vaut *Gauche*** (0 défaut, 1 gauche, 2 centre, 3 droite). Un
  libellé qu'on croit centré ne l'est pas.
- **Relever les positions de conception une seule fois.** Toute pose calculée doit s'y
  rapporter, sinon les décalages s'accumulent à chaque redimensionnement.

### Contrôles hébergés

- **`Visible` ne redescend pas jusqu'aux vues AppKit hébergées**, et un `Visible` posé
  pendant que la page est masquée ne prend pas effet à son affichage. On masque les vues
  elles-mêmes par `setHidden:`.
- **`NativeTableViewControl` n'affiche les lignes ajoutées qu'après `Reload`.** Sans lui,
  la table reste vide et la sélection d'une ligne neuve échoue — les trois tables de
  l'application en souffraient.
- **`NativeSwitchControl` laisse à son `NSSwitch` un cadre fixe de 54×24**, simplement
  recentré : l'interrupteur déborde et se retrouve rogné. `XPUI.FitSwitch` le ramène à sa
  taille intrinsèque — 36×16 en taille mini, celle d'un `Form` groupé.
- **L'`Enabled` d'un canevas hôte n'atteint pas le contrôle hébergé** : partout où un
  bouton se grise, l'affectation est doublée par `Inner.Enabled`.
- **`sizeToFit` dimensionne un `NSPopUpButton` sur son item le plus long**, pas sur le
  titre affiché : 752 pt à cause des noms de certificats. La largeur se calcule sur le
  seul titre, plus la zone du chevron.
- **Un `DesktopContainer` n'est pas un `DesktopUIControl`** : les fonctions d'aide
  reçoivent la vue (`Self.Handle`) plutôt que le panneau.

### Bibliothèque `.xojo_library`

- **L'export trie les événements par ordre alphabétique, le binaire les déclenche dans
  l'ordre du source.** Si les deux ordres diffèrent, les événements sont intervertis :
  dans VDSTools 1.1, `Opening` appelait le gestionnaire `Paint` avec des arguments
  invalides (plantage `EXC_BAD_ACCESS`), et le `MenuItemSelected` d'un
  `NativeComboButtonControl` n'arrivait jamais. Corrigé en 1.1.1 en déclarant les
  événements dans l'ordre alphabétique côté source.

### Menus

- **La touche Maj passe par `AltMenuModifier`.** `MenuModifierShift` n'existe pas — la
  clé est absente du binaire de l'IDE — et l'analyseur de la chaîne `Shortcut` retient
  « Cmd+ » et la lettre mais laisse tomber « Shift+ », y compris affectée par code.
- **Avec les classes dédiées du menu de l'application** (`DesktopApplicationMenuItem`,
  `DesktopPreferencesMenuItem`), `SpecialMenu` doit valoir 0. Les valeurs de l'ancien
  mécanisme (1, 3) s'y superposent et l'élément disparaît.

### Texte

- **Une virgule ou un signe égal non échappés tronquent la valeur d'une constante** dans un
  `#tag Constant` — le format lit des paires `clé = valeur` séparées par des virgules.
  Écrire `\x2C` et `\x3D` : `hostArchitectures = « %@ »` se réduisait à
  « hostArchitectures », tronqué au caractère précédant le signe.
- **`NSAttributedString` lit le Markdown depuis macOS 12**, mais n'en tire aucune police :
  il marque les plages avec `NSInlinePresentationIntent` (2 = gras, 1 = italique), à
  convertir soi-même. Voir `XPUI.SetMarkdown`.

### Éditeur riche

Poser un texte simple dans la vue avec `Text = …` lui laisse ses **attributs de frappe** :
après un écran en gras, le texte simple de l'écran suivant s'affichait en gras et le `Flush`
écrivait ce gras dans le projet. Le panneau passe donc par un RTF minimal
(`DistributionXML.TextToRTF` + `LoadRTF`), qui remet la vue à plat.

### Fichiers importés

Un fichier externe est recopié **octet pour octet** dans le paquet : c'est voulu — on ne
réécrit pas le contrat de licence de quelqu'un — mais un RTF mal formé s'affiche alors de
travers dans l'installateur. L'import prévient donc quand un `.rtf` annonce la page de codes
Windows (`\ansi` sans `\ansicpg65001`) tout en contenant des octets ≥ 0x80 : un RTF correct
dans cette page de codes échappe tous ses accents (`\'e9`), les octets hauts bruts sont donc
le signe d'un fichier écrit en UTF-8 qui affichera « Ã© ». L'avertissement laisse le choix
d'importer quand même.

### Boucle de vérification

L'IDE **ne relit pas** les fichiers modifiés hors de lui : « Revert to Saved » reste grisé
et la construction repart de la copie en mémoire. Il faut fermer le projet (« Close
Window ») puis le rouvrir. Dans le doute, chercher une chaîne de trace dans le binaire
construit dit tout de suite si la version compilée est la bonne. Fermer la fenêtre ne
suffit pas toujours : après l'ajout d'une classe au manifeste `.xojo_project`, l'IDE a
reconstruit une copie en mémoire périmée — sans erreur et sans se marquer modifié. Il a
fallu quitter Xojo puis rouvrir le projet.

## État du portage

**Fait et vérifié sur l'application en marche** — chaque point a été éprouvé en pilotant
l'interface, en dépliant les paquets produits (`pkgutil --expand`) et en les ouvrant dans
Installer :

- Les quatre pages (Réglages, Composants, Prérequis, Présentation), le payload avec son
  glisser-déposer du Finder, les modèles de projet, les préférences et la fenêtre À propos.
- L'éditeur riche : mise en forme conservée d'un écran à l'autre, fichiers externes
  importés ou repris par l'éditeur, document marqué modifié dès la frappe.
- Le multilingue de bout en bout : écrans, titre de l'installateur, intitulés et
  descriptions de choix, image de fond ; langue de référence obligatoire ; avancement des
  traductions affiché ; codes régionaux et d'écriture normalisés (`pt-BR`, `zh-Hans`).
- La construction, depuis l'application comme depuis la CLI — les deux produisent des
  paquets identiques, structure, `distribution.xml` et ressources comprises.

**Jamais exercé** : la signature et la notarisation, faute de certificat. Le code date du
portage et n'a pas bougé depuis, mais aucun paquet signé n'a été produit.

**Pas de tests automatisés.** Tout se vérifie à la main, avec trois outils qui suffisent :
`pkgutil --expand` pour l'agencement des ressources,
`installer -showChoicesXML -pkg x.pkg -target / -AppleLanguages '(de)'` pour le rendu langue
par langue, et l'ouverture du paquet dans Installer pour ce que seul l'œil voit — l'image de
fond, que l'accessibilité n'expose pas.

## Écarts assumés par rapport à l'interface SwiftUI

- **Présentation** : les quatre écrans (Bienvenue / Lisez-moi / Licence / Conclusion) se
  choisissent par un sélecteur segmenté au lieu d'être empilés — un seul éditeur riche
  natif est monté à la fois.
- **Prérequis** : les conditions d'installation sont listées dans un tableau avec un
  éditeur sous la liste, au lieu d'un formulaire répété.
- **Nouveau à partir d'un modèle** : ouvre une fenêtre de choix plutôt qu'un sous-menu
  construit dynamiquement.
- **Glisser-déposer du Finder** : accepté sur le conteneur du payload ; le tri interne de
  l'arbre passe par `NativeOutlineView` (`NodesMoved`).

## Hors périmètre

L'import des projets Packages (`.pkgproj`) n'a pas été porté.
