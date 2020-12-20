*---------------------------------------------------------------------------*
* Time : 09:54:27    Date : 04/04/2017
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


Resistance R_counterandmatrix_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_counterandmatrix_19art1() code
aCounter := {}
AADD( aCounter , 1)
AADD( aCounter , 10)
AADD( aCounter , "hello in  automatic matrix ")
AADD( aCounter , " ")
set century on
cDate = DATE()
AADD( aCounter , cDate)
AADD( aCounter , true)
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pAdd()  ;
ICON "PWCTICON" ;
TITLE "matrix and reverse it  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LISTBOX list1;
WIDTH 206 ;
HEIGHT 333 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
Win1.List1.Additem ( aCounter[3] )
cDate = DTOC ( aCounter[5] )
Win1.List1.Additem ( cDate )
Win1.List1.Additem ( aCounter[4] )
FOR x =aCounter[1] TO aCounter[2] STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
Win1.List1.Additem ( aCounter[4] )
IF aCounter[6]==true
FOR x =aCounter[2] TO aCounter[1] STEP -1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
Win1.List1.Additem ( x2 )
Next
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_counterandmatrix
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aCounter",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 1 To Array aCounter",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 10 To Array aCounter",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'hello in  automatic matrix ' To Array aCounter",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item ' ' To Array aCounter",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = System Date of today",6,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cDate To Array aCounter",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Add item true To Array aCounter",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'matrix and reverse it  '",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pAdd",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd - Event : INIT",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aCounter[3]) to Listbox (List1) of Window (Win1)",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = CONVERT Date aCounter[5] TO String",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cDate) to Listbox (List1) of Window (Win1)",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aCounter[4]) to Listbox (List1) of Window (Win1)",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x =aCounter[1] To aCounter[2] Step 1)",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aCounter[4]) to Listbox (List1) of Window (Win1)",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aCounter[6]==true )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x =aCounter[2] To aCounter[1] Step -1)",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Listbox (List1) of Window (Win1)",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
Return
*-------------------------------------------------------------------*
