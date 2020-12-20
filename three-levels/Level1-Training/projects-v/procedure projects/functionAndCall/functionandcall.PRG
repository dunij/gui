*---------------------------------------------------------------------------*
* Time : 18:03:22    Date : 04/01/2017
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


Resistance R_functionandcall_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_functionandcall_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 849 ;
HEIGHT 464 ;
ICON "PWCTICON" ;
TITLE "function  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 93 ,385 LABEL lbl1 ;
VALUE "enter data " ;
WIDTH 211 ;
HEIGHT 38 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 140 ,385 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 220 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 203 ,385 BUTTONEX btn1;
CAPTION "submit ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,128};
ON CLICK pAdd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 52 ,131 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
cName := win1.text1.Value
nCount = addLetters ( cName )
cCount = STR ( nCount )
MyOut := MSGBOX("no of letters " + cCount,"OK ")
return
Function  addLetters ( cInput )
Local nMax
nMax  = LEN(cInput)
win1.list1.DeleteAllItems ( )
cont := false
sa := 0
IF nMax=7
FOR x = 1 TO nMax STEP 1
cLetter = SUBSTR(cInput,x,7)
Win1.List1.Additem ( cLetter )
Return nMax
Next
ENDIF
IF true
IF nMax=4
Return nMax
ELSE
Return sa
ENDIF
ENDIF
Return nMax


End Of Resistance

INIT PROCEDURE Init_functionandcall
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'function  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'enter data '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'submit '",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","nCount = Call Function addLetters ( cName )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","cCount = CONVERT nCount TO STRING",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'no of letters ' + cCount Title 'OK ' Type: Message Box",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function addLetters ( cInput )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array cInput",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","cont = false",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","sa = 0",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax=7 )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","cLetter = Sub String of cInput From x Count 7",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cLetter) to Listbox (List1) of Window (Win1)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Return nMax",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( true )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax=4 )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Return nMax",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Return sa",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return nMax)",71,71)
Return
*-------------------------------------------------------------------*
