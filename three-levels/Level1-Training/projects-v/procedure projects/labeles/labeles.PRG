*---------------------------------------------------------------------------*
* Time : 22:47:16    Date : 03/30/2017
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


Resistance R_labeles_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_labeles_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 927 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "  labelwindow" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 46 ,741 LABEL lbl1 ;
VALUE "name " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 83 ,740 LABEL lbl2 ;
VALUE "address " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 120 ,742 LABEL lbl3 ;
VALUE "phone " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 24 ,502 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 75 ,503 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 126 ,504 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 13 ,211 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"data"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 264 ,184 BUTTONEX btn1;
CAPTION "enter ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK addData()  ;
WIDTH 193 HEIGHT 50 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 324 ,806 BUTTONEX btn2;
CAPTION "close ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK closedWin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 273 ,550 BUTTONEX btn3;
CAPTION "add-variables ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK addVariablesNotDirectly()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure addData()
cname := win1.textname.Value
caddress := win1.textaddress.Value
cphone := win1.textphone.Value
win1.list1.AddItem ( cname )
win1.list1.AddItem ( caddress )
win1.list1.AddItem ( cphone )
Win1.List1.Additem ( "thanks " )
Win1.List1.Additem ( cname )
Win1.List1.Additem ( caddress )
Win1.List1.Additem ( cphone )
return
procedure closedWin()
win1.Release ( )
return
procedure addVariablesNotDirectly()
cname := "sara"
caddress := "Tanta"
cphone := "01153853366"
win1.textname.Value := "soso"
win1.textaddress.Value := "T"
win1.textphone.Value := "01014524607"
MyOut := MSGBOX("success-add-directly "," ")
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
MyOut := MSGBOX("success-add-not-directly "," ")
return


End Of Resistance

INIT PROCEDURE Init_labeles
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  labelwindow'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'name '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'address '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'data'}",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'enter '",60,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addData",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close '",69,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closedWin",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'add-variables '",78,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addVariablesNotDirectly",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,86)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addData ( Event : CLICK )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cname )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( caddress )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cphone )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('thanks ') to Listbox (List1) of Window (Win1)",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cname) to Listbox (List1) of Window (Win1)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (caddress) to Listbox (List1) of Window (Win1)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cphone) to Listbox (List1) of Window (Win1)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closedWin ( Event : CLICK )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addVariablesNotDirectly ( Event : CLICK )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","cname = 'sara'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = 'Tanta'",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = '01153853366'",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := 'soso'",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := 'T'",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := '01014524607'",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'success-add-directly ' Title ' ' Type: Message Box",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'success-add-not-directly ' Title ' ' Type: Message Box",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
Return
*-------------------------------------------------------------------*
