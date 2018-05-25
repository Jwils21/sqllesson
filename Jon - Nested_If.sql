Declare @statecode nvarchar(2);

set @statecode = 'In'

Declare @op1 int;
Declare @op2 int;

if @statecode ='OH' Begin
	set @op1 = 1000;
	set @op2 = 500;
	End
Else Begin
	if @statecode ='KY' Begin
		set @op1 = 900;
		set @op2 = 400;
	End
	Else begin
		if @statecode ='IN' Begin
			set @op1 = 950;
			set @op2 = 450;
		End
	End
End

select * from [order] o
	join Customer c on o.CustomerId = c.id
	where c.State = @statecode and
		o.Amount > @op2 and o.Amount < @op1

