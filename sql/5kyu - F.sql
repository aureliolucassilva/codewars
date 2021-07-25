-- Link --> https://www.codewars.com/kata/5817b124e7f4576fd00020a2

SELECT title 
FROM
(
  SELECT A.title,
       ARRAY_AGG(first_name || ' ' || last_name) AS actors_list
  FROM film A
  INNER JOIN film_actor B
  ON A.film_id = B.film_id
  INNER JOIN actor C
  ON B.actor_id = C.actor_id
  GROUP BY A.title
  HAVING 'Sidney Crowe' = ANY(ARRAY_AGG(first_name || ' ' || last_name)) 
  AND 'Salma Nolte' = ANY(ARRAY_AGG(first_name || ' ' || last_name))
) AS T1
ORDER BY title
