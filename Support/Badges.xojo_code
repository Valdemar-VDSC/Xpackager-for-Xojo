#tag Module
Protected Module Badges
	#tag Method, Flags = &h21
		Private Function ImageViewFor(pic As Picture, x As Double, y As Double, w As Double, h As Double, tip As String) As Ptr
		  // Une NSImageView posée à la main. L'image vient des ressources du projet ;
		  // elle passe par un fichier temporaire — NSImage sait lire un chemin sans
		  // qu'on ait à déclarer NSData — puis le fichier disparaît.
		  #If TargetMacOS
		    Declare Function initWithContentsOfFile Lib "AppKit" Selector "initWithContentsOfFile:" (obj As Ptr, path As CFStringRef) As Ptr
		    Declare Sub setImage Lib "AppKit" Selector "setImage:" (v As Ptr, img As Ptr)
		    Declare Sub setImageScaling Lib "AppKit" Selector "setImageScaling:" (v As Ptr, scaling As Integer)
		    Declare Sub setToolTip Lib "AppKit" Selector "setToolTip:" (v As Ptr, s As Ptr)
		    Declare Sub setAutoresizingMask Lib "AppKit" Selector "setAutoresizingMask:" (v As Ptr, mask As Integer)

		    If pic = Nil Then Return Nil
		    // Une image du projet porte plusieurs définitions et refuse d'être
		    // enregistrée telle quelle : on en extrait d'abord la version @2x.
		    Var flat As Picture = pic
		    Try
		      flat = pic.BestRepresentation(pic.Width, pic.Height, 2.0)
		    Catch err As RuntimeException
		      flat = pic
		    End Try

		    Var tmp As FolderItem = SpecialFolder.Temporary.Child("xpackager-badge-" + PkgIDs.NewID + ".png")
		    Try
		      flat.Save(tmp, Picture.Formats.PNG)
		    Catch err As RuntimeException
		      Return Nil
		    End Try

		    Var img As Ptr = initWithContentsOfFile(Cocoa.Alloc(Cocoa.ClassRef("NSImage")), tmp.NativePath)
		    tmp.Remove
		    If img = Nil Then Return Nil

		    Var frame As Cocoa.NSRect
		    frame.x = x
		    frame.y = y
		    frame.width = w
		    frame.height = h
		    Var view As Ptr = Cocoa.InitWithFrame(Cocoa.Alloc(Cocoa.ClassRef("NSImageView")), frame)
		    If view = Nil Then Return Nil
		    setImage(view, img)
		    setImageScaling(view, 3)   // proportionnel
		    If tip <> "" Then setToolTip(view, Cocoa.NSStr(tip))
		    // Collé au bas de la barre latérale quand la fenêtre change de hauteur.
		    setAutoresizingMask(view, 32)
		    Return view
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Install(sidebarView As Ptr, owner As DesktopWindow)
		  // Deux logos au bas de la barre latérale — au-dessus du pied « Réglages » —
		  // pour dire avec quoi l'application est faite. La barre latérale native
		  // n'offrant pas d'accessoire, on ajoute les vues à la main.
		  #If TargetMacOS
		    // Une pose par fenêtre : chaque fenêtre de projet a sa propre barre latérale.
		    If sidebarView = Nil Then Return
		    Var frame As Cocoa.NSRect = Cocoa.ViewFrame(sidebarView)
		    If frame.width <= 0 Then Return

		    // Une seule pastille porte les deux logos : les images font 200 × 250,
		    // à 58 × 72 elles gardent leurs proportions, avec dix points de marge
		    // tout autour et entre elles.
		    Const kBas = 66        // au-dessus du pied
		    Const kLogoW = 58
		    Const kLogoH = 72
		    Const kEcart = 10
		    Const kMarge = 10
		    Var plaqueW As Double = 2 * kLogoW + kEcart + 2 * kMarge
		    Var plaqueH As Double = kLogoH + 2 * kMarge
		    Var x As Double = (frame.width - plaqueW) / 2
		    Var sombre As Boolean = Color.IsDarkMode
		    
		    // La pastille d'abord : ajoutée avant les images, elle passe dessous.
		    Var boites() As Ptr
		    Var pastille As Ptr = PlaqueFor(x, kBas, plaqueW, plaqueH, sombre)
		    If pastille <> Nil Then
		      Cocoa.AddSubview(sidebarView, pastille)
		      boites.Add(pastille)
		    End If
		    
		    Var basLogo As Double = kBas + kMarge
		    Var tools As Ptr = ImageViewFor(madewithvds, x + kMarge, basLogo, kLogoW, kLogoH, Loc.kMadeWithTools)
		    Var xojo As Ptr = ImageViewFor(madewithxojo, x + kMarge + kLogoW + kEcart, basLogo, kLogoW, kLogoH, Loc.kMadeWithXojo)
		    If tools <> Nil Then Cocoa.AddSubview(sidebarView, tools)
		    If xojo <> Nil Then Cocoa.AddSubview(sidebarView, xojo)
		    
		    Watch(owner, boites)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PlaqueFor(x As Double, y As Double, w As Double, h As Double, visible As Boolean) As Ptr
		  // Le fond clair sous un logo. Les deux images ont un fond transparent et un
		  // texte noir : en apparence sombre il disparaîtrait dans la barre latérale.
		  // La pastille n'existe que là — en clair elle est simplement masquée.
		  #If TargetMacOS
		    Declare Sub setBoxType Lib "AppKit" Selector "setBoxType:" (b As Ptr, kind As Integer)
		    Declare Sub setTitlePosition Lib "AppKit" Selector "setTitlePosition:" (b As Ptr, pos As Integer)
		    Declare Sub setBorderWidth Lib "AppKit" Selector "setBorderWidth:" (b As Ptr, width As Double)
		    Declare Sub setCornerRadius Lib "AppKit" Selector "setCornerRadius:" (b As Ptr, radius As Double)
		    Declare Sub setFillColor Lib "AppKit" Selector "setFillColor:" (b As Ptr, c As Ptr)
		    Declare Function whiteColor Lib "AppKit" Selector "whiteColor" (cls As Ptr) As Ptr
		    Declare Sub setAutoresizingMask Lib "AppKit" Selector "setAutoresizingMask:" (v As Ptr, mask As Integer)
		    Declare Sub setHidden Lib "AppKit" Selector "setHidden:" (v As Ptr, hidden As Boolean)

		    Var frame As Cocoa.NSRect
		    frame.x = x
		    frame.y = y
		    frame.width = w
		    frame.height = h
		    Var box As Ptr = Cocoa.InitWithFrame(Cocoa.Alloc(Cocoa.ClassRef("NSBox")), frame)
		    If box = Nil Then Return Nil

		    setBoxType(box, 4)         // NSBoxCustom
		    setTitlePosition(box, 0)   // NSNoTitle
		    setBorderWidth(box, 0)
		    setCornerRadius(box, 10)
		    setFillColor(box, whiteColor(Cocoa.ClassRef("NSColor")))
		    setAutoresizingMask(box, 32)
		    setHidden(box, Not visible)
		    Return box
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Watch(owner As DesktopWindow, boites() As Ptr)
		  // On retient les pastilles pour les montrer ou les cacher quand l'utilisateur
		  // change d'apparence. AppKit ne prévient pas une vue posée à la main, et
		  // aucune couleur système ne fait « clair en sombre, rien en clair » : d'où
		  // ce réveil régulier, qui ne compare qu'un booléen.
		  If owner = Nil Or boites.Count = 0 Then Return
		  For Each boite As Ptr In boites
		    mProprietaires.Add(New WeakRef(owner))
		    mPastilles.Add(boite)
		  Next

		  If mVeille = Nil Then
		    mVeille = New Timer
		    mVeille.Period = 2000
		    AddHandler mVeille.Action, AddressOf VeilleAction
		  End If
		  mSombre = Color.IsDarkMode
		  mVeille.RunMode = Timer.RunModes.Multiple
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub VeilleAction(sender As Timer)
		  // Les fenêtres fermées sortent de la liste avant qu'on touche à leurs vues :
		  // la référence faible meurt en même temps que la barre latérale.
		  #If TargetMacOS
		    Declare Sub setHidden Lib "AppKit" Selector "setHidden:" (v As Ptr, hidden As Boolean)

		    Var sombre As Boolean = Color.IsDarkMode
		    For i As Integer = mProprietaires.LastIndex DownTo 0
		      If mProprietaires(i).Value = Nil Then
		        mProprietaires.RemoveAt(i)
		        mPastilles.RemoveAt(i)
		      ElseIf sombre <> mSombre Then
		        setHidden(mPastilles(i), Not sombre)
		      End If
		    Next
		    mSombre = sombre
		    If mProprietaires.LastIndex < 0 Then sender.RunMode = Timer.RunModes.Off
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mPastilles() As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mProprietaires() As WeakRef
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSombre As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mVeille As Timer
	#tag EndProperty


End Module
#tag EndModule
