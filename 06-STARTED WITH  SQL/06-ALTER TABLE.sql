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

-- ADD NEW COLUMN
ALTER TABLE gfg.users
add column phone_no varchar(15);
select * from gfg.users;


-- modify existing constraint
alter table gfg.users
modify column city varchar(100) NOT NULL ;
select * from gfg.users;


-- CHANGE COLUMN NAME
ALTER TABLE gfg.users
change column city location varchar(100);
select * from gfg.users;


-- set default value
ALTER TABLE gfg.users
ALTER COLUMN age SET DEFAULT 20;
select * from gfg.users;

-- DROP COLUMN
ALTER TABLE gfg.users
DROP COLUMN phone_no;
select * from gfg.users;
