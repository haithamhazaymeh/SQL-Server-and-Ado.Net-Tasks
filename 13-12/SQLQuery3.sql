CREATE TABLE customers (
	CustomerID INT IDENTITY(1,1),
	FirstName VARCHAR(255) NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	PRIMARY KEY(CustomerID)
);


CREATE TABLE orders (
	OrderID INT IDENTITY(1,1),
	CustomerID INT NOT NULL,
	soldQuantity int NOT NULL,
	PRIMARY KEY(OrderID),
	FOREIGN KEY (CustomerID) REFERENCES customers
);

CREATE TABLE products (
	ProductID INT IDENTITY(1,1),
	OrderID INT,
	Name VARCHAR(255) NOT NULL,
	price INT NOT NULL,
	PRIMARY KEY (ProductID),
	FOREIGN KEY (OrderID) REFERENCES orders
);

INSERT INTO customers (FirstName, LastName)
VALUES ('haitham','hazaymeh'), ('ali','mohammed');

INSERT INTO orders (CustomerID, soldQuantity)
VALUES (1,3), (1,4), (1,2), (2,7);

INSERT INTO products (OrderID, Name, price)
VALUES (1,'mansaf',12), (1,'kabab',24), (2,'rice',12), (3,'rice',12),(3,'kabab',12), (4,'rice',12), (4,'banana',6), (4,'apple',6);

INSERT INTO customers (FirstName, LastName)
VALUES ('khaled','haz');

select * from customers
JOIN orders ON customers.CustomerID = orders.CustomerID
JOIN products ON products.OrderID = orders.OrderID;


select * from customers
LEFT JOIN orders ON customers.CustomerID = orders.CustomerID
LEFT JOIN products ON products.OrderID = orders.OrderID;