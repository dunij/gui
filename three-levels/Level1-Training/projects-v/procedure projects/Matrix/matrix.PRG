*---------------------------------------------------------------------------*
* Time : 03:27:27    Date : 04/03/2017
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


Resistance R_matrix_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_matrix_19art1() code
aArray := {}
AADD( aArray , "1")
AADD( aArray , "2")
AADD( aArray , "3")
AADD( aArray , "4")
AADD( aArray , "5")
AADD( aArray , "6")
AADD( aArray , "7")
AADD( aArray , "8")
AADD( aArray , "9")
AADD( aArray , "10")
AADD( aArray , "one")
AADD( aArray , "two")
AADD( aArray , "three")
AADD( aArray , "four")
AADD( aArray , "five")
AADD( aArray , "six")
AADD( aArray , "seven")
AADD( aArray , "eight")
AADD( aArray , "nine")
AADD( aArray , "ten")
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 524 ;
HEIGHT 464 ;
ICON "PWCTICON" ;
TITLE "matrix and Array  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 30 ,40 LISTBOX list1;
WIDTH 200 ;
HEIGHT 330 ;
ITEMS aArray ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 33 ,256 LISTBOX list2;
WIDTH 200 ;
HEIGHT 330 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 380 ,197 BUTTONEX btn1;
CAPTION "ADD ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK padd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure padd()
nMax  = LEN(aArray)
FOR x = 1 TO nMax STEP 1
nLen  = LEN(aArray[x])
IF nLen>1
Win1.List2.Additem ( aArray[x] )
ENDIF
aArray[x] = ALLTRIM ( aArray[x] )
Next
return


End Of Resistance

INIT PROCEDURE Init_matrix
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aArray",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '1' To Array aArray",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '2' To Array aArray",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '3' To Array aArray",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '4' To Array aArray",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '5' To Array aArray",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '6' To Array aArray",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '7' To Array aArray",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '8' To Array aArray",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '9' To Array aArray",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '10' To Array aArray",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'one' To Array aArray",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'two' To Array aArray",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'three' To Array aArray",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'four' To Array aArray",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'five' To Array aArray",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'six' To Array aArray",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'seven' To Array aArray",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'eight' To Array aArray",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'nine' To Array aArray",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'ten' To Array aArray",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'matrix and Array  '",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : aArray",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ADD '",45,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action padd",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure padd ( Event : CLICK )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","nLen = Get Length of String/Variable/Array aArray[x]",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nLen>1 )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray[x]) to Listbox (List2) of Window (Win1)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","aArray[x] = All Trim aArray[x]",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
