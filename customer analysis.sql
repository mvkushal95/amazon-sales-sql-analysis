What is the count of distinct cities in the dataset?
For each branch, what is the corresponding city?
Which payment method occurs most frequently?
In which city was the highest revenue recorded?
Identify the customer type contributing the highest revenue.
Determine the city with the highest VAT percentage.
Identify the customer type with the highest VAT payments.
What is the count of distinct customer types in the dataset?
What is the count of distinct payment methods in the dataset?
Which customer type occurs most frequently?
Identify the customer type with the highest purchase frequency.
Determine the predominant gender among customers.
Examine the distribution of genders within each branch.
Identify the time of day when customers provide the most ratings.
Determine the time of day with the highest customer ratings for each branch.
Identify the day of the week with the highest average ratings.
Determine the day of the week with the highest average ratings for each branch.

select * from amazon;
1. select city, count(distinct(city)) as city_count from amazon group by city;
2. select branch, city from amazon;
3. select payment, count(payment) as payment_count from amazon group by payment order by payment_count desc;
4. select city, sum(total) as total_revenue from amazon group by city order by total_revenue desc;
5. select `customer type`, sum(total) as total_revenue from amazon group by `customer type` order by total_revenue desc;
6. select city, max(`tax 5%`) as maximum_vat_percentage from amazon group by city order by maximum_VAT_percentage desc;
7. select `customer type`, max(`tax 5%`) as maximum_vat_percentage from amazon group by `customer type` order by maximum_VAT_percentage desc;
8. select `customer type`, count(distinct(`customer type`)) as countofcustomertype from amazon group by `customer type` order by countofcustomertype desc;
9. select `payment`, count(distinct(`payment`)) as payment_count_distinct from amazon group by `payment` order by payment_count_distinct desc;
10. select `customer type`, count(*) as total_count from amazon group by `customer type` order by total_count desc;
Identify the customer type with the highest purchase frequency.
11. select `customer type`, count(payment) as payment_count from amazon group by `customer type` order by payment_count desc;
Determine the predominant gender among customers.
12. select gender, count(gender) as gender_count from amazon group by gender order by gender_count desc;
Examine the distribution of genders within each branch.
13. select gender, branch, count(*) as gender_count from amazon group by gender, branch order by gender_count desc;
Identify the time of day when customers provide the most ratings.
14. select CASE 
        WHEN HOUR(`time`) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN HOUR(`time`) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN HOUR(`time`) BETWEEN 18 AND 21 THEN 'Evening'
        ELSE 'Night'
    END AS time_of_day,
    rating, count(*) as rating_count from amazon group by time_of_day, rating order by rating_count desc;
    
15.    select branch,
    CASE 
        WHEN HOUR(`time`) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN HOUR(`time`) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN HOUR(`time`) BETWEEN 18 AND 21 THEN 'Evening'
        ELSE 'Night'
    END AS time_of_day,
    rating, count(*) as rating_count from amazon group by time_of_day, rating, branch order by rating_count desc;

Identify the day of the week with the highest average ratings.
16. select DAYNAME(STR_TO_DATE(`date`, '%Y-%m-%d')) AS day_of_week, round(avg(rating),2) as highestrating from amazon group by day_of_week order by highestrating desc;
Determine the day of the week with the highest average ratings for each branch.
17. select DAYNAME(STR_TO_DATE(`date`, '%Y-%m-%d')) AS day_of_week, round(avg(rating),2) as highestrating, branch from amazon group by day_of_week, branch order by highestrating desc;
