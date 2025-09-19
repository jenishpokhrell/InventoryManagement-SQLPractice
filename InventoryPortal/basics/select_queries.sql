-- Reading all data from Products table
SELECT * 
FROM Products;

-- Retrieving specific column data
SELECT ProductName, UnitPrice, UnitsInStock
FROM Products;

-- Products cheaper than 100
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice < 100;

-- Products in Electronics OR Books
SELECT ProductName, UnitPrice
FROM Products
WHERE CategoryID IN (1, 5);

-- Products with stock between 10 and 50
SELECT ProductName, UnitsInStock
FROM Products
WHERE UnitsInStock BETWEEN 10 AND 50;

-- Ordering the Products based on UnitPrice
SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC;