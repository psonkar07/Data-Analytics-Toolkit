use users;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    department VARCHAR(100)
);

INSERT INTO employees (id, name, city, department) VALUES 
(1, 'John Doe', 'New York', 'HR'),
(2, 'Jane Smith', 'Los Angeles', 'Finance'),
(3, 'Michael Johnson', 'Chicago', 'IT'),
(4, 'Emily Davis', 'Houston', 'Marketing'),
(5, 'David Wilson', 'Phoenix', 'HR'),
(6, 'Sophia Brown', 'Philadelphia', 'Finance'),
(7, 'Daniel Jones', 'San Antonio', 'IT'),
(8, 'Olivia Garcia', 'San Diego', 'Marketing'),
(9, 'James Miller', 'Dallas', 'HR'),
(10, 'Emma Martinez', 'San Jose', 'Finance');


CREATE TABLE department (
    id INT PRIMARY KEY,
    d_id INT,
    department VARCHAR(100)
);


INSERT INTO department (id, d_id, department) VALUES 
(1, 101, 'HR'),
(2, 102, 'Finance'),
(3, 103, 'IT'),
(4, 104, 'Marketing'),
(5, 105, 'Sales'),
(6, 106, 'Operations'),
(7, 107, 'Legal'),
(8, 108, 'Customer Support'),
(9, 109, 'Engineering'),
(10, 110, 'Research and Development');

select * from employees;
select * from department;

select * from employees cross join department;

select * from employees left join department on employees.id = department.id;
select * from employees left join department on (employees.id = department.id and employees.department = department.department);

select * from employees right join department on employees.id = department.id;
select * from employees right join department on (employees.id = department.id and employees.department = department.department);


select * from employees inner join department on employees.id = department.id;
select * from employees inner join department on (employees.id = department.id and employees.department = department.department);


select id as t1 , name as t2, city as t3 from employees union select id as t1, d_id as t2, department as t3 from department ;

select id as t1 , name as t2, city as t3 from employees union all select id as t1, d_id as t2, department as t3 from department ;

select id as t1 , name as t2, city as t3 from employees except select id as t1, d_id as t2, department as t3 from department ;

select id , department from employees intersect select id , department from department ;


select id , department from employees union all select id , department from department ;