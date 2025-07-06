-- Find the total number of orders
SELECT
COUNT(*) AS total_no_customers
FROM
SalesDB.Sales.Customers

--Find the total sales of all order
SELECT
SUM(Sales) AS total_sales
FROM SalesDB.Sales.Orders

--Average sale of all orders
SELECT
AVG(Sales) AS average_sales
FROM SalesDB.Sales.Orders

--Analyze scores in customers table
SELECT
COUNT(Score) AS no_of_scores,
SUM(Score) AS total_score,
AVG(Score) As average_score,
MAX(score) AS maximum_score
FROM SalesDB.Sales.Customers