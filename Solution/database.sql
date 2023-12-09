create database mycompany;

use mycompany;

CREATE TABLE Orderzz (
  OrderID INTEGER PRIMARY KEY ,
  CustomerID INT NOT NULL,
  EmployeelD INT NOT NULL,
  OrderDate DATE NOT NULL,
  ShipperID INT NOT NULL
);

INSERT INTO Orderzz (OrderId, CustomerID, EmployeelD, OrderDate, ShipperID)
VALUES (10308, 2, 7, '1996-09-18', 3),
(10309, 37, 3, '1996-09-19', 1),
(10310, 77, 8, '1996-09-20', 2);



CREATE TABLE Customerss (
  CustomerID INTEGER PRIMARY KEY AUTO_INCREMENT,
  CustomerName VARCHAR(255) NOT
 
NULL,
  ContactName VARCHAR(255),
  Address VARCHAR(255),
  City VARCHAR(255),
  PostalCode VARCHAR(255),
  Country VARCHAR(255)
);

INSERT INTO Customerss (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
  ('Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
  ('Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
  ('Antonio Moreno Taqueria', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico');


CREATE TABLE Shippers (
  ShipperID INT PRIMARY KEY AUTO_INCREMENT,
  ShipperName VARCHAR(50) NOT NULL,
  Phone VARCHAR(50) NOT NULL
);

INSERT INTO Shippers VALUES 
  (1, 'Speedy Express', '(503) 555-9831'),
  (2, 'United Package', '(503) 555-3199'),
  (3, 'Federal Shipping', '(503) 555-9931');
  
  
-- Write a query to get the list of all the orders placed by "Ana" after 1996 and its shipper details
SELECT
    orderzz.OrderID,
    customerss.CustomerName,
    orderzz.OrderDate,
    shippers.ShipperName
FROM
    orderzz
JOIN  customerss ON orderzz.CustomerID = customerss.CustomerID
JOIN  shippers ON orderzz.ShipperID = shippers.ShipperID
WHERE
    customerss.CustomerName LIKE 'Ana%'
    AND orderzz.OrderDate > '1996-01-01';


