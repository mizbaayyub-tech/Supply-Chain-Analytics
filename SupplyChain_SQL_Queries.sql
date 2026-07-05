USE SupplyChainAnalytics;
GO

SELECT COUNT(*)AS Total_Records
FROM dbo.[sheet 1];

SELECT DISTINCT[Product_type]
FROM dbo.[sheet 1];

SELECT AVG(Price) AS Average_Price
FROM dbo.[sheet 1];

SELECT SUM([Revenue_generated]) AS
Total_Revenue
FROM dbo.[sheet 1]

SELECT MAX([Stock_levels]) AS
Highest_Stock
FROM dbo.[sheet 1];

SELECT MIN([Stock_levels]) AS
Lowest_Stock
FROM dbo.[sheet 1];

SELECT Product_type,
       SUM(Revenue_generated) AS
Total_Revenue
FROM dbo.[sheet 1]
GROUP BY Product_type
ORDER BY Total_Revenue DESC;

SELECT Product_type,
       AVG(Stock_levels) AS
Average_Stock
FROM dbo.[sheet 1]
GROUP BY Product_type;

SELECT AVG(Lead_times) AS
Average_Lead_Times
FROM dbo.[sheet 1];

SELECT TOP 10 SKU,
       Revenue_generated 
FROM dbo.[sheet 1]
ORDER BY Revenue_generated DESC;

SELECT Customer_demographics,
       COUNT(*) AS Total_Customers
FROM dbo.[sheet 1]
GROUP BY Customer_demographics;

SELECT SUM(Order_quantities) AS
Total_Order
FROM dbo.[sheet 1];


SELECT AVG(Order_quantities) AS
Average_Order
FROM dbo.[sheet 1];


SELECT SKU,
       Stock_levels
FROM dbo.[sheet 1]
WHERE Stock_levels<20
ORDER BY Stock_levels;