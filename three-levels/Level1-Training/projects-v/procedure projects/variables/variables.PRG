*---------------------------------------------------------------------------*
* Time : 22:48:37    Date : 03/30/2017
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


Resistance R_variables_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_variables_19art1() code
Public cname,caddress,cphone
cname := " "
caddress := " "
cphone := " "
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1290 ;
HEIGHT 464 ;
ICON "PWCTICON" ;
TITLE "test  " ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 341 ,747 BUTTONEX btn1;
CAPTION "addition";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK add()  ;
WIDTH 100 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,615 BUTTONEX btn2;
CAPTION "setValues ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK setbuttom()  ;
WIDTH 100 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,484 BUTTONEX btn3;
CAPTION "copyValues ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK copy()  ;
WIDTH 110 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,347 BUTTONEX btn4;
CAPTION "pasteValues ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK paste()  ;
WIDTH 117 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 344 ,882 BUTTONEX btn5;
CAPTION "close ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK closed()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 32 ,1038 LABEL lbl1 ;
VALUE "name " ;
WIDTH 344 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 96 ,1035 LABEL lbl2 ;
VALUE "address " ;
WIDTH 352 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 168 ,1035 LABEL lbl3 ;
VALUE "phone " ;
WIDTH 385 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 36 ,537 TEXTBOX textname;
HEIGHT 48 ;
WIDTH 408 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 111 ,533 TEXTBOX textaddress;
HEIGHT 41 ;
WIDTH 408 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 188 ,537 TEXTBOX textphone;
HEIGHT 50 ;
WIDTH 409 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 8 ,185 LISTBOX list1;
WIDTH 304 ;
HEIGHT 274 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closed()
win1.Release ( )
return
procedure add()
cname := win1.textname.Value
caddress := win1.textaddress.Value
cphone := win1.textphone.Value
win1.list1.AddItem ( cname )
win1.list1.AddItem ( caddress )
win1.list1.AddItem ( cphone )
return
procedure setbuttom()
win1.textname.Value := "mahmoud"
win1.textaddress.Value := "suadia"
win1.textphone.Value := "096666"
MyOut := MSGBOX("hello my baby ","sara ")
Win1.List1.Additem ( "sara sara sara  " )
return
procedure copy()
cname := win1.textname.Value
caddress := win1.textaddress.Value
cphone := win1.textphone.Value
return
procedure paste()
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
return


End Of Resistance

INIT PROCEDURE Init_variables
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public cname,caddress,cphone",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ' '",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ' '",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ' '",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'test  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'addition'",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'setValues '",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action setbuttom",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'copyValues '",33,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action copy",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'pasteValues '",42,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action paste",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'close '",51,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closed",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'name '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'address '",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone '",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",76,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",82,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",89,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",96,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closed ( Event : CLICK )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add ( Event : CLICK )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cname )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( caddress )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cphone )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure setbuttom ( Event : CLICK )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := 'mahmoud'",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := 'suadia'",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := '096666'",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'hello my baby ' Title 'sara ' Type: Message Box",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('sara sara sara  ') to Listbox (List1) of Window (Win1)",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure copy ( Event : CLICK )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure paste ( Event : CLICK )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",140,140)
Return
*-------------------------------------------------------------------*
