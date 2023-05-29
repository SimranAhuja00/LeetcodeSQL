# Write your MySQL query statement below
# Table Activities:

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | sell_date   | date    |
# | product     | varchar |
# +-------------+---------+
# There is no primary key for this table, it may contain duplicates.
# Each row of this table contains the product name and the date it was sold in a market.

select 
sell_date, count(distinct product) as num_sold,
group_concat(distinct product) as products from Activities
group by sell_date;
