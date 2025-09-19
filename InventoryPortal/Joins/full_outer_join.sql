-- joins all table regardless of any orders
SELECT c.CustomerName, o.OrderID, o.OrderDate
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID;


-- joins table regarless of an order of that product
SELECT p.ProductName, od.OrderID, od.Quantity
FROM Products p
FULL OUTER JOIN OrderDetails od ON p.ProductID = od.ProductID;