#tag DesktopWindow
Begin DesktopContainer PresentationPanel
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   750
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
   Begin NativeGroupBoxControl AssistantBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#Loc.kInstallerAssistant"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   98
      Index           =   -2147483648
      InitialParent   =   "PresentationPanel"
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
      Begin NativeLabelControl TitleLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "AssistantBox"
         Italic          =   False
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
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
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin NativeTextFieldControl TitleField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   24
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "AssistantBox"
         Italic          =   False
         Left            =   170
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
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
         Width           =   502
      End
      Begin NativeLabelControl TitleHelp
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "AssistantBox"
         Italic          =   False
         Left            =   170
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   80
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   502
      End
   End
   Begin NativeGroupBoxControl ScreenBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#Loc.kWelcome"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   318
      Index           =   -2147483648
      InitialParent   =   "PresentationPanel"
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
      Top             =   126
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   668
      Begin NativeSegmentedButtonControl ScreenSelector
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "ScreenBox"
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   160
         Transparent     =   False
         Visible         =   True
         Width           =   400
      End
      Begin NativePopupMenuControl LangPopup
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "ScreenBox"
         Left            =   444
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   158
         Transparent     =   False
         Visible         =   True
         Width           =   166
      End
      Begin DesktopCanvas LangMenuHost
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "ScreenBox"
         Left            =   616
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   158
         Transparent     =   True
         Visible         =   True
         Width           =   44
      End
      Begin DesktopCanvas RTFCanvas
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   180
         Index           =   -2147483648
         InitialParent   =   "ScreenBox"
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   192
         Transparent     =   False
         Visible         =   True
         Width           =   624
      End
      Begin NativeLabelControl FileLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "ScreenBox"
         Italic          =   False
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   380
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   380
      End
      Begin NativeLabelControl ResourceHint
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "ScreenBox"
         Italic          =   False
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   400
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   380
      End
      Begin NativeButtonControl ImportBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   ""
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "ScreenBox"
         Italic          =   False
         Left            =   452
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   378
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
      End
      Begin NativeButtonControl UseEditorBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   ""
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "ScreenBox"
         Italic          =   False
         Left            =   608
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   378
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   64
      End
   End
   Begin NativeGroupBoxControl BackgroundBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#Loc.kBackgroundImage"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   76
      Index           =   -2147483648
      InitialParent   =   "PresentationPanel"
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
      Top             =   456
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   668
      Begin NativeLabelControl BgLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "BackgroundBox"
         Italic          =   False
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
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
         Top             =   490
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin NativeTextFieldControl BgField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   24
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "BackgroundBox"
         Italic          =   False
         Left            =   170
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
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
         Top             =   488
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   380
      End
      Begin NativeButtonControl BgBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   ""
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "BackgroundBox"
         Italic          =   False
         Left            =   566
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   488
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   106
      End
   End
   Begin NativeGroupBoxControl EndBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#Loc.kAtEndOfInstall"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   210
      Index           =   -2147483648
      InitialParent   =   "PresentationPanel"
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TitleFontSize   =   0.0
      Tooltip         =   ""
      Top             =   544
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   668
      Begin NativeLabelControl FinalActionLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Italic          =   False
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
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
         Top             =   578
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin NativePopupMenuControl ConclusionPopup
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         InitialValue    =   ""
         Italic          =   False
         Left            =   170
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   -1
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   576
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   240
      End
      Begin NativeLabelControl ConclusionHelp
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Italic          =   False
         Left            =   170
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   606
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   494
      End
      Begin NativeLabelControl LaunchCheckLabel
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
         InitialParent   =   "EndBox"
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
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   641
         Transparent     =   False
         TruncatesLastVisibleLine=   False
         Underline       =   False
         Visible         =   True
         Width           =   570
      End
      Begin NativeSwitchControl LaunchCheck
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         ControlSize     =   2
         Enabled         =   True
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Left            =   620
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   641
         Transparent     =   True
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin DesktopSeparator EndBoxRule1
         Active          =   False
         AllowAutoDeactivate=   True
         AllowTabStop    =   True
         Enabled         =   True
         Height          =   2
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         PanelIndex      =   0
         Scope           =   0
         TabIndex        =   90
         TabPanelIndex   =   0
         Tooltip         =   ""
         Top             =   632
         Transparent     =   False
         Visible         =   True
         Width           =   624
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
      Begin DesktopSeparator EndBoxRule2
         Active          =   False
         AllowAutoDeactivate=   True
         AllowTabStop    =   True
         Enabled         =   True
         Height          =   2
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         PanelIndex      =   0
         Scope           =   0
         TabIndex        =   91
         TabPanelIndex   =   0
         Tooltip         =   ""
         Top             =   669
         Transparent     =   False
         Visible         =   True
         Width           =   624
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
      Begin NativeLabelControl AppPathLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   18
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Italic          =   False
         Left            =   56
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   680
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   160
      End
      Begin NativeTextFieldControl AppPathField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   24
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Italic          =   False
         Left            =   222
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
         Top             =   678
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   330
      End
      Begin NativeButtonControl AppPathBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   ""
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Italic          =   False
         Left            =   566
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   678
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   106
      End
      Begin NativeLabelControl LaunchHelp
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Italic          =   False
         Left            =   56
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c8E8E93
         Tooltip         =   ""
         Top             =   710
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   604
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
		Sub FitSwitches()
		  // Appelé par ProjectWindow une fois la page affichée : la bibliothèque
		  // héberge l'interrupteur au premier dessin et lui impose alors son cadre.
		  XPUI.FitSwitch(LaunchCheck)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Relayout()
		  // Le contenu s'arrêtait à 754 pt pour un volet qui en fait 725 à la taille de
		  // fenêtre par défaut : le dernier groupe était coupé. La zone de l'éditeur RTF
		  // absorbe donc la différence — c'est l'élément élastique de la page, comme en
		  // SwiftUI où l'éditeur occupe la place restante — et les groupes du bas se
		  // recalent d'autant.
		  Var pf As Cocoa.NSRect = Cocoa.ViewFrame(Self.Handle)
		  If pf.height <= 0 Then Return
		  CaptureBaseline
		  If mItems.LastIndex < 0 Then Return
		  
		  Const kMargin = 16
		  Const kGap = 12
		  Const kMinScreen = 190
		  Var fixedH As Double = kMargin + mBaseH(0) + kGap + kGap + mBaseH(3) + kGap + mBaseH(4) + kMargin
		  Var screenH As Double = Max(kMinScreen, pf.height - fixedH)
		  Var dh As Double = screenH - mBaseH(1)
		  
		  For i As Integer = 0 To mItems.LastIndex
		    Select Case i
		    Case 0          // Assistant : inchangé
		      Place(i, 0, 0)
		    Case 1, 2       // le groupe de l'éditeur et son canevas grandissent
		      Place(i, 0, dh)
		    Else            // tout ce qui suit descend d'autant
		      Place(i, dh, 0)
		    End Select
		  Next
		  XPUI.FitSwitch(LaunchCheck)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CaptureBaseline()
		  // Positions de conception, relevées une fois : toutes les poses s'y rapportent,
		  // sinon les décalages s'accumuleraient. L'ordre compte : Assistant, groupe de
		  // l'éditeur, canevas, puis ce qui suit l'éditeur.
		  If mItems.LastIndex >= 0 Then Return
		  mItems.Add(AssistantBox)      // 0
		  mItems.Add(ScreenBox)         // 1
		  mItems.Add(RTFCanvas)         // 2
		  mItems.Add(BackgroundBox)     // 3
		  mItems.Add(EndBox)            // 4
		  mItems.Add(ImportBtn)
		  mItems.Add(UseEditorBtn)
		  mItems.Add(FileLabel)
		  mItems.Add(ResourceHint)
		  mItems.Add(BgField)
		  mItems.Add(BgBtn)
		  mItems.Add(BgLabel)
		  mItems.Add(ConclusionPopup)
		  mItems.Add(FinalActionLabel)
		  mItems.Add(ConclusionHelp)
		  mItems.Add(EndBoxRule1)
		  mItems.Add(LaunchCheckLabel)
		  mItems.Add(LaunchCheck)
		  mItems.Add(EndBoxRule2)
		  mItems.Add(AppPathField)
		  mItems.Add(AppPathBtn)
		  mItems.Add(AppPathLabel)
		  mItems.Add(LaunchHelp)
		  For Each c As DesktopUIControl In mItems
		    mBaseTop.Add(c.Top)
		    mBaseH.Add(c.Height)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Place(index As Integer, dy As Double, dh As Double)
		  // Décalage vertical et variation de hauteur, à partir des valeurs de conception.
		  // L'abscisse et la largeur restent celles que Xojo a calculées par ancrages : on
		  // relit le cadre réel plutôt que de les recalculer.
		  Var c As DesktopUIControl = mItems(index)
		  If c Is Nil Then Return
		  Var f As Cocoa.NSRect = XPUI.FrameInPanel(Self.Handle, c)
		  If f.width <= 0 Then Return
		  Var h As Double = mBaseH(index) + dh
		  If h <> f.height Then c.Height = h
		  XPUI.PinView(Self.Handle, c.Handle, f.x, mBaseTop(index) + dy, f.width, h)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyTexts()
		  mUpdating = True
		  TitleLabel.Text = Loc.kTitleLabel
		  TitleHelp.Text = Loc.kTitleEmptyHelp
		  ImportBtn.Caption = Loc.kImportFileEllipsis
		  UseEditorBtn.Caption = Loc.kUseTheEditor
		  BgLabel.Text = Loc.kImagePng
		  BgBtn.Caption = Loc.kChooseEllipsis
		  FinalActionLabel.Text = Loc.kFinalAction
		  LaunchCheckLabel.Text = Loc.kLaunchAnApp
		  AppPathLabel.Text = Loc.kInstalledAppField
		  AppPathBtn.Caption = Loc.kChooseEllipsis
		  ScreenSelector.Labels = Loc.kWelcome + ";" + Loc.kReadMe + ";" _
		  + Loc.kLicense + ";" + Loc.kConclusion
		  ScreenSelector.SelectedIndex = 0
		  ConclusionPopup.RemoveAllRows
		  ConclusionPopup.AddRow(Loc.kConclusionNone)
		  ConclusionPopup.AddRow(Loc.kConclusionLogout)
		  ConclusionPopup.AddRow(Loc.kConclusionRestart)
		  ConclusionPopup.AddRow(Loc.kConclusionShutdown)
		  ConclusionPopup.SelectedRowIndex = 0
		  mUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ChooseFile(prompt As String) As FolderItem
		  Var panel As New NativeFilePanel(NativeFilePanel.Modes.Open)
		  panel.SetOpenOptions(True, False, False)
		  panel.SetTexts(prompt, "", "")
		  If Not panel.RunModal Then Return Nil
		  Return panel.Value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CurrentPath() As String
		  Return CurrentTexts.Path(mScreen)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CurrentRTF() As String
		  Return CurrentTexts.RTF(mScreen)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CurrentText() As String
		  Return CurrentTexts.Text(mScreen)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CurrentTexts() As PkgPresentationTexts
		  // Les textes de la langue en cours d'édition ; "" est la référence.
		  Var t As PkgPresentationTexts = mProject.Presentation.Texts(mLang)
		  If t Is Nil Then
		    // Langue retirée entre-temps : on retombe sur la référence.
		    mLang = ""
		    t = mProject.Presentation.Base
		  End If
		  Return t
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnsureLanguageMenu()
		  // Un seul déroulant à droite du sélecteur d'écran : les langues à ajouter, puis
		  // retirer la langue courante et y recopier la référence. Déroulant sans bordure
		  // hébergé dans un canevas, comme le menu des variables des Réglages.
		  If mLangMenu <> Nil Then Return
		  mCandidates.RemoveAll
		  For Each code As String In Array("en", "fr", "de", "es", "pt", "pt-BR", "it", "nl", _
		    "sv", "da", "nb", "fi", "pl", "cs", "ru", "uk", "tr", "el", "ar", "he", _
		    "ja", "ko", "zh-Hans", "zh-Hant", "hi", "id", "vi", "th")
		    mCandidates.Add(code)
		  Next
		  Var entries() As String
		  For Each code As String In mCandidates
		    entries.Add(LanguageRowLabel(code))
		  Next
		  Var w As Double
		  mLangMenu = XPUI.MakePullDown("", "globe", entries, w)
		  mLangMenu.AddSeparator
		  mLangMenu.AddItem(Loc.kOtherLanguageEllipsis)
		  mLangMenu.AddSeparator
		  mLangMenu.AddItem(Loc.kRemoveLanguage)
		  mLangMenu.AddItem(Loc.kCopyFromReference)
		  mLangMenu.AddSeparator
		  mLangMenu.AddItem(Loc.kSetReferenceLanguage)
		  // titre 0, langues 1…N, séparateur, « Autre langue… », séparateur, retirer,
		  // copier, séparateur, langue de la référence
		  mIdxOther = mCandidates.Count + 2
		  mIdxRemove = mIdxOther + 2
		  mIdxSeed = mIdxRemove + 1
		  mIdxBase = mIdxSeed + 2
		  
		  // NSMenu active ses items tout seul faute de cible : on reprend la main pour
		  // pouvoir griser « retirer » et « copier » sur la référence.
		  Declare Function menuOf Lib "AppKit" Selector "menu" (p As Ptr) As Ptr
		  Declare Sub setAutoenables Lib "AppKit" Selector "setAutoenablesItems:" (m As Ptr, flag As Boolean)
		  Declare Sub setToolTip Lib "AppKit" Selector "setToolTip:" (v As Ptr, s As Ptr)
		  Var menu As Ptr = menuOf(mLangMenu.Handle)
		  If menu <> Nil Then setAutoenables(menu, False)
		  setToolTip(mLangMenu.Handle, Cocoa.NSStr(Loc.kManageLanguages))
		  
		  AddHandler mLangMenu.Changed, AddressOf LanguageMenuChosen
		  NativeControlHost.Fill(LangMenuHost, mLangMenu.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function LanguageRowLabel(code As String) As String
		  Return XPUI.LanguageLabel(code)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LanguageMenuChosen(sender As NativePopupButton, index As Integer)
		  #Pragma Unused sender
		  If mProject Is Nil Then Return
		  If index = mIdxRemove Then
		    RemoveCurrentLanguage
		    Return
		  End If
		  If index = mIdxSeed Then
		    SeedCurrentScreen
		    Return
		  End If
		  If index = mIdxBase Then
		    SetReferenceLanguage
		    Return
		  End If
		  
		  Var code As String
		  If index = mIdxOther Then
		    code = XPUI.PromptForName(Loc.kAddLanguage, Loc.kLanguageCodePrompt, "")
		    If code = "" Then Return
		    If PkgPresentation.NormalizeLanguage(code) = "" Then
		      XPUI.ShowError(Loc.kBadLanguageCode)
		      Return
		    End If
		  Else
		    Var i As Integer = index - 1
		    If i < 0 Or i > mCandidates.LastIndex Then Return
		    code = mCandidates(i)
		  End If
		  
		  // Un paquet multilingue range chaque langue dans son .lproj, référence comprise :
		  // sans son code, la construction n'aurait pas de dossier où l'écrire.
		  If mProject.Presentation.BaseLanguage.Trim = "" Then
		    SetReferenceLanguage
		    If mProject.Presentation.BaseLanguage.Trim = "" Then Return
		  End If
		  
		  Var added As String = mProject.Presentation.AddLanguage(code)
		  If added = "" Then
		    // Déjà déclarée : on s'y rend simplement.
		    added = PkgPresentation.NormalizeLanguage(code)
		  Else
		    Touch
		  End If
		  SelectLanguage(added)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveCurrentLanguage()
		  If mProject Is Nil Or mLang = "" Then Return
		  // Le texte en cours de frappe vit encore dans la vue : sans ce Flush, une langue
		  // tout juste renseignée paraissait vide et partait sans rien demander.
		  Flush
		  Var texts As PkgPresentationTexts = mProject.Presentation.Texts(mLang)
		  // Confirmation seulement s'il y a quelque chose à perdre.
		  If texts <> Nil And Not texts.IsEmpty Then
		    If Not XPUI.Confirm(Loc.kRemoveLanguageQuestion, LanguageRowLabel(mLang), Loc.kRemoveButton) Then Return
		  End If
		  mProject.Presentation.RemoveLanguage(mLang)
		  mLang = ""
		  Touch
		  RebuildLanguagePopup
		  RefreshTitleField
		  ShowScreen(mScreen)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetReferenceLanguage()
		  // Étiquette des textes de référence : elle n'entre pas dans la construction —
		  // le fichier à plat reste le repli — mais elle dit dans quelle langue ils sont.
		  If mProject Is Nil Then Return
		  // Vide efface l'étiquette ; Annuler ne touche à rien. Les deux renvoient la
		  // même chaîne, d'où le drapeau.
		  Var accepted As Boolean
		  Var entered As String = XPUI.PromptForText(Loc.kSetReferenceLanguage, _
		  Loc.kReferenceLanguagePrompt, mProject.Presentation.BaseLanguage, accepted)
		  If Not accepted Then Return
		  Var code As String = PkgPresentation.NormalizeLanguage(entered)
		  If entered.Trim <> "" And code = "" Then
		    XPUI.ShowError(Loc.kBadLanguageCode)
		    Return
		  End If
		  If code = mProject.Presentation.BaseLanguage Then Return
		  mProject.Presentation.BaseLanguage = code
		  Touch
		  RebuildLanguagePopup
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SeedCurrentScreen()
		  // Copie l'écran affiché depuis la référence : on traduit à partir du texte
		  // existant au lieu de le retaper.
		  If mProject Is Nil Or mLang = "" Then Return
		  Var base As PkgPresentationTexts = mProject.Presentation.Base
		  Var here As PkgPresentationTexts = CurrentTexts
		  here.SetPath(mScreen, base.Path(mScreen))
		  here.SetRTF(mScreen, base.RTF(mScreen))
		  here.SetText(mScreen, base.Text(mScreen))
		  Touch
		  ShowScreen(mScreen)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RebuildLanguagePopup()
		  // Référence puis les langues déclarées, dans l'ordre du modèle.
		  If mProject Is Nil Then Return
		  mUpdating = True
		  LangPopup.RemoveAllRows
		  Var refRow As String = Loc.kReferenceTexts
		  Var base As String = mProject.Presentation.BaseLanguage.Trim
		  If base <> "" Then refRow = refRow + " (" + base + ")"
		  LangPopup.AddRow(refRow)
		  Var selected As Integer = 0
		  Var codes() As String = mProject.Presentation.Languages
		  For i As Integer = 0 To codes.LastIndex
		    LangPopup.AddRow(LanguageRowLabel(codes(i)) + XPUI.LanguageProgress(mProject, codes(i)))
		    If codes(i) = mLang Then selected = i + 1
		  Next
		  If selected = 0 Then mLang = ""
		  LangPopup.SelectedRowIndex = selected
		  mUpdating = False
		  UpdateLanguageState
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectLanguage(code As String)
		  // Toujours vider l'éditeur dans la langue qu'on quitte avant de changer.
		  Flush
		  mLang = PkgPresentation.NormalizeLanguage(code)
		  RebuildLanguagePopup
		  RefreshTitleField
		  ShowScreen(mScreen)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshTitleField()
		  // Le titre est traduisible comme les écrans : il suit donc le popup de langue.
		  If mProject Is Nil Then Return
		  mUpdating = True
		  TitleField.Text = CurrentTexts.Title
		  If mLang = "" Then
		    TitleField.Hint = mProject.Settings.PackageName
		    If TitleField.Hint = "" Then TitleField.Hint = Loc.kProductNamePlaceholder
		    TitleHelp.Text = Loc.kTitleEmptyHelp
		  Else
		    TitleField.Hint = mProject.Presentation.Title
		    TitleHelp.Text = Loc.kTitleLanguageHelp
		  End If
		  mUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateLanguageState()
		  // Retirer et copier n'ont de sens que hors de la référence ; le rappel sous
		  // l'éditeur dit ce que fera l'installateur pour un écran laissé vide.
		  Var localized As Boolean = mLang <> ""
		  If mLangMenu <> Nil Then
		    Declare Function itemAtIndex Lib "AppKit" Selector "itemAtIndex:" (p As Ptr, i As Integer) As Ptr
		    Declare Sub setEnabled Lib "AppKit" Selector "setEnabled:" (item As Ptr, flag As Boolean)
		    Var it As Ptr = itemAtIndex(mLangMenu.Handle, mIdxRemove)
		    If it <> Nil Then setEnabled(it, localized)
		    it = itemAtIndex(mLangMenu.Handle, mIdxSeed)
		    If it <> Nil Then setEnabled(it, localized)
		  End If
		  If mProject Is Nil Then Return
		  If localized And Not CurrentTexts.HasContent(mScreen) Then
		    ResourceHint.Text = Loc.kLanguageEmptyHint
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EncodingLooksSane(f As FolderItem) As Boolean
		  // Un RTF en page de codes Windows n'a jamais d'octet ≥ 0x80 : tout accent y est
		  // échappé (\'e9). S'il en contient, il a été écrit en UTF-8 brut et l'installateur
		  // affichera « Ã© ». Le fichier étant recopié tel quel dans le paquet, autant
		  // prévenir avant plutôt que de le découvrir à l'installation.
		  If PkgFS.FileExtension(f.Name).Lowercase <> "rtf" Then Return True
		  
		  Var data As String
		  Try
		    Var bs As BinaryStream = BinaryStream.Open(f, False)
		    Var n As Integer = 2097152
		    If bs.Length < n Then n = bs.Length
		    data = bs.Read(n)
		    bs.Close
		  Catch err As RuntimeException
		    Return True
		  End Try
		  
		  Var mb As MemoryBlock = data
		  If mb Is Nil Or mb.Size = 0 Then Return True
		  Var headLen As Integer = 512
		  If mb.Size < headLen Then headLen = mb.Size
		  Var head As String = mb.StringValue(0, headLen)
		  // Pas de page de codes annoncée, ou UTF-8 assumé : rien à redire.
		  If head.IndexOf("\ansi") < 0 Then Return True
		  If head.IndexOf("\ansicpg65001") >= 0 Then Return True
		  
		  Var raw As Boolean
		  For i As Integer = 0 To mb.Size - 1
		    If mb.Byte(i) >= 128 Then
		      raw = True
		      Exit
		    End If
		  Next
		  If Not raw Then Return True
		  
		  Return XPUI.Confirm(Loc.kRTFEncodingQuestion, Loc.kRTFEncodingDetail, Loc.kImportAnyway)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnsureEditor()
		  If mEditor <> Nil Then Return
		  mEditor = New NativeRichTextEditor(RTFCanvas.Width, RTFCanvas.Height)
		  NativeControlHost.Fill(RTFCanvas, mEditor.Handle)
		  AddHandler mEditor.Changed, AddressOf EditorChanged
		  AddHandler mEditor.CommandUsed, AddressOf EditorCommandUsed
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EditorChanged(sender As NativeRichTextEditor)
		  // La frappe et la mise en forme rendent le document modifié : sans ça,
		  // un texte saisi puis la fenêtre fermée disparaissait sans avertissement.
		  #Pragma Unused sender
		  Touch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EditorCommandUsed(sender As NativeRichTextEditor, index As Integer)
		  #Pragma Unused sender
		  #Pragma Unused index
		  Touch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Flush()
		  // Sérialise l'éditeur riche vers le modèle (RTF via un fichier temporaire :
		  // NSTextView n'expose pas de chaîne RTF directe).
		  If mEditor Is Nil Or mProject Is Nil Then Return
		  If CurrentPath <> "" Then Return
		  Var tmp As FolderItem = SpecialFolder.Temporary.Child("xpackager-rtf-" + PkgIDs.NewID + ".rtf")
		  mEditor.Editor.SaveRTF(tmp)
		  Var rtf As String = PkgFS.ReadTextFile(tmp)
		  PkgFS.DeleteRecursively(tmp)
		  SetCurrentRTF(rtf)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadProject(p As PackageProject)
		  mProject = p
		  EnsureEditor
		  EnsureLanguageMenu
		  mScreen = 0
		  mLang = ""
		  RebuildLanguagePopup
		  Reload
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reload()
		  If mProject Is Nil Then Return
		  mUpdating = True
		  TitleField.Text = CurrentTexts.Title
		  TitleField.Hint = mProject.Settings.PackageName
		  If TitleField.Hint = "" Then TitleField.Hint = Loc.kProductNamePlaceholder
		  BgField.Text = mProject.Presentation.BackgroundPath
		  ConclusionPopup.SelectedRowIndex = Integer(mProject.PostInstall.Conclusion)
		  LaunchCheck.Value = mProject.PostInstall.LaunchApp
		  AppPathField.Text = mProject.PostInstall.AppPath
		  mUpdating = False
		  ShowScreen(mScreen)
		  UpdateEndSection
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetCurrentPath(value As String)
		  CurrentTexts.SetPath(mScreen, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetCurrentRTF(value As String)
		  CurrentTexts.SetRTF(mScreen, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowScreen(index As Integer)
		  mScreen = index
		  Var screenName As String
		  Select Case index
		  Case 1
		    screenName = Loc.kReadMe
		  Case 2
		    screenName = Loc.kLicense
		  Case 3
		    screenName = Loc.kConclusion
		  Case Else
		    screenName = Loc.kWelcome
		  End Select
		  // Le titre du groupe porte la langue : on sait toujours ce qu'on édite.
		  If mLang = "" Then
		    ScreenBox.Caption = screenName
		  Else
		    ScreenBox.Caption = screenName + " — " + LanguageRowLabel(mLang)
		  End If
		  If mProject Is Nil Then Return
		  EnsureEditor
		  mUpdating = True
		  Var path As String = CurrentPath
		  Var external As Boolean = path.Trim <> ""
		  RTFCanvas.Visible = Not external
		  UseEditorBtn.Visible = external
		  If external Then
		    Var f As FolderItem = PkgFS.ItemAtPath(path)
		    Var name As String = path
		    If f <> Nil Then name = f.Name
		    FileLabel.Text = Loc.kFileLabel + " : " + name
		    ResourceHint.Text = Loc.kExternalFileUsed
		    ImportBtn.Caption = Loc.kChangeEllipsis
		  Else
		    FileLabel.Text = ""
		    ResourceHint.Text = Loc.kRTFStoredInProject
		    ImportBtn.Caption = Loc.kImportFileEllipsis
		    Var rtf As String = CurrentRTF
		    If rtf <> "" Then
		      Var tmp As FolderItem = SpecialFolder.Temporary.Child("xpackager-load-" + PkgIDs.NewID + ".rtf")
		      PkgFS.WriteTextFile(tmp, rtf)
		      mEditor.Editor.LoadRTF(tmp)
		      PkgFS.DeleteRecursively(tmp)
		    Else
		      // Poser le texte tel quel laissait la vue garder ses attributs de frappe :
		      // un écran en gras teintait le texte simple du suivant, et le Flush écrivait
		      // ce gras dans le projet. Passer par un RTF minimal remet tout à plat.
		      Var tmp As FolderItem = SpecialFolder.Temporary.Child("xpackager-plain-" + PkgIDs.NewID + ".rtf")
		      PkgFS.WriteTextFile(tmp, DistributionXML.TextToRTF(CurrentText))
		      mEditor.Editor.LoadRTF(tmp)
		      PkgFS.DeleteRecursively(tmp)
		    End If
		  End If
		  mUpdating = False
		  UpdateLanguageState
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Touch()
		  If mUpdating Or mProject Is Nil Then Return
		  If Owner <> Nil Then Owner.MarkDirty
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateEndSection()
		  If mProject Is Nil Then Return
		  Var launching As Boolean = mProject.PostInstall.LaunchApp
		  AppPathLabel.Visible = launching
		  AppPathField.Visible = launching
		  AppPathBtn.Visible = launching
		  If mProject.PostInstall.Conclusion = PkgPostInstall.Conclusions.NoAction Then
		    ConclusionHelp.Text = ""
		  Else
		    ConclusionHelp.Text = Loc.kOnConclusionHelp
		  End If
		  If Not launching Then
		    LaunchHelp.Text = ""
		  ElseIf mProject.PostInstall.Conclusion = PkgPostInstall.Conclusions.Restart _
		    Or mProject.PostInstall.Conclusion = PkgPostInstall.Conclusions.Shutdown Then
		    LaunchHelp.Text = Loc.kRestartCancelsLaunch
		  Else
		    LaunchHelp.Text = Loc.kLaunchAppHelp
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mBaseH() As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mBaseTop() As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mItems() As DesktopUIControl
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mEditor As NativeRichTextEditor
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mProject As PackageProject
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mScreen As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUpdating As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCandidates() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLang As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLangMenu As NativePopupButton
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIdxBase As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIdxOther As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIdxRemove As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIdxSeed As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Owner As ProjectWindow
	#tag EndProperty
#tag EndWindowCode

#tag Events TitleField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  CurrentTexts.Title = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScreenSelector
	#tag Event
		Sub SelectionChanged(index As Integer)
		  Flush
		  ShowScreen(index)
		  // L'avancement des traductions vient de changer si on a saisi quelque chose.
		  // Le rafraîchir ici et non dans ShowScreen : reposer les lignes du popup depuis
		  // le chemin d'affichage relançait l'affichage et l'application n'ouvrait plus.
		  RebuildLanguagePopup
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LangPopup
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  #Pragma Unused item
		  If mUpdating Or mProject Is Nil Then Return
		  // Reposer les lignes du popup rejoue l'événement : sans ce garde-fou, le
		  // rafraîchissement de l'avancement relançait un changement de langue en boucle.
		  Var row As Integer = LangPopup.SelectedRowIndex
		  Var chosen As String
		  If row > 0 Then
		    Var codes() As String = mProject.Presentation.Languages
		    Var i As Integer = row - 1
		    If i > codes.LastIndex Then Return
		    chosen = codes(i)
		  End If
		  If chosen = mLang Then Return
		  SelectLanguage(chosen)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImportBtn
	#tag Event
		Sub Pressed()
		  If mProject Is Nil Then Return
		  Var f As FolderItem = ChooseFile(Loc.kImportFileEllipsis)
		  If f Is Nil Then Return
		  If Not EncodingLooksSane(f) Then Return
		  Flush
		  SetCurrentPath(f.NativePath)
		  ShowScreen(mScreen)
		  If Owner <> Nil Then Owner.MarkDirty
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UseEditorBtn
	#tag Event
		Sub Pressed()
		  If mProject Is Nil Then Return
		  SetCurrentPath("")
		  ShowScreen(mScreen)
		  If Owner <> Nil Then Owner.MarkDirty
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BgField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  mProject.Presentation.BackgroundPath = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BgBtn
	#tag Event
		Sub Pressed()
		  If mProject Is Nil Then Return
		  Var f As FolderItem = ChooseFile(Loc.kBackgroundImage)
		  If f Is Nil Then Return
		  BgField.Text = f.NativePath
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ConclusionPopup
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  If mUpdating Or mProject Is Nil Then Return
		  mProject.PostInstall.Conclusion = PkgPostInstall.Conclusions(Me.SelectedRowIndex)
		  UpdateEndSection
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LaunchCheck
	#tag Event
		Sub ValueChanged(value As Boolean)
		  If mUpdating Or mProject Is Nil Then Return
		  mProject.PostInstall.LaunchApp = value
		  If value And mProject.PostInstall.AppPath.Trim = "" Then
		    Var suggested As String = PackageNaming.FirstInstalledAppPath(mProject)
		    If suggested <> "" Then
		      mProject.PostInstall.AppPath = suggested
		      mUpdating = True
		      AppPathField.Text = suggested
		      mUpdating = False
		    End If
		  End If
		  UpdateEndSection
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AppPathField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  mProject.PostInstall.AppPath = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AppPathBtn
	#tag Event
		Sub Pressed()
		  If mProject Is Nil Then Return
		  Var panel As New NativeFilePanel(NativeFilePanel.Modes.Open)
		  panel.SetOpenOptions(True, True, False)
		  panel.SetTexts(Loc.kInstalledAppField, "", "")
		  If Not panel.RunModal Then Return
		  If panel.Value Is Nil Then Return
		  AppPathField.Text = panel.Value.NativePath
		End Sub
	#tag EndEvent
#tag EndEvents
