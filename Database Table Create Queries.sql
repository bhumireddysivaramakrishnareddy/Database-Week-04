Create Database Eco_FMFS;
Use Eco_FMFS;
Show tables;

-- Suppliers Table:
CREATE TABLE Suppliers ( Supplier_ID INT PRIMARY KEY, Name VARCHAR(100), Contact_Information VARCHAR(100), Material_Provided VARCHAR(255), Location VARCHAR(100), Sustainability_Rating DECIMAL(2,1), Delivery_Lead_Times VARCHAR(20), Contract_Terms VARCHAR(20) );

-- Furniture Products Table:
CREATE TABLE Furniture_Products ( Product_ID INT PRIMARY KEY, Supplier_ID INT, Name VARCHAR(100), Type VARCHAR(50), Material_Composition VARCHAR(255), Price DECIMAL(10,2), FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID) );

-- Customers Table:
CREATE TABLE Customers ( Customer_ID INT PRIMARY KEY, Name VARCHAR(100), Phone VARCHAR(15), Email VARCHAR(100), Shipping_Address VARCHAR(200), Billing_Address VARCHAR(200), Purchase_History TEXT ); 

-- Employees Table:
CREATE TABLE Employees ( Employee_ID INT PRIMARY KEY, Name VARCHAR(100), Role_Position VARCHAR(100), Contact_Information VARCHAR(100), Department VARCHAR(100), Hire_Date DATE, Salary DECIMAL(10,2) );

-- Orders Table:
CREATE TABLE Orders ( Order_ID INT PRIMARY KEY, Customer_ID INT, Product_ID INT, Employee_ID INT, Quantity INT, Total_Price DECIMAL(10,2), Order_Date DATE, Estimated_Delivery_Date DATE, Delivery_Status VARCHAR(50), Payment_Status VARCHAR(50), FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID), FOREIGN KEY (Product_ID) REFERENCES Furniture_Products(Product_ID), FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID) );
