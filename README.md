# DSA_Kms-sql-case-study
## SQL case study using KMS retail dataset for data-driven business analysis and performance insights.

this repository contain a sales dataset in csv format for SQL analysis. the dataset simulates real world retail operations including order details, product category, and profit matrics.

### Dataset Overview
-  KMS Business Intelligence Analysis - SQL Solutions
-  Kultra Mega Stores Data Analysis (2009-2012)
-  Author: Business Intelligence Analyst
-  Date: July 2025-- KMS Business Intelligence Analysis - SQL Solutions
-  Kultra Mega Stores Data Analysis (2009-2012)
-  Author: Business Intelligence Analyst
-  Date: July 2025

 ### Key Columns:
 -  `Order ID`, `Order Date`, `Ship Date`,
 -  `Customer Name`, `Customer Segment`, `Province`, `Region`
 -  `Product Name`, `Product Category`, `Product Sub-Category`,
 -  `Sales`, `Profit`, `Discount`, `Shipping Cost`

### Case Study Objectives 
-  Sales analysis by region, customer segment, or product category
-  Profit margin and discount trends
-  Shipping mode effectiveness and delivery timelines
-  Time series patterns (monthly/yearly trends)
-  Top buttom performing customers or products

      ### Tools Used 
  - **SQL**

### Sample SQL Questions
1. What are the total sales and profit by region?
2. Which product category generate the highest revenue?
3. Who are the top 5 customers by total purchases?
4. Top 3 and Bottom 3 regions in terms of sales?

### NOTE
-  This script assumes the data is loaded into a table called 'kms_orders'
-  Table structure based on the CSV file columns
-  Queries assume standard SQL syntax (MySQL/PostgreSQL compatible)
-  Some calculations use DATEDIFF which may need adjustment for different SQL dialects
     
### Key findings summary

 #### Regional Sales Performance
	- The Western region consistently outperformed other regions in terms of total sales and profit.

 #### Product Category Analysis
	- Office Supplies was the most frequently sold category, but Technology yielded the highest average profit margins.
 
 #### Customer Segmentation
	- Corporate customers had higher average order values compared to Consumer and Home Office segments.

 #### Shipping and Delivery Insights
	- The majority of products were delivered using Standard Class shipping, though Same Day shipments were linked to higher-value orders.
 
