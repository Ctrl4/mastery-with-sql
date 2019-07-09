-- Respuesta del LOCO
select count(*) as "total # EOM rentals"
from rental
where date_trunc('month', rental_date) + interval '1 month' - interval '1 day'
        = date_trunc('day', rental_date);



select title 
from film 
where 
  left(title, 1)=' ' 
  or right(title, 1)=' ';

-- Respuesta del LOCO
select title
from film
where length(title) - length(trim(title)) > 0;

-- Respuesta del loco
select
  customer_id,
  round(sum(date_part('epoch', return_date - rental_date)) / 3600) as hrs_rented
from rental
group by customer_id
order by hrs_rented desc
limit 3;



-- Respuesta del loco
select *
from generate_series(
  timestamptz '2019-01-01 17:00 UTC',
  timestamptz '2019-12-01 17:00 UTC',
  interval '1 month');


-- Respuesta del loco
select 
  first_name, length(first_name) - length(replace(first_name, 'A', '')) 
from customer 
order by 2 desc 


select sum(amount) as "total $"
from payment
where date_part('isodow', payment_date) in (6, 7);

