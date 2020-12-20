*---------------------------------------------------------------------------*
* Time : 22:05:34    Date : 04/16/2017
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


Resistance R_clearbutton_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_clearbutton_19art1() code
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
Method Delete
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
BACKCOLOR {255,255,0};
ON CLICK self:First()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 337 ,974 BUTTONEX btnNext;
CAPTION "Next ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK self:Next()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 336 ,870 BUTTONEX btnPrevious;
CAPTION "Previous ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK self:Previous()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 337 ,766 BUTTONEX btnLast;
CAPTION "Last ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK self:Last()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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
@ 339 ,662 BUTTONEX btnDelete;
CAPTION "Delete ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK self:Delete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
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
Method Delete Class Customer
nMax := self:oRS:RecordCount
IF nMax >0
MyOut := MSGYESNO("Are You Sure "," ")
IF MyOut   =False
Return 0
ENDIF
self:oRS:DELETE()
self:oRS:UPDATE()
win1.Grid1.DeleteAllItems ( )
out = self:showRecords()
nMax := self:oRS:RecordCount
IF nMax=0
out = self:Clear()
out = self:Class2UI()
ELSE
out = self:showRecord()
ENDIF
ELSE
MyOut := MSGBOX("No Records "," ")
ENDIF
Return 0


End Of Resistance

INIT PROCEDURE Init_clearbutton
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
SS_ESASTEP("Circuits\Main\Main\Main","Method Delete",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Customer",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Connect()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Telephone'}",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:GotoRecord",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",50,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'enter items '",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearches  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Searches",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",66,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",81,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",94,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",101,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",108,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",114,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:First",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",123,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Next",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",128,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrevious ) , Caption : 'Previous '",132,135)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Previous",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",137,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last '",141,144)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Last",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",146,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Record Number '",150,151)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",152,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblRecordsCount ) , Caption : ' '",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",159,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",164,167)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Add",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",169,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save '",173,176)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Save",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",178,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel '",182,185)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Cancel",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",187,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit '",191,194)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Edit",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",196,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",200,203)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Delete",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",205,208)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",209,210)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","out = Self.showRecords()",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",214,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customer",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Driver={Microsoft Access Driver (*.mdb)};Dbq=sysdata.mdb'",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer'",222,224)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customer",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customer",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecords Class Customer",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('Name ') Value",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('Address ') Value",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (Self:oRS) Get Field ('Phone ') Value",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cphone} )",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.RecordsCount()",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblRecordsCount.Value := cMax",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Searches Class Customer",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearches.Value",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer where Name Like '' +cName +'%''",254,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = Self.showRecords()",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customer",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field (' Name') Value",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field (' Address') Value",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field (' Phone') Value",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UI Class Customer",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecord Class Customer",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Ado2Class()",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Next Class Customer",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'The End ' Title ' ' Type: Message Box",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Previous Class Customer",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'The end ' Title ' ' Type: Message Box",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class Customer",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = nIndex-1",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nIndex Step 1)",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method First Class Customer",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Last Class Customer",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Cancel Class Customer",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Ado2Class()",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Add Class Customer",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Clear()",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(2)",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Edit(True)",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method setMode(nMode) Class Customer",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode=1 )",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := False",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrevious.Enabled := True",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearches.Enabled := True",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Value := True",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode=2 )",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Enabled := True",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrevious.Enabled := False",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearches.Enabled := False",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Value := False",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Clear Class Customer",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ' '",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAddress = ' '",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","self.cphone = ' '",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UI2Class Class Customer",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = win1.textAddress.Value",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2Ado Class Customer",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field (' Name') Value To (self:cName)",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field (' Address') Value To (self:cAddress)",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field (' Phone') Value To (self:cPhone)",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Save Class Customer",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lAdd =True )",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2Ado()",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecords()",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.UI2Class()",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2Ado()",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(1)",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecords()",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Edit Class Customer",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.setMode(2)",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Delete Class Customer",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Are You Sure ' Title ' ' Type: Message Yes/No",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut   =False )",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Delete Record",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecords()",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax=0 )",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Clear()",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'No Records ' Title ' ' Type: Message Box",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",417,417)
Return
*-------------------------------------------------------------------*
