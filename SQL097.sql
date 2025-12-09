SELECT 
  machine_id,
  round(AVG(time), 3) as processing_time
FROM (
  SELECT
    machine_id,
    process_id,
    MAX(timestamp) - MIN(timestamp) as time
  
  FROM Activity
  GROUP BY machine_id, process_id
) as t
GROUP BY machine_id
