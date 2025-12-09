select id
From 
  (
  select
  id,
  recordDate,
  temperature,
  LAG (temperature, 1) OVER (ORDER BY id) as prev
from Weather
  ) as t
where temperature > prev



