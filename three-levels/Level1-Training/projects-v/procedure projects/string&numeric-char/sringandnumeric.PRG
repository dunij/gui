*---------------------------------------------------------------------------*
* Time : 22:24:20    Date : 03/30/2017
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


Resistance R_sringandnumeric_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_sringandnumeric_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1238 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " stringAndNumeric " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 26 ,563 LABEL lbl1 ;
VALUE " string sum" ;
WIDTH 237 ;
HEIGHT 64 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 25 ,196 LABEL lbl2 ;
VALUE " numeric sum" ;
WIDTH 231 ;
HEIGHT 52 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 125 ,942 LABEL lbl3 ;
VALUE " first num" ;
WIDTH 230 ;
HEIGHT 70 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 195 ,942 LABEL lbl4 ;
VALUE "second num" ;
WIDTH 230 ;
HEIGHT 70 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 265 ,942 LABEL lbl5 ;
VALUE "sum" ;
WIDTH 230 ;
HEIGHT 70 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 143 ,580 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 205 ,580 TEXTBOX text2;
HEIGHT 34 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 267 ,580 TEXTBOX text3;
HEIGHT 34 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 143 ,226 TEXTBOX text4;
HEIGHT 34 ;
WIDTH 204 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 205 ,226 TEXTBOX text5;
HEIGHT 34 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 267 ,226 TEXTBOX text6;
HEIGHT 34 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 320 ,417 BUTTONEX btn1;
CAPTION "summition ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK psummition()  ;
WIDTH 172 HEIGHT 32 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure psummition()
cnum1 := win1.text1.Value
cnum2 := win1.text2.Value
nnum1 = VAL ( cnum1 )
nnum2 = VAL ( cnum2 )
nsum := nnum1 + nnum2
csum = STR ( nsum )
csum = ALLTRIM ( csum )
win1.text3.Value := csum
nnum1 := win1.text4.Value
nnum2 := win1.text5.Value
nsum := nnum1 +nnum2
win1.text6.Value := nsum
return


End Of Resistance

INIT PROCEDURE Init_sringandnumeric
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' stringAndNumeric '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' string sum'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' numeric sum'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' first num'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'second num'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'sum'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",68,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",76,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'summition '",91,94)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action psummition",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",96,99)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure psummition ( Event : CLICK )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","cnum1 = win1.text1.Value",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","cnum2 = win1.text2.Value",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","nnum1 = CONVERT cnum1 TO Numeric",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","nnum2 = CONVERT cnum2 TO Numeric",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","nsum = nnum1 + nnum2",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","csum = CONVERT nsum TO STRING",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","csum = All Trim csum",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := csum",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","nnum1 = win1.text4.Value",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","nnum2 = win1.text5.Value",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","nsum = nnum1 +nnum2",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := nsum",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
Return
*-------------------------------------------------------------------*
