/*====================================================
FileName: vw_Flight.sql
Programmer Name: Sylvester N
Description: This file will be used to create vw_Flight View for flights appearing on the website, their availability and prices per reservation.
=====================================================*/

USE FlightBookingAgency
GO

--First checking if the view exists, if it does, it's drop it
IF EXISTS (SELECT Table_Name FROM Information_Schema.Views
	       WHERE Table_Name = 'vw_Flight')

BEGIN 
    DROP VIEW vw_Flight
	  PRINT 'vw_Flight have been deleted'
END 
GO
--Creating the vw_Flight View
CREATE VIEW vw_Flight
AS 
SELECT dbo.Flight.flightAvailability,dbo.Flight.flightPrice
FROM dbo.Flight
GO 
--Testing the View
SELECT * 
FROM vw_Flight
GO