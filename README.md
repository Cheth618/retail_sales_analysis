# Retail Sales Analysis SQL Project

## Project Overview

This project focuses on analyzing retail sales data using SQL. It demonstrates essential data analyst skills including database setup, data cleaning, exploratory data analysis (EDA), and business-oriented analysis.

The project uses a retail sales dataset containing information about transactions, customers, product categories, quantities, prices, costs, and total sales.

---

## Objectives

- Create and configure a retail sales database
- Create and manage a table for retail transaction data
- Identify and handle missing or null values
- Perform exploratory data analysis using SQL
- Analyze customer and product-category information
- Analyze sales performance and transaction patterns
- Identify high-value transactions and top customers
- Explore monthly and time-based sales trends
- Generate meaningful business insights from retail data

---

## Database Structure

The project uses **PostgreSQL** with a database named `p1_retail_db`.

The `retail_sales` table contains the following columns:

| Column | Description |
|---|---|
| `transactions_id` | Unique transaction identifier |
| `sale_date` | Date of the transaction |
| `sale_time` | Time of the transaction |
| `customer_id` | Unique customer identifier |
| `gender` | Customer gender |
| `age` | Customer age |
| `category` | Product category |
| `quantity` | Number of items purchased |
| `price_per_unit` | Price of one unit |
| `cogs` | Cost of goods sold |
| `total_sale` | Total transaction amount |

---

## Data Cleaning

The dataset was examined and cleaned before performing the analysis.

The cleaning process included:

- Checking the total number of records
- Identifying missing and null values
- Removing records containing missing values
- Checking unique customers
- Identifying available product categories
- Preparing the cleaned dataset for analysis

---

## Exploratory Data Analysis

Exploratory Data Analysis was performed to understand the structure and characteristics of the retail dataset.

The analysis includes:

- Total number of transactions
- Number of unique customers
- Available product categories
- Customer demographics
- Category-wise sales performance
- Transaction volume by gender
- Average customer age by category
- High-value transactions
- Monthly sales patterns
- Sales by time of day

---

## Business Analysis

The project answers several practical business questions:

1. Analyze sales made on a specific date.
2. Identify Clothing transactions with higher quantities during November 2022.
3. Calculate total sales and number of orders for each category.
4. Calculate the average age of customers purchasing Beauty products.
5. Identify high-value transactions with sales above 1000.
6. Analyze transactions by gender and product category.
7. Identify the best-performing month in each year based on average sales.
8. Identify the top 5 customers based on total sales.
9. Calculate the number of unique customers for each category.
10. Analyze the number of orders across Morning, Afternoon, and Evening shifts.

---

## Key Analysis Areas

### Customer Analysis

- Unique customer count
- Customer demographics
- Customer purchasing patterns
- Top customers based on sales
- Unique customers by product category

### Product Category Analysis

- Category-wise sales
- Category-wise order volume
- Customer distribution across categories
- Gender-wise transactions by category

### Sales Analysis

- Total sales
- Average sales
- High-value transactions
- Monthly sales trends
- Sales by time of day
- Category performance

---

## Insights

The analysis helps identify:

- Product categories generating higher sales
- Customers contributing significantly to total revenue
- High-value purchasing transactions
- Monthly variations in sales
- Customer distribution across product categories
- Sales patterns across different time periods
- Differences in purchasing behavior across customer groups

---

## Tools & Technologies

- **PostgreSQL**
- **SQL**
- **Git**
- **GitHub**
- **VS Code / SQL Client**

---

## SQL Concepts Practiced

- Database and table creation
- Data insertion and management
- Data cleaning
- Data filtering and sorting
- Aggregate functions
- `COUNT()`
- `SUM()`
- `AVG()`
- `ROUND()`
- `GROUP BY`
- `ORDER BY`
- `DISTINCT`
- `CASE`
- Date and time functions
- Common Table Expressions (CTEs)
- Window functions
- Ranking
- Business-oriented SQL analysis

---
