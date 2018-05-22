select name as 'Customer', 
	concat(city,', ' ,state) as 'City/State'
from customer
where not ( customer.name like 'Saturn%' or customer.name like 'Jupiter%' or customer.name like 'Uranus%' or customer.name like 'Neptune%')
order by case when customer.name like 'Mercury%' then 1
				when customer.name like 'Venus%' then 2
				when customer.name like 'Earth%' then 3
				when customer.name like 'Mars%' then 4
				else 5
			end asc;