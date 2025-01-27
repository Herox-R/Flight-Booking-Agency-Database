# Flight Booking Agency Database
This set of SQL scripts helps to create a flight booking system by defining a database, tables, and relationships between them. It also includes stored procedures, views, triggers, and indexes to manage and manipulate flight booking data efficiently.

1. Database Creation:
- The script begins by creating a new database called FlightBookingAgency.
2. Table Creation:
- Flight: Stores details about flights, including flight number, destination, capacity, class, time, date, price, and availability.
- Customer: Stores customer information such as ID, name, age, email, contact details, and the associated flight.
- Ticket: Stores ticket-related information such as ticket class, reservation status, and discounts.
- CustomerDetails: Stores the relationship between customers and the tickets they've bought, with a quantity field to track how many tickets are purchased.
3. Sample Data Insertion:
- Inserts sample data for flights, customers, tickets, and customer details into their respective tables.
4. Views:
- vw_AffordableFlight: Displays the top 3 affordable flights based on price.
- vw_SeniorUsers: Displays customers who are older than 65.
- vw_OnBoardCustomers: Shows the number of flight classes each customer is registered for.
- vw_Flight: Displays flight availability and price information.
5. Stored Procedures:
- sp_AddNewFlights: Allows adding new flights to the database.
- sp_UpdateFlyingTimes: Updates the flying times for a specific flight.
- sp_DeleteTicket: Deletes tickets with a specific reservation status.
- sp_Report: Generates a report for a specific customer’s flight booking details.
6. Triggers:
- tr_Customer: Displays a message whenever a new customer is added to the database.
- tr_Flights: Displays a message whenever a new flight record is added.
7. Indexes:
- idx_Flight, idx_Customer, idx_Ticket, idx_CustomerDetails: These non-clustered indexes are created on the respective tables to improve query performance.

# Framework and Technologies:
- SQL Server (for database management)
- T-SQL (Transact-SQL, the SQL dialect used in SQL Server)
- Stored Procedures
- Views
- Triggers
- Indexes

 # How It Works:
This set of SQL queries sets up a database system for managing flight bookings. It creates necessary tables and relationships, inserts some example data, and provides functionality for adding, updating, and deleting flight-related data. It also includes views and stored procedures for specific queries and operations, such as fetching affordable flights or updating flight schedules. The system also uses triggers to send messages when new data is entered and indexes to optimize database performance for frequently queried fields.

# Author 
Sylvester N 
