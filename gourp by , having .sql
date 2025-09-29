-- group by
use sakila;
select * from payment;

select count(*),count(customer_id) from payment;

-- sum , avg , max , min

select count(customer_id) from payment where customer_id = 3;

select customer_id , sum(amount) from payment group by customer_id;

select customer_id , sum(amount),count(customer_id) from payment group by customer_id;

select payment_id , count(*) from payment group by payment_id;

select customer_id , count(customer_id) from payment where customer_id > 3 group by customer_id;

select customer_id , count(customer_id) from payment where count(customer_id) > 30 group by customer_id; -- it will give error
-- (kabhi bhi where condition aggergate function pe nhi chalti
-- reason : it filter the data not apply on aggregate (apply where function data present in table)
-- In case you filter the data based on aggregate function use having clause


-- we use having on aggegate function to filter the data and having use after the group by
select customer_id , count(customer_id) from payment group by customer_id having count(customer_id) > 30 ; 


select amount , count(*) , sum(amount) from payment group by amount;

-- to filter the amount that are greater than 2 dollar
select amount , count(*) , sum(amount) from payment where amount > 2 group by amount;


-- having use on aggregate function and we use both having and where
select amount , count(*) , sum(amount) from payment where amount > 2 group by amount having count(*) > 3000;


-- use alias to change the name of columns we use (as) command
select amount , count(*) as totalcount , sum(amount) from payment where amount > 2 group by amount having totalcount > 3000;


-- we are changing only the table column name not data
select amount , amount+5 as newamount from payment; 

-- Q1. get the staff_id and total no customer served by each staff
select staff_id , sum(customer_id) from payment group by staff_id ;


-- Q2. get the total amount and the no. of payment done for each month
select sum(amount) , count(payment_id),month(payment_date) from payment group by month(payment_date);

-- Q3. get the amount and  no. of unique customer who have done the payment for each amount 
select amount , count(distinct customer_id),count( customer_id) from payment group by amount;

-- Q4. get the no. of transaction achieve for each amount for year 2005 where the no. of transaction should grateter than 15
select amount, count(payment_id) from payment where year(payment_date) = 2005  group by amount having count(payment_id) > 15;
























