*---------------------------------------------------------------------------*
* Time : 00:52:45    Date : 04/20/2017
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


Resistance R_autoconnections_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_autoconnections_19art1() code
CustomerObj = Customer()
OutPut = CustomerObj:showWindow()
Class Customer
Data oCon init 0
Data oRS init 0
Method showWindow
Method Connect
Method DisConnect
Method RecordsCount
Method showRecords
EndClass
Method showWindow Class Customer
out = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 971 ;
HEIGHT 400 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customer  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 98 ,288 BUTTONEX btn3;
CAPTION "Records Count ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK self:RecordsCount()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 41 ,532 GRID Grid1;
WIDTH 418 ;
HEIGHT 198 ;
HEADERS {"Name","Address","Telephone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

out = Self:showRecords()
ACTIVATE WINDOW win1
EndIF

Return 0
Method Connect Class Customer
Self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
Self:oCon:open ( 'Driver={Microsoft Access Driver (*.mdb)};Dbq=sysdata.mdb' )
Self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Customer",Self:oCon,3,3 )
Return 0
Method DisConnect Class Customer
Self:oRS:Close()
Self:oCon:CLOSE()
Return 0
Method RecordsCount Class Customer
nMax := Self:oRS:RecordCount
MyOut := MSGBOX(nMax," Counts")
Return 0
Method showRecords Class Customer
nMax := Self:oRS:RecordCount
IF nMax >0
Self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cName := Self:oRS:fields:item(alltrim("Name ")):value
cAddress := Self:oRS:fields:item(alltrim("Address ")):value
cphone := Self:oRS:fields:item(alltrim("Phone ")):value
win1.Grid1.AddItem ( {cName,cAddress,cphone} )
Self:oRS:MOVENEXT()
Next
ENDIF
Return 0


End Of Resistance

INIT PROCEDURE Init_autoconnections
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerObj of Class Customer",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","OutPut = CustomerObj.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Customer",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data oCon Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRS Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method showRecords",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Customer",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Connect()",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Records Count '",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordsCount",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Telephone'}",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",35,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","out = Self.showRecords()",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customer",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Driver={Microsoft Access Driver (*.mdb)};Dbq=sysdata.mdb'",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer'",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customer",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customer",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message nMax Title ' Counts' Type: Message Box",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecords Class Customer",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('Name ') Value",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('Address ') Value",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (Self:oRS) Get Field ('Phone ') Value",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cphone} )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",78,78)
Return
*-------------------------------------------------------------------*
