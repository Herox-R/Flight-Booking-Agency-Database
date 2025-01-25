/*=================================================================
FileName: Create_Indexes.sql
Programmer Name: Sylvester N
Description: This file creates two indexes for FlightBookingAgency
=================================================================*/

USE FlightBookingAgency
GO

--Creating a non-clustered index on the Flight column
CREATE INDEX idx_Flight
ON Flight(flightNumber,flightCapacity,flightName,flightTime,flightClass,flightPrice,flightAvailability)
GO

--Creating a non-clustered index --
CREATE INDEX idx_Customer
ON Customer(customerID,customerNames,customerAge,customerEmail,customerNumber,customerAddress,flightNumber)
GO

--Creating a non-clustered index--
CREATE INDEX idx_Ticket
ON Ticket(ticketID,ticketClass,ticketReservation,ticketDiscount,ticketExpiryDate,ticketUsed)
GO

--Creating a non-clustered index --
CREATE INDEX idx_
ON CustomerDetails(customerID,ticketID,quantity)
GO