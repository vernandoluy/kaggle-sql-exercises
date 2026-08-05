-- Lesson 3 : Basic Order By
-- Source : Kaggle Learn
=====================================================================================================================================================
-- Exercise 1  
-- Objective : Sorting in descending order the average value for each country in the dataset between the years 2010-2017, by indicator code

SELECT country_name,
avg(value) as avg_ed_spending_pct
FROM `bigquery-public-data.world_bank_intl_education.international_education`
where indicator_code = 'SE.XPD.TOTL.GD.ZS' and year between 2010 and 2017
GROUP BY country_name
ORDER BY avg_ed_spending_pct desc
=====================================================================================================================================================
-- Exercise 2  
-- Objective : selecting the indicator code and indicator name for all codes with at least 175 rows in the year 2016.

SELECT indicator_code, indicator_name, count (*) as num_rows
FROM `bigquery-public-data.world_bank_intl_education.international_education`
where year = 2016
GROUP BY indicator_code, indicator_name
having count(*) >= 175
ORDER BY num_rows desc
