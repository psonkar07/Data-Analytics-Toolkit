use swiggy;

select * from restaurants;
-- creating the table and inserting the values
create table main 
             (id varchar(200), name varchar(200), city varchar(150), 
        rating float, cost int, cuisine varchar(200), 
        rating_count int, revenue int);
        
insert into main 
              (select id, name, city, rating, cost, cuisine, 
              rating_count, cost*rating_count as 'revenue' 
    from 
		(select *, 
        cost*rating_count ,row_number() over(partition by cuisine order by cost*rating_count desc) as 'rank' 
        from restaurants) t
	where t.rank <= 5);       
 select * from main;   
 
 --  Creating the table directly
create table if not exists final as (select * from restaurants);
select * from final;


-- creating a temporary table
create temporary table if not exists temp_table as ( select * from restaurants);
select * from temp_table;

-- creating a table based on revenue
create table if not exists top_1000 
                                ( select * , cost* rating_count as 'revenue'
                                from restaurants order by revenue limit 1000);