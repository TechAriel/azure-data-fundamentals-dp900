# Technical Implementation – Azure SQL Database Lab

Service Used: Azure SQL Database  
Sample Dataset: AdventureWorks  

---

## Step 1 – Provision Azure SQL Database

1. Navigated to Azure Portal.
2. Selected Create Resource - Azure SQL.
3. Chose Single Database deployment model.
4. Configured database settings:
   - Database Name: AdventureWorks
   - Workload: Development
   - Backup Storage: Locally redundant
5. Created new SQL Server:
   - SQL Authentication enabled
   - Admin login configured
6. Networking configuration:
   - Public endpoint enabled
   - Firewall rule added for Azure services
   - Firewall rule added for current client IP
7. Selected “Sample” data option to deploy AdventureWorks dataset.

Deployment completed successfully.

---

## Step 2 – Access Query Editor

1. Navigated to deployed SQL Database resource.
2. Selected Query Editor (preview).
3. Logged in using SQL admin credentials.
4. Verified successful database connection.

---

## Step 3 – Explore Database Schema

1. Expanded Tables section.
2. Observed relational tables including:
   - SalesLT.Product
   - SalesLT.ProductCategory
3. Identified foreign key relationship between Product and ProductCategory tables.

---

## Step 4 – Execute Basic SELECT Query

Query executed:

SELECT * FROM SalesLT.Product;

Result:
- Retrieved full dataset
- Returned all columns and rows
- Demonstrated basic table access

Note:
In production systems, SELECT * is avoided due to performance considerations.

---

## Step 5 – Retrieve Specific Columns

Query executed:

SELECT ProductID, Name, ListPrice, ProductCategoryID
FROM SalesLT.Product;

Result:
- Reduced output to relevant columns
- Improved clarity
- Demonstrated column-level selection

---

## Step 6 – Perform INNER JOIN

Query executed:

SELECT 
    p.ProductID,
    p.Name AS ProductName,
    c.Name AS Category,
    p.ListPrice
FROM SalesLT.Product AS p
INNER JOIN SalesLT.ProductCategory AS c
    ON p.ProductCategoryID = c.ProductCategoryID;

Result:
- Combined data from two related tables
- Retrieved category names via foreign key
- Demonstrated relational JOIN logic

---

## Step 7 – Cleanup

1. Navigated to Resource Groups.
2. Deleted resource group created for the lab.
3. Confirmed removal of SQL Database and server.

Purpose:
Prevent unnecessary Azure consumption costs.
