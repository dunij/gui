*---------------------------------------------------------------------------*
* Time : 19:58:57    Date : 08/08/2017
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2017 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2017.07.06
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


Resistance R_self_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_self_19art1() code
MyObject = MyClass()
out = MyObject:Title("Result")
out = MyObject:Sum(20,30)
out = MyObject:ShowSum(100,200)
out = MyObject:MessageAndTitle("Result" , 10, 40)
out = MyObject:SelfMessageAndTitle("Result" , 222, 456)
Class MyClass
Method Title
Method Sum
Method ShowSum
Method MessageAndTitle
Method SelfMessageAndTitle
EndClass
Method Title(cTitle) Class MyClass
MyOut := MSGINFO(" ",cTitle)
Return 0
Method Sum(x,y) Class MyClass
cSum = x + y
MyOut := MSGBOX(cSum," ")
Return cSum
Method ShowSum(x,y) Class MyClass
cSum = self:Sum(x,y)
Return 0
Method MessageAndTitle(cTitle,x,y) Class MyClass
cSum = x + y
MyOut := MSGBOX(cSum,cTitle)
Return 0
Method SelfMessageAndTitle(cTitle,x,y) Class MyClass
out = self:MessageAndTitle(cTitle,x,y)
Return 0


End Of Resistance

INIT PROCEDURE Init_self
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObject of Class MyClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","out = MyObject.Title('Result')",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","out = MyObject.Sum(20,30)",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","out = MyObject.ShowSum(100,200)",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","out = MyObject.MessageAndTitle('Result' , 10, 40)",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","out = MyObject.SelfMessageAndTitle('Result' , 222, 456)",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MyClass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method Title",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowSum",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method MessageAndTitle",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method SelfMessageAndTitle",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Title(cTitle) Class MyClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message ' ' Title cTitle Type: Message Info",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum(x,y) Class MyClass",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = x + y",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message cSum Title ' ' Type: Message Box",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return cSum)",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowSum(x,y) Class MyClass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = self.Sum(x,y)",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method MessageAndTitle(cTitle,x,y) Class MyClass",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = x + y",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message cSum Title cTitle Type: Message Box",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SelfMessageAndTitle(cTitle,x,y) Class MyClass",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.MessageAndTitle(cTitle,x,y)",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",30,30)
Return
*-------------------------------------------------------------------*
