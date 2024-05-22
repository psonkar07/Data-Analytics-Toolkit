create database if not exists employees;
use employees;
create table if not exists employees_details 
( employee_id int ,
employee_name varchar(50),
gender varchar(25),
Age int ,
city varchar(100));
select * from employees.employees_details;
