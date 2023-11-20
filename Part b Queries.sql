-- Insert Statement for Customers Table:
INSERT INTO Customers (Customer_ID, Name, Phone, Email, Shipping_Address, Billing_Address) VALUES (1006, 'Samuel Green', '987-654-3210', 'samuelg@email.com', '789 Birch St, Some City, State', '789 Birch St, Some City, State');
 
-- Insert Statement for Orders Table:
INSERT INTO Orders (Order_ID, Customer_ID, Product_ID, Employee_ID, Quantity, Total_Price, Order_Date, Estimated_Delivery_Date, Delivery_Status, Payment_Status) VALUES (3006, 1006, 3, 4003, 2, 999.98, '2023-07-15', '2023-07-22', 'Processing', 'Unpaid');
 
-- Update Statement for Furniture_Products Table (Price Change):
UPDATE Furniture_Products SET Price = Price * 1.1 WHERE Type = 'Sofa';
 
-- Update Statement for Orders Table (Order Status Change):
UPDATE Orders SET Delivery_Status = 'Delivered', Payment_Status = 'Paid' WHERE Order_ID = 3003;
 
-- Delete Statement for Customers Table:
DELETE FROM Orders WHERE Customer_ID = '1006' );
 
-- Simple Select Statement for Suppliers Table:
SELECT Name, Location, Material_Provided FROM Suppliers WHERE Sustainability_Rating > 4.5;
 
-- Select Statement Joining Customers and Orders Tables:
SELECT c.Name, o.Order_ID, o.Total_Price, o.Order_Date FROM Customers c JOIN Orders o ON c.Customer_ID = o.Customer_ID WHERE o.Payment_Status = 'Paid';
 
-- Select Statement Joining Employees and Orders Tables:
SELECT e.Name AS Employee, e.Role_Position, COUNT(o.Order_ID) AS Orders_Managed FROM Employees e JOIN Orders o ON e.Employee_ID = o.Employee_ID GROUP BY e.Employee_ID;
 
-- Summary Function Query (Total Sales):
SELECT SUM(Total_Price) AS Total_Sales FROM Orders;
 
-- Summary Function Query (Average Price of Products):
SELECT AVG(Price) AS Average_Product_Price FROM Furniture_Products;
 
-- Summary Function Query (Count of Orders by Status):
SELECT Delivery_Status, COUNT(*) AS Order_Count FROM Orders GROUP BY Delivery_Status;
 
-- Multi-Table Query (Products Not Yet Ordered):
SELECT p.Product_ID, p.Name FROM Furniture_Products p LEFT JOIN Orders o ON p.Product_ID = o.Product_ID WHERE o.Order_ID IS NULL;
