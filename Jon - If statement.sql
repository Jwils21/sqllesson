Declare @NumStudents int;

Set @NumStudents=7

if @NumStudents=10 Begin
		print 'There are 10 students'
End Else Begin
		print concat('There are ', @numstudents, ' students')
End
print 'The end...'
s