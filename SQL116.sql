SELECT *
FROM Instructor
WHERE STR_TO_DATE(started_on, '%Y-%m-%d') >= CONCAT(YEAR(CURDATE()) - 20, '-01-01')
