select Customer.Name as 'Customer Name', 
	avg([order].Amount) as 'Order Amt', 
	concat(Customer.City, ', ', Customer.State) as 'City/State', 
	Customer.CreditLimit
from Customer
	Inner Join [order] on Customer.id=[Order].CustomerId
where Customer.CreditLimit>250000 and CreditLimit<=500000
group by Customer.Name, concat(Customer.City, ', ', Customer.State), Customer.CreditLimit
order by Customer.Name desc;