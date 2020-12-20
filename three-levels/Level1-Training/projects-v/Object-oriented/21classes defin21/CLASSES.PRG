*---------------------------------------------------------------------------*
* Time : 21:14:16    Date : 04/05/2017
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


Resistance R_CLASSES_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CLASSES_19art1() code
Sara = MyClass()
outp = Sara:MyMethod()
Mahmoud = MyClass()
output = Mahmoud:MyMethod()
Class MyClass
Method MyMethod
EndClass
Method MyMethod Class MyClass
MyOut := MSGBOX("hello in object oriented "," ")
MyOut := MSGBOX("nice explaination M "," thanks")
Return 0


End Of Resistance

INIT PROCEDURE Init_CLASSES
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Sara of Class MyClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","outp = Sara.MyMethod()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Mahmoud of Class MyClass",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","output = Mahmoud.MyMethod()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MyClass",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method MyMethod",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MyMethod Class MyClass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'hello in object oriented ' Title ' ' Type: Message Box",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'nice explaination M ' Title ' thanks' Type: Message Box",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",11,11)
Return
*-------------------------------------------------------------------*
