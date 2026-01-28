-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Modificación de datos
-- Descripción: Consultas de eliminación de datos


-- ELIMINAMOS FILAS DE LA TABLA QUE CUMPLAN LA CLÁUSULA WHERE
DELETE FROM SalesLT.CallLog
 WHERE CallTime < DATEADD(dd, -7, GETDATE()); -- Elimina las filas en las que la fecha sea anterior a hace 7 días


-- ELIMINAMOS TODAS LAS FILAS DE LA TABLA
 TRUNCATE TABLE SalesLT.CallLog;
