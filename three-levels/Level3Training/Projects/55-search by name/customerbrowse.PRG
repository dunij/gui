*---------------------------------------------------------------------------*
* Time : 17:13:41    Date : 04/27/2017
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
Function loadcustomerbrowse
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

Resistance R_customerbrowse_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_customerbrowse_19art1() code
class CustomerBrowseClass From SystemDatabase
Data cWindowName init "CustomerBrowseWindow"
Data tablename init "Customers"
Data column init "CustName"
Data PrimaryKey init "id"
Data columns init {"CustName","CustPhone"}
Data columnstitles init {"Name","Phone"}
Data columnswidths init {200,100}
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class CustomerBrowseClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ -3 ,-1 IMAGE image1;
PICTURE "S:\training2\Level 3 Training\Projects-v\55-search by name\images\Back.jpg";
STRETCH ;
WIDTH 717 HEIGHT 335
@ 20 ,42 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,138 TEXTBOX textName;
ON CHANGE self:search()  ;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 

@ 10 ,575 BUTTONEX btn1;
CAPTION "Search ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK self:Search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 280 ,574 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,16 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 550 ;
HEIGHT 250 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method showDataWindow(nValue) Class CustomerBrowseClass
CustomersObject:LFindRecord := true
CustomersObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersObject:ShowWindow()
Return 0
Method closewindow Class CustomerBrowseClass
&(self:cWindowName).Release ( )
Return 0
Method OpenDataWindow Class CustomerBrowseClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomerBrowseClass
&(self:cWindowName).grid1.DeleteAllItems ( )
&(self:cWindowName).grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomerBrowseClass
&(self:cWindowName).grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomerBrowseClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomerBrowseClass
cName := &(self:cWindowName).textName.Value
cName = STRTRAN(cName,"[","")
cName = STRTRAN(cName,"'","")
Return cName


End Of Resistance

*-------------------------------------------------------------------*
