*---------------------------------------------------------------------------*
* Time : 08:15:30    Date : 05/06/2017
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
Set Procedure to "CustomerBrowse.PRG"
Set Procedure to "CustDataBrowse.PRG"
Set Procedure to "DataBrowseByCountry.PRG"
CustomersObject = CustomersClass()
CustomerBrowseObject = CustomerBrowseClass()
CustomersDataBrowseObject = CustDataBrowseClass()
DataBrowseByCountryObject = DataBrowseByCountryClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT SetInstalll()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Customers " Action CustomersObject:showWindow()
MENUITEM "Customer-Search By Name " Action CustomerBrowseObject:showWindow()
MENUITEM "Customers Data Browse" Action CustomersDataBrowseObject:showWindow()
MENUITEM "Close System" Action closesystem()
MENUITEM "Data Browse By Country " Action DataBrowseByCountryObject:showWindow()
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
procedure SetInstalll()
Execute File "installodbc" MINIMIZE
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Customers.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomerBrowse.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustDataBrowse.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'DataBrowseByCountry.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersObject of Class CustomersClass",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerBrowseObject of Class CustomerBrowseClass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomersDataBrowseObject of Class CustDataBrowseClass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DataBrowseByCountryObject of Class DataBrowseByCountryClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SetInstalll",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers ' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customer-Search By Name ' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers Data Browse' )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Data Browse By Country ' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SetInstalll - Event : INIT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'installodbc' , MINIMIZE",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
Return
*-------------------------------------------------------------------*
