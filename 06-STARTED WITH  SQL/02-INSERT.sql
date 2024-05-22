create database if not exists employees;
use employees;
create table if not exists employees_details 
( employee_id int ,
employee_name varchar(50),
gender varchar(25),
Age int ,
city varchar(100));
select * from employees.employees_details;
INSERT INTO employees_details VALUES ( 1 , 'ashish' , 'male' , 24 , 'noida' );
INSERT INTO employees_details VALUES ( 2 , 'pratiksha' , 'female' , 24 , 'noida' );
INSERT INTO employees_details VALUES ( 3 , 'amogh' , 'male' , 26 , 'delhi' );
INSERT INTO employees_details (employee_id, employee_name , gender , age ,city) VALUES ( 4 , 'satyam' , 'male' , 25 , 'ghaziabad' );
INSERT INTO employees_details (employee_name, employee_id , gender , age ,city) VALUES ('mohit' , 5 , 'male' , 25 , 'dehradun' );

