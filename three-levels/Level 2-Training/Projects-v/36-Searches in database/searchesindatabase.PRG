*---------------------------------------------------------------------------*
* Time : 23:44:20    Date : 04/28/2017
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


Resistance R_searchesindatabase_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_searchesindatabase_19art1() code
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
Method Searches
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

@ 20 ,740 BUTTONEX btn3;
CAPTION "Records Count ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,0};
ON CLICK self:RecordsCount()  ;
WIDTH 190 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 140 ,218 GRID Grid1;
WIDTH 418 ;
HEIGHT 198 ;
HEADERS {"Name","Address","Telephone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 37 ,357 LABEL lbl1 ;
VALUE "enter items " ;
WIDTH 210 ;
HEIGHT 41 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 90 ,218 TEXTBOX textSearches;
ON CHANGE self:Searches()  ;
HEIGHT 30 ;
WIDTH 420 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
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
cName := Self:oRS:fields:item(alltrim("custName ")):value
cAddress := Self:oRS:fields:item(alltrim("Address ")):value
cphone := Self:oRS:fields:item(alltrim("Phone ")):value
win1.Grid1.AddItem ( {cName,cAddress,cphone} )
Self:oRS:MOVENEXT()
Next
ENDIF
Return 0
Method Searches Class Customer
cName := win1.textSearches.Value
Self:oRS:Close()
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Customer where custName Like '" +cName +"%'",Self:oCon,3,3 )
win1.Grid1.DeleteAllItems ( )
myoutput = Self:showRecords()
Return 0


End Of Resistance

INIT PROCEDURE Init_searchesindatabase
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
SS_ESASTEP("Circuits\Main\Main\Main","Method Searches",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Customer",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Connect()",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Records Count '",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordsCount",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Telephone'}",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",36,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'enter items '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearches  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Searches",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","out = Self.showRecords()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customer",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Driver={Microsoft Access Driver (*.mdb)};Dbq=sysdata.mdb'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer'",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customer",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customer",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message nMax Title ' Counts' Type: Message Box",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecords Class Customer",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('custName ') Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('Address ') Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (Self:oRS) Get Field ('Phone ') Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cphone} )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Searches Class Customer",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearches.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer where custName Like '' +cName +'%''",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = Self.showRecords()",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",103,103)
Return
*-------------------------------------------------------------------*
