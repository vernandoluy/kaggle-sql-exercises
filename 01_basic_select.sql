-- Lesson 1
-- Kaggle basic learn SELECT
-- Objective: Retrieve countries where pollution unit is 'ppm'
  
select country
from `bigquery-public-data.openaq.global_air_quality`
where unit = 'ppm'
