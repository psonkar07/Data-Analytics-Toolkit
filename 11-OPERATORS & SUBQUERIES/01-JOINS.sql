
DROP DATABASE IF EXISTS users;
CREATE DATABASE users;

CREATE TABLE IF NOT EXISTS users.users_2021  (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2022  (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2023  (UserID INT PRIMARY KEY, Name VARCHAR(50));

INSERT INTO users.users_2021 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Laura'), (7, 'Prakash');
INSERT INTO users.users_2022 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Laura'), (3, 'Charlie'), (4, 'Grace');
INSERT INTO users.users_2023 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Laura'), (3, 'Charlie'), (4, 'Grace'), (5, 'Henry');

select * from users.users_2021;
select * from users.users_2022;
select * from users.users_2023; 
use users;
select * from users_2021 inner join users_2022 on users_2021.UserID = users_2022.UserID;
select users_2021.UserID , users_2021.Name from users_2021 inner join users_2022 on users_2021.UserID = users_2022.UserID;

select * from users_2022 inner join users_2023 on users_2022.UserID = users_2023.UserID;
select users_2022.UserID , users_2023.Name from users_2022 inner join users_2023 on users_2022.UserID = users_2023.UserID;
use users;
select UserID , Name from users_2021 union select UserID , Name from users_2022;
select UserID , Name from users_2021 union all select UserID , Name from users_2022;
select UserID , Name from users_2021 except select UserID , Name from users_2022;
select UserID , Name from users_2023 except select UserID , Name from users_2022;
select UserID , Name from users_2021 intersect select UserID , Name from users_2022;
select UserID , Name from users_2022 intersect select UserID , Name from users_2023;
