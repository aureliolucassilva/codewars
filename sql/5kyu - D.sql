CREATE VIEW members_approved_for_voucher AS
WITH department_revenue AS
(
    SELECT B.id AS department_id,
           SUM(C.price) AS total_revenue
    FROM sales A
    INNER JOIN departments B
    ON A.department_id = B.id
    INNER JOIN products C
    ON A.product_id = C.id
    GROUP BY B.id
    HAVING SUM(C.price) > 10000
)

SELECT D.id,
       D.name,
       D.email,
       SUM(C.price) AS total_spending
FROM sales A
INNER JOIN products C
ON A.product_id = C.id
INNER JOIN members D
ON A.member_id = D.id
WHERE A.department_id IN (SELECT department_id FROM department_revenue)
GROUP BY D.id
HAVING SUM(C.price) > 1000
ORDER BY D.id;

SELECT * FROM members_approved_for_voucher;
