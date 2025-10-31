select * from retail_sales
--all columns for sales made on '2022-11-05'
	select * from retail_sales where sale_date ='2022-11-05'
--all transactions where category is 'clothing' and quantity sold is more than 10 in the month of Nov 2022
	select * from retail_sales where category='Clothing' and quantity>=4 and MONTH(sale_date) =11 and YEAR(sale_date) = 2022
--total sales for each category
	select category,count(total_sale) from retail_sales group by category
--average age of customers who purchased items from the 'Beauty' category
	select AVG(age) from retail_sales where category='Beauty' 
--all transactions where total sale is greater than 1000
	select * from retail_sales where total_sale>1000
--total number of transactions made by each gender in each category
	select gender,category,COUNT(*) from retail_sales group by gender,category
--average sale for each month, and best selling momth each year
	select * from (select YEAR(sale_date) as year_,month(sale_date) as month_, AVG(total_sale) as avg_sale, RANK() over(partition by year(sale_date) order by avg(total_sale)) as rank_ from retail_sales group by YEAR(sale_date),month(sale_date) )t where rank_=1
--top 5 customers based on the highest total sales
	select top 5 * from retail_sales order by total_sale desc
--number of unique customers who purchased items from each category
	select COUNT(distinct(customer_id)),category from retail_sales group by category
--each shift and number of orders(example Morning>=12, Afternoon 12 & 17)
	select day_time,COUNT(*) from (
		select case
		when DATEPART(hour,sale_time) <=12 then 'Morning' 
		when DATEPART(HOUR,sale_time) <=17 then 'Afternoon' 
		else 'Evening' end as day_time
		from retail_sales)t group by day_time

--THEN  END OF PROJECT :)