use practice;
-- Finding the most expensive product on myntra
select * from data order by discounted_price desc;
select * from data order by marked_price desc;

-- Finding the least expensive product on myntra
select * from data order by discounted_price asc;
select * from data order by marked_price asc;


-- Finding the top 5 most expensive product on myntra
select * from data order by discounted_price desc limit 5;
select product_name , discounted_price from data order by discounted_price desc limit 5;
select * from data order by rating*rating_count desc limit 5;

-- Top 5 products based on best rating | rating*rating count
select product_name , rating , rating_count , rating*rating_count as 'rating_filter' from data 
 order by rating*rating_count desc limit 5;

-- Finding the second most expensive product
select product_name , rating , rating_count , discounted_price from data order by discounted_price desc limit 1,1;



-- Finding the second least expensive product
select product_name , rating , rating_count , discounted_price from data order by discounted_price asc limit 1,1;



-- Finding the 10th most expensive product
select product_name , rating , rating_count , discounted_price from data  order by discounted_price desc limit 9,1;


-- Finding the worst rated product by nike
select product_name , rating , rating_count , rating*rating_count as 'rating_filter' from data 
where brand_tag = 'nike'
order by rating*rating_count asc limit 1 ;


-- Finding the worst rated product by nike & rating is not zero
select product_name , rating , rating_count , rating*rating_count as 'rating_filter' from data 
where brand_tag = 'nike' and rating != 0
order by rating*rating_count asc limit 1 ;

-- Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
select product_name , rating , rating_count , rating*rating_count as 'rating_filter' from data 
where brand_tag = 'nike' or brand_tag = 'adidas' and product_tag = 'tshirts'
order by rating*rating_count desc limit 10 ;


-- Worst rated 10 products based on the rating of 100 people atleast
select product_name , rating , rating_count ,brand_tag , product_tag,discounted_price,product_link  from data 
where rating_count > 100
order by rating asc limit 10 ;

-- 10 worst rated tshirts based on the rating of 100 people atleast
select product_name , rating , rating_count , brand_tag , product_tag,discounted_price,product_link   from data 
where rating_count > 100 and product_tag = 'tshirts'
order by rating asc limit 10 ;

-- Sort the products in alphaetical descending order based on their product_name and show the last 10 of them
select * from data 
order by product_name desc limit 10 ;

-- Finding the top 10 best rated tshirts from nike or adidas | rating*rating count
select product_name , rating , rating_count , rating*rating_count as 'rating_filter' from data 
where brand_tag = 'nike' or brand_tag = 'adidas' and product_tag = 'tshirts'
order by rating*rating_count desc limit 10 ;

-- Finding the list of tshirts from nike and adidas prices between 1000 and 1200 | Sort them based on ascending order of brand_name & price
select product_name , brand_name, rating , rating_count , discounted_price from data 
where brand_tag = 'nike' or brand_tag = 'adidas' and product_tag = 'tshirts' and (discounted_price between 1000 and 2000)
order by brand_name asc , discounted_price asc ;

select product_name , brand_name, rating , rating_count , discounted_price  from data 
where brand_tag = 'nike' or brand_tag = 'adidas' and product_tag = 'tshirts' and (discounted_price between 1000 and 2000) and rating > 0
order by discounted_price asc , brand_name asc ;