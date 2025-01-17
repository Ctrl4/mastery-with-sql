select distinct rating,
  case rating
    when 'G' then 'General'
    when 'PG' then 'Parental Guidance Recommended'
    when 'PG-13' then 'Parents Strongly Cautioned'
    when 'R' then 'Restricted'
    when 'NC-17' then 'Adults Only' 
  end as "rating description"
from film
where rating is not null i
order by rating;


select rental_id, rental_date, return_date, 
  case 
    when return_date is null then 'Not Returned' 
  else 'Returned' end as return_status 
from rental 
order by return_date desc;

select country
from country
order by
  case country
    when 'Australia' then 0
    when 'United Kingdom' then 1
    when 'United States' then 2
    else 3
  end, country;



  
