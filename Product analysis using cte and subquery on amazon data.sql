create database amazonsalesdata;
use amazonsalesdata;

select * from amazon;
-----What is the count of distinct product lines in the dataset?
---- Which product line has the highest sales?
----Which product line generated the highest revenue?
----Which product line incurred the highest Value Added Tax?
----For each product line, add a column indicating "Good" if its sales are above average, otherwise "Bad."
Identify the branch that exceeded the average number of products sold.
Which product line is most frequently associated with each gender?
Calculate the average rating for each product line.----

select * from amazon;
1. select distinct(`product line`), count(*) as total_count from amazon group by `product line` order by total_count desc;
2. select `product line`, sum(quantity) as total_sales from amazon group by `product line` order by total_sales desc;
3. select `product line`, sum(total) as total_revenue from amazon group by `product line` order by total_revenue desc;
4. select `product line`, max(`Tax 5%`) as highest_tax_paid from amazon group by `product line` order by highest_tax_paid desc;
8.. select `product line`, avg(`rating`) as average_rating from amazon group by `product line`;
5. alter table amazon add performance text not null;
5. UPDATE amazon AS a
JOIN (
    SELECT AVG(quantity) AS avg_sales
    FROM amazon
) AS avg_table
ON a.quantity > avg_table.avg_sales
SET a.performance = 'Good';
 UPDATE amazon
SET performance = 'Bad'
WHERE performance IS NULL OR performance = '';
6. WITH avg_sales_cte AS (
    SELECT AVG(quantity) AS avg_sales
    FROM amazon
)

UPDATE amazon AS a
JOIN avg_sales_cte ON a.quantity > avg_sales_cte.avg_sales
SET a.performance = 'Good';
select branch from amazon where quantity > (select avg(quantity) as avg_quantity from amazon);
7. WITH ranked_products AS (
    SELECT 
        gender,
        `product line`,
        COUNT(*) AS purchase_count,
        ROW_NUMBER() OVER (PARTITION BY gender ORDER BY COUNT(*) DESC) AS rn
    FROM amazon
    GROUP BY gender, `product line`
)
SELECT gender, `product line`, purchase_count
FROM ranked_products
WHERE rn = 1;