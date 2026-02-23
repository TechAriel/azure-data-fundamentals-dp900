/*
Project: Azure SQL Database – Relational Data Exploration
Dataset: AdventureWorks
Service: Azure SQL Database
*/

-- 1. Retrieve all columns from Product table
SELECT *
FROM SalesLT.Product;

--------------------------------------------------------

-- 2. Retrieve selected columns
SELECT 
    ProductID,
    Name,
    ListPrice,
    ProductCategoryID
FROM SalesLT.Product;

--------------------------------------------------------

-- 3. Join Product table with ProductCategory table
SELECT 
    p.ProductID,
    p.Name AS ProductName,
    c.Name AS Category,
    p.ListPrice
FROM SalesLT.Product AS p
INNER JOIN SalesLT.ProductCategory AS c
    ON p.ProductCategoryID = c.ProductCategoryID;
