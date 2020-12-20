*---------------------------------------------------------------------------*
* Time : 10:00:19    Date : 04/27/2017
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
Function loaddatabrowsebycountry
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

Resistance R_databrowsebycountry_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_databrowsebycountry_19art1() code
class DataBrowseByCountryClass From SystemDatabase
Data cWindowName init "DataBrowseByCountryWindow"
Data tablename init "Customer_all"
Data column init "Country"
Data PrimaryKey init "id"
Data columns init {"CustName","CustPhone","Country"}
Data columnstitles init {"Name","Phone","Country"}
Data columnswidths init {200,100,200}
Data aCountryItems init { }
Data aCountryItemsIDs init { }
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class DataBrowseByCountryClass
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

@ -63 ,-39 IMAGE image1;
PICTURE "S:\training2\Level3Training\Projects\57\images\Back.jpg";
STRETCH ;
WIDTH 793 HEIGHT 407
@ 20 ,42 LABEL lbl1 ;
VALUE "Country " ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
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
out = self:LoadLookupTable("Country","Country",@self:aCountryItems,"ID",@self:aCountryItemsIDs)
@ 16 ,200 COMBOBOX comboCountry;
ON CHANGE self:Search()  ;
WIDTH 192 ;
HEIGHT 300;
ITEMS self:aCountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method ShowDataWindow(nValue) Class DataBrowseByCountryClass
CustomersObject:LFindRecord := true
CustomersObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersObject:ShowWindow()
Return 0
Method closewindow Class DataBrowseByCountryClass
&(self:cWindowName).Release ( )
Return 0
Method OpenDataWindow Class DataBrowseByCountryClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class DataBrowseByCountryClass
&(self:cWindowName).grid1.DeleteAllItems ( )
&(self:cWindowName).grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class DataBrowseByCountryClass
&(self:cWindowName).grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class DataBrowseByCountryClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class DataBrowseByCountryClass
Local nvalue,cCountry
nvalue := &(self:cWindowName).comboCountry.Value
IF nvalue=0
Return " "
ENDIF
cCountry := self:aCountryItems[nvalue]
Return cCountry


End Of Resistance

*-------------------------------------------------------------------*
