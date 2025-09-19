-- same as left join
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Orders o
RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID;

SELECT p.ProductName, s.SupplierName
FROM Products p
RIGHT JOIN Suppliers s ON p.SupplierID = s.SupplierID;