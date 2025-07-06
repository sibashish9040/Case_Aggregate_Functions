/* Create report showing total sales for each of the following categories:
High(sales over 50)
Medium(sales 21-50)
Low( sales 20 or less)
Sort the categories form highest sales to lowest
*/
SELECT
Category,
SUM(Sales) AS TotalSales
FROM(
	SELECT 
	OrderID,
	Sales,
	CASE
		WHEN Sales > 50 THEN 'High'
		WHEN Sales > 20 THEN 'Medium'
		ELSE 'Low'
	END Category
	FROM SalesDB.Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC

--Retrieve employee details with geneder displayed as full text
SELECT *,
CASE
	WHEN Gender = 'M' THEN 'Male'
	WHEN Gender = 'F' THEN 'Female'
	ELSE 'Not Available'
END
FROM SalesDB.Sales.Employees


--Retrieve customer details with abbreviated country  code
/* Steps:
1. 1st find all the distinct values from the table's column, using DISTINCT
2. Then generate different condtion according to that
*/
SELECT *,
CASE
	WHEN Country = 'Germany' THEN 'GE'
	WHEN Country = 'USA' THEN 'US'
	ELSE 'n/a'
END Av_country
FROM SalesDB.Sales.Customers


--Find the average scores of  customers and treat nulls as zeros
-- Also provide additional details such as CustomerID and LastName
SELECT 
CustomerID,
LastName,
Score,
AVG(CASE
	WHEN Score IS NULL THEN 0
	ELSE score
END) OVER() Average_score
FROM SalesDB.Sales.Customers


-- Count how many times each customer has made an order with sales greater than 30
SELECT
customerID,
SUM(CASE
	WHEN Sales>30 THEN 1
	ELSE 0
END) flagged_sales,
COUNT(*) TotalSales
FROM SalesDB.Sales.Orders
GROUP BY CustomerID
