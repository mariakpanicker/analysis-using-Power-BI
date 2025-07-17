Select * from pizza_sales


select sum(total_price) as Total_Revenue from pizza_sales

// total revenue

	select sum(total_price) / COUNT(distinct order_id) as avg_order_val from pizza_sales

// Total pizza sold

Select * from pizza_sales

select COUNT(quantity) as tot_pizza_sld from pizza_sales

// total order placed
Select * from pizza_sales

select COUNT(distinct order_id) as tot_order from pizza_sales

//Avg_pizza_per order
Select * from pizza_sales

select sum(quantity) / count(distinct order_id) as tot_order from pizza_sales

/ chart requirement
/ daily trend for orders

Select * from pizza_sales


// whenevr using a aggregate function we have to do group by

select datename(DW, order_date) as orderday, COUNT(distinct order_id) as total_order from pizza_sales 
group by DATENAME(DW, order_date)


//monthly trend for total orders
 
select DATENAME(MONTH, order_date) as month_name, COUNT(distinct order_id) monthly_total_order from pizza_sales
group by  DATENAME(MONTH, order_date) 
order by monthly_total_order DESC
 
//pertentage of sales by pizza category



select pizza_category,
sum(total_price) as total_sales,
SUM(total_price) * 100 / (select sum(total_price) from pizza_sales) as PTS 
from pizza_sales
group by pizza_category
Select * from pizza_sales	

//total pizza sold by pizza category

select pizza_size,
sum(total_price) as total_sales,
cast(SUM(total_price) * 100 / (select sum(total_price)  from pizza_sales) as decimal(10,2))as PTS 
from pizza_sales
group by pizza_size
Select * from pizza_sales	


//top 5 best sellers by revenue , total quantity and total orders

 select top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
 group by pizza_name
 order by total_revenue
 desc 

Select * from pizza_sales
//bottom 5 best seller by revenue , totaal quantity and total orsers



 select top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
 group by pizza_name
 order by total_revenue
asc 


Select * from pizza_sales



//bottom and top 5 in qauntity

 select top 5 pizza_name, sum(quantity) as total_quantity from pizza_sales
 group by pizza_name
 order by total_quantity
desc

 select top 5 pizza_name, sum(quantity) as total_quantity from pizza_sales
 group by pizza_name
 order by total_quantity
asc 