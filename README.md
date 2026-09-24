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

## Correspondance avec la version Swift

| Swift | Xojo |
|---|---|
| `Engine/PackageProject.swift` | `PackageProject` + `PkgSettings`, `PkgPresentation`, `PkgRequirements`, `PkgNotarization`, `PkgPostInstall`, `PkgComponent`, `PkgPayload`, `PkgScripts`, `PkgInstallCheck` |
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

### Boucle de vérification

L'IDE **ne relit pas** les fichiers modifiés hors de lui : « Revert to Saved » reste grisé
et la construction repart de la copie en mémoire. Il faut fermer le projet (« Close
Window ») puis le rouvrir. Dans le doute, chercher une chaîne de trace dans le binaire
construit dit tout de suite si la version compilée est la bonne.

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
