*---------------------------------------------------------------------------*
* Time : 21:07:36    Date : 04/25/2017
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
 * (Noun) *
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
Set Procedure to "Customers.PRG"
Set Procedure to "Database.PRG"
CustomersObject = CustomersClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT SetStar()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
MENUITEM "Customers " Action MSGINFO( CustomersObject:showWindow() )
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
procedure SetStar()
Execute File "C:\Users\shimo\Desktop\new\installodbc.bat" MINIMIZE
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersClass",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SetStar",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers ' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize( )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SetStar - Event : INIT",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'C:\Users\shimo\Desktop\new\installodbc.bat' , MINIMIZE",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
