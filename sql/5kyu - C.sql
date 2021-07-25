-- Link --> https://www.codewars.com/kata/58126aa90ea99769e7000119

CREATE EXTENSION tablefunc;

SELECT *
FROM CROSSTAB
(
   'SELECT A.name,
           B.detail,
           COUNT(*)    
    FROM products A
    INNER JOIN details B
    ON A.id = B.product_id
    GROUP BY A.name, B.detail
    ORDER BY A.name, B.detail'
) AS CT("name" text, "bad" bigint, "good" bigint, "ok" bigint);
