select Distinct num  as ConsecutiveNums 
from (
    SELECT
        id,
        num,
        LAG(num, 1) OVER (ORDER BY id) AS prev1,
        LAG(num, 2) OVER (ORDER BY id) AS prev2
    FROM Logs
) as t
where num = prev1
and num = prev2
order by num;
