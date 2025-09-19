-- sleect productname with maximum unit price
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- retrieving customer who ordered on the month of May in 2025
SELECT CustomerName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE MONTH(OrderDate) = 5 AND YEAR(OrderDate) = 2025
);

-- retrieve products that are priced above the average price.
SELECT p.ProductName, p.UnitPrice, c.CategoryName
FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice > (
    SELECT AVG(p2.UnitPrice)
    FROM Products p2
    WHERE p2.CategoryID = p.CategoryID
);

-- retreivs top 3 best selling products
SELECT TOP 3 ProductName, TotalSold FROM (
SELECT p.ProductName, SUM(od.Quantity) AS TotalSold
FROM Products p
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductName
) AS ProductSales
ORDER BY TotalSold DESC;

-- retrieves customer and their total amount spent on item
SELECT c.CustomerName, (SELECT SUM(od.Quantity * od.UnitPrice)
FROM Orders o
INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
WHERE o.CustomerID = c.CustomerID) AS TotalSpent
FROM Customers c;