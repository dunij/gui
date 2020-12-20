*---------------------------------------------------------------------------*
* Time : 22:06:54    Date : 03/29/2017
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


Resistance R_v8-copy&paste-variables_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_v8-copy&paste-variables_19art1() code
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
WIDTH 100 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,615 BUTTONEX btn2;
CAPTION "setValues ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
WIDTH 100 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,484 BUTTONEX btn3;
CAPTION "copyValues ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
WIDTH 110 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 340 ,347 BUTTONEX btn4;
CAPTION "pasteValues ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
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
@ 45 ,536 TEXTBOX textname;
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

@ 27 ,105 TEXTBOX text3;
HEIGHT 251 ;
WIDTH 394 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Public cname,caddress,cphone
cname := " "
caddress := " "
cphone := " "
procedure closed()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_v8-copy&paste-variables
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'test  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'addition'",11,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'setValues '",19,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'copyValues '",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'pasteValues '",35,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'close '",43,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closed",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'name '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'address '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",74,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",81,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",88,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",95,100)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","Public cname,caddress,cphone",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ' '",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ' '",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ' '",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closed ( Event : CLICK )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",112,112)
Return
*-------------------------------------------------------------------*
