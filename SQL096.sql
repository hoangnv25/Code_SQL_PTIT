select
  unique_id,
  name
from Employees as e
left join EmployeeUNI as eu ON e.id = eu.id



