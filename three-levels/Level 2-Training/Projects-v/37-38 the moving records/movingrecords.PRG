*---------------------------------------------------------------------------*
* Time : 01:55:22    Date : 04/20/2017
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


Resistance R_movingrecords_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_movingrecords_19art1() code
CustomerObj = Customer()
OutPut = CustomerObj:showWindow()
Class Customer
Data oCon init 0
Data oRS init 0
Data cName init " "
Data cAddress init " "
Data cPhone init " "
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
EndClass
Method showWindow Class Customer
out = self:Connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1205 ;
HEIGHT 464 ;
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

@ 337 ,1078 BUTTONEX btn4;
CAPTION "First ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK self:First()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 337 ,962 BUTTONEX btn5;
CAPTION "Next ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK self:Next()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 337 ,846 BUTTONEX btn6;
CAPTION "Previous ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK self:Previous()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 337 ,730 BUTTONEX btn7;
CAPTION "Last ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,128};
ON CLICK self:Last()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

out = self:showRecord()
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
self:oRS:MOVEFIRST()
ENDIF
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
Method First Class Customer
self:oRS:MOVEFIRST()
out = self:showRecord()
Return 0
Method Next Class Customer
self:oRS:MOVENEXT()
out = self:showRecord()
lCheck := self:oRS:EOF()
IF lCheck
self:oRS:MOVEPREVIOUS()
ELSE
out = self:showRecord()
ENDIF
Return 0
Method Previous Class Customer
self:oRS:MOVEPREVIOUS()
out = self:showRecord()
lCheck := self:oRS:BOF()
IF lCheck
self:oRS:MOVENEXT()
ELSE
out = self:showRecord()
ENDIF
Return 0
Method Last Class Customer
self:oRS:MOVELAST()
out = self:showRecord()
Return 0


End Of Resistance

INIT PROCEDURE Init_movingrecords
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
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method Connect",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisConnect",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordsCount",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method showRecords",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method Searches",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Ado2Class",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UI",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method showRecord",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method First",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method Next",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method Previous",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method Last",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Customer",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Connect()",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer  '",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:DisConnect",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Records Count '",36,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:RecordsCount",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Telephone'}",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",46,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'enter items '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearches  )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Searches",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",63,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name '",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address '",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone '",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",91,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",98,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",105,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'First '",111,114)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:First",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",116,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Next '",120,123)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Next",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",125,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Previous '",129,132)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Previous",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",134,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Last '",138,141)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Last",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",143,146)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","out = Self.showRecords()",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",151,153)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Connect Class Customer",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oCon = Create New ADODB Connection",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection Self:oCon , Connection String : 'Driver={Microsoft Access Driver (*.mdb)};Dbq=sysdata.mdb'",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Self:oRS = Create New ADODB RecordSet Object",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer'",159,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisConnect Class Customer",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection Self:oCon",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordsCount Class Customer",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message nMax Title ' Counts' Type: Message Box",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecords Class Customer",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (Self:oRS) , Get Records Count",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto First Record",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (Self:oRS) Get Field ('Name ') Value",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (Self:oRS) Get Field ('Address ') Value",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (Self:oRS) Get Field ('Phone ') Value",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cphone} )",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet Self:oRS - Goto Next Record",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Searches Class Customer",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearches.Value",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet Self:oRS",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset Self:oRS , Connection Self:oCon , CursorType 1 , SQL Statement 'Select * from Customer where Name Like '' +cName +'%''",188,190)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = Self.showRecords()",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Ado2Class Class Customer",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field (' Name') Value",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAddress = ADODB RecordSet (self:oRS) Get Field (' Address') Value",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field (' Phone') Value",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UI Class Customer",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := self:cAddress",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecord Class Customer",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Ado2Class()",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UI()",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method First Class Customer",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Next Class Customer",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check EOF",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Previous Class Customer",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","lCheck = ADODB RecordSet self:oRS , Check BOF",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lCheck )",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Last Class Customer",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",238,238)
Return
*-------------------------------------------------------------------*
