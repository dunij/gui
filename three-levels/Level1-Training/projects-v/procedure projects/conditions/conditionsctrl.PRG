*---------------------------------------------------------------------------*
* Time : 22:34:08    Date : 04/02/2017
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


Resistance R_conditionsctrl_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_conditionsctrl_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 781 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ctrl  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 46 ,611 LABEL lbl1 ;
VALUE "from " ;
WIDTH 218 ;
HEIGHT 43 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 119 ,610 LABEL lbl2 ;
VALUE "to " ;
WIDTH 213 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 184 ,610 LABEL lbl3 ;
VALUE "step " ;
WIDTH 224 ;
HEIGHT 40 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 46 ,457 TEXTBOX textfrom;
HEIGHT 40 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 110 ,456 TEXTBOX textto;
HEIGHT 40 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 174 ,456 TEXTBOX textstep;
HEIGHT 40 ;
WIDTH 110 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 110 ,255 BUTTONEX btn1;
CAPTION "Test ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,128};
ON CLICK pctrl()  ;
WIDTH 100 HEIGHT 60 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pctrl()
nFrom := win1.textfrom.Value
nTo := win1.textto.Value
nStep := win1.textstep.Value
win1.list1.DeleteAllItems ( )
FOR x =nFrom TO nTo STEP nStep
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
IF x=2
Win1.List1.Additem ( "mahmoud samir " )
Loop
Exit
ENDIF
Next
return


End Of Resistance

INIT PROCEDURE Init_conditionsctrl
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ctrl  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'from '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'to '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'step '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textfrom  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textto  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textstep  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Test '",56,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pctrl",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pctrl ( Event : CLICK )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","nFrom = win1.textfrom.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","nTo = win1.textto.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","nStep = win1.textstep.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x =nFrom To nTo Step nStep)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x=2 )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('mahmoud samir ') to Listbox (List1) of Window (Win1)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Loop",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Exit",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
Return
*-------------------------------------------------------------------*
