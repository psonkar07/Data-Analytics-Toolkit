use users;

create table userdetails 
( user_id int primary key ,
user_name varchar (50),
email varchar (150),
phone_number varchar (100),
city varchar (100)
);
select * from userdetails;

create table transaction 
( user_id int ,
transaction_id varchar(200),
transaction_amount int);

select * from transaction ;


create table orders 
( transaction_id varchar(200) primary key,
order_id varchar(200),
order_date date ,
order_details varchar(300)
);
select * from orders;


insert into userdetails values ( 1, 'Pratiksha' , 'pratiksha@gmail.com' , '1234343434' , 'Noida'),
( 2, 'amogh' , 'amogh@gmail.com' , '4545678788' , 'delhi'),
( 3, 'prashant' ,'pranshant@gmail.com' , '6765456787' , 'chandigarh'),
( 4, 'ashish' , 'ashish@gmail.com' , '7015234565' , 'noida'),
( 5, 'mohit' , 'mohit@gmail.com' , '6576876543' , 'dehradun'),
( 6 , 'satyam' , 'satyam@gmail.com' , '8776546798', 'faridabad');


insert into transaction values ( 1 , '1001', 2300),
( 2, '1002', 3400),
( 3 , '1003' , 1200),
( 4 , '1004' , 3000),
( 5, '1005' , 2200);

insert into orders values ( '1001' , 'AA223422' , '2023-04-05' , 'cold coffee , sandwich'),
( '1003' , 'AA456478' , '2023-04-27', 'veg sandwich , coffee'),
( '1002' , 'AB232345' , '2023-05-07' , 'golden corn pizza '),
('1004' , 'AB456799' , '2023-06-06' , ' veg taco, cold drink'),
( '1005' , ' AC239876' , '2023-08-07' , 'chocolate flavour ice cream tub'); 

select * from orders;



-- left join , Userdetails & Transaction 
select * from userdetails left join transaction on userdetails.user_id = transaction.user_id;

-- left join , Transaction & Orders 
select * from transaction left join orders on transaction.transaction_id = orders.transaction_id;

-- left join , Userdetails , Transaction & Orders 
select * from userdetails left join transaction on userdetails.user_id = transaction.user_id 
left join orders on transaction.transaction_id = orders.transaction_id;

-- left join | select specific columns | Userdetails , Transaction & Orders 
select userdetails.user_id , userdetails.user_name , userdetails.email, transaction.transaction_id , orders.order_id , orders.order_date 
from userdetails left join transaction on userdetails.user_id = transaction.user_id 
left join orders on transaction.transaction_id = orders.transaction_id;




