use practice;
-- showing the data
SELECT * FROM data;

-- showing specific columns
select product_name ,  brand_name , rating , rating_count from practice.data;

-- showing specific columns in specific order
select product_name , rating_count , rating, discounted_price from data;

-- create new column with mathematical calculations 
select product_name , brand_name , marked_price , discounted_price, marked_price - discounted_price as discounted_amount from data;

-- create new column with mathematical calculations . Making rating_count *rating 
select product_name , rating_count , rating, rating_count *rating as rating_filter from data;

-- -- create new column with mathematical calculations . Making discount_percentage
select product_name , brand_name , marked_price , discounted_price, ROUND(((marked_price - discounted_price)/marked_price)*100) as discount_percentage from data;

-- finding UNIQUE values
select distinct(brand_name) from data;

-- adding Where clause
select * from data where True;

-- adding Distinct with where , UNIQUE Products by reebok
select distinct * from data where brand_tag = 'reebok';

-- products with multiple where clause , AND operator
select distinct * from data where brand_tag = 'mochi' and discounted_price >3000;

 -- multiple AND  operators
 select distinct * from data where (brand_tag = 'adidas') and (discounted_price >3000 and discounted_price < 5000);

-- with Between
select distinct * from data where brand_tag = 'mochi' and (discounted_price between 3000 and 5000);

-- more filters
select distinct * from data where brand_tag = 'biotique' and (discounted_price <2000) and rating > 4 ;

select distinct * from data where brand_tag = 'biotique' and (discounted_price between 500 and 2000) and rating > 4 and rating_count > 10 ;

-- using OR operator
select distinct * from data where (brand_tag = 'adidas' or brand_tag ='puma' )and (discounted_price between 5000 and 8000);

-- uding NOT operator
select distinct * from data where not (brand_tag = 'mochi' and brand_tag = 'adidas') and ( discounted_price between 3000 and 5000);

-- using IN 
select distinct * from data where brand_name in ('adidas' , 'puma') and (discounted_price between 3000 and 5000); 

-- using NOT in 
select distinct * from data where brand_name not in ('adidas' , 'puma') and (discounted_price between 3000 and 5000); 
