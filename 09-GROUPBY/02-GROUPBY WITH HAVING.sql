USE PRACTICE;

-- Which product_category of any brand is sold the most?
select brand_tag, product_tag , sum(rating_count) as ' sum_ratingcount' , avg(discounted_price), avg(rating) from data 
group by brand_tag , product_tag
order by sum_ratingcount desc limit 20;



-- List top 5 brands which has sold most number of tshirts
select brand_tag, product_tag , sum(rating_count) as ' sum_ratingcount' , avg(discounted_price), round(avg(rating),2) from data 
group by brand_tag , product_tag having product_tag = 'tshirts'
order by sum_ratingcount desc limit 5;


-- List top 5 brands which has sold most number of jeans
select brand_tag, product_tag , sum(rating_count) as ' sum_ratingcount' , avg(discounted_price), round(avg(rating),2) from data 
group by brand_tag , product_tag having product_tag = 'jeans'
order by sum_ratingcount desc limit 5;


-- List top 5 brands which has sold most number of dresses
select brand_tag, product_tag , sum(rating_count) as ' sum_ratingcount' , avg(discounted_price), round(avg(rating),2) from data 
group by brand_tag , product_tag having product_tag = 'dresses'
order by sum_ratingcount desc limit 5;


-- Most popular product name listed in Myntra
select product_name , count(product_name) as 'count_product' from data 
group by product_name 
order by count_product desc limit 1;



-- Number of products sold for every rating (0 - 5)
select   rating , count(product_tag) as 'count_product' , sum(rating_count) as ' sum_ratingcount' from data
group by rating
order by count_product desc;



-- Number of products sold for every rating by nike
select   brand_tag, rating , count(product_tag) as 'count_product' , sum(rating_count) as ' sum_ratingcount'
from data 
group by brand_tag, rating having brand_tag ='nike'
order by count_product asc;



-- Number of products sold for every rating in tshirt category
select   product_tag, rating , count(product_tag) as 'count_product' , sum(rating_count) as ' sum_ratingcount' 
from data 
group by product_tag, rating having product_tag = 'tshirts' 
order by count_product asc;



-- Relation between price of the tshirt and its rating wrt to people rated
select product_tag ,rating, round(avg(discounted_price)) as 'avg_price' , round(avg(rating_count),2) as 'avg_ratingcount' 
from data 
where product_tag = 'tshirts' 
group by rating 
order by rating asc;
