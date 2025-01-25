/*FileName: sp_Report.sql
Programmer Name: Sylvester N
Description: The following script makes a print procedure to show the details of a specified 
flight class and customerNames*/
USE FlightBookingAgency
GO

CREATE PROCEDURE sp_Report--Creating the procedure
@CustomerID BIGINT

AS 
BEGIN --variables declaring stored procedure--

DECLARE @flightNumber VARCHAR(10)
DECLARE @flightDestination VARCHAR(50)
DECLARE @flightName VARCHAR(30)
DECLARE @flightDate DATE
DECLARE @flightPrice INT
DECLARE @customerNames VARCHAR(30)
DECLARE @counter INT

SELECT 
@customerNames = @customerNames,
@flightNumber = flightNumber,
@flightDestination = flightDestination,
@flightDate = flightDate,
@flightPrice = flightPrice
FROM Flight
WHERE flightNumber = @flightNumber

SELECT @customerNames = @customerNames
FROM Customer

PRINT'FLIGHT BOOKING REPORT:'
PRINT'_________________________________'
PRINT''
PRINT'Book ID:' + @customerID
PRINT'customer Names: ' + @customerNames   PRINT 'date: ' + CONVERT(varchar, @flightDate)
PRINT'flight Number:'   + @flightNumber    PRINT 'flightDestination:' + @flightDestination
PRINT''
PRINT'No.               CustomerNames             FlightPrice'
PRINT'__________________________________________________________________'
RETURN

DECLARE flightData_Cursor CURSOR
FOR SELECT customerNames
FROM Customer

FETCH NEXT FROM flightData_Cursor 
INTO
@customerName,@flightNumber,

SET @counter = 1

WHILE @@FETCH_STATUS = 0 
BEGIN --we begin printing--
  PRINT  ( CONVERT(VARCHAR,@counter) + SPACE(5-LEN(@counter)) + (@customerNames + SPACE(15-LEN(@customerNames)) 
 + +@flightClass+ SPACE(15-LEN(@flightClass))))

		SET @counter = @counter + 1
         
    OPEN flightData_Cursor 
		--Retrieves the next record--
		FETCH NEXT FROM flightData_Cursor
		INTO @customerNames,@flightNumber,@flightClass
	END
	Print ''

	--Closes and deallocates the cursor
	CLOSE flightData_Cursor
	DEALLOCATE flightData_Cursor

END 
GO


-- Testing our newly created procedure
EXEC sp_Report 1
GO

