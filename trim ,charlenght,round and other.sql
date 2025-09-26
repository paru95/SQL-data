use sakila;
select * from sakila.actor;
SELECT first_name, CONCAT('-', first_name) ,CHAR_LENGTH(first_name) ,SUBSTR(first_name, 2) FROM actor;

-- trim function
SELECT TRIM('   Hello World   ') ; -- remove extra space from both side 
SELECT LTRIM('   Hello World') ;   -- remove left space
SELECT RTRIM('Hello World   ') ;   -- remove right space
SELECT TRIM(BOTH '-' FROM '---Hello---') ;  -- both 'symbol' remove symbol from both side
SELECT TRIM(LEADING '-' FROM '---Hello') ;  -- remove symbol from left
SELECT TRIM(TRAILING '-' FROM 'Hello---')  ; -- remove symbol from right

-- char_lenght 
select char_lenght(' hey ');
-- replace
select first_name , replace(first_name, 'E' , '#') from actor;
select first_name , lpad(first_name, 5 , '@') from actor;
select first_name , rpad(first_name, 5 , '@') from actor;
 
-- numeric functions
-- 1. round
select round(11.4);   -- only the decimal part
select round(11.6 , 1);   -- same because it is only digit after point
select round(11.68 , 1);  -- it give the 11.7 because the value after six is greater than 5
select round(11.62 , 1);  -- it give 11.6 because 2 digit is less than 5 
select round(11.697 , 2);
select round(7.267 , -1);   -- only the interger part round off
select round(2.267 , -1);
select round(12.267 , -1);
select round(76.627 , -2);
select round(246.267 , -2);
select round(246.267 , -3);  -- round off  using the unite place , ten place , 100 place 


-- truncate () --> it  will give clear the digit after the index
SELECT MOD(10,2), FLOOR(6.999999), CEIL(4.00002);


-- other function
select mod(10 ,2) , floor(6.999999) , cell(4.00002);

-- date function [important] 
-- data par kaam karne ke liye 
select current_date(), current_time() , current_timestamp() , now();

-- adddate
select now() , adddate( now() , 40 );
select now() , adddate( now() , interval 2 month );  -- synatx of add year , month , day and you can substrate also 
-- (select now () adddate (now() , interval write day , month , year  and in substrate use -))
select now() , adddate( now() , interval -2 day );
select now() , adddate( now() , '02:00:00' );


-- year and month
select now() , year( now() ) , last_day( now());

-- extract
select now() , extract(day_minute from now());
select now() , extract(quarter from now());

select now() , date_format( now() , 'year is %y ,nmy month id %m');

-- remanider this things
-- adddate , now , curtime , extract , yer , month , date_format


use sakila;
select payment_date , year(payment_date) , extract(month from payment_date) ,
date_format(payment_date ,'hour of shopping is %h' ),
datediff(payment_date , now() ) from payment;   -- datediff find the date difference from now to date of payment


