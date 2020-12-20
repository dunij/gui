*---------------------------------------------------------------------------*
* Time : 20:48:51    Date : 04/09/2017
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


Resistance R_updateget_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_updateget_19art1() code
showobj = Counter()
out = showobj:showWindow()
out = showobj:UpdateNumber()
Class Counter
Data nNumber init 0
Method Increment
Method showWindow
Method btnIncrement
Method UpdateNumber
EndClass
Method Increment Class Counter
self:nNumber = self:nNumber + 1
Return 0
Method showWindow Class Counter
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 681 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Counter  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 130 ,452 LABEL lbl1 ;
VALUE "Number " ;
WIDTH 73 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 130 ,219 TEXTBOX text1;
ON CHANGE self:UpdateNumber()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 186 ,452 BUTTONEX btn1;
CAPTION "Increment ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:btnIncrement()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method btnIncrement Class Counter
myout = self:Increment()
win1.text1.Value := self:nNumber
Return 0
Method UpdateNumber Class Counter
self:nNumber := win1.text1.Value
Return self:nNumber


End Of Resistance

INIT PROCEDURE Init_updateget
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object showobj of Class Counter",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","out = showobj.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","out = showobj.UpdateNumber()",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Counter",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method Increment",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method btnIncrement",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method UpdateNumber",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Increment Class Counter",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber = self:nNumber + 1",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Counter",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter  '",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:UpdateNumber",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Increment '",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btnIncrement",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btnIncrement Class Counter",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Increment()",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := self:nNumber",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UpdateNumber Class Counter",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber = win1.text1.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:nNumber)",62,62)
Return
*-------------------------------------------------------------------*
