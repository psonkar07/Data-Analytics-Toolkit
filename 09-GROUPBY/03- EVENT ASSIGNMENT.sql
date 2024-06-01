USE PRACTICE;

# 1. Which product categories witness the highest sales during the year?
select product_tag, sum(rating_count) as 'sum_ratingcount' from data 
group by product_tag 
order by sum_ratingcount desc limit 1;

# 2. Which brand witness the highest sales during year?
select brand_tag , sum(rating_count) as 'sum_ratingcount' from data 
group by brand_tag 
order by sum_ratingcount desc limit 2; 


# 3. Which product categories of a specific brand witnessed maximum sales?
select brand_tag , product_tag , sum(rating_count) as 'sum_ratingcount' from data 
group by brand_tag , product_tag 
order by sum_ratingcount desc limit 10;

# 4. Which product is witnessed the maximum sales?
select product_name , brand_name, rating_count, discounted_price , product_link from data where rating_count >0 order by rating_count;


-- Merchant Specific
# 1. What is the average price point of products across different categories and brands?
select brand_name , product_tag , round(avg(discounted_price)) as 'avg_price' from data group by brand_name , product_tag order by round(avg(discounted_price))  desc limit 30 ;


# 2. How much discount should be offered on each product to maximize revenue and profit?
select distinct(brand_name) , product_tag , rating, rating_count,marked_price, discounted_price , (discounted_price * rating_count) as 'revenue' from data  where rating_count > 0 order by rating_count desc;
select distinct(brand_name) ,product_tag , rating, rating_count,(marked_price), (discounted_price) , (discounted_price * rating_count) as 'revenue', round(((marked_price - discounted_price)/marked_price )*100) as 'discounted_perc' from data  where rating_count > 0 order by revenue desc;


# 3. What is the average discount on tshirt we need to give?
select brand_name , product_tag , avg(discounted_price), ((marked_price - discounted_price)/marked_price)*100 as 'discount_perc' from data where product_tag = 'tshirts' group by brand_name order by discount_perc ;

# 4. What are the biggest brands in tshirt market?
select brand_name , product_tag, (discounted_price *rating_count) as 'revenue' from data where product_tag = 'tshirts' group by brand_name , revenue order by revenue desc limit 10;

# 5. How much market of tshirt is captured by roadster?
select brand_name, product_tag ,(discounted_price *rating_count) as 'revenue' from data where brand_name = 'roadster'  ;
select brand_name, product_tag ,(discounted_price *rating_count) as 'revenue' from data where brand_name = 'roadster'  ;
select count(distinct(product_tag)) from data where brand_name = 'roadster';
select distinct(product_tag) ,(discounted_price *rating_count) as 'revenue' from data where brand_name = 'roadster' order by revenue desc limit 10;
-- unique roadster products - 46
select count(distinct(brand_tag)) from data where product_tag = 'tshirts';
-- unique brands whose create tshirts  - 428
select count(distinct(product_tag)) from data ;
-- 331
select brand_name , count(distinct(product_tag)) from data group by brand_name;


# 6. How much market of tshirt is captured by top 5 tshirt brands?
select brand_name , count(distinct(product_tag)) from data  group by brand_name order by count(distinct(product_tag)) desc limit 5;
-- H&M - 63/331
-- MANGO- 49/331
-- Marks &spencer - 48/331
-- max - 47/ 331
-- roadster - 46/331



-- Company Specific | Event
# 1. What kind of content (videos, blogs, influencer engagement) will best resonate with the target audience?
# 2. Which products should be promoted on the homepage or through personalized recommendations?

-- Company Specific | Improvements
# 1.  Which products have the highest and lowest ratings and what insights can we glean from them?
select  brand_tag ,product_tag , rating , rating_count from data where rating_count > 0 order by rating desc ;