select 
  t.username,
  dept,
  number
from Instructor as i
inner join Teaches as t ON t.username = i.username 
ORDER BY lname desc
LIMIT 2