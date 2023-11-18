--Total Sales
select sum(sales) as total_sales from orders;

--Total Profit
select sum(profit) as total_profit from orders;

--Profit Ratio
select round(sum(profit)/sum(sales)*100,2) as profit_ratio from orders;

--Profit per Order
select sum(profit)/count(distinct order_id) from orders;

--Sales per Customer
select sum(sales)/count(distinct customer) from orders;

--Avg. Discount
select avg(discount) from orders;

--Monthly Sales by Segment 
select 
	date_trunc('month', order_date) as months,
	segment, 
	sum(sales)
from orders 
group by months, segment
order by months;

--Monthly Sales by Product Category 
select 
	date_trunc('month', order_date) as months,
	category,
	sum(sales)
from orders
group by months, category
order by months;

--Sales by Product Category over time 
select 
	category,
	sum(sales) as total_sales,
	count(sales) as number_sales
from orders 
group by category;

--Sales and Profit by Customer
select 
	customer_id,
	customer_name,
	sum(sales) as total_sales,
	sum(profit) as total_profit
from orders 
group by customer_id, customer_name 
order by customer_id;

--Customer Ranking
select 
	row_number() over(order by sum(sales) desc)
	customer_id ,
	customer_name,
	sum(sales) as total_sales
from orders 
group by customer_id, customer_name 
order by total_sales desc
limit 10;

--Sales per region
select 
	region,
	sum(sales) as total_sales
from orders
group by region
order by total_sales desc;

--Some other queries
select 
	city,
	count(distinct order_id) as number_orders,
	sum(sales) as revenue
from orders
where category in ('Furniture', 'Technology') and extract('year' from order_date) = 2018 
group by city
having sum(sales) > 10000
order by revenue desc;

select count(*) from orders; --9994 rows

select 
	count(*),
	count(distinct o.order_id),
	sum(sales)
from orders o 
left join returns r
on o.order_id = r.order_id;

select 
	count(*),
	count(distinct o.order_id)
from orders o 
where order_id in(select distinct order_id from returns r);

select date_trunc('day', now()) --timestamp