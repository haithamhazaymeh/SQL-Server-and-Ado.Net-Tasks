CREATE TABLE customers (
    PersonID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    
);

insert into customers values (120,'hazaymeh','haitham') ;

SELECT * FROM [Customers] 



CREATE TABLE Orders (
    OrderID varchar (250) NOT NULL,
    ProductID varchar(255) NOT NULL,
    CustomerID varchar(255) NOT NULL,
    
);
alter table Orders drop column soldQuantity ;

SELECT * FROM [Orders] 


--CREATE TABLE products (
--    ProductID INT IDENTITY(1,1),
--    Name VARCHAR(255) NOT NULL,
--    price INT NOT NULL,
--    Discription VARCHAR(255) NOT NULL
--);

--CREATE TABLE Employee (
--    EmployeeID INT IDENTITY(1,1),
--    FirstName VARCHAR(255) NOT NULL,
--    MiddleInitial VARCHAR(255),
--    LastName VARCHAR(255) NOT NULL,
--    salary INT,
--    JobID INT 
--);
