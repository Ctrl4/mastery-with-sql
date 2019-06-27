select distinct rating 
from film 
where rating is not null
order by rating;

select distinct date_part('hour', rental_date) as hr
from rental
order by hr;

select distinct rental_duration, rental_rate
from film
order by rental_duration;


/* Can you explain why the first query below works, but the second one, which simply adds the DISTINCT keyword, doesn't? (this is quite challenging) */

select first_name
from actor
order by last_name;

select distinct first_name
from actor
order by last_name;

/* En la primer consulta el order by utiliza la tabla entera ya que no hay ningun filtro aplicado, sin embargo cuando le aplicamos el distinct estamos limitando nuestro dataset a solamente los nombres distintos de esa tabla, y nada mas que los nombres. Ya que el select se ejecuta antes del order by no podemos ordenar por last_name ya que tecnicamente esa información no existe, gracias al distinct.*/


/* Respuesta del autor:
Solution:

In the second query, multiple rows of actors are combined in to a single row due to the use of DISTINCT. For example, there are two actors with the first name ADAM (ADAM HOPPER and ADAM GRANT), however after the SELECT DISTINCT clause has been processed, there is only one row with first name ADAM. Ordering then by last name is undefined - eg. In the case of ADAM, Postgres has no way to know which last name should be used (HOPPER or GRANT?). In general, avoid ordering by columns you haven't selected and you can sidestep complex situations like this.
*/
