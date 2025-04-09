create database school;
use school;
create table teachers(id int primary key,name varchar(100) not null, course varchar(100) not null);
insert into teachers(id,name,course) values(1,'Shalini','Data Science');
select *from teachers;
insert into teachers(id,name,course) values
(2,'Rohit','Advanced Excel'),
(3,'Siash','Comunications Skills'),
(4,'Shalini','SQL'),
(5,'Shalini','AL MI');

insert into teachers values(6,'Shalini','networking');


create table students(id int primary key,
name varchar(100) not null,
 course varchar(100) not null,
 age int not null,
 standard varchar(100) not null);
 
 insert into students(id,name,course,age,standard) values(1,'atharva','data science',20,'graduate');
insert into students values
(2,'om','data analysis',20,'graduate'),
(3,'prem','full stack developer',21,'graduate'),
(4,'vivek','mern stack developer',22,'graduate'),
(5,'prasad','advanced excel',23,'graduate');

select *from students;


create table subjects(id int primary key,
name varchar(100) not null,
 duration varchar(100) not null,
 cost int not null,
 popularity varchar(100) not null);
 
 
insert into subjects values
(1,'data science','10 months',125000,'high'),
(2,'data analysis','6 months',100000,'moderate'),
(3,'advanced excel','3 months',60000,'moderate'),
(4,'cyber security','10 months',90000,'high'),
(5,'full stack developer','12 months',140000,'high'),
(6,'mern stack developer','10 months',130000,'high');
select *from subjects;

create table branches(id int primary key,
name varchar(100) not null,
 location varchar(100) not null,
 reviews int not null);
 
 
insert into branches values
(1,'develearn','thane',4.5),
(2,'develearn','matunga',4.8);

select *from teachers;
select *from subjects;
select *from students;
select *from branches;

use school;

truncate table branches;
drop table branches;

create database IT_institutes;

use IT_institutes;

create table develearn(id int primary key,
courses varchar(100) not null,
 cost int not null,
 reviews varchar(100) not null,
 quality varchar(100) not null);
 
 insert into develearn(id ,courses, cost, reviews,quality) values
 (1,'data science',125000,'4.7 stars','great'),
(2,'data analysis',100000,'4.6 stars','great'),
(3,'advanced excel',60000,'4.8 stars','great'),
(4,'cyber security',120000,'4.8 stars','great'),
(5,'full stack developer',150000,'5 stars','great'),
(6,'mern stack developer',120000,'4.8 stars','great');

select *from develearn; 

create table ITvedant(id int primary key,
courses varchar(100) not null,
 cost int not null,
 reviews varchar(100) not null,
 quality varchar(100) not null);
 
 insert into ITvedant(id ,courses, cost, reviews,quality) values
 (1,'data science',160000,'4 stars','good'),
(2,'data analysis',130000,'4.2 stars','moderate'),
(3,'advanced excel',90000,'4.3 stars','good'),
(4,'cyber security',140000,'3.9 stars','good'),
(5,'full stack developer',170000,'4.5 stars','moderate'),
(6,'mern stack developer',145000,'4.1 stars','good');

select *from ITvedant; 

create table interskills(id int primary key,
courses varchar(100) not null,
 cost int not null,
 reviews varchar(100) not null,
 quality varchar(100) not null);
 
 insert into interskills(id ,courses, cost, reviews,quality) values
 (1,'comunication skills',50000,'4 stars','good'),
(2,'data analysis',85000,'4.4 stars','moderate'),
(3,'advanced excel',90000,'4.1 stars','great'),
(4,'cyber security',140000,'4 stars','moderate'),
(5,'artificial intelligence',170000,'3.8 stars','moderate'),
(6,'mern stack developer',145000,'4 stars','good');

select *from interskills; 

create table RCT_forum(id int primary key,
courses varchar(100) not null,
 cost int not null,
 reviews varchar(100) not null,
 quality varchar(100) not null);
 
 insert into RCT_forum(id ,courses, cost, reviews,quality) values
 (1,'networking',40000,'4 stars','good'),
(2,'machine learning',20000,'4.7 stars','moderate'),
(3,'data science using r',30000,'4.6 stars','poor'),
(4,'cyber security',20000,'4 stars','great'),
(5,'artificial intelligence',35000,'3.7stars','good'),
(6,'mern stack developer',25000,'4 stars','good');

select *from RCT_forum; 



create table boston(id int primary key,
course varchar(100) not null unique,
cost int not null,
ratings varchar(100) not null,
quality varchar(100) not null);

insert into boston(id,course,cost,ratings,quality) values
(1,'cloud computing',200000,'4.2 stars','good'),
(2,'AWS',250000,'3.5 stars','poor'),
(3,'data science',220000,'4.1 stars','moderate'),
(4,'full stack ',180000,'4 stars','good'),
(5,'mern stack',190000,'4 stars','good');
select *from boston; 

create table keerti(id int primary key,
course varchar(100) not null unique,
cost int not null,
ratings varchar(100) not null,
quality varchar(100) not null);

insert into keerti(id,course,cost,ratings,quality) values
(1,'cloud computing',200000,'4.2 stars','good'),
(2,'AWS',250000,'3.5 stars','poor'),
(3,'data science',220000,'4.1 stars','moderate'),
(4,'full stack ',180000,'4 stars','good'),
(5,'mern stack',190000,'4 stars','good');
select *from keerti; 

create database fitness_gym;
use fitness_gym;

create table members(id int primary key,
name varchar(100) not null unique,
age int not null,
contact varchar(10) not null,
membership varchar(100) not null);

insert into members(id,name,age,contact,membership) values
(1,'prem',22,'1234567890','3 months'),
(2,'vivek',21,'1234567891','1 months'),
(3,'prasad',23,'1134567890','2 months'),
(4,'atharva',20,'1234367890','6 months'),
(5,'om',22,'1234167890','1 year');

select *from members; 

create table trainers(id int primary key,
name varchar(100) not null unique,
specialization varchar(100) not null,
contact varchar(10) not null,
salary int not null);
insert into trainers(id,name,specialization,contact,salary) values
(1,'a','muscles training','1234567890',15000),
(2,'b','weight loss','1234567830',20000),
(3,'c','cardio','1234517890',17000),
(4,'d','strching','1234167890',12000),
(5,'e','bulking','1234567820',10000);
select *from trainers; 

create table workout(id int primary key,
member varchar(100) not null ,
plan varchar(100) not null,
duration varchar(10) not null,
trainer varchar(100) not null);
insert into workout(id,member,plan,duration,trainer) values
(1,'prem','muscles training','1 year','a'),
(2,'vivek','weight loss','6 months','b'),
(3,'prasad','cardio','1 year','c'),
(4,'atharva','strching','1 year','d'),
(5,'om','cardio','3 year','e');
select *from workout; 

create table payment(id int primary key,
member varchar(100) not null ,
amount int not null,
payment_id varchar(10) not null,
mode_of_payment varchar(100) not null);
insert into payment(id,member,amount,payment_id,mode_of_payment) values
(1,'prem',6000,'12345','cash'),
(2,'vivek',2000,'12145','gpay'),
(3,'prasad',6000,'12345','gpay'),
(4,'atharva',12000,'14345','cash'),
(5,'om',6000,'12335','cash');
select *from payment; 

create table equipment(id int primary key,
name varchar(100) not null ,
category varchar(100) not null,
maintenance varchar(100) not null,
availability varchar(100) not null);
insert into equipment(id,name,category,maintenance,availability) values
(1,'chest press','chest','3 months','every 5 mins'),
(2,'dumbells','full body','1 month','full time'),
(3,'leg press','quads','2 months','every 10 mins'),
(4,'back pull down','lats','3 months','every 5 mins'),
(5,'bicep curls','biceps','3 months','every 5 mins');
select *from equipment; 

create database gaming;
use gaming;

create table players(
id int primary key,
username varchar(100) not null unique,
email varchar(100) not null unique,
level int not null,
date date not null);
insert into players (id, username, email, level, date) values
(1, 'player_one', 'player_one@example.com', 5, '2023-06-10'),
(2, 'player_two', 'player_two@example.com', 8, '2022-11-22'),
(3, 'player_three', 'player_three@example.com', 12, '2021-09-18'),
(4, 'player_four', 'player_four@example.com', 15, '2020-01-05'),
(5, 'player_five', 'player_five@example.com', 3, '2024-02-14');
select *from players;

create table games (
    id int primary key,
    title varchar(100) not null,
    genre varchar(50) not null,
    developer varchar(100) not null,
    release_date date not null);
    insert into games (id, title, genre, developer, release_date) VALUES
(1, 'Battle Arena', 'Action', 'Game Studios', '2021-08-15'),
(2, 'Speed Racer', 'Racing', 'Speed Corp', '2019-07-21'),
(3, 'Kingdom Quest', 'RPG', 'Quest Devs', '2020-05-10'),
(4, 'Zombie Land', 'Survival', 'Undead Labs', '2022-09-30'),
(5, 'Future Wars', 'Strategy', 'Future Tech', '2018-12-11');
select*from games;

create table scores (
    id int primary key,
    player varchar(100) not null unique,
    game varchar(100) not null,
    score int not null,
    score_date date not null);
insert into scores (id, player, game, score, score_date) values
(1,'player_one','battle arena',5000,'2024-08-11'),
(2, 'player_two', 'Speed Racer', 7200, '2024-03-22'),
(3, 'player_three', 'Kingdom Quest', 3500, '2024-03-18'),
(4, 'player_four', 'Zombie land', 8200, '2024-03-25'),
(5, 'player_five', 'Future Wars', 6400, '2024-03-28');
select *from scores;

create table tournaments (
    id int primary key,
    game varchar(100) not null,
    tournament_name varchar(100) not null,
    prize_pool int not null,
    start_date date not null);
insert into tournaments (id, game, tournament_name, prize_pool, start_date) values
(1, 'Battle Arena', 'Battle Masters', 10000, '2024-05-10'),
(2,'Kingdom Quest', 'Kingdom Wars', 5000, '2024-06-15'),
(3,'Future Wars', 'Future Domination', 8000, '2024-07-20'),
(4,'Speed Racer', 'Speed Legends', 6000, '2024-08-05'),
(5,'Zombie Land', 'Zombie Apocalypse', 7000, '2024-09-12');
select *from tournaments;

create table friends (
    id int primary key,
    player varchar(100) not null,
    player_2 varchar(100) not null,
    friendship_date date not null,
    status varchar(20) not null);
insert into friends (id, player, player_2, friendship_date, status) VALUES
(1,'player_one', 'player_one_2', '2023-05-01', 'Accepted'),
(2,'player_two', 'player_two_2', '2023-06-10', 'Pending'),
(3,'player_three', 'player_three_2', '2023-07-20', 'Accepted'),
(4,'player_four','player_four_2', '2023-08-30', 'Accepted'),
(5,'player_five','player_five_2', '2024-02-14', 'Pending');
select *from friends;

create database medical;
use medical;
create table patients (
    id int primary key,
    name varchar(100) not null,
    age int not null,
    contact varchar(10) not null,
    address varchar(150) not null);
    insert into patients (id, name, age, contact, address) values
(1, 'a', 32, '9876543210', 'mumbai'),
(2, 'b', 28, '9876543210', 'pune'),
(3, 'c', 40, '9876523210', 'delhi'),
(4, 'd', 35, '9876543610', 'bangalore'),
(5, 'e', 50, '9876543910', 'kolkata');

create table doctors (
    id int primary key,
    name varchar(100) not null,
    specialization varchar(100) not null,
    contact varchar(10) not null,
    experience int not null);
insert into doctors (id, name, specialization, contact, experience) values
(1, 'dr.a', 'cardiologist', '9998887776', 10),
(2, 'dr.b', 'dermatologist', '8887776665', 8),
(3, 'dr.c', 'orthopedic', '7776665554', 12),
(4, 'dr.d', 'pediatrician', '6665554443', 7),
(5, 'dr.e', 'neurologist', '5554443332', 15);

create table appointments (
    id int primary key,
    patient varchar(100) not null,
    doctor varchar(100) not null,
    appointment_date date not null,
    status varchar(50) not null);
    insert into appointments(id,patient,doctor,appointment_date,status) values
   (1, 'a','dr.a','2024-04-10', 'confirmed'),
   (2, 'b','dr.b','2024-04-12', 'pending'),
   (3, 'c','dr.c','2024-04-15', 'confirmed'),
   (4, 'd','dr.d','2024-04-18', 'cancelled'),
   (5, 'e','dr.e','2024-04-20', 'confirmed');
   select *from appointments;
   
   create table medicines (
    id int primary key,
    name varchar(100) not null,
    manufacturer varchar(100) not null,
    price int not null,
    expiry_date date not null);
    insert into medicines (id, name, manufacturer, price, expiry_date) values
(1, 'a', 'cipla', 500, '2025-08-10'),
(2, 'b', 'sun pharma', 120, '2026-01-15'),
(3, 'c', 'ranbaxy', 800, '2025-05-20'),
(4, 'd', 'dr. reddy', 400, '2025-11-30'),
(5, 'e', 'lupin', 900, '2026-03-25');
select *from medicines;

create table bills (
    id int primary key,
    patient varchar(100) not null,
    amount int not null,
    payment varchar(50) not null,
    bill_date date not null);
insert into bills (id, patient, amount, payment, bill_date) values
(1,'a', 1500, 'cash', '2024-04-10'),
(2,'b', 2000, 'credit card', '2024-04-12'),
(3,'c', 2500, 'upi', '2024-04-15'),
(4, 'd', 1800, 'debit card', '2024-04-18'),
(5,'e', 3000, 'net banking', '2024-04-20');
select *from medicines;

create database banking_system;
use banking_system;

create table customers (
    customer_id int primary key,
    name varchar(100) not null,
    contact varchar(10) not null,
    address varchar(255) not null,
    email varchar(100) not null unique
);
insert into customers (customer_id, name, contact, address, email) values
(1, 'a', '9876543210', 'mumbai', 'a@mail.com'),
(2, 'b', '8765432109', 'pune', 'b@mail.com'),
(3, 'c ', '7654321098', 'delhi', 'c@mail.com'),
(4, 'd', '6543210987', 'bangalore', 'd@mail.com'),
(5, 'e', '5432109876', 'kolkata', 'e@mail.com');
select *from customers;

create table accounts (
    account_id int primary key,
    customer_id int not null,
    account_type varchar(50) not null,
    balance int not null,
    open_date date not null,
    foreign key (customer_id) references customers(customer_id)
);
insert into accounts (account_id, customer_id, account_type, balance, open_date) values
(101, 1, 'savings', 50000, '2022-01-15'),
(102, 2, 'current', 200000, '2021-11-10'),
(103, 3, 'savings', 35000, '2023-03-01'),
(104, 4, 'salary', 75000, '2022-08-20'),
(105, 5, 'savings', 62000, '2021-07-25');
select *from accounts;

create table transactions (
    transaction_id int primary key,
    account_id int not null,
    transaction_type varchar(50) not null,
    amount int not null,
    transaction_date date not null,
    foreign key (account_id) references accounts(account_id)
);
insert into transactions (transaction_id, account_id, transaction_type, amount, transaction_date) values
(1, 101, 'deposit', 10000, '2024-04-01'),
(2, 102, 'withdrawal', 5000, '2024-04-02'),
(3, 103, 'deposit', 7000, '2024-04-03'),
(4, 104, 'withdrawal', 10000, '2024-04-04'),
(5, 105, 'deposit', 15000, '2024-04-05');
select *from transactons;

create table loans (
    loan_id int primary key,
    customer_id int not null,
    loan_type varchar(50) not null,
    loan_amount int not null,
    issue_date date not null,
    foreign key (customer_id) references customers(customer_id)
);
insert into loans (loan_id, customer_id, loan_type, loan_amount, issue_date) values
(1, 1, 'home', 500000, '2023-01-01'),
(2, 2, 'car', 300000, '2022-10-10'),
(3, 3, 'education', 200000, '2023-06-15'),
(4, 4, 'personal', 150000, '2023-12-20'),
(5, 5, 'business', 600000, '2022-05-30');
select *from loans;

create table employees (
    employee_id int primary key,
    name varchar(100) not null,
    role varchar(50) not null,
    contact varchar(10) not null,
    join_date date not null
);
insert into employees (employee_id, name, role, contact, join_date) values
(1, 'a', 'manager', '9998887776', '2020-01-10'),
(2, 'b', 'clerk', '8887776665', '2021-03-15'),
(3, 'c', 'cashier', '7776665554', '2019-06-20'),
(4, 'd', 'assistant', '6665554443', '2022-08-01'),
(5,'e', 'loan officer', '5554443332', '2023-09-05');
select *from employees;

create database library;
use library;

create table books (
    book_id int primary key,
    title varchar(100) not null,
    author varchar(100) not null,
    genre varchar(50) not null,
    publication_year int not null
);
insert into books(book_id, title, author, genre, publication_year) values
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960),
(3, '1984', 'George Orwell', 'Dystopian', 1949),
(4, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925),
(5, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 2019);
select *from books;

create table members(
  member_id int primary key,
  name varchar(100) not null,
  email varchar(100) unique not null,
  phone varchar(10) not null,
  membership_type varchar(50) not null
);
insert into members(member_id, name, email, phone, membership_type) values
(1, 'A', 'A@gmail.com', '9876543210', 'monthly'),
(2, 'B', 'B@gmail.com', '9876543211', 'quarterly'),
(3, 'C', 'C@gmail.com', '9876543212', 'yearly'),
(4, 'D', 'D@gmail.com', '9876543213', 'monthly'),
(5, 'E', 'E@gmail.com', '9876543214', 'yearly');
select *from members;

create table issue_records(
  issue_id int primary key,
  member_id int not null,
  book_id int not null,
  issue_date date not null,
  return_date date not null,
  foreign key(member_id) references members(member_id),
  foreign key(book_id) references books(book_id)
);
insert into issue_records(issue_id, member_id, book_id, issue_date, return_date) values
(1, 1, 2, '2024-03-01', '2024-03-15'),
(2, 2, 4, '2024-03-05', '2024-03-20'),
(3, 3, 1, '2024-03-10', '2024-03-25'),
(4, 4, 5, '2024-03-12', '2024-03-27'),
(5, 5, 3, '2024-03-15', '2024-03-30');
select *from issue_records;

create table staff(
  staff_id int primary key,
  name varchar(100) not null,
  role varchar(50) not null,
  contact varchar(10) not null,
  shift varchar(20) not null
);
insert into staff(staff_id, name, role, contact, shift) values
(1, 'a', 'Librarian', '9876500001', 'morning'),
(2, 'b', 'Assistant', '9876500002', 'evening'),
(3, 'c', 'Librarian', '9876500003', 'morning'),
(4, 'd', 'Clerk', '9876500004', 'afternoon'),
(5, 'e', 'Security', '9876500005', 'night');
select *from staff;

create table fines(
  fine_id int primary key,
  member_id int not null,
  amount int not null,
  reason varchar(100) not null,
  date_paid date not null,
  foreign key(member_id) references members(member_id)
);
insert into fines(fine_id, member_id, amount, reason, date_paid) values
(1, 1, 50, 'Late return', '2024-03-16'),
(2, 2, 0, 'No fine', '2024-03-20'),
(3, 3, 20, 'Book damaged', '2024-03-25'),
(4, 4, 0, 'No fine', '2024-03-27'),
(5, 5, 10, 'Late return', '2024-03-30');
select *from fines;


create database parking_lot;
use parking_lot;

create table vehicles(
  vehicle_id int primary key,
  license_plate varchar(20) not null,
  owner_name varchar(100) not null,
  vehicle_type varchar(50) not null,
  contact varchar(10) not null
);
insert into vehicles(vehicle_id, license_plate, owner_name, vehicle_type, contact) values
(1, 'MH12AB1234', 'a', 'Car', '9876543210'),
(2, 'MH14CD5678', 'b', 'Bike', '9876543211'),
(3, 'MH01XY4321', 'c', 'Car', '9876543212'),
(4, 'MH05UV1111', 'd', 'Scooter', '9876543213'),
(5, 'MH09PQ9876', 'e', 'Truck', '9876543214');
select *from vehicles;

create table parking_slots(
  slot_id int primary key,
  slot_number varchar(10) not null,
  slot_type varchar(50) not null,
  is_available varchar(5) not null,
  level int not null
);
insert into parking_slots(slot_id, slot_number, slot_type, is_available, level) values
(1, 'A1', 'Car', 'yes', 1),
(2, 'A2', 'Car', 'no', 1),
(3, 'B1', 'Bike', 'yes', 2),
(4, 'C1', 'Truck', 'no', 0),
(5, 'B2', 'Bike', 'yes', 2);
select *from parking_slots;

create table parking_records(
  record_id int primary key,
  vehicle_id int not null,
  slot_id int not null,
  entry_time date not null,
  exit_time date not null,
  foreign key(vehicle_id) references vehicles(vehicle_id),
  foreign key(slot_id) references parking_slots(slot_id)
);
insert into parking_records(record_id, vehicle_id, slot_id, entry_time, exit_time) values
(1, 1, 2, '2024-04-01', '2024-04-03'),
(2, 2, 3, '2024-04-01', '2024-04-02'),
(3, 3, 1, '2024-04-01', '2024-04-02'),
(4, 4, 5, '2024-04-01', '2024-04-01'),
(5, 5, 4, '2024-04-01', '2024-04-04');
select *from parking_records;

create table employees(
  employee_id int primary key,
  name varchar(100) not null,
  role varchar(50) not null,
  shift varchar(50) not null,
  contact varchar(10) not null
);
insert into employees(employee_id, name, role, shift, contact) values
(1, 'a', 'Guard', 'Morning', '9000011111'),
(2, 'b', 'Manager', 'Day', '9000011112'),
(3, 'c', 'Cleaner', 'Night', '9000011113'),
(4, 'd', 'Security', 'Evening', '9000011114'),
(5, 'e', 'Supervisor', 'Night', '9000011115');
select *from employees;

create table payments(
  payment_id int primary key,
  vehicle_id int not null,
  amount int not null,
  payment_mode varchar(50) not null,
  payment_date date not null,
  foreign key(vehicle_id) references vehicles(vehicle_id)
);
insert into payments(payment_id, vehicle_id, amount, payment_mode, payment_date) values
(1, 1, 100, 'cash', '2024-04-01'),
(2, 2, 50, 'gpay', '2024-04-01'),
(3, 3, 120, 'phonepe', '2024-04-01'),
(4, 4, 60, 'cash', '2024-04-01'),
(5, 5, 200, 'paytm', '2024-04-01');
select *from payments;


create database attendance_system;
use attendance_system;


create table students(
  student_id int primary key,
  name varchar(100) not null,
  roll_no varchar(20) not null,
  class varchar(50) not null,
  contact varchar(10) not null
);
insert into students(student_id, name, roll_no, class, contact) values
(1, 'Atharva ', '01', 'TYBScIT', '9876543210'),
(2, 'Vivek ', '02', 'TYBScIT', '9876543211'),
(3, 'Om ', '03', 'TYBScIT', '9876543212'),
(4, 'Prasad ', '04', 'TYBScIT', '9876543213'),
(5, 'Prem ', '05', 'TYBScIT', '9876543214');
select *from students;


create table subjects(
  subject_id int primary key,
  subject_name varchar(100) not null,
  subject_code varchar(20) not null,
  teacher varchar(100) not null,
  semester int not null
);
insert into subjects(subject_id, subject_name, subject_code, teacher, semester) values
(1, 'Python Programming', 'PY101', 'Prof. Mehta', 6),
(2, 'Web Development', 'WD102', 'Prof. Rao', 6),
(3, 'Mathematics', 'MA103', 'Prof. Verma', 6),
(4, 'Computer Networks', 'CN104', 'Prof. Sharma', 6),
(5, 'DBMS', 'DB105', 'Prof. Desai', 6);
select *from subjects;


create table attendance(
  attendance_id int primary key,
  student_id int not null,
  subject_id int not null,
  date date not null,
  status varchar(10) not null,
  foreign key(student_id) references students(student_id),
  foreign key(subject_id) references subjects(subject_id)
);
insert into attendance(attendance_id, student_id, subject_id, date, status) values
(1, 1, 1, '2024-04-01', 'Present'),
(2, 2, 1, '2024-04-01', 'Absent'),
(3, 3, 2, '2024-04-01', 'Present'),
(4, 4, 3, '2024-04-01', 'Present'),
(5, 5, 4, '2024-04-01', 'Absent');
select *from attendance;

create table teachers(
  teacher_id int primary key,
  name varchar(100) not null,
  subject varchar(100) not null,
  contact varchar(10) not null,
  email varchar(100) not null
);
insert into teachers(teacher_id, name, subject, contact, email) values
(1, 'Prof. Mehta', 'Python Programming', '9000000001', 'mehta@college.com'),
(2, 'Prof. Rao', 'Web Development', '9000000002', 'rao@college.com'),
(3, 'Prof. Verma', 'Mathematics', '9000000003', 'verma@college.com'),
(4, 'Prof. Sharma', 'Computer Networks', '9000000004', 'sharma@college.com'),
(5, 'Prof. Desai', 'DBMS', '9000000005', 'desai@college.com');
select *from teachers;


create table timetable(
  timetable_id int primary key,
  subject_id int not null,
  day varchar(20) not null,
  time_slot varchar(20) not null,
  room_no varchar(10) not null,
  foreign key(subject_id) references subjects(subject_id)
);
insert into timetable(timetable_id, subject_id, day, time_slot, room_no) values
(1, 1, 'Monday', '09:00-10:00', 'R101'),
(2, 2, 'Monday', '10:00-11:00', 'R102'),
(3, 3, 'Tuesday', '09:00-10:00', 'R103'),
(4, 4, 'Wednesday', '10:00-11:00', 'R104'),
(5, 5, 'Thursday', '11:00-12:00', 'R105');
select *from timetable;


create database hotel_management;
use hotel_management;


create table guests(
  guest_id int primary key,
  name varchar(100) not null,
  contact varchar(10) not null,
  email varchar(100) not null,
  id_proof varchar(50) not null
);
insert into guests(guest_id, name, contact, email, id_proof) values
(1, 'Atharva ', '9876543210', 'atharva@gmail.com', 'Aadhar'),
(2, 'Vivek ', '9876543211', 'vivek@gmail.com', 'PAN Card'),
(3, 'Om ', '9876543212', 'om@gmail.com', 'Passport'),
(4, 'Prasad ', '9876543213', 'prasad@gmail.com', 'Driving License'),
(5, 'Prem ', '9876543214', 'prem@gmail.com', 'Aadhar');
select *from guests;


create table rooms(
  room_id int primary key,
  room_number varchar(10) not null,
  type varchar(50) not null,
  price_per_night int not null,
  status varchar(20) not null
);
insert into rooms(room_id, room_number, type, price_per_night, status) values
(1, '101', 'Single', 1500, 'Available'),
(2, '102', 'Double', 2500, 'Occupied'),
(3, '103', 'Suite', 5000, 'Available'),
(4, '104', 'Double', 2500, 'Under Maintenance'),
(5, '105', 'Single', 1500, 'Occupied');
select *from rooms;


create table bookings(
  booking_id int primary key,
  guest_id int not null,
  room_id int not null,
  checkin_date date not null,
  checkout_date date not null,
  foreign key(guest_id) references guests(guest_id),
  foreign key(room_id) references rooms(room_id)
);
insert into bookings(booking_id, guest_id, room_id, checkin_date, checkout_date) values
(1, 1, 2, '2024-04-01', '2024-04-03'),
(2, 2, 5, '2024-04-02', '2024-04-04'),
(3, 3, 1, '2024-04-01', '2024-04-02'),
(4, 4, 3, '2024-04-05', '2024-04-06'),
(5, 5, 2, '2024-04-06', '2024-04-07');
select *from bookings;


create table employees(
  employee_id int primary key,
  name varchar(100) not null,
  role varchar(50) not null,
  shift varchar(50) not null,
  contact varchar(10) not null
);
insert into employees(employee_id, name, role, shift, contact) values
(1, 'A', 'Manager', 'Day', '9000000001'),
(2, 'B', 'Receptionist', 'Morning', '9000000002'),
(3, 'C', 'Housekeeping', 'Evening', '9000000003'),
(4, 'D', 'Security', 'Night', '9000000004'),
(5, 'E', 'Chef', 'Morning', '9000000005');
select *from employees;


create table services(
  service_id int primary key,
  guest_id int not null,
  service_type varchar(100) not null,
  service_date date not null,
  cost int not null,
  foreign key(guest_id) references guests(guest_id)
);
insert into services(service_id, guest_id, service_type, service_date, cost) values
(1, 1, 'Room Service', '2024-04-01', 300),
(2, 2, 'Laundry', '2024-04-02', 150),
(3, 3, 'Spa', '2024-04-01', 1000),
(4, 4, 'Taxi', '2024-04-05', 500),
(5, 5, 'Breakfast Buffet', '2024-04-02', 250);
select *from services;


create database restaurant_management;
use restaurant_management;


create table customers(
  customer_id int primary key,
  name varchar(100) not null,
  contact varchar(10) not null,
  email varchar(100) not null,
  address varchar(255) not null
);
insert into customers(customer_id, name, contact, email, address) values
(1, 'Atharva ', '9876543210', 'atharva@gmail.com', 'Mumbai'),
(2, 'Vivek ', '9876543211', 'vivek@gmail.com', 'Thane'),
(3, 'Om ', '9876543212', 'om@gmail.com', 'Navi Mumbai'),
(4, 'Prasad ', '9876543213', 'prasad@gmail.com', 'Dombivli'),
(5, 'Prem ', '9876543214', 'prem@gmail.com', 'Andheri');
select *from customers;

create table menu(
  item_id int primary key,
  item_name varchar(100) not null,
  category varchar(50) not null,
  price int not null,
  availability varchar(20) not null
);
insert into menu(item_id, item_name, category, price, availability) values
(1, 'Paneer Butter Masala', 'Main Course', 220, 'Available'),
(2, 'Chicken Biryani', 'Main Course', 250, 'Available'),
(3, 'Masala Dosa', 'Snacks', 90, 'Available'),
(4, 'Cold Coffee', 'Beverages', 80, 'Available'),
(5, 'Chocolate Cake', 'Dessert', 150, 'Unavailable');
select *from menu;

create table orders(
  order_id int primary key,
  customer_id int not null,
  order_date date not null,
  total_amount int not null,
  status varchar(20) not null,
  foreign key(customer_id) references customers(customer_id)
);
insert into orders(order_id, customer_id, order_date, total_amount, status) values
(1, 1, '2024-04-01', 320.00, 'Delivered'),
(2, 2, '2024-04-02', 250.00, 'Preparing'),
(3, 3, '2024-04-03', 90.00, 'Delivered'),
(4, 4, '2024-04-04', 80.00, 'Cancelled'),
(5, 5, '2024-04-05', 400.00, 'Delivered');
select *from orders;

create table staff(
  staff_id int primary key,
  name varchar(100) not null,
  role varchar(50) not null,
  contact varchar(10) not null,
  shift varchar(20) not null
);
insert into staff(staff_id, name, role, contact, shift) values
(1, 'A', 'Chef', '9000000001', 'Morning'),
(2, 'B', 'Waiter', '9000000002', 'Evening'),
(3, 'C', 'Manager', '9000000003', 'Full Day'),
(4, 'D', 'Cashier', '9000000004', 'Morning'),
(5, 'E', 'Cleaner', '9000000005', 'Evening');
select *from staff;

create table reservations(
  reservation_id int primary key,
  customer_id int not null,
  reservation_date date not null,
  time_slot varchar(20) not null,
  table_number int not null,
  foreign key(customer_id) references customers(customer_id)
);
insert into reservations(reservation_id, customer_id, reservation_date, time_slot, table_number) values
(1, 1, '2024-04-10', '07:00 PM', 5),
(2, 2, '2024-04-11', '08:00 PM', 3),
(3, 3, '2024-04-12', '06:30 PM', 4),
(4, 4, '2024-04-13', '09:00 PM', 2),
(5, 5, '2024-04-14', '07:30 PM', 1);
select *from reservations;


create database warehouse_management;
use warehouse_management;


create table products(
  product_id int primary key,
  product_name varchar(100) not null,
  category varchar(50) not null,
  quantity int not null,
  unit_price int not null
);
insert into products(product_id, product_name, category, quantity, unit_price) values
(1, 'Steel Rods', 'Hardware', 500, 150),
(2, 'LED Bulbs', 'Electronics', 1000, 50),
(3, 'Plastic Pipes', 'Plumbing', 700, 90),
(4, 'Paint Buckets', 'Paints', 300, 250),
(5, 'Wooden Planks', 'Construction', 150, 400);
select *from products;

create table suppliers(
  supplier_id int primary key,
  name varchar(100) not null,
  contact varchar(10) not null,
  email varchar(100) not null,
  city varchar(50) not null
);
insert into suppliers(supplier_id, name, contact, email, city) values
(1, 'MahaSteel Ltd', '9876543210', 'info@mahasteel.com', 'Mumbai'),
(2, 'Bright Lights Co.', '9876543211', 'support@brightlights.com', 'Pune'),
(3, 'AquaFlow India', '9876543212', 'sales@aquaflow.com', 'Delhi'),
(4, 'ColorWorld Paints', '9876543213', 'contact@colorworld.com', 'Bangalore'),
(5, 'WoodLand Supplies', '9876543214', 'wood@land.com', 'Nagpur');
select *from suppliers;

create table inventory(
  inventory_id int primary key,
  product_id int not null,
  warehouse_location varchar(100) not null,
  stock int not null,
  last_updated date not null,
  foreign key(product_id) references products(product_id)
);
insert into inventory(inventory_id, product_id, warehouse_location, stock, last_updated) values
(1, 1, 'Unit A - Mumbai', 300, '2024-04-01'),
(2, 2, 'Unit B - Pune', 800, '2024-04-02'),
(3, 3, 'Unit C - Delhi', 500, '2024-04-03'),
(4, 4, 'Unit A - Mumbai', 200, '2024-04-04'),
(5, 5, 'Unit D - Nagpur', 100, '2024-04-05');
select *from inventory;

create table shipments(
  shipment_id int primary key,
  product_id int not null,
  supplier_id int not null,
  shipment_date date not null,
  quantity int not null,
  foreign key(product_id) references products(product_id),
  foreign key(supplier_id) references suppliers(supplier_id)
);
insert into shipments(shipment_id, product_id, supplier_id, shipment_date, quantity) values
(1, 1, 1, '2024-03-28', 200),
(2, 2, 2, '2024-03-29', 500),
(3, 3, 3, '2024-03-30', 300),
(4, 4, 4, '2024-03-31', 150),
(5, 5, 5, '2024-04-01', 100);
select *from shipments;

create table orders(
  order_id int primary key,
  product_id int not null,
  customer_name varchar(100) not null,
  order_date date not null,
  quantity int not null,
  foreign key(product_id) references products(product_id)
);
insert into orders(order_id, product_id, customer_name, order_date, quantity) values
(1, 1, 'ABC Constructions', '2024-04-01', 100),
(2, 2, 'Light House', '2024-04-02', 300),
(3, 3, 'PlumbPro Services', '2024-04-03', 200),
(4, 4, 'ColorArt Decorators', '2024-04-04', 80),
(5, 5, 'WoodWorks', '2024-04-05', 60);
select *from orders;


create database online_coaching;
use online_coaching;


create table students(
  student_id int primary key,
  name varchar(100) not null,
  age int not null,
  email varchar(100) not null,
  contact varchar(10) not null
);
insert into students(student_id, name, age, email, contact) values
(1, 'atharva ', 20, 'atharva@gmail.com', '9876543210'),
(2, 'vivek ', 21, 'vivek@gmail.com', '9876543211'),
(3, 'om ', 22, 'om@gmail.com', '9876543212'),
(4, 'prasad ', 23, 'prasad@gmail.com', '9876543213'),
(5, 'prem ', 20, 'prem@gmail.com', '9876543214');
select *from students;

create table courses(
  course_id int primary key,
  course_name varchar(100) not null,
  category varchar(50) not null,
  duration varchar(50) not null,
  fees int not null
);
insert into courses(course_id, course_name, category, duration, fees) values
(1, 'python programming', 'programming', '2 months', 5000),
(2, 'web development', 'development', '3 months', 8000),
(3, 'data analytics', 'analytics', '3 months', 9000),
(4, 'excel basics', 'productivity', '1 month', 3000),
(5, 'sql mastery', 'database', '2 months', 4000);
select *from courses;

create table enrollments(
  enrollment_id int primary key,
  student_id int not null,
  course_id int not null,
  enrollment_date date not null,
  payment_status varchar(20) not null,
  foreign key(student_id) references students(student_id),
  foreign key(course_id) references courses(course_id)
);
insert into enrollments(enrollment_id, student_id, course_id, enrollment_date, payment_status) values
(1, 1, 1, '2024-04-01', 'paid'),
(2, 2, 2, '2024-04-02', 'unpaid'),
(3, 3, 3, '2024-04-03', 'paid'),
(4, 4, 5, '2024-04-04', 'paid'),
(5, 5, 4, '2024-04-05', 'unpaid');
select *from enrollments;

create table instructors(
  instructor_id int primary key,
  name varchar(100) not null,
  expertise varchar(100) not null,
  contact varchar(10) not null,
  email varchar(100) not null
);
insert into instructors(instructor_id, name, expertise, contact, email) values
(1, 'Shalini ', 'python', '9000000001', 'Shalini@coach.com'),
(2, 'Saish', 'web development', '9000000002', 'Saish@coach.com'),
(3, 'Rohit', 'excel', '9000000003', 'Rohit@coach.com'),
(4, 'priya ', 'data analytics', '9000000004', 'priya@coach.com'),
(5, 'Shalini ', 'sql', '9000000005', 'Shalini@coach.com');
select *from instructors;

create table classes(
  class_id int primary key,
  course_id int not null,
  instructor_id int not null,
  class_date date not null,
  time_slot varchar(20) not null,
  foreign key(course_id) references courses(course_id),
  foreign key(instructor_id) references instructors(instructor_id)
);
insert into classes(class_id, course_id, instructor_id, class_date, time_slot) values
(1, 1, 1, '2024-04-10', '10:00 AM'),
(2, 2, 2, '2024-04-11', '11:00 AM'),
(3, 3, 4, '2024-04-12', '03:00 PM'),
(4, 5, 5, '2024-04-13', '02:00 PM'),
(5, 4, 3, '2024-04-14', '04:00 PM');
select *from classes;

   

create database music_app;
use music_app;


create table users(
  user_id int primary key,
  name varchar(100) not null,
  email varchar(100) not null,
  contact varchar(10) not null,
  subscription varchar(50) not null
);
insert into users(user_id, name, email, contact, subscription) values
(1, 'atharva ', 'atharva@gmail.com', '9876543210', 'free'),
(2, 'vivek ', 'vivek@gmail.com', '9876543211', 'premium'),
(3, 'prasad ', 'prasad@gmail.com', '9876543212', 'premium'),
(4, 'om ', 'om@gmail.com', '9876543213', 'free'),
(5, 'prem ', 'prem@gmail.com', '9876543214', 'premium');
select *from users;

create table songs(
  song_id int primary key,
  title varchar(100) not null,
  artist varchar(100) not null,
  genre varchar(50) not null,
  duration varchar(10) not null
);
insert into songs(song_id, title, artist, genre, duration) values
(1, 'night changes', 'one direction', 'pop', '03:46'),
(2, 'blinding lights', 'the weeknd', 'synth-pop', '03:20'),
(3, 'perfect', 'ed sheeran', 'romantic', '04:25'),
(4, 'bones', 'imagine dragons', 'rock', '02:45'),
(5, 'levitating', 'dua lipa', 'dance', '03:24');
select *from songs;

create table playlists(
  playlist_id int primary key,
  user_id int not null,
  name varchar(100) not null,
  created_on date not null,
  status varchar(20) not null,
  foreign key(user_id) references users(user_id)
);
insert into playlists(playlist_id, user_id, name, created_on, status) values
(1, 1, 'chill vibes', '2024-04-01', 'active'),
(2, 2, 'workout', '2024-04-02', 'active'),
(3, 3, 'romantic hits', '2024-04-03', 'inactive'),
(4, 4, 'top 2023', '2024-04-04', 'active'),
(5, 5, 'evening jam', '2024-04-05', 'active');
select *from playlists;

create table playlist_songs(
  id int primary key,
  playlist_id int not null,
  song_id int not null,
  added_on date not null,
  added_by varchar(100) not null,
  foreign key(playlist_id) references playlists(playlist_id),
  foreign key(song_id) references songs(song_id)
);
insert into playlist_songs(id, playlist_id, song_id, added_on, added_by) values
(1, 1, 1, '2024-04-01', 'atharva'),
(2, 2, 2, '2024-04-02', 'vivek'),
(3, 3, 3, '2024-04-03', 'prasad'),
(4, 4, 4, '2024-04-04', 'om'),
(5, 5, 5, '2024-04-05', 'prem');
select *from playlist_songs;

create table artists(
  artist_id int primary key,
  name varchar(100) not null,
  country varchar(50) not null,
  genre varchar(50) not null,
  debut_year int not null
);
insert into artists(artist_id, name, country, genre, debut_year) values
(1, 'one direction', 'uk', 'pop', 2010),
(2, 'the weeknd', 'canada', 'r&b', 2011),
(3, 'ed sheeran', 'uk', 'pop', 2011),
(4, 'imagine dragons', 'usa', 'rock', 2008),
(5, 'dua lipa', 'uk', 'pop', 2015);
select *from artists;


create database fitness_app;
use fitness_app;


create table users(
  user_id int primary key,
  name varchar(100) not null,
  age int not null,
  email varchar(100) not null,
  contact varchar(10) not null
);
insert into users(user_id, name, age, email, contact) values
(1, 'atharva ', 20, 'atharva@gmail.com', '9876543210'),
(2, 'vivek ', 21, 'vivek@gmail.com', '9876543211'),
(3, 'prasad ', 22, 'prasad@gmail.com', '9876543212'),
(4, 'om ', 23, 'om@gmail.com', '9876543213'),
(5, 'prem ', 20, 'prem@gmail.com', '9876543214');
select *from usres;

create table workouts(
  workout_id int primary key,
  user_id int not null,
  workout_type varchar(50) not null,
  duration int not null,
  calories_burned int not null,
  foreign key(user_id) references users(user_id)
);
insert into workouts(workout_id, user_id, workout_type, duration, calories_burned) values
(1, 1, 'cardio', 30, 300),
(2, 2, 'weight training', 45, 500),
(3, 3, 'yoga', 60, 200),
(4, 4, 'cycling', 40, 350),
(5, 5, 'hiit', 30, 400);
select *from workouts;

create table diet_plans(
  diet_id int primary key,
  user_id int not null,
  meal_type varchar(50) not null,
  calories int not null,
  date date not null,
  foreign key(user_id) references users(user_id)
);
insert into diet_plans(diet_id, user_id, meal_type, calories, date) values
(1, 1, 'breakfast', 350, '2024-04-01'),
(2, 2, 'lunch', 600, '2024-04-01'),
(3, 3, 'dinner', 500, '2024-04-01'),
(4, 4, 'snack', 200, '2024-04-01'),
(5, 5, 'breakfast', 400, '2024-04-01');
select *from diet_plans;

create table trainers(
  trainer_id int primary key,
  name varchar(100) not null,
  specialization varchar(100) not null,
  contact varchar(10) not null,
  experience int not null
);
insert into trainers(trainer_id, name, specialization, contact, experience) values
(1, 'rahul verma', 'strength training', '9000000001', 5),
(2, 'sneha jain', 'yoga', '9000000002', 4),
(3, 'amit sharma', 'cardio', '9000000003', 3),
(4, 'priya desai', 'nutrition', '9000000004', 6),
(5, 'nilesh naik', 'hiit', '9000000005', 4);
select *from trainers;

create table progress(
  progress_id int primary key,
  user_id int not null,
  weight int not null,
  bmi int not null,
  progress_date date not null,
  foreign key(user_id) references users(user_id)
);
insert into progress(progress_id, user_id, weight, bmi, progress_date) values
(1, 1, 80, 24, '2024-04-01'),
(2, 2, 75, 23, '2024-04-01'),
(3, 3, 85, 26, '2024-04-01'),
(4, 4, 78, 25, '2024-04-01'),
(5, 5, 70, 22, '2024-04-01');
select *from progress;


create database job_portal;
use job_portal;


create table candidates(
  candidate_id int primary key,
  name varchar(100) not null,
  email varchar(100) not null,
  contact varchar(10) not null,
  qualification varchar(100) not null
);
insert into candidates(candidate_id, name, email, contact, qualification) values
(1, 'atharva ', 'atharva@gmail.com', '9876543210', 'bsc-it'),
(2, 'vivek ', 'vivek@gmail.com', '9876543211', 'bca'),
(3, 'prasad ', 'prasad@gmail.com', '9876543212', 'be computer'),
(4, 'om ', 'om@gmail.com', '9876543213', 'msc-it'),
(5, 'prem ', 'prem@gmail.com', '9876543214', 'btech');
select *from candidates;

create table companies(
  company_id int primary key,
  name varchar(100) not null,
  industry varchar(100) not null,
  location varchar(100) not null,
  contact_email varchar(100) not null
);
insert into companies(company_id, name, industry, location, contact_email) values
(1, 'tcs', 'it services', 'mumbai', 'hr@tcs.com'),
(2, 'infosys', 'software', 'bangalore', 'careers@infosys.com'),
(3, 'wipro', 'consulting', 'hyderabad', 'jobs@wipro.com'),
(4, 'google', 'tech', 'pune', 'recruit@google.com'),
(5, 'amazon', 'ecommerce', 'gurgaon', 'jobs@amazon.in');
select *from companies;

create table jobs(
  job_id int primary key,
  company_id int not null,
  title varchar(100) not null,
  salary int not null,
  location varchar(100) not null,
  foreign key(company_id) references companies(company_id)
);
insert into jobs(job_id, company_id, title, salary, location) values
(1, 1, 'software developer', 600000, 'mumbai'),
(2, 2, 'data analyst', 550000, 'bangalore'),
(3, 3, 'web developer', 500000, 'hyderabad'),
(4, 4, 'cloud engineer', 750000, 'pune'),
(5, 5, 'devops engineer', 700000, 'gurgaon');
select *from jobs;

create table applications(
  application_id int primary key,
  job_id int not null,
  candidate_id int not null,
  apply_date date not null,
  status varchar(50) not null,
  foreign key(job_id) references jobs(job_id),
  foreign key(candidate_id) references candidates(candidate_id)
);
insert into applications(application_id, job_id, candidate_id, apply_date, status) values
(1, 1, 1, '2024-04-01', 'applied'),
(2, 2, 2, '2024-04-02', 'shortlisted'),
(3, 3, 3, '2024-04-03', 'interview scheduled'),
(4, 4, 4, '2024-04-04', 'applied'),
(5, 5, 5, '2024-04-05', 'selected');
select *from applications;

create table resumes(
  resume_id int primary key,
  candidate_id int not null,
  file_name varchar(100) not null,
  upload_date date not null,
  status varchar(50) not null,
  foreign key(candidate_id) references candidates(candidate_id)
);
insert into resumes(resume_id, candidate_id, file_name, upload_date, status) values
(1, 1, 'atharva_resume.pdf', '2024-04-01', 'uploaded'),
(2, 2, 'vivek_resume.pdf', '2024-04-01', 'uploaded'),
(3, 3, 'prasad_resume.pdf', '2024-04-01', 'uploaded'),
(4, 4, 'om_resume.pdf', '2024-04-01', 'uploaded'),
(5, 5, 'prem_resume.pdf', '2024-04-01', 'uploaded');
select *from resumes;


create database travel_booking;
use travel_booking;


create table customers(
  customer_id int primary key,
  name varchar(100) not null,
  email varchar(100) not null,
  contact varchar(10) not null,
  address varchar(200) not null
);
insert into customers(customer_id, name, email, contact, address) values
(1, 'atharva ', 'atharva@gmail.com', '9876543210', 'mumbai'),
(2, 'vivek ', 'vivek@gmail.com', '9876543211', 'thane'),
(3, 'prasad ', 'prasad@gmail.com', '9876543212', 'pune'),
(4, 'om ', 'om@gmail.com', '9876543213', 'navi mumbai'),
(5, 'prem ', 'prem@gmail.com', '9876543214', 'dadar');
select *from customers;

create table destinations(
  destination_id int primary key,
  name varchar(100) not null,
  country varchar(100) not null,
  climate varchar(50) not null,
  popular_for varchar(100) not null
);
insert into destinations(destination_id, name, country, climate, popular_for) values
(1, 'manali', 'india', 'cold', 'snowfall'),
(2, 'goa', 'india', 'warm', 'beaches'),
(3, 'paris', 'france', 'moderate', 'romance'),
(4, 'bali', 'indonesia', 'tropical', 'resorts'),
(5, 'dubai', 'uae', 'hot', 'shopping');
select *from destinations;

create table bookings(
  booking_id int primary key,
  customer_id int not null,
  destination_id int not null,
  booking_date date not null,
  total_amount int not null,
  foreign key(customer_id) references customers(customer_id),
  foreign key(destination_id) references destinations(destination_id)
);
insert into bookings(booking_id, customer_id, destination_id, booking_date, total_amount) values
(1, 1, 2, '2024-04-01', 15000),
(2, 2, 1, '2024-04-02', 20000),
(3, 3, 3, '2024-04-03', 60000),
(4, 4, 5, '2024-04-04', 55000),
(5, 5, 4, '2024-04-05', 50000);
select *from bookings;

create table packages(
  package_id int primary key,
  name varchar(100) not null,
  duration_days int not null,
  cost int not null,
  included_services varchar(200) not null
);
insert into packages(package_id, name, duration_days, cost, included_services) values
(1, 'honeymoon special', 5, 30000, 'hotel, sightseeing'),
(2, 'budget trip', 3, 12000, 'hotel, local travel'),
(3, 'luxury tour', 7, 70000, 'hotel, flights, guide'),
(4, 'adventure trip', 4, 25000, 'trekking, camping'),
(5, 'family pack', 6, 45000, 'hotel, meals, guide');
select *from packages;

create table payments(
  payment_id int primary key,
  booking_id int not null,
  payment_mode varchar(50) not null,
  amount int not null,
  payment_date date not null,
  foreign key(booking_id) references bookings(booking_id)
);
insert into payments(payment_id, booking_id, payment_mode, amount, payment_date) values
(1, 1, 'gpay', 15000, '2024-04-01'),
(2, 2, 'phonepe', 20000, '2024-04-02'),
(3, 3, 'credit card', 60000, '2024-04-03'),
(4, 4, 'cash', 55000, '2024-04-04'),
(5, 5, 'upi', 50000, '2024-04-05');
select *from payments;



create database movie_booking;
use movie_booking;


create table users(
  user_id int primary key,
  name varchar(100) not null,
  email varchar(100) not null,
  contact varchar(10) not null,
  city varchar(100) not null
);
insert into users(user_id, name, email, contact, city) values
(1, 'atharva ', 'atharva@gmail.com', '9876543210', 'mumbai'),
(2, 'vivek ', 'vivek@gmail.com', '9876543211', 'thane'),
(3, 'prasad ', 'prasad@gmail.com', '9876543212', 'pune'),
(4, 'om ', 'om@gmail.com', '9876543213', 'nashik'),
(5, 'prem ', 'prem@gmail.com', '9876543214', 'nagpur');
select *from users;

create table movies(
  movie_id int primary key,
  title varchar(100) not null,
  genre varchar(50) not null,
  duration int not null,
  language varchar(50) not null
);
insert into movies(movie_id, title, genre, duration, language) values
(1, 'jawan', 'action', 180, 'hindi'),
(2, 'avatar 2', 'sci-fi', 190, 'english'),
(3, 'drishyam 2', 'thriller', 140, 'hindi'),
(4, 'leo', 'action', 165, 'tamil'),
(5, 'kantara', 'drama', 150, 'kannada');
select *from movies;

create table theatres(
  theatre_id int primary key,
  name varchar(100) not null,
  location varchar(100) not null,
  total_screens int not null,
  contact varchar(10) not null
);
insert into theatres(theatre_id, name, location, total_screens, contact) values
(1, 'inox', 'mumbai', 5, '9876543201'),
(2, 'pvr', 'thane', 4, '9876543202'),
(3, 'cinepolis', 'pune', 6, '9876543203'),
(4, 'miraj', 'navi mumbai', 3, '9876543204'),
(5, 'imax', 'nagpur', 4, '9876543205');
select *from theatres;

create table shows(
  show_id int primary key,
  movie_id int not null,
  theatre_id int not null,
  show_time varchar(20) not null,
  show_date date not null,
  foreign key(movie_id) references movies(movie_id),
  foreign key(theatre_id) references theatres(theatre_id)
);
insert into shows(show_id, movie_id, theatre_id, show_time, show_date) values
(1, 1, 1, '18:00:00', '2024-04-10'),
(2, 2, 2, '21:00:00', '2024-04-10'),
(3, 3, 3, '17:30:00', '2024-04-11'),
(4, 4, 4, '20:15:00', '2024-04-12'),
(5, 5, 5, '19:45:00', '2024-04-13');
select *from shows;

create table bookings(
  booking_id int primary key,
  user_id int not null,
  show_id int not null,
  seats int not null,
  payment_mode varchar(50) not null,
  foreign key(user_id) references users(user_id),
  foreign key(show_id) references shows(show_id)
);
insert into bookings(booking_id, user_id, show_id, seats, payment_mode) values
(1, 1, 1, 2, 'gpay'),
(2, 2, 2, 3, 'upi'),
(3, 3, 3, 1, 'phonepe'),
(4, 4, 4, 4, 'cash'),
(5, 5, 5, 2, 'credit card');
select *from bookings;


create database food_delivery;
use food_delivery;


create table customers(
  customer_id int primary key,
  name varchar(100) not null,
  contact varchar(10) not null,
  address varchar(200) not null,
  email varchar(100) not null
);
insert into customers(customer_id, name, contact, address, email) values
(1, 'atharva ', '9876543210', 'mumbai', 'atharva@gmail.com'),
(2, 'vivek ', '9876543211', 'thane', 'vivek@gmail.com'),
(3, 'prasad ', '9876543212', 'pune', 'prasad@gmail.com'),
(4, 'om ', '9876543213', 'nashik', 'om@gmail.com'),
(5, 'prem ', '9876543214', 'nagpur', 'prem@gmail.com');
select *from customers;

create table restaurants(
  restaurant_id int primary key,
  name varchar(100) not null,
  location varchar(100) not null,
  contact varchar(10) not null,
  rating int not null
);
insert into restaurants(restaurant_id, name, location, contact, rating) values
(1, 'pizza palace', 'mumbai', '9988776655', 4.5),
(2, 'burger hub', 'thane', '9988776656', 4.2),
(3, 'biryani house', 'pune', '9988776657', 4.7),
(4, 'veg treats', 'nashik', '9988776658', 4.0),
(5, 'spicy bites', 'nagpur', '9988776659', 4.3);
select *from restaurants;

create table menu(
  item_id int primary key,
  restaurant_id int not null,
  item_name varchar(100) not null,
  price int not null,
  category varchar(50) not null,
  foreign key(restaurant_id) references restaurants(restaurant_id)
);
insert into menu(item_id, restaurant_id, item_name, price, category) values
(1, 1, 'margherita pizza', 250, 'veg'),
(2, 2, 'cheese burger', 150, 'non-veg'),
(3, 3, 'chicken biryani', 300, 'non-veg'),
(4, 4, 'paneer roll', 180, 'veg'),
(5, 5, 'spicy noodles', 220, 'veg');
select *from menu;

create table orders(
  order_id int primary key,
  customer_id int not null,
  restaurant_id int not null,
  order_date date not null,
  total_amount int not null,
  foreign key(customer_id) references customers(customer_id),
  foreign key(restaurant_id) references restaurants(restaurant_id)
);
insert into orders(order_id, customer_id, restaurant_id, order_date, total_amount) values
(1, 1, 1, '2024-04-10', 250),
(2, 2, 2, '2024-04-10', 150),
(3, 3, 3, '2024-04-11', 300),
(4, 4, 4, '2024-04-11', 180),
(5, 5, 5, '2024-04-12', 220);
select *from orders;

create table payments(
  payment_id int primary key,
  order_id int not null,
  payment_mode varchar(50) not null,
  payment_status varchar(50) not null,
  payment_date date not null,
  foreign key(order_id) references orders(order_id)
);
insert into payments(payment_id, order_id, payment_mode, payment_status, payment_date) values
(1, 1, 'gpay', 'successful', '2024-04-10'),
(2, 2, 'phonepe', 'successful', '2024-04-10'),
(3, 3, 'cash', 'successful', '2024-04-11'),
(4, 4, 'upi', 'successful', '2024-04-11'),
(5, 5, 'credit card', 'successful', '2024-04-12');
select *from payments;



create database ecommerce_store;
use ecommerce_store;


create table customers(
  customer_id int primary key,
  name varchar(100) not null,
  email varchar(100) not null,
  contact varchar(10) not null,
  address varchar(200) not null
);
insert into customers(customer_id, name, email, contact, address) values
(1, 'atharva ', 'atharva@gmail.com', '9876543210', 'mumbai'),
(2, 'vivek ', 'vivek@gmail.com', '9876543211', 'thane'),
(3, 'prasad ', 'prasad@gmail.com', '9876543212', 'pune'),
(4, 'om ', 'om@gmail.com', '9876543213', 'nashik'),
(5, 'prem ', 'prem@gmail.com', '9876543214', 'nagpur');
select *from customers;

create table products(
  product_id int primary key,
  name varchar(100) not null,
  category varchar(50) not null,
  price int not null,
  stock int not null
);
insert into products(product_id, name, category, price, stock) values
(1, 't-shirt', 'clothing', 500, 100),
(2, 'headphones', 'electronics', 1500, 50),
(3, 'backpack', 'accessories', 800, 70),
(4, 'smartwatch', 'electronics', 2500, 30),
(5, 'sneakers', 'footwear', 2000, 60);
select *from products;

create table orders(
  order_id int primary key,
  customer_id int not null,
  order_date date not null,
  total_amount int not null,
  status varchar(50) not null,
  foreign key(customer_id) references customers(customer_id)
);
insert into orders(order_id, customer_id, order_date, total_amount, status) values
(1, 1, '2024-04-01', 2000, 'delivered'),
(2, 2, '2024-04-02', 800, 'shipped'),
(3, 3, '2024-04-03', 1500, 'delivered'),
(4, 4, '2024-04-04', 2500, 'processing'),
(5, 5, '2024-04-05', 500, 'cancelled');
select *from orders;

create table order_items(
  item_id int primary key,
  order_id int not null,
  product_id int not null,
  quantity int not null,
  price int not null,
  foreign key(order_id) references orders(order_id),
  foreign key(product_id) references products(product_id)
);
insert into order_items(item_id, order_id, product_id, quantity, price) values
(1, 1, 5, 1, 2000),
(2, 2, 3, 1, 800),
(3, 3, 2, 1, 1500),
(4, 4, 4, 1, 2500),
(5, 5, 1, 1, 500);
select *from order_items;

create table payments(
  payment_id int primary key,
  order_id int not null,
  payment_mode varchar(50) not null,
  payment_status varchar(50) not null,
  payment_date date not null,
  foreign key(order_id) references orders(order_id)
);
insert into payments(payment_id, order_id, payment_mode, payment_status, payment_date) values
(1, 1, 'gpay', 'successful', '2024-04-01'),
(2, 2, 'upi', 'successful', '2024-04-02'),
(3, 3, 'credit card', 'successful', '2024-04-03'),
(4, 4, 'phonepe', 'pending', '2024-04-04'),
(5, 5, 'cash', 'failed', '2024-04-05');
select *from payments;