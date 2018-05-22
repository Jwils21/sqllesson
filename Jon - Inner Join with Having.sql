select Customer.Name,
	concat(Customer.City, ', ',Customer.State) as 'City/State',
	sum([order].Amount) as 'Total Sales',
	customer.IsCorpAcct,
	Customer.CreditLimit,
	customer.Active
from Customer
	inner join [Order] on Customer.Id = [order].CustomerId
group by customer.Name, concat(Customer.City, ', ',Customer.State), customer.IsCorpAcct, customer.CreditLimit, customer.Active, concat(Customer.City, ', ',Customer.State)
having sum([order].amount) >=1000
order by sum([order].Amount) desc;

