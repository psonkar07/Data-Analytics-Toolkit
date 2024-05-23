use gfg;
create table if not exists users
 (user_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(20),
    email VARCHAR(100));
    
    insert into users values 
    (1 , 'pratiksha' , 'sonkar' , '9834567897' , 'pratiksha@gmail.com'),
    (2 , 'amit' , 'singh' , '7686756453' , ' amit@gmail.com' ),
    (3 , 'bharti' , 'gupta' , '8876985443' , 'bharti@gmail.com'),
    (4 , 'prachi' , 'agarwal' , ' 6554546766' , 'prachi@gmail.com');
    select * from users;
    
    -- delete row based on user_id
    delete from users where user_id = 2;
    select * from users;

-- delete row based on name
delete from users where first_name ='prachi';
    select * from users;

-- delete rows based on phone_number
delete from users where phone_number <8999999999;
    select * from users;




 