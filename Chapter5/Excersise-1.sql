select 
  case when length 
    is not null then title || ' is ' || length || ' minutes' 
    else title || ' is unknown length' 
   end 
from film;

-- Respuesta del tipo
select
  title || ' is ' || coalesce(length || ' minutes', 'unknown length') as length_desc 
from film;
