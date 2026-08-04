-- Lesson 1 : Basic SELECT
-- Source : Kaggle learn
-- Objective : Retrieve countries where pollution unit is 'ppm'
  
select country
from `bigquery-public-data.openaq.global_air_quality`
where unit = 'ppm'
