USE SWIGGY;
select * from restaurants;

-- create a view 
create view first as 
( select name, city, rating, rating_count as 'orders',
 cuisine, cost, rating_count * cost as 'revenue' from restaurants);
 select * from first;
 
 
 -- create a view for end_user
 create view user_view as
 (select name, city, rating, rating_count as 'orders',
 cuisine, cost from restaurants);
 select * from user_view;
 
 
 -- create a view of sweet dishes
 create view sweet_dishes as (select * from restaurants 
                              where cuisine in ('Sweets','Desserts','Ice Cream','Waffle','Ice Cream Cakes'));
 select * from sweet_dishes;                  
 
 
 --  Create a view of top 100 restaurants
 create view top_100 as (select * from restaurants order by rating_count desc limit 100);
 
 select * from top_100;
 
 
 -- Create a view of restaurant atleast 100 people visited
 create view peoplevisit_100 as ( select * from restaurants where rating_count >=100 );
 select * from peoplevisit_100;
 
 -- Create a view of top 1000 most expensive restaurants
 create view topexpensive_1000 as (select *  from restaurants order by cost asc limit 1000);
select * from topexpensive_1000;