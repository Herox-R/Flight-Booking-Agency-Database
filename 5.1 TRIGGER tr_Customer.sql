/*=================================================================
FileName: Create_Triggers.sql
Programmer Name: Sylvester N
Description: This file creates a trigger for the FlightsBooking
=================================================================*/


USE FlightBookingAgency
GO 

--This trigger displays a message after a new record is added to the Customer table
CREATE TRIGGER tr_Customer
ON Customer 
AFTER INSERT 
AS  
     PRINT 'A new Customer Record has been entered.'
GO 

--Testing the trigger 

INSERT INTO Customer(customerID,customerNames,customerAge,customerEmail,customerNumber,customerAddress,flightNumber)
VALUES(0306115033087,'Bruce Wayne',20,'Wayne8@gmail.com','0765067328','12Esselen Street,Potchefstroom,2431','390')
GO
