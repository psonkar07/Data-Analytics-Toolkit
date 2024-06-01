use practice;

-- Finding the names of unique brands
select distinct(brand_name) from data;

-- Finding the number of unique brands
select count(distinct(brand_name)) from data;

-- Finding the number of products in each brands
select brand_tag, count(product_tag) from data group by brand_tag;

-- Finding the top 5 brand who has the most number of products | different product in their inventory
select brand_tag , count(product_tag) as 'count_product' from data 
group by brand_tag 
order by count_product  desc limit 5;

-- Finding the top 5 brand who sold the most number of products
select brand_tag , sum(rating_count) as 'sum_ratingcount' from data 
group by brand_tag 
order by sum_ratingcount desc limit 5;

-- Finding the top 5 most expensive brands based on their discounted price
select brand_tag , avg(discounted_price) as 'avg_dis_price' from data 
group by brand_tag 
order by avg_dis_price desc limit 5;



-- Finding the top 5 least expensive brands based on their discounted price
select brand_tag , avg(discounted_price) as 'avg_dis_price' from data 
group by brand_tag 
order by avg_dis_price asc limit 5;



-- Finding the top 10 best-selling product categories 
select product_tag , sum(rating_count) as ' sum_ratingcount' from data 
group by product_tag 
order by sum_ratingcount desc limit 10;


-- Finding the top 10 brands who gives maximum discount
select brand_tag , avg(((marked_price - discounted_price)/marked_price)*100) as 'discounted_perc' from data 
group by brand_tag 
order by discounted_perc desc limit 5;


-- Finding the top 5 most expensive product categories
select product_tag , avg(discounted_price) from data 
group by product_tag 
order by avg(discounted_price) desc limit 5; 

