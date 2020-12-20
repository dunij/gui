*---------------------------------------------------------------------------*
* Time : 22:41:27    Date : 03/30/2017
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


Resistance R_sara_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_sara_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "welcome  " ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 83 ,107 LABEL lbl1 ;
VALUE "hello mahmoud " ;
WIDTH 273 ;
HEIGHT 56 ;
FONT "Arial" SIZE 28  ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,0}
@ 185 ,147 BUTTONEX btn1;
CAPTION "how are you ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK MSGINFO( "fine " ) ;
WIDTH 175 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 14 ,144 BUTTONEX btn2;
CAPTION "max ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK maxwin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 13 ,260 BUTTONEX btn3;
CAPTION "center ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK centerwin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 11 ,379 BUTTONEX btn4;
CAPTION "min ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK minwin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 10 ,10 BUTTONEX btn5;
CAPTION "close ";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK closewin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure maxwin()
win1.Maximize ( )
return
procedure centerwin()
win1.Center ( )
return
procedure minwin()
win1.Minimize ( )
return
procedure closewin()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_sara
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'welcome  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'hello mahmoud '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'how are you '",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'fine '",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'max '",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maxwin",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'center '",36,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action centerwin",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'min '",45,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action minwin",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'close '",54,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewin",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maxwin ( Event : CLICK )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure centerwin ( Event : CLICK )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure minwin ( Event : CLICK )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Minimize( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
Return
*-------------------------------------------------------------------*
