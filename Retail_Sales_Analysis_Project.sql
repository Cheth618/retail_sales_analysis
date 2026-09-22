CREATE DATABASE p1_retail_db;

CREATE TABLE retail_sales 
(
     transcation_id INT PRIMARY KEY, 
	 sales_date DATE,
	 sales_time TIME,
	 customer_id INT, 
	 gender VARCHAR(50),
	 age INT,
	 category VARCHAR(50),
	 quantity INT,
	 price_per_unit FLOAT,
	 cogs FLOAT,
	 total_sales FLOAT
);

SELECT * FROM retail_sales
LIMIT 100;

----------------- DATA CLEANING ----------------------------------------------------------------------------------------------------------------------

SELECT COUNT (*) FROM retail_sales WHERE transcation_id IS NULL

SELECT * FROM retail_sales WHERE transcation_id IS NULL

SELECT * FROM retail_sales WHERE sales_date IS NULL

SELECT * FROM retail_sales WHERE 

transcation_id IS NULL OR
sales_date IS NULL OR
sales_time IS NULL OR
customer_id IS NULL OR
gender IS NULL OR
category IS NULL OR
quantity IS NULL OR
cogs IS NULL OR
total_sales IS NULL 

DELETE FROM retail_sales WHERE

transcation_id IS NULL OR
sales_date IS NULL OR
sales_time IS NULL OR
customer_id IS NULL OR
gender IS NULL OR
category IS NULL OR
quantity IS NULL OR
cogs IS NULL OR
total_sales IS NULL 

SELECT COUNT (*) FROM retail_sales

-------------- DATA EXPLORATION ------------------------------------------------------------------------------------------------------

-- Checking how many sales we have ?

SELECT COUNT (*) as total_sales FROM retail_sales

-- How many customers we have ?

SELECT COUNT(customer_id) as total_sales FROM retail_sales

SELECT COUNT(DISTINCT customer_id) as total_sales FROM retail_sales  -- using DISTINCT function

-- How many categories we have ?

SELECT COUNT(category) as total_sales FROM retail_sales

SELECT COUNT(DISTINCT category) as total_sales FROM retail_sales  -- using DISTINCT function

SELECT DISTINCT category FROM retail_sales



--------------- DATA ANALYSIS & BUSINESS KEY PROBLEMS AND ANSWERS ----------------------------------------------------------------------

-- 1. Write a SQL query to retrieve all columns for sales made on '2022-11-05:
-- 2. Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
-- 3. Write a SQL query to calculate the total sales (total_sale) for each category:
-- 4. Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category:
-- 5. Write a SQL query to find all transactions where the total_sale is greater than 1000:
-- 6. Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category:
-- 7. Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:
-- 8. Write a SQL query to find the top 5 customers based on the highest total sales:
-- 9. Write a SQL query to find the number of unique customers who purchased items from each category:
-- 10. Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):




-- 1. Write a SQL query to retrieve all columns for sales made on '2022-11-05:

SELECT *
FROM retail_sales
WHERE sales_date = '2022-11-05'

-- 2. Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:

SELECT *
FROM retail_sales
WHERE category = 'Clothing'
AND
TO_CHAR(sales_date, 'YYYY-MM') = '2022-11'
AND quantity >= 4

-- 3. Write a SQL query to calculate the total sales (total_sale) for each category:

SELECT category,
SUM(total_sales) as net_sale,
COUNT(*) as total_orders
FROM retail_sales
GROUP BY 1

-- 4. Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category:

SELECT ROUND(AVG(age), 2) as avg_age
FROM retail_sales
WHERE category = 'Beauty'

-- 5. Write a SQL query to find all transactions where the total_sale is greater than 1000:

SELECT * 
FROM retail_sales 
WHERE total_sales > 1000

-- 6. Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category:

SELECT category, gender,
COUNT(*) as total_transactions
FROM retail_sales
GROUP BY category, gender
ORDER BY 1

-- 7. Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:

SELECT * FROM (
SELECT 
EXTRACT (YEAR FROM sales_date) as year,
EXTRACT (MONTH FROM sales_date) as month, 
AVG(total_sales) as avg_sales,
RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sales_date) ORDER BY AVG(total_sales) DESC) as rank
FROM retail_sales
GROUP BY 1, 2
) as t1
WHERE rank = 1

-- 8. Write a SQL query to find the top 5 customers based on the highest total sales:

SELECT customer_id,
SUM(total_sales) as total_sales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5

-- 9. Write a SQL query to find the number of unique customers who purchased items from each category:

SELECT category, 
COUNT(DISTINCT customer_id) as unique_customers
FROM retail_sales
GROUP BY category

-- 10. Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):

WITH hourly_sale
AS
(
SELECT *,
CASE
WHEN EXTRACT (HOUR FROM sales_time) < 12 THEN 'Morning'
WHEN EXTRACT (HOUR FROM sales_time) BETWEEN 12 AND 17 THEN 'Afternoon'
ELSE 'Evening'
END as shift
FROM retail_sales
)
SELECT shift,
COUNT(*) as total_orders
FROM hourly_sale
GROUP BY shift


