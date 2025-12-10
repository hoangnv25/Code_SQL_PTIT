SELECT 
  teacher_id,
  COUNT(DISTINCT subject_id) as cnt
FROM Teacher
GROUP BY teacher_id

Order by teacher_id

