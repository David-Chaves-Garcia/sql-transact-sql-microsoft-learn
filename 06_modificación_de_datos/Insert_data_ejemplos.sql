-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Modificación de datos
-- Descripción: Aprender a insertar datos

-- CREACIÓN DE UNA TABLA
CREATE TABLE SalesLT.CallLog
 (
     CallID int IDENTITY PRIMARY KEY NOT NULL, -- Establecemos una identidad de clave primaria
     CallTime datetime NOT NULL DEFAULT GETDATE(),
     SalesPerson nvarchar(256) NOT NULL,
     CustomerID int NOT NULL REFERENCES SalesLT.Customer(CustomerID),
     PhoneNumber nvarchar(25) NOT NULL,
     Notes nvarchar(max) NULL

 );


-- VISUALIZACIÓN DE LA TABLA VACÍA CREADA
SELECT * FROM SalesLT.CallLog;


-- INSERTAR UNA NUEVA FILA EN LA TABLA CREADA
 INSERT INTO SalesLT.CallLog
 VALUES
 ('2015-01-01T12:30:00', 'adventure-works\pamela0', 1, '245-555-0173', 'Returning call re: enquiry about delivery');
-- No es necesario especificar valores para la columna que definimos como IDENTITY PRIMARY KEY,
-- ya que se va a establecer un valor por defecto (empezando en 1 en secuencia ascendente)


-- INSERTAMOS UNA NUEVA FILA EN LA TABLA CREADA
 INSERT INTO SalesLT.CallLog
 VALUES
 (DEFAULT, 'adventure-works\david8', 2, '170-555-0127', NULL);
-- La primera columna tendrá el valor DEFAULT que definimos al crear la tabla, es decir, la fecha actual.


-- INSERTAMOS UNA NUEVA FILA EN LA TABLA CREADA
 INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber)
 VALUES
 ('adventure-works\jillian0', 3, '279-555-0130');
-- Definimos a qué columnas harán referencia los valores insertados.
-- Las columnas que no especifiquemos tendrán valores NULL o DEFAULT.


-- INSERTAMOS 2 FILAS AL MISMO TIEMPO
 INSERT INTO SalesLT.CallLog
 VALUES
 (DATEADD(mi,-2, GETDATE()), 'adventure-works\jillian0', 4, '710-555-0173', NULL),
 (DEFAULT, 'adventure-works\shu0', 5, '828-555-0186', 'Called to arrange deliver of order 10987');


-- INSERTAMOS EN LA TABLA EL RESULTADO DE UNA CONSULTA SELECT
 INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber, Notes)
 SELECT SalesPerson, CustomerID, Phone, 'Sales promotion call'
 FROM SalesLT.Customer
 WHERE CompanyName = 'Big-Time Bike Store';


-- INSERTAMOS UNA NUEVA FILA EN LA TABLA CREADA
 INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber)
 VALUES
 ('adventure-works\josé1', 10, '150-555-0127');

 SELECT SCOPE_IDENTITY() AS LatestIdentityInDB, -- DEVUELVE EL ÚLTIMO VALOR CREADO DE IDENTITY EN LA DB PARA CUALQUIER TABLA
        IDENT_CURRENT('SalesLT.CallLog') AS LatestCallID; -- DEVUELVE EL ÚLTIMO VALOR CREADO DE IDENTITY EN LA TABLA ESPECIFICADA


-- ASIGNAMOS MANUALMENTE UN VALOR A LA COLUMNA IDENTITY PARA LA NUEVA FILA INSERTADA
 SET IDENTITY_INSERT SalesLT.CallLog ON; -- Habilita la inserción explícita de valores IDENTITY

 INSERT INTO SalesLT.CallLog (CallID, SalesPerson, CustomerID, PhoneNumber)
 VALUES
 (20, 'adventure-works\josé1', 11, '926-555-0159'); -- Tendrá un valor de 20 la columna IDENTITY

 SET IDENTITY_INSERT SalesLT.CallLog OFF; -- Desactiva la opción de insertar explícitamente valores IDENTITY
