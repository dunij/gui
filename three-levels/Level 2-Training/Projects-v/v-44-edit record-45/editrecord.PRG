*---------------------------------------------------------------------------*
* Time : 15:19:14    Date : 04/16/2017
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


Resistance R_editrecord_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_editrecord_19art1() code
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
EndClass
Method showWindow Class Customer
out = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1200 ;
HEIGHT 457 ;
ON RELEASE self:DisConnect()  ;
ICON "PWCTICON" ;
TITLE "Customer  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 139 ,216 GRID Grid1;
ON CHANGE self:GotoRecord()  ;
WIDTH 418 ;
HEIGHT 198 ;
HEADERS {"Name","Address","Telephone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
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

@ 140 ,678 LABEL lbl2 ;
VALUE "Name " ;
WIDTH 412 ;
HEIGHT 43 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 195 ,679 LABEL lbl3 ;
VALUE "Address " ;
WIDTH 411 ;
HEIGHT 37 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 244 ,678 LABEL lbl4 ;
VALUE "Phone " ;
WIDTH 412 ;
HEIGHT 37 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 149 ,778 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 196 ,778 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 410 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 243 ,778 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 410 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 337 ,1078 BUTTONEX btnFirst;
CAPTION "First ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK self:First()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 337 ,962 BUTTONEX btnNext;
CAPTION "Next ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK self:Next()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 336 ,846 BUTTONEX btnPrevious;
CAPTION "Previous ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK self:Previous()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 337 ,730 BUTTONEX btnLast;
CAPTION "Last ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK self:Last()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 359 ,216 LABEL lbl5 ;
VALUE "Record Number " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 355 ,315 LABEL lblRecordsCount ;
VALUE " " ;
WIDTH 58 ;
HEIGHT 32 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 138 ,38 BUTTONEX btnAdd;
CAPTION "Add ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 189 ,38 BUTTONEX btnSave;
CAPTION "Save ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Save()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 239 ,38 BUTTONEX btnCancel;
CAPTION "Cancel ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Cancel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 91 ,38 BUTTONEX btnEdit;
CAPTION "Edit ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Edit()  ;
WIDTH 100 HEIGHT 30 ;
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


End Of Resistance

INIT PROCEDURE Init_editrecord
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
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method showRecords",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Searches",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UI",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method showRecord",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method First",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method Next",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method Previous",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method Last",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method GotoRecord",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method Add",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method Save",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method Cancel",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method setMode",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method Clear",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method UI2Class",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2Ado",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method Edit",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Customer",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Connect()",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Telephone'}",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:GotoRecord",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'enter items '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearches  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Searches",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",93,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",100,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",107,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",113,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:First",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",122,125)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Next",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",127,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrevious ) , Caption : 'Previous '",131,134)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Previous",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",136,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",140,143)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Last",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",145,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Record Number '",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",151,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblRecordsCount ) , Caption : ' '",156,157)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",158,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",163,166)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Add",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",168,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",172,175)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Save",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",177,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",181,184)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Cancel",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",186,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit '",190,193)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Edit",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",195,198)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",199,200)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","out = Self.showRecords()",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",204,206)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customer",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Driver={Microsoft Access Driver (*.mdb)};Dbq=sysdata.mdb'",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer'",212,214)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customer",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customer",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecords Class Customer",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('Name ') Value",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('Address ') Value",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (Self:oRS) Get Field ('Phone ') Value",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cphone} )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.RecordsCount()",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblRecordsCount.Value := cMax",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Searches Class Customer",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearches.Value",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer where Name Like '' +cName +'%''",244,246)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = Self.showRecords()",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customer",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field (' Name') Value",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field (' Address') Value",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field (' Phone') Value",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UI Class Customer",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecord Class Customer",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Ado2Class()",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Next Class Customer",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'The End ' Title ' ' Type: Message Box",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Previous Class Customer",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'The end ' Title ' ' Type: Message Box",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customer",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex-1",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method First Class Customer",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Last Class Customer",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Cancel Class Customer",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Ado2Class()",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Add Class Customer",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Clear()",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(2)",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Edit(True)",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method setMode(nMode) Class Customer",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode=1 )",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrevious.Enabled := True",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearches.Enabled := True",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Value := True",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode=2 )",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrevious.Enabled := False",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearches.Enabled := False",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Value := False",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Clear Class Customer",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ' '",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ' '",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","self.cphone = ' '",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UI2Class Class Customer",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = win1.textAddress.Value",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Ado Class Customer",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field (' Name') Value To (self:cName)",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field (' Address') Value To (self:cAddress)",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field (' Phone') Value To (self:cPhone)",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Save Class Customer",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lAdd =True )",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2Ado()",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecords()",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.UI2Class()",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2Ado()",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecords()",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Edit Class Customer",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(2)",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",385,385)
Return
*-------------------------------------------------------------------*
