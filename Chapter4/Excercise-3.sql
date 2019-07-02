select 
  count (*) filter (where return_date - rental_date < interval '3 days')  as "lt 3 days",
  count (*) filter (where return_date - rental_date >= interval '3 days') as "gt 3 days",
  count(*) filter (where return_date is null) as "never returned" 
from rental;


select 
  case 
    when length between 0 and 59 then '0-1hrs' 
    when length between 60 and 119 then '1-2hrs' 
    when length between 120 and 179 then '2-3hrs' 
    else '3hrs+' end as "len", count(*) 
from film 
group by 1 
order by 1;


