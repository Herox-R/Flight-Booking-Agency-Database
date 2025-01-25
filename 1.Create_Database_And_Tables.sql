 /*=============================================================
FileName: Create_Database_And_Tables.sql
Programmer: Sylvester N
Description: This file will create the database and tables with the necessary constraints.
=============================================================*/

USE Master 
GO

--If this database exist, we will delete it first
IF EXISTS(SELECT name FROM master.dbo.sysdatabases
	       WHERE name = 'FlightBookingAgency')
BEGIN
	DROP DATABASE FlightBookingAgency
	PRINT 'The database has been deleted'
END

--Creating the database
CREATE DATABASE FlightBookingAgency
ON Primary
	(NAME = 'FlightBookingAgency_Data',
	 FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\FlightsBooking_data.mdf',
	 SIZE = 5MB,
	 FILEGROWTH = 10%)

LOG ON
	(NAME = 'FlightBookingAgency_Log',
	 FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\FlightsBooking_Log.ldf',
	 SIZE = 5MB,
	 FILEGROWTH = 10%)
GO

USE FlightBookingAgency
GO

CREATE TABLE Flight(
    flightNumber VARCHAR(10) NOT NULL,
	flightDestination VARCHAR(50) NOT NULL,
	flightCapacity INT NOT NULL,
	flightName VARCHAR(30) NOT NULL,
	flightTime TIME NOT NULL,
	flightDate DATE NOT NULL,
	flightClass VARCHAR(15) NOT NULL,
	flightPrice INT NOT NULL,
	flightAvailability VARCHAR(15) NOT NULL,
	CONSTRAINT FlightNumber_PK PRIMARY KEY (flightNumber)
)
GO 

PRINT 'The Flight Table have been created'
GO 

CREATE TABLE Customer( 
      customerID BIGINT NOT NULL,
	  customerNames VARCHAR(30) NOT NULL,
	  customerAge INT NOT NULL,
	  customerEmail VARCHAR(30) NOT NULL,
	  customerNumber VARCHAR(15) NOT NULL,
	  customerAddress VARCHAR(50) NOT NULL,
	  flightNumber VARCHAR(10) NOT NULL,
	  PRIMARY KEY (customerID) ,
	  CONSTRAINT flightNumber_FK FOREIGN KEY (flightNumber) REFERENCES Flight(flightNumber),
)
GO

PRINT 'The Customer Table have been created' 
GO 

CREATE TABLE Ticket( 
       ticketID INT NOT NULL,
	   ticketClass VARCHAR(15) NOT NULL,
	   ticketReservation VARCHAR(30) NOT NULL,
	   ticketDiscount VARCHAR(15) NOT NULL,
	   PRIMARY KEY (ticketID),
) 
GO

PRINT 'The Ticket Table have been created'
GO

CREATE TABLE CustomerDetails(
          customerID BIGINT NOT NULL,
		  ticketID INT NOT NULL,
		  quantity INT NOT NULL,
		  --Creating a composite primary key for an intersection table 
		  PRIMARY KEY(customerID,ticketID),
		  CONSTRAINT CustomerID_FK FOREIGN KEY (customerID) REFERENCES Customer(customerID),
		  CONSTRAINT TicketID_FK FOREIGN KEY (ticketID) REFERENCES Ticket(ticketID),
		  CONSTRAINT CheckQuantity CHECK (quantity > 0) --Checks if the user entered a value higher than 0
)
GO

PRINT 'The CustomerDetails Table have been created'
GO 
