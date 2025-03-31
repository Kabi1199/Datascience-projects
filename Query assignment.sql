USE AdventureWorks2014

SELECT MAX(ListPrice)
FROM [Production].[ProductListPriceHistory]
/*MAXIMUM*/
USE  AdventureWorks2014

SELECT MIN(ListPrice)
FROM [Production].[ProductListPriceHistory]
/*MINIMUM*/
USE AdventureWorks2014

SELECT AVG(Rate)
FROM [HumanResources].[EmployeePayHistory]
/*AVERAGE*/
USE AdventureWorks2014

SELECT*FROM [Production].[ProductModel]
WHERE Name='HL Mountain Frame' AND ProductModelID='5';
/*AND*/
USE AdventureWorks2014

SELECT*FROM Person.StateProvince
WHERE CountryRegionCode = 'CA' OR CountryRegionCode = 'US';
/*OR*/
USE AdventureWorks2014

ALTER TABLE [Production].[Culture]
ADD CultureName varchar(15);
/*ALTER ADD*/
USE AdventureWorks2014

SELECT SUM(Rate)
FROM HumanResources.EmployeePayHistory
/*SUM*/
USE AdventureWorks2014

DELETE FROM [Person].[ContactType]
WHERE Name ='Accounting Manager';
/*DELETE*/
USE AdventureWorks2014

UPDATE [Person].[PersonPhone]
SET PhoneNumber ='675-111-5674'
WHERE BusinessEntityID = '5' ;
/*UPDATE*/
USE AdventureWorks2014

INSERT INTO [Person].[PersonPhone] (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate)
VALUES('201','211-140-2222','3','2009-02-07')
/*INSERT INTO*/
USE [AdventureWorks2014]

SELECT*FROM  [Person].[PhoneNumberType]
WHERE Name='Home'
/*SELECT*/