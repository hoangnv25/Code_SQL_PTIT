SELECT e.name
FROM (
  SELECT 
    managerid,
    COUNT(*) AS cnt
  FROM Employee AS a
  GROUP BY managerid
  HAVING cnt >= 5
) as t 
inner join Employee as e ON t.managerid = e.id