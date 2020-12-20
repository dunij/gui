*---------------------------------------------------------------------------*
* Time : 20:21:13    Date : 04/08/2017
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


Resistance R_getproperitiesofsum_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_getproperitiesofsum_19art1() code
oObj = MySumClass()
oGet = Get()
oObj:Num1 := 3
oObj:Num2 := 5
oGet:nNum1 := 7
oGet:nNum2 := 9
out = oGet:gSum()
MyOut := MSGBOX(oGet:getnSum,"mySum(object) ")
MyOut := MSGBOX(oGet:nNum1," nNum1")
MyOut := MSGBOX(oGet:nNum2," nNum2")
MyOut := MSGBOX(oGet:nSum," nSum")
Class MySumClass
Data Num1 init 0
Data Num2 init 0
Data nSum init 0
Method Sum2
EndClass
Method Sum2 Class MySumClass
self:nSum = self:Num1 + self:Num2
MyOut := MSGINFO(self:nSum,"Result ")
Return 0
Class Get
Data nNum1 init 0
Data nNum2 init 0
Data nSum init 0
Method gSum
Method getnNum1
Method getnNum2
Method getnSum
EndClass
Method gSum Class Get
self:nSum = self:nNum1 + self:nNum2
Return 0
Method getnNum1 Class Get
Return self:nNum1
Method getnNum2 Class Get
Return self:nNum2
Method getnSum Class Get
Return self:nSum


End Of Resistance

INIT PROCEDURE Init_getproperitiesofsum
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oObj of Class MySumClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oGet of Class Get",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","oObj.Num1 = 3",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","oObj.Num2 = 5",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","oGet.nNum1 = 7",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","oGet.nNum2 = 9",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","out = oGet.gSum()",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message oGet:getnSum Title 'mySum(object) ' Type: Message Box",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message oGet:nNum1 Title ' nNum1' Type: Message Box",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message oGet:nNum2 Title ' nNum2' Type: Message Box",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message oGet:nSum Title ' nSum' Type: Message Box",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MySumClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Data Num1 Init Value 0",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Data Num2 Init Value 0",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Data nSum Init Value 0",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum2",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum2 Class MySumClass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","self:nSum = self:Num1 + self:Num2",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message self:nSum Title 'Result ' Type: Message Info",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Get",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNum1 Init Value 0",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNum2 Init Value 0",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Data nSum Init Value 0",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method gSum",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method getnNum1",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method getnNum2",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method getnSum",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method gSum Class Get",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","self:nSum = self:nNum1 + self:nNum2",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method getnNum1 Class Get",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:nNum1)",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method getnNum2 Class Get",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:nNum2)",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method getnSum Class Get",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return self:nSum)",39,39)
Return
*-------------------------------------------------------------------*
