-- create multi-national companies database
create database MNC;
use MNC;

-- table 1
-- create the comapanies table
-- create companies table with additional attributes and constraints
create table companies (
company_id int auto_increment primary key,
company_name varchar(100) not null,
headquarters_location varchar(100),
established_date date,
industry varchar(50),
revenue decimal(10,2) check (revenue>0), -- revenue must be greater than 0
employee_count int default 0 check (employee_count >=0), -- employee count must be non-negative
website varchar(255) unique, -- unique website url for the company
created_at timestamp default current_timestamp, -- timestamp for record creation
updated_at timestamp default current_timestamp on update current_timestamp -- timestamp for record updates
);

drop table companies;

-- insert 10 records
insert into companies(company_name,headquarters_location,established_date,industry,revenue,employee_count,website) values
('Tata Consultancy Services','Mumbai, Maharashtra','1968-04-01','Information Technology',20000000.00,500000,'https://www.TCS.com' ),
('Relience Industries Limited','Mumbai Maharashtra','1960-05-08','Conglomerate',80000000.00,200000,'https://ril.com'),
('Infosys','Bengaluru, Karnataka','1981-07-02','Information Tehnology',13000000.00,2500000,'https://www.infosys.com'),
('Wipro','Bangaluru, Karnataka','1945-12-29','Information Technology',80000000.00,2000000,'https://www.wipro.com'),
('HDFC Bank','Mumbai, Maharashtra','1994-08-010','Banking',15000000.00,120000,'https://www.hdfcbank.com'),
('ICICI bank','Mumbai, Maharashtra','1994-01-05','Banking',12000000.00,100000,'https://www.icicibank.com'),
('Bharti Airtal','New Delhi','1995-07-07','Telecommunication',1500000.00,30000,'https://www.airtal.in'),
('State Bank of India','Mumbai,Maharashtra','1995-01-01','Banking',2000000.00,250000,'https://www.sbi.co.in'),
('Hindustan Unilever Limited','Mumbai, Maharashtra','1933-10-17','Consumer Goods',6000000.00,40000,'https://www.hul.co.in'),
('Larsen & Tourbo','Mumbai, Maharashtra','1938-02-07','Engineering & Construction',1500000.00,50000,'https://www.larsentourbo.com');


-- 1 select queries
select * from companies;

-- 1. select specific columns
select company_name,headquarters_location,revenue from companies;

-- 2 select companies in specific industry
select * from companies where industry= 'Information Technology';

-- 3 select companies with revenue greater than a certain amount
select * from companies where revenue > 100000.00;

-- 4 select campanies establisehed in a specific year
select * from companies where year(established_date) = '1994';

-- 5 select companies ordered by revenue in descending order
select * from companies order by revenue desc;

-- 6 select companies with specific headquerters location
select * from companies where headquarters_location = 'Mumbai, Maharashtra';

-- 7 select comapanies with employee count greater than a certain number
select * from companies where employee_count > 100000;

-- 8 select companies established after a certain date
select * from companies where year(established_date) >1990;

-- 9 select companies with a revenue between two values
select * from companies where revenue between 50000000.00 and 20000000.00;

-- 10 count the number of companies in each industry
select industry, count(*) as company_name from companies group by industry;

-- 11 select the industry of comapanies with less than certain character
select * from companies where char_length(industry)<20;

-- 12 select comapnies with a limit
select * from companies limit 6;

-- 13 select companies not having industry as IT
select * from companies where industry != 'Information Technology';

-- 14 select comapany name and its revnue order by revenue
select company_name,revenue from companies order by revenue desc;

-- 15 select companies within munbai
select * from companies where headquarters_location = 'Bangaluru, Karnataka';


/*
the error message you have encountering indicates that mySQl 'safe update mode'
is enabled.alterthis mode prevents you from excecuting update or delete statements that do not include
 a WHERE clause that uses a key column(like a primary key). this is a safety feature
  to prevent accidental update or deletion of all in a table.
  */
  
  -- diasable safe updates mode temporarily
  set SQL_SAFE_UPDATES = 0;
    set SQL_SAFE_UPDATES = 1; -- re-enable safe updates
    
-- 2 alter queries

-- 1. add a new column
alter table companies
add column stock_symbol varchar(10);

select * from companies;

-- 2 modify an existing column
alter table companies
modify column revenue decimal(20,2) check (revenue >=0);

-- 3 drop a column
alter table companies
drop column stock_symbol;

-- 4 rename a column
alter table companies
change column headquarters_location location varchar(100);

-- 5 add a default value to an existing column
alter table companies
modify column revenue decimal(20,2) check (revenue >=0) default 0;

--  6 add a new column with a dfault value
alter table companies
add column country varchar(100) default 'India';

-- 7 drop a column if it exists
alter table companies
drop column if exists country;

-- 8 add a unique constraint
alter table companies
add constraint unique_website unique (website);

-- 9 change the data type of a column
alter table companies
modify column established_date datetime;

-- 10 add a foreign key constarint
alter table companies
ADD constraint fk_industry foreign key (industry) references industries(industry_name);



-- 3 delete queries

-- 1 delete a specific record
delete from companies
where company_name ='HDFC Bank';
select * from companies;

-- 2 delete a revenue smaller than
delete from companies
where revenue <5000000.00;

-- 3 delete records
delete from companies
where industry = 'Banking';

-- 4 delete record before certain date
delete from companies
where established_date < '2000-01-01';

-- 5 delete records with a specific headquarters location
delete from comapanies
where headquarters_location ='New Delhi';

-- 6 delete records with a specific employee count
delete from companies
where employee_count = 0;

-- 7 delete records with a specific website
delete from companies
where website ='https://www.hdfc.com';

-- 8 delete records based on multiple conditions
delete from companies
where industry ='Telecommunications' and revenue < 100000000.00;

-- 9 delete all records (use with caution)
delete from companies;

-- 10 delete records with a specific name pattern
delete from companies
where company_name like 'H%';


-- rename 

-- 1 rename the database (error cant rename databse)
alter database MNC rename to MutiNationalCompanies;

--  2 rename the companies table
alter table companies rename to MutiNationalCompanies;

-- 3 rename the company_ID column
alter table MutiNationalCompanies rename column company_id to id;

-- 4 rename the company_name column
alter table MutiNationalCompanies rename column company_name to name;

select * from MutiNationalCompanies;

-- 5 rename the headquarters_location column
alter table MutiNationalCompanies rename column headquarters_location to headquarters;

-- 6 rename multiple column
alter table MutiNationalCompanies
rename column industry to business_sector,
rename column website to company_website;

select * from MutiNationalCompanies;




-- 5  update query

-- disable safe update mode temporarily
set SQL_SAFE_UPDATES =0;  
set SQL_SAFE_UPDATES =1;

-- 1 update a specific reord
update  MutiNationalCompanies
set revenue = 20000000000.00, employee_count = 520000
where company_name ='Tata Consultancy Services';

-- 2 update multiple records 
update MutiNationalCompanies 
set business_sector='telecom'
where company_name in ('Bharti Airtel','Reliance Industries Limited');

-- 3 update revenue for all companies in a specific industry
update MutiNationalCompanies
set revenue = revenue * 1.10
where Business_sector = 'Banking';

-- 4 update employee count for a specific company
update MutiNationalCompanies
set emplyee_count = 210000
where company_name ='Wipro';

-- 5 update headquarters location 
update MutiNationalCompanies
set headquarters_location ='Gurugram, Haryana'
where company_name = 'ICICI Bank';

-- 6 update established date
update MutiNationalCompanies
set established_date ='1994-01-01'
where company_name ='ICICI Bank';

-- 7 update website URL
update MutiNationalCompanies
set website = 'https://www.infosys.co.in'
where company_name ='infosys';

-- 8 update revenue for companies with low employee count
update MutiNationalCompanies
set revenue = 0
where employee_count < 50000;

-- 9 update industry for a specific company
update MutiNationalCompanies
set industry = 'consumer products'
where compnay_name ='Hisdustan Unilever Limited';

-- 10 update multiple filelds fro a aspecific company
update MutiNationalCompanies
set revenue = 1000000000.00, industry ='Construction and Engineering'
where company_name ='Larsen & Tourbo';

