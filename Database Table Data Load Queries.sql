-- Suppliers:
Select * from Suppliers;
LOAD DATA LOCAL INFILE 'C:\\Users\\My Pc\\Documents\\Siva Rama\\Database\\Suppliers.csv' INTO TABLE Suppliers FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (Supplier_ID, Name, Contact_Information, Material_Provided, Location, Sustainability_Rating, Delivery_Lead_Times, Contract_Terms);
Select * from Suppliers;
 
-- Furniture Products:
Select * from Furniture_Products;
LOAD DATA LOCAL INFILE 'C:\\Users\\My Pc\\Documents\\Siva Rama\\Database\\Furniture_Products.csv' INTO TABLE Furniture_Products FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (Product_ID, Supplier_ID, Name, Type, Material_Composition, Price);
Select * from Furniture_Products;
 
-- Customers:
Select * from Customers;
LOAD DATA LOCAL INFILE 'C:\\Users\\My Pc\\Documents\\Siva Rama\\Database\\Customers.csv' INTO TABLE Customers FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (Customer_ID, Name, Phone, Email, Shipping_Address, Billing_Address, Purchase_History);
Select * from Customers;
 
-- Employees:
Select * from Employees;
LOAD DATA LOCAL INFILE 'C:\\Users\\My Pc\\Documents\\Siva Rama\\Database\\Employees.csv' INTO TABLE Employees FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (Employee_ID, Name, Role_Position, Contact_Information, Department, Hire_Date, Salary);
Select * from Employees;
 
-- Orders:
Select * from Orders;
LOAD DATA LOCAL INFILE 'C:\\Users\\My Pc\\Documents\\Siva Rama\\Database\\Orders.csv' INTO TABLE Orders FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (Order_ID, Customer_ID, Product_ID, Employee_ID, Quantity, Total_Price, Order_Date, Estimated_Delivery_Date, Delivery_Status, Payment_Status);
Select * from Orders;
