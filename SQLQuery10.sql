select c.name, o.amount, 'A' as 'ABC'
from [order] o 
left join customer c
	on o.CustomerId=c.Id
where o.Amount>750
Union
select c.name, o.amount, 'B' as 'ABC'
from [order] o 
left join customer c
	on o.CustomerId=c.Id
where o.Amount<=750 and o.Amount>250
Union
select c.name, o.amount, 'C' as 'ABC'
from [order] o 
left join customer c
	on o.CustomerId=c.Id
where o.Amount<=250
order by amount desc