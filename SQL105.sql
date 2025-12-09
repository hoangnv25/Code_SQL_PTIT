SELECT 
  i.username,
  t.dept,
  t.number,
  title                                           
FROM Instructor as i 
inner join Teaches as t ON i.username = t.username 
inner join Class as c ON c.number = t.number 
order by fname
limit 2


