-- Lesson 2 : Basic GROUP BY with COUNT and HAVING FILTERING 
-- Source : Kaggle learn
-- Objective : Retrieving all authors with more than 10,000 posts as well as their post counts

select `by` as author, count (1) as NumPosts
FROM `bigquery-public-data.hacker_news.full`
Group By author
having count (1) > 10000


-- Objective : Filtering deleted comments
  
SELECT COUNT(*) AS deleted_comments
FROM `bigquery-public-data.hacker_news.full`
WHERE deleted = True
