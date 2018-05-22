Select Customer.name as 'Customer Name', [order].Date as 'Transaction Date', [Order].Amount,Concat(customer.City, ', ',customer.State) as 'City/State'
from [order]
inner join customer on [order].CustomerId=Customer.Id
where Date>Convert(datetime, '2017-06-25' ) and amount>200
order by Name desc;