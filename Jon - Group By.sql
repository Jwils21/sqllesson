select customer.State,
		sum([order].amount) as "Total Sales"
from customer
	join [order]
		on customer.Id = [order].CustomerId
group by customer.State
having sum([order].amount)>1000;