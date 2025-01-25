/*=================================================================== 
FileName: Sample_Data_Inserts.sql
Programmer: Sylvester N
Description: This file will insert sample data into the database.
=====================================================================*/

USE FlightBookingAgency
GO

INSERT INTO Flight(flightNumber,flightDestination,flightCapacity,flightName,flightTime,flightDate,flightClass,flightPrice,flightAvailability)
VALUES('101','London',200,'SA Airways','9:00','2023/04/16','3rd',3000,'Yes'),
      ('102','Cape Town',400,'SA Express','20:00','2023/04/23','2nd',6000,'No'),
	  ('103','Brooklyn',600,'Air Jets','4:00','2023/04/14','1st',10000,'Yes'),
	  ('104','New York',550,'American Airlines','16:00','2023/04/10','3rd',2500,'No'),
	  ('105','Paris',187,'Spice Jet','21:00','2023/04/05','2nd',7500,'Yes'),
	  ('106','Canada',537,'SouthWest Airlines','18:00','2023/04/15','1st',9000,'Yes')
GO

INSERT INTO Customer(customerID,customerNames,customerAge,customerEmail,customerNumber,customerAddress,flightNumber)
VALUES(0206115033087,'Jane Doe',21,'Jane1@gmail.com','0636250010','12Esselen Street,Potchefstroom,2431','101'),
      (9702065184082,'Kurt Wallence',26,'Kurt@23gmail.com','0765068388','10Tuin street,Orkney,2619','102'),
	  (5711270082086,'Chris Evans',66,'Evans89@gmail.com','0738343996','3Voor street,New York,4512','103'),
	  (5405071204188,'Anna Kendrick',69,'kdot@09@gmail.com','0816746486','16President street,London,9023','104'),
	  (5012110196089,'Will Smith',73,'Will04@gmail.com','0732574275','4Hoffman street,Brookyln,8426','105'),
	  (9904085039085,'Annie Harper',24,'Annie02@gmail.com','0875463254','5Malbert street,Gotham,6431','106')
GO

INSERT INTO Ticket(ticketID,ticketClass,ticketReservation,ticketDiscount)
VALUES(001,'3rd','Registrated','Null'),
      (002,'2nd','Not Registrated','Null'),
	  (003,'1st','Registrated','Senior'),
	  (004,'3rd','Not Registrated','Senior'),
	  (005,'2nd','Registrated','Senior'),
	  (006,'1st','Registrated','Null',)
GO

INSERT INTO CustomerDetails(customerID,ticketID,quantity)
VALUES(0206115033087,001,200),
      (9702065184082,002,400),
	  (5711270082086,003,600),
	  (5405071204188,004,550),
	  (5012110196089,005,187),
	  (9904085039085,006,537)
GO
