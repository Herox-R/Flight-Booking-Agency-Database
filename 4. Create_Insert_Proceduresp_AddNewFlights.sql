/*=================================================================
FileName: Create_Insert_sp_AddNewFlights.sql
Programmer Name: Sylvester N
Description: This file creates an insert procedure that allows us to add new flights.
=================================================================*/

USE FlightBookingAgency
GO

-- creating stored procedure-- 
CREATE PROCEDURE sp_AddNewFlights
    --User supplied values
	@flightNumber VARCHAR(10) ,
	@flightDestination VARCHAR(50),
	@flightCapacity INT ,
	@flightName VARCHAR(30),
	@flightTime TIME,
	@flightDate DATE,
	@flightClass VARCHAR(15),
	@flightPrice MONEY ,
	@flightAvailability VARCHAR(15)
AS
BEGIN 


--The below lines does that actual insert of the new flight
INSERT INTO Flight(flightNumber,flightDestination, flightCapacity, flightName,flightTime,flightDate,flightClass,flightPrice,flightAvailability)
	VALUES(@flightNumber,@flightDestination, @flightCapacity, @flightName,@flightTime,@flightDate, @flightClass, @flightPrice, @flightAvailability) --Note that we are using the variables here

END 
GO

--Testing our newly created procedure
EXEC sp_AddNewFlights '220','Tokyo',300,'SA Airways','17:00','2023/05/25','3rd',3000,'Yes'
GO
--Testing if the insert is successful
SELECT *
FROM Flight
GO
