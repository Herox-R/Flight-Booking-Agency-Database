/*=================================================================
FileName: Create_Delete_Procedure.sql
Programmer Name: Sylvester N
Description: This file creates a delete procedure that allows us to remove a specified customer from our records
=================================================================*/

USE FlightBookingAgency
GO 

CREATE PROCEDURE sp_DeleteTicket--Creating a procedure to delete a ticket
@ticketReservation VARCHAR(30)--Data taken from the users
	

--Checking if the ticket number has been or if it has expired.
AS
SELECT * FROM Ticket
WHERE ticketReservation = 'Not Registrated'
DELETE FROM Ticket
WHERE ticketReservation = 'Not Registrated'


--Testing the delete procedure
EXEC sp_DeleteTicket
GO
--Testing if the delete is successful
SELECT *
FROM Ticket
GO 

--DROP PROCEDURE sp_DeleteTicket

