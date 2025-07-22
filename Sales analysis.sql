How much revenue is generated each month?
In which month did the cost of goods sold reach its peak?
Count the sales occurrences for each time of day on every weekday.

select * from `amazon`;
1. select sum(total) as total_revenue, month(str_to_date(`date`, '%Y-%m-%d')) as Each_month from amazon group by MONTH(str_to_date(`date`,'%Y-%m-%d')) order by each_month asc;
2. select sum(cogs) as total_goods_sold, month(str_to_date(`date`, '%Y-%m-%d')) as Each_month from amazon group by MONTH(str_to_date(`date`,'%Y-%m-%d')) order by each_month asc;
3. select count(quantity) as total_quantity, dayname(str_to_date(`date`, '%Y-%m-%d')) as each_day, hour(`time`) as individual_time from amazon group by hour(`time`),dayname(str_to_date(`date`, '%Y-%m-%d')) order by each_day asc;
    