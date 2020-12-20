*---------------------------------------------------------------------------*
* Time : 23:19:10    Date : 05/13/2017
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
Function loadcustomers
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

Resistance R_customers_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_customers_19art1() code
class CustomersClass From SystemDatabase
Data cWindowName init "CustomersWindow"
Data TableName init "Customers"
Data nCountryID init 0
Data aCountryItems init 0
Data aCountryItemsID init 0
Data cName init ""
Data cAddress init ""
Data cPhone init ""
Data dDateOfBirth init Date()
Data nBalance init 0
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method CheckData
Method TotalBalance
EndClass
Method showwindow Class CustomersClass
IF UsersObject:checkPermission(1)=True
MyOut := MSGBOX("Access Is Denied "," ")
Return 0
ELSEIF UsersObject:checkPermission(2)=True
MyOut := MSGBOX("Access Is Denied "," ")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 770 ;
HEIGHT 398 ;
ICON "PWCTICON" ;
TITLE "Data Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 

@ 52 ,-2 IMAGE image1;
PICTURE "S:\training2\Level 3 Training\Projects-v\54-\images\Back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 255
@ 14 ,2 LABEL lblTitle ;
VALUE "Data Window" ;
WIDTH 614 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 316 ,326 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,389 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,518 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,673 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,455 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,587 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 316 ,162 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,234 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,91 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,8 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 61 ,548 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 204 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 102 ,548 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 204 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 139 ,548 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 203 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 56 ,243 TEXTBOX textName;
HEIGHT 38 ;
WIDTH 240 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 98 ,243 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 240 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 135 ,243 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 240 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

out = self:LoadLookupTable("Country","Country",@self:aCountryItems,"ID",@self:aCountryItemsID)
@ 175 ,548 LABEL lblCountry ;
VALUE "Country " ;
WIDTH 224 ;
HEIGHT 66 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 176 ,243 COMBOBOX comboCountry;
WIDTH 240 ;
HEIGHT 300;
ITEMS self:aCountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 216 ,243 DATEPICKER datepickerwindow;
WIDTH 240 ;
FONT "Arial" SIZE 15 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 213 ,553 LABEL lbl5 ;
VALUE "Date " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 15  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 248 ,552 LABEL lbl6 ;
VALUE "Balance " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 255 ,243 TEXTBOX textBalance;
HEIGHT 30 ;
WIDTH 240 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 14 ,619 BUTTONEX btnBalance;
CAPTION "TotalBalance ";
FONTCOLOR {0,0,0};
BACKCOLOR {128,0,128};
ON CLICK self:TotalBalance()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class CustomersClass
self:cName := &(self:cWindowName).textName.Value
self:cAddress := &(self:cWindowName).textAddress.Value
self:cPhone := &(self:cWindowName).textPhone.Value
self:nCountryID := &(self:cWindowName).comboCountry.Value
self:nCountryID := self:aCountryItemsID[self:nCountryID]
self:dDateOfBirth := &(self:cWindowName).datepickerwindow.Value
self:nBalance = VAL ( self:nBalance )
self:nBalance := &(self:cWindowName).textBalance.Value
Return 0
Method Class2ADO Class CustomersClass
self:oRS:fields:item(alltrim(" CustName")):value := self:cName
self:oRS:fields:item(alltrim(" CustAddress")):value := self:cAddress
self:oRS:fields:item(alltrim(" CustPhone")):value := self:cPhone
self:oRS:fields:item(alltrim(" CountryID")):value := self:nCountryID
self:oRS:fields:item(alltrim("DateOfBirth")):value := self:dDateOfBirth
self:oRS:fields:item(alltrim(" Balance")):value := self:nBalance
Return 0
Method ADO2Class Class CustomersClass
self:cName := self:oRS:fields:item(alltrim("CustName ")):value
self:cAddress := self:oRS:fields:item(alltrim("CustAddress ")):value
self:cPhone := self:oRS:fields:item(alltrim("CustPhone ")):value
self:nCountryID := self:oRS:fields:item(alltrim("CountryID ")):value
self:dDateOfBirth := self:oRS:fields:item(alltrim("DateOfBirth ")):value
self:nBalance := self:oRS:fields:item(alltrim("Balance ")):value
Return 0
Method Class2UserInterface Class CustomersClass
&(self:cWindowName).textName.Value := self:cName
&(self:cWindowName).textAddress.Value := self:cAddress
&(self:cWindowName).textPhone.Value := self:cPhone
nIndex = self:LookupIDToIndex(self:nCountryID,self:aCountryItemsID)
&(self:cWindowName).comboCountry.Value := nIndex
&(self:cWindowName).datepickerwindow.Value := self:dDateOfBirth
cBalance = STR ( self:nBalance )
cBalance = ALLTRIM ( cBalance )
&(self:cWindowName).textBalance.Value := cBalance
Return 0
Method ClearRecord Class CustomersClass
self:cName := ""
self:cAddress := ""
self:cPhone := ""
self:nCountryID := 0
self:dDateOfBirth := Date()
self:nBalance := 0
Return 0
Method setmode(p1) Class CustomersClass
IF p1 = 1
&(self:cWindowName).btnfirst.Enabled := false
&(self:cWindowName).btnnext.Enabled := false
&(self:cWindowName).btnprev.Enabled := false
&(self:cWindowName).btnlast.Enabled := false
&(self:cWindowName).btndel.Enabled := false
&(self:cWindowName).btnclose.Enabled := false
&(self:cWindowName).btnsave.Enabled := true
&(self:cWindowName).btncancel.Enabled := true
&(self:cWindowName).btnedit.Enabled := false
&(self:cWindowName).btnadd.Enabled := false
&(self:cWindowName).textName.Enabled := True
&(self:cWindowName).textAddress.Enabled := True
&(self:cWindowName).textPhone.Enabled := True
&(self:cWindowName).comboCountry.Enabled := True
&(self:cWindowName).datepickerwindow.Enabled := True
&(self:cWindowName).textBalance.Enabled := true
ENDIF
IF p1 = 2
&(self:cWindowName).btnfirst.Enabled := true
&(self:cWindowName).btnnext.Enabled := true
&(self:cWindowName).btnprev.Enabled := true
&(self:cWindowName).btnlast.Enabled := true
&(self:cWindowName).btndel.Enabled := true
&(self:cWindowName).btnclose.Enabled := true
&(self:cWindowName).btnsave.Enabled := false
&(self:cWindowName).btncancel.Enabled := false
&(self:cWindowName).btnedit.Enabled := true
&(self:cWindowName).btnadd.Enabled := true
&(self:cWindowName).textName.Enabled := False
&(self:cWindowName).textAddress.Enabled := False
&(self:cWindowName).textPhone.Enabled := False
&(self:cWindowName).comboCountry.Enabled := False
&(self:cWindowName).datepickerwindow.Enabled := False
&(self:cWindowName).textBalance.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
Method CheckData Class CustomersClass
Local lRet ,cName,nCountry
lRet := true
cName := &(self:cWindowName).textName.Value
IF cName==""
MyOut := MSGBOX(" Enter The Customer Name"," Sorry")
lRet := False
ENDIF
nCountry := &(self:cWindowName).comboCountry.Value
IF nCountry==0
MyOut := MSGBOX(" Select The Country"," Sorry")
lRet := False
ENDIF
Return lRet
Method TotalBalance Class CustomersClass
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := self:oCon
myoRS:open ( "Select * from TotalBalance",self:oCon,3,3 )
myoRS:MOVEFIRST()
nBalance := myoRS:fields:item(alltrim("SumOfBalance")):value
MyOut := MSGBOX(nBalance,"Balance ")
myoRS:Close()
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := self:oCon
myoRS:open ( "SELECT Sum(Customers.Balance) AS SumOfBalance From Customers",self:oCon,3,3 )
myoRS:MOVEFIRST()
nBalance := myoRS:fields:item(alltrim("SumOfBalance")):value
MyOut := MSGBOX(nBalance,"Balance ")
myoRS:Close()
myoRS := TOLEAUTO():NEW( "ADODB.Recordset" )
myoRS:CursorType := 1
myoRS:ActiveConnection := self:oCon
myoRS:open ( "Select * from Customers",self:oCon,3,3 )
nTotal := 0
nMax := myoRS:RecordCount
IF nMax>0
myoRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
nCustBalance := myoRS:fields:item(alltrim("Balance ")):value
nTotal := nCustBalance+nTotal
myoRS:MOVENEXT()
Next
ENDIF
MyOut := MSGBOX(nTotal,"Balance ")
myoRS:Close()
Return 0
Method closewindow Class CustomersClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class CustomersClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( &(self:cWindowName) )
myout = self:showrecord()
&(self:cWindowName).SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0


End Of Resistance

*-------------------------------------------------------------------*
