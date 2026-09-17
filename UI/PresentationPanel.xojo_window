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
      Height          =   192
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
      Begin NativeCheckBoxControl LaunchCheck
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "EndBox"
         Italic          =   False
         Left            =   36
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   630
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   624
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
         Top             =   662
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
         Top             =   660
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
         Top             =   660
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
         Top             =   692
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
		  LaunchCheck.Caption = Loc.kLaunchAnApp
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
		  Select Case mScreen
		  Case 1
		    Return mProject.Presentation.ReadmePath
		  Case 2
		    Return mProject.Presentation.LicensePath
		  Case 3
		    Return mProject.Presentation.ConclusionPath
		  End Select
		  Return mProject.Presentation.WelcomePath
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CurrentRTF() As String
		  Select Case mScreen
		  Case 1
		    Return mProject.Presentation.ReadmeRTF
		  Case 2
		    Return mProject.Presentation.LicenseRTF
		  Case 3
		    Return mProject.Presentation.ConclusionRTF
		  End Select
		  Return mProject.Presentation.WelcomeRTF
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CurrentText() As String
		  Select Case mScreen
		  Case 1
		    Return mProject.Presentation.ReadmeText
		  Case 2
		    Return mProject.Presentation.LicenseText
		  Case 3
		    Return mProject.Presentation.ConclusionText
		  End Select
		  Return mProject.Presentation.WelcomeText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnsureEditor()
		  If mEditor <> Nil Then Return
		  mEditor = New NativeRichTextEditor(RTFCanvas.Width, RTFCanvas.Height)
		  NativeControlHost.Fill(RTFCanvas, mEditor.Handle)
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
		  mScreen = 0
		  Reload
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reload()
		  If mProject Is Nil Then Return
		  mUpdating = True
		  TitleField.Text = mProject.Presentation.Title
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
		  Select Case mScreen
		  Case 1
		    mProject.Presentation.ReadmePath = value
		  Case 2
		    mProject.Presentation.LicensePath = value
		  Case 3
		    mProject.Presentation.ConclusionPath = value
		  Case Else
		    mProject.Presentation.WelcomePath = value
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetCurrentRTF(value As String)
		  Select Case mScreen
		  Case 1
		    mProject.Presentation.ReadmeRTF = value
		  Case 2
		    mProject.Presentation.LicenseRTF = value
		  Case 3
		    mProject.Presentation.ConclusionRTF = value
		  Case Else
		    mProject.Presentation.WelcomeRTF = value
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowScreen(index As Integer)
		  mScreen = index
		  Select Case index
		  Case 1
		    ScreenBox.Caption = Loc.kReadMe
		  Case 2
		    ScreenBox.Caption = Loc.kLicense
		  Case 3
		    ScreenBox.Caption = Loc.kConclusion
		  Case Else
		    ScreenBox.Caption = Loc.kWelcome
		  End Select
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
		      mEditor.Editor.Text = CurrentText
		    End If
		  End If
		  mUpdating = False
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

	#tag Property, Flags = &h0
		Owner As ProjectWindow
	#tag EndProperty
#tag EndWindowCode

#tag Events TitleField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  mProject.Presentation.Title = Me.Text
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScreenSelector
	#tag Event
		Sub SelectionChanged(index As Integer)
		  Flush
		  ShowScreen(index)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImportBtn
	#tag Event
		Sub Pressed()
		  If mProject Is Nil Then Return
		  Var f As FolderItem = ChooseFile(Loc.kImportFileEllipsis)
		  If f Is Nil Then Return
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
		Sub ValueChanged()
		  If mUpdating Or mProject Is Nil Then Return
		  mProject.PostInstall.LaunchApp = Me.Value
		  If Me.Value And mProject.PostInstall.AppPath.Trim = "" Then
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
