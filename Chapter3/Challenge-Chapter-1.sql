select first_name, last_name, email 
from customer 
order by random() 
limit 5;


select rental_id, rental_date
from rental
where date_part('month', rental_date)=6 and date_part('year', rental_date)=2005;

select rental_id, rental_date
from rental
where rental_date between '2005-06-01 00:00:00' and '2005-06-30 23:59:59';

select rental_id, rental_date
from rental
where rental_date>='2005-06-01 00:00:00' and rental_date <= '2005-06-30 23:59:59';


select title, rental_rate, length, rental_rate / length as per_minute 
from film 
where length is not null and length != 0
order by per_minute desc
limit 5;


select count(*) 
from customer 
where first_name ilike '%a%a%';


select first_name, last_name, email
from customer
where email != (first_name || '.' || last_name || '@sakilacustomer.org')
