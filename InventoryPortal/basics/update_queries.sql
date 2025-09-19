-- UPDATING Queries

-- Reducing Stock by 10
UPDATE Products
SET UnitsInStock = UnitsInStock - 10
WHERE ProductID = 3;

-- Increasing Product price by 1.10 times of CategoryID 1
UPDATE Products
SET UnitPrice = UnitPrice * 1.10
WHERE CategoryID = 1;

-- updating jon doe phone number
UPDATE Customers
SET Phone = '555-9999'
WHERE CustomerName = 'John Doe';