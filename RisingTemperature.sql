# Table: Weather

# +---------------+---------+
# | Column Name   | Type    |
# +---------------+---------+
# | id            | int     |
# | recordDate    | date    |
# | temperature   | int     |
# +---------------+---------+
# id is the primary key for this table.
# This table contains information about the temperature on a certain day.
 

# Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

SELECT w1.id
FROM Weather AS w1 , Weather AS w2
WHERE w1.Temperature > w2.Temperature AND DATEDIFF(w1.recordDate , w2.recordDate) = 1
