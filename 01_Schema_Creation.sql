--creating table
drop table if exists retail_sales 
	 /* create table retail_sales (
		transactions_id int primary key,
		sale_date date,
		sale_time	date,
		customer_id int,
		gender varchar(15),
		age int,
		category varchar(35),
		quantiy	 int,
		price_per_unit	float,
		cogs	float,
		total_sale float
	) */
select * into retail_sales from retail_sales_excel -- here i have copied all the values from its own excel file
select * from retail_sales 


