select * from [dbo].[KMS+Sql+Case+Study]

---Product Category with the highest sales--

select top 1 product_category,
sum(sales) as Total_Sales 
from [dbo].[KMS+Sql+Case+Study]
group by Product_category
Order by Total_Sales desc

------Top 3 by region---

select top 3 region,
sum(sales) as Total_Sales
from [dbo].[KMS+Sql+Case+Study]
group by Region 
order by Total_Sales desc

-----Buttom 3 by region---

select top 3 region,
sum(sales) as Total_Sales
from [dbo].[KMS+Sql+Case+Study]
group by Region 
order by Total_Sales asc

-------Total appliances sales in ontario---

select sum(sales) as Total_Appliance_Sales_Ontario
from [dbo].[KMS+Sql+Case+Study]
where product_sub_category = 'Appliance'
and Province = 'Ontario';

-------question 4

select top 10 customer_name,
sum (sales) as Revenue
from [dbo].[KMS+Sql+Case+Study]
group by Customer_name
order by Revenue asc

-------Most shipping using shipping method---

select top 1 ship_mode,
sum(shipping_cost) as Total_shipping_cost
from [dbo].[KMS+Sql+Case+Study]
group by Ship_mode
order by total_shipping_cost desc

------Most valuable customers and product/services they purchase--

select top 5 customer_name, product_name,
sum(sales) as Valuable_Customer 
from [dbo].[KMS+Sql+Case+Study]
group by Customer_name, product_name
order by Valuable_customer desc

------Which small business customer had the highest sales--

select top 1 customer_name,
sum(sales) as Total_Sales
from [dbo].[KMS+Sql+Case+Study]
where customer_segment = 'small business'
group by Customer_name
order by Total_Sales desc

--------Which corporate customer placed the most number of orders in 2009 - 2012---

select top 1 customer_name,
count(order_id) as Number_of_order
from [dbo].[KMS+Sql+Case+Study]
Where customer_segment = 'Corporate'
and order_date between'2009-01-01' and '2012-01-01'
group by Customer_name
order by Number_of_order desc

-----Which consumer customer was the most profitable one---

select top 1 customer_name,
sum(profit) as [Most Profitable]
from [dbo].[KMS+Sql+Case+Study]
where customer_segment = 'consumer'
group by customer_name
order by [most profitable] desc

------which customer returned items and what segm ent do they belong----

select order_status.order_id,[KMS+Sql+Case+Study].Customer_name,
[KMS+Sql+Case+Study].customer_segment,
order_status.status
from [dbo].[KMS+Sql+Case+Study]
join order_status
on 
[dbo].[KMS+Sql+Case+Study].Order_id = order_status.order_id

-----QUESTION 11---

select order_priority,ship_mode,
count(order_id) as total_delivery,
round(sum(Sales - Profit),2) as Estimated_shipping_cost,
avg(datediff(day,[Order_Date],[Ship_Date])) as Avg_ship_days
from [dbo].[KMS+Sql+Case+Study]
group by order_priority,
ship_mode



