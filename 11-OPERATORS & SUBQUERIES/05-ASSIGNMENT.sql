USE SWIGGY;

select * from restaurants;

-- 1. Which restaurant of abohar is visied by least number of people?
select min(rating_count) from restaurants where city = 'abohar';
select *  from restaurants where  rating_count = (select min(rating_count) from restaurants ) and city = 'abohar';


-- 2. Which restaurant has generated maximum revenue all over india?
select * from restaurants where rating_count * cost  = (select max(rating_count *cost) as 'revenue' from restaurants);


-- 3. How many restaurants are having rating more than the average rating?
select count(*) from restaurants where rating > (select avg(rating) as avg_rating from restaurants);


-- 4. Which restaurant of Delhi has generated most revenue?
select * from restaurants where city = 'delhi' and rating_count *cost = (select max(rating_count * cost) as 'revenue' from restaurants where city = 'delhi');


-- 5. Which restaurant chain has maximum number of restaurants?
select name , count(name) from restaurants group by name order by count(name) desc limit 1;


-- 6. Which restaurant chain has generated maximum revenue?
select name , sum(rating_count * cost) as 'revenue' from restaurants
group by name order by sum(rating_count*cost) desc limit 1;

-- 7. Which city has maximum number of restaurants?
SELECT city, COUNT(*) AS restaurant_count
FROM restaurants
GROUP BY city
ORDER BY restaurant_count DESC
LIMIT 1;


-- 8. Which city has generated maximum revenue all over india?
SELECT city, SUM(cost * rating_count) AS total_revenue
FROM restaurants
GROUP BY city
ORDER BY total_revenue DESC
LIMIT 1;


-- 9. List 10 least expensive cuisines?
 select  cuisine ,avg(cost) as 'cost' from restaurants group by cuisine order by cost asc limit 10;



-- 10. List 10 most expensive cuisines?
select   cuisine ,avg(cost) as 'cost' from restaurants group by cuisine order by cost desc limit 10;



-- 11. What is the city is having Biryani as most popular cuisine
SELECT city, COUNT(*) AS biryani_count
FROM restaurants
WHERE cuisine = 'Biryani'
GROUP BY city
ORDER BY biryani_count DESC
LIMIT 1;



-- 12. List top 10 unique restaurants with unique name only thorughout the dataset as per generate maximum revenue (Single restaurant with that name)
select name, sum(cost * rating_count) as 'revenue' from restaurants 
group by name having count(name) = 1
order by revenue desc limit 10;