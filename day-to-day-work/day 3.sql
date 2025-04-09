-- single line comment

/* 
multi 
line 
comment
*/
-- database related queries

create database travelagent21;
use travelagent21;

-- topics of the day

-- data types, contraints, clauses and commands

-- data types
/*
the data type of a column in a mysql database tells us what kind of values thst column can hold, such as 
-- integer(whole numbers)
-- character (text)
-- date and time (dates and times)
-- binary (raw data)
-- enum( a list of allowed values)
-- set(a list of alooed values)
-- time(time of day)
-- timestamp(date and time)
-- year(year)
-- flat(decimal values)
-- double(decimal values)
-- decimal(decimal values)

every column in a datbase table must have a name and a data type.
when creating a table, an SQL developer needs to choose the right data type for each column.
this helps MYSQL know that kind of data to expect and how to work with it.


datatypes defines the type and size of the data to be stored in an attribute, as -id int (1,2,3,..)
In MYSQL, there are three main categories of data types:

String: For text values(e.g names,description)
Numeric: for numbers(eg ages,prices)
data and time: for dates and times(eg birthdays, timestamps)

note- choosing the corect data type is important for ensuring data accuracy and efficent storage.alter
*/

-- cnstraints
/*
In MYSQL, constraints are rules applied to columns in a database table to enforce data intigrity and ensure the accuracy and realibility of the data stored in the database.
constraints help maintian the quality of the data by restricting the types of data that can be entered into a table and by defining relationship between tables.

types of cnstraints in MYSQL
1. NOT NULL
ensures that a column cannot have a null value.
example:
create table students(
id int NOT NULL,
name varchar(50) NOT NULL);

2.unique
ensures that all values in a column are unique
example:
create table employees(
email varchar(100) UNIQUE
);

3.primary key
uniquely identifies each record in a table
combines not null and unique constraints
example:
create table orders(
orderID primary key,
productName varchar(100)
);

4.foreign key
ensures referential integrity between two tables
a column in one table refers to the primary key of another table
example:
create table Customers(
customerID int primary key
);
create table Orders(
orderID int primary key,
customerID int,
foreign key(custmerID) references Customers(customerID)
);

5.check
ensures that all values in a column satisfy a specific condition
example:
create table  Products(
productId int primary key,
price Decimal(10,2) check(price>0)
);

6.default
assigns a default value to a column if no value is specified
example:
create table users(
userID int primary key,
status varchar(20) default 'active'
);

7.auto_increment
automatically genarates a unique value for a column whenever a new record is inserted
example:
create table orders(
ordersID int auto_increment primary key,
productName varchar(50)
);

8.index
improves the performance of queries by creating an index on specified columns
while not a direct constraint, it enforces rules like uniqueness when combined with unique
example:
create unique index idx_email n employees(email);

benefits of using constraints
data integrity: ensures valid and cnsistent data
error prevention: avoids accidental insertion of invalid or duplicate dat
relationship consistency: maintains proper relationships between tables
cnstraints are essential tools for maintaining a well-structured and reliabledatabase system
*/

/*
clauses are components of a SQl statement that specify the actions to be performed on the data in a database
each clause serves a specific purpose and helps it define the structure and behevior of the SQL query
clauses can be combined to create comples queries that retrieve, manipulate r mange data

the main clauses in MYSQL include:
SELECT: retrives data from a database table
FROM: specifies the table(s) ot retrive data from
WHERE: filters data  based on conditions
GROUP BY: groups data based on one or more columns
HAVING: filters grouped data based on conditions
ORDER BY: sorts data in ascending or desending order
LIMIT: limits the number of rows returned
*/

/*
 in MySQL, commands are instructions that you use to interact with the database
 They allow you to perform various operations such as creating databases and tables,inserting and updating data, querying data, and managing user permissions
 MySQL commands can be categorized into several types based on their functionality:
DDL(Data Definition Language): Defines database structures (create, alter, drop, truncate)
DML(Data Manipulation Language): Manipulates data (insert, update, delete)
DQL(Data Query Language): Queries data (select)
DCL(Data Control Language): Controls access (grant, revoked)
TCL(Transaction Control Language): Manages transactions (commit, rollback, savepoint)
*/

/*
clauses vs cammands
Commands: 
These are the main instructions you use to interact with the database (e.g., select, insert, update, delete, create)
They perform specific actions on the database
Clauses: 
These are parts of SQL statements that provide additional details or conditions to the commands (eg where, order by, group by)
They help refine the command's operation
Select *from students where name = 'Kavya';
In essence, commands are the actions you want to perform, while clauses are the conditions or modifications that help define how those actions should be executed
Understanding both is crucial for effective database management and querying
*/

 
 -- Types of Clauses
 /*
 1. where Clause
The where clause is used to filter records in a table based on specific conditions
It is typically used with select, update, and delete statements
Syntax:
select column1, column2  
from table_name  
where condition;  

2. distinct Clause
The distinct clause is used to return unique values from a column by removing duplicates in the result set
Syntax:
select distinct column1  
from table_name;  

3. from Clause
The from clause specifies the table or tables from which the data is retrieved
It is a mandatory part of the SELECT statement and can also be used with joins for combining data from multiple tables
Syntax:
select column1, column2  
from table_name; 

4. order by Clause
The order by clause is used to sort the result set in ascending (ASC) or descending (DESC) order based on one or more columns
Syntax:
select column1, column2  
from table_name  
order by column_name [ASC|DESC];  

5. group by Clause
The GROUP BY clause groups rows with the same values into summary rows, often used with aggregate functions (e.g., COUNT, SUM, AVG)
Syntax:
select column1, aggregate_function(column2)  
from table_name  
group by column1;

6. having Clause
The HAVING clause is used to filter grouped data after the GROUP BY clause
It works similarly to the WHERE clause but is applied to aggregated results
Syntax:
select column1, aggregate_function(column2)  
from table_name  
group BY column1  
having condition;  

7. limit (or FETCH or TOP) Clause
The LIMIT clause is used to restrict the number of rows returned by a query. Different databases may use variations like FETCH or TOP
Syntax (MySQL):
select column1, column2  
from table_name  
limit number_of_rows;  

8. JOIN Clause
The JOIN clause is used to combine rows from two or more tables based on a related column
Syntax:
select columns  
from table1  
join table2  
on table1.common_column = table2.common_column;  

9. UNION Clause
The UNION clause is used to combine the results of two or more SELECT statements. Duplicate rows are removed by default
Syntax:
select column1, column2  
from table1  
union  
select column1, column2  
from table2;  

10.INTO Clause
The INTO clause is used to insert query results into a new table or export data
Syntax:
select columns  
into new_table_name  
from table_name  
where condition;  

11.CASE Clause
The CASE clause allows conditional logic in SQL queries, similar to an if-else statement
Syntax:
select column1,  
       case 
           when condition1 then result1  
           when condition2 then result2  
           else result3  
       end as alias_name  
from table_name; 

12. IN Clause
The IN clause is used to filter records based on a list of values
Syntax:
select column1, column2  
from table_name  
where column_name IN (value1, value2, ...);  

13. BETWEEN Clause
The BETWEEN clause filters data within a specified range, inclusive of the boundaries
Syntax:
select column1, column2  
from table_name  
where column_name between value1 and value2;  

14. LIKE Clause
The LIKE clause is used to search for a specified pattern in a column. Wildcards include % (any number of characters) and _ (a single character)
Syntax:
select column1, column2  
from table_name  
where column_name like pattern;  

15. EXISTS Clause
The EXISTS clause checks for the existence of rows in a subquery
Syntax:
select column1, column2  
from table_name  
where exists (subquery); 

16. AS Clause
The AS clause is used to provide an alias (temporary name) for columns or tables, improving query readability
Syntax:
select column_name as alias_name  
from table_name;    
 */


/*
SELECT Query : 
The SELECT statement is used to retrieve data from a database table
It allows you to specify the columns you want to fetch and apply conditions to filter the results
Syntax-
select column1, column2, ...  
from table_name  
where condition;  
*/

-- Table Queries

-- Data Definition Language (DDL) {Create,Alter,Drop,Truncate,Rename}
-- Data Manipulation Language (DML) {Insert, Update, Delete}
-- Data Query Language (DQL) {select query}
-- Comment


-- table 1

create table countries(
id int primary key auto_increment,
 name varchar(50),
 description varchar(150),
 capital_city varchar(50),
 currency varchar(50)
 );
 insert into countries(name,description,capital_city,currency) values
 ('united states','A country in North America for its diverse culture and economy','Washington,DC','USD'),
 ('Canada','A country in North America for its natural beauty and multicultural society','Ottawa','CAD'),
 ('United Kingdom','A country in Europe consisting of England, Scotland, Wales, and Northern Ireland.','London','GBP'),
 ('Australia','A country and continent sorrunded by the Indian and Pacific ocean.','Canberra','AUD'),
 ('France','A country in Western Europe known for its art, fashion, and cuisine.','Paris','EUR'),
 ('Germany','A country in Western Europe known for its history, culture, and engineering. ','Berlin','EUR'),
 ('Japan','An island country in the East Asia known for its technology and traditional culture','Tokyo','JPY'),
 ('India','A country in South Asia known for its rich history and diverse culture','New Delhi','INR'),
 ('Brazil','The largest country in South America known for its Amazon rainforest and carnival festival.','Brasilia','BRL'),
 ('South Africa','A country at the Southern Tip of Africa known for its varied topography and cultural diversity.','Pretoria','ZAR');
 -- 1 select all coulumns from the countries
 select * from countries;
 
 -- 2 select specific cloumns
 select name,capital_city from countries;
 
 -- 3 select a country by name
 select * from countries where name = "India";
 
 -- 4 select countries with a specific currency
 select * from countries where currency = "EUR";
 
 -- 5 count the number of countries
 select count(*) as total_countries from countries;
 
 -- 6 select countries with a description containing a specific word
 select * from countries where description like '%culture%';
 
 -- 7 select countries ordered by name
 select * from countries order by name;
 
 -- 8 select countries with a capital city starting with 'b
 select * from countries where capital_city like 'B%';
 
 -- 9 select countries with more than 50 characters in description
 select * from countries where CHAR_LENGTH(description) > 50;
 
 -- 10 select the first 5 countries
 select * from countries limit 5;
 
 -- 11 slect countries with a currency name longer than 3 characters
 select * from countries where char_length(currency) > 3;
 
 -- 12 select countries with a description that does not contain 'country'
  select * from countries where description not like '%country%';
  
  -- 13 select the country with the longest name
   select * from countries order by char_length(name) desc limit 1;
   
   -- 14 select countries with a description containing 'know'
    select * from countries where description like '%know%';
    
    -- 15 select countries with a capital city that is not 'ottawa'
     select * from countries where capital_city !='Ottawa';
     
     -- 16 select the total number of unique currencies
     select count(distinct currency) as unique_currencies from countries;
     
     -- 17 select countries with the names that have more than 6 characters
      select * from countries where char_length(name) > 6;
      
      -- 18 select countries ordered by currency
       select * from countries order by currency;
       
       -- 19 select countries with a description that is not null
        select * from countries where description is not null;
        
        -- 20 slect countries with a capital city cointaining 'a'
         select * from countries where capital_city like '%a%';
         
         
         
create table cities (
id int primary key auto_increment,
 name varchar(50),
 description varchar(150),
 country_id int not null,
 foreign key(country_id) references countries(id)
 );
 insert into cities(name,description,country_id) values
 ('Mumbai','The financial capital of India, known for its bustling city life and Bollywood film industry',8 ),
 ('Delhi','The capital city of India, known for its historical landmarks and vibrant culture',8),
 ('Bengaluru','Known as the silicon velley of India, famous for its IT industry and plesent climate',8),
 ('Chennai','A major cultural and economic center in South India, known for its classical music and dance',8),
 ('Kolkata','Known for its rich cultural heritage sites and as a major center for the technology industry',8),
 ('Hyderabad','Famous for its hstorical sites and as a mojor economic hub in Gujarat',8),
 ('Ahmedabad','Known for its rich history and as a mojor economic hub in Gujarat',8),
 ('Pune','Known for its educational institutions and as a growing IT hub',8),
 ('Jaipur','The capital city of Rajasthan, known for its historic placesand vibrant culture',8),
 ('Varanasi','One of the oldest cities in the world, known for its spiritual significance and ghats along the ganga river',8);
 
 create table airports(
 id int primary key auto_increment,
 name varchar(50) not null,
 description text,
 city_id int not null,
 foreign key(city_id) references cities(id)
 );
 insert into airports(name,description,city_id) values
 ('Chhatrapati Shivaji Maharaj International Airport','The main international airport serving Mumbai, known for its modern facilities',1),
 ('Indira Gandhi International Airport','The primary airport serving Delhi, one of the busiest airports in India',2),
 ('Kempegowda International Airport','An internatinal airport serving Benguluru, known for its efficient sevices',3),
 ('Chennai International Airport','The main airport serving Chennai, known for its domestic and internatinal flights',4),
 ('Netaji Subhas Chandra Bose  International Airport','The main airport serving Hyderabad, known for its historical significance',5),
 ('Rajiv Gandhi  International Airport','An  International Airport serving Ahmedabad, known for its growing passengers traffic',6),
 ('Sardar Vallebhbhai Patel  International Airport','the main aiport serving Ahmedabad, known for its growing passengers traffic',7),
 ('Pune  International Airport','An airport serving Pune, known for its proximity to the IT hub',8),
 ('Jaipur International Airport','The main airport serving Jaipurm, known for its Beutiful architecture',9),
 ('Lal Bahadur Shastri  International Airport','An airport serving Varanasi, known for its cultural significance',10);
 
create table flights (
  id INT PRIMARY KEY AUTO_INCREMENT,
  airline_id INT NOT NULL,
  departure_airport_id INT NOT NULL,
  arrival_airport_id INT NOT NULL,
  departure_date DATE NOT NULL,
  departure_time TIME NOT NULL,
  arrival_date DATE NOT NULL,
  arrival_time TIME NOT NULL,
  FOREIGN KEY (airline_id) REFERENCES airlines(id),
  FOREIGN KEY (departure_airport_id) REFERENCES airports(id),
  FOREIGN KEY (arrival_airport_id) REFERENCES airports(id)
);
INSERT INTO flights (airline_id, departure_airport_id, arrival_airport_id, departure_date, departure_time, arrival_date, arrival_time) VALUES
(1, 1, 2, '2023-10-01', '10:00:00', '2023-10-01', '12:00:00'),  
(2, 2, 3, '2023-10-02', '15:30:00', '2023-10-02', '17:30:00'), 
(3, 3, 4, '2023-10-03', '08:15:00', '2023-10-03', '10:15:00'),  
(4, 4, 5, '2023-10-04', '14:45:00', '2023-10-04', '16:45:00'),  
(5, 5, 1, '2023-10-05', '09:00:00', '2023-10-05', '11:00:00'),
(1, 2, 4, '2023-10-06', '11:30:00', '2023-10-06', '13:30:00'),  
(2, 3, 1, '2023-10-07', '16:00:00', '2023-10-07', '18:00:00'), 
(3, 5, 2, '2023-10-08', '07:45:00', '2023-10-08', '09:45:00'),  
(4, 1, 3, '2023-10-09', '13:15:00', '2023-10-09', '15:15:00'), 
(5, 2, 5, '2023-10-10', '18:30:00', '2023-10-10', '20:30:00'); 

 -- 1 select all columns from the flights
SELECT * FROM flights;

-- 2 select specific columns
SELECT id, airline_id, departure_date, arrival_date FROM flights;

-- 3 select flights operated by airline ID 1
SELECT * FROM flights WHERE airline_id = 1;

-- 4 select flights departing from airport ID 2
SELECT * FROM flights WHERE departure_airport_id = 2;

-- 5 count the total number of flights
SELECT COUNT(*) AS total_flights FROM flights;

-- 6 select flights with departure time after '12:00:00'
SELECT * FROM flights WHERE departure_time > '12:00:00';

-- 7 select flights ordered by departure_date
SELECT * FROM flights ORDER BY departure_date;

-- 8 select flights arriving at airport ID 5
SELECT * FROM flights WHERE arrival_airport_id = 5;

-- 9 select flights where departure and arrival are on the same date
SELECT * FROM flights WHERE departure_date = arrival_date;

-- 10 select the first 5 flights
SELECT * FROM flights LIMIT 5;

-- 11 select flights where arrival time is before 10:00:00
SELECT * FROM flights WHERE arrival_time < '10:00:00';

-- 12 select flights not operated by airline ID 3
SELECT * FROM flights WHERE airline_id != 3;

-- 13 select flights with ID greater than 5
SELECT * FROM flights WHERE id > 5;

-- 14 select flights departing between '2023-10-03' and '2023-10-07'
SELECT * FROM flights WHERE departure_date BETWEEN '2023-10-03' AND '2023-10-07';

-- 15 select flights ordered by arrival_time descending
SELECT * FROM flights ORDER BY arrival_time DESC;

-- 16 count distinct departure airports
SELECT COUNT(DISTINCT departure_airport_id) AS unique_departure_airports FROM flights;

-- 17 select flights where arrival and departure airport are the same (if any)
SELECT * FROM flights WHERE departure_airport_id = arrival_airport_id;

-- 18 select flights that depart before 12 PM
SELECT * FROM flights WHERE departure_time < '12:00:00';

-- 19 select flights ordered by airline ID and then by departure_time
SELECT * FROM flights ORDER BY airline_id, departure_time;

-- 20 select flights that arrive after 6 PM
SELECT * FROM flights WHERE arrival_time > '18:00:00';




create table airlines (
  id int primary key auto_increment,
  name varchar(100) not null,
  description text,
  country_id int not null,
  foreign key (country_id) references countries(id)
);
insert into airlines (name, description, country_id) values
('indigo', 'a low-cost airline based in india, known for its punctuality and extensive domestic network.', 8),
('air india', 'the flag carrier airline of india, offering both domestic and international flights.', 8),
('spicejet', 'a low-cost airline that provides domestic and international services.', 8),
('goair', 'a low-cost airline that operates domestic flights and some international routes.', 8),
('vistara', 'a full-service airline that is a joint venture between tata sons and singapore airlines.', 8),
('airasia india', 'a low-cost airline that is a subsidiary of airasia, offering domestic flights.', 8),
('jet airways', 'a major airline that operated domestic and international flights, now in the process of revival.', 8),
('alliance air', 'a regional airline that operates domestic flights, a subsidiary of air india.', 8),
('air india express', 'a low-cost airline that operates international flights to the middle east and southeast asia.', 8),
('zoom air', 'a regional airline that operates domestic flights in india.', 8);

select * from airlines;

select name, description from airlines;

select * from airlines where name = 'indigo';

select * from airlines where country_id = 8;

select count(*) as total_airlines from airlines;

select * from airlines where description like '%low-cost%';

select * from airlines order by name;

select * from airlines where name like 'a%';

select * from airlines where char_length(description) > 50;

select * from airlines limit 5;

select * from airlines where char_length(name) > 6;

select * from airlines where description not like '%international%';

select * from airlines order by char_length(name) desc limit 1;

select * from airlines where description like '%subsidiary%';

select * from airlines where country_id != 1;

select count(distinct country_id) as unique_countries from airlines;

select * from airlines where name like '%air%';

select * from airlines order by country_id;

select * from airlines where description is not null;

select * from airlines where description like '%regional%';



create table hotels (
  id int primary key auto_increment,
  name varchar(50) not null,
  description text,
  city_id int not null,
  foreign key (city_id) references cities(id)
);
insert into hotels (name, description, city_id) values
('taj mahal palace', 'a luxury hotel in mumbai, known for its iconic architecture and rich history.', 1),
('the oberoi', 'a luxury hotel in delhi, offering world-class amenities and services.', 2),
('the leela palace', 'a five-star hotel in bengaluru, known for its opulence and hospitality.', 3),
('itc grand chola', 'a luxury hotel in chennai, known for its grand architecture and fine dining.', 4),
('the westin kolkata rajarhat', 'a luxury hotel in kolkata, offering modern amenities and comfort.', 5),
('hyatt hyderabad gachibowli', 'a luxury hotel in hyderabad, known for its contemporary design and services.', 6),
('radisson blu', 'a premium hotel in ahmedabad, offering comfortable accommodations and dining options.', 7),
('jw marriott pune', 'a luxury hotel in pune, known for its elegant design and exceptional service.', 8),
('rambagh palace', 'a heritage hotel in jaipur, known for its royal architecture and rich history.', 9),
('brijrama palace', 'a heritage hotel in varanasi, located on the banks of the ganges with historical significance.', 10);

select * from hotels;

select name, description from hotels;

select * from hotels where name = 'taj mahal palace';

select * from hotels where city_id = 1;

select count(*) as total_hotels from hotels;

select * from hotels where description like '%luxury%';

select * from hotels order by name;

select * from hotels where name like 't%';

select * from hotels where char_length(description) > 50;

select * from hotels limit 5;

select * from hotels where char_length(name) > 10;

select * from hotels where description not like '%heritage%';

select * from hotels order by char_length(name) desc limit 1;

select * from hotels where description like '%royal%';

select * from hotels where city_id != 5;

select count(distinct city_id) as unique_cities from hotels;

select * from hotels where name like '%palace%';

select * from hotels order by city_id;

select * from hotels where description is not null;

select * from hotels where description like '%modern%';

         
         
create table packages (
  id int primary key auto_increment,
  name varchar(50) not null,
  description text,
  price decimal(10, 2) not null,
  duration int not null,
  hotel_id int not null,
  flight_id int not null,
  foreign key (hotel_id) references hotels(id)
);
insert into packages (name, description, price, duration, hotel_id, flight_id) values
('mumbai to delhi getaway', 'enjoy a luxurious stay at taj mahal palace with a round trip flight to delhi.', 15000.00, 3, 1, 1),
('delhi business trip', 'stay at the oberoi with a flight to bengaluru for your business meetings.', 20000.00, 2, 2, 2),
('bengaluru relaxation package', 'relax at the leela palace with a flight to chennai.', 18000.00, 4, 3, 3),
('chennai cultural experience', 'experience the culture of chennai with a stay at itc grand chola and a flight to kolkata.', 22000.00, 5, 4, 4),
('kolkata heritage tour', 'stay at the westin kolkata rajarhat and enjoy a flight back to mumbai.', 16000.00, 3, 5, 5),
('delhi to bengaluru adventure', 'explore bengaluru with a stay at a luxury hotel and a flight from delhi.', 19000.00, 4, 2, 2),
('chennai to kolkata package', 'enjoy a cultural trip from chennai to kolkata with a stay at a premium hotel.', 17000.00, 3, 4, 4),
('mumbai to jaipur getaway', 'experience the royal heritage of jaipur with a flight from mumbai.', 25000.00, 5, 9, 1);

select * from packages;

select name, price from packages;

select * from packages where name = 'mumbai to delhi getaway';

select * from packages where price > 20000;

select count(*) as total_packages from packages;

select * from packages where description like '%luxury%';

select * from packages order by price desc;

select * from packages where duration >= 4;

select * from packages where char_length(description) > 60;

select * from packages limit 5;

select * from packages where hotel_id = 2;

select * from packages where flight_id = 1;

select * from packages where name like '%trip%';

select avg(price) as average_price from packages;

select * from packages where duration between 3 and 5;

select * from packages where description not like '%business%';

select count(distinct hotel_id) as unique_hotels_used from packages;

select * from packages order by duration;

select * from packages where price < 18000;

select * from packages where description like '%heritage%';


create table customers (
  id int primary key auto_increment,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  email varchar(100) not null unique,
  phone varchar(20) not null,
  address varchar(100) not null
);
insert into customers (first_name, last_name, email, phone, address) values
('aarav', 'sharma', 'aarav.sharma@example.com', '9876543210', '123 mg road, mumbai, maharashtra'),
('vivaan', 'patel', 'vivaan.patel@example.com', '8765432109', '456 sardar patel nagar, ahmedabad, gujarat'),
('aditya', 'verma', 'aditya.verma@example.com', '7654321098', '789 brigade road, bengaluru, karnataka'),
('anaya', 'iyer', 'anaya.iyer@example.com', '6543210987', '101 anna salai, chennai, tamil nadu'),
('diya', 'reddy', 'diya.reddy@example.com', '5432109876', '202 banjara hills, hyderabad, telangana'),
('kabir', 'khan', 'kabir.khan@example.com', '4321098765', '303 connaught place, delhi'),
('meera', 'nair', 'meera.nair@example.com', '3210987654', '404 marine drive, mumbai, maharashtra'),
('rohan', 'singh', 'rohan.singh@example.com', '2109876543', '505 juhu beach, mumbai, maharashtra'),
('saanvi', 'gupta', 'saanvi.gupta@example.com', '1098765432', '606 hiranandani gardens, mumbai, maharashtra'),
('kavya', 'chopra', 'kavya.chopra@example.com', '0987654321', '707 vasant kunj, delhi');

select * from customers;

select first_name, last_name from customers;

select * from customers where city like '%mumbai%';

select * from customers where email = 'aditya.verma@example.com';

select count(*) as total_customers from customers;

select * from customers where address like '%delhi%';

select * from customers order by first_name;

select * from customers where phone like '9%';

select * from customers where char_length(address) > 30;

select * from customers limit 5;

select * from customers where last_name = 'gupta';

select * from customers where email like '%example.com';

select * from customers where first_name like 'a%';

select * from customers where address not like '%maharashtra%';

select count(distinct address) as unique_addresses from customers;

select * from customers order by last_name desc;

select * from customers where char_length(first_name) > 5;

select * from customers where phone like '%4321';

select * from customers where address like '%beach%';

select * from customers where email is not null;


create table bookings (
  id int primary key auto_increment,
  customer_id int not null,
  package_id int not null,
  booking_date date not null,
  total_cost decimal(10, 2) not null,
  status varchar(20) not null check (status in ('pending', 'confirmed', 'cancelled')),
  foreign key (customer_id) references customers(id),
  foreign key (package_id) references packages(id)
);
insert into bookings (customer_id, package_id, booking_date, total_cost, status) values
(1, 1, '2023-10-01', 15000.00, 'confirmed'),
(2, 2, '2023-10-02', 20000.00, 'pending'),
(3, 3, '2023-10-03', 18000.00, 'confirmed'),
(4, 4, '2023-10-04', 22000.00, 'cancelled'),
(5, 5, '2023-10-05', 16000.00, 'confirmed'),
(6, 6, '2023-10-06', 19000.00, 'pending'),
(7, 7, '2023-10-07', 17000.00, 'confirmed'),
(8, 8, '2023-10-08', 25000.00, 'cancelled');

select * from bookings;

select customer_id, package_id from bookings;

select * from bookings where status = 'confirmed';

select * from bookings where total_cost > 20000;

select count(*) as total_bookings from bookings;

select * from bookings where booking_date between '2023-10-03' and '2023-10-07';

select * from bookings where status = 'pending';

select * from bookings order by booking_date;

select * from bookings where total_cost < 18000;

select * from bookings limit 5;

select * from bookings where status != 'cancelled';

select * from bookings where total_cost = (select max(total_cost) from bookings);

select * from bookings where total_cost = (select min(total_cost) from bookings);

select * from bookings where customer_id in (1, 3, 5);

select * from bookings where package_id = 2;

select * from bookings order by total_cost desc;

select count(*) from bookings where status = 'cancelled';

select * from bookings where booking_date like '2023-10-%';

select distinct status from bookings;

select avg(total_cost) as average_cost from bookings;

create table payments (
  id int primary key auto_increment,
  booking_id int not null,
  payment_method varchar(20) not null check (payment_method in ('credit_card', 'paypal', 'bank_transfer')),
  payment_date date not null,
  amount decimal(10, 2) not null,
  foreign key (booking_id) references bookings(id)
);
insert into payments (booking_id, payment_method, payment_date, amount) values
(1, 'credit_card', '2023-10-01', 15000.00),
(2, 'paypal', '2023-10-02', 20000.00),
(3, 'bank_transfer', '2023-10-03', 18000.00),
(4, 'credit_card', '2023-10-04', 22000.00),
(5, 'paypal', '2023-10-05', 16000.00),
(6, 'bank_transfer', '2023-10-06', 19000.00),
(7, 'credit_card', '2023-10-07', 17000.00),
(8, 'paypal', '2023-10-08', 25000.00);

select * from payments;

select id, booking_id, amount from payments;

select * from payments where payment_method = 'credit_card';

select * from payments where amount > 20000;

select * from payments where payment_date = '2023-10-05';

select * from payments order by amount desc;

select * from payments where payment_method in ('paypal', 'bank_transfer');

select count(*) as total_payments from payments;

select sum(amount) as total_amount_paid from payments;

select avg(amount) as average_payment from payments;

select payment_method, count(*) as method_count from payments group by payment_method;

select payment_method, sum(amount) as total_by_method from payments group by payment_method;

select * from payments where payment_date between '2023-10-01' and '2023-10-07';

select * from payments where payment_method != 'credit_card';

select * from payments where amount between 15000 and 20000;

select * from payments where payment_method like 'bank%';

select * from payments where payment_date is not null;

select * from payments where amount = (select max(amount) from payments);

select * from payments where amount = (select min(amount) from payments);

select p.* from payments p join bookings b on p.booking_id = b.id where b.status = 'cancelled';


create table reviews (
  id int primary key auto_increment,
  customer_id int not null,
  package_id int not null,
  review_date date not null,
  rating int not null check (rating between 1 and 5),
  review_text text,
  foreign key (customer_id) references customers(id),
  foreign key (package_id) references packages(id)
);
insert into reviews (customer_id, package_id, review_date, rating, review_text) values
(1, 1, '2023-10-02', 5, 'amazing experience! the hotel was luxurious and the service was top-notch.'),
(2, 2, '2023-10-03', 4, 'good trip overall, but the flight was delayed.'),
(3, 3, '2023-10-04', 5, 'absolutely loved the relaxation package! highly recommend.'),
(4, 4, '2023-10-05', 3, 'the cultural experience was nice, but the itinerary could be improved.'),
(5, 5, '2023-10-06', 4, 'great heritage tour! the guide was very knowledgeable.'),
(6, 6, '2023-10-07', 2, 'not satisfied with the service during the trip. expected better.'),
(7, 7, '2023-10-08', 5, 'fantastic package! everything was well organized and enjoyable.'),
(8, 8, '2023-10-09', 1, 'very disappointed with the experience. would not recommend.');

select * from reviews;

select id, customer_id, package_id, rating from reviews;

select * from reviews where rating = 5;

select * from reviews where rating <= 2;

select * from reviews where review_text like '%luxurious%';

select * from reviews where review_date between '2023-10-01' and '2023-10-05';

select * from reviews where customer_id = 1;

select * from reviews where package_id = 3;

select count(*) from reviews;

select avg(rating) from reviews;

select customer_id, avg(rating) as avg_rating from reviews group by customer_id;

select package_id, count(*) as total_reviews from reviews group by package_id;

select package_id, avg(rating) as avg_rating from reviews group by package_id order by avg_rating desc;

select * from reviews order by rating desc;

select * from reviews order by review_date desc;

select * from reviews limit 5;

select * from reviews where review_text is not null;

select * from reviews where rating between 3 and 5;

select customer_id, rating from reviews where review_text like '%recommend%';

select package_id from reviews where rating = (select max(rating) from reviews);


create table travel_agents (
  id int primary key auto_increment,
  name varchar(50) not null,
  description text,
  contact_info varchar(100) not null,
  package_id int not null,
  foreign key (package_id) references packages(id)
);
insert into travel_agents (name, description, contact_info, package_id) values
('travel guru', 'expert in customized travel packages for families and groups.', 'contact@travelguru.com', 1),
('wanderlust travels', 'specializes in adventure and eco-tourism packages.', 'info@wanderlusttravels.com', 2),
('explore india', 'offers cultural and heritage tours across india.', 'support@exploreindia.com', 3),
('luxury escapes', 'focuses on luxury travel experiences and high-end accommodations.', 'hello@luxuryescapes.com', 4),
('budget travelers', 'provides affordable travel options for budget-conscious travelers.', 'info@budgettravelers.com', 5);

select * from travel_agents;

select id, name, contact_info from travel_agents;

select * from travel_agents where name like '%Travel%';

select * from travel_agents where contact_info like '%.com';

select * from travel_agents where description like '%luxury%';

select * from travel_agents where package_id = 1;

select * from travel_agents order by name;

select * from travel_agents order by id desc;

select name, contact_info from travel_agents where description like '%heritage%';

select * from travel_agents limit 3;

select count(*) from travel_agents;

select package_id, count(*) as total_agents from travel_agents group by package_id;

select name from travel_agents where length(name) > 10;

select * from travel_agents where contact_info like '%@%';

select * from travel_agents where id between 2 and 4;

select * from travel_agents where name in ('Explore India', 'Luxury Escapes');

select * from travel_agents where description like '%eco-tourism%';

select id, name from travel_agents where name like 'B%';

select * from travel_agents where package_id in (3, 4, 5);

select * from travel_agents where description is not null;


create table destinations (
  id int primary key auto_increment,
  name varchar(50) not null,
  description text,
  location varchar(100) not null,
  package_id int not null,
  foreign key (package_id) references packages(id)
);
insert into destinations (name, description, location, package_id) values
('mumbai', 'the city that never sleeps, known for its vibrant culture and bollywood.', 'maharashtra, india', 1),
('delhi', 'the capital city, rich in history and modernity, with numerous monuments.', 'delhi, india', 2),
('bengaluru', 'known as the silicon valley of india, famous for its parks and nightlife.', 'karnataka, india', 3),
('chennai', 'a major cultural hub, known for its classical music and dance forms.', 'tamil nadu, india', 4),
('kolkata', 'the cultural capital of india, famous for its art, literature, and festivals.', 'west bengal, india', 5);

select * from destinations;

select name, location from destinations;

select * from destinations where location = 'delhi, india';

select * from destinations where name like 'm%';

select * from destinations where description like '%culture%';

select count(*) from destinations;

select * from destinations order by name asc;

select * from destinations order by id desc;

select * from destinations where location != 'tamil nadu, india';

select location, count(*) as total from destinations group by location;

select * from destinations where name like '%i';

select * from destinations where location like '%india%';

select * from destinations limit 3;

select * from destinations where id > 2;

select * from destinations where id between 2 and 4;

select * from destinations where name in ('mumbai', 'kolkata');

select distinct location from destinations;

select * from destinations order by location, name;

select * from destinations order by length(description) desc limit 1;

create table activities (
  id int primary key auto_increment,
  name varchar(50) not null,
  description text,
  location varchar(100) not null,
  package_id int not null,
  foreign key (package_id) references packages(id)
);
insert into activities (name, description, location, package_id) values
('city tour', 'a guided tour of the city''s major attractions and landmarks.', 'mumbai', 1),
('business meetings', 'scheduled meetings with local businesses and partners.', 'delhi', 2),
('spa day', 'a relaxing day at a luxury spa with various treatments.', 'bengaluru', 3),
('cultural dance show', 'experience traditional dance performances by local artists.', 'chennai', 4),
('heritage walk', 'a guided walk through the historical sites of the city.', 'kolkata', 5);

select * from activities;

select name, location from activities;

select * from activities where location = 'mumbai';

select * from activities where name like 's%';

select * from activities where description like '%guided%';

select count(*) from activities;

select * from activities order by name asc;

select * from activities order by id desc;

select * from activities where location != 'delhi';

select location, count(*) as total from activities group by location;

select * from activities where name like '%day';

select * from activities where location like '%u%';

select * from activities limit 3;

select * from activities where id > 2;

select * from activities where id between 2 and 4;

select * from activities where name in ('spa day', 'heritage walk');

select distinct location from activities;

select * from activities order by location, name;

select * from activities order by length(description) desc limit 1;


create table transportation (
  id int primary key auto_increment,
  name varchar(50) not null,
  description text,
  location varchar(100) not null,
  package_id int not null,
  foreign key (package_id) references packages(id)
);
insert into transportation (name, description, location, package_id) values
('private car', 'a comfortable private car for airport transfers and local travel.', 'mumbai', 1),
('luxury coach', 'a luxury coach for group travel with amenities.', 'delhi', 2),
('airport shuttle', 'convenient shuttle service from the airport to the hotel.', 'bengaluru', 3),
('private van', 'a spacious van for family travel and sightseeing.', 'chennai', 4),
('rickshaw ride', 'experience the local culture with a rickshaw ride through the city.', 'kolkata', 5);

select * from transportation;

select name, location from transportation;

select * from transportation where location = 'mumbai';

select * from transportation where name like 'p%';

select * from transportation where description like '%airport%';

select count(*) from transportation;

select * from transportation order by name asc;

select * from transportation order by id desc;

select * from transportation where location != 'delhi';

select location, count(*) as total from transportation group by location;

select * from transportation where name like '%van';

select * from transportation where location like '%u%';

select * from transportation limit 3;

select * from transportation where id > 2;

select * from transportation where id between 2 and 4;

select * from transportation where name in ('airport shuttle', 'rickshaw ride');

select distinct location from transportation;

select * from transportation order by location, name;

select * from transportation order by length(description) desc limit 1;


create table accommodations (
  id int primary key auto_increment,
  name varchar(50) not null,
  description text,
  location varchar(100) not null,
  package_id int not null,
  foreign key (package_id) references packages(id)
);

insert into accommodations (name, description, location, package_id) values
('the taj mahal palace', 'a luxury hotel offering stunning views of the arabian sea.', 'mumbai', 1),
('the oberoi', 'a five-star hotel known for its exceptional service and fine dining.', 'delhi', 2),
('the leela palace', 'an opulent hotel with lavish rooms and world-class amenities.', 'bengaluru', 3),
('itc grand chola', 'a luxury hotel that reflects the grandeur of south indian architecture.', 'chennai', 4),
('the westin kolkata', 'a modern hotel with spacious rooms and a relaxing atmosphere.', 'kolkata', 5);

select * from accommodations;

select name, location from accommodations;

select * from accommodations where location = 'mumbai';

select * from accommodations where name like 'the%';

select * from accommodations where description like '%luxury%';

select count(*) from accommodations;

select * from accommodations order by name asc;

select * from accommodations order by id desc;

select * from accommodations where location != 'delhi';

select location, count(*) as total from accommodations group by location;

select * from accommodations where name like '%palace';

select * from accommodations where location like '%u%';

select * from accommodations limit 3;


select * from accommodations where id > 2;

select * from accommodations where id between 2 and 4;

select * from accommodations where name in ('the oberoi', 'itc grand chola');

select distinct location from accommodations;

select * from accommodations order by location, name;

select * from accommodations order by length(description) desc limit 1;




