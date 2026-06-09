create database regions
use regions
--1-Total Sales
select region , round(sum(sales),2) Total_Sales from region group by region
--2-Number of Transactions
select channel , count(*) num_of_taransactions from region group by Channel
--3-Average Price
select category ,round(avg(price),2) Average_Price from region group by category
--4-Total Quantity
select segment , sum(Quantity) total_quantity from region group by Segment
--5-Maximum Sales
select region , round(max(sales),2) max_sales from region group by Region
--6-#categories sales by channel
select Channel, category , round(sum(sales),2) #sales from region group by channel , Category
--7- num of products by category
select count(distinct PRODUCT) num_of_products ,category from region group by category
--8-Average Discount
select region , round(avg(discount),2) Average_Discount from region group by region
--9-#sales per year and Quarter
select year, Quarter , round(sum(sales),2) #sales_year from region group by year ,Quarter
--10-#products quantity in accessories
select product , sum(quantity) #quantity from region where category = 'accessories' group by Product
--11-#regions sales
select category, region , round(sum(sales),2) #sales from region group by region ,category order by 3 desc