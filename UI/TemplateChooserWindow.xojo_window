#tag DesktopWindow
Begin DesktopWindow TemplateChooserWindow
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
   Height          =   380
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   300
   MinimumWidth    =   380
   Resizeable      =   True
   Title           =   "XPackager"
   Type            =   0
   Visible         =   True
   Width           =   460
   Begin NativeLabelControl ChooserHeader
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   "TemplateChooserWindow"
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
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   420
   End
   Begin NativeTableViewControl TemplatesList
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   276
      Index           =   -2147483648
      InitialParent   =   "TemplateChooserWindow"
      Left            =   20
      LockBottom      =   True
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
      Width           =   420
   End
   Begin NativeButtonControl CancelBtn
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   ""
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   "TemplateChooserWindow"
      Italic          =   False
      Left            =   260
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   336
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   84
   End
   Begin NativeButtonControl CreateBtn
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
      InitialParent   =   "TemplateChooserWindow"
      Italic          =   False
      Left            =   354
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   336
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
End
#tag EndDesktopWindow

#tag WindowCode

	#tag Event
		Sub Opening()
		  Self.Title = Loc.kChooseTemplate
		  ChooserHeader.Text = Loc.kChooseTemplate
		  CancelBtn.Caption = Loc.kCancelButton
		  CreateBtn.Caption = Loc.kCreateButton
		  If TemplatesList.ColumnCount = 0 Then
		    TemplatesList.ShowsHeader = True
		    TemplatesList.AlternatingRowColors = True
		    TemplatesList.AddColumn(Loc.kNameLabel, 280)
		    TemplatesList.AddColumn(Loc.kTypeLabel, 140)
		  End If
		  mTemplates = TemplateManager.AllTemplates
		  For Each t As ProjectTemplate In mTemplates
		    Var kind As String = Loc.kMyTemplates
		    If t.IsBuiltIn Then kind = Loc.kBuiltInTemplates
		    TemplatesList.AddRow(t.Name, kind)
		  Next
		  If TemplatesList.RowCount > 0 Then TemplatesList.SelectRow(0)
		End Sub
	#tag EndEvent

	#tag Method, Flags = &h21
		Private Sub CreateFromSelection()
		  Var row As Integer = TemplatesList.SelectedRow
		  If row < 0 Or row > mTemplates.LastIndex Then Return
		  Var t As ProjectTemplate = mTemplates(row)
		  Self.Close
		  Call App.OpenProjectWindow(t.Project.Clone, t.Name)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mTemplates() As ProjectTemplate
	#tag EndProperty
#tag EndWindowCode

#tag Events CreateBtn
	#tag Event
		Sub Pressed()
		  CreateFromSelection
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelBtn
	#tag Event
		Sub Pressed()
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TemplatesList
	#tag Event
		Sub RowDoubleClicked(row As Integer)
		  #Pragma Unused row
		  CreateFromSelection
		End Sub
	#tag EndEvent
#tag EndEvents
