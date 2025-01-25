/*====================================================================================================
FileName: vw_AffordableFlight.sql
Programmer: Sylvester N
Description: This file will be used to create vw_AffordableFlight selecting the top three flights with unchanged reservation and booking price. 
======================================================================================================*/

USE FlightBookingAgency
GO
--First checking if the view exists, if it does, it's drop it
IF EXISTS (SELECT Table_Name FROM Information_Schema.Views
	       WHERE Table_Name = 'vw_AffordableFlight')
BEGIN 
        DROP VIEW vw_AffordableFlight
	    PRINT 'vw_AffordableFlight  been deleted'
END
GO
--Create a view that will display AffordableFlight
CREATE VIEW vw_AffordableFlight
AS
SELECT TOP 3  Flight.flightprice,Flight.flightClass,Flight.flightNumber
FROM Flight

ORDER BY flightPrice--Grouping By flightPrice Order
GO 

SELECT * FROM vw_AffordableFlight--tests the view
GO