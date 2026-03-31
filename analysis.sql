Queries used in the analysis:

select region, round(sum(sales),2) Total_sales 
from superstore 
group by 1
order by Total_sales desc;

SELECT `Product Name`, ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT DATE_FORMAT(STR_TO_DATE(`Order Date`, '%m/%d/%Y'), '%Y-%m') AS Month,
       ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;

SELECT `Sub-Category`, ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;

SELECT Segment,
       ROUND(AVG(Sales), 2) AS Avg_Order_Value,
       COUNT(*) AS Total_Orders
FROM superstore
GROUP BY Segment;