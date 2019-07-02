select
  1.0 * sum(length) / count(*) as avg1, -- count exclude nulls
  1.0 * avg(length) as avg2 -- This is the real average counting those lengths that are null
from film;


select customer_id, 
  avg(return_date - rental_date) as "avg_rent_duration" 
from rental 
group by 1 order by 2 desc;

select customer_id
from payment
group by customer_id
having bool_and(amount > 2);


select rating, repeat('*', (count(*) / 10)::int) as "count/10"
from film
where rating is not null
group by rating;


select left(title,3) || repeat('*', length(title) - 3) as "Guess!" 
from film;



