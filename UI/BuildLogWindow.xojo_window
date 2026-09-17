#tag DesktopWindow
Begin DesktopWindow BuildLogWindow
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
   Height          =   500
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   440
   MinimumWidth    =   580
   Resizeable      =   True
   Title           =   "XPackager"
   Type            =   0
   Visible         =   True
   Width           =   620
   Begin NativeLabelControl StatusLabel
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   "BuildLogWindow"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
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
      Top             =   16
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   580
   End
   Begin NativeProgressBarControl Progress
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   "BuildLogWindow"
      Left            =   20
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
      Top             =   44
      Transparent     =   False
      Visible         =   True
      Width           =   580
   End
   Begin NativeLabelControl PhaseLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   18
      Index           =   -2147483648
      InitialParent   =   "BuildLogWindow"
      Italic          =   False
      Left            =   20
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
      Top             =   66
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   580
   End
   Begin DesktopSeparator SepTop
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   2
      Index           =   -2147483648
      InitialParent   =   "BuildLogWindow"
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   92
      Transparent     =   False
      Visible         =   True
      Width           =   620
   End
   Begin NativeTextAreaControl LogArea
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowStyledText =   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "Menlo"
      FontSize        =   11.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   354
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   "BuildLogWindow"
      Italic          =   False
      Left            =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   96
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   620
   End
   Begin DesktopSeparator SepBottom
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   2
      Index           =   -2147483648
      InitialParent   =   "BuildLogWindow"
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   452
      Transparent     =   False
      Visible         =   True
      Width           =   620
   End
   Begin NativeButtonControl CloseBtn
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   ""
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   "BuildLogWindow"
      Italic          =   False
      Left            =   510
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   462
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
End
#tag EndDesktopWindow

#tag WindowCode

	#tag Event
		Sub Opening()
		  CloseBtn.Caption = Loc.kCloseButton
		  StatusLabel.Text = Loc.kBuildLog
		  Self.Title = Loc.kBuildLog
		End Sub
	#tag EndEvent

	#tag Method, Flags = &h21
		Private Sub BuildDone(success As Boolean, message As String)
		  #Pragma Unused message
		  mSucceeded = success
		  mBuilding = False
		  Progress.MaximumValue = 100
		  If success Then
		    Progress.Value = 100
		    StatusLabel.Text = "✅ " + Loc.kBuildSucceeded
		  Else
		    Progress.Value = 0
		    StatusLabel.Text = "❌ " + Loc.kBuildFailed
		  End If
		  CloseBtn.Enabled = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LogText(text As String)
		  LogArea.AddText(text)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PhaseChanged(text As String, fraction As Double)
		  PhaseLabel.Text = text
		  If fraction < 0 Then
		    Progress.MaximumValue = 0       // barre indéterminée (attente du verdict Apple)
		  Else
		    Progress.MaximumValue = 100
		    Progress.Value = fraction * 100
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StartBuild(project As PackageProject, output As FolderItem)
		  mBuilding = True
		  mSucceeded = False
		  CloseBtn.Enabled = False
		  LogArea.Text = ""
		  StatusLabel.Text = Loc.kBuildingEllipsis
		  PhaseLabel.Text = Loc.kPreparingEllipsis
		  Progress.MaximumValue = 100
		  Progress.Value = 2
		  Self.Show
		  
		  Var work As FolderItem
		  Var steps() As BuildStep
		  Try
		    steps = PackageBuilder.PrepareSteps(project, output, work)
		  Catch err As RuntimeException
		    PkgFS.DeleteRecursively(work)
		    LogText(EndOfLine + "❌ " + err.Message + EndOfLine)
		    BuildDone(False, err.Message)
		    Return
		  End Try
		  
		  mRunner = New BuildRunner
		  mRunner.LogHandler = AddressOf LogText
		  mRunner.DoneHandler = AddressOf BuildDone
		  mRunner.PhaseHandler = AddressOf PhaseChanged
		  mRunner.Start(steps, work, output.NativePath)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mBuilding As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRunner As BuildRunner
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSucceeded As Boolean
	#tag EndProperty
#tag EndWindowCode

#tag Events CloseBtn
	#tag Event
		Sub Pressed()
		  If mBuilding Then Return
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
