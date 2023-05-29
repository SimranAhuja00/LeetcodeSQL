#Write your MySQL query statement below
# Table: Person

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | personId    | int     |
# | lastName    | varchar |
# | firstName   | varchar |
# +-------------+---------+
# personId is the primary key column for this table.
# This table contains information about the ID of some persons and their first and last names.
 

# Table: Address

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | addressId   | int     |
# | personId    | int     |
# | city        | varchar |
# | state       | varchar |
# +-------------+---------+
# addressId is the primary key column for this table.
# Each row of this table contains information about the city and state of one person with ID = PersonId

select FirstName, LastName, City, State
from Person P left join Address A
on P.PersonId = A.PersonId
