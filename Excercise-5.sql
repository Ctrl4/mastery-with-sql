select first_name, last_name
from customer
where email is not null
order by last_name desc;


select country_id, city
from city
order by country_id asc, city asc;

select first_name || ' ' || last_name as full_name, length(fistname || ' ' || last_name) as len
from actor
order by len desc;


-- Describe the difference between ORDER BY x, y DESC and ORDER BY x DESC, y DESC (where x and y are columns in some imaginary table you're querying)
-- Answer: ORDER BY x, y DESC x will be ordered by the default order value (if it isnt changed it will be ascending) and then y will be ordered descending
-- in ORDER BY x DESC, y DESC first x will be ordered descending and then y will be ordered descending.



