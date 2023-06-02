# Table: Person

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | email       | varchar |
# +-------------+---------+
# id is the primary key column for this table.
# Each row of this table contains an email. The emails will not contain uppercase letters.
# Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id.
# Please write a DELETE statement and DO NOT write a SELECT statement.


Delete p1 from person p1, person p2
where p1.email = p2.email and p1.id > p2.id;
