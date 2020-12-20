*---------------------------------------------------------------------------*
* Time : 00:46:18    Date : 05/02/2017
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


Resistance R_showreport_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_showreport_19art1() code
CustomerObj = Customer()
OutPut = CustomerObj:showWindow()
Class Customer
Data oCon init 0
Data oRS init 0
Data cName init " "
Data cAddress init " "
Data cPhone init " "
Data lAdd init False
Data lCheck init False
Data oActivex init 0
Method showWindow
Method Connect
Method DisConnect
Method RecordsCount
Method showRecords
Method Searches
Method Ado2Class
Method Class2UI
Method showRecord
Method First
Method Next
Method Previous
Method Last
Method GotoRecord
Method Add
Method Save
Method Cancel
Method setMode
Method Clear
Method UI2Class
Method Class2Ado
Method Edit
Method Delete
Method Close
Method showReport
EndClass
Method showWindow Class Customer
out = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1290 ;
HEIGHT 827 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customer  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 98 ,372 GRID Grid1;
ON CHANGE self:GotoRecord()  ;
WIDTH 418 ;
HEIGHT 198 ;
HEADERS {"Name","Address","Telephone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 11 ,434 LABEL lbl1 ;
VALUE "enter items " ;
WIDTH 210 ;
HEIGHT 41 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 52 ,371 TEXTBOX textSearches;
ON CHANGE self:Searches()  ;
HEIGHT 30 ;
WIDTH 420 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 325 ,16 LABEL lbl2 ;
VALUE "Name " ;
WIDTH 412 ;
HEIGHT 43 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 380 ,17 LABEL lbl3 ;
VALUE "Address " ;
WIDTH 411 ;
HEIGHT 37 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 429 ,16 LABEL lbl4 ;
VALUE "Phone " ;
WIDTH 412 ;
HEIGHT 37 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 334 ,119 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 381 ,116 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 410 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 428 ,116 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 410 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 55 ,205 BUTTONEX btnFirst;
CAPTION "First ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK self:First()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 92 ,207 BUTTONEX btnNext;
CAPTION "Next ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK self:Next()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 166 ,206 BUTTONEX btnPrevious;
CAPTION "Previous ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK self:Previous()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 128 ,205 BUTTONEX btnLast;
CAPTION "Last ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK self:Last()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 356 ,724 LABEL lbl5 ;
VALUE "Record Number " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 309 ,735 LABEL lblRecordsCount ;
VALUE " " ;
WIDTH 58 ;
HEIGHT 32 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 105 ,69 BUTTONEX btnAdd;
CAPTION "Add ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 156 ,69 BUTTONEX btnSave;
CAPTION "Save ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Save()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 206 ,69 BUTTONEX btnCancel;
CAPTION "Cancel ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Cancel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 55 ,68 BUTTONEX btnEdit;
CAPTION "Edit ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Edit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 203 ,206 BUTTONEX btnDelete;
CAPTION "Delete ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
ON CLICK self:Delete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 240 ,206 BUTTONEX btnClose;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
ON CLICK self:Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
Self:oActiveX := TActiveX():New( "Win1", "CrystalReports10.snpvw.Snapshot Viewer Control.1" , 51 , 817 , 473 , 668)
Self:oActiveX:Load()
@ 10 ,937 BUTTONEX btnshowReport;
CAPTION "showReport ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,0,255};
ON CLICK Self:showReport()  ;
WIDTH 153 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

out = self:showRecord()
out = Self:showRecords()
out = self:setMode(1)
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
self:oRS:MOVEFIRST()
ENDIF
out = self:RecordsCount()
cMax = STR ( nMax )
cMax = ALLTRIM ( cMax )
win1.lblRecordsCount.Value := cMax
Return 0
Method Searches Class Customer
cName := win1.textSearches.Value
Self:oRS:Close()
Self:oRS:CursorType := 1
Self:oRS:ActiveConnection := Self:oCon
Self:oRS:open ( "Select * from Customer where Name Like '" +cName +"%'",Self:oCon,3,3 )
win1.Grid1.DeleteAllItems ( )
myoutput = Self:showRecords()
Return 0
Method Ado2Class Class Customer
self:cName := self:oRS:fields:item(alltrim(" Name")):value
self:cAddress := self:oRS:fields:item(alltrim(" Address")):value
self:cPhone := self:oRS:fields:item(alltrim(" Phone")):value
Return 0
Method Class2UI Class Customer
win1.textName.Value := self:cName
win1.textAddress.Value := self:cAddress
win1.textPhone.Value := self:cPhone
Return 0
Method showRecord Class Customer
nMax := self:oRS:RecordCount
IF nMax >0
out = self:Ado2Class()
out = self:Class2UI()
ENDIF
Return 0
Method Next Class Customer
self:oRS:MOVENEXT()
lCheck := self:oRS:EOF()
IF lCheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("The End "," ")
ELSE
out = self:showRecord()
ENDIF
Return 0
Method Previous Class Customer
self:oRS:MOVEPREVIOUS()
lCheck := self:oRS:BOF()
IF lCheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("The end "," ")
ELSE
out = self:showRecord()
ENDIF
Return 0
Method GotoRecord Class Customer
nIndex := win1.Grid1.Value
IF nIndex >0
self:oRS:MOVEFIRST()
nIndex := nIndex-1
IF nIndex >0
FOR x = 1 TO nIndex STEP 1
self:oRS:MOVENEXT()
Next
ENDIF
out = self:showRecord()
ENDIF
Return 0
Method First Class Customer
self:oRS:MOVEFIRST()
out = self:showRecord()
Return 0
Method Last Class Customer
self:oRS:MOVELAST()
out = self:showRecord()
Return 0
Method Cancel Class Customer
out = self:Ado2Class()
out = self:Class2UI()
out = self:setMode(1)
self:lAdd := False
Return 0
Method Add Class Customer
out = self:Clear()
out = self:Class2UI()
out = self:setMode(2)
out = self:Edit(True)
Return 0
Method setMode(nMode) Class Customer
IF nMode=1
win1.textName.Enabled := False
win1.textAddress.Enabled := False
win1.textPhone.Enabled := False
win1.btnSave.Enabled := False
win1.btnCancel.Enabled := False
win1.btnFirst.Enabled := True
win1.btnNext.Enabled := True
win1.btnPrevious.Enabled := True
win1.btnLast.Enabled := True
win1.textSearches.Enabled := True
win1.Grid1.Value := True
win1.btnEdit.Enabled := True
win1.btnClose.Enabled := True
win1.btnDelete.Enabled := True
ELSEIF nMode=2
win1.textName.Enabled := True
win1.textAddress.Enabled := True
win1.textPhone.Enabled := True
win1.btnSave.Enabled := True
win1.btnCancel.Enabled := True
win1.btnFirst.Enabled := False
win1.btnNext.Enabled := False
win1.btnPrevious.Enabled := False
win1.btnLast.Enabled := False
win1.textSearches.Enabled := False
win1.Grid1.Value := False
win1.btnClose.Enabled := False
win1.btnDelete.Enabled := False
ENDIF
Return 0
Method Clear Class Customer
self:cName := " "
self:cAddress := " "
self:cphone := " "
Return 0
Method UI2Class Class Customer
self:cName := win1.textName.Value
self:cAddress := win1.textAddress.Value
self:cPhone := win1.textPhone.Value
Return 0
Method Class2Ado Class Customer
self:oRS:fields:item(alltrim(" Name")):value := self:cName
self:oRS:fields:item(alltrim(" Address")):value := self:cAddress
self:oRS:fields:item(alltrim(" Phone")):value := self:cPhone
Return 0
Method Save Class Customer
IF self:lAdd =True
self:lAdd := False
self:oRS:ADDNEW()
out = self:Class2Ado()
self:oRS:UPDATE()
out = self:setMode(1)
win1.Grid1.DeleteAllItems ( )
out = self:showRecords()
self:oRS:MOVELAST()
ELSE
out = self:UI2Class()
out = self:Class2Ado()
self:oRS:UPDATE()
out = self:setMode(1)
win1.Grid1.DeleteAllItems ( )
vBM := self:oRS:BookMark
out = self:showRecords()
self:oRS:BookMark := vBM
ENDIF
Return 0
Method Edit Class Customer
out = self:setMode(2)
Return 0
Method Delete Class Customer
Local nMax
nMax := self:oRS:RecordCount
IF nMax >0
MyOut := MSGYESNO(" Are You Sure"," ")
IF MyOut=False
Return 0
ENDIF
self:oRS:DELETE()
self:oRS:UPDATE()
win1.Grid1.DeleteAllItems ( )
out = self:showRecords()
IF nMax=1
out = self:Clear()
out = self:Class2UI()
ELSE
out = self:showRecord()
ENDIF
ELSE
MyOut := MSGBOX("No Records "," Sorry")
ENDIF
Return 0
Method Close Class Customer
win1.Release ( )
Return 0
Method showReport Class Customer
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Customer.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = StartUpFolder+"\sysdata.mdb"
Self:oActiveX:OOLE:reportsource := T_myreport
Self:oActiveX:OOLE:viewreport ( )
Return 0


End Of Resistance

INIT PROCEDURE Init_showreport
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CustomerObj of Class Customer",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","OutPut = CustomerObj.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Customer",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data oCon Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRS Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data cName Init Value ' '",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cAddress Init Value ' '",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data cPhone Init Value ' '",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Data lAdd Init Value False",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Data lCheck Init Value False",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Data oActivex Init Value 0",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method showRecords",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Searches",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UI",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method showRecord",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method First",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method Next",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method Previous",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method Last",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method GotoRecord",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method Add",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method Save",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method Cancel",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method setMode",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method Clear",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method UI2Class",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2Ado",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method Edit",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Method Delete",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Method Close",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Method showReport",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Customer",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Connect()",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Telephone'}",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:GotoRecord",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'enter items '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearches  )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Searches",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",69,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",97,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",104,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",111,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",117,120)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:First",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",122,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",126,129)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Next",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",131,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrevious ) , Caption : 'Previous '",135,138)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Previous",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",140,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",144,147)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Last",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",149,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Record Number '",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",155,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblRecordsCount ) , Caption : ' '",160,161)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",162,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",167,170)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Add",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",172,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",176,179)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Save",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",181,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",185,188)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Cancel",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",190,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit '",194,197)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Edit",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",199,202)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",203,206)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Delete",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",208,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",212,215)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Close",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",217,220)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( Self:oActiveX )",221,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnshowReport ) , Caption : 'showReport '",223,226)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:showReport",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",228,231)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",232,233)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","out = Self.showRecords()",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",237,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customer",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Driver={Microsoft Access Driver (*.mdb)};Dbq=sysdata.mdb'",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer'",245,247)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customer",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customer",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecords Class Customer",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('Name ') Value",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('Address ') Value",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (Self:oRS) Get Field ('Phone ') Value",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cphone} )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.RecordsCount()",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblRecordsCount.Value := cMax",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Searches Class Customer",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearches.Value",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer where Name Like '' +cName +'%''",277,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = Self.showRecords()",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customer",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field (' Name') Value",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field (' Address') Value",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field (' Phone') Value",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UI Class Customer",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecord Class Customer",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Ado2Class()",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Next Class Customer",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'The End ' Title ' ' Type: Message Box",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Previous Class Customer",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'The end ' Title ' ' Type: Message Box",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customer",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex-1",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method First Class Customer",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Last Class Customer",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Cancel Class Customer",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Ado2Class()",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Add Class Customer",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Clear()",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(2)",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Edit(True)",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method setMode(nMode) Class Customer",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode=1 )",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrevious.Enabled := True",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearches.Enabled := True",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Value := True",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := True",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := True",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode=2 )",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrevious.Enabled := False",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearches.Enabled := False",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Value := False",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := False",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := False",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Clear Class Customer",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ' '",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ' '",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","self.cphone = ' '",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UI2Class Class Customer",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = win1.textAddress.Value",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Ado Class Customer",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field (' Name') Value To (self:cName)",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field (' Address') Value To (self:cAddress)",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field (' Phone') Value To (self:cPhone)",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Save Class Customer",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lAdd =True )",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2Ado()",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecords()",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.UI2Class()",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2Ado()",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecords()",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Edit Class Customer",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(2)",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Delete Class Customer",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message ' Are You Sure' Title ' ' Type: Message Yes/No",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=False )",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Delete Record",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecords()",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax=1 )",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Clear()",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'No Records ' Title ' Sorry' Type: Message Box",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Close Class Customer",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",447,447)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showReport Class Customer",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",450,450)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object Self:oActiveX, View Report 'Customer.rpt' , Database Location = StartUpFolder+'\sysdata.mdb'",451,460)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",461,461)
Return
*-------------------------------------------------------------------*
