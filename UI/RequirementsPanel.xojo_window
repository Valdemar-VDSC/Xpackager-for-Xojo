#tag DesktopWindow
Begin DesktopContainer RequirementsPanel
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   570
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   700
   Begin NativeGroupBoxControl SystemBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#Loc.kSystemSection"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   100
      Index           =   -2147483648
      InitialParent   =   "RequirementsPanel"
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TitleFontSize   =   0.0
      Tooltip         =   ""
      Top             =   16
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   668
      Begin NativeLabelControl MinOSLabel
         AllowAutoDeactivate=   True
         AllowsDefaultTighteningForTruncation=   False
         AllowsExpansionToolTips=   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         Bordered        =   False
         DrawsBackground =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "SystemBox"
         Italic          =   False
         Left            =   36
         LineBreakMode   =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumNumberOfLines=   0
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   50
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   260
      End
      Begin NativeTextFieldControl MinOSField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowsWritingTools=   True
         AllowsWritingToolsAffordance=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         ContentType     =   0
         EchosBullets    =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   24
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "SystemBox"
         Italic          =   False
         Left            =   300
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   48
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   200
      End
      Begin NativeLabelControl MinOSHelp
         AllowAutoDeactivate=   True
         AllowsDefaultTighteningForTruncation=   False
         AllowsExpansionToolTips=   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         Bordered        =   False
         DrawsBackground =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   10.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "SystemBox"
         Italic          =   False
         Left            =   36
         LineBreakMode   =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumNumberOfLines=   0
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   82
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   624
      End
   End
   Begin NativeGroupBoxControl ArchBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#Loc.kAllowedArchitectures"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   139
      Index           =   -2147483648
      InitialParent   =   "RequirementsPanel"
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TitleFontSize   =   0.0
      Tooltip         =   ""
      Top             =   128
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   668
      Begin NativeLabelControl ArmCheckLabel
         AllowAutoDeactivate=   True
         AllowsDefaultTighteningForTruncation=   False
         AllowsExpansionToolTips=   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         Bordered        =   False
         DrawsBackground =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "ArchBox"
         Italic          =   False
         Left            =   36
         LineBreakMode   =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumNumberOfLines=   1
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   163
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   570
      End
      Begin NativeSwitchControl ArmCheck
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         ControlSize     =   2
         Enabled         =   True
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "ArchBox"
         Left            =   620
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   163
         Transparent     =   True
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin NativeLabelControl IntelCheckLabel
         AllowAutoDeactivate=   True
         AllowsDefaultTighteningForTruncation=   False
         AllowsExpansionToolTips=   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         Bordered        =   False
         DrawsBackground =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "ArchBox"
         Italic          =   False
         Left            =   36
         LineBreakMode   =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumNumberOfLines=   1
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   200
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   570
      End
      Begin NativeSwitchControl IntelCheck
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         ControlSize     =   2
         Enabled         =   True
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "ArchBox"
         Left            =   620
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   200
         Transparent     =   True
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin NativeLabelControl ArchLabel
         AllowAutoDeactivate=   True
         AllowsDefaultTighteningForTruncation=   False
         AllowsExpansionToolTips=   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         Bordered        =   False
         DrawsBackground =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   10.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "ArchBox"
         Italic          =   False
         Left            =   36
         LineBreakMode   =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumNumberOfLines=   0
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   237
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   624
      End
   End
   Begin NativeGroupBoxControl ChecksBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#Loc.kInstallConditions"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   288
      Index           =   -2147483648
      InitialParent   =   "RequirementsPanel"
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TitleFontSize   =   0.0
      Tooltip         =   ""
      Top             =   279
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   668
      Begin NativeTableViewControl ChecksList
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowsColumnReordering=   True
         AllowsColumnResizing=   True
         AllowsMultipleSelection=   False
         AllowsRowReordering=   False
         AllowTabs       =   False
         AlternatingRowColors=   False
         Backdrop        =   0
         BezeledEditableCells=   False
         DoubleClickAction=   False
         Enabled         =   True
         Height          =   140
         Index           =   -2147483648
         InitialParent   =   "ChecksBox"
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RowHeight       =   22.0
         Scope           =   0
         SelectedRow     =   0
         ShowsHeader     =   True
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   313
         Transparent     =   False
         Visible         =   True
         Width           =   624
      End
      Begin NativeLabelControl NoChecksLabel
         AllowAutoDeactivate=   True
         AllowsDefaultTighteningForTruncation=   False
         AllowsExpansionToolTips=   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         Bordered        =   False
         DrawsBackground =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   10.0
         FontUnit        =   0
         Height          =   34
         Index           =   -2147483648
         InitialParent   =   "ChecksBox"
         Italic          =   False
         Left            =   44
         LineBreakMode   =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumNumberOfLines=   0
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   369
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   608
      End
      Begin NativeIconButtonControl AddCheckBtn
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         BezelStyle      =   1
         Caption         =   ""
         ControlSize     =   0
         Enabled         =   True
         Height          =   24
         ImageHugsTitle  =   True
         ImagePosition   =   7
         Index           =   -2147483648
         InitialParent   =   "ChecksBox"
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SymbolName      =   "plus"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   462
         Transparent     =   True
         Visible         =   True
         Width           =   180
      End
      Begin NativeIconButtonControl RemoveCheckBtn
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         BezelStyle      =   1
         Caption         =   ""
         ControlSize     =   0
         Enabled         =   True
         Height          =   24
         ImageHugsTitle  =   True
         ImagePosition   =   7
         Index           =   -2147483648
         InitialParent   =   "ChecksBox"
         Left            =   224
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SymbolName      =   "minus.circle.fill"
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   462
         Transparent     =   True
         Visible         =   True
         Width           =   180
      End
      Begin NativePopupMenuControl KindPopup
         AllowAutoDeactivate=   True
         AltersStateOfSelectedItem=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "ChecksBox"
         InitialValue    =   ""
         Italic          =   False
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   -1
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   497
         Transparent     =   False
         Underline       =   False
         UsesItemFromMenu=   True
         Visible         =   True
         Width           =   180
      End
      Begin NativeTextFieldControl ValueField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowsWritingTools=   True
         AllowsWritingToolsAffordance=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         ContentType     =   0
         EchosBullets    =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   24
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "ChecksBox"
         Italic          =   False
         Left            =   224
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   497
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   320
      End
      Begin NativeButtonControl BrowseBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Bordered        =   True
         Cancel          =   False
         Caption         =   ""
         ControlSize     =   0
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "ChecksBox"
         Italic          =   False
         Left            =   562
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         ShowsBorderOnlyOnHover=   False
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   497
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin NativeLabelControl GoLabel
         AllowAutoDeactivate=   True
         AllowsDefaultTighteningForTruncation=   False
         AllowsExpansionToolTips=   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         Bordered        =   False
         DrawsBackground =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "ChecksBox"
         Italic          =   False
         Left            =   562
         LineBreakMode   =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumNumberOfLines=   0
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   499
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   40
      End
      Begin NativeTextFieldControl MessageField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowsWritingTools=   True
         AllowsWritingToolsAffordance=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         ContentType     =   0
         EchosBullets    =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   24
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "ChecksBox"
         Italic          =   False
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   531
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   624
      End
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  ApplyTexts
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Relayout()
		  // Appelé par ProjectWindow à chaque redimensionnement du volet de détail.
		  LayoutAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LayoutAll()
		  // Calque du Form(.grouped) SwiftUI : sections titrées, lignes de 37 pt séparées
		  // par des filets. L'aide « Aucune condition… » ne paraît que sur une liste vide,
		  // et la section se referme quand elle disparaît.
		  Var pf As Cocoa.NSRect = Cocoa.ViewFrame(Self.Handle)
		  If pf.width <= 0 Or pf.height <= 0 Then Return
		  
		  Const kMargin = 20
		  Const kInset = 10
		  Const kTitleH = 14
		  Const kRowH = 37
		  Const kGap = 18
		  Const kListH = 160
		  Var gx As Double = kMargin
		  Var gw As Double = pf.width - 2 * kMargin
		  Var cl As Double = gx + kInset
		  Var cr As Double = gx + gw - kInset
		  Var vc As Double = cl + 280   // le libellé « Version minimale de macOS… » est long
		  
		  mQC.RemoveAll
		  mQX.RemoveAll
		  mQY.RemoveAll
		  mQW.RemoveAll
		  mQH.RemoveAll
		  mRuleCount = 0
		  
		  // ─── Système ───
		  Var y As Double = 20
		  Var top As Double = y
		  Var n As Integer = 0
		  y = y + kTitleH
		  Rule(n, SystemBox, cl, cr, y)
		  Q(MinOSLabel, cl, y + (kRowH - 18) / 2, vc - cl - 10, 18)
		  Q(MinOSField, vc, y + (kRowH - 24) / 2, 200, 24)
		  y = y + kRowH
		  y = CaptionRow(n, SystemBox, MinOSHelp, cl, cr, y)
		  Q(SystemBox, gx, top, gw, y - top)
		  
		  // ─── Architectures autorisées ───
		  y = y + kGap
		  top = y
		  n = 0
		  y = y + kTitleH
		  y = SwitchRow(n, ArchBox, ArmCheckLabel, ArmCheck, cl, cr, y, kRowH)
		  y = SwitchRow(n, ArchBox, IntelCheckLabel, IntelCheck, cl, cr, y, kRowH)
		  y = CaptionRow(n, ArchBox, ArchLabel, cl, cr, y)
		  Q(ArchBox, gx, top, gw, y - top)
		  
		  // ─── Conditions d'installation ───
		  y = y + kGap
		  top = y
		  n = 0
		  y = y + kTitleH
		  Var empty As Boolean = mProject Is Nil Or mProject.Requirements.Checks.Count = 0
		  XPUI.SetShown(NoChecksLabel, empty)
		  If empty Then y = CaptionRow(n, ChecksBox, NoChecksLabel, cl, cr, y)
		  
		  Rule(n, ChecksBox, cl, cr, y)
		  Q(ChecksList, cl, y + 10, cr - cl, kListH)
		  y = y + kListH + 20
		  
		  Rule(n, ChecksBox, cl, cr, y)
		  Q(AddCheckBtn, cl, y + (kRowH - 24) / 2, 180, 24)
		  Q(RemoveCheckBtn, cl + 188, y + (kRowH - 24) / 2, 180, 24)
		  y = y + kRowH
		  
		  // ligne d'édition : type, valeur, puis « Parcourir… » ou l'unité « Go »
		  Rule(n, ChecksBox, cl, cr, y)
		  Var bw As Double = 110
		  Q(KindPopup, cl, y + (kRowH - 22) / 2, 180, 22)
		  Q(ValueField, cl + 188, y + (kRowH - 24) / 2, cr - cl - 188 - bw - 8, 24)
		  Q(BrowseBtn, cr - bw, y + (kRowH - 22) / 2, bw, 22)
		  Q(GoLabel, cr - bw, y + (kRowH - 18) / 2, 40, 18)
		  y = y + kRowH
		  
		  Rule(n, ChecksBox, cl, cr, y)
		  Q(MessageField, cl, y + (kRowH - 24) / 2, cr - cl, 24)
		  y = y + kRowH
		  Q(ChecksBox, gx, top, gw, y - top)
		  
		  Flush
		  XPUI.FitSwitch(ArmCheck)
		  XPUI.FitSwitch(IntelCheck)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SwitchRow(ByRef n As Integer, group As DesktopUIControl, label As DesktopLabel, sw As DesktopUIControl, cl As Double, cr As Double, y As Double, rowH As Double) As Double
		  Rule(n, group, cl, cr, y)
		  Q(label, cl, y + (rowH - 20) / 2, cr - cl - 52, 20)
		  Q(sw, cr - 40, y + (rowH - 20) / 2, 40, 20)
		  Return y + rowH
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CaptionRow(ByRef n As Integer, group As DesktopUIControl, label As DesktopLabel, cl As Double, cr As Double, y As Double) As Double
		  // Une légende vide ne fait pas de ligne : ni filet, ni place réservée.
		  If label.Text.Trim = "" Then
		    XPUI.SetShown(label, False)
		    Return y
		  End If
		  XPUI.SetShown(label, True)
		  Rule(n, group, cl, cr, y)
		  Var h As Double = XPUI.TextHeight(label, label.Text, cr - cl)
		  Q(label, cl, y + 10, cr - cl, h)
		  Return y + h + 20
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Q(c As DesktopUIControl, x As Double, top As Double, w As Double, h As Double)
		  mQC.Add(c)
		  mQX.Add(x)
		  mQY.Add(top)
		  mQW.Add(w)
		  mQH.Add(h)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Flush()
		  // Les groupes d'abord : redimensionner un groupe après ses enfants les
		  // déplacerait, puisqu'ils en sont des sous-vues.
		  For i As Integer = 0 To mQC.LastIndex
		    If mQC(i) IsA NativeGroupBoxControl Then XPUI.Place(Self.Handle, mQC(i), mQX(i), mQY(i), mQW(i), mQH(i))
		  Next
		  For i As Integer = 0 To mQC.LastIndex
		    If Not (mQC(i) IsA NativeGroupBoxControl) Then XPUI.Place(Self.Handle, mQC(i), mQX(i), mQY(i), mQW(i), mQH(i))
		  Next
		  For i As Integer = mRuleCount To mRules.LastIndex
		    XPUI.SetViewShown(mRules(i).Handle, False)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Rule(ByRef n As Integer, group As DesktopUIControl, left As Double, right As Double, top As Double)
		  n = n + 1
		  If n = 1 Then Return
		  If mRuleCount > mRules.LastIndex Then
		    mRules.Add(NativeBox.Separator(0, 0, right - left, 1))
		  End If
		  Var rule As NativeBox = mRules(mRuleCount)
		  // Sous-vue de SA section : autrement le filet reste à l'écran quand la page
		  // change, et ceux d'un onglet traînent sur les autres.
		  Cocoa.AddSubview(group.Handle, rule.Handle)
		  XPUI.SetViewShown(rule.Handle, True)
		  XPUI.PinView(Self.Handle, rule.Handle, left, top, right - left, 1)
		  mRuleCount = mRuleCount + 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyTexts()
		  mUpdating = True
		  // SystemHeader.Text = Loc.kSystemSection
		  MinOSLabel.Text = Loc.kMinimumOSField
		  MinOSHelp.Text = Loc.kMinimumOSHelp
		  // ArchHeader.Text = Loc.kAllowedArchitectures
		  ArmCheckLabel.Text = Loc.kAppleSilicon
		  IntelCheckLabel.Text = Loc.kIntelArch
		  NoChecksLabel.Text = Loc.kNoConditions
		  AddCheckBtn.Caption = Loc.kAddCondition
		  RemoveCheckBtn.Caption = Loc.kRemoveCondition
		  If RemoveCheckBtn.Inner <> Nil Then RemoveCheckBtn.Inner.SetDestructive(True)
		  BrowseBtn.Caption = Loc.kBrowseEllipsis
		  GoLabel.Text = Loc.kGoUnit
		  MessageField.Hint = Loc.kConditionMessage
		  If ChecksList.ColumnCount = 0 Then
		    ChecksList.ShowsHeader = True
		    // Pas de lignes alternées : la version SwiftUI n'en a pas.
		    ChecksList.AlternatingRowColors = False
		    ChecksList.AddColumn(Loc.kTypeLabel, 170)
		    ChecksList.AddColumn(Loc.kNameLabel, 230)
		    ChecksList.AddColumn(Loc.kDescriptionLabel, 220)
		  End If
		  KindPopup.RemoveAllRows
		  KindPopup.AddRow(Loc.kKindFileExists)
		  KindPopup.AddRow(Loc.kKindFileAbsent)
		  KindPopup.AddRow(Loc.kKindMinimumRAM)
		  KindPopup.SelectedRowIndex = 0
		  mUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Current() As PkgInstallCheck
		  If mProject Is Nil Then Return Nil
		  Var row As Integer = ChecksList.SelectedRow
		  If row < 0 Or row > mProject.Requirements.Checks.LastIndex Then Return Nil
		  Return mProject.Requirements.Checks(row)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FitSwitches()
		  // Appelé par ProjectWindow une fois la page affichée : la bibliothèque
		  // héberge l'interrupteur au premier dessin et lui impose alors son cadre.
		  XPUI.FitSwitch(ArmCheck)
		  XPUI.FitSwitch(IntelCheck)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function KindLabel(kind As PkgInstallCheck.Kinds) As String
		  Select Case kind
		  Case PkgInstallCheck.Kinds.FileAbsent
		    Return Loc.kKindFileAbsent
		  Case PkgInstallCheck.Kinds.MinimumRAM
		    Return Loc.kKindMinimumRAM
		  End Select
		  Return Loc.kKindFileExists
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadProject(p As PackageProject)
		  mProject = p
		  Reload
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshEditor()
		  Var chk As PkgInstallCheck = Current
		  Var has As Boolean = chk <> Nil
		  KindPopup.Enabled = has
		  ValueField.Enabled = has
		  MessageField.Enabled = has
		  BrowseBtn.Enabled = has
		  RemoveCheckBtn.Enabled = has
		  If RemoveCheckBtn.Inner <> Nil Then RemoveCheckBtn.Inner.Enabled = has
		  If Not has Then
		    mUpdating = True
		    ValueField.Text = ""
		    MessageField.Text = ""
		    mUpdating = False
		    GoLabel.Visible = False
		    BrowseBtn.Visible = True
		    Return
		  End If
		  mUpdating = True
		  KindPopup.SelectedRowIndex = Integer(chk.Kind)
		  ValueField.Text = chk.Value
		  MessageField.Text = chk.Message
		  mUpdating = False
		  Var isRAM As Boolean = chk.Kind = PkgInstallCheck.Kinds.MinimumRAM
		  GoLabel.Visible = isRAM
		  BrowseBtn.Visible = Not isRAM
		  If isRAM Then
		    ValueField.Hint = Loc.kRamPlaceholder
		  Else
		    ValueField.Hint = Loc.kPathPlaceholder
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reload()
		  If mProject Is Nil Then Return
		  mUpdating = True
		  MinOSField.Text = mProject.Requirements.MinimumOSVersion
		  ArmCheck.Value = mProject.Requirements.AllowArm64
		  IntelCheck.Value = mProject.Requirements.AllowIntel
		  ArchLabel.Text = Loc.kHostArchFormat.ReplaceAll("%@", mProject.Requirements.HostArchitectures)
		  XPUI.SetMonospaced(ArchLabel, 10)
		  LayoutAll
		  ReloadChecks
		  mUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReloadChecks()
		  If mProject Is Nil Then Return
		  Var selected As Integer = ChecksList.SelectedRow
		  ChecksList.RemoveAllRows
		  For Each chk As PkgInstallCheck In mProject.Requirements.Checks
		    ChecksList.AddRow(KindLabel(chk.Kind), chk.Value, chk.Message)
		  Next
		  // NativeTableViewControl n'affiche les lignes ajoutées qu'après Reload : sans lui
		  // la table restait vide et la sélection de la nouvelle ligne échouait.
		  ChecksList.Reload
		  If selected >= 0 And selected < ChecksList.RowCount Then
		    ChecksList.SelectRow(selected)
		  End If
		  NoChecksLabel.Visible = mProject.Requirements.Checks.Count = 0
		  RefreshEditor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Touch()
		  If mUpdating Or mProject Is Nil Then Return
		  If Owner <> Nil Then Owner.MarkDirty
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mQC() As DesktopUIControl
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mQH() As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mQW() As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mQX() As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mQY() As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRuleCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRules() As NativeBox
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mProject As PackageProject
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUpdating As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Owner As ProjectWindow
	#tag EndProperty


#tag EndWindowCode

#tag Events MinOSField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  mProject.Requirements.MinimumOSVersion = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ArmCheck
	#tag Event
		Sub ValueChanged(value As Boolean)
		  If mUpdating Or mProject Is Nil Then Return
		  mProject.Requirements.AllowArm64 = value
		  ArchLabel.Text = Loc.kHostArchFormat.ReplaceAll("%@", mProject.Requirements.HostArchitectures)
		  XPUI.SetMonospaced(ArchLabel, 10)
		  LayoutAll
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IntelCheck
	#tag Event
		Sub ValueChanged(value As Boolean)
		  If mUpdating Or mProject Is Nil Then Return
		  mProject.Requirements.AllowIntel = value
		  ArchLabel.Text = Loc.kHostArchFormat.ReplaceAll("%@", mProject.Requirements.HostArchitectures)
		  XPUI.SetMonospaced(ArchLabel, 10)
		  LayoutAll
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ChecksList
	#tag Event
		Sub SelectionChanged(row As Integer)
		  #Pragma Unused row
		  RefreshEditor
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddCheckBtn
	#tag Event
		Sub Pressed()
		  If mProject Is Nil Then Return
		  mProject.Requirements.Checks.Add(New PkgInstallCheck)
		  ReloadChecks
		  ChecksList.SelectRow(ChecksList.RowCount - 1)
		  RefreshEditor
		  If Owner <> Nil Then Owner.MarkDirty
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RemoveCheckBtn
	#tag Event
		Sub Pressed()
		  If mProject Is Nil Then Return
		  Var row As Integer = ChecksList.SelectedRow
		  If row < 0 Or row > mProject.Requirements.Checks.LastIndex Then Return
		  mProject.Requirements.Checks.RemoveAt(row)
		  ReloadChecks
		  If Owner <> Nil Then Owner.MarkDirty
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events KindPopup
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  If mUpdating Or mProject Is Nil Then Return
		  Var chk As PkgInstallCheck = Current
		  If chk Is Nil Then Return
		  chk.Kind = PkgInstallCheck.Kinds(Me.SelectedRowIndex)
		  ReloadChecks
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ValueField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  Var chk As PkgInstallCheck = Current
		  If chk Is Nil Then Return
		  chk.Value = Me.Text
		  ChecksList.SetCell(ChecksList.SelectedRow, 1, Me.Text)
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BrowseBtn
	#tag Event
		Sub Pressed()
		  Var chk As PkgInstallCheck = Current
		  If chk Is Nil Then Return
		  Var panel As New NativeFilePanel(NativeFilePanel.Modes.Open)
		  panel.SetOpenOptions(True, True, False)
		  panel.SetTexts("", Loc.kChooseItemToCheck, "")
		  If Not panel.RunModal Then Return
		  If panel.Value Is Nil Then Return
		  ValueField.Text = panel.Value.NativePath
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MessageField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  Var chk As PkgInstallCheck = Current
		  If chk Is Nil Then Return
		  chk.Message = Me.Text
		  ChecksList.SetCell(ChecksList.SelectedRow, 2, Me.Text)
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composited"
		Visible=true
		Group="Window Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
