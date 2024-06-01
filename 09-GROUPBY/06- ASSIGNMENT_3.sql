use practice;

# 2. Which product_category of any brand is sold the most?
select brand_name , product_tag , sum(rating_count) as 'sum_ratingcount' from data 
group by brand_name , product_tag 
order by sum_ratingcount desc limit 1; 

# 3. List top 5 brands which has sold most number of tshirts
select brand_name , sum(rating_count) as 'sum_ratingcount' from data 
where product_tag = 'tshirts' 
group by brand_name 
order by sum_ratingcount  desc limit 5;

# 4. List top 5 brands which has sold most number of shirts
select brand_name , sum(rating_count) as 'sum_ratingcount' from data 
where product_tag = 'shirts' group by brand_name 
order by sum_ratingcount  desc limit 5;


# 5. List top 5 brands which has sold most number of jeans
select brand_name , sum(rating_count) as 'sum_ratingcount' from data 
where product_tag = 'jeans' 
group by brand_name 
order by sum_ratingcount  desc limit 5;


# 6. List top 5 brands which has sold most number of dresses
select brand_name , sum(rating_count) as 'sum_ratingcount' from data 
where product_tag = 'dresses' 
group by brand_name 
order by sum_ratingcount  desc limit 5;


# 7. Most popular product name listed in Myntra
select product_name , sum(rating_count) as 'sum_ratingcount' from data  
group by product_name 
order by sum_ratingcount desc limit 1;

# 8. Number of products sold for every rating (0 - 5)
select  product_tag , rating,  sum(rating_count) as 'sum_ratingcount' from data 
group by product_tag, rating 
order by sum_ratingcount desc ; 

# 9. Number of products sold for every rating by nike
select  product_tag , rating,  sum(rating_count) as 'sum_ratingcount' from data 
where brand_name = 'nike' 
group by product_tag, rating 
order by sum_ratingcount desc ; 


# 10. Number of products sold for every rating in tshirt category
select  brand_name , rating,  sum(rating_count) as 'sum_ratingcount' from data 
where product_tag = 'tshirts' 
group by brand_name, rating 
order by sum_ratingcount desc ; 


-- Bonus : Relation between price of the thisrt and its rating with respect to people rated
