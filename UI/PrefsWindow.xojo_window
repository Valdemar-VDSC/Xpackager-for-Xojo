#tag DesktopWindow
Begin DesktopWindow PrefsWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   True
   HasTitleBar     =   True
   Height          =   470
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   470
   MinimumWidth    =   560
   Resizeable      =   False
   Title           =   "Préférences"
   Type            =   0
   Visible         =   True
   Width           =   560
   Begin DesktopPagePanel PrefsPanel
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   470
      Index           =   -2147483648
      InitialParent   =   "PrefsWindow"
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   2
      Panels          =   ""
      Scope           =   0
      SelectedPanelIndex=   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   560
      Begin NativeLabelControl TemplatesHeader
         AllowAutoDeactivate=   True
         AllowsDefaultTighteningForTruncation=   False
         AllowsExpansionToolTips=   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   True
         Bordered        =   False
         DrawsBackground =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
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
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   56
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   400
      End
      Begin NativeTableViewControl TemplatesList
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowsColumnReordering=   True
         AllowsColumnResizing=   True
         AllowsMultipleSelection=   False
         AllowsRowReordering=   False
         AllowTabs       =   False
         AlternatingRowColors=   True
         Backdrop        =   0
         BezeledEditableCells=   False
         DoubleClickAction=   False
         Enabled         =   True
         Height          =   250
         Index           =   -2147483648
         InitialParent   =   "PrefsPanel"
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RowHeight       =   22.0
         Scope           =   0
         SelectedRow     =   0
         ShowsHeader     =   True
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   84
         Transparent     =   False
         Visible         =   True
         Width           =   520
      End
      Begin NativeButtonControl ImportTemplateBtn
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         ShowsBorderOnlyOnHover=   False
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   346
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
      End
      Begin NativeButtonControl DeleteTemplateBtn
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   278
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         ShowsBorderOnlyOnHover=   False
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   346
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   160
      End
      Begin NativeLabelControl TemplatesHint
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
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
         LineBreakMode   =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         MaximumNumberOfLines=   0
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   378
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   520
      End
      Begin NativeLabelControl NotaryHeader
         AllowAutoDeactivate=   True
         AllowsDefaultTighteningForTruncation=   False
         AllowsExpansionToolTips=   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   True
         Bordered        =   False
         DrawsBackground =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
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
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   56
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   400
      End
      Begin NativeLabelControl ProfileLabel
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
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
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   90
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   160
      End
      Begin NativeTextFieldControl ProfileField
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   190
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   88
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   350
      End
      Begin NativeLabelControl AppleIDLabel
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
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
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   122
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   160
      End
      Begin NativeTextFieldControl AppleIDField
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   190
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   120
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   350
      End
      Begin NativeLabelControl TeamIDLabel
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
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
         TabIndex        =   10
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   154
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   160
      End
      Begin NativeTextFieldControl TeamIDField
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   190
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   152
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   350
      End
      Begin NativeLabelControl PasswordLabel
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
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
         TabIndex        =   12
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   186
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   160
      End
      Begin NativeTextFieldControl PasswordField
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   190
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   184
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   350
      End
      Begin NativeLabelControl PasswordNote
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
         Height          =   46
         Index           =   -2147483648
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
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
         TabIndex        =   14
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   218
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   520
      End
      Begin NativeIconButtonControl AppleLinkBtn
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
         InitialParent   =   "PrefsPanel"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SymbolName      =   "arrow.up.forward.square"
         TabIndex        =   15
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   269
         Transparent     =   True
         Visible         =   True
         Width           =   280
      End
      Begin DesktopSeparator SepNotary
         Active          =   False
         AllowAutoDeactivate=   True
         AllowTabStop    =   True
         Enabled         =   True
         Height          =   2
         Index           =   -2147483648
         InitialParent   =   "PrefsPanel"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         PanelIndex      =   0
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   2
         Tooltip         =   ""
         Top             =   306
         Transparent     =   False
         Visible         =   True
         Width           =   520
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
      Begin NativeButtonControl CreateProfileBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Bordered        =   True
         Cancel          =   False
         Caption         =   ""
         ControlSize     =   0
         Default         =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         ShowsBorderOnlyOnHover=   False
         TabIndex        =   17
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   320
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
      End
      Begin NativeButtonControl VerifyProfileBtn
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
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   278
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         ShowsBorderOnlyOnHover=   False
         TabIndex        =   18
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   320
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin NativeLabelControl NotaryStatus
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
         Height          =   36
         Index           =   -2147483648
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
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
         TabIndex        =   19
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   354
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   520
      End
      Begin NativeLabelControl ProfileHint
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
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "PrefsPanel"
         Italic          =   False
         Left            =   20
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
         TabIndex        =   20
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   400
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   520
      End
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  Self.Title = Loc.kPreferences
		  BuildToolbar
		  TemplatesHeader.Text = Loc.kTemplates
		  If TemplatesList.ColumnCount = 0 Then
		    TemplatesList.ShowsHeader = True
		    TemplatesList.AlternatingRowColors = True
		    TemplatesList.AddColumn(Loc.kNameLabel, 340)
		    TemplatesList.AddColumn(Loc.kTypeLabel, 160)
		  End If
		  ImportTemplateBtn.Caption = Loc.kImportProjectOrTemplate
		  DeleteTemplateBtn.Caption = Loc.kDeleteThisTemplate
		  TemplatesHint.Text = Loc.kTemplatesAppearIn
		  
		  NotaryHeader.Text = Loc.kNotaryCredentialsProfile
		  ProfileLabel.Text = Loc.kProfileName
		  AppleIDLabel.Text = Loc.kAppleID
		  TeamIDLabel.Text = Loc.kTeamID
		  PasswordLabel.Text = Loc.kAppSpecificPassword
		  PasswordNote.Text = Loc.kPasswordNotStored
		  AppleLinkBtn.Caption = Loc.kGeneratePasswordLink
		  AppleLinkBtn.Tooltip = Loc.kOpenAppleAccountHelp
		  If AppleLinkBtn.Inner <> Nil Then AppleLinkBtn.Inner.SetBordered(False)
		  CreateProfileBtn.Caption = Loc.kCreateOrUpdateProfile
		  VerifyProfileBtn.Caption = Loc.kVerifyButton
		  ProfileHint.Text = Loc.kProfileNameUsedIn
		  
		  ProfileField.Text = Prefs.NotaryProfile
		  ProfileField.Hint = "XPackager"
		  AppleIDField.Text = Prefs.NotaryAppleID
		  AppleIDField.Hint = Loc.kAppleIDPlaceholder
		  TeamIDField.Text = Prefs.NotaryTeamID
		  TeamIDField.Hint = Loc.kTeamIDPlaceholder
		  
		  ReloadTemplates
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub BuildToolbar()
		  // Barre d'outils de réglages, comme le TabView à tabItem de la version SwiftUI.
		  mBar = New NativeToolbar("XPackagerPrefsToolbar")
		  AddHandler mBar.ItemPressed, AddressOf ToolbarItemPressed
		  
		  mBar.AddItem(MakeItem(kTemplatesItem, Loc.kTemplates, "square.grid.2x2"))
		  mBar.AddItem(MakeItem(kNotaryItem, Loc.kNotarization, "checkmark.seal"))
		  
		  // Déclaré AVANT Attach : c'est au setToolbar: qu'AppKit interroge le delegate.
		  mBar.SetSelectableItems(kTemplatesItem, kNotaryItem)
		  mBar.Attach(Self)
		  
		  // Style et mode ne prennent qu'une fois la barre attachée.
		  mBar.Style = NativeToolbar.ToolbarStyles.Preference
		  mBar.DisplayMode = NativeToolbar.DisplayModes.IconAndLabel
		  mBar.AllowsUserCustomization = False
		  SelectTab(0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MakeItem(identifier As String, label As String, symbol As String) As NativeToolbarItem
		  Var item As New NativeToolbarItem(identifier)
		  item.Label = label
		  item.SetIcon(symbol)
		  Return item
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectTab(index As Integer)
		  PrefsPanel.SelectedPanelIndex = index
		  If index = 0 Then
		    mBar.SelectedItemIdentifier = kTemplatesItem
		  Else
		    mBar.SelectedItemIdentifier = kNotaryItem
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ToolbarItemPressed(sender As NativeToolbar, item As NativeToolbarItem)
		  #Pragma Unused sender
		  Select Case item.ItemIdentifier
		  Case kTemplatesItem
		    SelectTab(0)
		  Case kNotaryItem
		    SelectTab(1)
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ErrorMessage(log As String) As String
		  // Extrait la ligne utile de la sortie notarytool (message générique sur stdout,
		  // erreur réelle sur stderr).
		  Var lines() As String
		  For Each raw As String In log.Split(EndOfLine)
		    Var t As String = raw.Trim
		    If t <> "" Then lines.Add(t)
		  Next
		  For Each t As String In lines
		    If t.Lowercase.IndexOf("error") >= 0 Then Return t
		  Next
		  For i As Integer = lines.LastIndex DownTo 0
		    If Not lines(i).BeginsWith("This process stores") _
		    And Not lines(i).BeginsWith("Validating your credentials") Then Return lines(i)
		  Next
		  If lines.Count > 0 Then Return lines(lines.LastIndex)
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReloadTemplates()
		  TemplatesList.RemoveAllRows
		  mTemplates = TemplateManager.AllTemplates
		  For Each t As ProjectTemplate In mTemplates
		    Var kind As String = Loc.kMyTemplates
		    If t.IsBuiltIn Then kind = Loc.kBuiltInTemplates
		    TemplatesList.AddRow(t.Name, kind)
		  Next
		  If mTemplates.Count = 0 Then TemplatesHint.Text = Loc.kNoUserTemplate
		  DeleteTemplateBtn.Enabled = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetStatus(text As String, ok As Boolean, known As Boolean)
		  NotaryStatus.Text = text
		  If Not known Then
		    NotaryStatus.TextColor = &c8E8E93
		  ElseIf ok Then
		    NotaryStatus.TextColor = &c30D158
		  Else
		    NotaryStatus.TextColor = &cFF3B30
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mBar As NativeToolbar
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTemplates() As ProjectTemplate
	#tag EndProperty


	#tag Constant, Name = kNotaryItem, Type = String, Dynamic = False, Default = \"notary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTemplatesItem, Type = String, Dynamic = False, Default = \"templates", Scope = Private
	#tag EndConstant

#tag EndWindowCode

#tag Events TemplatesList
	#tag Event
		Sub SelectionChanged(row As Integer)
		  // Xojo évalue les deux membres d'un And : on ne peut pas indexer dans la foulée.
		  Var deletable As Boolean = False
		  If row >= 0 And row <= mTemplates.LastIndex Then
		    deletable = Not mTemplates(row).IsBuiltIn
		  End If
		  DeleteTemplateBtn.Enabled = deletable
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImportTemplateBtn
	#tag Event
		Sub Pressed()
		  Var panel As New NativeFilePanel(NativeFilePanel.Modes.Open)
		  panel.SetOpenOptions(True, False, False)
		  panel.SetAllowedExtensions("xpackager", "xpkgproj", "xpackmodel")
		  panel.SetTexts(Loc.kImportTemplate, "", "")
		  If Not panel.RunModal Then Return
		  Var f As FolderItem = panel.Value
		  If f Is Nil Then Return
		  Var suggested As String = f.Name
		  Var dot As Integer = suggested.LastIndexOf(".")
		  If dot > 0 Then suggested = suggested.Left(dot)
		  Var name As String = XPUI.PromptForName(Loc.kNewTemplate, Loc.kTemplateName, suggested)
		  If name = "" Then Return
		  Try
		    TemplateManager.ImportFile(f, name)
		  Catch err As RuntimeException
		    XPUI.ShowError(err.Message)
		    Return
		  End Try
		  ReloadTemplates
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteTemplateBtn
	#tag Event
		Sub Pressed()
		  Var row As Integer = TemplatesList.SelectedRow
		  If row < 0 Or row > mTemplates.LastIndex Then Return
		  If mTemplates(row).IsBuiltIn Then Return
		  TemplateManager.DeleteTemplate(mTemplates(row))
		  ReloadTemplates
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AppleLinkBtn
	#tag Event
		Sub Pressed()
		  XPUI.OpenURL("https://account.apple.com/account/manage")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CreateProfileBtn
	#tag Event
		Sub Pressed()
		  Var profile As String = ProfileField.Text.Trim
		  Var appleID As String = AppleIDField.Text.Trim
		  Var teamID As String = TeamIDField.Text.Trim
		  Var password As String = PasswordField.Text
		  If profile = "" Or appleID = "" Or teamID = "" Or password.Trim = "" Then Return
		  
		  SetStatus(Loc.kCreatingProfile, False, False)
		  Var log As String
		  Var ok As Boolean = SigningIdentity.StoreNotaryProfile(profile, appleID, teamID, password, log)
		  If ok Then
		    Prefs.NotaryProfile = profile
		    Prefs.NotaryAppleID = appleID
		    Prefs.NotaryTeamID = teamID
		    Prefs.Save
		    PasswordField.Text = ""
		    SetStatus("« " + profile + " » ✓", True, True)
		  Else
		    SetStatus(ErrorMessage(log), False, True)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events VerifyProfileBtn
	#tag Event
		Sub Pressed()
		  Var profile As String = ProfileField.Text.Trim
		  If profile = "" Then Return
		  SetStatus(Loc.kVerifyingEllipsis, False, False)
		  Var ok As Boolean = SigningIdentity.ValidateNotaryProfile(profile)
		  If ok Then
		    Prefs.NotaryProfile = profile
		    Prefs.Save
		  End If
		  SetStatus("« " + profile + " »", ok, True)
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
