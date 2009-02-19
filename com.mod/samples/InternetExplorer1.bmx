Import byo.com
Import MaxGui.Drivers

Global GadgetList:TList = New TList
Const	Disable:Int=1
Const	Enable:Int=2
Const	Hide:Int=3
Const	Show:Int=4
Const	Check:Int=5
Const	Uncheck:Int=6
Const	Free:Int=7
Const	SetText:Int=8
Const	Activate:Int=9
Const	Redraw:Int=10
Const	RemoveFromList:Int=11
Const	GetGadgetHandle:Int=12

Global winMain:TGadget = CreateWindow:TGadget("InternetExplorer.Application", 292, 111, 350, 262, Null, WINDOW_TITLEBAR | WINDOW_STATUS | WINDOW_CLIENTCOORDS | WINDOW_CENTER)
	GadgetList.AddLast( winMain:TGadget ) ; winMain.Context="winMain"
	Global Group2:TGadget = CreatePanel:TGadget(9, 139, 333, 111, winMain:TGadget, PANEL_GROUP, "Internet Explorer 2")
		GadgetList.AddLast( Group2:TGadget ) ; Group2.Context="Group2"
		Global txtObject2:TGadget = CreateTextField:TGadget(96, 18, 219, 23, Group2:TGadget, Null)
			SetGadgetText( txtObject2:TGadget,"")
			GadgetList.AddLast( txtObject2:TGadget ) ; txtObject2.Context="txtObject2"
		Global chkTheater2:TGadget = CreateButton:TGadget("Set theater mode", 11, 57, 118, 23, Group2:TGadget, BUTTON_CHECKBOX)
			GadgetList.AddLast( chkTheater2:TGadget ) ; chkTheater2.Context="chkTheater2"
			SetButtonState( chkTheater2:TGadget,0 )
		Global btnObject2:TGadget = CreateButton:TGadget("Object2", 11, 18, 78, 23, Group2:TGadget, BUTTON_PUSH)
			GadgetList.AddLast( btnObject2:TGadget ) ; btnObject2.Context="btnObject2"
	Global Group1:TGadget = CreatePanel:TGadget(9, 7, 333, 111, winMain:TGadget, PANEL_GROUP, "Internet Explorer 1")
		GadgetList.AddLast( Group1:TGadget ) ; Group1.Context="Group1"
		Global txtObject1:TGadget = CreateTextField:TGadget(97, 18, 219, 23, Group1:TGadget, Null)
			SetGadgetText( txtObject1:TGadget,"")
			GadgetList.AddLast( txtObject1:TGadget ) ; txtObject1.Context="txtObject1"
		Global chkTheater1:TGadget = CreateButton:TGadget("Set theater mode", 11, 57, 118, 23, Group1:TGadget, BUTTON_CHECKBOX)
			GadgetList.AddLast( chkTheater1:TGadget ) ; chkTheater1.Context="chkTheater1"
			SetButtonState( chkTheater1:TGadget,0 )
		Global btnObject1:TGadget = CreateButton:TGadget("Object1", 11, 18, 78, 23, Group1:TGadget, BUTTON_PUSH)
			GadgetList.AddLast( btnObject1:TGadget ) ; btnObject1.Context="btnObject1"

			
Global ie1:TComObject = New TComObject
ie1.CreateObject("InternetExplorer.Application")
Global ie2:TComObject = New TComObject
ie2.CreateObject("InternetExplorer.Application")
			
			
Repeat
	WaitEvent()
	Select EventID()
		Case EVENT_WINDOWCLOSE
			Select EventSource()
				Case winMain	winMain_WC( winMain:TGadget , GadgetList:TList )
			End Select

		Case EVENT_GADGETACTION
			Select EventSource()
				Case txtObject2	txtObject2_GA( txtObject2:TGadget , GadgetList:TList )
				Case txtObject1	txtObject1_GA( txtObject1:TGadget , GadgetList:TList )
				Case chkTheater1	chkTheater1_GA( chkTheater1:TGadget, EventData() , GadgetList:TList )
				Case chkTheater2	chkTheater2_GA( chkTheater2:TGadget, EventData() , GadgetList:TList )
				Case btnObject1	btnObject1_GA( btnObject1:TGadget , GadgetList:TList )
				Case btnObject2	btnObject2_GA( btnObject2:TGadget , GadgetList:TList )
			End Select

	End Select
Forever

If ie1 Then ie1.DeleteObject()
If ie2 Then ie2.DeleteObject()
comEnd()

Function winMain_WC( Window:TGadget , GadgetList:TList=Null )
	DebugLog "Window winMain wants to be closed"
'	HideGadget( Window:TGadget )

	END
End Function

Function txtObject2_GA( TextField:TGadget , GadgetList:TList=Null )
	DebugLog "TextField txtObject2 was modified"
	DebugLog "Text = "+ TextFieldText$( TextField:TGadget )
	
End Function

Function txtObject1_GA( TextField:TGadget , GadgetList:TList=Null )
	DebugLog "TextField txtObject1 was modified"
	DebugLog "Text = "+ TextFieldText$( TextField:TGadget )
	
End Function

Function chkTheater1_GA( Button:TGadget, State:Int , GadgetList:TList=Null )
	DebugLog "Checkbox Button chkTheater1 changed to "+ State
	Select state
		Case 0 ie1.SetProperty("TheaterMode = #False")
		Case 1 ie1.SetProperty("TheaterMode = #True")
	End Select
End Function

Function chkTheater2_GA( Button:TGadget, State:Int , GadgetList:TList=Null )
	DebugLog "Checkbox Button chkTheater2 changed to "+ State
	Select state
		Case 0 ie2.SetProperty("TheaterMode = #False")
		Case 1 ie2.SetProperty("TheaterMode = #True")
	End Select
End Function

Function btnObject1_GA( Button:TGadget , GadgetList:TList=Null )
	DebugLog "Button btnObject1 was pressed"
	ie1.SetProperty("Visible = #True")
	ie1.CallMethod("Navigate('" + txtObject1.GetText() + "')")
End Function

Function btnObject2_GA( Button:TGadget , GadgetList:TList=Null )
	DebugLog "Button btnObject2 was pressed"
	ie2.SetProperty("Visible = #True")
	ie2.CallMethod("Navigate('" + txtObject2.GetText() + "')")
End Function

Function GadgetCommander:TGadget( Action:Int , GadgetArray$[] , GadgetList:TList Var, Params:String=Null )
	For Local i$ = EachIn GadgetArray
		For Local ii:TGadget = EachIn GadgetList
			If String(ii.Context) = i$
				Select Action
					Case Disable			DisableGadget( ii:TGadget )
					Case Enable				EnableGadget( ii:TGadget )
					Case Hide				HideGadget( ii:TGadget )
					Case Show				ShowGadget( ii:TGadget )
					Case Check				SetButtonState( ii:TGadget , True )
					Case Uncheck			SetButtonState( ii:TGadget , False )
					Case Free				FreeGadget( ii:TGadget )
					Case SetText			SetGadgetText( ii:TGadget,Params$ )
					Case Activate			ActivateGadget( ii:TGadget )
					Case Redraw				RedrawGadget( ii:TGadget )
					Case RemoveFromList		GadgetList.Remove( ii:TGadget )
					Case GetGadgetHandle	Return ( ii:TGadget )
				End Select
				Exit
			End If
		Next
	Next
	Return Null
End Function