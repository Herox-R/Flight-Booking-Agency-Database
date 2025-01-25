/*=================================================================
FileName: Create_Triggers.sql
Programmer Name: Sylvester N
Description: This file creates a trigger for the FlightsBooking
=================================================================*/


USE FlightBookingAgency
GO 


--This trigger displays a message after a new record is added to the Flight table
CREATE TRIGGER tr_Flights
ON Flight
AFTER INSERT 
AS 
    PRINT 'A new Flight Record has been entered.'
GO 


--Testing the trigger 
INSERT INTO Flight(flightNumber,flightDestination,flightCapacity,flightName,flightTime,flightDate,flightClass,flightPrice,flightAvailability)
VALUES('390','Washington DC',250,'SA Airways','19:00','2023/06/12','3rd',3000,'Yes')
GO
