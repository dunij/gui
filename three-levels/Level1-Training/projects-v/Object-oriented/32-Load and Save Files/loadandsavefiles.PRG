*---------------------------------------------------------------------------*
* Time : 21:52:26    Date : 04/10/2017
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


Resistance R_loadandsavefiles_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_loadandsavefiles_19art1() code
NoteObj = Notes()
out = NoteObj:showWindow()
Class Notes
Data cData init 0
Method showWindow
Method Load
Method Save
Method Close
Method Class2UserInterface
Method UserInterface2Class
EndClass
Method showWindow Class Notes
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 850 ;
HEIGHT 464 ;
ICON "PWCTICON" ;
TITLE "Notes  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,494 LABEL lbl1 ;
VALUE "Notes " ;
WIDTH 203 ;
HEIGHT 46 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 52 ,165 EDITBOX edit1;
ON CHANGE self:UserInterface2Class()  ;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 67 ,703 BUTTONEX btn1;
CAPTION "Load ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Load()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 129 ,703 BUTTONEX btn2;
CAPTION "Save ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Save()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 191 ,703 BUTTONEX btn3;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK self:Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method Load Class Notes
GetFile := GetFile ( { {"Text","*.txt"} } , ;
, ;
, ;
, ;
)
self:cData := FILESTR( GetFile )
out = self:Class2UserInterface()
Return 0
Method Save Class Notes
PutFile := PutFile (  , ;
, ;
, ;
, ;
)
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,self:cData)
FCLOSE(RPWI_TH)
Return 0
Method Close Class Notes
win1.Release ( )
Return 0
Method Class2UserInterface Class Notes
win1.edit1.Value := self:cData
Return 0
Method UserInterface2Class Class Notes
self:cData := win1.edit1.Value
Return 0


End Of Resistance

INIT PROCEDURE Init_loadandsavefiles
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object NoteObj of Class Notes",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","out = NoteObj.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Notes",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data cData Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method Load",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method Save",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method Close",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserInterface",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method UserInterface2Class",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class Notes",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Notes  '",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Notes '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:UserInterface2Class",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Load '",37,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Load",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Save '",46,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Save",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Close '",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Close",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,63)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Load Class Notes",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","self:cData := Read File GetFile",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2UserInterface()",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Save Class Notes",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","write String self:cData to File PutFile",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Close Class Notes",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Notes",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := self:cData",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserInterface2Class Class Notes",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","self:cData = win1.edit1.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",97,97)
Return
*-------------------------------------------------------------------*
