*---------------------------------------------------------------------------*
* Time : 19:10:23    Date : 04/06/2017
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


Resistance R_sum_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_sum_19art1() code
first = sum()
cSum = first:add(10,20,"result  ")
messages = sum()
cmessage = messages:message("thanks","ok")
Class sum
Method add
Method message
EndClass
Method add(a,b,title) Class sum
cSum = a + b
MyOut := MSGBOX(cSum,title)
Return cSum
Method message(cmessage,title) Class sum
MyOut := MSGExclamation(cmessage,title)
Return 0


End Of Resistance

INIT PROCEDURE Init_sum
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object first of Class sum",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = first.add(10,20,'result  ')",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object messages of Class sum",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","cmessage = messages.message('thanks','ok')",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class sum",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method add",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method message",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method add(a,b,title) Class sum",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = a + b",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message cSum Title title Type: Message Box",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return cSum)",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method message(cmessage,title) Class sum",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message cmessage Title title Type: Message Exclamation",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",15,15)
Return
*-------------------------------------------------------------------*
