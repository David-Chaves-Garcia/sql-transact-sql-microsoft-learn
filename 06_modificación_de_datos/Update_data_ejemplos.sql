-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Modificación de datos
-- Descripción: Consultas de actualización de datos

-- ACTUALIZAMOS TODOS LOS VALORES DE UNA COLUMNA DONDE SE CUMPLA LA CLÁUSULA WHERE
UPDATE SalesLT.CallLog
 SET Notes = 'No notes'
 WHERE Notes IS NULL;


-- ACTUALIZAMOS MÚLTIPLES COLUMNAS A LA VEZ
UPDATE SalesLT.CallLog
 SET SalesPerson = '', PhoneNumber = ''


 -- ACTUALIZACIÓN BASADA EN UNA CONSULTA SELECT
 UPDATE SalesLT.CallLog
 SET SalesPerson = c.SalesPerson, PhoneNumber = c.Phone
 FROM SalesLT.Customer AS c
 WHERE c.CustomerID = SalesLT.CallLog.CustomerID;
