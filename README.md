# XPackager (Xojo)

Portage Xojo — à l'identique — de l'application macOS **XPackager** écrite en SwiftUI,
au-dessus de la librairie **VDSTools** (contrôles AppKit natifs par Declares).

Deux projets partagent le même moteur (les mêmes fichiers sur le disque) :

| Projet | Type | Rôle |
|---|---|---|
| `XPackager.xojo_project` | Desktop | L'application (fenêtres multi-documents) |
| `XPackagerBuild.xojo_project` | Console | L'outil `xpackagerbuild` (équivalent de `packagesbuild`) |

## Avant d'ouvrir le projet

**VDSTools n'est pas versionné ici** : `VDSTools-1.1.0.xojo_library` est volontairement
exclu (`*.xojo_library`) et doit être déposé localement à la racine du projet, où l'IDE
le charge automatiquement. Sans lui, le projet s'ouvre mais ne compile pas : toute
l'interface repose sur des classes `Native…`.

La version 1.1 est requise — elle apporte `NativeIconButtonControl`, sur lequel reposent
les boutons à symbole SF.

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
| Libellés, champs, cases, boutons, menus locaux | `NativeLabelControl`, `NativeTextFieldControl`, `NativeCheckBoxControl`, `NativeButtonControl`, `NativePopupMenuControl` |
| Boutons à symbole SF, menus à symbole | `NativeIconButtonControl`, `NativeComboButtonControl` |
| Zone de journal | `NativeTextAreaControl` |
| Barre de progression | `NativeProgressBarControl` |
| Onglets internes (Composants, Présentation, Réglages) | `NativeSegmentedButtonControl` |
| Listes (conditions, modèles) | `NativeTableViewControl` (`NSTableView`) |
| Arbre du payload | `NativeOutlineViewControl` (`NSOutlineView`) |
| Barre latérale, barre d'outils, chrome de fenêtre | `NativeSidebar`, `NativeToolbar`, `NativeWindowChrome` |
| Éditeur riche, panneaux de fichiers, alertes, popover, icône | `NativeRichTextEditor`, `NativeFilePanel`, `NativeAlert`, `NativePopover`, `NativeImageView` |

Restent en Xojo natif, faute d'équivalent : `DesktopSeparator` (filets), `DesktopPagePanel`
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
