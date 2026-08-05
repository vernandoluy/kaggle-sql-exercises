-- Lesson 3 : Basic as and with
-- Source : Kaggle Learn
=========================================================================
-- Exercise 1
-- Objective : Listing avaiable table
tables = list(client.list_tables(dataset))
list_of_tables = [table.table_id for table in tables] 
print (list_of_tables)
=========================================================================
-- EXercise 2
-- Objective :  joining the id, body and owner_user_id columns from the posts_answers table for answers to "bigquery"-related questions.
SELECT
    a.id,
    a.body,
    a.owner_user_id
FROM
    `bigquery-public-data.stackoverflow.posts_answers` AS a
INNER JOIN
    `bigquery-public-data.stackoverflow.posts_questions` AS q
ON
    a.parent_id = q.id
WHERE
    q.tags LIKE '%bigquery%';
