*---------------------------------------------------------------------------*
* Time : 20:21:43    Date : 04/10/2017
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2016 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2016.06.24
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_CALLMETHODINCLASSINANOTHER_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CALLMETHODINCLASSINANOTHER_19art1() code
MainWindowObj = MainWindow()
out = MainWindowObj:WindowMenues()
Class Counter
Data nNumber init 0
Data cWindowName init "CounterWindow"
Method Increment
Method btnIncrement
Method Class2UI
Method UI2Class
Method showWindow
EndClass
Method Increment Class Counter
self:nNumber = self:nNumber + 1
Return 0
Method showWindow Class Counter
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 681 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Counter  " ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 130 ,452 LABEL lbl1 ;
VALUE "Number " ;
WIDTH 73 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 130 ,219 TEXTBOX text1;
ON CHANGE self:UI2Class()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 186 ,452 BUTTONEX btn1;
CAPTION "Increment ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:btnIncrement()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method btnIncrement Class Counter
myout = self:Increment()
out = self:Class2UI()
Return 0
Method Class2UI Class Counter
&(self:cWindowName).text1.Value := self:nNumber
Return self:nNumber
Method UI2Class Class Counter
self:nNumber := &(self:cWindowName).text1.Value
Return self:nNumber
Class MainWindow
Data NumWindows init 0
Method WindowMenues
Method CloseWindow
Method CounterWindow
Method newWindowsNo
Method CounterWindow2
EndClass
Method WindowMenues Class MainWindow
if !iswindowdefined( winapp )
DEFINE WINDOW winapp ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " Window Applications " ;
MAIN ;
BACKCOLOR {236,233,216} 

winapp.Maximize ( )
DEFINE MAIN MENU of winapp
POPUP "File "
MENUITEM "Counter " Action self:CounterWindow   ()
MENUITEM "Counter2 " Action self:CounterWindow2   ()
MENUITEM "Exit " Action self:CloseWindow
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW winapp
EndIF

Return 0
Method CounterWindow Class MainWindow
CounterObj = Counter()
out = self:newWindowsNo("CounterWindow", @CounterObj)
out = CounterObj:showWindow()
Return 0
Method CloseWindow Class MainWindow
winapp.Release ( )
Return 0
Method newWindowsNo(cWindow ,nObjects) Class MainWindow
self:NumWindows = self:NumWindows + 1
cNumWindows = STR ( self:NumWindows )
cNumWindows = ALLTRIM ( cNumWindows )
nObjects:cWindowName := cNumWindows + cWindow
Return 0
Method CounterWindow2 Class MainWindow
CounterObj = Counter2()
out = self:newWindowsNo("CounterWindow2", @CounterObj)
out = CounterObj:showWindow()
Return 0
class Counter2 From Counter
Data cWindowName init "CounterWindow2"
Method Increment
EndClass
Method Increment Class Counter2
self:nNumber = self:nNumber + 10
out = super:Increment()
Return 0


End Of Resistance

INIT PROCEDURE Init_CALLMETHODINCLASSINANOTHER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","PWCT-Code Generator: Replace String (MyWindow) with (&(self:cWindowName))",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MainWindowObj of Class MainWindow",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","out = MainWindowObj.WindowMenues()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Counter",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber Init Value 0",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cWindowName Init Value 'CounterWindow'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method Increment",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method btnIncrement",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UI",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method UI2Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Increment Class Counter",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber = self:nNumber + 1",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Counter",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( MyWindow ) , Title : 'Counter  '",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:UI2Class",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Increment '",44,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btnIncrement",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btnIncrement Class Counter",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Increment()",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UI Class Counter",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindow.text1.Value := self:nNumber",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:nNumber)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UI2Class Class Counter",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber = MyWindow.text1.Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:nNumber)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MainWindow",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Data NumWindows Init Value 0",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Method WindowMenues",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Method CounterWindow",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Method newWindowsNo",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Method CounterWindow2",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method WindowMenues Class MainWindow",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winapp ) , Title : ' Window Applications '",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","winapp.Maximize( )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (winapp)",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Counter ' )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Counter2 ' )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CounterWindow Class MainWindow",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CounterObj of Class Counter",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.newWindowsNo('CounterWindow', @CounterObj)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","out = CounterObj.showWindow()",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class MainWindow",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","winapp.Release( )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method newWindowsNo(cWindow ,nObjects) Class MainWindow",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","self:NumWindows = self:NumWindows + 1",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cNumWindows = CONVERT self:NumWindows TO STRING",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","cNumWindows = All Trim cNumWindows",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","nObjects.cWindowName = cNumWindows + cWindow",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CounterWindow2 Class MainWindow",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CounterObj of Class Counter2",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.newWindowsNo('CounterWindow2', @CounterObj)",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","out = CounterObj.showWindow()",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Counter2 From Counter",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Data cWindowName Init Value 'CounterWindow2'",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Method Increment",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Increment Class Counter2",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber = self:nNumber + 10",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","out = super.Increment()",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",128,128)
Return
*-------------------------------------------------------------------*
