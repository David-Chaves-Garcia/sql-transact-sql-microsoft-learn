 CREATE TABLE SalesLT.CallLog
 (
     CallID int IDENTITY PRIMARY KEY NOT NULL,
     CallTime datetime NOT NULL DEFAULT GETDATE(),
     SalesPerson nvarchar(256) NOT NULL,
     CustomerID int NOT NULL REFERENCES SalesLT.Customer(CustomerID),
     PhoneNumber nvarchar(25) NOT NULL,
     Notes nvarchar(max) NULL
 );