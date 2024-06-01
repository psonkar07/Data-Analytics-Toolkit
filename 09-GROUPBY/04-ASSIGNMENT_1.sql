use practice;

# 1. Finding the most expensive product on myntra
select product_tag , avg(discounted_price) as 'avg_dis_price' from data 
group by product_tag 
order by avg_dis_price desc limit 1;

# 2. Finding the least expensive product on myntra
select product_tag , avg(discounted_price) as 'avg_dis_price' from data 
group by product_tag 
order by avg_dis_price asc limit 1;


# 3. Finding the top 5 most expensive product on myntra
select product_tag , avg(discounted_price) as 'avg_dis_price' from data 
group by product_tag 
order by avg_dis_price desc limit 5;


# 4. Top 5 products based on best rating | rating*rating count
select product_tag , avg(rating*rating_count) as 'best_rating' from data 
group by product_tag 
order by best_rating desc limit 5;

# 5. Finding the second most expensive product
select product_tag , avg(discounted_price) as 'avg_dis_price' from data 
group by product_tag 
order by avg_dis_price desc limit 1,1;


# 6. Finding the second least expensive product
select product_tag , avg(discounted_price) as 'avg_dis_price' from data 
group by product_tag 
order by avg_dis_price asc limit 1,1;


# 7. Finding the 10th most expensive product
select product_tag , avg(discounted_price) as 'avg_dis_price' from data 
group by product_tag 
order by avg_dis_price desc limit 9,1;


# 8. Finding the worst rated product by nike
select product_tag , rating from data where brand_tag = 'nike' order by rating asc ;

# 9. Finding the worst rated product by nike & rating is not zero
select product_tag , avg(rating*rating_count) as 'rating_filter' from data 
where brand_tag = 'nike'  and rating > 0  
group by product_tag 
order by rating_filter asc ;


# 10. Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
select brand_name , (rating*rating_count) as 'rating_filter' from data 
where product_tag = 'tshirts' and (brand_name = 'nike' or brand_name = 'adidas') 
order by rating_filter desc limit 10; 

select brand_name , (rating*rating_count) as 'rating_filter' from data 
where product_tag = 'tshirts' and brand_name in ('nike' , 'adidas') 
order by rating_filter desc limit 10; 

# 11. Worst rated 10 products based on the rating of 100 people atleast
select brand_name , product_tag , (rating*rating_count) as 'rating_filter' from data 
where rating_count >= 100 
order by rating_filter asc limit 10;

# 12. 10 worst rated tshirt based on the rating of 100 people atleast
select brand_name , product_tag , (rating*rating_count) as 'rating_filter' from data 
where rating_count >= 100 and product_tag = 'tshirts' 
order by rating_filter asc limit 10;


# 13. Sort the products in alphaetical descending order based on their product_name and show the last 10 of them
select product_name , product_tag from data order by product_name desc limit 990,10 ;

# 14. Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
select brand_name , product_tag , rating*rating_count as 'rating_filter' from data 
where brand_name in ('nike' , 'adidas') and product_tag = 'tshirts' 
order by rating_filter desc limit 10;

# 15. Finding the list of tshirts from nike and adidas prices between 1000 and 1200 | Sort them based on ascending order of brand_name & price
select brand_name , product_tag , discounted_price , rating from data  
where product_tag = 'tshirts' and (brand_name = 'nike' and brand_name = 'adidas') and (discounted_price between 1000 and 1200) 
order by brand_name asc , discounted_price asc; 