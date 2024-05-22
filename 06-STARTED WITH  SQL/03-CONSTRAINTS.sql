create database if not exists gfg;
use gfg;
create table if not exists users 
( user_id int PRIMARY KEY,
user_name varchar(50) NOT NULL,
email varchar(100) NOT NULL UNIQUE,
Age int ,
city varchar(100),
status boolean );
select * from gfg.users;
INSERT INTO users VALUES ( 1 , 'USER1' , 'USER1@EXAMPLE.COM' , 24 , 'noida', 1);
INSERT INTO users VALUES ( 2 , 'USER2' , 'USER2@EXAMPLE.COM' , 25 , 'meerut', 1),
 ( 3 , 'USER3' , 'USER3@EXAMPLE.COM' , 26 , 'delhi',0);



