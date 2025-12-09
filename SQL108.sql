select 
  username,
  t.dept,
  t.number
from Class as c 
inner join Teaches as t ON t.number = c.number 
where username = "levy" OR username = "djw"