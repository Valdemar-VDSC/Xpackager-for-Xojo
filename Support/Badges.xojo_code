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
		Sub Install(sidebarView As Ptr)
		  // Deux logos au bas de la barre latérale — au-dessus du pied « Réglages » —
		  // pour dire avec quoi l'application est faite. La barre latérale native
		  // n'offrant pas d'accessoire, on ajoute les vues à la main.
		  #If TargetMacOS
		    // Une pose par fenêtre : chaque fenêtre de projet a sa propre barre latérale.
		    If sidebarView = Nil Then Return
		    Var frame As Cocoa.NSRect = Cocoa.ViewFrame(sidebarView)
		    If frame.width <= 0 Then Return

		    // Les deux images font 200 × 250 : à 64 × 80 elles gardent leurs proportions.
		    Const kBas = 52        // au-dessus du pied
		    Const kLarge = 64
		    Const kHaut = 80
		    Const kEcart = 10
		    Var total As Double = kLarge + kEcart + kLarge
		    Var x As Double = (frame.width - total) / 2

		    Var tools As Ptr = ImageViewFor(madewithvds, x, kBas, kLarge, kHaut, Loc.kMadeWithTools)
		    Var xojo As Ptr = ImageViewFor(madewithxojo, x + kLarge + kEcart, kBas, kLarge, kHaut, Loc.kMadeWithXojo)
		    If tools <> Nil Then Cocoa.AddSubview(sidebarView, tools)
		    If xojo <> Nil Then Cocoa.AddSubview(sidebarView, xojo)
		  #EndIf
		End Sub
	#tag EndMethod



End Module
#tag EndModule
