#tag Module
Protected Module XPUI
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
