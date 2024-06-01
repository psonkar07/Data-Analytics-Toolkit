use practice;

-- 1. Finding the names of unique brands
select distinct(brand_name) from data ;

-- 2. Finding the number of unique brands
select count(distinct(brand_name)) from data ;

-- 3. Finding the number of products in each brands
select brand_tag , count(product_tag) as 'product_count' from data group by brand_tag ;

-- 4. Finding the top 5 brand who has the most number of products | different product in their inventory
select brand_tag , count(product_tag) as 'product_count' from data 
group by brand_tag order by product_count desc limit 5;


-- 5. Finding the top 5 brand who sold the most number of products
select brand_name , sum(rating_count) as 'sum_ratingcount' from data 
group by brand_name 
order by sum_ratingcount desc limit 5;

-- 6. Finding the top 5 most expensive brands
select brand_name , avg(discounted_price) as 'avg_price' from data  
group by brand_name order by avg_price desc limit 5;

-- 7. Finding the top 5 least expensive brands
select brand_name , avg(discounted_price) as 'avg_price' from data  
group by brand_name order by avg_price asc limit 5;


-- 8. Finding the top 10 best-selling product categories 
select product_tag , avg(discounted_price) as 'avg_price' from data 
group by product_tag order by avg_price desc limit 5;

-- 9. Finding the top 10 brands who gives maximum discount
select brand_name ,avg(marked_price), avg(discounted_price) , 
round(((marked_price - discounted_price)/marked_price)*100) as 'discounted_percent' from data 
group by brand_name , discounted_percent 
order by discounted_percent desc limit 10;

-- 10. Finding the top 5 most expensive product categories
select product_tag , avg(discounted_price) as 'avg_price' from data 
group by product_tag 
order by avg_price desc limit 5;