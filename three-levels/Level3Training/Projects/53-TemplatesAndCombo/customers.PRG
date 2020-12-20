*---------------------------------------------------------------------------*
* Time : 18:59:34    Date : 04/25/2017
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
Data cName init ""
Data cAddress init ""
Data cPhone init ""
Data TableName init "Customers"
Data nCountryID init 0
Data aCountryItems init 0
Data aCountryItemsID init 0
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
EndClass
Method showwindow Class CustomersClass
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

@ 46 ,-11 IMAGE image1;
PICTURE "S:\training2\Level 3 Training\Projects-v\52-Templates\images\Back.jpg";
STRETCH ;
WIDTH 750 HEIGHT 255
@ 14 ,0 LABEL lblTitle ;
VALUE "Data Window" ;
WIDTH 750 ;
HEIGHT 30 ;
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
@ 169 ,548 LABEL lblCountry ;
VALUE "Country " ;
WIDTH 224 ;
HEIGHT 60 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 178 ,243 COMBOBOX comboCountry;
WIDTH 240 ;
HEIGHT 300;
ITEMS self:aCountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
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
Return 0
Method Class2ADO Class CustomersClass
self:oRS:fields:item(alltrim(" CustName")):value := self:cName
self:oRS:fields:item(alltrim(" CustAddress")):value := self:cAddress
self:oRS:fields:item(alltrim(" CustPhone")):value := self:cPhone
self:oRS:fields:item(alltrim(" CountryID")):value := self:nCountryID
Return 0
Method ADO2Class Class CustomersClass
self:cName := self:oRS:fields:item(alltrim("CustName ")):value
self:cAddress := self:oRS:fields:item(alltrim("CustAddress ")):value
self:cPhone := self:oRS:fields:item(alltrim("CustPhone ")):value
self:nCountryID := self:oRS:fields:item(alltrim("CountryID ")):value
Return 0
Method Class2UserInterface Class CustomersClass
&(self:cWindowName).textName.Value := self:cName
&(self:cWindowName).textAddress.Value := self:cAddress
&(self:cWindowName).textPhone.Value := self:cPhone
nIndex = self:LookupIDToIndex(self:nCountryID,self:aCountryItemsID)
&(self:cWindowName).comboCountry.Value := nIndex
Return 0
Method ClearRecord Class CustomersClass
self:cName := ""
self:cAddress := ""
self:cPhone := ""
self:nCountryID := 0
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
ENDIF
self:OperationMode := p1
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
