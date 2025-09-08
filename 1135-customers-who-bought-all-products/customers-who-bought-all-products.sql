# Write your MySQL query statement below
Select Customer_id
From Customer
group by Customer_id
Having count(distinct product_key) = (select count(*) from product);
