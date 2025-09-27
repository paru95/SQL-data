--  aggerate function
use sakila;
select * from payment;
select sum(amount) from payment where round(amount);
select count(amount) from payment where round(amount);
select sum(amount) from payment where amount > 5;
select count(payment_id) from payment where payment_id < 555;
select count(address_id),count(address2),count(*) from address;
select max(amount), min(amount),sum(amount),count(amount), avg(amount) from payment;

select distinct amount from payment;
select distinct amount , payment_id from payment; -- all person have different payment id but the amount can repeat by another paymentid
select count(distinct amount), count(amount) from payment;
select count(distinct payment_id) , count(payment_id) from payment;
select  distinct year(payment_date) from payment;
select distinct year(payment_date) from payment where year(payment_date) = 2005;
select * from payment where year(payment_date) = 2005;

-- Q1. get the payment id and amount for year 2005
select payment_id , amount from payment where year(payment_date) = 2005;

-- Q2.get the count of unique customer who have done payemnt in month of june
select  count(distinct customer_id) from payment where month(payment_date) = 06;

-- Q3.get max amount , avg amount , diff betweem max and avg amount where the amount is greater than 2 dollar and year 2006
select max(amount),avg(amount) , max(amount) - avg(amount) from payment
where amount > 2 and year(payment_date) = 2006;


-- group by statement (group similar values )
-- when we use the group by only on column we given in select statement
-- group by -27
select count(payment_id) from payment where customer_id = 2;

-- group by -22
select count(payment_id) from payment where customer_id = 4;

-- group by -33
select count(payment_id) from payment where customer_id = 7;

select count(distinct payment_id) from payment where customer_id = 2;
select customer_id from payment group by customer_id; -- -In group by selected column can be used in  group by 
select customer_id, count(customer_id),sum(amount) from payment group by (customer_id);

-- diff between count(coloumn name ) and count(*)
-- count(coloumn name). -> it not include the missing value it means it skip the missing values
-- count(*) -> it will include the missing value (every row) it means it can't skip missing value

-- important notes --
-- diff between distinct and group by --
-- distinct -> help in to find the unique value from the table:
-- in distinct we cannot use aggregate function 
-- it is more time taking function
select distinct customer_id ,count(payment_id) 
from payment;  -- it will give error 
select customer_id, count(payment_id) from payment group by customer_id;  -- it will run proper


