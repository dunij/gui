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

