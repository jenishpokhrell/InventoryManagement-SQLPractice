USE InventoryPortal;
GO

-- Inserting Categories Values
INSERT INTO Categories (CategoryName)
VALUES
('Electronics'),
('Groceries'),
('Furniture'),
('Clothing'),
('Books');

-- Inserting Suppliers Values
INSERT INTO Suppliers (SupplierName, ContactName, Phone)
VALUES
('TechWorld Ltd.', 'Alice Johnson', '555-1234'),
('FreshMart Foods', 'Bob Carter', '555-2345'),
('Comfort Living', 'Sara Lee', '555-3456'),
('StyleHub', 'David Kim', '555-4567'),
('Readers Point', 'Emma Watson', '555-5678');

-- Inserting Products Values
INSERT INTO Products (ProductName, CategoryID, SupplierID, UnitPrice, UnitsInStock, ReorderLevel)
VALUES
('Laptop Dell XPS 13', 1, 1, 1200.00, 15, 5),
('Smartphone Samsung S24', 1, 1, 999.00, 30, 10),
('Organic Apples (1kg)', 2, 2, 3.50, 100, 20),
('Almond Milk (1L)', 2, 2, 2.20, 60, 15),
('Sofa 3-Seater', 3, 3, 550.00, 5, 2),
('Dining Table Set', 3, 3, 750.00, 3, 1),
('Men’s T-Shirt (M)', 4, 4, 20.00, 50, 10),
('Women’s Jacket (L)', 4, 4, 60.00, 25, 5),
('Harry Potter Box Set', 5, 5, 120.00, 40, 8),
('The Lean Startup', 5, 5, 25.00, 30, 5);

-- Inserting Customers Values
INSERT INTO Customers (CustomerName, ContactName, Phone)
VALUES
('John Doe', 'John Doe', '555-6789'),
('Mary Smith', 'Mary Smith', '555-7890'),
('James Wilson', 'James Wilson', '555-8901'),
('Linda Johnson', 'Linda Johnson', '555-9012'),
('Michael Brown', 'Michael Brown', '555-0123'),
('Daniel Watts', 'Daniel watts', '555-5424');

-- Inserting Orders Values
INSERT INTO Orders (CustomerID, OrderDate, ShippedDate)
VALUES
(1, '2025-08-01', '2025-08-03'),
(2, '2025-05-05', '2025-05-07'),
(3, '2025-09-17', NULL),
(4, '2025-09-10', '2025-09-12'),
(5, '2025-07-12', '2025-07-14'),
(6, '2025-09-15', NULL);

-- Inserting OrderDetails Values
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 1, 1200.00),  
(1, 3, 5, 3.50), 
(2, 2, 1, 999.00),
(2, 4, 2, 2.20),
(3, 9, 1, 120.00),
(4, 5, 1, 550.00),
(4, 7, 3, 20.00),
(5, 10, 2, 25.00),
(5, 8, 1, 60.00),
(6, 5, 2, 550.00),    
(6, 6, 1, 750.00);