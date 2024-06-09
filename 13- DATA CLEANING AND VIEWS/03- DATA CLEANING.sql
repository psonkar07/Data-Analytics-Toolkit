use swiggy;
select * from restaurants;

-- Finding the restaurant_id from the link
select substring_index (link, '/' ,-1) as id,link, name, city, rating, rating_count, cuisine, cost FROM restaurants;
select substring_index(substring_index (link, '/' ,-1), '-', -1) as id,link, name, city, rating, rating_count, cuisine, cost FROM restaurants;


-- Updating the restaurant_id in the original table
create table main_1 as (select substring_index(substring_index (link, '/' ,-1), '-', -1) as 
                      id,link, name, city, rating, rating_count, cuisine, cost FROM restaurants);
select * from main_1;


-- Clean the name column and update it on the table
create table if not exists main_2 as
		( select id, lower(trim(name)) as name,city, rating, rating_count, cuisine, cost from main_1 );
 select * from main_2;       


-- Clean the city &  cuisine column and update it on the table
create table if not exists main_3 as
		( select id, lower(trim(name)) as name, lower(city) as 'city', rating, rating_count, 
			lower(cuisine) as 'cuisine', cost from main_2 );
select * from main_3;            


-- Remove the odd cuisines from the table
create table if not exists clean as
		( select * from main_3 where cuisine not in ('combo','na','
			discount offer from garden cafe express kankurgachi',
			'svanidhi street food vendor','tex-mex','special discount from (hotel swagath)',
			'free delivery ! limited stocks!'));
 select * from clean;           
 drop table main_1, main_2 , main_3 ;