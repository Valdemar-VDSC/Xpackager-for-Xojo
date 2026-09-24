#tag Module
Protected Module XPUI
	#tag Method, Flags = &h0
		Sub PinView(panelView As Ptr, v As Ptr, x As Double, top As Double, w As Double, h As Double)
		  // Pose la vue v au rectangle (x, top, w, h) exprimé depuis le coin haut-gauche de
		  // la vue panelView (le Handle du conteneur), quel que soit son parent réel : le cadre est converti dans le repère de
		  // sa vue parente (canevas, cadre de groupe…).
		  // Pourquoi AppKit et pas Left/Top : Xojo convertit ces derniers via la position
		  // qu'il CROIT être celle du conteneur (x = 0), alors que sa vue est décalée par
		  // la barre latérale — tout contrôle déplacé atterrissait à x = -230.
		  Declare Function superview Lib "AppKit" Selector "superview" (v As Ptr) As Ptr
		  Declare Function convertRectFromView Lib "AppKit" Selector "convertRect:fromView:" (v As Ptr, r As Cocoa.NSRect, other As Ptr) As Cocoa.NSRect
		  If v = Nil Then Return
		  Var pf As Cocoa.NSRect = Cocoa.ViewFrame(panelView)
		  Var r As Cocoa.NSRect
		  r.x = x
		  r.y = pf.height - top - h
		  r.width = w
		  r.height = h
		  Var sv As Ptr = superview(v)
		  If sv <> Nil And sv <> panelView Then r = convertRectFromView(sv, r, panelView)
		  Cocoa.SetViewFrame(v, r)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Place(panelView As Ptr, c As DesktopUIControl, x As Double, top As Double, w As Double, h As Double)
		  // La TAILLE par Xojo (ses événements Resized recentrent un bouton, recalent une
		  // table…), puis le CADRE par AppKit, qui a le dernier mot (voir PinView).
		  c.Width = w
		  c.Height = h
		  PinView(panelView, c.Handle, x, top, w, h)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShown(c As DesktopUIControl, shown As Boolean)
		  // Visible pour Xojo, setHidden pour AppKit : le premier seul ne suffit pas quand
		  // la page est masquée au moment du changement.
		  Declare Sub setHidden Lib "AppKit" Selector "setHidden:" (v As Ptr, flag As Boolean)
		  c.Visible = shown
		  setHidden(c.Handle, Not shown)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetViewShown(v As Ptr, shown As Boolean)
		  Declare Sub setHidden Lib "AppKit" Selector "setHidden:" (v As Ptr, flag As Boolean)
		  If v <> Nil Then setHidden(v, Not shown)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextHeight(c As DesktopLabel, text As String, width As Double) As Double
		  // Hauteur du texte d'un libellé à largeur donnée, avec sa police.
		  If text = "" Or width <= 0 Then Return 0
		  Var p As New Picture(4, 4)
		  p.Graphics.FontName = "System"
		  p.Graphics.FontSize = If(c.FontSize > 0, c.FontSize, 13)
		  p.Graphics.Bold = c.Bold
		  Return Ceiling(p.Graphics.TextHeight(text, width)) + 2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MakePullDown(title As String, symbolName As String, items() As String, ByRef width As Double) As NativePopupButton
		  // Équivalent de Menu { … } label: { Label(title, systemImage:) }
		  //   .menuStyle(.borderlessButton) : un NSPopUpButton déroulant sans bordure,
		  // titre, symbole et chevron. L'item 0 est le titre ; les choix suivent (index ≥ 1).
		  // width reçoit la largeur ajustée au titre : sizeToFit réserve à un tel
		  // déroulant une zone de titre fixe, qui rejetait le chevron loin du texte.
		  Declare Sub setBordered Lib "AppKit" Selector "setBordered:" (v As Ptr, flag As Boolean)
		  Declare Function itemAtIndex Lib "AppKit" Selector "itemAtIndex:" (v As Ptr, index As Integer) As Ptr
		  Declare Sub setImage Lib "AppKit" Selector "setImage:" (v As Ptr, img As Ptr)
		  Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  Declare Function symbolImage Lib "AppKit" Selector "imageWithSystemSymbolName:accessibilityDescription:" (cls As Ptr, name As CFStringRef, desc As CFStringRef) As Ptr
		  
		  Var pop As New NativePopupButton(True)
		  pop.SetItems(title)
		  Var h As Ptr = pop.Handle
		  setBordered(h, False)
		  Var titleItem As Ptr = itemAtIndex(h, 0)
		  If titleItem <> Nil Then setImage(titleItem, symbolImage(NSClassFromString("NSImage"), symbolName, title))
		  
		  // image et marge (30), texte, puis la zone du chevron (16, mesurée)
		  Var p As New Picture(4, 4)
		  p.Graphics.FontName = "System"
		  p.Graphics.FontSize = 13
		  width = Ceiling(30 + p.Graphics.TextWidth(title) + 4 + 16)
		  
		  For Each item As String In items
		    pop.AddItem(item)
		  Next
		  Return pop
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FitSwitch(s As NativeSwitchControl)
		  // À appeler une fois la page affichée (ProjectWindow.FitSwitches) : la bibliothèque
		  // héberge l'interrupteur au premier dessin et lui impose alors son cadre. Pas
		  // depuis l'événement Paint du contrôle : dans VDSTools 1.1, Opening et Paint
		  // sont intervertis à l'export, et Paint arrive pendant Opening, contrôle Nil.
		  // NativeSwitchControl laisse à son NSSwitch un cadre fixe de 54×24 qu'il
		  // recentre dans le canevas : le cadre déborde et l'interrupteur est rogné.
		  // On le ramène à sa taille intrinsèque (36×16 en taille mini, celle d'un
		  // Toggle dans un Form groupé SwiftUI), centré dans le canevas.
		  // Gardes successives : Paint peut arriver pendant l'Opening de la fenêtre, avant
		  // que l'interrupteur soit construit, et une garde combinée évaluait s.Inner
		  // sur un contrôle Nil (arrêt du débogueur dans WebSafeCheck.Paint).
		  If s Is Nil Then Return
		  Var inner As NativeSwitch = s.Inner
		  If inner Is Nil Then Return
		  Var h As Ptr = inner.Handle
		  If h = Nil Then Return
		  Declare Function intrinsicContentSize Lib "AppKit" Selector "intrinsicContentSize" (v As Ptr) As Cocoa.NSSize
		  Var size As Cocoa.NSSize = intrinsicContentSize(h)
		  If size.width <= 0 Or size.height <= 0 Then Return
		  Var r As Cocoa.NSRect
		  r.width = size.width
		  r.height = size.height
		  r.x = Round((s.Width - size.width) / 2)
		  r.y = Round((s.Height - size.height) / 2)
		  // N'écrire que si le cadre diffère : l'appel est répété à chaque affichage.
		  Var cur As Cocoa.NSRect = Cocoa.ViewFrame(h)
		  If cur.x = r.x And cur.y = r.y And cur.width = r.width And cur.height = r.height Then Return
		  Cocoa.SetViewFrame(h, r)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenURL(url As String)
		  ShowURL(url)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PromptForName(title As String, message As String, defaultValue As String) As String
		  // Petite invite modale pour saisir un nom (NSAlert + NSTextField accessoire),
		  // équivalent du promptForName(…) de la version SwiftUI.
		  Var alert As New NativeAlert(title, message)
		  Var okIndex As Integer = alert.AddButton(Loc.kSaveButton)
		  Var cancelIndex As Integer = alert.AddButton(Loc.kCancelButton)
		  alert.SetDefaultButton(okIndex)
		  alert.SetCancelButton(cancelIndex)
		  
		  Var frame As Cocoa.NSRect
		  frame.x = 0
		  frame.y = 0
		  frame.width = 280
		  frame.height = 24
		  Var field As Ptr = Cocoa.InitWithFrame(Cocoa.Alloc(Cocoa.ClassRef("NSTextField")), frame)
		  If field = Nil Then Return ""
		  
		  Declare Sub setStringValue Lib "AppKit" Selector "setStringValue:" (f As Ptr, s As Ptr)
		  Declare Function stringValue Lib "AppKit" Selector "stringValue" (f As Ptr) As CFStringRef
		  setStringValue(field, Cocoa.NSStr(defaultValue))
		  alert.SetAccessoryView(field, 280, 24)
		  
		  Var response As Integer = alert.RunModal
		  If response <> okIndex Then Return ""
		  Var entered As String = stringValue(field)
		  Return entered.Trim
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowError(message As String)
		  Var alert As New NativeAlert(message)
		  alert.Style = NativeAlert.Styles.Warning
		  Call alert.RunModal
		End Sub
	#tag EndMethod


End Module
#tag EndModule
