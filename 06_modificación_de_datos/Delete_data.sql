 DELETE FROM SalesLT.CallLog
 WHERE CallTime < DATEADD(dd, -7, GETDATE());