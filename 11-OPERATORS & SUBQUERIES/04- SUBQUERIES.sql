USE SWIGGY;


-- 1. Which restaurant of abohar is visied by least number of people?
select *  from restaurants where  rating_count = (select min(rating_count) from restaurants ) and city = 'abohar';


-- 2. Which restaurant has generated maximum revenue all over india?
select * from restaurants where rating_count * cost  = (select max(rating_count *cost) as 'revenue' from restaurants);


-- 3. How many restaurants are having rating more than the average rating?
select count(*) from restaurants where rating > (select avg(rating) as avg_rating from restaurants);


-- 4. Which restaurant of Delhi has generated most revenue
select * from restaurants where city = 'delhi' and rating_count *cost = (select max(rating_count * cost) as 'revenue' from restaurants where city = 'delhi');


-- 5. Which restaurant of more than average cost of an restaurant in Delhi has generated most revenue
select * from restaurants where 
rating_count * cost = (select max(rating_count * cost) from restaurants where city = 'Delhi' 
						and cost > (select avg(cost) from restaurants where city = 'Delhi'))  and city = 'Delhi';

