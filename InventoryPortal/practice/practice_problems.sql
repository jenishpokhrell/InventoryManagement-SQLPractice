-- 1. Listing all products that have stock less than their reorder level, including product name, 
-- category, supplier, units in stock, and reorder level.

SELECT p.ProductName, cat.CategoryName, s.SupplierName, p.UnitsInStock, p.ReorderLevel
FROM Products p
INNER JOIN Categories cat ON p.CategoryID = cat.CategoryID
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE ReorderLevel < 10
ORDER BY ReorderLevel ASC

-- 2. Show each customer with their total purchase amount and total quantity of items ordered, 
-- sorted by highest total purchase.

