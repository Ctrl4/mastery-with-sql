select 
  '2019-05-04 15:30'::timestamp at time zone 'America/New_York', 
  '2019-05-04 15:30'::timestamp at time zone 'EDT', 
  '2019-05-04 15:30'::timestamp at time zone '-4';

SOLUCION DEL LOCO
select
  timestamptz '2019-03-04 15:30 EST',
  timestamptz '2019-03-04 03:30PM -5',
  timestamptz '2019-03-04 03:30PM America/New_York';


select
  title,
  make_interval(rental_duration) as duration,
  make_interval(rental_duration + 1) as "duration + 1"
from
  film;

SOLUCION DEL LOCO
select
  title,
  cast(rental_duration || ' days' as interval)  as duration,
  cast(rental_duration || ' days' as interval) + interval '1 day'  as "duration + 1"
from film;

select
  date_trunc('month', payment_date) as "month",
  sum(amount) as total
from payment
group by "month"
order by "month";
