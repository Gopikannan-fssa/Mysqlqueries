USE store;

SHOW tables;

SELECT *

FROM customers;

SELECT *

FROM customers
ORDER BY first_name;

SELECT *

FROM customers
ORDER BY first_name DESC;


SELECT 1,2;
SELECT 1+2;
SELECT 100 -50/2;
SELECT 100-50/2 AS value;
SELECT 100 -50/2 'answer value';


use store;
SELECT *
FROM customers;


SELECT first_name,last_name,points
FROM customers;

/*
Syntax of SELECT satatements;
SELECT <column_1>,<column_2>>,....,<column_n>
FROM <table_name>;

SELECT* --all columns of the table 
FROM <table_anem>;


*/

SELECT first_name,last_name,points,points +10 AS 'newpoints'
FROM customers;




SELECT 171*214+625;
USE exercise_hr;
SELECT first_name AS 'firstname',last_name AS 'lastname'
FROM employees;

SELECT first_name,last_name,salary,salary * 15/100
FROM employees;

SELECT DISTINCT department_id
FROm employees;

USE store;
SELECT*
FROM customers
WHERE state ='FL';

-- where is used to take specific keywords from the table and shopw the values
SELECT*
FROM customers
WHERE points >3000;

SELECT*
FROM customers
WHERE birth_date>'1990-01-01';

SELECT *
FROM customers
WHERE state !='FL';

SELECT *
FROM customers
WHERE points >3000 AND birth_date >'1990-01-01';

SELECT *
FROM customers
WHERE points >3000 OR birth_date >'1990-01-01';

SELECT *
FROM customers
WHERE birth_date>1889 OR( points >1000 AND city='VA');

-- born after 1999 AND poinits> 1000 OR live in virginia (VA)
-- AND
-- OR
-- NOR

SELECT *
FROM customers
WHERE (birth_date > '1999-01-01' AND points >'1000')OR state = 'VA';

USe exercise_hr;
SELECT *
FROM employees;
-- 1st qn
SELECT  first_name,last_name,hire_date 
FROM employees ;

-- 2nd 
use exercise_hr;
SELECT first_name,last_name,salary
From employees
where NOT (salary >=10000 and salary<=15000);


use store;
select *
FROM customers 
limit 3;


-- top 3 loyal customers
select *
FROM customers 
order by points desc
limit 3;

EXPLAIN
SELECT*
FROM customers;


CREATE DATABASE IF NOT EXISTS project;

USE project;


CREATE TABLE if not exists user (
column1 COLUMN1_DATATYPE(size) CONSTRAINTS,
column2 COLUMN2_DATATYPE(size) CONSTRAINTS,
);


CREATE TABLE IF NOT EXISTS user (
username VARCHAR(50) PRIMARY KEY,
password VARCHAR(50),
dob DATE,
phone VARCHAR(20),
email VARCHAR(100),
first_name VARCHAR(50),
last_name VARCHAR(50)
);

DESCRIBE user;
USe user;
-- Add a new column 'whatsapp_no' with datatype int



-- Update the 'whatsapp_no' column datatype from int to varchar(20)



-- Delete the 'whatsapp_no' column



-- rename the 'dob' column to 'date_of_birth'


use exercise_hr;

SELECT *
from employees;

SELECT e.department_id,COUNT(*) AS "Count of employees"
FROM employees AS e INNER JOIN departments AS d
ON e.department_id =d.department_id
group by department_id ;


SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;




USE store;

SHOW tables;

SELECT *

FROM customers;

SELECT *

FROM customers
ORDER BY first_name;

SELECT *

FROM customers
ORDER BY first_name DESC;

SELECT 1,2;
SELECT 1+2;
SELECT 100 -50/2;
SELECT 100-50/2 AS value;
SELECT 100 -50/2 'answer value';


use store;
SELECT *
FROM customers;


SELECT first_name,last_name,points
FROM customers;

/*
Syntax of SELECT satatements;
SELECT <column_1>,<column_2>>,....,<column_n>
FROM <table_name>;

SELECT* --all columns of the table 
FROM <table_anem>;


*/

SELECT first_name,last_name,points,points +10 AS 'newpoints'
FROM customers;




SELECT 171*214+625;
USE exercise_hr;
SELECT first_name AS 'firstname',last_name AS 'lastname'
FROM employees;

SELECT first_name,last_name,salary,salary * 15/100
FROM employees;

SELECT DISTINCT department_id
FROm employees;

USE store;
SELECT*
FROM customers
WHERE state ='FL';

-- where is used to take specific keywords from the table and shopw the values
SELECT*
FROM customers
WHERE points >3000;

SELECT*
FROM customers
WHERE birth_date>'1990-01-01';

SELECT *
FROM customers
WHERE state !='FL';

SELECT *
FROM customers
WHERE points >3000 AND birth_date >'1990-01-01';

SELECT *
FROM customers
WHERE points >3000 OR birth_date >'1990-01-01';

SELECT *
FROM customers
WHERE birth_date>1889 OR( points >1000 AND city='VA');

-- born after 1999 AND poinits> 1000 OR live in virginia (VA)
-- AND
-- OR
-- NOR

SELECT *
FROM customers
WHERE (birth_date > '1999-01-01' AND points >'1000')OR state = 'VA';

USe exercise_hr;
SELECT *
FROM employees;
-- 1st qn
SELECT  first_name,last_name,hire_date 
FROM employees ;

-- 2nd 
use exercise_hr;
SELECT first_name,last_name,salary
From employees
where NOT (salary >=10000 and salary<=15000);


use store;
select *
FROM customers 
limit 3;


-- top 3 loyal customers
select *
FROM customers 
order by points desc
limit 3;

EXPLAIN
SELECT*
FROM customers;


CREATE TABLE tablename (
column1 COLUMN1_DATATYPE(size) CONSTRAINTS,
column2 COLUMN2_DATATYPE(size) CONSTRAINTS,
);

CREATE TABLE user (
username VARCHAR(50) PRIMARY KEY,
password VARCHAR(50),
dob DATE,
phone VARCHAR(20),
email VARCHAR(100),
first_name VARCHAR(50),
last_name VARCHAR(50)
);