select actor_id, count(*) as num_films
from film_actor
group by actor_id;


select customer_id
from rental
group by customer_id
having count(*) > 40;

select
  date_part('year', payment_date) as year,
  date_part('month', payment_date) as month,
  staff_id,
  count(*) as num_payments,
  sum(amount) as payment_total,
  avg(amount) as avg_payment_amount
from payment
group by
  date_part('year', payment_date),
  date_part('month', payment_date),
  staff_id
order by year, month, staff_id;
