show databases;  -- will show all the databases in mysql

use sakila;     -- use sakilas as a databases

-- show table to see all tables
show tables;

-- select statement(DQL)* access all coloumn
select * from actor;

describe actor;      -- will give colunm info )(coloumn , datatypes , relationship and more)

select actor_id , first_name from actor;       -- selesct ststement table it can be in any case format

select actor_id , first_name , 
actor_id , last_name
from actor;

-- don't create new column in orignal data
select actor_id,first_name,actor_id*5 from actor;

-- to filter rows
select * from actor where actor_id = 2;


select * from actor where first_name = 'aman';
select * from actor where first_name = 'NICK';      -- data should be case sensetive

select * from actor where last_name = 'DAVIS';

select actor_id , last_name , first_name from actor where last_name = 'DAVIS';


-- both are same 
select * from actor where actor_id != 5;   
select * from actor where actor_id <> 5; 

select * from actor where first_name = 'NICK' and actor_id = 44;

select * from actor where first_name = 'NICK' or actor_id = 46;

select * from actor where first_name = 'NICK' or actor_id != 46;

select * from actor where actor_id > 2 and actor_id < 6;

select * from actor where actor_id between 2 and 6;      -- lower to higher ( not higher to lower limit)

select * from actor where actor_id not between 2 and 6;  
 
 
 -- both are same 
 
select * from actor where actor_id = 2 or actor_id = 8 or actor_id = 19;

select * from actor where actor_id = 2 or actor_id in (2,8,19);

select * from actor where first_name in ('NICK' , 'ED' , 'DAVIS');


-- Q1. from the actor get the first name actor id where 'guiness'
SELECT actor_id, first_name FROM actor WHERE last_name = 'Guiness';

-- Q2. get the actor id and first name where the actor id from value 3 to 18 and the name should not be ed
SELECT actor_id, first_name FROM actor WHERE actor_id BETWEEN 3 AND 18 AND first_name != 'ED';


-- Q3. get the last_name , actor_id , first_name where the first_name is nick and grace
SELECT last_name, actor_id, first_name FROM actor WHERE first_name = 'NICK' OR first_name = 'GRACE';

-- Q4. get all the columns where the actorid is from 2 to 6 or actor id > 5
select * from actor where actor_id between 2 and 6 or actor_id > 5;








 













