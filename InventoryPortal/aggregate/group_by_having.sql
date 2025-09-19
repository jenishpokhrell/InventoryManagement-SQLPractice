-- show number of order each customer has made
SELECT c.CustomerName, COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

-- shows how much revenue each product has made
SELECT p.ProductName,
       SUM(od.Quantity * od.UnitPrice) AS TotalRevenue
FROM Products p
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;

-- retrieving product having quantity sum greater than 2
SELECT p.ProductName, SUM(od.Quantity) AS TotalUnitsSold
FROM Products p
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductName
HAVING SUM(od.Quantity) > 2;

-- total revenue by category
SELECT cat.CategoryName,
       SUM(od.Quantity * od.UnitPrice) AS TotalRevenue
FROM Categories cat
INNER JOIN Products p ON cat.CategoryID = p.CategoryID
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY cat.CategoryName
ORDER BY TotalRevenue DESC;