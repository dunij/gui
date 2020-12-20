*---------------------------------------------------------------------------*
* Time : 01:08:35    Date : 03/31/2017
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


Resistance R_controls_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_controls_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 963 ;
HEIGHT 464 ;
ICON "PWCTICON" ;
TITLE "conditions  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LISTBOX list1;
WIDTH 227 ;
HEIGHT 409 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 149 ,248 TEXTBOX textfrom;
HEIGHT 57 ;
WIDTH 67 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 149 ,408 TEXTBOX textto;
HEIGHT 57 ;
WIDTH 67 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 149 ,553 TEXTBOX textstep;
HEIGHT 57 ;
WIDTH 67 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 169 ,324 LABEL lbl1 ;
VALUE "from " ;
WIDTH 57 ;
HEIGHT 19 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 169 ,481 LABEL lbl2 ;
VALUE "to " ;
WIDTH 57 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 169 ,633 LABEL lbl3 ;
VALUE "step " ;
WIDTH 57 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 101 ,808 BUTTONEX btn1;
CAPTION "test1 ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK ptest1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 174 ,808 BUTTONEX btn2;
CAPTION "test2";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK ptest2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure ptest1()
FOR x = 1 TO 5 STEP 2
x2 = STR ( x )
Win1.List1.Additem ( "hello M " )
Next
return
procedure ptest2()
win1.list1.DeleteAllItems ( )
nFrom := win1.textfrom.Value
nTo := win1.textto.Value
nStep := win1.textstep.Value
FOR x =nFrom TO nTo STEP nStep
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
return


End Of Resistance

INIT PROCEDURE Init_controls
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'conditions  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textfrom  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textto  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textstep  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'from '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'to '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'step '",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'test1 '",62,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ptest1",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'test2'",71,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ptest2",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ptest1 ( Event : CLICK )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 5 Step 2)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('hello M ') to Listbox (List1) of Window (Win1)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ptest2 ( Event : CLICK )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","nFrom = win1.textfrom.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","nTo = win1.textto.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","nStep = win1.textstep.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x =nFrom To nTo Step nStep)",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
Return
*-------------------------------------------------------------------*
