#tag DesktopWindow
Begin DesktopWindow AboutWindow
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
   Height          =   360
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   360
   MinimumWidth    =   380
   Resizeable      =   False
   Title           =   "XPackager"
   Type            =   0
   Visible         =   True
   Width           =   380
   Begin DesktopCanvas IconCanvas
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   96
      Index           =   -2147483648
      InitialParent   =   "AboutWindow"
      Left            =   142
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
      Top             =   28
      Transparent     =   False
      Visible         =   True
      Width           =   96
   End
   Begin NativeLabelControl AppNameLabel
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   22.0
      FontUnit        =   0
      Height          =   28
      Index           =   -2147483648
      InitialParent   =   "AboutWindow"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "XPackager"
      TextAlignment   =   1
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   140
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   340
   End
   Begin NativeLabelControl VersionLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   18
      Index           =   -2147483648
      InitialParent   =   "AboutWindow"
      Italic          =   False
      Left            =   20
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
      TextAlignment   =   1
      TextColor       =   &c8E8E93
      Tooltip         =   ""
      Top             =   172
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   340
   End
   Begin NativeLabelControl TaglineLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   52
      Index           =   -2147483648
      InitialParent   =   "AboutWindow"
      Italic          =   False
      Left            =   20
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
      TextAlignment   =   1
      TextColor       =   &c8E8E93
      Tooltip         =   ""
      Top             =   204
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   340
   End
   Begin DesktopSeparator SepAbout
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
      InitialParent   =   "AboutWindow"
      Left            =   80
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
      Top             =   272
      Transparent     =   False
      Visible         =   True
      Width           =   220
   End
   Begin NativeLabelControl CopyrightLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   18
      Index           =   -2147483648
      InitialParent   =   "AboutWindow"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   1
      TextColor       =   &c8E8E93
      Tooltip         =   ""
      Top             =   288
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   340
   End
End
#tag EndDesktopWindow

#tag WindowCode

	#tag Event
		Sub Opening()
		  Self.Title = Loc.kAboutXPackager
		  TaglineLabel.Text = Loc.kAboutTagline
		  CopyrightLabel.Text = Loc.kCopyright
		  VersionLabel.Text = Loc.kVersionPrefix + " " + App.MajorVersion.ToString + "." _
		  + App.MinorVersion.ToString + "." + App.BugVersion.ToString _
		  + " (" + App.NonReleaseVersion.ToString + ")"
		  
		  mIcon = New NativeImageView(96, 96)
		  mIcon.ShowFinderIcon(App.ExecutableFile.Parent.Parent.Parent)
		  NativeControlHost.Fill(IconCanvas, mIcon.Handle)
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private mIcon As NativeImageView
	#tag EndProperty
#tag EndWindowCode

