#tag DesktopWindow
Begin DesktopContainer ComponentsPanel
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   540
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
   Begin NativePopupMenuControl ComponentPopup
      AllowAutoDeactivate=   True
      AltersStateOfSelectedItem=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   "ComponentsPanel"
      InitialValue    =   ""
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   -1
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   8
      Transparent     =   False
      Underline       =   False
      UsesItemFromMenu=   True
      Visible         =   True
      Width           =   280
   End
   Begin NativeLabelControl CountLabel
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
      InitialParent   =   "ComponentsPanel"
      Italic          =   False
      Left            =   308
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c8E8E93
      Tooltip         =   ""
      Top             =   10
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   160
   End
   Begin NativeIconButtonControl AddBtn
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      BezelStyle      =   1
      Caption         =   ""
      ControlSize     =   1
      Enabled         =   True
      Height          =   24
      ImageHugsTitle  =   True
      ImagePosition   =   1
      Index           =   -2147483648
      InitialParent   =   "ComponentsPanel"
      Left            =   616
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SymbolName      =   "plus"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   7
      Transparent     =   True
      Visible         =   True
      Width           =   32
   End
   Begin NativeIconButtonControl RemoveBtn
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      BezelStyle      =   1
      Caption         =   ""
      ControlSize     =   1
      Enabled         =   True
      Height          =   24
      ImageHugsTitle  =   True
      ImagePosition   =   1
      Index           =   -2147483648
      InitialParent   =   "ComponentsPanel"
      Left            =   652
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SymbolName      =   "minus"
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   7
      Transparent     =   True
      Visible         =   True
      Width           =   32
   End
   Begin DesktopSeparator TopSep
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   2
      Index           =   -2147483648
      InitialParent   =   "ComponentsPanel"
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   38
      Transparent     =   False
      Visible         =   True
      Width           =   700
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopPagePanel SubPanel
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   462
      Index           =   -2147483648
      InitialParent   =   "ComponentsPanel"
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   3
      Panels          =   ""
      Scope           =   0
      SelectedPanelIndex=   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   78
      Transparent     =   True
      Value           =   1
      Visible         =   True
      Width           =   700
      Begin DesktopSeparator CompSep
         Active          =   False
         AllowAutoDeactivate=   True
         AllowTabStop    =   True
         Enabled         =   True
         Height          =   2
         Index           =   -2147483648
         InitialParent   =   "SubPanel"
         Left            =   16
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         PanelIndex      =   0
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   1
         Tooltip         =   ""
         Top             =   278
         Transparent     =   False
         Visible         =   True
         Width           =   668
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
      Begin NativeGroupBoxControl NativeGroupBoxControl2
         AllowAutoDeactivate=   True
         Bold            =   True
         Caption         =   "#Loc.kInstallOptions"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   231
         Index           =   -2147483648
         InitialParent   =   "SubPanel"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   1
         TabStop         =   True
         TitleFontSize   =   0.0
         Tooltip         =   ""
         Top             =   292
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   664
         Begin NativeLabelControl CompDescLabel
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
            InitialParent   =   "NativeGroupBoxControl2"
            Italic          =   False
            Left            =   40
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
            Top             =   325
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   180
         End
         Begin NativeTextFieldControl CompDescField
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
            InitialParent   =   "NativeGroupBoxControl2"
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
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   323
            Transparent     =   False
            Underline       =   False
            ValidationMask  =   ""
            Visible         =   True
            Width           =   440
         End
         Begin NativeLabelControl StartSelectedCheckLabel
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
            InitialParent   =   "NativeGroupBoxControl2"
            Italic          =   False
            Left            =   40
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
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   364
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   570
         End
         Begin NativeSwitchControl StartSelectedCheck
            AllowAutoDeactivate=   True
            AllowFocus      =   False
            AllowFocusRing  =   True
            AllowTabs       =   False
            Backdrop        =   0
            ControlSize     =   2
            Enabled         =   True
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "NativeGroupBoxControl2"
            Left            =   624
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   364
            Transparent     =   True
            Value           =   False
            Visible         =   True
            Width           =   40
         End
         Begin NativeLabelControl MultiNote
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
            InitialParent   =   "NativeGroupBoxControl2"
            Italic          =   False
            Left            =   40
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
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c8E8E93
            Tooltip         =   ""
            Top             =   475
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   624
         End
         Begin NativeLabelControl VisibleCheckLabel
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
            InitialParent   =   "NativeGroupBoxControl2"
            Italic          =   False
            Left            =   40
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
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   438
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   570
         End
         Begin NativeSwitchControl VisibleCheck
            AllowAutoDeactivate=   True
            AllowFocus      =   False
            AllowFocusRing  =   True
            AllowTabs       =   False
            Backdrop        =   0
            ControlSize     =   2
            Enabled         =   True
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "NativeGroupBoxControl2"
            Left            =   624
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   438
            Transparent     =   True
            Value           =   False
            Visible         =   True
            Width           =   40
         End
         Begin NativeLabelControl ToggleableCheckLabel
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
            InitialParent   =   "NativeGroupBoxControl2"
            Italic          =   False
            Left            =   40
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
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   401
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   570
         End
         Begin NativeSwitchControl ToggleableCheck
            AllowAutoDeactivate=   True
            AllowFocus      =   False
            AllowFocusRing  =   True
            AllowTabs       =   False
            Backdrop        =   0
            ControlSize     =   2
            Enabled         =   True
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "NativeGroupBoxControl2"
            Left            =   624
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   401
            Transparent     =   True
            Value           =   False
            Visible         =   True
            Width           =   40
         End
      End
      Begin NativeGroupBoxControl NativeGroupBoxControl1
         AllowAutoDeactivate=   True
         Bold            =   True
         Caption         =   "#Loc.kComponentIdentity"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   178
         Index           =   -2147483648
         InitialParent   =   "SubPanel"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         TitleFontSize   =   0.0
         Tooltip         =   "  "
         Top             =   98
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   664
         Begin NativeTextFieldControl CompLocationField
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
            InitialParent   =   "NativeGroupBoxControl1"
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
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   223
            Transparent     =   False
            Underline       =   False
            ValidationMask  =   ""
            Visible         =   True
            Width           =   440
         End
         Begin NativeLabelControl CompLocationLabel
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
            InitialParent   =   "NativeGroupBoxControl1"
            Italic          =   False
            Left            =   40
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
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   225
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   180
         End
         Begin NativeTextFieldControl CompVersionField
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
            InitialParent   =   "NativeGroupBoxControl1"
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
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   191
            Transparent     =   False
            Underline       =   False
            ValidationMask  =   ""
            Visible         =   True
            Width           =   440
         End
         Begin NativeLabelControl CompVersionLabel
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
            InitialParent   =   "NativeGroupBoxControl1"
            Italic          =   False
            Left            =   40
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
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   193
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   180
         End
         Begin NativeTextFieldControl CompIdField
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
            InitialParent   =   "NativeGroupBoxControl1"
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
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   159
            Transparent     =   False
            Underline       =   False
            ValidationMask  =   ""
            Visible         =   True
            Width           =   440
         End
         Begin NativeLabelControl CompIdLabel
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
            InitialParent   =   "NativeGroupBoxControl1"
            Italic          =   False
            Left            =   40
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   161
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   180
         End
         Begin NativeTextFieldControl CompNameField
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
            InitialParent   =   "NativeGroupBoxControl1"
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
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   127
            Transparent     =   False
            Underline       =   False
            ValidationMask  =   ""
            Visible         =   True
            Width           =   440
         End
         Begin NativeLabelControl CompNameLabel
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
            InitialParent   =   "NativeGroupBoxControl1"
            Italic          =   False
            Left            =   40
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
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   129
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   180
         End
      End
      Begin NativeGroupBoxControl NativeGroupBoxControl3
         AllowAutoDeactivate=   True
         Bold            =   True
         Caption         =   "#Loc.kInstallScripts"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   169
         Index           =   -2147483648
         InitialParent   =   "SubPanel"
         Italic          =   False
         Left            =   16
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   18
         TabPanelIndex   =   3
         TabStop         =   True
         TitleFontSize   =   0.0
         Tooltip         =   ""
         Top             =   98
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   664
         Begin NativeTextFieldControl PreField
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
            InitialParent   =   "NativeGroupBoxControl3"
            Italic          =   False
            Left            =   150
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            MaximumCharactersAllowed=   0
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   143
            Transparent     =   False
            Underline       =   False
            ValidationMask  =   ""
            Visible         =   True
            Width           =   402
         End
         Begin NativeTextFieldControl PostField
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
            InitialParent   =   "NativeGroupBoxControl3"
            Italic          =   False
            Left            =   150
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
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   179
            Transparent     =   False
            Underline       =   False
            ValidationMask  =   ""
            Visible         =   True
            Width           =   402
         End
         Begin NativeButtonControl PostButton
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
            InitialParent   =   "NativeGroupBoxControl3"
            Italic          =   False
            Left            =   564
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MacButtonStyle  =   0
            Scope           =   0
            ShowsBorderOnlyOnHover=   False
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            Tooltip         =   ""
            Top             =   179
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin NativeButtonControl PreButton
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
            InitialParent   =   "NativeGroupBoxControl3"
            Italic          =   False
            Left            =   564
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MacButtonStyle  =   0
            Scope           =   0
            ShowsBorderOnlyOnHover=   False
            TabIndex        =   3
            TabPanelIndex   =   3
            TabStop         =   True
            Tooltip         =   ""
            Top             =   143
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin NativeLabelControl PreLabel
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
            InitialParent   =   "NativeGroupBoxControl3"
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
            TabIndex        =   4
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   145
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   110
         End
         Begin NativeLabelControl PostLabel
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
            InitialParent   =   "NativeGroupBoxControl3"
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
            TabIndex        =   5
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   181
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   110
         End
         Begin NativeLabelControl ScriptsHelp
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
            Height          =   32
            Index           =   -2147483648
            InitialParent   =   "NativeGroupBoxControl3"
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
            TabIndex        =   6
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c8E8E93
            Tooltip         =   ""
            Top             =   215
            Transparent     =   False
            TruncatesLastVisibleLine=   False
            Underline       =   False
            Visible         =   True
            Width           =   628
         End
      End
   End
   Begin NativeSegmentedButtonControl TabSelector
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      BorderShape     =   0
      ControlSize     =   0
      Distribution    =   1
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Labels          =   "A;B;C"
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedIndex   =   0
      Style           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   47
      TrackingMode    =   0
      Transparent     =   True
      Visible         =   True
      Width           =   300
   End
   Begin DesktopSeparator TopSep1
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   2
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   74
      Transparent     =   False
      Visible         =   True
      Width           =   700
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  ApplyTexts
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  TabSelector.Left = me.Width/2-TabSelector.Width/2
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  
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
		  // Calque du Form(.grouped) SwiftUI, comme la page Réglages : sections titrées,
		  // lignes de 37 pt séparées par des filets, et lignes qui n'existent que selon
		  // l'état — ici la note qui ne paraît qu'à partir de deux composants.
		  Var pf As Cocoa.NSRect = Cocoa.ViewFrame(Self.Handle)
		  If pf.width <= 0 Or pf.height <= 0 Then Return
		  
		  Const kMargin = 20
		  Const kInset = 10
		  Const kTitleH = 14
		  Const kRowH = 37
		  Const kGap = 18
		  Const kTop = 98        // sous la barre de composants et le sélecteur d'onglets
		  Var gx As Double = kMargin
		  Var gw As Double = pf.width - 2 * kMargin
		  Var cl As Double = gx + kInset
		  Var cr As Double = gx + gw - kInset
		  Var vc As Double = cl + 190
		  
		  mQC.RemoveAll
		  mQX.RemoveAll
		  mQY.RemoveAll
		  mQW.RemoveAll
		  mQH.RemoveAll
		  mRuleCount = 0
		  
		  // Un Form groupé ne sépare pas ses sections par un filet : celui du markup
		  // n'a plus lieu d'être.
		  XPUI.SetShown(CompSep, False)
		  
		  // ─── Onglet Réglages : identité du composant ───
		  Var y As Double = kTop
		  Var top As Double = y
		  Var n As Integer = 0
		  y = y + kTitleH
		  y = FieldRow(n, NativeGroupBoxControl1, CompNameLabel, CompNameField, cl, vc, cr, y, kRowH)
		  y = FieldRow(n, NativeGroupBoxControl1, CompIdLabel, CompIdField, cl, vc, cr, y, kRowH)
		  y = FieldRow(n, NativeGroupBoxControl1, CompVersionLabel, CompVersionField, cl, vc, cr, y, kRowH)
		  y = FieldRow(n, NativeGroupBoxControl1, CompLocationLabel, CompLocationField, cl, vc, cr, y, kRowH)
		  Q(NativeGroupBoxControl1, gx, top, gw, y - top)
		  
		  // ─── Onglet Réglages : options d'installation ───
		  y = y + kGap
		  top = y
		  n = 0
		  y = y + kTitleH
		  y = FieldRow(n, NativeGroupBoxControl2, CompDescLabel, CompDescField, cl, vc, cr, y, kRowH)
		  y = SwitchRow(n, NativeGroupBoxControl2, StartSelectedCheckLabel, StartSelectedCheck, cl, cr, y, kRowH)
		  y = SwitchRow(n, NativeGroupBoxControl2, ToggleableCheckLabel, ToggleableCheck, cl, cr, y, kRowH)
		  y = SwitchRow(n, NativeGroupBoxControl2, VisibleCheckLabel, VisibleCheck, cl, cr, y, kRowH)
		  Var multi As Boolean = mProject <> Nil And mProject.Components.Count > 1
		  XPUI.SetShown(MultiNote, multi)
		  If multi Then y = CaptionRow(n, NativeGroupBoxControl2, MultiNote, cl, cr, y)
		  Q(NativeGroupBoxControl2, gx, top, gw, y - top)
		  
		  // ─── Onglet Scripts ───
		  y = kTop
		  top = y
		  n = 0
		  y = y + kTitleH
		  y = PathRow(n, NativeGroupBoxControl3, PreLabel, PreField, PreButton, cl, vc, cr, y, kRowH)
		  y = PathRow(n, NativeGroupBoxControl3, PostLabel, PostField, PostButton, cl, vc, cr, y, kRowH)
		  y = CaptionRow(n, NativeGroupBoxControl3, ScriptsHelp, cl, cr, y)
		  Q(NativeGroupBoxControl3, gx, top, gw, y - top)
		  
		  Flush
		  XPUI.FitSwitch(StartSelectedCheck)
		  XPUI.FitSwitch(ToggleableCheck)
		  XPUI.FitSwitch(VisibleCheck)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FieldRow(ByRef n As Integer, group As DesktopUIControl, label As DesktopLabel, field As DesktopUIControl, cl As Double, vc As Double, cr As Double, y As Double, rowH As Double) As Double
		  Rule(n, group, cl, cr, y)
		  Q(label, cl, y + (rowH - 18) / 2, vc - cl - 10, 18)
		  Q(field, vc, y + (rowH - 24) / 2, cr - vc, 24)
		  Return y + rowH
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PathRow(ByRef n As Integer, group As DesktopUIControl, label As DesktopLabel, field As DesktopUIControl, button As DesktopUIControl, cl As Double, vc As Double, cr As Double, y As Double, rowH As Double) As Double
		  Rule(n, group, cl, cr, y)
		  Var bw As Double = button.Width
		  Q(label, cl, y + (rowH - 18) / 2, vc - cl - 10, 18)
		  Q(field, vc, y + (rowH - 24) / 2, cr - vc - bw - 8, 24)
		  Q(button, cr - bw, y + (rowH - 22) / 2, bw, 22)
		  Return y + rowH
		End Function
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
		  // Pose mise en file : Flush l'applique, les cadres de groupe d'abord.
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
		  // Filet entre deux lignes d'une section : rien avant la première.
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

	#tag Method, Flags = &h0
		Sub FitSwitches()
		  // Appelé par ProjectWindow une fois la page affichée : la bibliothèque
		  // héberge l'interrupteur au premier dessin et lui impose alors son cadre.
		  XPUI.FitSwitch(StartSelectedCheck)
		  XPUI.FitSwitch(ToggleableCheck)
		  XPUI.FitSwitch(VisibleCheck)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyTexts()
		  mUpdating = True
		  AddBtn.Tooltip = Loc.kAddComponent
		  RemoveBtn.Tooltip = Loc.kRemoveComponent
		  // Comme en SwiftUI : Button(role: .destructive) pour le retrait.
		  If RemoveBtn.Inner <> Nil Then RemoveBtn.Inner.SetDestructive(True)
		  // IdentityHeader.Text = Loc.kComponentIdentity
		  CompNameLabel.Text = Loc.kNameChoiceTitle
		  CompIdLabel.Text = Loc.kIdentifier
		  CompVersionLabel.Text = Loc.kVersionLabel
		  CompLocationLabel.Text = Loc.kInstallLocation
		  // OptionsHeader.Text = Loc.kInstallOptions
		  CompDescLabel.Text = Loc.kDescriptionLabel
		  StartSelectedCheckLabel.Text = Loc.kStartSelected
		  ToggleableCheckLabel.Text = Loc.kUserToggleable
		  VisibleCheckLabel.Text = Loc.kVisibleInCustomList
		  // ScriptsHeader.Text = Loc.kInstallScripts
		  PreLabel.Text = "preinstall"
		  PostLabel.Text = "postinstall"
		  PreButton.Caption = Loc.kChooseEllipsis
		  PostButton.Caption = Loc.kChooseEllipsis
		  ScriptsHelp.Text = Loc.kScriptsHelp
		  
		  TabSelector.Labels = Loc.kSettings + ";" + Loc.kPayload + ";" + Loc.kScripts
		  TabSelector.SelectedIndex = 0
		  mUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ChooseFile() As FolderItem
		  Var panel As New NativeFilePanel(NativeFilePanel.Modes.Open)
		  panel.SetOpenOptions(True, False, False)
		  If Not panel.RunModal Then Return Nil
		  Return panel.Value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Current() As PkgComponent
		  If mProject Is Nil Then Return Nil
		  For Each comp As PkgComponent In mProject.Components
		    If comp.ComponentID = mSelectedID Then Return comp
		  Next
		  If mProject.Components.Count > 0 Then Return mProject.Components(0)
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutChildren()
		  // PayloadPanel est un conteneur embarqué dans SubPanel. Xojo en déduit
		  // l'ordonnée d'une hauteur de référence qui n'est pas celle de SubPanel, et le
		  // posait 66 points trop haut (trace : pay=0,66 dans un parent de même hauteur).
		  // Même remède que ProjectWindow.PlacePanel : la TAILLE par Xojo, pour la mise
		  // en page des enfants, puis le CADRE écrit par AppKit, pris sur la vue réelle
		  // de SubPanel.
		  If mPayloadPanel Is Nil Then Return
		  Var f As Cocoa.NSRect = Cocoa.ViewFrame(SubPanel.Handle)
		  If f.width <= 0 Or f.height <= 0 Then Return
		  mPayloadPanel.Width = f.width
		  mPayloadPanel.Height = f.height
		  Var r As Cocoa.NSRect
		  r.width = f.width
		  r.height = f.height
		  Cocoa.SetViewFrame(mPayloadPanel.Handle, r)
		  mPayloadPanel.Relayout
		  LayoutAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadProject(p As PackageProject)
		  mProject = p
		  If p.Components.Count > 0 Then mSelectedID = p.Components(0).ComponentID
		  If mPayloadPanel Is Nil Then
		    mPayloadPanel = New PayloadPanel
		    mPayloadPanel.Owner = Owner
		    Var subW As Integer = SubPanel.Width
		    Var subH As Integer = SubPanel.Height
		    Var subTop As Integer = Me.Top + SubPanel.Top
		    Var subLeft As Integer = Me.Left + SubPanel.Left
		    mPayloadPanel.EmbedWithinPanel(SubPanel, 1, subLeft, subTop, subW, subH)
		  End If
		  ReloadComponentMenu
		  ReloadDetail
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReloadComponentMenu()
		  If mProject Is Nil Then Return
		  mUpdating = True
		  ComponentPopup.RemoveAllRows
		  Var selected As Integer = 0
		  For i As Integer = 0 To mProject.Components.LastIndex
		    Var comp As PkgComponent = mProject.Components(i)
		    ComponentPopup.AddRow(comp.DisplayName)
		    ComponentPopup.RowTagAt(i) = comp.ComponentID
		    If comp.ComponentID = mSelectedID Then selected = i
		  Next
		  ComponentPopup.SelectedRowIndex = selected
		  Var n As Integer = mProject.Components.Count
		  Var word As String = Loc.kComponentSingular
		  If n > 1 Then word = Loc.kComponentsPlural
		  CountLabel.Text = n.ToString + " " + word
		  RemoveBtn.Enabled = n > 1
		  If RemoveBtn.Inner <> Nil Then RemoveBtn.Inner.Enabled = (n > 1)
		  MultiNote.Text = Loc.kMultiComponentNote
		  mUpdating = False
		  // La note ne paraît qu'à partir de deux composants : c'est la pose qui montre
		  // ou masque sa ligne, et referme la section.
		  LayoutAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReloadDetail()
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  mSelectedID = comp.ComponentID
		  mUpdating = True
		  CompNameField.Text = comp.Name
		  CompIdField.Text = comp.Identifier
		  CompVersionField.Text = comp.Version
		  CompLocationField.Text = comp.InstallLocation
		  CompDescField.Text = comp.ComponentDescription
		  StartSelectedCheck.Value = comp.StartSelected
		  ToggleableCheck.Value = comp.UserToggleable
		  VisibleCheck.Value = comp.IsVisible
		  PreField.Text = comp.Scripts.PreinstallPath
		  PostField.Text = comp.Scripts.PostinstallPath
		  mUpdating = False
		  If mPayloadPanel <> Nil Then mPayloadPanel.LoadPayload(comp.Payload)
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
		Private mPayloadPanel As PayloadPanel
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mProject As PackageProject
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSelectedID As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUpdating As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Owner As ProjectWindow
	#tag EndProperty


#tag EndWindowCode

#tag Events ComponentPopup
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  If mUpdating Or mProject Is Nil Then Return
		  If Me.SelectedRowIndex < 0 Then Return
		  mSelectedID = Me.RowTagAt(Me.SelectedRowIndex)
		  ReloadDetail
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddBtn
	#tag Event
		Sub Pressed()
		  If mProject Is Nil Then Return
		  Var n As Integer = mProject.Components.Count + 1
		  Var comp As New PkgComponent
		  comp.Name = Loc.kComponent + " " + n.ToString
		  comp.Identifier = "fr.vdsc.composant" + n.ToString
		  mProject.Components.Add(comp)
		  mSelectedID = comp.ComponentID
		  ReloadComponentMenu
		  ReloadDetail
		  TabSelector.SelectedIndex = 0
		  SubPanel.SelectedPanelIndex = 0
		  If Owner <> Nil Then Owner.MarkDirty
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RemoveBtn
	#tag Event
		Sub Pressed()
		  If mProject Is Nil Then Return
		  If mProject.Components.Count <= 1 Then Return
		  For i As Integer = 0 To mProject.Components.LastIndex
		    If mProject.Components(i).ComponentID = mSelectedID Then
		      mProject.Components.RemoveAt(i)
		      Exit
		    End If
		  Next
		  mSelectedID = mProject.Components(0).ComponentID
		  ReloadComponentMenu
		  ReloadDetail
		  If Owner <> Nil Then Owner.MarkDirty
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CompDescField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.ComponentDescription = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StartSelectedCheck
	#tag Event
		Sub ValueChanged(value As Boolean)
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.StartSelected = value
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events VisibleCheck
	#tag Event
		Sub ValueChanged(value As Boolean)
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.IsVisible = value
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ToggleableCheck
	#tag Event
		Sub ValueChanged(value As Boolean)
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.UserToggleable = value
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CompLocationField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.InstallLocation = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CompVersionField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.Version = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CompIdField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.Identifier = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CompNameField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.Name = Me.Text
		  ReloadComponentMenu
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PreField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.Scripts.PreinstallPath = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PostField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  Var comp As PkgComponent = Current
		  If comp Is Nil Then Return
		  comp.Scripts.PostinstallPath = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PostButton
	#tag Event
		Sub Pressed()
		  Var f As FolderItem = ChooseFile
		  If f Is Nil Then Return
		  PostField.Text = f.NativePath
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PreButton
	#tag Event
		Sub Pressed()
		  Var f As FolderItem = ChooseFile
		  If f Is Nil Then Return
		  PreField.Text = f.NativePath
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TabSelector
	#tag Event
		Sub SelectionChanged(index As Integer)
		  SubPanel.SelectedPanelIndex = index
		  If index = 0 Then Timer.CallLater(150, AddressOf FitSwitches)
		  If index = 1 And mPayloadPanel <> Nil Then
		    // L'onglet devient visible : Xojo vient de réappliquer sa propre géométrie.
		    LayoutChildren
		    mPayloadPanel.RefreshView
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Left = self.Width/2-me.Width/2
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
