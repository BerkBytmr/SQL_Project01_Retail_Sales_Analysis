select * from retail_sales
--how many sales do we have
	select COUNT(*) from retail_sales
--how many customers do we have
	select COUNT(customer_id) from retail_sales
-- how many unique customers do we have
	select COUNT(distinct(customer_id)) from retail_sales
--what are our categories
	select distinct(category) from retail_sales
