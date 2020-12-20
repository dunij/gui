*---------------------------------------------------------------------------*
* Time : 12:09:36    Date : 05/10/2017
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


Resistance R_arrayasstack_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_arrayasstack_19art1() code
aArray := {}
AADD( aArray , {"1","2","3","4","5"})
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 725 ;
HEIGHT 457 ;
ICON "PWCTICON" ;
TITLE "array as stack  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 9 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS aArray ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 9 ,237 LISTBOX list2;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 232 ,10 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 307 ,46 BUTTONEX btn1;
CAPTION "push ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK Push()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 307 ,311 BUTTONEX btn2;
CAPTION "pop ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK Pop()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Push()
cItem := win1.text1.Value
win1.list1.AddItem ( cItem )
AADD( aArray , cItem)
Win1.List1.Additem ( aArray )
return
procedure Pop()
nMax  = LEN(aArray)
IF nMax >0
Win1.List2.Additem ( aArray[nMax] )
win1.list1.DeleteItem ( nMax )
ADEL( aArray , nMax)
ASIZE( aArray , LEN( aArray ) - 1 )
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_arrayasstack
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aArray",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {'1','2','3','4','5'} To Array aArray",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'array as stack  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : aArray",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",14,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'push '",33,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Push",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'pop '",42,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Pop",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Push ( Event : CLICK )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","cItem = win1.text1.Value",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cItem )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cItem To Array aArray",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray) to Listbox (List1) of Window (Win1)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Pop ( Event : CLICK )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray[nMax]) to Listbox (List2) of Window (Win1)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteItem ( nMax )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Delete item nMax from Array aArray",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
