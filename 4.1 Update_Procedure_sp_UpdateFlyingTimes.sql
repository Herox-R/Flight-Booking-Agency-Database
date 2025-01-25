 /*=================================================================
FileName: Create_sp_UpdateFlyingTimes.sql
Programmer Name: Sylvester N
Description: This file creates an update procedure that allows us to the flying times as requested by customers basde on demand.
=================================================================*/

USE FlightBookingAgency
GO

--The following stored procedure will be used to update
CREATE PROCEDURE sp_UpdateFlyingTimes
     (--User supplied values  
	 @flightTime TIME
)
AS
--This code will update the flying times when customers request it
UPDATE Flight
SET @flightTime = @flightTime --Updates the flying times 
WHERE @flightTime = @flightTime
GO 

EXEC sp_UpdateFlyingTimes @FlightTime = '14:00'
GO 
--Testing if the Update is succesful
SELECT *
FROM Flight
GO