#tag Module
Protected Module XPUI
	#tag Method, Flags = &h0
		Function FrameInPanel(panelView As Ptr, c As DesktopUIControl) As Cocoa.NSRect
		  // Cadre réel du contrôle, exprimé depuis le coin haut-gauche du panneau : y
		  // compte vers le bas, contrairement à AppKit.
		  Declare Function convertRectToView Lib "AppKit" Selector "convertRect:toView:" (v As Ptr, r As Cocoa.NSRect, other As Ptr) As Cocoa.NSRect
		  Declare Function bounds Lib "AppKit" Selector "bounds" (v As Ptr) As Cocoa.NSRect
		  Var out As Cocoa.NSRect
		  If c Is Nil Or c.Handle = Nil Or panelView = Nil Then Return out
		  Var pf As Cocoa.NSRect = Cocoa.ViewFrame(panelView)
		  Var r As Cocoa.NSRect = convertRectToView(c.Handle, bounds(c.Handle), panelView)
		  out.x = r.x
		  out.y = pf.height - r.y - r.height
		  out.width = r.width
		  out.height = r.height
		  Return out
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMarkdown(c As DesktopLabel, markdown As String)
		  // Équivalent de Text("… **gras** …") en SwiftUI, qui interprète le Markdown.
		  // NSAttributedString sait le lire depuis macOS 12, mais l'analyseur ne pose
		  // aucune police : il marque les plages avec NSInlinePresentationIntent
		  // (2 = gras, 1 = italique), qu'on convertit en polices du libellé.
		  Declare Function alloc Lib "Foundation" Selector "alloc" (cls As Ptr) As Ptr
		  Declare Function initMarkdown Lib "Foundation" Selector "initWithMarkdownString:options:baseURL:error:" (obj As Ptr, s As CFStringRef, options As Ptr, baseURL As Ptr, ByRef err As Ptr) As Ptr
		  Declare Function initWithAttributed Lib "Foundation" Selector "initWithAttributedString:" (obj As Ptr, s As Ptr) As Ptr
		  Declare Function lengthOf Lib "Foundation" Selector "length" (s As Ptr) As Integer
		  Declare Function attributeAtIndex Lib "Foundation" Selector "attribute:atIndex:effectiveRange:" (s As Ptr, name As CFStringRef, index As Integer, ByRef range As Cocoa.NSRange) As Ptr
		  Declare Sub addAttribute Lib "Foundation" Selector "addAttribute:value:range:" (s As Ptr, name As CFStringRef, value As Ptr, range As Cocoa.NSRange)
		  Declare Function integerValue Lib "Foundation" Selector "integerValue" (n As Ptr) As Integer
		  Declare Function fontOf Lib "AppKit" Selector "font" (v As Ptr) As Ptr
		  Declare Function textColorOf Lib "AppKit" Selector "textColor" (v As Ptr) As Ptr
		  Declare Sub setAttributedStringValue Lib "AppKit" Selector "setAttributedStringValue:" (v As Ptr, s As Ptr)
		  
		  // Repli : sans le texte brut, l'utilisateur verrait les astérisques.
		  c.Text = markdown.ReplaceAll("**", "")
		  Var host As Ptr = c.Handle
		  If host = Nil Then Return
		  
		  Var err As Ptr
		  Var parsed As Ptr = initMarkdown(alloc(Cocoa.ClassRef("NSAttributedString")), markdown, Nil, Nil, err)
		  If parsed = Nil Or err <> Nil Then Return
		  Var rich As Ptr = initWithAttributed(alloc(Cocoa.ClassRef("NSMutableAttributedString")), parsed)
		  If rich = Nil Then Return
		  
		  Var n As Integer = lengthOf(rich)
		  Var whole As Cocoa.NSRange
		  whole.length = n
		  Var base As Ptr = fontOf(host)
		  If base <> Nil Then addAttribute(rich, "NSFont", base, whole)
		  Var tint As Ptr = textColorOf(host)
		  If tint <> Nil Then addAttribute(rich, "NSColor", tint, whole)
		  
		  Var fm As Ptr = Cocoa.SharedFontManager
		  Var i As Integer = 0
		  While i < n
		    Var r As Cocoa.NSRange
		    Var intent As Ptr = attributeAtIndex(rich, "NSInlinePresentationIntent", i, r)
		    If intent <> Nil And base <> Nil And (integerValue(intent) And 2) <> 0 Then
		      Var bold As Ptr = Cocoa.ConvertFontTrait(fm, base, 2)   // NSBoldFontMask
		      If bold <> Nil Then addAttribute(rich, "NSFont", bold, r)
		    End If
		    If r.length = 0 Then Exit
		    i = r.location + r.length
		  Wend
		  setAttributedStringValue(host, rich)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FitLabelWidth(c As DesktopLabel) As Double
		  // Largeur exacte demandée par le libellé, mesurée par AppKit : Picture.TextWidth
		  // sous-estimait, et « Identité (Developer ID Application) » restait tronqué.
		  Declare Sub sizeToFit Lib "AppKit" Selector "sizeToFit" (v As Ptr)
		  Var h As Ptr = c.Handle
		  If h = Nil Then Return 0
		  sizeToFit(h)
		  Return Ceiling(Cocoa.ViewFrame(h).width) + 2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextWidth(c As DesktopLabel, text As String) As Double
		  // Largeur naturelle du texte d'un libellé, pour lui donner la place qu'il
		  // demande plutôt qu'une colonne fixe — comme un LabeledContent SwiftUI.
		  If text = "" Then Return 0
		  Var p As New Picture(4, 4)
		  p.Graphics.FontName = "System"
		  p.Graphics.FontSize = If(c.FontSize > 0, c.FontSize, 13)
		  p.Graphics.Bold = c.Bold
		  Return Ceiling(p.Graphics.TextWidth(text)) + 2
		End Function
	#tag EndMethod

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
