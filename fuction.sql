-- like operator (pattern to according data filter)
select * from actor where first_name = 'N';


-- (wildard character) --> zero or more character
select * from actor where first_name like 'N%';
select * from actor where first_name like '%S';
select * from actor where first_name like '%S';
select * from actor where first_name like 'S%T';
select * from actor where first_name like '%%E';         -- use for left character
select * from actor where first_name like 'E%%';         -- use for right character 
select * from actor where first_name like '%E%';         -- use for middle character
 
 



--  ( - ) --> exactly one character
select * from actor where first_name like 'E_';
select * from actor where first_name like 'N___';
select * from actor where first_name like 'N___%';
select * from actor where first_name like '_A';
select * from actor where first_name like '_A%';
select * from actor where first_name like '___k';
 
 
 
 -- Q1. get the actor id and first name where the first name last word will be 'TE'
 select actor_id , first_name from actor where first_name like '%TE';
 
 -- Q2. get the actor id and first name where 'NN' should be middle 
 select actor_id , first_name from actor where first_name like '_%NN%_';
 
 -- Q3. get the first name , last name where last name column the first word 'G' and second last are 'R'
 select first_name , last_name from actor where last_name like 'G%R_';
 
 -- Q4. get all user column information where first name will have minimum four character
 select * from actor where first_name like  '____%';
 
 -- Q5. get all column where actor id is from (2 to 90) and the the first name 'S' should be in middle 'a' sholud be second last character_length
select * from actor where actor_id between 2 and 90 and first_name like '_%S%A_';


-- function 
-- inbuiled function (row function)
 -- scaler function 1.(row function) 2. (multi row function)
 -- apply on each row and return the output for each row
 -- total character in each first_name
 
 
 -- use of concat (to cancat the two values)
 -- syntax: CONCAT(string1, string2, string3, ...)
SELECT first_name, CHAR_LENGTH(first_name), LOWER(first_name) FROM actor;
select first_name , last_name , concat(first_name,'  ' , first_name , '  ' , last_name) from actor;
select first_name , last_name , concat_ws('  ' , 'Mr.' , first_name , last_name ) from actor;

-- use of substr (to extract some data )
-- syntax: substr(first_name, -3, -2) 
select first_name , substr(first_name , 3) from actor;
select first_name , substr(first_name , 3  , 2) from actor;
select first_name , substr(first_name , -3 ) from actor;
select first_name , substr(first_name , -3 , -2) from actor;

 
 
 
 