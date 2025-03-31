USE [Supplier customer database]

CREATE TABLE Suppliers(
SupplierID varchar(15) primary key,
DeliveryDate varchar(15),
DeliveryID varchar(15) ,
CustomerID varchar(15) 
);

INSERT INTO Suppliers (SupplierID,DeliveryDate,DeliveryID,CustomerID)
VALUES ('S33','07-08-2022','D55','C66'),
('S34','04-08-2022','D56','C67'),
('S35','05-07-2022','D57','C68'),
('S36','06-07-2022','D58','C69'),
('S37','04-07-2022','D59','C70'),
('S38','07-07-2022','D60','C71'),
('S39','08-07-2022','D61','C72'),
('S40','02-07-2022','D62','C73'),
('S41','03-07-2022','D63','C74'),
('S42','04-07-2022','D64','C75'),
('S43','08-07-2022','D65','C76'),
('S44','07-07-2022','D66','C77'),
('S45','08-07-2022','D67','C78'),
('S46','08-07-2022','D68','C79'),
('S47','09-07-2022','D69','C80'),
('S48','05-07-2022','D70','C81'),
('S49','06-07-2022','D71','C82'),
('S50','04-07-2022','D72','C83'),
('S51','07-07-2022','D73','C84'),
('S52','09-07-2022','D74','C85'),
('S53','03-07-2022','D75','C86'),
('S54','04-07-2022','D76','C87');




CREATE TABLE Customers (
CustomerID varchar(15) primary key,
CustomerName char(20),
ProductID varchar(15),
DeliveryDate varchar(15),
CustomerLocation varchar(15),
DeliveryFee int,
SupplierID varchar(15),
DeliveryContact varchar(15)
);

INSERT INTO Customers (CustomerID,CustomerName,ProductID,DeliveryDate,CustomerLocation,DeliveryFee,SupplierID,DeliveryContact)
VALUES ('C66','Ann Kibe','P1','07-08-2022','54RT','160','S33','0756895498'),
('C67','John Kibe','P2','04-08-2022','45ST','250','S34','0765789876'),
('C68','Joan Cindy','P3','05-07-2022','44TY','50','S35','0786987654'),
('C69','Spencer Nyamu','P4','06-07-2022','43UY','70','S36','0745679876'),
('C70','Vally Owen','P5','04-07-2022','65RT','160','S37','0768943564'),
('C71','Anita Kering','P6','07-07-2022','63UT','210','S38','0111998765'),
('C72','James Ndungu','P7','08-07-2022','34UT','80','S39','0756398765'),
('C73','Susan Harriet','P8','02-07-2022','32YU','70','S40','0723765946'),
('C74','Andy Kariuki','P9','03-07-2022','67UT','20','S41','0745342451'),
('C75','Daniel Omondi','P10','04-07-2022','36UT','100','S42','0734567652'),
('C76','Joy Ann','P11','08-07-2022','47YU','270','S43','0786576547'),
('C77','Tony Kabi','P12','07-07-2022','39UT','230','S44','0786498765'),
('C78','Amber Ray','P13','08-07-2022','67UY','200','S45','0786234543'),
('C79','Sandy Moh','P14','08-07-2022','56UT','230','S46','0786298134'),
('C80','Joan Owy','P15','09-07-2022','29UT','300','S47','0723098765'),
('C81','Ony Arrt','P16','05-07-2022','31UT','400','S48','0754023870'),
('C82','Aorom Muity','P17','06-07-2022','3UT','200','S49','0743876534'),
('C83','Wandy Wanja','P18','04-07-2022','9YU','180','S50','0782346578'),
('C84','Amby Ary','P19','07-07-2022','23UT','260','S51','0785645432'),
('C85','Abel Mutua','P20','09-07-2022','67UY','65','S52','0732456654'),
('C86','Fidel Mwangi','P21','03-07-2022','76UY','700','S53','0756098765'),
('C87','Baron Mwangi','P22','04-07-2022','65UT','500','S54','0756213454');



CREATE TABLE Delivery(
DeliveryID varchar(15) primary key,
DeliveryDate varchar(20),
CustomerLocation varchar(15),
DeliveryFee int,
SupplierID varchar(15),
DeliveryContact varchar(20)
);

INSERT INTO Delivery (DeliveryID,DeliveryDate,CustomerLocation,DeliveryFee,SupplierID,DeliveryContact)
VALUES ('D55','07-08-2022','54RT','160','S33','0756895498'),
('D56','04-08-2022','45ST','250','S34','0765789876'),
('D57','05-07-2022','44TY','50','S35','0786987654'),
('D58','06-07-2022','43UY','70','S36','0745679876'),
('D59','04-07-2022','65RT','160','S37','0768943564'),
('D60','07-07-2022','63UT','210','S38','0111998765'),
('D61','08-07-2022','34UT','80','S39','0756398765'),
('D62','02-07-2022','32YU','70','S40','0723765946'),
('D63','03-07-2022','67UT','20','S41','0745342451'),
('D64','04-07-2022','36UT','100','S42','0734567652'),
('D65','08-07-2022','47YU','270','S43','0786576547'),
('D66','07-07-2022','39UT','230','S44','0786498765'),
('D67','08-07-2022','67UY','200','S45','0786234543'),
('D68','08-07-2022','56UT','230','S46','0786298134'),
('D69','09-07-2022','29UT','300','S47','0723098765'),
('D70','05-07-2022','31UT','400','S48','0754023870'),
('D71','06-07-2022','3UT','200','S49','0743876534'),
('D72','04-07-2022','9YU','180','S50','0782346578'),
('D73','07-07-2022','23UT','260','S51','0785645432'),
('D74','09-07-2022','67UY','65','S52','0732456654'),
('D75','03-07-2022','76UY','700','S53','0756098765'),
('D76','04-07-2022','65UT','500','S54','0756213454');





CREATE TABLE Product (
ProductID varchar(15) primary key,
ProductName char(20),
SupplierID varchar(15),
DeliveryDate varchar(15),
CustomerID varchar (15) 
);

INSERT INTO Product(ProductID,ProductName,SupplierID,DeliveryDate,CustomerID)
VALUES  ('P1','TV','S33','07-08-2022','C66'),
('P2','Radio','S34','04-08-2022','C67'),
('P3','Perfume','S35','05-07-2022','C68'),
('P4','Campstove','S36','06-07-2022','C69'),
('P5','VCR','S37','04-07-2022','C70'),
('P6','Jug','S38','07-07-2022','C71'),
('P7','Iphone11','S39','08-07-2022','C72'),
('P8','SamsungA23','S40','02-07-2022','C73'),
('P9','Oppo','S41','03-07-2022','C74'),
('P10','ThermosFask','S42','04-07-2022','C75'),
('P11','Tissuepack','S43','08-07-2022','C76'),
('P12','Plastic cups','S44','07-07-2022','C77'),
('P13','InfinisS5','S45','08-07-2022','C78'),
('P14','Samsung S22','S46','08-07-2022','C79'),
('P15','BathingSoap','S47','09-07-2022','C80'),
('P16','Plastic plates','S48','05-07-2022','C81'),
('P17','Loron','S49','06-07-2022','C82'),
('P18','Coffeetable','S50','04-07-2022','C83'),
('P19','Nura wig','S51','07-07-2022','C84'),
('P20','Baking Flour','S52','09-07-2022','C85'),
('P21','Lotion','S53','03-07-2022','C86'),
('P22','Flower vase','S54','04-07-2022','C87');





CREATE TABLE CustomerAddress(
CustomerID varchar(15) primary key,
CustomerName char(20),
CustomerLocation varchar(15),
CustomerContact varchar(15)
);

INSERT INTO CustomerAddress(CustomerID,CustomerName,CustomerLocation,CustomerContact)
VALUES ('C66','Ann Kibe','54RT','0756895496'),
('C67','John Kibe','45ST','0765789870'),
('C68','Joan Cindy','44TY','0786987658'),
('C69','Spencer Nyamu','43UY','0745679874'),
('C70','Vally Owen','65RT','0768943568'),
('C71','Anita Kering','63UT','0111998766'),
('C72','James Ndungu','34UT','0756398760'),
('C73','Susan Harriet','32YU','0723765940'),
('C74','Andy Kariuki','67UT','0745342456'),
('C75','Daniel Omondi','36UT','0734567658'),
('C76','Joy Ann','47YU','0786576540'),
('C77','Tony Kabi','39UT','0786498760'),
('C78','Amber Ray','67UY','0786234540'),
('C79','Sandy Moh','56UT','0786298130'),
('C80','Joan Owy','29UT','0723098760'),
('C81','Ony Arrt','31UT','0754023879'),
('C82','Aorom Muity','3UT','0743876530'),
('C83','Wandy Wanja','9YU','0782346570'),
('C84','Amby Ary','23UT','0785645430'),
('C85','Abel Mutua','67UY','0732456650'),
('C86','Fidel Mwangi','76UY','0756098760'),
('C87','Baron Mwangi','65UT','0756213450');



USE [Supplier customer database]

BEGIN TRAN
SAVE TRAN CustomerAddress;
UPDATE CustomerAddress
SET CustomerLocation='68U'
WHERE CustomerID='C85';
 
ROLLBACK;
UPDATE CustomerAddress
SET CustomerLocation='65U'
WHERE CustomerID='C85';

BEGIN TRAN
UPDATE CustomerAddress
SET CustomerLocation='65U'
WHERE CustomerID='C85';
COMMIT TRAN;


/*QUERIES*/
USE [Supplier customer database]
SELECT*FROM Suppliers
WHERE SupplierID='S34'AND DeliveryDate='04-08-2022';


DELETE FROM CustomerAddress
WHERE CustomerName='Joan Cindy';

UPDATE CustomerAddress
SET CustomerName='Anita Mwangi'
WHERE CustomerID='C85';


SELECT SUM (DeliveryFee) AS DeliveryFee
FROM Delivery

SELECT MAX(DeliveryFee) AS DeliveryFee
FROM Delivery

SELECT MIN (DeliveryFee) AS DeliveryFee
FROM Delivery


SELECT CustomerLocation,CustomerLocation
FROM Customers
WHERE CustomerLocation='UT' OR  CustomerLocation ='YU';

ALTER TABLE Customers
DROP COLUMN CustomerName;

ALTER TABLE Customers
ALTER COLUMN CustomerLocation varchar(20);

SELECT ProductID,ProductName
FROM Product
WHERE ProductID='P20' AND ProductName='BakingFlour';