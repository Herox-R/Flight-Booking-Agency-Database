/*====================================================================================================
FileName:  vw_SeniorUsers.sql
Programmer: Sylvester N
Description: This file will be used select senior users who qualify for a discount based on their age
======================================================================================================*/

USE FlightBookingAgency
GO

--First checking if the view exists, if it does, it's drop it
IF EXISTS (SELECT Table_Name FROM Information_Schema.Views
	       WHERE Table_Name = 'vw_SeniorUsers')
BEGIN 
       DROP VIEW vw_SeniorUsers
	   PRINT 'vw_SeniorUsers  been deleted'
END 
GO
--Creating the vw_SeniorUsers
CREATE VIEW vw_SeniorUsers
AS
SELECT *
FROM Customer
WHERE  CustomerAge > 65
GO

--Testing the view
SELECT * 
FROM vw_SeniorUsers
GO

