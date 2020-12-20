*---------------------------------------------------------------------------*
* Time : 22:40:15    Date : 04/11/2017
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


Resistance R_grid_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_grid_19art1() code
aNumbers := {}
FOR x = 1 TO 10 STEP 1
AADD( aNumbers , { x , x*x })
Next
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 827 ;
HEIGHT 464 ;
ON INIT pWork()  ;
ICON "PWCTICON" ;
TITLE "grid matrix  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 360 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,236 GRID Grid1;
WIDTH 320 ;
HEIGHT 360 ;
HEADERS {"X","X+x" ,"X+(X*X)"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 88 ,611 LABEL lbl1 ;
VALUE "numbers " ;
WIDTH 200 ;
HEIGHT 60 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 124 ,613 TEXTBOX text1;
HEIGHT 60 ;
WIDTH 70 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 385 ,183 BUTTONEX btn1;
CAPTION "ADD ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK pAdd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
nMax  = LEN(aNumbers)
FOR x = 1 TO nMax STEP 1
nSum := aNumbers[x][1]+aNumbers[x][2]
cSum = STR ( nSum )
cSum = ALLTRIM ( cSum )
Win1.List1.Additem ( cSum )
cName1 = STR ( aNumbers[x][1] )
cName1 = ALLTRIM ( cName1 )
cName2 = STR ( aNumbers[x][2] )
cName2 = ALLTRIM ( cName2 )
win1.Grid1.AddItem ( {cName1,cName2,cSum} )
Next
return
procedure pAdd()
nMax := win1.text1.Value
aNumbers := {}
IF nMax > 1
FOR x = 1 TO nMax STEP 1
AADD( aNumbers , { x , x*x })
Next
ENDIF
DO pWork
return


End Of Resistance

INIT PROCEDURE Init_grid
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aNumbers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item { x , x*x } To Array aNumbers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'grid matrix  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pWork",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'X','X+x' ,'X+(X*X)'}",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",23,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'numbers '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ADD '",46,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork - Event : INIT",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aNumbers",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = aNumbers[x][1]+aNumbers[x][2]",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT nSum TO STRING",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = All Trim cSum",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cSum) to Listbox (List1) of Window (Win1)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","cName1 = CONVERT aNumbers[x][1] TO STRING",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","cName1 = All Trim cName1",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","cName2 = CONVERT aNumbers[x][2] TO STRING",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","cName2 = All Trim cName2",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName1,cName2,cSum} )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = win1.text1.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aNumbers",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 1 )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Add item { x , x*x } To Array aNumbers",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure pWork",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
Return
*-------------------------------------------------------------------*
