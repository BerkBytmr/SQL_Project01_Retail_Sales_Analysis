--data cleaning
	delete from retail_sales where
	transactions_id is NULL or
	sale_date is NULL or
	sale_time is NULL or
	customer_id is NULL or
	gender is NULL or
	age is NULL or
	category is NULL or
	quantiy is NULL or 
	price_per_unit is NULL or
	cogs is NULL or
	total_sale is NULL

	