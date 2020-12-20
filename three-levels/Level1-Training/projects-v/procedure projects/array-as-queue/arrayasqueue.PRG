*---------------------------------------------------------------------------*
* Time : 00:09:47    Date : 04/12/2017
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


Resistance R_arrayasqueue_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_arrayasqueue_19art1() code
aArray := {" "}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 816 ;
HEIGHT 455 ;
ICON "PWCTICON" ;
TITLE "array as queue  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,159 LISTBOX list1;
WIDTH 200 ;
HEIGHT 300 ;
ITEMS aArray ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,376 LISTBOX list2;
WIDTH 200 ;
HEIGHT 300 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 316 ,159 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 378 ,194 BUTTONEX btn1;
CAPTION "Add ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 378 ,440 BUTTONEX btn2;
CAPTION "Remove ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,0};
ON CLICK remove()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure add()
nNum := win1.text1.Value
AADD( aArray , nNum)
Win1.List1.Additem ( nNum )
return
procedure remove()
nMax  = LEN(aArray)
IF nMax >0
Win1.List2.Additem ( aArray[1] )
win1.list1.DeleteItem ( 1 )
ADEL( aArray , 1)
ASIZE( aArray , LEN( aArray ) - 1 )
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_arrayasqueue
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","aArray = {' '}",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'array as queue  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : aArray",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add '",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Remove '",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action remove",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add ( Event : CLICK )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","nNum = win1.text1.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Add item nNum To Array aArray",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (nNum) to Listbox (List1) of Window (Win1)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure remove ( Event : CLICK )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray[1]) to Listbox (List2) of Window (Win1)",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteItem ( 1 )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Delete item 1 from Array aArray",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
Return
*-------------------------------------------------------------------*
