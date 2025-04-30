CREATE TABLE Passengers (
  Passenger_ID INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each passenger (Primary Key, Auto Increment)
  First_Name VARCHAR(50) NOT NULL, -- Passenger's first name (Not Null)
  Last_Name VARCHAR(50) NOT NULL, -- Passenger's last name (Not Null)
  Email VARCHAR(100) UNIQUE NOT NULL, -- Passenger's email address (Not Null, must be unique)
  Phone_Number VARCHAR(15), -- Passenger's phone number (Optional)
  Date_of_Birth DATE NOT NULL, -- Passenger's date of birth (Not Null)
  Frequent_Flyer_Number VARCHAR(20) UNIQUE, -- Frequent flyer number (Optional, must be unique)
  Nationality VARCHAR(50) NOT NULL -- Nationality of the passenger (Not Null)
);


-- Insert Records into Passengers Table
INSERT INTO Passengers (First_Name, Last_Name, Email, Phone_Number, Date_of_Birth, Frequent_Flyer_Number, Nationality)
VALUES
('Rahul', 'Sharma', 'rahul.sharma@example.com', '9876543210', '1990-01-15', 'FF001', 'India'),
('Priya', 'Verma', 'priya.verma@example.com', '8765432109', '1992-02-20', 'FF002', 'India'),
('Amit', 'Kumar', 'amit.kumar@example.com', '7654321098', '1988-03-25', 'FF003', 'India'),
('Sneha', 'Reddy', 'sneha.reddy@example.com', '6543210987', '1995-04-30', 'FF004', 'India'),
('Vikram', 'Singh', 'vikram.singh@example.com', '5432109876', '1985-05-05', 'FF005', 'India'),
('Neha', 'Gupta', 'neha.gupta@example.com', '4321098765', '1993-06-10', 'FF006', 'India'),
('Ravi', 'Patel', 'ravi.patel@example.com', '3210987654', '1987-07-15', 'FF007', 'India'),
('Anjali', 'Mehta', 'anjali.mehta@example.com', '2109876543', '1991-08-20', 'FF008', 'India'),
('Karan', 'Bansal', 'karan.bansal@example.com', '1098765432', '1989-09-25', 'FF009', 'India'),
('Pooja', 'Joshi', 'pooja.joshi@example.com', '0987654321', '1994-10-30', 'FF010', 'India'),
('Suresh', 'Nair', 'suresh.nair@example.com', '9876543210', '1986-11-05', 'FF011', 'India'),
('Tina', 'Chopra', 'tina.chopra@example.com', '8765432109', '1992-12-10', 'FF012', 'India'),
('Mohit', 'Agarwal', 'mohit.agarwal@example.com', '7654321098', '1988-01-15', 'FF013', 'India'),
('Ritika', 'Sethi', 'ritika.sethi@example.com', '6543210987', '1995-02-20', 'FF014', 'India'),
('Deepak', 'Kohli', 'deepak.kohli@example.com', '5432109876', '1985-03-25', 'FF015', 'India');

CREATE TABLE Bookings (
  Booking_ID INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each booking (Primary Key, Auto Increment)
  Flight_ID INT NOT NULL, -- Foreign key referencing Flights table (Not Null)
  Passenger_ID INT NOT NULL, -- Foreign key referencing Passengers table (Not Null)
  Booking_Date DATETIME NOT NULL, -- Date and time of booking (Not Null)
  Number_of_Seats INT NOT NULL CHECK (Number_of_Seats > 0), -- Number of seats booked (Not Null, must be greater than zero)
  Total_Price DECIMAL(10, 2) NOT NULL, -- Total price for the booking (Not Null)
  Booking_Status ENUM('Confirmed', 'Cancelled', 'Pending') NOT NULL DEFAULT 'Pending', -- Status of the booking (Not Null, default is 'Pending')
  FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID) ON DELETE CASCADE, -- Foreign key constraint linking to Flights table with cascading delete
  FOREIGN KEY (Passenger_ID) REFERENCES Passengers(Passenger_ID) ON DELETE CASCADE -- Foreign key constraint linking to Passengers table with cascading delete
);

truncate Bookings;
-- Insert Records into Bookings Table

INSERT INTO Bookings (Flight_ID, Passenger_ID, Booking_Date, Number_of_Seats, Total_Price, Booking_Status)
VALUES
(1, 1, '2023-09-01 10:00:00', 1, 1500.00, 'Confirmed'),
(2, 2, '2023-09-02 11:00:00', 2, 3000.00, 'Confirmed'),
(3, 3, '2023-09-03 12:00:00', 1, 1500.00, 'Confirmed'),
(4, 4, '2023-09-04 13:00:00', 1, 1500.00, 'Confirmed'),
(5, 5, '2023-09-05 14:00:00', 1, 1500.00, 'Confirmed'),
(6, 6, '2023-09-06 15:00:00', 1, 1500.00, 'Confirmed'),
(7, 7, '2023-09-07 16:00:00', 1, 1500.00, 'Confirmed'),
(8, 8, '2023-09-08 17:00:00', 1, 1500.00, 'Confirmed'),
(9, 9, '2023-09-09 18:00:00', 1, 1500.00, 'Confirmed'),
(10, 10, '2023-09-10 19:00:00', 1, 1500.00, 'Confirmed'),
(11, 11, '2023-09-11 20:00:00', 1, 1500.00, 'Confirmed'),
(12, 12, '2023-09-12 21:00:00', 1, 1500.00, 'Confirmed'),
(13, 13, '2023-09-13 22:00:00', 1, 1500.00, 'Confirmed'),
(14, 14, '2023-09-14 23:00:00', 1, 1500.00, 'Confirmed'),
(15, 15, '2023-09-15 09:00:00', 1, 1500.00, 'Confirmed');


CREATE TABLE Tickets (
  Ticket_ID INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each ticket (Primary Key, Auto Increment)
  Booking_ID INT NOT NULL, -- Foreign key referencing Bookings table (Not Null)
  Ticket_Price DECIMAL(10, 2) NOT NULL, -- Price of the ticket (Not Null, with two decimal places)
  Ticket_Status ENUM('Confirmed', 'Cancelled', ' Pending') NOT NULL, -- Status of the ticket (Not Null, must be one of the specified values)
  Seat_Number VARCHAR(5) NOT NULL, -- Assigned seat number for the ticket (Not Null)
  Baggage_Allowance INT DEFAULT 0, -- Baggage allowance in kilograms (Default is 0)
  FOREIGN KEY (Booking_ID) REFERENCES Bookings(Booking_ID) ON DELETE CASCADE -- Foreign key constraint linking to Bookings table with cascading delete
);

-- Insert Records into Tickets Table
INSERT INTO Tickets (Booking_ID, Ticket_Price, Ticket_Status, Seat_Number, Baggage_Allowance)
VALUES
(1, 1500.00, 'Confirmed', '1A', 15),
(2, 1500.00, 'Confirmed', '1B', 20),
(3, 1500.00, 'Confirmed', '1C', 15),
(4, 1500.00, 'Confirmed', '1D', 15),
(5, 1500.00, 'Confirmed', '1E', 15),
(6, 1500.00, 'Confirmed', '1F', 15),
(7, 1500.00, 'Confirmed', '1G', 15),
(8, 1500.00, 'Confirmed', '1H', 15),
(9, 1500.00, 'Confirmed', '1I', 15),
(10, 1500.00, 'Confirmed', '1J', 15),
(11, 1500.00, 'Confirmed', '1K', 15),
(12, 1500.00, 'Confirmed', '1L', 15),
(13, 1500.00, 'Confirmed', '1M', 15),
(14, 1500.00, 'Confirmed', '1N', 15),
(15, 1500.00, 'Confirmed', '1O', 15);

CREATE TABLE Airlines (
  Airline_ID INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each airline (Primary Key, Auto Increment)
  Airline_Name VARCHAR(100) NOT NULL, -- Name of the airline (Not Null)
  IATA_Code VARCHAR(3) UNIQUE NOT NULL, -- IATA code for the airline (Not Null, must be unique)
  Country VARCHAR(50) NOT NULL, -- Country where the airline is based (Not Null)
  Established_Year INT CHECK (Established_Year > 1900), -- Year the airline was established (Must be greater than 1900)
  Headquarter_Location VARCHAR(100) NOT NULL -- Location of the airline's headquarters (Not Null)
);

-- Insert Records into Airlines Table

INSERT INTO Airlines (Airline_Name, IATA_Code, Country, Established_Year, Headquarter_Location)
VALUES
('Air India', 'AI', 'India', 1932, 'Mumbai'),
('IndiGo', '6E', 'India', 2006, 'Gurgaon'),
('SpiceJet', 'SG', 'India', 2005, 'Gurgaon'),
('Vistara', 'UK', 'India', 2013, 'Gurgaon'),
('GoAir', 'G8', 'India', 2005, 'Mumbai'),
('AirAsia India', 'I5', 'India', 2014, 'Bangalore'),
('Alliance Air', '9I', 'India', 1996, 'Delhi'),
('Jet Airways', '9W', 'India', 1993, 'Mumbai'),
('Air India Express', 'IX', 'India', 2005, 'Kochi'),
('Star Air', 'S5', 'India', 2019, 'Bangalore'),
('Akasa Air', 'QP', 'India', 2022, 'Mumbai'),
('TruJet', '2T', 'India', 2015, 'Hyderabad'),
('Zoom Air', 'Z5', 'India', 2017, 'Delhi'),
('Flybig', 'FB', 'India', 2020, 'Indore'),
('Deccan Charters', 'DC', 'India', 1997, 'Bangalore');

/*
what are operators in MySQL?

operators in MySQL are special symbols or keywords used to perform operations on one or more operands
(values,expressions, or fields) in a MYSQL query. They are essential fro forming conditions, manipulating data,
and retriving desired results from the database. operations help in computattion,comaparision,logical evaluations string concatinationm, and much more


1. Arithemetic operators

+: Addition
-: Subtraction
*: multiplication
/: division
%: modulus(remainder after division)
DIV: integer division (returns integer part of division)
MOD: modulus (same as % in MySQL)


2.Comparision Operators

=: Equal to
<> or !=: not equal to
>: Greater than
<: Smaller than
>=: Greater than or equal to
<=: Less than or equal to
LIKE: pattern matching using wildcards (% and _)
NOT LIKE: PAtern not matching
REGEXP: Regular expression matching
NOT REGEXP : Regular expression not matching


3.Logical Operators

AND: Logical AND(true if both conditions are true)
OR: Logical OR(true if one of the condtitions are true)
NOT: LOgical NOT(negates the condition)
XOR: Logial Exclusive OR(True if only one condition is true)


4. Assignment Operators

=: Assign a value to a variable or column
:=: Assign a value to a user-defined variable
+=: Addition (not standard in MYSQL but used in some cases)
-=: Substraction Assignment
*=: Multiplication Assignment
%=: Modulus assignment
/=: division assignment
DIV=: integer division assignment
MOD=: Modulus assignment


5. Bitwise operators

&: Bitwise AND
|: Bitwise OR
^: Bitwise XOR
~: Bitwise NOT(inverts the bits)
<<: Left shift
>>: right shift


6. String Operators

CONCAT(): Concatenate strings (eg CONCAT('hello','World'))
||: String Concatenation(alteranative to concat in some MYSQL versions)


7. Other Operators

IN: Membership test(checks if a value exists in alist or subquery)
NOT IN: Membership test(checks if a value does not exist in a list or subquery)
BETWEEN: Range test(checks if a value is within a range)
NOT BETWEEN: Range test(checks if a value is outside a range)
IS NULL: Null test(checks if a value is null )
IS NOT NULL: Null test(checks if a value is not null)
EXISTS: subquery test(true if subquery returns any rows)
NOT EXISTS: subquery test(true if subquery returns no rows)

why are operators important in MYSQL?
simplify query logic: Operators make it easy to specify conditions and manipulate data directly in SQL statements
Dynamic data retrival: help fetch specific records based on comparisions and logical conditions
data manipulation: Arithemetics and string operators allow dynamic computation and formatting of data
Efficient Filtering: operators like LIKE and BETWEEN enable precise filtering for large datasets

These operators cover a wide range of functionality, from basic arithematic to advanced logical and 
string manipulation, enabling efficient data handling and quering in MYSQL

*/

-- create the airlines database if not exists

create database if not exists airlines123;

use airlines123;

-- table queries

-- data defination language (DDL) {Create,Alter,Drop,Truncate,rename,Comment}
-- Data Manipulation Lnaguage (DML){Insert,Update,Delete}
-- Data uery Language (DQL) {Select query}
use airlines123;
-- table 1 flights
create table flights(
Flight_ID int primary key,
Flight_number varchar(10) not null,
Departure_Airport varchar(100)not null,
Arrival_Airport Varchar(100)not null,
Departure_Time datetime not null,
Arrival_Time datetime not null,
Flight_Duration int not null,
Seats_Available int not null check(Seats_Available >=0),
Aircraft_Type varchar(50) not null,
Status ENUM('On Time','Delayed','Cancelled') not null default 'On Time'
);
insert into flights (Flight_ID,Flight_number,Departure_Airport,Arrival_Airport,Departure_time,Arrival_time,Flight_duration,Seats_Available,Aircraft_Type,Status) values
(1,'AI101','Delhi (DEL)','Mumbai (BOM)','2023-10-11 06:00:00','2023-10-01 08:00:00',120,50,'Boeing 737','On Time'),
(2,'AI102','Mumbai (BOM)','Delhi(DEL)','2023-10-11 09:00:00','2023-10-01 11:00:00',120,60,'Airbus A320','On Time'),
(3,'AI103','Delhi (DEL)','Banglore(BLR)','2023-10-01 07:00:00','2023-10-01 09:00:00',150,70,'Boeing 737','On Time'),
(4,'AI104','Banglore (BLR)','Delhi(DEL)','2023-10-11 10:00:00','2023-10-01 10:50:00',120,80,'Airbus A320','On Time'),
(5,'AI105','Delhi (DEL)','Chennai(MAA)','2023-10-01 08:00:00','2023-10-01 10:30:00',150,40,'Boeing 737','On Time'),
(6,'AI106','Chennai (MAA)','Delhi(DEL)','2023-10-01 11:00:00','2023-10-01 13:30:00',150,50,'Airbus A320','On Time'),
(7,'AI107','Delhi (DEL)','Kolkata(CCU)','2023-10-11 09:00:00','2023-10-01 11:30:00',150,30,'Boeing 737','On Time'),
(8,'AI108','Kolkata (CCU)','Delhi(DEL)','2023-10-11 12:00:00','2023-10-01 14:30:00',150,20,'Airbus A320','On Time'),
(9,'AI109','Delhi (DEL)','Hyderabad(HYD)','2023-10-11 10:00:00','2023-10-01 12:30:00',150,60,'Boeing 737','On Time'),
(10,'AI110','Hyderabad (HYD)','Delhi(DEL)','2023-10-11 13:00:00','2023-10-01 15:30:00',150,50,'Airbus A320','On Time'),
(11,'AI111','Delhi (DEL)','Pune(PNQ)','2023-10-11 14:00:00','2023-10-01 16:00:00',120,40,'Boeing 737','On Time'),
(12,'AI112','Pune (PNQ)','Delhi(DEL)','2023-10-11 17:00:00','2023-10-01 19:00:00',120,30,'Airbus A320','On Time'),
(13,'AI113','Delhi (DEL)','Ahmedabad(AMD)','2023-10-11 15:00:00','2023-10-01 17:00:00',120,50,'Boeing 737','On Time'),
(14,'AI114','Ahmedabed (AMD)','Delhi(DEL)','2023-10-11 18:00:00','2023-10-01 20:00:00',120,40,'Airbus A320','On Time'),
(15,'AI115','Delhi (DEL)','Jaipur(JAI)','2023-10-11 16:00:00','2023-10-01 17:00:00',90,60,'Boeing 737','On Time');


select * from flights;

-- select, alter, delete and update queires
/* 
1select query 
the select statement is used to retrive data from the database table
it allows you to specify the columns you want to fetch and apply conditions to filter the results

syntax:

select column1,column2
from table_name
where condition;

2. Alter query
the alter statement is used to modify the structure of an existing table
such as adding, deleting, or modifying columns
the alter query changes the table structure, not the data

syntax:

alter table table_name
add column_name datatype;

alter table table_name
drop column Column_name;

alter table Table_name
Modify column_name New_datatype;

3 delete query
the delete statement is used to remove rows from the table based on a specific condition

syntax:

delete from Table_name
where condition;

4 update query
the update statement is used to modify existing records in a table

syntax:

update table_name
set column1 = value1, column2 = value2,
where condition;

*/

-- 1 select queries

select * from flights;

-- select flights that are delelayed
select * from flights where Status = 'Delayed';

-- select disctinct aircrafts types used in flights
select distinct Aircraft_type from Flights;

-- select all flights ordered by departure_time
select * from flights order by Departure_time;

-- count the number of flights per status
select Status, count(*) as NumberOffFlights from flights group by Status;

-- select statuses with more than 5 flights
select * from flights where departure_Airport ='Delhi (DEL)';

-- select flights with more than 50 seats available
select * from flights where Seats_Available >50;

-- select flights ordered by arrival time
select * from flights order by Arrival_time;

-- select flights with aduration greater than 120 minutes
select * from flights where Flight_duration > 120;

-- select distinct aircraft types
select distinct Aircraft_Type from flights;

-- select flights with arrival time after a specific date
select * from flights where Arrival_time > '2023-10-01 12:00:00';

-- select flights with a specific flight number
select * from flights where Flight_number = 'AI101';

-- 1. select flights departing between 6 am and 12 pm
select * from flights 
where time(departure_time) between '06:00:00' and '12:00:00';

-- 2. select flights arriving before 10 am
select * from flights 
where time(arrival_time) < '10:00:00';

-- 3. select total number of available seats across all flights
select sum(seats_available) as total_seats_available from flights;

-- 4. select flights where arrival airport is 'delhi(del)'
select * from flights 
where arrival_airport = 'delhi(del)';

-- 5. select flights using 'boeing 737' as aircraft type
select * from flights 
where aircraft_type = 'boeing 737';

-- 6. select the flight with the longest duration
select * from flights 
order by flight_duration desc 
limit 1;

-- 7. select all flights grouped by aircraft type
select aircraft_type, count(*) as number_of_flights 
from flights 
group by aircraft_type;

-- 8. select flights where departure and arrival airports are the same
select * from flights 
where departure_airport = arrival_airport;

-- 9. select flights with seat availability between 30 and 60
select * from flights 
where seats_available between 30 and 60;

-- 10. select flights ordered by flight number alphabetically
select * from flights 
order by flight_number asc;


-- update queries

-- 1 update the number of seats available fro a aspecific flight
update flights
set Seats_Available = 45
where Flight_ID=1;

-- 2 update the status of a flight
update flights set status ='Cancelled' where Flight_ID=1;

select * from flights;

-- 3 update the arrival airport for a specific flight
update flights set Arrival_Airport ='Chennai (MAA)' where Flight_ID =3;
select * from flights;

-- 4 update the flight duration for a aspecific flight
update flights set Flight_Duration =130 where Flight_ID=4;
select * from flights;

-- 5 update the aircraft type for a specific flight
update flights set Aircraft_type ='Boeing 777' where Flight_ID = 5;
select * from flights;

-- 6 update the departure time for a specific flight
update flight set Departure_Time ='2023-10-01 07:00:00' where Flight_ID= 6;
select * from flights;

-- 7 update multiple fields for a specific flight
update flights set Seats_Available =60,Status='On Time' where Flight_ID= 7;
select * from flights;

-- 8 update status for all delayed flights
update flights set status ='On Time' where Status ='Delayed';
select * from flights;

-- 9 update the flight number for a specific flight
update flights set flight_number='AI201' where Flight_ID = 8;

-- update the departure airport for multiple flights
update flights set Departure_Airport='Delhi (DEL)' where Arrival_Airport='Mumbai (BOM)';


set SQL_SAFE_UPDATES = 0;
-- delete queries

-- 1 delete a specific flight
delete from flights where Flight_ID=2;
select * from flights;

-- 2 delete all delayed flights
delete from flights where status ='Delayed';

-- 3 delete a flight By flight number
delete from flights where Flight_Number='AI101';

-- 4 delete flights with no available seats
delete from flights where Seats_Available=0;

-- 5 delet a flights departing before a specific date
delete from flights where Departure_Time ='2023-10-01 00:00:00';

-- 6 delete all flights to specific destination
delete from flights where Arrival_Airport='Jaipur (JAI)';

-- 7 delete flights with a aduration less than a specific value
delete from flights where Fight_Duration <90;

-- 8 delete flights with a specific status
delete from flights where status ='Cancelled';

-- 9 delete flights with a aspecific aircraft type
delete from flights where Aircraft_Type='Airbus A320';

-- 10 delete all flights with less than 30 seats available
delete from flights where Seats_Available <30;



-- Alter queries

-- 1 add a new column for flight terminal
alter table flights
add column terminal varchar(10);

-- 2 drop the terminal column from flights table
alter table flights
drop column terminal;

-- 3 add a new column for flight's airline
alter table flights
add column Airline varchar(50);

-- 4 change the data type of flight_Number
alter table flights
modify column Flight_Number VARCHAR(15);

-- 5 rename the arrival - airport column
alter table flights
rename column Arrival_Airport to Destination_Airport;

-- 6 add a default value for seats_Available
alter table flights
alter column Seats_Available set default 100;

-- rename the flights table
alter table flights
rename to Flight_Schedules;


-- Add and Drop Constraints queries


-- 1 add a check constraint to ensure flight_duration is positive
alter table flights
add constraint chk_flight_duration check(Flight_Duration > 0);

-- 2 drop the check constraint on flight_Duration
alter table flights
drop constraint chk_flight_duration;

-- 3 add a check constraint for flight duration
alter table flights
add constraint chk_flight_duration check(Flight_Duration > 0);

-- 4 drop the chck constraint on flight duration
alter table flights 
drop constraint chk_flight_duration;

-- 5 add a unique constrait on Flight_NUmber
alter table flights
add constraint unique_flight_number unique(Flight_Number);

-- 6 add a check constraint for seats available
alter table flights
add constraint chk_seats_available check(Seats_Avaiable>=0);

-- 7 drop the check constraint on seats available
alter table flights
drop constraint chk_seats_available;

-- add a foreign key constraint (if Applicable)
alter table flights
add constraint fk_airport Foreign Key(Departure_Airport) references Airports(Airport_Name);

-- drop the foreign key
alter table flights
drop fk_airport;

-- add a not null constraint to Flight_Number
alter table flights 
modify Flight_Number varchar(10) not null;

-- drop the not null constraint to flight_number
alter table flights
modify Flight_number varchar(10);

-- add a default constraint for status
alter table flights
alter column  Status set default 'On Time';

-- drop the deafault constraint for status
alter table flights alter column status drop default;

-- add a unique constraint for status
alter table flights
add constraint unique_aircraft_type unique (Aircraft_Type);

-- drop the unique constraint on aircraft_type
alter table flights
drop constraint unique_aircraft_type;
/*
using information schema views:

most relational database management systems(RDBMS) provide system views that contain
metadata about the database objects, including constraints. you can query these views
to find constraint names.
*/

-- to get complete information about constraints and its name

select constraint_name, table_name, constraint_type
from information_schema.table_constraints
where table_name='flights';


/*
Naming convention:

if you are creating constraints, it's a good practice to use a consistent naming convention.
This can help you easily identify constraints later. A common convention is to use the format.

for CHECK constraint: chk_<table>_<column>
for UNIQUE constraint: unique_<table>_<column>
for FOREIGN KEY constraint: fk_<table>_<reference_table>

Example of adding constraints with naming conventions

alter table flights
add constraint chk_flight_duration check (Flight_Duration >0);
*/




select
constraint_name,
table_name,
constraint_type
from 
information_schema.table_constraints
where
table_schema = 'airlines123' and
table_name='flights';


select column_name
from 
information_schema.columns
where
table_schema='airlines123' and
table_name='flights';

-- fetch data types and properties of each column in the fligts table
select column_name,
data_type,
character_maximum_length,
is_nullable
from
information_schema.columns
where
table_schema='airlines123' and
table_name='flights';

-- list all indexes on the flights table to understand performance optimization
select
index_name,
column_name,
non_unique
from information_schema.statistics
where
table_schema='airlines123' and
table_name='flights';

-- list all tables in the airlines123 schema to explore the database structure
select
table_name
from information_schema.tables
where
table_schema='airlines123';

-- fetch default values for each column in the flights table
select
column_name,
column_default 
from
information_schema.columns
where
table_schema='airlines123' and
table_name='flights';

-- count the number of rows in the flights table
select count(*) as row_count
from airlines123.flights;

-- retrive the creation time of the flights table
select
create_time
from
information_schema.tables
where 
table_schema='airlines123' and
table_name='flights';

-- fetch the last update time of the flights table
select 
update_time
from information_schema.tables
where
table_schema='airlines123' and
table_name='flights';

-- retrive the order of columns in the flights table
select
column_name,
ordinal_position
from 
information_schema.columns
where
table_schema='airlines123' and
table_name='flights'
order by
ordinal_position;


-- operators
/*
In MYSQL, operators are special symbols or keywords that are used to perform operations on one or more operands (values or variables).
Operators are fundamental to constructing SQL queries, as they allow you to manipulate data,
compare values,ade perform calculations. MYSQL supports several types of
operators, which can be categorized as follows:
*/

-- Arithematic operators: +,-,*,/,%

-- calculate the total flight duration for flight AI101. adding 30 minutes for a layover
select Flight_Number, Flight_Duration + 30 as Total_Duration from flights
where Flight_number ='AI101';


-- calculate the remaining seats after booking 10 seats for flight AI102
select Flight_Number, Seats_Available - 10 as Remaining_Seats
from flights
where Flight_Number='AI102';

-- calculate the total available seats for all flights by summing the seats_Available column
select sum(Seats_Available) as Average_Flight_Seats
from flights;

-- calculate the average flight duration across all flights
select avg (Flight_Duration) as Average_Flight_Duration
from flights;

-- claculate the flight duration in hours for each flight
select Flight_Number,Flight_Duration/60 as Duration_Hours
from flights;


-- calculate the percentage of available seats for each based on a total of 100 seats
select Flight_number,(Seats_Available/100.0)* 100 as Percentage_Available
from flights;

-- calculate the remaining flight duration after 30 minutes for each flight
select Flight_Number,Flight_Duration -30 as Remaining_Duration
from flights
where Flight_Duration >30;

-- calculate the total number of seats for flights that have more than 50 available seats
select sumSeats_Available  as Total_Seats
from flights
where Seats_Available > 50;

-- calculate the total duration of flights that are delayed
select sum(Flight_Duration) as Total_Duration_Delayed
from flights
where status ='Delayed';

-- calculate the total flight time for flights departing from delhi
select sum(Flight_Duration) as Total_Flight_Duration
from flights
where Departure_Airport='Delhi (DEL)'; 

-- assuming a hypothetical cost of 2$ per inute, calculate total cost for each flight
select Flight_Number,Flight_Duration * 2 AS Total_Cost
from flights;

-- calculate the total seats available for fights with a duration greater than 120 minutes
select sum(Seats_Available) AS  Total_Seats
from flights
where Flight_Duration > 120;

-- calculate remaining seats after booking 5 seats for each flights
select Flight_Number,Seats_Available - 5 as Remaining_Seats
from flights;

-- calculate total revenue from flights asssuming a ticket price of 100$ per seat
select Flight_Number,Seats_Available * 100 as Total_Revenue
from flights;

-- calulate the total flight duration for flights arriving in Mumabi
select sum(Flight_Duration) as Total_Duration_Mumbai
from flights
where Arrival_Airport = 'Mumbai (BOM)';

-- calculate the total number of available seats for flights that are on time
select sum(Seats_Available) as Total_Seats_On_Time
from flights
where Status='On Time';

-- calculate the totalflight duration for flights that have more than 100 available seats
select sum(Flight_Duration) as Total_Duration_Over_100
from flights
where Seats_Available > 100;

-- calculate the percentage of flights that are delayed compared to toatl flights
select (count(case when status='Delayed' then 1 end) * 100)/ count(*) as Percentage_Delayed
from flights;

-- calculate the total number of seats for flights with a duration of less than 30 minutes
select sum(Seats_Available) as Total_Seats_Under_30
from flights
where Flight_Duration < 30;




-- Comparison Operators: =,<,>, <=, >=, != or <> 

-- select all details for the flight with flight_number AI101
select * from flights
where Flight_Number ='AI101';

-- select all flights with a duration less than 120 minutes
select * from flights
where Flight_Duration < 120;

-- select all flights with a duration greater than 120 minutes
select * from flights
where Flight_Duration > 120;

-- select all flights with a duration less than or equal 120 minutes
select * from flights
where Flight_Duration <= 120;

-- select all flights with a duration greater than or equal 120 minutes
select * from flights
where Flight_Duration >= 120;

-- select all flights with a duration not equal to arriving at Delhi (DEL)
select * from flights
where Arrival_Airport != 'Delhi (DEL)';

-- select all flights with a status not equal to arriving at 'Cancelled'
select * from flights
where Status != 'Cancelled';

-- select all details for the flight with Departing from mumbai 
select * from flights
where Departure_Airport ='Mumbai (BOM)';

-- select all flights with a duration greater than 50 available seats
select * from flights
where Seats_Available > 50;

-- select all flights that have fewer than 30 available seats
select * from flights
where Seats_Avaiable < 30;

-- select all flights that have exactly 60 available seats
select * from flights
where Seats_Available = 60;

-- select all flights that do not have a duration of 150 minutes
select * from flights
where Flight_Duration != 150;

-- select all flights with a duration greater than 120 and less than 100 minutes
select * from flights
Where FLight_Duration > 120 and Flight_Duration < 180;

-- select all flights that are currently on time
select * from flights
where status ='On Time';

-- select all flights that arrive after october 1, 2023
select * from flights
where Arrival_time > '2023-10-01 00:00:00';

-- select all flights that depart before october 1, 2023
select * from flights
where Arrival_time < '2023-10-01 00:00:00';

-- select all flights that have seats available greater than or equal to 40
select * from flights
where Seats_Available >= 40;

-- select all flights that have seats available less than or equal to 20
select * from flights
where Seats_Available <= 20;

-- select all flights with a duration between 60 and 120 minutes
select * from flights
where Flight_Duration >= 60 and Flight_Duration <=120;

-- select all flights where the status is not equal to delayed
select * from flights
where Status !='Delayed';



-- Logical Operators: AND, OR, NOT

-- find flights from delhi to mumbai that are on time and have available seats
select * from flights
where Departure_Airport ='Delhi (DEL)' AND Arrival_Airport='Mumbai (BOM)' and Seats_Available > 0;

-- find flights that either depart from delhi or arrive in delhi
select * from flights
where Departure_Airport='Delhi (DEL)'
and Arrival_Airport='Delhi (DEL)';

-- find the flights that are not delayed
select * from flights
where NOT Status ='Delayed';

-- find all unique airports for flights that are on time and have more than 50 seats available
select distinct Arrival_Airport from flights
where Status ='On Time'
and Seats_Available > 50;

-- find all unique departure airports for flights that are either delayed or cancelled
select distinct Departure_Airport from flights
where Status in ('Delayed','Cancelled');

-- find flights that either depart from banglore or arrive in kolkata, but are not on time
select * from flights where (Departure_Airport ='Bangalore (BLG)' or Arrival_Airport='Kolkata (CCU)')
and not Status = 'On Time';

-- find flights that are on time and have a flight duration of more than 120 minutes
select * from flights
where Status ='On Time'
and Flight_Duration > 120;

-- find flights that are not deporting from delhi and not either arriving in mumbai or chennai
select * from flights
where not Departure_Airport='Delhi (DEL)'
and not Arrival_Airport='Mumbai (BOM)'
and not Arrival_Airport='Chennai (MAA)';

-- find fligts that are either delayed or cenclled, and have less than 30 seats available
select * from flights
where (Status ='Delayed' or Status ='Cancelled')
and Seats_Available < 30;

-- find flights from delhi to any destination that are either on time or have more than 50 seats available
select * from flights
where Departure_Airport ='Delhi (DEL)'
and (Status ='On Time' or Seats_Available > 50);

-- string Operators: Like, REGXP, NOT LIKE

-- find flights with flight number starting with 'AI'
select * from flights
where Flight_Number like 'AI%';

-- find flights that have 'Delhi' in either the departure or arrival airport
select * from flights
where Departure_Airport regexp 'Delhi'
or Arrival_Airport regExp 'Delhi';

-- find flights that do not go to channai
select * from flights
where Arrival_Airport not like 'Channai (MAA)';

-- find flights that do not have '737' in the aircraft type
select * from flights
where Aircraft_Type not like '%737%';

-- find flights that have 'Banglore ' in either the departur or arrival airport
select * from flights
where Departure_Airport regexp 'Banglore'
or Arrival_Airport regexp 'Banglore';




-- set operators: UNION, UNION ALL, INTERSACT, EXCEPT or DIFFERENCE

-- find all unique arrival airports from flights deporting from delhi and flights arriving in delhi
select Arrival_Airport from flights
where Departure_Airport ='Delhi (Del)'
union
select Departure_Airport from flights
where Arrival_Airport ='Delhi (DEL)';


select * from flights
where Departure_Airport ='Delhi (DEL)'
union
select * from flights
where Arrival_Airport ='Delhi (DEL)';



/* 
fing flights that are both departing from delhi and arriving in mumbai 
(Note : Intersect is not supported in all sql databases, so this is a conceptual example).
*/
select * from flights
where Departure_Airport ='Delhi (DEL)'
intersect 
select * from flights
where Arrival_Airport ='Mumbai (BOM)';




-- control flow operators : if, case

-- create a qury categories flights based on their status
select Flight_ID, Flight_Number,
case
when Status ='ON Time' then 'Flight is on schedule'
when Status='Delayed' then 'Flight is Delayed'
when Status='Cancelled' then 'Flight is canelled'
end as Flight_Status_Description
from flights;

-- create a query that provides a summary of flight statuses with counts
select status, count(*) as Flight_Count
from flights
group by Status;

-- create a query that categories flights based on their duration
select Flight_ID, Flight_Number,
case
when Flight_Duration <120 then 'Short Haul'
when Flight_Duration between 120 and 180 then 'Medium Haul'
else 'Long Haul'
end as Flight_Duration_Category
from Flights;



-- Bitwise Operators


/*
get Binary Number -

-- 512,256,128,64,32,16,8,4,2,1

binary of 5 is - 0101
binary of 3 is - 0011

common bitwise operators in mysql
AND (&): Compares each bit of two numbers and returns a new number with bits set to 1 only where both bits are 1.
OR (|): Compares each bit of two numbers and returns a new number with bits set to 1 where at least one of the bits is 1.
XOR(^): Compares each bit of two numbers and returns a new number with bits set to 1 where the bits are different.
NOT(~): Inverts the bits of a number.
Left Shift(<<): Shifts the bits of a number to the left by a specified number of positions.
Right Shift(>>): Shifts the bits of a number to the right by a specified number of positions.


Bitwise operators can be useful in various scenarios, such as:

1. Flags and Permissions: Using bitwise operations to manage user permissions or feature flags.
2. Data Compression: Storing multiple boolean values in a single integer.
3. Efflicient Calculations: Performing low-level data manipulation or optimizations.

let's say we have a table called users that store user permissions as a bitwisk.
each permission corresponds to a specific bit in an integer:

1 (0001) - Read Permission
2 (0010) - Write permission
3 (0100) - Execute permission
4 (1000) - Delete permission
*/

create table users(
id int primary key auto_increment,
username varchar(100) not null,
email varchar(100) not null unique,
password_hash varchar(255) not null,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp 
on update current_timestamp,
permissions int not null
);

insert into users(username,email,password_hash,permissions) values
('Alice','alice@gmail.com','harhed_password_1',3), -- read(1) + write(2) = 3 (0011)
('Bob','bob@gmail.com','harhed_password_2',5),-- read(1) + write(4) = 5 (0101)
('Charlie','charlie@gmail.com','harhed_password_3',8),-- delete(8) = 8 (1000)
('David','david@gmail.com','harhed_password_4',15),-- all permissions (1111)
('Eve','eve@gmail.com','harhed_password_5',1),-- read(1) 
('Frank','frank@gmail.com','harhed_password_6',6),--  write(2) + Execute(4)= 6 (0110)
('Grace','grace@gmail.com','harhed_password_7',10),--  write(2) + Delete(8) = 10 (1010)
('Hannah','hannah@gmail.com','harhed_password_8',12),-- Execute(4) + Delete(8) = 12 (1100)
('Isaac','isaac@gmail.com','harhed_password_9',0),-- No permission
('Jack','jack@gmail.com','harhed_password_10',7);-- read(1) + write(2) + Execute(4) = 7 (0111)


select * from users;

select * from users where (permissions & 1)= 1;
-- users with the read permission

select * from users where (permissions & 3) = 3;
-- users with read and write permissions

select * from users where (permissions & 2)= 2;
-- users with the write permissions

select * from users where (permissions & 4)= 4;
-- users with Execute  permissions

select * from users where (permissions & 8)= 8;
-- users with Delete permissions


-- add permissions
update users set permissions = permissions & 4 where username ='Alice';
update users set permissions = permissions | 4 where username ='Alice';

/*
the error message you're encountering indicates that mysql's 'safe update mode ' is enabled.
this mode prevents you from executing update or delete statements that do not include a where clause that uses a key column (like a primary key). 
This is a safety feature to prevent accidential updates or deletions of all rows in the table.
*/
-- disable safe update mod termporarily
set SQL_SAFE_UPDATES = 0;

set SQL_SAFE_UPDATES = 1; -- enable safe updates


-- remove permission
update users set permissions = permissions & ~1  where username ='Bob';
select * from users;

-- toggle permission
update users set permissions = permissions ^ 8 where username ='Charlie';
select * from users;

-- count users with a specific permission
select count(*) as user_count from users where (permissions & 1) = 1;

-- list users with no permissions
select * from users where permissions = 0;

-- list users with all permissions
select * from users where permissions= 15;

-- get permissions as binary string
select username, bin (permissions) AS permissions_binary from users;

-- find users with at least one permissions
select * from users where (permissions & 1)= 0;

-- find users with either write or execute permissions
select * from users where (permissions & (2 | 4)) > 0;

-- update multiple users permissions
update users set permissions = permissions | 8 where username in ('Alice','Bob');
select * from users;

-- remove all permissions from a user
update users set permissions = 0 where username ='Charlie';
select * from users;

-- check for users with no execute permissions
select * from users where (permissions & 4) = 0;

-- get users with specific combination of permissions
select * from users where (permissions & 2) = 3 and (permissions & 4) = 0;



-- clauses {Where, Distinct, From, Order By, Group By, Having}


/*
1. Where Clause
The Where clause is used to filter records in a table based on specific conditions.
It is Typically used with Select, Update, and Delete statements.

syntax:
Select column1,cloumn2
from table_name
where condition;

2. Dinstinct Clause
The DISTINCT Clause is used to return unique values from a column by removing duplicates
in the result set.

syntax:
select distinct column1
from table_name;

3. From clause
The From Clause specifies the table or tables from which the data is retrived.
It is a Mandotory part of the select statement and can able be used with joins for
combining data from multiple tables

Syntax:
select column1, column2
from table_name;


4. Order by clause
The order by is used to sort the result set in ascending or descending order based on one or more columns.

Syntax:
Select column1,column2
from table_name
order by cloumn_name [ASC|DESC];

5. Group By Clause
The Group by clause groups rows with the same values into summary rows,
often used with aggregate functions(eg count,sum,avg).

Syntax:
Select column1, aggregate_function(coumn2)
from table_name
group by column1;


6. Having clause
the having clause is used to filter grouped data after the group by clause.
It works similarly to the where clause but is applied to aggregated results.

Syntax:
Select column1, aggregate_Function(column2)
from table_name
group by column1
having condition;

7. Limit (or fetch or top) clause
the limit is used to restrict the number of rows returned by a query.
different databses may use variations like fetch or top.

Syntax:
Select column1,column2
frim table_name
limit number_of_rows;

8. Join clause
the join clause is used to combine rows from two or more tables based on a related column.alter

Syantax:

Select columns
from table1
join table2
on table1.common_clause = table2.common_column;

9. Union Clause
The union clause is used to combine the results of two or more select statements.
Duplicate rows are removed by default.

Syntax:
Select column1, column2
from table1
union
select column1, column2
from table2;

10. Into Clause
The into clause is used to insert query results into a new table or export data.

Syntax:
Select columns
into new_table_name
from table_name
where condition;

11. Case column
The case allows conditional logic in sql queries, similar to an if-else statement.

Syntax:
select column1,
   case
       when condition1 then result1
       when condition2 then result2
       else result3
end as alias_name
from table_name;

12. In clause
The in Clause is used to filter records base on a list of values.

syntax:
select column1,column2
from table_name
where column_name in (value1, value2, .....);

13. Between Clause
the between filters data within a specified range, inclusive of the boundaries.

Syntax:
Select column1,column2
from table_name
where column_name between value1 and value2;

14. Like clause
the like clause is used to search for a a specified pattern in a column. Wildcards include % (any number of 
characters) and _ (a single character).

Syntax:
Select column1, column2
from table_name
where Column_name like pattern;

15. Exists Clause
The exists clause cheks for the existence of rows in a subquery.

Syntax:
Select column1, column2
from table_name
where Exists (subquery);


16. As clause
The as lause is used to provide an alias (Temparory name) for columns or tables
improving query readibility.

Syntax:
Select column_name as alias_name
from table_name;

*/

use airlines123;

-- 1 where clause queries

-- Select flights that are delayed
select * from flights where status ='Delayed';

-- selet flights departing from delhi
Select * from flights where departure_Airport='Delhi (DEL)';

-- select flights arriving in mumbai
select * from flights where Arrival_Airport = 'Mumbai (BOM)';

-- select flights with a duration greater than 120 minutes
select * from flights where Flight_Duration > 120;

-- select flights with available seats less than 30
select * from flights where Seats_Available < 30;

-- select flights that departed after a specific date
select * from flights where Departure_Time > '2023-10-01 00:00:00';

-- select flights with a specific flight number
select * from flights where Flight_Number = 'AI101';

-- select flights that are either cancelled or delayed
select * from flights where Status in ('Cancelled', 'Delayed');

-- select flights with a flight duration between 90 and 150 minutes
select * from flights where Flight_Duration between 90 and 150;

-- select flights with more than 50 available seats
select * from flights where Seats_Available > 50;



-- 2 Distinct Clause queries

-- select distinct aircraft types used in flights
select distinct Aircraft_Type from flights;

-- select distinct departure airports
select distinct Departure_Airport from flights;

-- select distinct arrival airports
select distinct Arrival_Airport from flights;

-- select distinct flight statuses
select distinct Status from flights;

-- select distinct flight numbers
select distinct Flight_Number from flights;

-- select distinct combinations of departure and arrival airports
select distinct Departure_Airport, Arrival_Airport from flights;

-- select distinct flight durations
select distinct Flight_Duration from flights;

-- select distinct departure times
select distinct Departure_Time from flights;

-- select distinct arrival times
select distinct Arrival_Time from flights;

-- select distinct seat availability counts
select distinct Seats_Available from flights;


-- 3. From cluase queries

-- select all records from flights table
Select * from flights;

-- select flights numbers and statuses from flights table
select Flight_Number, status from flights;

-- select departure and arrival airports from flight table
select Departure_Airport, Arrival_Airport from flights;

-- select flight id and duration from flights table
select Flight_ID, Flight_Duration from flights;

-- select all columns from flights table where status is 'on time'
select * from flights where Status = 'On Time';

-- select all flights with a specific aircraft type
select * from flights where Aircraft_Type = 'Boeing 737';

-- select all flights departing after a specific time
select * from flights where Departure_Time > '2023-10-01 12:00:00';

-- select all flights arriving in a specific city
select * from flights where Arrival_Airport = 'Chennai (MAA)';

-- select all flights with available seats greater than 40
select * from flights where Seats_Available > 40;

-- select all flights with a specific flight duration
select * from flights where Flight_Duration = 120;



-- 4. Order by clause

-- select all flights ordered by departure_time
select * from flights order by Departure_Time;

-- select all flights ordered by flight_duration in descending order
select * from flights order by Flight_Duration desc;

-- select all flights ordered by seats_available
select * from flights order by Seats_Available;

-- select all flights ordered by status and then by departure_time
select * from flights order by Status,Departure_time;
select * from flights order by Arrival_Airport,Departure_time;

select * from flights order by Arrival_Airport, Departure_Time;

-- select all flights ordered by arrival_airport
select * from flights order by Arrival_Airport;

-- select all flights ordered by flight_number in descending order
select * from flights order by Flight_Number desc;

-- select all flights ordered by departure_airport and then by flight_duration
select * from flights order by Departure_Airport, Flight_Duration;

-- select all flights ordered by arrival_time in descending order
select * from flights order by Arrival_Time desc;

-- select all flights ordered by flight_id
select * from flights order by Flight_ID;

-- select all flights ordered by arrival_time
select * from flights order by Arrival_Time;



-- 5 Group by clause queries

-- count flights grouped by status
select status,count(*) as NumberOffFlights from flights group by  Status;

-- group flights by departure_airport and count them
select Departure_Airport, count(*) as NumberOffFlights from flights group by Departure_Airport;

-- group flights y Arrival_Airport and count them
select Arrival_Airport, count(*) as NumberOffFlights from flights group by Arrival_Airport;
 
-- group flights by aircraft_Type and calculate average duration
select Aircraft_Type, avg(Flight_Duration) as Average_Duration from flights group by Aircraft_Type;

-- group flights by flight_Number and count them
select Flight_Number, count(*) as NumberOffFlights from flights group by Flight_Number;

-- group flights by departure_airport and calculate total available seats
select Departure_Airport, sum(Seats_Available) as TotalSeats from flights group by Departure_Airport;

-- group flights by status and calculate maximum duration
select Status, max(Flight_Duration) as MaxDuration from flights group by Status;

-- group flights by arrival_airport and calculate minnimum duration
select Arrival_Airport, Min(Flight_Duration) as MiniDuration from flights group by Arrival_Airport;

-- group flights by departure-Airport and calculate average available seats
select departure_Airport, avg(Seats_Available) as AverageSeats from flights group by Departure_Airport;

-- group flights by aircraft_Type and count distinct statuses
select Aircraft_Type, count(Distinct Status) as DistinctStatusCount from flights group by Aircraft_Type;



-- 6 Having clause queries

-- select statuses with more than 5 flights
select Status, count(*) as NumberOffFlights from flights group by Status having count(*) > 5;

-- seelct departure airports with more than 3 flights
select Departure_Airport, count(*) as NumberOffFlights from flights group by Departure_Airport having count(*) > 3;

-- select aircraft types with an average flight duration greater than 120 minutes
select Aircraft_Type, avg(Flight_Duration) as AverageDuration from flights group by Aircraft_Type having avg(Flight_Duration) > 120;

-- select arrival airports with less than 2 flights
select Arrival_Airport, count(*) as NumberOffFlights from flights group by Arrival_Airport having count(*) < 2;

-- select statuses with a total of available seats greater than 200
select Status, sum(Seats_Available) as TotalSeats from flights group by Status having sum(Seats_Available) > 200;

-- select dflight numbers with more than 1 occurance
select Flight_Number, count(*) as Occurances from flights group by Flight_Number having count(*) > 1;

-- select departure airports with an average available seat count less than 150
select Departure_Airport, avg(Seats_Available) as AverageSeats from flights group by Departure_Airport having avg(Seats_Available) < 50;

-- select aircraft types with a maximum flight duration less than 150 minutes
select Aircraft_Type, max(Flight_duration) as MaxDuration from flights group by Aircraft_Type having max(Flight_Duration) < 150;

-- select arrival aircraft with an average flight duration greater than 100 minutes
select Arrival_Airport, avg (Flight_Duration) as AverageDuration from flights group by Arrival_Airport having avg(Flight_Duration) > 100;

-- select statuses with a count flights equal to 1
select Status, count(*) as NumberOffFlights from flights group by Status having count(*) = 1;



-- 7. Limit (or fetch or top) clause

/*
In MYSQL, the limit clause is used to restrict the number of rows returned by a query.
Unlike some other sql databases(eg SQL server or PostgreSQL) that use top or fetch,
MYSQL exclusively supports LIMIT.

Syntax:
Select column1,column2,.......
from table_name
limit [offset,] row_count;

key Components

1. row_count: specifies the number of rows to return.
2.offset (Optional): Specifies the starting point from which rows are returned. if omitted,
the default is 0 (Start from the first row).
3. Limit: Used to specify the maximum number of records to return.
4. Using Limit with a comma: An alternative way to specify both the offset and the limit in a single clause.
5. Row_Count(): While not directly applicable, you can use SQL_CALC_FOUND_ROWS and FOUND_ROWS() to get the 
total count of rows.

*/

-- select the first 5 flights
select * from flights limit 5;

select * from flights limit 5 offset 2;

-- select the first 3 flights ordered by departure_Time
select * from flights order by Departure_Time limit 5;

-- select the last 3 flights based on flight_ID
select * from flights order by Flight_ID DESC limit 3;

-- select the first 7 flights that are delayed
select * from flights where Status ='Delayed' limit 7;

-- select the first 5 flights departing from delhi
select * from flights where Departure_Airport ='Delhi (DEL)' limit 5;

-- select the first 10 fights with available seats greater than 50
select * from flights where Seats_Available > 50 limit 10;

-- select the first 5 flights arriving in mumbai
select * from flights where Arrival_Airport='Mumbai (BOM)' limit 5;

-- select the first 10 flights with a flight duration greater than 120 minutes
select * from flights where Flight_Duration > 120 limit 10;

-- select the first 5 flights ordered by flight_Number
select * from flights order by Flight_Number limit 5;

-- select the first 3 flights that departed after a specific date
select * from flights where Departure_Time > '2023-10-01 00:00:00' limit 3;

-- select 5 flights starting from the 10th record(Offset)
select * from flights limit 5 offset 9;

-- select 10 flights starting from the 20th record
select * from flights limit 10 offset 20;

-- seelct 3 flights starting from the 5th reord
select * from flights limit 3 offset 5;

-- select 7 flights starting from the 15th record
select * from flights limit 7 offset 15;

-- selet 4 flights starting from the 0th record
select * from flights limit 4 offset 0;

-- select 5 flights starting from the 10th reord
select * from flights limit 10,5; -- this means skip 10 records and than return the next 5

-- select 10 flights starting fro the 20th record
select * from flights limit 20, 10;

-- select 3 flights starting from the 5th record
select * from flights limit 5,3;

-- select 7 flights starting from the 5th record
select * from flights limit 15,7;

-- select 4 flights starting from the 0th record
select * from flights limit 0,4;

-- get the total number of flights and limit the results
select SQL_CALC_FOUND_ROWS * from flights limit 5; 

select found_rows(); -- this will return the total number of rows without the limit





-- 8. JOIN Clause

/*
note - to join 2 or more table their 1 attributes must be comman

Inner JOIN: Returns records that have matching values in both tables.

LEFT JOIN: returns all records from the left table and the matched records from the right table 
if there is no match, null values are returned for column from the right table. 

RIGHT JOIN: Returns all records from the right table (Bookings) and the matched records from the left tablle
if there is no match, NULL values are returned for columns from the left table
*/


-- join flights with bookings to get flight details along with booking information

select * from flights inner join Bookings on Flights.Flight_ID= Bookings.Flight_ID;


-- join flights with bookings to get flight details along with booking information
select f.Flight_ID, f.Flight_Number, b.Booking_ID, b.Booking_Date, b.Number_of_Seats 
from flights f
inner join Bookings b on f.Flight_ID =b.Flight_ID;

-- join flights with passengers to get flight details along with passenger information
select t1.Flight_ID, t1.Flight_Number, t3.Passenger_ID, t3.First_Name, t3.Last_name
from flights t1
inner join Bookings t2 on t1.Flight_ID = t2.Flight_ID
inner join Passengers t3 on t2.Passenger_ID = t3.Passenger_ID;

-- left join flights with bookings to get all flights and their booking status (if any)
select t1.Flight_ID, t1.Flight_Number, t2.Booking_ID, t2.Booking_Status
from flights t1
left join Bookings t2 on t1.Flight_ID = t2.Flight_ID;

select * from Bookings;

-- left join flights with airlines to get flight details along with airline information
select t1.Flight_ID, t1.Flight_Number, t2.Airline_name, t2.IATA_Code
from flights t1
left join Airlines t2 on t1.Airline_ID= t2.Airline_ID;

-- right join bookings with flights to get all bookings and their corresponding flights
select t1.Booking_ID, t1.Booking_Date, t2.Flight_Number, t2.Departure_Airport
from Bookings t1
right join flights t2 on t1.Flight_ID= t2.Flight_ID;


select * from flights;



-- 9. UNION Clause

/*
The UNION clause is used to combine results of two or more select statements. Duplicate rows are 
removed by default
*/


-- 1 select flights from two different departure airports
select Flight_ID, FLight_Number, Departure_Airport,Arrival_Airport
from flights
where Departure_Airport='Delhi (DEL)'
union
select Flight_ID, FLight_Number, Departure_Airport, Arrival_Airport
from flights
where Departure_Airport='Mumbai (BOM)';

-- Select all delayed and cancelled flights
select Flight_ID, Flight_Number, Status
from flights
where Status='Delayed'
union 
Select Flight_ID, Flight_Number, Status
from flights
where Status ='Cancelled';

-- 3. Select flights with more than 50 available seats
select Flight_ID, Flight_Number, Seats_Available 
from flights
where Seats_Available > 50
union
select Flight_ID,Flight_Number,Seats_Available
from flights
where Flight_Duration < 120;

-- 4. select flights to chennai and banglore
select Flight_ID, Flight_Number, Arrival_Airport
from flights
where Arrival_Airport ='Chennai (MAA)'
union
select Flight_ID, Flight_number, Arrival_Airport
from flights
where Arrival_Airport ='Banglore (BLR)';

-- 5. Select Flights with specific flight number
select Flight_Id, Flight_Number, Departure_Airport
from flights
where Flight_Number ='AI101'
union 
select Flight_ID, Flight_Number, Departure_Airport
from flights
where Flight_Number ='AI102';

-- 6. Select Flights with a duration greater than 150 minutes
select Flight_ID, Flight_Number, Flight_Duration 
from flights
where Flight_Duration > 150
union 
select Flight_Id, Flight_Number, Flight_Duration
from flights
where Status ='On Time';

-- 7. Select flights with arrival in specific cities
select Flight_ID, Flight_Number,Arrival_Airport
from flights
where Arrival_Airport ='Hyderabad (HYD)'
union 
select Flight_ID, Flight_Number, Arrival_Airport
from flights
where Arrival_Airport='Pune (PNQ)';

-- 8. Select flights with arrival in specific Statuses
select Flight_ID, Flight_Number,Status
from flights
where Status ='On Time'
union 
select Flight_ID, Flight_Number, Status
from flights
where Status='Delayed';

-- 9. Select flights with arrival in specific time
select Flight_ID, Flight_Number,Departure_Time
from flights
where Departure_Time ='2023-10-01 12:00:00'
union 
select Flight_ID, Flight_Number, Departure_Time
from flights
where Departure_Time='2023-10-01 14:00:00';

-- 10. Select flights with Different Aircraft Types
select Flight_ID, Flight_Number,Aircraft_Type
from flights
where Aircraft_Type ='Boeing 737'
union 
select Flight_ID, Flight_Number, Aircraft_Type
from flights
where Aircraft_Type='Airbus A320';



-- 10. INTO Clause(My SQL does not support INTO Clause)

-- create a new table to store flights with less than 50 available seats
select Flight_Number, Departure_Airport
into New_Flights_Table
from flights
where Seats_Available < 50;

-- create a new table to store details of flights that are delayed
select Flight_ID, Flight_Number, Arrival_Airport
into Delayed_Flights
from flights
where Status = 'Delayed';

-- create a new table for flights that use Boeing 737 aircraft
select Flight_Number, Departure_Airport, Arrival_Airport
into Boeing737_Flights
from flights
where Aircraft_Type = 'Boeing 737';

-- create a new table for flights that have a duration greater than 150 minutes
select Flight_Number, Flight_Duration
into Long_Flights
from flights
where Flight_Duration > 150;

-- create a new table for flights departing from Delhi (DEL)
select Flight_Number, Arrival_Airport
into Delhi_Departures
from flights
where Departure_Airport = 'Delhi (DEL)';

-- create a new table for flights that have no available seats
select Flight_Number, Departure_Airport, Arrival_Airport
into Fully_Booked_Flights
from flights
where Seats_Available = 0;

-- create a new table for flights arriving at either Mumbai (BOM) or Chennai (MAA)
select Flight_Number, Arrival_Airport
into Mumbai_Chennai_Arrivals
from flights
where Arrival_Airport in ('Mumbai (BOM)', 'Chennai (MAA)');

-- create a new table for flights that have a duration of less than 90 minutes
select Flight_Number, Flight_Duration
into Short_Flights
from flights
where Flight_Duration < 90;

-- create a new table for flights that are currently cancelled
select Flight_Number, Departure_Airport, Arrival_Airport
into Cancelled_Flights
from flights
where Status = 'Cancelled';

-- create a new table for flights that depart between 2 PM and 4 PM
select Flight_Number, Departure_Time
into Afternoon_Flights
from flights
where Departure_Time between '2023-10-01 14:00:00' and '2023-10-01 16:00:00';



-- 11. CASE Clause

-- select flight numbers and provide a descriptive status message
select Flight_Number,
case
when Status ='On Time' then 'Flight is on schedule'
when Status ='Delayed' then 'Flight is delayed'
else 'Flight is cancelled'
end AS fLIGHT_Status
from flights;

-- select flight numbers and categorize them based on duration
select Flight_Number,
case
when Flight_Duration <= 90 then 'Short Flight'
when Flight_Duration Between 90 and 140 then 'Medium Flight'
else 'Long Flight'
end as Flight_Category
from flights;

-- select flight numbers and categorize seats available
select Flight_Number,
case
when Seats_Available > 50 then 'Plenty of seats Available'
when Seats_Available between 20 and 50 then 'Limited seats available'
else 'Almost full'
end as Seat_Status
from flights;

-- select flight numbers and convert flight duration from minutes to hours
select Flight_Number,
case
when Flight_Duration < 60 then Concat(Flight_Duration, 'Minutes')
else concat (Flight_Duration/ 60, 'Hours')
end as duration
from flights;

-- selct flight numbers and provide status based on departure time
select Flight_Number,
case
when Departure_Time < now() then 'Flight has departed'
when Departure_Time = now() then 'Flight is departing now'
else 'Flight is scheuled to depart'
end as Departure_Status
from flights;

-- select flight numbers and categorize based on aircraft type
select Flight_Number,
case
when Aircraft_Type like 'Boeing%' then 'Boeing Aircraft'
when Aircraft_Type like 'Airbus%' then 'Airbus Aircraft'
else 'Other Aircraft'
end as Aircraft_Type
from flights;

-- select flight numbers and provide a status message based on flight duartion
select Flight_Number,
case
when Flight_Duration < 120 then 'Short flight'
when Flight_Duration between 120 and 180 then 'Standard Trip'
else 'Long trip'
end as Trip_Length
from flights;

-- select flight numbers and provide custom messges based on flights status
select Flight_Number,
case
when Status ='On time' then 'All systems go!'
when Status ='Delayed' then 'Please wait for updates'
when Status='Cancelled' then 'we apologize for the in convenience'
else 'Unknown status'
end as Custom_Status
from flights;

-- select flight numbers and categorize based on arrival airport
select Flight_Number,
case
when Arrival_Airport ='Delhi (DEL)' then 'Arriving oin capital'
when Arrival_Airport ='Mumbai (BOM)' then 'Arriving in financial hub'
else 'Arriving elsewhere'
end as Arrival_Category
from flights;

-- select flight numbers and provide status based on current time and flight status
select Flight_Number,
case 
when Status ='On Time' and Departure_Time > now() then 'On schedule'
when Status ='Delayed' then 'Delayed'
when Status ='Cancelled' then 'Cancelled'
else 'Flight has already departed'
end as Flight_Final
from flights;



-- 13. between clause

-- select all flights with a duration between 120 and 150 minutes
select *
from flights
where Flight_Duration between 120 and 150;

-- select flights that depart between 8 AM and 12 PM on October 1, 2023
select *
from flights
where Departure_Time between '2023-10-01 08:00:00' and '2023-10-01 12:00:00';

-- select flights that arrive between 10 AM and 2 PM on October 1, 2023
select *
from flights
where Arrival_Time between '2023-10-01 10:00:00' and '2023-10-01 14:00:00';

-- select flights that have between 20 and 60 available seats
select *
from flights
where Seats_Available between 20 and 60;

-- select flights with Flight_IDs between 5 and 10
select *
from flights
where Flight_ID between 5 and 10;

-- select flights with a duration less than 90 minutes
select *
from flights
where Flight_Duration < 90;  -- using < instead of between for clarity

-- select flights that depart between 12 PM and 6 PM on October 1, 2023
select *
from flights
where Departure_Time between '2023-10-01 12:00:00' and '2023-10-01 18:00:00';

-- select flights that arrive between 6 PM and 10 PM on October 1, 2023
select *
from flights
where Arrival_Time between '2023-10-01 18:00:00' and '2023-10-01 22:00:00';

-- select flights with a duration greater than 180 minutes
select *
from flights
where Flight_Duration > 180;  -- using > instead of between for clarity

-- select flights that were scheduled to depart between 1 PM and 3 PM
select *
from flights
where Departure_Time between '2023-10-01 13:00:00' and '2023-10-01 15:00:00';



-- 14. like clause

-- select all flights where the flight number starts with 'AI'
select *
from flights
where Flight_Number like 'AI%';

-- select all flights where the flight number ends with '101'
select *
from flights
where Flight_Number like '%101';

-- select all flights where the flight number contains '10'
select *
from flights
where Flight_Number like '%10%';

-- select all flights departing from airports that have 'Delhi' in their name
select *
from flights
where Departure_Airport like '%Delhi%';

-- select all flights arriving at airports that have 'BOM' in their code
select *
from flights
where Arrival_Airport like '%BOM%';

-- select all flights that use aircraft types starting with 'Airbus'
select *
from flights
where Aircraft_Type like 'Airbus%';

-- select all flights where the status contains the word 'Delayed'
select *
from flights
where Status like '%Delayed%';

-- select all flights where the flight number matches the pattern 'AI1__'
-- (where '_' represents a single character)
select *
from flights
where Flight_Number like 'AI1__';

-- select all flights departing from airports that have 'MAA' in their code
select *
from flights
where Departure_Airport like '%MAA%';

-- select all flights arriving at airports that start with the letter 'K'
select *
from flights
where Arrival_Airport like 'K%';




-- 15. EXISTS Clause

-- Select all flights where there exists at least one cancelled flight to the same arrival airport
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE Status = 'Cancelled' AND Arrival_Airport = f.Arrival_Airport
);

-- Select all flights where there exists at least one delayed flight from the same departure airport
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE Status = 'Delayed' AND Departure_Airport = f.Departure_Airport
);

-- Select all flights where there exists at least one flight to the same destination with available seats
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE Arrival_Airport = f.Arrival_Airport AND Seats_Available > 0
);

-- Select all flights where there exists at least one flight departing at the same time
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE Departure_Time = f.Departure_Time
);

-- Select all flights where there exists at least one flight using the same aircraft type
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE Aircraft_Type = f.Aircraft_Type
);

-- Select all flights where there exists at least one flight arriving at the same airport
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE Arrival_Airport = f.Arrival_Airport
);

-- Select all flights where there exists at least one flight scheduled on the same day
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE DATE(Departure_Time) = DATE(f.Departure_Time)
);

-- Select all flights where there exists at least one flight with the same flight number
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE Flight_Number = f.Flight_Number
);

-- Select all flights where there exists at least one flight with a similar duration (within 10 minutes)
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE ABS(Flight_Duration - f.Flight_Duration) <= 10
);

-- Select all flights where there exists at least one flight with the same status
SELECT *
FROM Flights f
WHERE EXISTS (
    SELECT 1
    FROM Flights
    WHERE Status = f.Status
);




-- 16. as clause

-- create a new table with flight details
create table Flight_Summary as
select Flight_ID, Flight_Number, Departure_Airport, Arrival_Airport
from flights;

-- select flight numbers and give them a custom alias
select Flight_Number as FlightCode
from flights;

-- select flight duration in hours and give it a custom alias
select Flight_Number, Flight_Duration / 60 as Duration_Hours
from flights;

-- select departure and arrival airports with custom aliases
select Departure_Airport as Departure, Arrival_Airport as Arrival
from flights;

-- select flight status and give it a custom alias
select Flight_Number, Status as Current_Status
from flights;

-- create a new table with average flight duration per departure airport
create table Average_Flight_Duration as
select Departure_Airport, avg(Flight_Duration) as Average_Duration
from flights
group by Departure_Airport;

-- select available seats and give it a custom alias
select Flight_Number, Seats_Available as Available_Seats
from flights;

-- select flight ID and aircraft type with custom aliases
select Flight_ID as ID, Aircraft_Type as Plane_Type
from flights;

-- select flights with custom aliases for departure and arrival times
select Flight_Number, Departure_Time as Depart_Time, Arrival_Time as Arrive_Time
from flights;

-- create a new table summarizing flight status counts
create table Flight_Status_Summary as
select Status as Flight_Status, count(*) as Total_Flights
from flights
group by Status;







-- Mysql Alias

/*
In MySQL, an alias is a temporary name assigned to a table or a column for the duration of a query
(within the scope of a query). Aliases are primarily used to enhance the readability and clarity of
SQL statements, making it easier for users to understand the purpose of the data being retrieved or manipulated.

Key Points about MySQL Aliases:

1. Temporary Nature:
Aliases exist only for the duration of the query. Once the query execution is complete,
the alias ceases to exist.

2. Improved Readability:
By using aliases, you can simplify complex column names or provide more meaningful names
that better describe the data. This is particularly useful when dealing with long or complicated column names.

Syntax:
For column aliases, the syntax is:
SELECT column_name AS alias_name
FROM table_name;

For table aliases, the syntax is:
SELECT column_name
FROM table_name AS alias_name;

3. Usage in Queries:
Aliases can be used in various SQL statements, including SELECT, UPDATE, and DELETE.
They can also be used in conjunction with aggregate functions, joins, and subqueries.

4. No Impact on Database Structure:
Using an alias does not change the actual table or column names in the database;
it only affects how they arek referenced in the query.
*/

use airlines123;
-- table alias
select f.flight_ID, f.Flight_Number, f.Departure_Airport, f.Arrival_Airport
from Flights f;

-- column Alias
Select f.Flight_ID as ID, f.Flight_Number as num, f.Departure_Airport as Departure,
f.Arrival_Airport as Arrival from flights f;

-- derived table Alias
select * from ( select f.Flight_ID, f.Flight_Number, f.Departure_Airport, f.Arrival_Airport from flights f)
as FlightInfo;

-- filtering with alias
select f.Flight_ID, f.Flight_Number, f.Departure_Airport, f.Arrival_Airport from flights f
where f.Departure_Airport='Delhi (DEL)';

-- sorting with alias
select f.Flight_ID, f.Flight_Number, f.Departure_Airport, f.Arrival_Airport from flights f
order by f.Departure_Time;

-- grouping with alais
select  f.Departure_Airport, count(f.Flight_ID) as NumFlights from flights f
group by f.Departure_Airport;

-- Aggregate Functions with alias
select  f.Departure_Airport, Avg(f.Flight_Duration) as AvgDuration from flights f
group by f.Departure_Airport;

-- Having clause with alais
select f.Departure_Airport,AVG(f.Flight_Duration) as AvgDuration from flights f
where f.Departure_Airport
group by f.Departure_Airport
having AVG(f.Flight_Duration) = 4;




-- -----------------------------task------------------------------------------

-- add a column then write a query to enter all details at 1 time
alter table flights
add column Flight_Status varchar(30);

select * from flights;

-- insert same values in a table column
update flights
set Flight_Status ='Scheduled'
where Flight_ID in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15);

-- insert multiple value in a table column
update flights set Flight_Status=
case
when Flight_ID in (1,2,3) then 'Scheduled'
when Flight_ID in (4,5) then 'Departed'
when Flight_ID in (6,11,13) then 'Arrived'
when Flight_ID in (7,12) then 'Delayed'
when Flight_ID in (8,14,15) then 'Cancelled'
when Flight_ID in (9) then 'Diverted'
when Flight_ID in (10) then 'Held'
else 'Unknown'
end
where Flight_ID in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15);



-- Functions

/*
Functions in MYSQL are predefined operations that can be used to perform calculations, manipulate, data and retrive specific information. These functions make it easier to work with strings,
numbers, dates and more.
Functions ----- 1. Built-in Functions(sum(),avg(),count()...)
				2. User Defined functions


They are categorized as follows based on their functionality:

1. String Functions
These functions are used to manipulate and process string data.

LENGTH(str): Returns the length of a string.

CONCAT(str1, str2, .....): Concatenates two or more strings.

UPPER(str): Converts a string to uppercase.

LOWER(str): Converts a string to Lowercase.

SUBSTRING(str, start, length): Returns a substring from a string.


2. Numeric Functions
these functions perform operations on numeric data.

ROUND(number, Decimals): Round a number to a specified number of decimal places.

FLOOR(number): Returns the largest integer less than or equal to a number.

CEIL(number): Returns the smallest integer gretaer than or equal to a number.

ABS(number): Returns the absolute value of a a number.


3. Date and Time Functions
these functions are used to manipulate and format date and time values.

NOW(): Returns the current date and time.

CURDATE(): Returns the current date.

DATE_FORMAT(date, format): Formats a date according to a specified format.

DATEDIFF(date1, date2): Returns the difference in days between two dates.



4. Aggregate Functions
these functions perform calculations on a set of values and return a single value.

COUNT(expression): Returns the number of rows that match a specified condition.

SUM(column): Returns the sum of numeric column.

AVG(column): Returns the average value of a numeric column.

MAX(column): returns the maximum value of a acolumn.

MIN(column): Returns the minimum value of a acolumn.



5. Control Flow Functions
these functions allow for conditional logic in sql queries.

IF(condtion, true_value, false_value): Returns one value if the condition is true and another value if it is false.

CASE: Provides a way to perform conditional logic in a more complex manner.



6. Conversion Functions
these functions convert data from one type to another.

CAST(expression AS type): Converts an expression to a specified data type.

CONVERT(expression, type): Similar to CAST, but with different syntax.



7. JSON Functions
these functions are used to work with json data types.

JSON_EXTRACT(json_doc, path): Extracts data from a json document.

JSON_ARRAYAGG(value): Aggregates values into a JSON array.



8. User-Defined Functions (UDFs)
MYSQL allows users to create their own functions for specific tasks.

*/


-- String Functions

-- 1. Convert Flight Numbers to Uppercase
select upper(Flight_Number) as Uppercase_Flight_Number from flights;

-- 2. Convert departure airport names to lowercase
select lower(Departure_Airport) as Lowercase_Airport from flights;

-- 3. Concatenate flight number and departure airport
select concat(Flight_Number,'-',Departure_Airport) as Flight_Details from flights;

-- 4. get length of flight Numbers
select Flight_Number, length(Flight_Number) as Length from flights;

-- 5. get length of departure airport name
select Departure_Airport, length(Departure_Airport) as Length from flights;
 
-- 6. Extract substring from flight number
select Flight_Number, substring(Flight_Number,3,3) as Flight_Substring from flights;

-- 7. Find flights with departure airports conatining 'Delhi'
select * from flights where Departure_Airport like '%Delhi%';

-- 8. Find flights with Flight number with 'AI'
select * from flights where Flight_Number like 'AI%';

-- 9 replace 'delhi' with 'new delehi' in departure airports
select Flight_Number, replace (Departure_Airport,'Delhi','New Delhi') as Updated_Departure_Airport from flights;

-- 10 find flights with flight numbers ending in '01'
select * from flights where Flight_Number like '%01';

-- 11 count the number of flights with 'Boeing' in aircraft type
select  count(*) as Boeing_Flight_Count from flights group by Aircraft_Type like '%Boeing%';

-- 12 find flights with arrival airports starting with 'M'
select * from flights where Arrival_Airport like '%M%';

-- 13 get the first character of each flight number
select Flight_Number, Left(Flight_number, 1) as First_Character from flights;

-- 14 get the last character of each flight number
select Flight_Number, right(Flight_number, 1) as last_Character from flights;

-- 15 find flights with aircraft types that are exactly 10 characters long
select * from flights where length(Aircraft_Type) = 10;

-- 16 find flights with flight numbers that are not in uppercase
select * from flights where binary Flight_Number != UPPER(Flight_Number);

-- 17 find flights with departure airports that are not in lowercase
select * from flights where binary Departure_Airport != lower(Departure_Airport);

-- 18 concatenate flight number, departure, and arrival airports
select concat(Flight_Number, ' From ',Departure_Airport,' to ',Arrival_Airport)
as full_Flight_Info from flights;

-- 19 find flights with aircraft types that contains 'A320'
select * from flights where Aircraft_Type like '%A320%';

-- 20 Get the position of 'AI' in flight numbers
select Flight_Number, locate('AI', Flight_Number) as Position_of_AI from flights;



-- Numeric Functions

-- 1 Calculate the average flight duration
select avg(Flight_Duration) as Average_Duraton from flights;

-- 2 calsulate the total number of seats vailable
select sum(Seats_Available) as Total_seats_Available from flights;

-- 3 find the longest flight duration
select max(Flight_Duration) as Longest_Flight from flights;

-- 4 find the shortesr flight duration
select min(Flight_Duration) as Shortest_Flight from flights;

-- 5 count the total number of flights
select count(*) as total_flights from flights;

-- 6 calculate tha average number of available seats per flight
select avg(seats_Available) as Average_Seats_per from flights;

-- 7 find the total flight duration for all flights
select sum(Flight_Duration) as Tiotal_Duration from flights;

-- 8 count the number of flights with more than 50 seats available
select count(*) as Flight_With_Over_50_Seats from flights where Seats_Available > 50;

-- 9 calculate the average flight duration for flights departing from delhi
select avg(Flight_Duration) as Average_Duration from flights
where Departure_Airport ='Delhi (DEL)';

-- 10 find the total number of flights to mumbai
select count(*) as Total_Flights_To_Mumbai from flights where Arrival_Airport ='Mumbai (BOM)';

-- 11 calculate the percentage of flights that are on time
select (count(*)/ (select count(*) from flights)) * 100 as percentage_On_Time from flights where Status ='On Time';

-- 12 find the average flights duration for delayed flights
select avg(Flight_Duration) as Average_Duration from flights where Status ='Delayed';

-- 13 count the number of flights for each aircraft type
select Aircraft_Type, count(*) as Flight_Count from flights group by Aircraft_Type;

-- 14 calculate the total of seats available for flights to chennai
select sum(Seats_Available) as Total_Seats from flights where Arrival_Airport='Chennai (MAA)';

-- 15 find the average flight duration for flights ariving in kolkate
select avg(Flight_Duration) as Average_Duration from flights
where Arrival_Airport='Kolkata (CCU)';

-- 16 find the maximum number of available seats on a single flights
select max(Seats_Available) as Max_Seats from flights;

-- 17 calculate the total number of fligts departing from each airport
select Departure_Airport, COUNT(*) as Total_Flights from flights group by Departure_Airport;

-- 18 find the average number of seats available for flights that are cancelled
select avg(Seats_Available) as Average_Seats from flights where Status='Cancelled';

-- 19 calculate the total flight duration for flights with status 'On Time'
select sum(Flight_Duration) as Total_Flight from flights where Status='On Time';

-- 20 count the number of flights with a duration greater than 180 miutes
select count(*) as Flight_over_3_Hours from flights where Flight_Duration > 100;




-- Date and Time Functions

-- extract the date from the departure time
select date(Departure_Time) as Departure_Date from flights;

-- extract the time from the departure time
select time(Departure_Time) as Departure_Time from flights;

-- calculate the flight duration in minutes
select TIMESTAMPDIFF(minute, Departure_time, Arrival_Time) as Flight_Duration_Minutes from flights;
select TIMESTAMPDIFF(day, Departure_time, Arrival_Time) as Flight_Duration_hour from flights;
select TIMESTAMPDIFF(second, Departure_time, Arrival_Time) as Flight_Duration_seconds from flights;
select * from flights;
-- calculate the flight duration in date
select TIMESTAMPDIFF(month, Departure_time, Arrival_Time) as Flight_Duration_months from flights;
select TIMESTAMPDIFF(day, Departure_time, Arrival_Time) as Flight_Duration_days from flights;
select TIMESTAMPDIFF(year, Departure_time, Arrival_Time) as Flight_Duration_years from flights;



-- aggregate Functions

-- 1 count the total number of flights
select count(*) as total_Flights from flights;

-- 2 count the number of unique departure airports
select count(distinct Departure_Airport) as Unique_Departure_Airports from flights;

-- 3 concatenate distinct flight numbers
select group_concat(distinct Flight_Number) as Flight_Numbers from flights;

-- 4 count the number of flights by ststus
select Status, count(*) as Flight_Count
from flights
group by Status;

-- 5 calculate the average number of seats available accross all flights
select avg(Seats_Available) as Average_Seats from flights;

-- 6 find the maximum flight duration
select max(Flight_Duration) as Max_Duration from flights;

-- 7 find the maximum flight duration
select min(Flight_Duration) as Min_Duration from flights;

-- 8 calculate the total number of available seats across all flights
select sum(Seats_Available) as Total_Seats from flights;

-- 9 count the number of flights for each arrival airport
select Arrival_Airport, count(*) as Total_Flights
from flights
group by Arrival_Airport;

-- 10 calculate the average flight duration for all flights
select avg(Flight_Duration) as Average_Flight_Duration from flights;

-- 11 count the number of flights departing from each airport
select Departure_Airport, count(*) as Total_Fligts
from flights group by Departure_Airport;

-- 12 find the total flight duration for all flights
select sum(Flight_Duration) as Total_Duration from flights;

-- 13 count the number of flights with more than 100 seats available
select count(*) as Flight_Over_100seats from flights where Seats_Available > 100;

-- 14 calculate the average flight duration for flights departing from delhi
select avg(Flight_Duration) as Average_Duration from flights
where Departure_Airport='Delhi (DEL)';

-- 15 count the number of unique aircraft types
select count(distinct Aircraft_Type) as Unique_Aircraft from flights;

-- 16 find the total number of flights for each aircraft type
select Aircraft_Type, count(*) as Total_Flights from flights group by Aircraft_Type;

-- 17 calculate the average number of seats avialable for flights that are cancelled 
select avg(Seats_Available) as Average_Seats_Cancelled from flights where Status='Cancelled';

-- 18 find the total number of flights for each day
select date(Departure_Time) as Flight_Date, count(*) as Total_Flights from flights
group by Flight_Date;

-- 19 calculate the total flight duration for flights with status 'On Time'
select sum(Flight_Duration) as Total_On_Time from flights where Status='On Time';

-- 20 count the number of flights with a aduration greater than 180 minutes
select count(*) as Flights_Over_3hurs from flights where Flight_Duration > 180;

-- Control Flow Functions

-- Classifies flights as long haul or short haul based on duration
SELECT IF(Flight_Duration > 4, 'Long Haul', 'Short Haul') AS Flight_Type FROM Flights;

-- Classifies flights as long haul or short haul based on duration using a case statement
SELECT
CASE
WHEN Flight_Duration > 4 THEN 'Long Haul'
WHEN Flight_Duration <= 4 THEN 'Short Haul'
END
AS Flight_Type FROM Flights;

-- other queries

CREATE TABLE Flights_Backup (
  Flight_ID int PRIMARY KEY,
  Flight_Number varchar(10) NOT NULL,
  Departure_Airport varchar(100) NOT NULL,
  Arrival_Airport varchar(100) NOT NULL,
  Departure_Time datetime NOT NULL,
  Arrival_Time datetime NOT NULL,
  Flight_Duration int NOT NULL,
  Seats_Available int NOT NULL
);

-- copy table data
INSERT INTO Flights_Backup SELECT * FROM Flights;

select * from Flights_Backup;
use airlines123;



-- function queries

-- passengers table

-- 1
SELECT UPPER(First_Name) AS FirstName_Upper FROM Passengers;

-- 2
SELECT First_Name, LENGTH(Phone_Number) AS Phone_Length FROM Passengers;

-- 3
SELECT First_Name,YEAR(Date_of_Birth) AS Birth_Year FROM Passengers;

-- 4
SELECT COUNT(*) AS Total_Passengers FROM Passengers;

-- 5
SELECT AVG(TIMESTAMPDIFF(YEAR, Date_of_Birth, CURDATE())) AS Average_Age FROM Passengers;

-- booking table

-- 1
SELECT Booking_ID,LOWER(Booking_Status) AS Booking_Status_Lower FROM Bookings;

-- 2
SELECT Booking_ID,DAYNAME(Booking_Date) AS Booking_Day FROM Bookings;

-- 3
SELECT Booking_ID,MONTHNAME(Booking_Date) AS Booking_Month FROM Bookings;

-- 4
SELECT Booking_ID, HOUR(Booking_Date) AS Booking_Hour FROM Bookings;

-- 5
SELECT SUM(Total_Price) AS Total_Revenue FROM Bookings;


-- Tickets table

-- 1
SELECT Ticket_ID, LOWER(Seat_Number) AS Seat_Lower FROM Tickets;

-- 2
SELECT  NOW() AS Current_DateTime;

-- 3
SELECT YEAR(CURDATE()) AS Current_Year;

-- 4
SELECT MAX(Baggage_Allowance) AS Max_Baggage FROM Tickets;

-- 5
SELECT AVG(Ticket_Price) AS Average_Ticket_Price FROM Tickets;

-- airlines table

-- 1
SELECT Airline_ID,UPPER(Airline_Name) AS Airline_Upper FROM Airlines;

-- 2
SELECT 
  Airline_Name,(YEAR(CURDATE()) - Established_Year) AS Years_Active FROM Airlines;

-- 3
SELECT Airline_Name,Established_Year FROM Airlines WHERE Established_Year >= (YEAR(CURDATE()) - 10);

-- 4
SELECT COUNT(*) AS Airlines_Before_2010 FROM Airlines
WHERE Established_Year < 2010;

-- 5
SELECT MIN(Established_Year) AS Oldest_Established,MAX(Established_Year) AS Newest_Established
FROM Airlines;


-- flights table

-- 1
SELECT Flight_ID,Flight_Number,LEFT(Flight_Number, 2) AS Airline_Code
FROM Flights;

-- 2
SELECT Flight_ID,Flight_Number,MONTHNAME(Departure_Time) AS Departure_Month
FROM Flights;

-- 3
SELECT Flight_ID,Flight_Number,DAYNAME(Arrival_Time) AS Arrival_Day
FROM Flights;

-- 4
SELECT Aircraft_Type,SUM(Seats_Available) AS Total_Seats FROM Flights
WHERE Aircraft_Type = 'Boeing 737'
GROUP BY Aircraft_Type;

-- 5
SELECT Departure_Airport,COUNT(*) AS Flights_Count FROM Flights
GROUP BY Departure_Airport;




