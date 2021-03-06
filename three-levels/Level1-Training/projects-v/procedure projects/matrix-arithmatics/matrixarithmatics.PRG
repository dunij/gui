*---------------------------------------------------------------------------*
* Time : 22:39:25    Date : 04/11/2017
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


Resistance R_matrixarithmatics_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_matrixarithmatics_19art1() code
aNumbers := {}
FOR x = 1 TO 10 STEP 1
AADD( aNumbers , { x , x*x })
Next
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pWork()  ;
ICON "PWCTICON" ;
TITLE "matrix arithmatics   " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
nMax  = LEN(aNumbers)
FOR x = 1 TO nMax STEP 1
nSum := aNumbers[x][1]+aNumbers[x][2]
cSum = STR ( nSum )
Win1.List1.Additem ( cSum )
Next
return


End Of Resistance

INIT PROCEDURE Init_matrixarithmatics
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aNumbers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item { x , x*x } To Array aNumbers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'matrix arithmatics   '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pWork",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork - Event : INIT",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aNumbers",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = aNumbers[x][1]+aNumbers[x][2]",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT nSum TO STRING",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cSum) to Listbox (List1) of Window (Win1)",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",34,34)
Return
*-------------------------------------------------------------------*
