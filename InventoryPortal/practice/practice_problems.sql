-- 1. Listing all products that have stock less than their reorder level, including product name, 
-- category, supplier, units in stock, and reorder level.

SELECT p.ProductName, cat.CategoryName, s.SupplierName, p.UnitsInStock, p.ReorderLevel
FROM Products p
INNER JOIN Categories cat ON p.CategoryID = cat.CategoryID
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE ReorderLevel < 10
ORDER BY ReorderLevel ASC

-- 2. Retrieving each customer with their total purchase amount and total quantity of items ordered, 
-- sorted by highest total purchase.

SELECT c.CustomerName, SUM(od.Quantity * od.UnitPrice) AS TotalPurchaseAmount, SUM(od.Quantity) AS TotalQuantityOrdered
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.CustomerName
ORDER BY TotalPurchaseAmount DESC;


-- 3. Finding the top 3 best-selling products by total quantity sold, including category name
SELECT TOP 3 p.ProductName, c.CategoryName, SUM(od.Quantity) AS TotalQuantitySold
FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductName, c.CategoryName
ORDER BY TotalQuantitySold DESC;

-- 4. Listing all customers who have never placed an order, including contact info.
SELECT c.CustomerName, c.ContactName, c.Phone
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- 4. Updating orderstatus with ShippedDate IS NULL as cancelled.
UPDATE Orders
SET OrderStatus = 'Canceled'
WHERE ShippedDate IS NULL;

-- 6. Retrieve Total revenue per category, only categories with more than $500 revenue
SELECT c.CategoryName, SUM(od.Quantity * od.UnitPrice) AS TotalRevenue
FROM Categories c
INNER JOIN Products p ON c.CategoryID = p.CategoryID
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY c.CategoryName
HAVING SUM(od.Quantity * od.UnitPrice) > 500
ORDER BY TotalRevenue DESC;

-- 7. Listing all Suppliers with total number of products sold, sorted descending.
SELECT s.SupplierName, SUM(od.Quantity) AS TotalProductsSold
FROM Suppliers s
INNER JOIN Products p ON s.SupplierID = p.SupplierID
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY s.SupplierName
ORDER BY TotalProductsSold DESC;
