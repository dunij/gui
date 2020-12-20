*---------------------------------------------------------------------------*
* Time : 00:40:54    Date : 04/20/2017
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


Resistance R_database_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_database_19art1() code
CustomerObj = Customer()
out = CustomerObj:showWindow()
Class Customer
Method showWindow
Method Connect
Method DisConnect
Method RecordsCount
EndClass
Method showWindow Class Customer
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 971 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Customer  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 37 ,288 BUTTONEX btn1;
CAPTION "Connect ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK self:Connect()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 159 ,288 BUTTONEX btn2;
CAPTION "DisConnect ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK self:DisConnect()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 98 ,288 BUTTONEX btn3;
CAPTION "Records Count ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK self:RecordsCount()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method Connect Class Customer
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Driver={Microsoft Access Driver (*.mdb)};Dbq=sysdata.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customer",oCon,3,3 )
Return 0
Method DisConnect Class Customer
oRS:Close()
oCon:CLOSE()
Return 0
Method RecordsCount Class Customer
nMax := oRS:RecordCount
MyOut := MSGBOX(nMax," Counts")
Return 0


End Of Resistance

INIT PROCEDURE Init_database
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerObj of Class Customer",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","out = CustomerObj.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Customer",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Customer",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",10,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Connect '",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Connect",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'DisConnect '",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:DisConnect",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Records Count '",38,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordsCount",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customer",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Driver={Microsoft Access Driver (*.mdb)};Dbq=sysdata.mdb'",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customer'",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customer",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customer",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message nMax Title ' Counts' Type: Message Box",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",70,70)
Return
*-------------------------------------------------------------------*
