-- create database if not exists gfg;
-- use gfg;
-- DROP TABLE users;
create table if not exists users 
(join_date datetime default current_timestamp ,
 user_id int PRIMARY KEY,
user_name varchar(50) NOT NULL,
email varchar(100) NOT NULL UNIQUE,
Age int check (age>=18) ,
city varchar(100),
status boolean default true );
select * from gfg.users;
INSERT INTO users VALUES (current_timestamp, 1 , 'USER1' , 'USER1@EXAMPLE.COM' , 24 , 'city1', true);
INSERT INTO users VALUES (current_timestamp, 2 , 'USER2' , 'USER2@EXAMPLE.COM' , 25 , 'city2', true);
INSERT INTO users (user_id , user_name, email, age, city) VALUES (3 , 'USER3' , 'USER3@EXAMPLE.COM' , 26 ,'city3');