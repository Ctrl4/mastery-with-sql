select payment_id, payment_date 
from payment 
order by payment_date desc 
limit 3;


select title, length, rating
from film
where rating<>'R' or rating is null
order by length, title
limit 4;


select payment_id, amount, payment_date
from payment
where payment_date between '2007-01-01 00:00:00' and '2007-01-31 23:59:59'
order by payment_date desc
limit 3;

