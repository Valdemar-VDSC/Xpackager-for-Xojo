#tag DesktopWindow
Begin DesktopContainer PayloadPanel
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   460
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
   Begin NativeIconButtonControl AddFolderBtn
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      BezelStyle      =   1
      Caption         =   ""
      ControlSize     =   0
      Enabled         =   True
      Height          =   26
      ImageHugsTitle  =   True
      ImagePosition   =   7
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SymbolName      =   "folder.badge.plus"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   6
      Transparent     =   True
      Visible         =   True
      Width           =   110
   End
   Begin NativeIconButtonControl AddFilesBtn
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      BezelStyle      =   1
      Caption         =   ""
      ControlSize     =   0
      Enabled         =   True
      Height          =   26
      ImageHugsTitle  =   True
      ImagePosition   =   7
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Left            =   134
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SymbolName      =   "doc.badge.plus"
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   6
      Transparent     =   True
      Visible         =   True
      Width           =   110
   End
   Begin NativeIconButtonControl RemoveBtn
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      BezelStyle      =   1
      Caption         =   ""
      ControlSize     =   0
      Enabled         =   True
      Height          =   26
      ImageHugsTitle  =   True
      ImagePosition   =   7
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Left            =   252
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SymbolName      =   "trash"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   6
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin DesktopCanvas TemplateHost
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   26
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Left            =   584
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   6
      Transparent     =   True
      Visible         =   True
      Width           =   108
   End
   Begin DesktopSeparator SepToolbar
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   2
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   37
      Transparent     =   False
      Visible         =   True
      Width           =   700
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin NativeOutlineViewControl TreeView
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
      Height          =   238
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RowHeight       =   22.0
      Scope           =   0
      SelectedRow     =   0
      ShowsHeader     =   True
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   40
      Transparent     =   False
      Visible         =   True
      Width           =   668
   End
   Begin DesktopCanvas EmptyIcon
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Left            =   302
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
      Top             =   64
      Transparent     =   True
      Visible         =   True
      Width           =   44
   End
   Begin NativeLabelControl EmptyTitle
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
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   16
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
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   2
      TextColor       =   &c8E8E93
      Tooltip         =   ""
      Top             =   172
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   668
   End
   Begin NativeLabelControl EmptyHint
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
      Height          =   40
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   116
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumNumberOfLines=   0
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   2
      TextColor       =   &c8E8E93
      Tooltip         =   ""
      Top             =   200
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   468
   End
   Begin DesktopSeparator SepInspector
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   2
      Index           =   -2147483648
      InitialParent   =   "PayloadPanel"
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   288
      Transparent     =   False
      Visible         =   True
      Width           =   668
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin NativeLabelControl InspectorHeader
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   16
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
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   298
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   300
   End
   Begin NativeLabelControl NameLabel
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   16
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
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   326
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin NativeTextFieldControl NameField
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   136
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   324
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   548
   End
   Begin NativeLabelControl TypeLabel
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   16
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
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   356
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin NativeLabelControl TypeValue
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   136
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
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c8E8E93
      Tooltip         =   ""
      Top             =   356
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin NativeLabelControl SourceLabel
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   16
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
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   380
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin NativeLabelControl SourceValue
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   136
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
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c8E8E93
      Tooltip         =   ""
      Top             =   380
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   548
   End
   Begin NativeLabelControl PermsLabel
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   16
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
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   408
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin NativeTextFieldControl PermsField
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   136
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   406
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   80
   End
   Begin NativeLabelControl InspectorHint
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
      InitialParent   =   "PayloadPanel"
      Italic          =   False
      Left            =   16
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
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   2
      TextColor       =   &c8E8E93
      Tooltip         =   ""
      Top             =   434
      Transparent     =   False
      TruncatesLastVisibleLine=   False
      Underline       =   False
      Visible         =   True
      Width           =   668
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub DropObject(obj As DragItem, action As DragItem.Types)
		  #Pragma Unused action
		  If mPayload Is Nil Then Return
		  // Dépôt depuis le Finder : dossier → arborescence, .app → feuille opaque.
		  Var parentID As String = ParentForInsertion
		  Var last As String
		  Do
		    If obj.FolderItemAvailable Then
		      Var node As PayloadNode = PayloadNode.FromItem(obj.FolderItem)
		      If node <> Nil Then
		        Call mPayload.Tree.AddNode(node, parentID)
		        last = node.NodeID
		      End If
		    End If
		  Loop Until Not obj.NextItem
		  If last <> "" Then mSelectedID = last
		  BuildTree
		  Touch
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  Self.AcceptFileDrop("special/any")
		  ApplyTexts
		  BuildTree
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddNodes(nodes() As PayloadNode, parent As NativeOutlineNode)
		  For Each n As PayloadNode In nodes
		    Var node As NativeOutlineNode = TreeView.AddNode(parent, n.Name, n.PermissionsString)
		    If node Is Nil Then Continue
		    mNodeIDs.Value(node.Id) = n.NodeID
		    If n.IsDirectory Then
		      TreeView.Tree.SetNodeIcon(node, "folder.fill")
		    Else
		      TreeView.Tree.SetNodeIcon(node, "doc.fill")
		    End If
		    TreeView.Tree.SetNodeTextColor(node, 1, &c8E8E93)
		    If n.SourcePath <> "" Then TreeView.Tree.SetNodeSubtitle(node, 0, n.SourcePath)
		    AddNodes(n.Children, node)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyTexts()
		  mUpdating = True
		  AddFolderBtn.Caption = " " + Loc.kFolderButton
		  AddFilesBtn.Caption = " " + Loc.kFilesEllipsis
		  RemoveBtn.Caption = " " + Loc.kRemoveButton
		  EmptyTitle.Text = Loc.kDropFilesHere
		  EmptyHint.Text = Loc.kDropFilesHint
		  InspectorHeader.Text = Loc.kSelectedItem
		  NameLabel.Text = Loc.kNameLabel
		  TypeLabel.Text = Loc.kTypeLabel
		  SourceLabel.Text = Loc.kSourceLabel
		  PermsLabel.Text = Loc.kPermissionsLabel
		  PermsField.Hint = Loc.kPermsPlaceholder
		  InspectorHint.Text = Loc.kSelectItemForPermissions
		  // Comme en SwiftUI : Button(role: .destructive) pour « Retirer ».
		  If RemoveBtn.Inner <> Nil Then RemoveBtn.Inner.SetDestructive(True)
		  EnsureTemplateMenu
		  ApplyTextStyles
		  mUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub BuildTree()
		  EnsureTree
		  TreeView.RemoveAllRows
		  mNodeIDs = New Dictionary
		  If mPayload <> Nil Then AddNodes(mPayload.Tree, Nil)
		  TreeView.Reload
		  TreeView.ExpandAll
		  If mEmptyIcon Is Nil Then
		    // Image(systemName: "arrow.down.doc").font(.system(size: 40)).foregroundStyle(.tertiary)
		    mEmptyIcon = New NativeImageView(44, 44)
		    mEmptyIcon.SetTint(True, &cB0B0B5)
		    mEmptyIcon.ShowSymbol("arrow.down.doc", Loc.kDropFilesHere)
		    NativeControlHost.Fill(EmptyIcon, mEmptyIcon.Handle)
		  End If
		  RefreshInspector
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyEmptyState(empty As Boolean)
		  // La liste et l'invite s'excluent. Trois pièges, relevés à la trace :
		  // - Xojo rattache au canevas de l'arbre tout contrôle posé dans son rectangle,
		  //   quel que soit InitialParent : l'invite est enfant de TreeView. Le canevas
		  //   reste donc visible ; seules la table et l'invite alternent ;
		  // - la table est une vue AppKit hébergée hors du canevas : on la masque elle-même ;
		  // - un Visible posé pendant que l'onglet est masqué ne redescend pas jusqu'à la
		  //   vue : setHidden, directement sur les vues.
		  Declare Sub setHidden Lib "AppKit" Selector "setHidden:" (v As Ptr, flag As Boolean)
		  setHidden(TreeView.Handle, False)
		  Var table As Ptr = TreeView.Tree.Handle
		  If table <> Nil Then setHidden(table, empty)
		  setHidden(EmptyIcon.Handle, Not empty)
		  setHidden(EmptyTitle.Handle, Not empty)
		  setHidden(EmptyHint.Handle, Not empty)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyTextStyles()
		  // Text(...).foregroundStyle(.secondary) pour le titre et la légende de
		  // l'inspecteur ; .font(.caption).foregroundStyle(.tertiary) pour l'aide.
		  // Couleurs sémantiques d'AppKit : elles suivent le mode sombre.
		  Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  Declare Function secondaryLabelColor Lib "AppKit" Selector "secondaryLabelColor" (cls As Ptr) As Ptr
		  Declare Function tertiaryLabelColor Lib "AppKit" Selector "tertiaryLabelColor" (cls As Ptr) As Ptr
		  Declare Sub setTextColor Lib "AppKit" Selector "setTextColor:" (v As Ptr, c As Ptr)
		  
		  EmptyTitle.FontSize = 13
		  EmptyHint.FontSize = 10
		  InspectorHint.FontSize = 10
		  
		  Var cls As Ptr = NSClassFromString("NSColor")
		  If Cocoa.Responds(EmptyTitle.Handle, "setTextColor:") Then setTextColor(EmptyTitle.Handle, secondaryLabelColor(cls))
		  If Cocoa.Responds(EmptyHint.Handle, "setTextColor:") Then setTextColor(EmptyHint.Handle, tertiaryLabelColor(cls))
		  If Cocoa.Responds(InspectorHint.Handle, "setTextColor:") Then setTextColor(InspectorHint.Handle, secondaryLabelColor(cls))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnsureTemplateMenu()
		  // Menu { … } label: { Label("Modèle", systemImage: "plus.rectangle.on.folder") }
		  If mTemplatePopup <> Nil Then Return
		  Var items() As String = Array("/Applications", "/Library", "/usr/local/bin")
		  Var w As Double
		  mTemplatePopup = XPUI.MakePullDown(Loc.kTemplateButton, "plus.rectangle.on.folder", items, w)
		  mTemplateW = w
		  AddHandler mTemplatePopup.Changed, AddressOf TemplateChosen
		  NativeControlHost.Fill(TemplateHost, mTemplatePopup.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TemplateChosen(sender As NativePopupButton, index As Integer)
		  #Pragma Unused sender
		  // Déroulant : l'item 0 est le titre ; les modèles suivent.
		  If mPayload Is Nil Then Return
		  Var node As PayloadNode
		  Select Case index
		  Case 1
		    node = PayloadNode.DirectoryNode("Applications")
		  Case 2
		    node = PayloadNode.DirectoryNode("Library")
		  Case 3
		    Var bin As PayloadNode = PayloadNode.DirectoryNode("bin")
		    Var local As PayloadNode = PayloadNode.DirectoryNode("local")
		    local.Children.Add(bin)
		    node = PayloadNode.DirectoryNode("usr")
		    node.Children.Add(local)
		  End Select
		  If node Is Nil Then Return
		  mPayload.Tree.Add(node)
		  mSelectedID = node.NodeID
		  BuildTree
		  Touch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FitButton(b As NativeIconButtonControl) As Double
		  // Largeur ajustée au contenu, comme un Button SwiftUI dans un HStack.
		  Var inner As NativeButton = b.Inner
		  If inner Is Nil Then Return b.Width
		  inner.Refit
		  Var f As Cocoa.NSRect = Cocoa.ViewFrame(inner.Handle)
		  If f.width <= 0 Then Return b.Width
		  Return Ceiling(f.width)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LayoutAll()
		  // Calque du VStack(spacing: 0) SwiftUI :
		  //   barre d'outils (padding 8, boutons espacés de 8, « Modèle » à droite)
		  //   Divider
		  //   liste, ou invite centrée
		  //   Divider
		  //   inspecteur : 44 pt sans sélection, légende centrée ; 180 pt avec.
		  // Toute la géométrie passe par Place : taille par Xojo, cadre par AppKit.
		  // Xojo convertit Left/Top via la position qu'il CROIT être celle du conteneur
		  // (x = 0), alors que sa vue est à x = 230, derrière la barre latérale : tout
		  // contrôle qu'il déplaçait atterrissait à x = -230 (relevé à la trace).
		  Var pf As Cocoa.NSRect = Cocoa.ViewFrame(Self.Handle)
		  Var w As Double = pf.width
		  Var h As Double = pf.height
		  If w <= 0 Or h <= 0 Then Return
		  
		  Const kPad = 8
		  Const kBarH = 38
		  Const kBtnH = 26
		  Var btnTop As Double = (kBarH - kBtnH) / 2
		  
		  // ─── Barre d'outils ───
		  Var x As Double = kPad
		  For Each b As NativeIconButtonControl In Array(AddFolderBtn, AddFilesBtn, RemoveBtn)
		    Var bw As Double = FitButton(b)
		    XPUI.Place(Self.Handle, b, x, btnTop, bw, kBtnH)
		    x = x + bw + kPad
		  Next
		  If mTemplatePopup <> Nil And mTemplateW > 0 Then
		    XPUI.Place(Self.Handle, TemplateHost, w - kPad - mTemplateW, btnTop, mTemplateW, kBtnH)
		    NativeControlHost.Fill(TemplateHost, mTemplatePopup.Handle)
		  End If
		  XPUI.Place(Self.Handle, SepToolbar, 0, kBarH - 1, w, 1)
		  
		  // ─── Inspecteur ───
		  Var inspH As Double = 44
		  If mHasSelection Then inspH = 180
		  Var inspTop As Double = h - inspH
		  XPUI.Place(Self.Handle, SepInspector, 0, inspTop - 1, w, 1)
		  XPUI.Place(Self.Handle, InspectorHint, 0, inspTop + (inspH - 18) / 2, w, 18)
		  
		  Var y As Double = inspTop + 10
		  Var fieldW As Double = Max(80, w - 136 - 16)
		  XPUI.Place(Self.Handle, InspectorHeader, 16, y, 300, 20)
		  XPUI.Place(Self.Handle, NameLabel, 16, y + 28, 110, 18)
		  XPUI.Place(Self.Handle, NameField, 136, y + 26, fieldW, 24)
		  XPUI.Place(Self.Handle, TypeLabel, 16, y + 58, 110, 18)
		  XPUI.Place(Self.Handle, TypeValue, 136, y + 58, 240, 18)
		  XPUI.Place(Self.Handle, SourceLabel, 16, y + 82, 110, 18)
		  XPUI.Place(Self.Handle, SourceValue, 136, y + 82, fieldW, 18)
		  XPUI.Place(Self.Handle, PermsLabel, 16, y + 110, 110, 18)
		  XPUI.Place(Self.Handle, PermsField, 136, y + 108, 80, 24)
		  
		  // ─── Liste, ou invite ───
		  Var bandTop As Double = kBarH
		  Var bandH As Double = inspTop - 1 - bandTop
		  XPUI.Place(Self.Handle, TreeView, 0, bandTop, w, bandH)
		  
		  Var empty As Boolean = mPayload Is Nil Or mPayload.Tree.Count = 0
		  ApplyEmptyState(empty)
		  If Not empty Then Return
		  
		  // VStack(spacing: 10) { icône 40 pt ; titre ; aide .caption, maxWidth 360 }
		  Const kIcon = 44
		  Const kTitleH = 18
		  Const kHintH = 30
		  Var hintW As Double = Min(360, w - 32)
		  Var blockH As Double = kIcon + 10 + kTitleH + 10 + kHintH
		  Var top As Double = bandTop + Max(0, (bandH - blockH) / 2)
		  XPUI.PinView(Self.Handle, EmptyIcon.Handle, (w - kIcon) / 2, top, kIcon, kIcon)
		  If mEmptyIcon <> Nil Then NativeControlHost.Fill(EmptyIcon, mEmptyIcon.Handle)
		  XPUI.PinView(Self.Handle, EmptyTitle.Handle, 16, top + kIcon + 10, w - 32, kTitleH)
		  XPUI.PinView(Self.Handle, EmptyHint.Handle, (w - hintW) / 2, top + kIcon + 10 + kTitleH + 10, hintW, kHintH)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Relayout()
		  // Appelé par ComponentsPanel.LayoutChildren à chaque redimensionnement.
		  LayoutAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshView()
		  // Le NativeTableViewControl ne monte sa table qu'au premier Paint : un arbre
		  // peuplé pendant que l'onglet était masqué reste invisible. On recharge donc
		  // la vue quand le panneau devient visible.
		  TreeView.Reload
		  TreeView.ExpandAll
		  LayoutAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnsureTree()
		  If mColumnsReady Then Return
		  mColumnsReady = True
		  // Comme la List SwiftUI : pas d'en-tête, pas de lignes alternées, et les
		  // permissions discrètes, alignées à droite.
		  TreeView.ShowsHeader = False
		  TreeView.AllowsRowReordering = True
		  TreeView.AlternatingRowColors = False
		  TreeView.AddColumn(Loc.kNameLabel, 420, False)
		  TreeView.AddColumn(Loc.kPermissionsLabel, 90, False)
		  TreeView.Tree.SetColumnAlignment(1, NativeTableView.Alignments.Right)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPayload(payload As PkgPayload)
		  mPayload = payload
		  mSelectedID = ""
		  BuildTree
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ParentForInsertion() As String
		  // Insère sous le dossier sélectionné, sinon à la racine.
		  If mPayload Is Nil Or mSelectedID = "" Then Return ""
		  Var node As PayloadNode = mPayload.Tree.FindNode(mSelectedID)
		  If node Is Nil Or Not node.IsDirectory Then Return ""
		  Return mSelectedID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshInspector()
		  Var node As PayloadNode
		  If mPayload <> Nil And mSelectedID <> "" Then node = mPayload.Tree.FindNode(mSelectedID)
		  Var has As Boolean = node <> Nil
		  Var hasSource As Boolean = has
		  If has Then hasSource = node.SourcePath <> ""
		  mHasSelection = has
		  XPUI.SetShown(InspectorHeader, has)
		  XPUI.SetShown(NameLabel, has)
		  XPUI.SetShown(NameField, has)
		  XPUI.SetShown(TypeLabel, has)
		  XPUI.SetShown(TypeValue, has)
		  XPUI.SetShown(SourceLabel, hasSource)
		  XPUI.SetShown(SourceValue, hasSource)
		  XPUI.SetShown(PermsLabel, has)
		  XPUI.SetShown(PermsField, has)
		  XPUI.SetShown(InspectorHint, Not has)
		  RemoveBtn.Enabled = has
		  If RemoveBtn.Inner <> Nil Then RemoveBtn.Inner.Enabled = has
		  LayoutAll
		  If Not has Then Return
		  
		  mUpdating = True
		  NameField.Text = node.Name
		  If node.IsDirectory Then
		    TypeValue.Text = Loc.kFolderKind
		  Else
		    TypeValue.Text = Loc.kFileKind
		  End If
		  SourceValue.Text = node.SourcePath
		  PermsField.Text = node.PermissionsString
		  mUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Touch()
		  If Owner <> Nil Then Owner.MarkDirty
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mColumnsReady As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mEmptyIcon As NativeImageView
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHasSelection As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTemplatePopup As NativePopupButton
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTemplateW As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mNodeIDs As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPayload As PkgPayload
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

#tag Events AddFolderBtn
	#tag Event
		Sub Pressed()
		  If mPayload Is Nil Then Return
		  Var node As PayloadNode = PayloadNode.DirectoryNode(Loc.kNewFolderName)
		  Call mPayload.Tree.AddNode(node, ParentForInsertion)
		  mSelectedID = node.NodeID
		  BuildTree
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddFilesBtn
	#tag Event
		Sub Pressed()
		  If mPayload Is Nil Then Return
		  Var panel As New NativeFilePanel(NativeFilePanel.Modes.Open)
		  panel.SetOpenOptions(True, True, True)
		  panel.SetTexts(Loc.kFilesEllipsis, "", "")
		  If Not panel.RunModal Then Return
		  Var parentID As String = ParentForInsertion
		  Var last As String
		  For Each f As FolderItem In panel.Values
		    Var node As PayloadNode = PayloadNode.FromItem(f)
		    If node Is Nil Then Continue
		    Call mPayload.Tree.AddNode(node, parentID)
		    last = node.NodeID
		  Next
		  If last <> "" Then mSelectedID = last
		  BuildTree
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RemoveBtn
	#tag Event
		Sub Pressed()
		  If mPayload Is Nil Or mSelectedID = "" Then Return
		  Call mPayload.Tree.RemoveNode(mSelectedID)
		  mSelectedID = ""
		  BuildTree
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TreeView
	#tag Event
		Sub NodeSelectionChanged(node As NativeOutlineNode)
		  If node Is Nil Then
		    mSelectedID = ""
		  Else
		    mSelectedID = mNodeIDs.Lookup(node.Id, "")
		  End If
		  RefreshInspector
		End Sub
	#tag EndEvent
	#tag Event
		Sub NodesMoved(nodes() As NativeOutlineNode, newParent As NativeOutlineNode, index As Integer)
		  #Pragma Unused index
		  If mPayload Is Nil Then Return
		  Var parentID As String = ""
		  If newParent <> Nil Then parentID = mNodeIDs.Lookup(newParent.Id, "")
		  For Each node As NativeOutlineNode In nodes
		    Var id As String = mNodeIDs.Lookup(node.Id, "")
		    If id <> "" Then mPayload.Tree.MoveNode(id, parentID)
		  Next
		  BuildTree
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NameField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mPayload Is Nil Or mSelectedID = "" Then Return
		  mPayload.Tree.UpdateName(mSelectedID, Me.Text)
		  Touch
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PermsField
	#tag Event
		Sub TextChanged()
		  If mUpdating Or mPayload Is Nil Or mSelectedID = "" Then Return
		  Var mode As Integer = Val("&o" + Me.Text.Trim)
		  If mode <= 0 Then Return
		  mPayload.Tree.UpdatePermissions(mSelectedID, mode)
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
