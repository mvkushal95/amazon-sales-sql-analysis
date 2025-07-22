# 📊 Amazon Sales Data Analysis – SQL Project

This project is a comprehensive SQL-based exploratory analysis of Amazon sales data across three major branches. The goal was to understand customer behavior, sales trends, and product performance to uncover actionable insights for business optimization.

**Purpose of the Project**

The primary aim of this project is to gain insights into Amazon's retail sales across different locations. Through data wrangling, feature engineering, and in-depth SQL queries, we analyze factors affecting sales, revenue, customer preferences, and operational efficiency at each branch.

## 🗃️ Dataset Overview

The dataset contains **1,000 rows** and **17 columns**, capturing transactions from **three Amazon branches** in:
- Mandalay
- Yangon
- Naypyitaw

### 📌 Columns & Descriptions

| Column                  | Description                                    | Data Type         |
|-------------------------|------------------------------------------------|--------------------|
| `invoice_id`            | Invoice ID                                     | VARCHAR(30)        |
| `branch`                | Branch where sale occurred                     | VARCHAR(5)         |
| `city`                  | Location of the branch                         | VARCHAR(30)        |
| `customer_type`         | Type of customer                               | VARCHAR(30)        |
| `gender`                | Gender of the customer                         | VARCHAR(10)        |
| `product_line`          | Product category                               | VARCHAR(100)       |
| `unit_price`            | Price per unit                                 | DECIMAL(10, 2)     |
| `quantity`              | Number of units sold                           | INT                |
| `VAT`                   | Tax on the purchase                            | FLOAT(6, 4)        |
| `total`                 | Total transaction amount                       | DECIMAL(10, 2)     |
| `date`                  | Date of transaction                            | DATE               |
| `time`                  | Time of transaction                            | TIMESTAMP          |
| `payment_method`        | Mode of payment                                | VARCHAR            |
| `cogs`                  | Cost of Goods Sold                             | DECIMAL(10, 2)     |
| `gross_margin_percentage` | Margin %                                    | FLOAT(11, 9)       |
| `gross_income`          | Gross income from the transaction              | DECIMAL(10, 2)     |
| `rating`                | Customer rating                                | FLOAT(2, 1)        |

## 🛠️ Approach Used

### 1️⃣ Data Wrangling
- Created MySQL database and imported structured data.
- Ensured all fields were marked `NOT NULL` to eliminate missing data.

### 2️⃣ Feature Engineering
- Created `timeofday` column: Buckets time into Morning, Afternoon, Evening.
- Created `dayname` column: Extracted day of week for each transaction.
- Created `monthname` column: Extracted month of transaction.

### 3️⃣ Exploratory Data Analysis (EDA)
Used SQL queries to answer business-driven questions around customer behavior, product sales, and performance trends.

## 📊 Analysis Categories

### 🧾 Product Analysis
- Most popular product lines
- Sales classification: "Good" vs "Bad"
- Highest grossing product lines
- Gender preference by product

### 💰 Sales Analysis
- Revenue trends by month and time of day
- Highest-performing months and branches
- COGS and VAT trends

### 👥 Customer Analysis
- Purchase frequency by customer type
- Gender and customer type distribution
- Ratings by time of day and day of week
- Branch-wise rating and sales behavior

## ❓ Business Questions Answered

- 🔢 Count of distinct cities and customer types
- 🏢 Branch-to-city mapping
- 💳 Most used payment method
- 🧍‍♂️ Predominant gender and customer type
- 💸 Monthly revenue and top-performing months
- 🛍️ Product lines with highest sales, VAT, and gross income
- 🕒 Peak sales time (timeofday) and weekday behavior
- ⭐ Highest average rating by day and branch
- 📈 Purchase trends by branch, customer type, and gender
- ✅ Sales above and below average

## 📂 Files Included

- `amazon_data.sql` – SQL file to create and populate the database
- `queries.sql` – Full list of analysis queries
- `README.md` – This file (project documentation)


## 📌 How to Use

1. Import the `amazon_data.sql` into your MySQL server.
2. Run `queries.sql` to perform the full analysis.
3. (Optional) Build visual dashboards using Power BI, Tableau, or Excel based on the SQL output.

## 🧠 Insights Summary

- **Afternoons** saw the highest customer traffic.
- **Branch B** recorded the highest revenue and customer ratings.
- **Female customers** were the most active overall.
- **Health and beauty** and **Food and beverages** were top-performing product lines.
- **Sundays** had the highest average customer ratings.
