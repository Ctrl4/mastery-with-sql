select count(customer_id) as customers, count(email) as "customers with email" 
from customer;


select
  count(*) as "# customers",
  count(email) as "# customers with email",
  100.0 * count(email) / count(*) as "% with email"
from customer;


select count(distinct customer_id) 
from payment;


select avg(return_date - rental_date) as "Avg rental duration" 
from rental;


select sum(amount) as total 
from payment;

