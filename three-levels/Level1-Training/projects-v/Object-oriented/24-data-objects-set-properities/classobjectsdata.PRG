*---------------------------------------------------------------------------*
* Time : 08:06:43    Date : 04/08/2017
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


Resistance R_classobjectsdata_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_classobjectsdata_19art1() code
oShow = Summitions()
oShow:nNum1 := 10
oShow:nNum2 := 20
oShow:cTitle := "Result"
out = oShow:Show()
Class Summitions
Data nNum1 init 0
Data nNum2 init 0
Data nSum init 0
Data cTitle init 0
Method Show
EndClass
Method Show Class Summitions
self:nSum = self:nNum1 + self:nNum2
MyOut := MSGBOX(self:nSum,self:cTitle)
Return 0


End Of Resistance

INIT PROCEDURE Init_classobjectsdata
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oShow of Class Summitions",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","oShow.nNum1 = 10",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","oShow.nNum2 = 20",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","oShow.cTitle = 'Result'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","out = oShow.Show()",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Summitions",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNum1 Init Value 0",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNum2 Init Value 0",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Data nSum Init Value 0",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Data cTitle Init Value 0",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Show",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Show Class Summitions",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","self:nSum = self:nNum1 + self:nNum2",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message self:nSum Title self:cTitle Type: Message Box",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",16,16)
Return
*-------------------------------------------------------------------*
