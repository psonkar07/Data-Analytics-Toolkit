-- USE gfg;
-- drop table office_users;
create table office_users
(user_id int PRIMARY KEY  ,
user_name varchar(50) NOT NULL,
email varchar(100) NOT NULL);
create table office_orders 
( order_id int auto_increment unique,
user_id int  NOT NULL,
order_date datetime default current_timestamp ,
FOREIGN KEY (user_id) REFERENCES office_users(user_id));

INSERT INTO office_users values
(1 , 'akash' , 'akash@gmail.com'),
(2 , 'smriti', 'smriti@gmail.com'),
(3 , 'mohit' , 'mohit@gmail.com');
select * from office_users;

INSERT INTO office_orders values 
(101 , 1 , '2024-05-08 14:00'),
(102 , 2 , '2024-05-10 13:00'),
(103 , 3 , '2024-05-11 15:00');
select * from office_orders;






