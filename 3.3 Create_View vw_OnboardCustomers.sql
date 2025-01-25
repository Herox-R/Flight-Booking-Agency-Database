/*====================================================
FileName: vw_OnBoardCustomers.sql
Programmer Name:Sylvester N
Description: This file will be used to create a view for all member names as well as the total number of classes that each member will attend 
=====================================================*/
Use FlightBookingAgency
GO

--First checking if the view exists, if it does, it's drop it
IF EXISTS (SELECT Table_Name FROM Information_Schema.Views
	       WHERE Table_Name = 'vw_OnboardCustomers')
BEGIN 
       DROP VIEW vw_OnboardCustomers
	   PRINT 'vw_OnboardCustomers been deleted'
END 
GO
--Creating the vw_OnBoardCustomers
CREATE VIEW vw_OnBoardCustomers
AS
SELECT CustomerNames, COUNT(*) AS TotalClasses
FROM Customer
GROUP BY customerNames
GO

--Testing the view
SELECT *
FROM vw_OnBoardCustomers
GO