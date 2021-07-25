-- Link --> https://www.codewars.com/kata/5811597e9d278beb04000038

SELECT DATE(created_at) AS day,
       description,
       COUNT(DATE(created_at))
FROM events
WHERE name = 'trained'
GROUP BY DATE(created_at), description
ORDER BY DATE(created_at);
