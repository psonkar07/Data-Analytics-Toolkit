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
    
    -- update the username user_id = 2
    update users set first_name = 'jyoti' where user_id = 2;
        select * from users;
 
 -- update multiple
 update users set last_name = 'gupta' , phone_number =  5566344556  where user_id = 2 ;
     select * from users;

update users set last_name = ' '  where user_id = 4;
    select * from users;




 