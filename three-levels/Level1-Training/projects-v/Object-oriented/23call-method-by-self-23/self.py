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

