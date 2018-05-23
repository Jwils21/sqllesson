Select c.Name, 
		concat(c.City, ', ' ,c.State),
		format(o.Amount, 'C') as amount,
		format(o.Date, 'D'),
		c.IsCorpAcct as 'Corp?',
		format(c.CreditLimit, 'C') as 'Credit Limit'
From Customer c
	join [Order] o
		on o.CustomerId = c.Id
order by o.amount desc;
