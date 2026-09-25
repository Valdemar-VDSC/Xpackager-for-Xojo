#tag DesktopWindow
Begin DesktopWindow ProjectWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   True
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   HasTitleBar     =   True
   Height          =   790
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   780
   MinimumWidth    =   860
   Resizeable      =   True
   Title           =   "XPackager"
   Type            =   0
   Visible         =   True
   Width           =   1000
   Begin DesktopPagePanel DetailPanel
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   790
      Index           =   -2147483648
      InitialParent   =   "ProjectWindow"
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelCount      =   4
      Panels          =   ""
      Scope           =   0
      SelectedPanelIndex=   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   1000
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Function CancelClosing(appQuitting As Boolean) As Boolean
		  // Propose d'enregistrer, comme un document natif.
		  If Not mDirty Then Return False
		  Var alert As New NativeAlert(Loc.kSaveChangesQuestion, DisplayName)
		  alert.Style = NativeAlert.Styles.Warning
		  Var saveIdx As Integer = alert.AddButton(Loc.kSaveButton)
		  Var cancelIdx As Integer = alert.AddButton(Loc.kCancelButton)
		  Var discardIdx As Integer = alert.AddButton(Loc.kDontSave)
		  alert.SetDefaultButton(saveIdx)
		  alert.SetCancelButton(cancelIdx)
		  alert.SetDestructiveButton(discardIdx)
		  Var response As Integer = alert.RunModal
		  If response = cancelIdx Then Return True
		  If response = discardIdx Then Return False
		  Return Not SaveProject(False)
		End Function
	#tag EndEvent

	#tag Event
		Sub Closing()
		  If mSidebar <> Nil Then Prefs.SidebarWidth = mSidebar.Width
		  Prefs.Save
		  App.ForgetWindow(Self)
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
		  Self.Close
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSave() As Boolean Handles FileSave.Action
		  Return SaveProject(False)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveAs() As Boolean Handles FileSaveAs.Action
		  Return SaveProject(True)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveAsTemplate() As Boolean Handles FileSaveAsTemplate.Action
		  FlushEditors
		  Var name As String = XPUI.PromptForName(Loc.kSaveAsTemplate, Loc.kTemplateName, mProject.Settings.PackageName)
		  If name = "" Then Return True
		  Try
		    Call TemplateManager.SaveTemplate(mProject, name)
		  Catch err As RuntimeException
		    XPUI.ShowError(err.Message)
		  End Try
		  Return True
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub BuildNativeToolbar()
		  mBar = New NativeToolbar("XPackagerToolbar")
		  AddHandler mBar.ItemPressed, AddressOf ToolbarItemPressed
		  
		  // Titre système, comme .navigationTitle côté SwiftUI : AppKit le place en tête
		  // de barre, avant la césure. Pas de vue de titre sur mesure.
		  mChrome.TitleVisible = True
		  
		  // Les items D'ABORD : c'est au setToolbar: de Attach qu'AppKit interroge le
		  // delegate pour peupler la barre. Attacher une barre vide donne une barre vide.
		  mBar.AddItem(NativeToolbarItem.SystemItem(NativeWindowChrome.SystemIdentifier("NSToolbarToggleSidebarItemIdentifier")))
		  mBar.AddItem(NativeToolbarItem.SystemItem(NativeWindowChrome.SystemIdentifier("NSToolbarSidebarTrackingSeparatorItemIdentifier")))
		  mBar.AddItem(NativeToolbarItem.FlexibleSpaceItem)
		  
		  mBuildItem = New NativeToolbarItem("build")
		  mBuildItem.Label = Loc.kBuildEllipsis
		  mBuildItem.SetIcon("hammer")
		  mBuildItem.Bordered = True
		  mBuildItem.ToolTip = Loc.kBuildThePackage
		  mBar.AddItem(mBuildItem)
		  
		  mBar.Attach(Self)
		  
		  // Style, mode et personnalisation passent par la FENÊTRE : sans effet tant que
		  // la barre n'est pas attachée, donc réglés seulement maintenant. Tant qu'ils ne
		  // l'étaient pas, la barre restait en style Automatic et disposait ses items
		  // autrement (bascule renvoyée à droite).
		  mBar.Style = NativeToolbar.ToolbarStyles.Unified
		  mBar.DisplayMode = NativeToolbar.DisplayModes.IconAndLabel
		  mBar.AllowsUserCustomization = False
		  
		  // Style et mode changent la ZONE SÛRE : on redemande la mise en page.
		  mChrome.Relayout
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BuildPackage()
		  FlushEditors
		  Var panel As New NativeFilePanel(NativeFilePanel.Modes.Save)
		  panel.SetAllowedExtensions("pkg")
		  panel.FileName = PackageNaming.OutputName(mProject) + ".pkg"
		  panel.SetTexts(Loc.kSavePackage, "", "")
		  If Not panel.RunModal Then Return
		  Var out As FolderItem = panel.Value
		  If out Is Nil Then Return
		  
		  // Le profil notarytool vient des Réglages si le projet n'en fixe pas un.
		  Var project As PackageProject = mProject
		  If project.Notarization.Enabled And project.Notarization.KeychainProfile.Trim = "" Then
		    project.Notarization.KeychainProfile = Prefs.NotaryProfile
		  End If
		  
		  Var w As New BuildLogWindow
		  w.StartBuild(project, out)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ChromeDetailResized(sender As NativeWindowChrome, w As Double, h As Double)
		  // LA règle : la TAILLE par l'API Xojo — seul geste qui remet les enfants du
		  // PagePanel en page —, la POSITION par AppKit. Ne jamais LIRE .Left ici.
		  If w <= 0 Or h <= 0 Then Return
		  
		  Var usable As Double = h - sender.SafeAreaTop
		  If usable < 140 Then Return
		  
		  mDetailW = w
		  mDetailH = usable
		  ApplyDetailLayout
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyDetailLayout()
		  // Appelé par ChromeDetailResized et, une fois Opening rendu, par
		  // DeferredRelayout : la même pose, à partir des dernières mesures connues.
		  If mChrome Is Nil Or mDetailW <= 0 Or mDetailH <= 0 Then Return
		  
		  DetailPanel.Width = mDetailW
		  DetailPanel.Height = mDetailH
		  mChrome.PlaceView(DetailPanel.Handle, 0, 0, mDetailW, mDetailH)
		  
		  // Les conteneurs sont enfants de DetailPanel, dont AppKit a déjà placé la vue
		  // SOUS la barre d'outils : leur donner en plus le décalage de la zone sûre
		  // les descendait une seconde fois (vu à la trace : frame y = -66 après le
		  // moindre redimensionnement). Ils se collent donc à l'origine du volet.
		  PlacePanel(mSettingsPanel, mDetailW, mDetailH)
		  PlacePanel(mComponentsPanel, mDetailW, mDetailH)
		  PlacePanel(mRequirementsPanel, mDetailW, mDetailH)
		  PlacePanel(mPresentationPanel, mDetailW, mDetailH)
		  If mComponentsPanel <> Nil Then mComponentsPanel.LayoutChildren
		  // Réglages : sections calculées, à recalculer sur la nouvelle largeur.
		  If mSettingsPanel <> Nil Then mSettingsPanel.Relayout
		  If mPresentationPanel <> Nil Then mPresentationPanel.Relayout
		  If mComponentsPanel <> Nil Then mComponentsPanel.Relayout
		  If mRequirementsPanel <> Nil Then mRequirementsPanel.Relayout
		  FitSwitches
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PlacePanel(panel As DesktopContainer, w As Double, h As Double)
		  If panel Is Nil Then Return
		  
		  // La TAILLE par l'API Xojo : c'est le seul geste qui remet les enfants du
		  // conteneur en page.
		  panel.Left = 0
		  panel.Top = 0
		  panel.Width = w
		  panel.Height = h
		  
		  // La POSITION par AppKit. Xojo déduit l'ordonnée d'un conteneur embarqué
		  // d'une hauteur de parent qu'il ne remet à jour qu'à la passe suivante :
		  // pendant Opening il compte encore les 790 du markup au lieu des 725 du
		  // volet, et pose la vue 66 points trop haut. On écrit donc le cadre.
		  Var r As Cocoa.NSRect
		  r.width = w
		  r.height = h
		  Cocoa.SetViewFrame(panel.Handle, r)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisplayName() As String
		  If mFile <> Nil Then
		    Var name As String = mFile.Name
		    Var dot As Integer = name.LastIndexOf(".")
		    If dot > 0 Then name = name.Left(dot)
		    Return name
		  End If
		  If mSuggestedName <> "" Then Return mSuggestedName
		  Return Loc.kUntitledProject
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlushEditors()
		  If mPresentationPanel <> Nil Then mPresentationPanel.Flush
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFile(f As FolderItem)
		  mProject = PackageProject.Load(f)
		  mFile = f
		  mDirty = False
		  Reload
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadProject(p As PackageProject, suggestedName As String)
		  mProject = p
		  mFile = Nil
		  mSuggestedName = suggestedName
		  mDirty = True
		  Reload
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MarkDirty()
		  mDirty = True
		  UpdateTitle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ProjectFile() As FolderItem
		  Return mFile
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefitSidebar()
		  If mSidebar <> Nil Then mSidebar.Refit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Reload()
		  // Les panneaux sont remis en place un par un : on ne sollicite que ceux
		  // effectivement embarqués.
		  If mSettingsPanel <> Nil Then mSettingsPanel.LoadProject(mProject)
		  If mComponentsPanel <> Nil Then mComponentsPanel.LoadProject(mProject)
		  If mRequirementsPanel <> Nil Then mRequirementsPanel.LoadProject(mProject)
		  If mPresentationPanel <> Nil Then mPresentationPanel.LoadProject(mProject)
		  UpdateTitle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SaveProject(saveAs As Boolean) As Boolean
		  FlushEditors
		  Var target As FolderItem = mFile
		  If saveAs Or target Is Nil Then
		    Var panel As New NativeFilePanel(NativeFilePanel.Modes.Save)
		    panel.SetAllowedExtensions("xpackager")
		    panel.FileName = DisplayName + ".xpackager"
		    If Not panel.RunModal Then Return False
		    target = panel.Value
		  End If
		  If target Is Nil Then Return False
		  Try
		    mProject.Save(target)
		  Catch err As RuntimeException
		    XPUI.ShowError(err.Message)
		    Return False
		  End Try
		  mFile = target
		  mDirty = False
		  UpdateTitle
		  Return True
		End Function
	#tag EndMethod

	#tag Event
		Sub Opening()
		  
		  If mProject Is Nil Then mProject = New PackageProject
		  
		  // Barre latérale native (NSOutlineView source-list) dans une vraie NSSplitView.
		  mSidebar = New NativeSidebar
		  mSidebar.Add(Loc.kSettings, "gearshape", &c8E8E93)
		  mSidebar.Add(Loc.kComponents, "shippingbox", &cFF9F0A)
		  mSidebar.Add(Loc.kRequirements, "checklist", &c30D158)
		  mSidebar.Add(Loc.kPresentation, "text.alignleft", &cBF5AF2)
		  mSidebar.SetFooter(Loc.kPreferences, "gearshape")
		  AddHandler mSidebar.SelectionChanged, AddressOf SidebarSelectionChanged
		  AddHandler mSidebar.FooterClicked, AddressOf SidebarFooterClicked
		  
		  // Chrome natif : NSSplitViewController propriétaire de la fenêtre.
		  mChrome = New NativeWindowChrome(Self)
		  AddHandler mChrome.DetailResized, AddressOf ChromeDetailResized
		  mChrome.Install(mSidebar.BuildSidebarView(230, Self.Height), 230, 200, 340)
		  
		  BuildNativeToolbar
		  
		  // ─── Conteneur 1/4 : Réglages ───
		  mSettingsPanel = New SettingsPanel
		  mSettingsPanel.Owner = Self
		  Var panelW As Integer = DetailPanel.Width
		  Var panelH As Integer = DetailPanel.Height
		  mSettingsPanel.EmbedWithinPanel(DetailPanel, 0, 0, 0, panelW, panelH)
		  mSettingsPanel.LoadProject(mProject)
		  
		  // ─── Conteneur 2/4 : Composants (il embarque lui-même PayloadPanel) ───
		  mComponentsPanel = New ComponentsPanel
		  mComponentsPanel.Owner = Self
		  mComponentsPanel.EmbedWithinPanel(DetailPanel, 1, 0, 0, panelW, panelH)
		  mComponentsPanel.LoadProject(mProject)
		  
		  // ─── Conteneur 3/4 : Prérequis ───
		  mRequirementsPanel = New RequirementsPanel
		  mRequirementsPanel.Owner = Self
		  mRequirementsPanel.EmbedWithinPanel(DetailPanel, 2, 0, 0, panelW, panelH)
		  mRequirementsPanel.LoadProject(mProject)
		  
		  // ─── Conteneur 4/4 : Présentation ───
		  mPresentationPanel = New PresentationPanel
		  mPresentationPanel.Owner = Self
		  mPresentationPanel.EmbedWithinPanel(DetailPanel, 3, 0, 0, panelW, panelH)
		  mPresentationPanel.LoadProject(mProject)
		  
		  ShowPage(0)
		  UpdateTitle
		  
		  // Les conteneurs sont posés APRÈS le Relayout de la barre d'outils : sans ce
		  // second appel, ils ne reçoivent jamais de ChromeDetailResized et restent
		  // collés en haut de la fenêtre, sous la barre de titre.
		  mChrome.Relayout
		  
		  // Xojo fait sa propre passe de mise en page APRÈS Opening, et réapplique aux
		  // conteneurs la géométrie déclarée à l'embarquement — celle du markup, pas
		  // celle du volet de détail. Un dernier Relayout, une fois la main rendue,
		  // reprend le dessus : sans lui le panneau s'affiche trop haut jusqu'au
		  // premier redimensionnement.
		  Timer.CallLater(0, AddressOf DeferredRelayout)
		End Sub
	#tag EndEvent

	#tag Method, Flags = &h21
		Private Sub FitSwitches()
		  // Ramène chaque NSSwitch à sa taille intrinsèque (voir XPUI.FitSwitch). Sans
		  // effet sur ceux qui sont déjà ajustés : on peut l'appeler à volonté.
		  If mSettingsPanel <> Nil Then mSettingsPanel.FitSwitches
		  If mComponentsPanel <> Nil Then mComponentsPanel.FitSwitches
		  If mRequirementsPanel <> Nil Then mRequirementsPanel.FitSwitches
		  If mPresentationPanel <> Nil Then mPresentationPanel.FitSwitches
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeferredRelayout()
		  // Relayout ne rejoue pas l'événement quand la géométrie n'a pas bougé : on
		  // repose donc directement, avec les mesures relevées pendant Opening.
		  ApplyDetailLayout
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowPage(index As Integer)
		  If index < 0 Or index > 3 Then Return
		  If index <> 3 And mPresentationPanel <> Nil Then mPresentationPanel.Flush
		  // La liste des langues se règle dans la Présentation : la page Composants la
		  // relit en arrivant, sinon son popup resterait sur l'état d'avant.
		  If index = 1 And mComponentsPanel <> Nil Then
		    mComponentsPanel.ReloadDetail
		    mComponentsPanel.Relayout
		  End If
		  DetailPanel.SelectedPanelIndex = index
		  // Les interrupteurs ne sont hébergés qu'au premier dessin de leur page.
		  Timer.CallLater(150, AddressOf FitSwitches)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SidebarFooterClicked(sender As NativeSidebar)
		  #Pragma Unused sender
		  App.ShowPreferences
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SidebarSelectionChanged(sender As NativeSidebar, index As Integer)
		  Var page As Integer = sender.PageForRow(index)
		  If page >= 0 Then ShowPage(page)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ToolbarItemPressed(sender As NativeToolbar, item As NativeToolbarItem)
		  #Pragma Unused sender
		  Select Case item.ItemIdentifier
		  Case "build"
		    BuildPackage
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateTitle()
		  Var name As String = DisplayName
		  If mDirty Then name = name + " •"
		  Self.Title = name
		  If mChrome <> Nil Then mChrome.Title = name
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mDetailH As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDetailW As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mBar As NativeToolbar
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mBuildItem As NativeToolbarItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mChrome As NativeWindowChrome
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mComponentsPanel As ComponentsPanel
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDirty As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPresentationPanel As PresentationPanel
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mProject As PackageProject
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRequirementsPanel As RequirementsPanel
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSettingsPanel As SettingsPanel
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSidebar As NativeSidebar
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSuggestedName As String
	#tag EndProperty


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasTitleBar"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
