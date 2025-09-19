-- deleting order where id is 3
DELETE FROM OrderDetails
WHERE OrderID = 3; -- Deleting foreign constraints first

DELETE FROM Orders
WHERE OrderID = 3;


DELETE FROM Customers
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders);

-- DELETING FROM Products with 0 stock
DELETE FROM Products
WHERE UnitsInStock = 0;