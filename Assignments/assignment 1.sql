-- Create Database database_1
create database database_1;
use database_1;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Aarav', 'BBA', 'English', 35);
insert into table_1 values (2, 'Simran', 'BSc IT', 'History', 4);
insert into table_1 values (3, 'Dev', 'BCom', 'Biology', 97);
insert into table_1 values (4, 'Kabir', 'BCom', 'English', 74);
insert into table_1 values (5, 'Simran', 'BBA', 'Biology', 9);
insert into table_1 values (6, 'Tanish', 'BBA', 'Biology', 13);
insert into table_1 values (7, 'Aarav', 'BBA', 'Maths', 91);
insert into table_1 values (8, 'Tanish', 'BSc IT', 'Computer', 21);
insert into table_1 values (9, 'Kabir', 'BSc IT', 'Accounts', 68);
insert into table_1 values (10, 'Isha', 'BSc IT', 'Maths', 77);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Riya', 'BA', 'English', 28);
insert into table_2 values (2, 'Aanya', 'BA', 'History', 15);
insert into table_2 values (3, 'Tanish', 'BSc CS', 'Computer', 47);
insert into table_2 values (4, 'Tanish', 'BBA', 'History', 71);
insert into table_2 values (5, 'Aarav', 'BBA', 'Biology', 57);
insert into table_2 values (6, 'Kabir', 'BSc CS', 'Maths', 62);
insert into table_2 values (7, 'Dev', 'BA', 'Physics', 6);
insert into table_2 values (8, 'Isha', 'BSc CS', 'Physics', 35);
insert into table_2 values (9, 'Tanish', 'BSc CS', 'Accounts', 42);
insert into table_2 values (10, 'Riya', 'BA', 'Accounts', 82);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Aanya', 'BMS', 'History', 45);
insert into table_3 values (2, 'Aarav', 'BMS', 'Biology', 61);
insert into table_3 values (3, 'Tanish', 'BBA', 'English', 8);
insert into table_3 values (4, 'Meera', 'BSc IT', 'Physics', 33);
insert into table_3 values (5, 'Rohan', 'BCom', 'Physics', 73);
insert into table_3 values (6, 'Dev', 'BCom', 'Biology', 56);
insert into table_3 values (7, 'Isha', 'BMS', 'History', 70);
insert into table_3 values (8, 'Aanya', 'BCom', 'History', 12);
insert into table_3 values (9, 'Aanya', 'BCom', 'Computer', 2);
insert into table_3 values (10, 'Aanya', 'BBA', 'Marketing', 90);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Isha', 'BA', 'English', 35);
insert into table_4 values (2, 'Rohan', 'BBA', 'Marketing', 27);
insert into table_4 values (3, 'Aarav', 'BSc IT', 'Biology', 17);
insert into table_4 values (4, 'Aanya', 'BSc IT', 'English', 12);
insert into table_4 values (5, 'Aarav', 'BMS', 'History', 70);
insert into table_4 values (6, 'Simran', 'BCom', 'History', 43);
insert into table_4 values (7, 'Isha', 'BBA', 'Accounts', 45);
insert into table_4 values (8, 'Rohan', 'BCom', 'History', 2);
insert into table_4 values (9, 'Aarav', 'BCom', 'Marketing', 100);
insert into table_4 values (10, 'Isha', 'BSc IT', 'Accounts', 59);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Simran', 'BBA', 'Marketing', 3);
insert into table_5 values (2, 'Tanish', 'BSc IT', 'Maths', 56);
insert into table_5 values (3, 'Riya', 'BBA', 'Physics', 62);
insert into table_5 values (4, 'Tanish', 'BMS', 'Computer', 25);
insert into table_5 values (5, 'Simran', 'BMS', 'Maths', 42);
insert into table_5 values (6, 'Aarav', 'BA', 'History', 54);
insert into table_5 values (7, 'Simran', 'BBA', 'English', 84);
insert into table_5 values (8, 'Rohan', 'BA', 'Biology', 45);
insert into table_5 values (9, 'Meera', 'BBA', 'English', 51);
insert into table_5 values (10, 'Aarav', 'BCom', 'History', 78);

select * from table_5;
drop table table_5;

-- Create Database database_2
create database database_2;
use database_2;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Dev', 'BBA', 'Marketing', 46);
insert into table_1 values (2, 'Isha', 'BSc IT', 'Marketing', 88);
insert into table_1 values (3, 'Aarav', 'BBA', 'Computer', 3);
insert into table_1 values (4, 'Kabir', 'BCom', 'Marketing', 82);
insert into table_1 values (5, 'Meera', 'BSc CS', 'History', 1);
insert into table_1 values (6, 'Aanya', 'BMS', 'Computer', 49);
insert into table_1 values (7, 'Riya', 'BBA', 'Accounts', 64);
insert into table_1 values (8, 'Aarav', 'BSc IT', 'Maths', 93);
insert into table_1 values (9, 'Aanya', 'BA', 'Computer', 3);
insert into table_1 values (10, 'Tanish', 'BMS', 'Computer', 40);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Dev', 'BA', 'Marketing', 55);
insert into table_2 values (2, 'Tanish', 'BA', 'History', 97);
insert into table_2 values (3, 'Aarav', 'BSc IT', 'History', 61);
insert into table_2 values (4, 'Dev', 'BCom', 'Biology', 52);
insert into table_2 values (5, 'Tanish', 'BCom', 'English', 64);
insert into table_2 values (6, 'Aanya', 'BBA', 'English', 94);
insert into table_2 values (7, 'Tanish', 'BMS', 'History', 80);
insert into table_2 values (8, 'Isha', 'BBA', 'Biology', 42);
insert into table_2 values (9, 'Tanish', 'BBA', 'Biology', 54);
insert into table_2 values (10, 'Dev', 'BBA', 'Marketing', 42);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Riya', 'BSc CS', 'Marketing', 11);
insert into table_3 values (2, 'Riya', 'BSc IT', 'Accounts', 10);
insert into table_3 values (3, 'Meera', 'BSc IT', 'Computer', 18);
insert into table_3 values (4, 'Tanish', 'BMS', 'English', 27);
insert into table_3 values (5, 'Simran', 'BCom', 'Computer', 88);
insert into table_3 values (6, 'Kabir', 'BBA', 'Physics', 2);
insert into table_3 values (7, 'Simran', 'BBA', 'Maths', 44);
insert into table_3 values (8, 'Simran', 'BBA', 'History', 85);
insert into table_3 values (9, 'Tanish', 'BA', 'Marketing', 16);
insert into table_3 values (10, 'Isha', 'BCom', 'Physics', 9);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Aarav', 'BSc IT', 'Computer', 85);
insert into table_4 values (2, 'Meera', 'BSc IT', 'Biology', 10);
insert into table_4 values (3, 'Aanya', 'BCom', 'Computer', 96);
insert into table_4 values (4, 'Aanya', 'BCom', 'English', 2);
insert into table_4 values (5, 'Dev', 'BBA', 'Biology', 93);
insert into table_4 values (6, 'Aarav', 'BSc IT', 'Maths', 58);
insert into table_4 values (7, 'Tanish', 'BMS', 'English', 17);
insert into table_4 values (8, 'Dev', 'BSc CS', 'History', 99);
insert into table_4 values (9, 'Riya', 'BSc CS', 'Physics', 53);
insert into table_4 values (10, 'Rohan', 'BCom', 'Accounts', 72);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Dev', 'BCom', 'Physics', 87);
insert into table_5 values (2, 'Dev', 'BA', 'Marketing', 70);
insert into table_5 values (3, 'Aarav', 'BBA', 'English', 66);
insert into table_5 values (4, 'Dev', 'BMS', 'History', 85);
insert into table_5 values (5, 'Meera', 'BSc CS', 'Physics', 79);
insert into table_5 values (6, 'Aarav', 'BSc IT', 'Maths', 64);
insert into table_5 values (7, 'Riya', 'BSc CS', 'English', 23);
insert into table_5 values (8, 'Rohan', 'BMS', 'Accounts', 87);
insert into table_5 values (9, 'Dev', 'BCom', 'Marketing', 3);
insert into table_5 values (10, 'Aarav', 'BCom', 'Maths', 94);

select * from table_5;
drop table table_5;

-- Create Database database_3
create database database_3;
use database_3;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Meera', 'BSc CS', 'Accounts', 77);
insert into table_1 values (2, 'Rohan', 'BA', 'English', 47);
insert into table_1 values (3, 'Aarav', 'BA', 'Marketing', 89);
insert into table_1 values (4, 'Rohan', 'BSc CS', 'History', 78);
insert into table_1 values (5, 'Isha', 'BA', 'Maths', 69);
insert into table_1 values (6, 'Riya', 'BSc CS', 'Marketing', 5);
insert into table_1 values (7, 'Riya', 'BMS', 'Physics', 100);
insert into table_1 values (8, 'Tanish', 'BCom', 'Maths', 15);
insert into table_1 values (9, 'Rohan', 'BBA', 'Accounts', 32);
insert into table_1 values (10, 'Isha', 'BSc CS', 'Accounts', 14);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Meera', 'BMS', 'English', 81);
insert into table_2 values (2, 'Aanya', 'BSc CS', 'Computer', 33);
insert into table_2 values (3, 'Aanya', 'BSc CS', 'Physics', 94);
insert into table_2 values (4, 'Tanish', 'BMS', 'History', 5);
insert into table_2 values (5, 'Isha', 'BSc CS', 'Physics', 6);
insert into table_2 values (6, 'Aarav', 'BBA', 'Accounts', 61);
insert into table_2 values (7, 'Dev', 'BSc CS', 'Maths', 18);
insert into table_2 values (8, 'Dev', 'BMS', 'English', 79);
insert into table_2 values (9, 'Simran', 'BSc CS', 'Computer', 28);
insert into table_2 values (10, 'Aanya', 'BA', 'Biology', 98);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Kabir', 'BSc IT', 'Maths', 89);
insert into table_3 values (2, 'Rohan', 'BSc IT', 'Maths', 52);
insert into table_3 values (3, 'Tanish', 'BSc CS', 'Maths', 39);
insert into table_3 values (4, 'Tanish', 'BSc CS', 'Physics', 97);
insert into table_3 values (5, 'Dev', 'BSc CS', 'Maths', 19);
insert into table_3 values (6, 'Isha', 'BSc IT', 'Physics', 23);
insert into table_3 values (7, 'Simran', 'BBA', 'History', 94);
insert into table_3 values (8, 'Aarav', 'BA', 'Biology', 32);
insert into table_3 values (9, 'Dev', 'BSc CS', 'Maths', 97);
insert into table_3 values (10, 'Aanya', 'BCom', 'Maths', 87);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Isha', 'BSc CS', 'Biology', 25);
insert into table_4 values (2, 'Simran', 'BSc CS', 'History', 11);
insert into table_4 values (3, 'Rohan', 'BBA', 'Physics', 15);
insert into table_4 values (4, 'Isha', 'BBA', 'Biology', 56);
insert into table_4 values (5, 'Simran', 'BSc IT', 'Accounts', 97);
insert into table_4 values (6, 'Isha', 'BA', 'History', 55);
insert into table_4 values (7, 'Rohan', 'BMS', 'Maths', 11);
insert into table_4 values (8, 'Kabir', 'BBA', 'English', 1);
insert into table_4 values (9, 'Aanya', 'BMS', 'Physics', 67);
insert into table_4 values (10, 'Aarav', 'BMS', 'Biology', 75);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Kabir', 'BBA', 'Maths', 32);
insert into table_5 values (2, 'Rohan', 'BSc IT', 'Accounts', 20);
insert into table_5 values (3, 'Meera', 'BMS', 'Accounts', 65);
insert into table_5 values (4, 'Tanish', 'BMS', 'Computer', 65);
insert into table_5 values (5, 'Kabir', 'BSc IT', 'English', 50);
insert into table_5 values (6, 'Isha', 'BSc CS', 'Marketing', 4);
insert into table_5 values (7, 'Rohan', 'BSc IT', 'English', 8);
insert into table_5 values (8, 'Simran', 'BCom', 'Physics', 30);
insert into table_5 values (9, 'Aanya', 'BCom', 'Maths', 47);
insert into table_5 values (10, 'Riya', 'BA', 'Accounts', 92);

select * from table_5;
drop table table_5;

-- Create Database database_4
create database database_4;
use database_4;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Simran', 'BA', 'Computer', 55);
insert into table_1 values (2, 'Isha', 'BA', 'Physics', 75);
insert into table_1 values (3, 'Tanish', 'BMS', 'History', 16);
insert into table_1 values (4, 'Simran', 'BCom', 'Physics', 17);
insert into table_1 values (5, 'Isha', 'BSc CS', 'Biology', 93);
insert into table_1 values (6, 'Riya', 'BMS', 'Computer', 31);
insert into table_1 values (7, 'Aanya', 'BCom', 'Maths', 93);
insert into table_1 values (8, 'Kabir', 'BSc CS', 'Physics', 89);
insert into table_1 values (9, 'Aanya', 'BA', 'Biology', 30);
insert into table_1 values (10, 'Dev', 'BBA', 'English', 58);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Simran', 'BSc CS', 'History', 13);
insert into table_2 values (2, 'Meera', 'BBA', 'Biology', 8);
insert into table_2 values (3, 'Isha', 'BSc IT', 'History', 28);
insert into table_2 values (4, 'Dev', 'BCom', 'Physics', 99);
insert into table_2 values (5, 'Tanish', 'BBA', 'Physics', 31);
insert into table_2 values (6, 'Dev', 'BSc CS', 'Biology', 24);
insert into table_2 values (7, 'Aanya', 'BSc IT', 'Physics', 79);
insert into table_2 values (8, 'Rohan', 'BBA', 'English', 84);
insert into table_2 values (9, 'Meera', 'BBA', 'Biology', 87);
insert into table_2 values (10, 'Tanish', 'BA', 'Computer', 57);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Rohan', 'BSc CS', 'Accounts', 61);
insert into table_3 values (2, 'Rohan', 'BA', 'Maths', 59);
insert into table_3 values (3, 'Meera', 'BSc CS', 'History', 20);
insert into table_3 values (4, 'Kabir', 'BCom', 'English', 48);
insert into table_3 values (5, 'Isha', 'BCom', 'Computer', 56);
insert into table_3 values (6, 'Kabir', 'BBA', 'Marketing', 46);
insert into table_3 values (7, 'Meera', 'BSc CS', 'Accounts', 4);
insert into table_3 values (8, 'Riya', 'BMS', 'Accounts', 38);
insert into table_3 values (9, 'Tanish', 'BMS', 'English', 23);
insert into table_3 values (10, 'Rohan', 'BMS', 'Maths', 58);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Aanya', 'BBA', 'Biology', 77);
insert into table_4 values (2, 'Rohan', 'BA', 'Maths', 65);
insert into table_4 values (3, 'Isha', 'BSc IT', 'Marketing', 9);
insert into table_4 values (4, 'Simran', 'BSc CS', 'Biology', 89);
insert into table_4 values (5, 'Dev', 'BSc IT', 'Marketing', 57);
insert into table_4 values (6, 'Meera', 'BA', 'Biology', 34);
insert into table_4 values (7, 'Isha', 'BMS', 'Accounts', 98);
insert into table_4 values (8, 'Isha', 'BSc CS', 'Maths', 29);
insert into table_4 values (9, 'Rohan', 'BBA', 'Accounts', 5);
insert into table_4 values (10, 'Aarav', 'BA', 'History', 12);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Rohan', 'BCom', 'History', 66);
insert into table_5 values (2, 'Tanish', 'BCom', 'Maths', 2);
insert into table_5 values (3, 'Simran', 'BMS', 'English', 43);
insert into table_5 values (4, 'Riya', 'BSc CS', 'History', 13);
insert into table_5 values (5, 'Simran', 'BCom', 'English', 3);
insert into table_5 values (6, 'Dev', 'BSc CS', 'Maths', 31);
insert into table_5 values (7, 'Riya', 'BMS', 'Accounts', 22);
insert into table_5 values (8, 'Riya', 'BSc IT', 'Marketing', 83);
insert into table_5 values (9, 'Rohan', 'BMS', 'Accounts', 54);
insert into table_5 values (10, 'Aarav', 'BMS', 'Marketing', 18);

select * from table_5;
drop table table_5;

-- Create Database database_5
create database database_5;
use database_5;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Riya', 'BMS', 'Maths', 27);
insert into table_1 values (2, 'Riya', 'BSc IT', 'Accounts', 28);
insert into table_1 values (3, 'Meera', 'BSc IT', 'Marketing', 9);
insert into table_1 values (4, 'Simran', 'BCom', 'Physics', 56);
insert into table_1 values (5, 'Rohan', 'BSc IT', 'Physics', 47);
insert into table_1 values (6, 'Riya', 'BCom', 'History', 3);
insert into table_1 values (7, 'Dev', 'BCom', 'History', 85);
insert into table_1 values (8, 'Rohan', 'BSc IT', 'Biology', 51);
insert into table_1 values (9, 'Dev', 'BSc CS', 'Computer', 88);
insert into table_1 values (10, 'Meera', 'BCom', 'Physics', 42);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Meera', 'BSc IT', 'English', 99);
insert into table_2 values (2, 'Aanya', 'BBA', 'Physics', 44);
insert into table_2 values (3, 'Isha', 'BA', 'Accounts', 53);
insert into table_2 values (4, 'Riya', 'BA', 'Physics', 64);
insert into table_2 values (5, 'Simran', 'BBA', 'History', 10);
insert into table_2 values (6, 'Tanish', 'BCom', 'English', 81);
insert into table_2 values (7, 'Simran', 'BA', 'English', 93);
insert into table_2 values (8, 'Tanish', 'BMS', 'Maths', 84);
insert into table_2 values (9, 'Aanya', 'BSc CS', 'Computer', 49);
insert into table_2 values (10, 'Dev', 'BSc IT', 'Marketing', 19);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Rohan', 'BBA', 'Computer', 52);
insert into table_3 values (2, 'Tanish', 'BMS', 'Maths', 84);
insert into table_3 values (3, 'Aarav', 'BSc IT', 'Physics', 92);
insert into table_3 values (4, 'Meera', 'BMS', 'History', 92);
insert into table_3 values (5, 'Dev', 'BA', 'English', 7);
insert into table_3 values (6, 'Kabir', 'BMS', 'Biology', 67);
insert into table_3 values (7, 'Kabir', 'BSc CS', 'Biology', 93);
insert into table_3 values (8, 'Rohan', 'BSc CS', 'Marketing', 54);
insert into table_3 values (9, 'Kabir', 'BBA', 'Maths', 54);
insert into table_3 values (10, 'Isha', 'BSc CS', 'Biology', 10);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Isha', 'BMS', 'English', 67);
insert into table_4 values (2, 'Isha', 'BCom', 'History', 28);
insert into table_4 values (3, 'Kabir', 'BBA', 'Maths', 21);
insert into table_4 values (4, 'Isha', 'BBA', 'Computer', 73);
insert into table_4 values (5, 'Tanish', 'BBA', 'English', 44);
insert into table_4 values (6, 'Meera', 'BSc IT', 'English', 38);
insert into table_4 values (7, 'Riya', 'BCom', 'Accounts', 3);
insert into table_4 values (8, 'Aanya', 'BA', 'Accounts', 39);
insert into table_4 values (9, 'Aarav', 'BMS', 'English', 77);
insert into table_4 values (10, 'Kabir', 'BCom', 'English', 54);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Simran', 'BBA', 'Maths', 21);
insert into table_5 values (2, 'Aanya', 'BBA', 'Biology', 74);
insert into table_5 values (3, 'Aarav', 'BCom', 'History', 19);
insert into table_5 values (4, 'Simran', 'BCom', 'Maths', 93);
insert into table_5 values (5, 'Aarav', 'BMS', 'Biology', 85);
insert into table_5 values (6, 'Meera', 'BMS', 'Computer', 49);
insert into table_5 values (7, 'Riya', 'BSc CS', 'Marketing', 48);
insert into table_5 values (8, 'Dev', 'BCom', 'Maths', 83);
insert into table_5 values (9, 'Simran', 'BMS', 'Physics', 33);
insert into table_5 values (10, 'Aarav', 'BSc IT', 'History', 80);

select * from table_5;
drop table table_5;

-- Create Database database_6
create database database_6;
use database_6;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Rohan', 'BBA', 'Physics', 17);
insert into table_1 values (2, 'Dev', 'BMS', 'Physics', 84);
insert into table_1 values (3, 'Dev', 'BMS', 'Accounts', 86);
insert into table_1 values (4, 'Aanya', 'BSc IT', 'Maths', 12);
insert into table_1 values (5, 'Tanish', 'BMS', 'Physics', 62);
insert into table_1 values (6, 'Rohan', 'BCom', 'Computer', 31);
insert into table_1 values (7, 'Rohan', 'BSc CS', 'English', 34);
insert into table_1 values (8, 'Aarav', 'BMS', 'Computer', 27);
insert into table_1 values (9, 'Dev', 'BMS', 'Accounts', 45);
insert into table_1 values (10, 'Simran', 'BSc CS', 'History', 98);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Meera', 'BBA', 'Marketing', 4);
insert into table_2 values (2, 'Aarav', 'BMS', 'Accounts', 73);
insert into table_2 values (3, 'Rohan', 'BA', 'Accounts', 13);
insert into table_2 values (4, 'Dev', 'BBA', 'Maths', 31);
insert into table_2 values (5, 'Dev', 'BMS', 'Biology', 15);
insert into table_2 values (6, 'Riya', 'BBA', 'Biology', 97);
insert into table_2 values (7, 'Tanish', 'BSc IT', 'Physics', 90);
insert into table_2 values (8, 'Aanya', 'BSc CS', 'Maths', 35);
insert into table_2 values (9, 'Meera', 'BA', 'Marketing', 60);
insert into table_2 values (10, 'Tanish', 'BBA', 'Physics', 44);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Dev', 'BSc IT', 'Marketing', 36);
insert into table_3 values (2, 'Dev', 'BSc CS', 'Accounts', 72);
insert into table_3 values (3, 'Kabir', 'BBA', 'Physics', 30);
insert into table_3 values (4, 'Aarav', 'BMS', 'Computer', 52);
insert into table_3 values (5, 'Riya', 'BA', 'Computer', 13);
insert into table_3 values (6, 'Riya', 'BMS', 'Physics', 62);
insert into table_3 values (7, 'Riya', 'BCom', 'Accounts', 85);
insert into table_3 values (8, 'Aanya', 'BBA', 'History', 21);
insert into table_3 values (9, 'Rohan', 'BSc IT', 'Accounts', 76);
insert into table_3 values (10, 'Aarav', 'BSc CS', 'Computer', 54);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Tanish', 'BMS', 'Biology', 33);
insert into table_4 values (2, 'Meera', 'BBA', 'Biology', 54);
insert into table_4 values (3, 'Kabir', 'BSc CS', 'English', 62);
insert into table_4 values (4, 'Dev', 'BSc IT', 'Physics', 39);
insert into table_4 values (5, 'Isha', 'BSc IT', 'Marketing', 11);
insert into table_4 values (6, 'Meera', 'BSc IT', 'Maths', 99);
insert into table_4 values (7, 'Meera', 'BSc IT', 'English', 99);
insert into table_4 values (8, 'Dev', 'BBA', 'Physics', 46);
insert into table_4 values (9, 'Riya', 'BSc IT', 'History', 50);
insert into table_4 values (10, 'Meera', 'BSc CS', 'Computer', 65);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Rohan', 'BMS', 'Computer', 79);
insert into table_5 values (2, 'Simran', 'BSc CS', 'Maths', 96);
insert into table_5 values (3, 'Rohan', 'BBA', 'Marketing', 47);
insert into table_5 values (4, 'Kabir', 'BSc IT', 'Accounts', 37);
insert into table_5 values (5, 'Meera', 'BSc IT', 'Biology', 47);
insert into table_5 values (6, 'Meera', 'BSc IT', 'Physics', 27);
insert into table_5 values (7, 'Dev', 'BMS', 'Biology', 17);
insert into table_5 values (8, 'Aarav', 'BSc CS', 'Computer', 84);
insert into table_5 values (9, 'Simran', 'BA', 'English', 71);
insert into table_5 values (10, 'Isha', 'BMS', 'English', 70);

select * from table_5;
drop table table_5;

-- Create Database database_7
create database database_7;
use database_7;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Isha', 'BA', 'English', 34);
insert into table_1 values (2, 'Kabir', 'BCom', 'Physics', 9);
insert into table_1 values (3, 'Tanish', 'BA', 'Physics', 1);
insert into table_1 values (4, 'Meera', 'BSc IT', 'Maths', 19);
insert into table_1 values (5, 'Aarav', 'BMS', 'Physics', 100);
insert into table_1 values (6, 'Kabir', 'BSc CS', 'Marketing', 36);
insert into table_1 values (7, 'Riya', 'BSc IT', 'Accounts', 6);
insert into table_1 values (8, 'Aanya', 'BMS', 'Biology', 22);
insert into table_1 values (9, 'Meera', 'BA', 'Maths', 76);
insert into table_1 values (10, 'Simran', 'BCom', 'Accounts', 38);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Aanya', 'BBA', 'English', 66);
insert into table_2 values (2, 'Kabir', 'BSc IT', 'History', 3);
insert into table_2 values (3, 'Simran', 'BCom', 'History', 27);
insert into table_2 values (4, 'Aarav', 'BCom', 'Accounts', 96);
insert into table_2 values (5, 'Riya', 'BSc IT', 'Accounts', 24);
insert into table_2 values (6, 'Aanya', 'BMS', 'History', 56);
insert into table_2 values (7, 'Meera', 'BSc IT', 'Computer', 52);
insert into table_2 values (8, 'Riya', 'BCom', 'Maths', 25);
insert into table_2 values (9, 'Meera', 'BSc CS', 'Marketing', 54);
insert into table_2 values (10, 'Simran', 'BMS', 'History', 83);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Rohan', 'BCom', 'Accounts', 84);
insert into table_3 values (2, 'Isha', 'BSc IT', 'Computer', 42);
insert into table_3 values (3, 'Riya', 'BSc IT', 'History', 98);
insert into table_3 values (4, 'Riya', 'BSc CS', 'Biology', 59);
insert into table_3 values (5, 'Aanya', 'BSc IT', 'Physics', 6);
insert into table_3 values (6, 'Dev', 'BSc IT', 'Maths', 51);
insert into table_3 values (7, 'Isha', 'BCom', 'Marketing', 20);
insert into table_3 values (8, 'Isha', 'BSc IT', 'Physics', 88);
insert into table_3 values (9, 'Isha', 'BA', 'Biology', 60);
insert into table_3 values (10, 'Tanish', 'BBA', 'Computer', 71);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Riya', 'BMS', 'Maths', 62);
insert into table_4 values (2, 'Rohan', 'BBA', 'Maths', 14);
insert into table_4 values (3, 'Isha', 'BA', 'Marketing', 27);
insert into table_4 values (4, 'Kabir', 'BBA', 'Physics', 21);
insert into table_4 values (5, 'Tanish', 'BSc IT', 'Physics', 6);
insert into table_4 values (6, 'Isha', 'BA', 'Physics', 32);
insert into table_4 values (7, 'Meera', 'BSc IT', 'Marketing', 78);
insert into table_4 values (8, 'Isha', 'BSc IT', 'Biology', 86);
insert into table_4 values (9, 'Aarav', 'BSc CS', 'Biology', 80);
insert into table_4 values (10, 'Aarav', 'BCom', 'Marketing', 24);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Dev', 'BBA', 'Physics', 51);
insert into table_5 values (2, 'Dev', 'BSc IT', 'Biology', 42);
insert into table_5 values (3, 'Dev', 'BSc IT', 'Physics', 45);
insert into table_5 values (4, 'Aarav', 'BSc IT', 'Computer', 24);
insert into table_5 values (5, 'Tanish', 'BMS', 'Marketing', 15);
insert into table_5 values (6, 'Rohan', 'BCom', 'Maths', 6);
insert into table_5 values (7, 'Rohan', 'BSc CS', 'Computer', 13);
insert into table_5 values (8, 'Tanish', 'BBA', 'Maths', 6);
insert into table_5 values (9, 'Meera', 'BMS', 'History', 39);
insert into table_5 values (10, 'Tanish', 'BSc IT', 'History', 97);

select * from table_5;
drop table table_5;

-- Create Database database_8
create database database_8;
use database_8;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Dev', 'BA', 'Computer', 31);
insert into table_1 values (2, 'Isha', 'BA', 'Marketing', 21);
insert into table_1 values (3, 'Rohan', 'BBA', 'Biology', 64);
insert into table_1 values (4, 'Simran', 'BCom', 'Computer', 62);
insert into table_1 values (5, 'Meera', 'BSc IT', 'Biology', 83);
insert into table_1 values (6, 'Aanya', 'BCom', 'Maths', 43);
insert into table_1 values (7, 'Aarav', 'BSc IT', 'Biology', 11);
insert into table_1 values (8, 'Isha', 'BSc CS', 'Computer', 90);
insert into table_1 values (9, 'Meera', 'BBA', 'Physics', 73);
insert into table_1 values (10, 'Tanish', 'BSc IT', 'Accounts', 21);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Isha', 'BMS', 'English', 36);
insert into table_2 values (2, 'Kabir', 'BSc IT', 'English', 43);
insert into table_2 values (3, 'Aanya', 'BCom', 'Marketing', 39);
insert into table_2 values (4, 'Tanish', 'BCom', 'Computer', 63);
insert into table_2 values (5, 'Tanish', 'BSc CS', 'Accounts', 20);
insert into table_2 values (6, 'Riya', 'BCom', 'Biology', 81);
insert into table_2 values (7, 'Meera', 'BCom', 'Accounts', 53);
insert into table_2 values (8, 'Meera', 'BSc CS', 'Computer', 19);
insert into table_2 values (9, 'Isha', 'BCom', 'Maths', 89);
insert into table_2 values (10, 'Aanya', 'BSc CS', 'Computer', 99);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Aanya', 'BA', 'Physics', 99);
insert into table_3 values (2, 'Riya', 'BMS', 'Computer', 11);
insert into table_3 values (3, 'Kabir', 'BMS', 'Biology', 22);
insert into table_3 values (4, 'Aarav', 'BMS', 'Biology', 56);
insert into table_3 values (5, 'Simran', 'BBA', 'Accounts', 67);
insert into table_3 values (6, 'Rohan', 'BSc CS', 'Marketing', 44);
insert into table_3 values (7, 'Isha', 'BBA', 'Physics', 53);
insert into table_3 values (8, 'Aarav', 'BMS', 'Accounts', 72);
insert into table_3 values (9, 'Meera', 'BCom', 'English', 30);
insert into table_3 values (10, 'Tanish', 'BBA', 'Computer', 70);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Tanish', 'BCom', 'Biology', 39);
insert into table_4 values (2, 'Kabir', 'BA', 'English', 7);
insert into table_4 values (3, 'Aanya', 'BSc CS', 'English', 19);
insert into table_4 values (4, 'Aarav', 'BA', 'Marketing', 44);
insert into table_4 values (5, 'Kabir', 'BCom', 'Physics', 3);
insert into table_4 values (6, 'Simran', 'BSc IT', 'Marketing', 97);
insert into table_4 values (7, 'Isha', 'BSc IT', 'Biology', 8);
insert into table_4 values (8, 'Isha', 'BSc CS', 'Computer', 4);
insert into table_4 values (9, 'Dev', 'BSc IT', 'Computer', 71);
insert into table_4 values (10, 'Tanish', 'BSc IT', 'History', 17);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Meera', 'BBA', 'English', 59);
insert into table_5 values (2, 'Rohan', 'BSc IT', 'Physics', 65);
insert into table_5 values (3, 'Tanish', 'BSc CS', 'Computer', 32);
insert into table_5 values (4, 'Tanish', 'BMS', 'Computer', 38);
insert into table_5 values (5, 'Rohan', 'BA', 'English', 56);
insert into table_5 values (6, 'Aanya', 'BCom', 'Maths', 70);
insert into table_5 values (7, 'Dev', 'BSc CS', 'History', 92);
insert into table_5 values (8, 'Kabir', 'BMS', 'English', 21);
insert into table_5 values (9, 'Riya', 'BSc CS', 'Computer', 56);
insert into table_5 values (10, 'Kabir', 'BCom', 'Physics', 31);

select * from table_5;
drop table table_5;

-- Create Database database_9
create database database_9;
use database_9;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Dev', 'BCom', 'Marketing', 73);
insert into table_1 values (2, 'Aanya', 'BA', 'Marketing', 10);
insert into table_1 values (3, 'Aarav', 'BSc CS', 'Computer', 90);
insert into table_1 values (4, 'Tanish', 'BBA', 'Accounts', 70);
insert into table_1 values (5, 'Dev', 'BSc IT', 'Computer', 24);
insert into table_1 values (6, 'Riya', 'BMS', 'Biology', 89);
insert into table_1 values (7, 'Isha', 'BA', 'Biology', 94);
insert into table_1 values (8, 'Tanish', 'BCom', 'English', 76);
insert into table_1 values (9, 'Rohan', 'BSc CS', 'Biology', 22);
insert into table_1 values (10, 'Aarav', 'BCom', 'Marketing', 44);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Aarav', 'BA', 'Accounts', 36);
insert into table_2 values (2, 'Isha', 'BMS', 'Accounts', 38);
insert into table_2 values (3, 'Isha', 'BMS', 'Maths', 18);
insert into table_2 values (4, 'Isha', 'BMS', 'Marketing', 46);
insert into table_2 values (5, 'Aanya', 'BBA', 'Maths', 42);
insert into table_2 values (6, 'Dev', 'BBA', 'Computer', 38);
insert into table_2 values (7, 'Aarav', 'BMS', 'Biology', 6);
insert into table_2 values (8, 'Meera', 'BA', 'Marketing', 37);
insert into table_2 values (9, 'Kabir', 'BBA', 'English', 68);
insert into table_2 values (10, 'Tanish', 'BSc CS', 'Computer', 87);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Aarav', 'BSc CS', 'Maths', 16);
insert into table_3 values (2, 'Aanya', 'BSc CS', 'Marketing', 60);
insert into table_3 values (3, 'Tanish', 'BSc CS', 'Accounts', 14);
insert into table_3 values (4, 'Tanish', 'BMS', 'Biology', 40);
insert into table_3 values (5, 'Kabir', 'BCom', 'Accounts', 86);
insert into table_3 values (6, 'Riya', 'BCom', 'Maths', 63);
insert into table_3 values (7, 'Meera', 'BSc CS', 'Marketing', 87);
insert into table_3 values (8, 'Tanish', 'BSc IT', 'Maths', 94);
insert into table_3 values (9, 'Dev', 'BSc IT', 'Physics', 52);
insert into table_3 values (10, 'Aanya', 'BSc IT', 'Biology', 7);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Rohan', 'BCom', 'Computer', 25);
insert into table_4 values (2, 'Kabir', 'BSc IT', 'Marketing', 92);
insert into table_4 values (3, 'Simran', 'BSc CS', 'Biology', 9);
insert into table_4 values (4, 'Tanish', 'BSc IT', 'Maths', 81);
insert into table_4 values (5, 'Tanish', 'BA', 'Maths', 100);
insert into table_4 values (6, 'Aarav', 'BMS', 'Computer', 28);
insert into table_4 values (7, 'Meera', 'BMS', 'Accounts', 58);
insert into table_4 values (8, 'Simran', 'BSc CS', 'Maths', 12);
insert into table_4 values (9, 'Meera', 'BMS', 'Computer', 77);
insert into table_4 values (10, 'Dev', 'BA', 'Computer', 73);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Meera', 'BCom', 'Biology', 58);
insert into table_5 values (2, 'Meera', 'BMS', 'Biology', 29);
insert into table_5 values (3, 'Simran', 'BCom', 'Physics', 55);
insert into table_5 values (4, 'Meera', 'BA', 'Accounts', 93);
insert into table_5 values (5, 'Aarav', 'BSc CS', 'Biology', 12);
insert into table_5 values (6, 'Aarav', 'BBA', 'Maths', 30);
insert into table_5 values (7, 'Dev', 'BSc IT', 'Maths', 95);
insert into table_5 values (8, 'Dev', 'BCom', 'Computer', 93);
insert into table_5 values (9, 'Meera', 'BSc IT', 'English', 65);
insert into table_5 values (10, 'Tanish', 'BSc IT', 'Maths', 61);

select * from table_5;
drop table table_5;

-- Create Database database_10
create database database_10;
use database_10;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Kabir', 'BSc IT', 'English', 77);
insert into table_1 values (2, 'Kabir', 'BCom', 'History', 69);
insert into table_1 values (3, 'Kabir', 'BSc IT', 'English', 54);
insert into table_1 values (4, 'Riya', 'BCom', 'Accounts', 9);
insert into table_1 values (5, 'Tanish', 'BBA', 'Accounts', 65);
insert into table_1 values (6, 'Tanish', 'BSc IT', 'Marketing', 18);
insert into table_1 values (7, 'Simran', 'BCom', 'Marketing', 83);
insert into table_1 values (8, 'Isha', 'BCom', 'Marketing', 26);
insert into table_1 values (9, 'Simran', 'BMS', 'English', 59);
insert into table_1 values (10, 'Aanya', 'BMS', 'Physics', 84);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Rohan', 'BSc CS', 'Accounts', 12);
insert into table_2 values (2, 'Riya', 'BSc CS', 'Maths', 87);
insert into table_2 values (3, 'Tanish', 'BCom', 'Computer', 32);
insert into table_2 values (4, 'Isha', 'BMS', 'Physics', 85);
insert into table_2 values (5, 'Dev', 'BMS', 'Maths', 91);
insert into table_2 values (6, 'Rohan', 'BBA', 'Physics', 16);
insert into table_2 values (7, 'Kabir', 'BSc IT', 'Physics', 54);
insert into table_2 values (8, 'Aarav', 'BSc IT', 'Biology', 71);
insert into table_2 values (9, 'Simran', 'BBA', 'History', 50);
insert into table_2 values (10, 'Kabir', 'BSc CS', 'Biology', 43);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Kabir', 'BMS', 'Marketing', 48);
insert into table_3 values (2, 'Tanish', 'BCom', 'Marketing', 47);
insert into table_3 values (3, 'Meera', 'BMS', 'Accounts', 7);
insert into table_3 values (4, 'Aarav', 'BSc CS', 'History', 33);
insert into table_3 values (5, 'Aanya', 'BSc IT', 'English', 88);
insert into table_3 values (6, 'Riya', 'BMS', 'Computer', 21);
insert into table_3 values (7, 'Aarav', 'BBA', 'Biology', 6);
insert into table_3 values (8, 'Dev', 'BBA', 'Biology', 24);
insert into table_3 values (9, 'Simran', 'BA', 'English', 23);
insert into table_3 values (10, 'Tanish', 'BSc CS', 'Maths', 1);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Aanya', 'BMS', 'Biology', 32);
insert into table_4 values (2, 'Riya', 'BBA', 'Maths', 51);
insert into table_4 values (3, 'Meera', 'BA', 'Computer', 20);
insert into table_4 values (4, 'Riya', 'BBA', 'Maths', 94);
insert into table_4 values (5, 'Tanish', 'BSc IT', 'Maths', 21);
insert into table_4 values (6, 'Tanish', 'BBA', 'Physics', 7);
insert into table_4 values (7, 'Dev', 'BCom', 'Marketing', 48);
insert into table_4 values (8, 'Rohan', 'BCom', 'Biology', 25);
insert into table_4 values (9, 'Simran', 'BA', 'Marketing', 40);
insert into table_4 values (10, 'Riya', 'BBA', 'Biology', 52);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Aarav', 'BBA', 'Maths', 50);
insert into table_5 values (2, 'Rohan', 'BA', 'History', 57);
insert into table_5 values (3, 'Aarav', 'BMS', 'English', 100);
insert into table_5 values (4, 'Riya', 'BBA', 'Computer', 65);
insert into table_5 values (5, 'Simran', 'BBA', 'Biology', 56);
insert into table_5 values (6, 'Aarav', 'BMS', 'Maths', 18);
insert into table_5 values (7, 'Kabir', 'BSc IT', 'Maths', 66);
insert into table_5 values (8, 'Meera', 'BCom', 'Marketing', 56);
insert into table_5 values (9, 'Simran', 'BCom', 'Biology', 2);
insert into table_5 values (10, 'Dev', 'BCom', 'Computer', 41);

select * from table_5;
drop table table_5;

-- Create Database database_11
create database database_11;
use database_11;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Dev', 'BCom', 'Physics', 63);
insert into table_1 values (2, 'Simran', 'BMS', 'Computer', 56);
insert into table_1 values (3, 'Tanish', 'BSc IT', 'Maths', 28);
insert into table_1 values (4, 'Dev', 'BMS', 'Marketing', 14);
insert into table_1 values (5, 'Riya', 'BBA', 'Biology', 61);
insert into table_1 values (6, 'Aarav', 'BSc IT', 'Maths', 7);
insert into table_1 values (7, 'Riya', 'BBA', 'Biology', 13);
insert into table_1 values (8, 'Simran', 'BA', 'Accounts', 48);
insert into table_1 values (9, 'Kabir', 'BCom', 'Marketing', 43);
insert into table_1 values (10, 'Kabir', 'BCom', 'Computer', 17);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Isha', 'BA', 'Maths', 11);
insert into table_2 values (2, 'Meera', 'BSc CS', 'Accounts', 96);
insert into table_2 values (3, 'Kabir', 'BCom', 'English', 17);
insert into table_2 values (4, 'Isha', 'BA', 'Accounts', 54);
insert into table_2 values (5, 'Kabir', 'BMS', 'Marketing', 8);
insert into table_2 values (6, 'Rohan', 'BSc IT', 'English', 100);
insert into table_2 values (7, 'Aarav', 'BBA', 'Physics', 21);
insert into table_2 values (8, 'Aarav', 'BSc CS', 'Accounts', 44);
insert into table_2 values (9, 'Aarav', 'BA', 'Accounts', 8);
insert into table_2 values (10, 'Aanya', 'BMS', 'Physics', 73);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Tanish', 'BA', 'Computer', 53);
insert into table_3 values (2, 'Isha', 'BA', 'Physics', 15);
insert into table_3 values (3, 'Kabir', 'BCom', 'Physics', 6);
insert into table_3 values (4, 'Tanish', 'BCom', 'English', 53);
insert into table_3 values (5, 'Simran', 'BSc CS', 'Biology', 60);
insert into table_3 values (6, 'Kabir', 'BCom', 'History', 22);
insert into table_3 values (7, 'Aanya', 'BSc IT', 'Accounts', 15);
insert into table_3 values (8, 'Riya', 'BMS', 'Biology', 3);
insert into table_3 values (9, 'Meera', 'BSc CS', 'Maths', 62);
insert into table_3 values (10, 'Meera', 'BBA', 'History', 75);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Isha', 'BBA', 'Marketing', 95);
insert into table_4 values (2, 'Rohan', 'BBA', 'Maths', 70);
insert into table_4 values (3, 'Riya', 'BBA', 'History', 41);
insert into table_4 values (4, 'Tanish', 'BSc CS', 'Physics', 49);
insert into table_4 values (5, 'Tanish', 'BCom', 'Accounts', 38);
insert into table_4 values (6, 'Meera', 'BSc IT', 'English', 22);
insert into table_4 values (7, 'Simran', 'BCom', 'Biology', 47);
insert into table_4 values (8, 'Isha', 'BA', 'Accounts', 50);
insert into table_4 values (9, 'Dev', 'BSc IT', 'Computer', 64);
insert into table_4 values (10, 'Aarav', 'BSc CS', 'Biology', 81);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Kabir', 'BCom', 'Maths', 48);
insert into table_5 values (2, 'Aanya', 'BA', 'English', 72);
insert into table_5 values (3, 'Isha', 'BA', 'Accounts', 54);
insert into table_5 values (4, 'Riya', 'BMS', 'Marketing', 8);
insert into table_5 values (5, 'Rohan', 'BBA', 'Maths', 65);
insert into table_5 values (6, 'Riya', 'BA', 'Accounts', 54);
insert into table_5 values (7, 'Aanya', 'BBA', 'Biology', 97);
insert into table_5 values (8, 'Kabir', 'BMS', 'Biology', 36);
insert into table_5 values (9, 'Rohan', 'BSc IT', 'Biology', 5);
insert into table_5 values (10, 'Aanya', 'BMS', 'History', 24);

select * from table_5;
drop table table_5;

-- Create Database database_12
create database database_12;
use database_12;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Tanish', 'BMS', 'Physics', 32);
insert into table_1 values (2, 'Kabir', 'BBA', 'Maths', 52);
insert into table_1 values (3, 'Riya', 'BMS', 'English', 80);
insert into table_1 values (4, 'Aanya', 'BCom', 'Maths', 8);
insert into table_1 values (5, 'Dev', 'BMS', 'Biology', 4);
insert into table_1 values (6, 'Aanya', 'BBA', 'Biology', 77);
insert into table_1 values (7, 'Aanya', 'BBA', 'History', 7);
insert into table_1 values (8, 'Meera', 'BA', 'Computer', 86);
insert into table_1 values (9, 'Kabir', 'BMS', 'Accounts', 22);
insert into table_1 values (10, 'Dev', 'BBA', 'Accounts', 74);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Kabir', 'BSc CS', 'Biology', 10);
insert into table_2 values (2, 'Rohan', 'BCom', 'Computer', 25);
insert into table_2 values (3, 'Meera', 'BBA', 'English', 7);
insert into table_2 values (4, 'Aanya', 'BA', 'Marketing', 15);
insert into table_2 values (5, 'Aarav', 'BMS', 'Biology', 30);
insert into table_2 values (6, 'Dev', 'BSc CS', 'Physics', 2);
insert into table_2 values (7, 'Riya', 'BMS', 'Biology', 99);
insert into table_2 values (8, 'Rohan', 'BA', 'Maths', 68);
insert into table_2 values (9, 'Simran', 'BA', 'Physics', 20);
insert into table_2 values (10, 'Tanish', 'BSc CS', 'Biology', 25);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Kabir', 'BSc CS', 'Physics', 82);
insert into table_3 values (2, 'Isha', 'BMS', 'Computer', 8);
insert into table_3 values (3, 'Isha', 'BSc CS', 'Marketing', 25);
insert into table_3 values (4, 'Meera', 'BSc IT', 'Physics', 72);
insert into table_3 values (5, 'Tanish', 'BCom', 'Computer', 59);
insert into table_3 values (6, 'Simran', 'BBA', 'Computer', 23);
insert into table_3 values (7, 'Meera', 'BCom', 'History', 87);
insert into table_3 values (8, 'Dev', 'BSc CS', 'English', 13);
insert into table_3 values (9, 'Riya', 'BSc IT', 'English', 37);
insert into table_3 values (10, 'Aanya', 'BSc CS', 'Maths', 88);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Tanish', 'BA', 'Biology', 1);
insert into table_4 values (2, 'Isha', 'BCom', 'Biology', 65);
insert into table_4 values (3, 'Dev', 'BSc CS', 'English', 89);
insert into table_4 values (4, 'Riya', 'BCom', 'History', 6);
insert into table_4 values (5, 'Isha', 'BMS', 'Biology', 9);
insert into table_4 values (6, 'Simran', 'BSc IT', 'English', 85);
insert into table_4 values (7, 'Isha', 'BCom', 'Accounts', 46);
insert into table_4 values (8, 'Simran', 'BBA', 'History', 85);
insert into table_4 values (9, 'Meera', 'BSc CS', 'English', 28);
insert into table_4 values (10, 'Tanish', 'BCom', 'Marketing', 71);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Kabir', 'BSc CS', 'Computer', 19);
insert into table_5 values (2, 'Aanya', 'BBA', 'Maths', 71);
insert into table_5 values (3, 'Simran', 'BMS', 'Biology', 56);
insert into table_5 values (4, 'Kabir', 'BBA', 'Biology', 71);
insert into table_5 values (5, 'Riya', 'BA', 'History', 28);
insert into table_5 values (6, 'Tanish', 'BBA', 'Computer', 85);
insert into table_5 values (7, 'Aarav', 'BBA', 'Maths', 76);
insert into table_5 values (8, 'Meera', 'BMS', 'Physics', 63);
insert into table_5 values (9, 'Meera', 'BCom', 'Accounts', 76);
insert into table_5 values (10, 'Meera', 'BMS', 'Physics', 98);

select * from table_5;
drop table table_5;

-- Create Database database_13
create database database_13;
use database_13;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Aarav', 'BSc IT', 'Computer', 35);
insert into table_1 values (2, 'Isha', 'BMS', 'Physics', 20);
insert into table_1 values (3, 'Aanya', 'BSc CS', 'Physics', 77);
insert into table_1 values (4, 'Dev', 'BBA', 'Maths', 39);
insert into table_1 values (5, 'Kabir', 'BMS', 'English', 33);
insert into table_1 values (6, 'Aanya', 'BBA', 'Physics', 67);
insert into table_1 values (7, 'Rohan', 'BSc IT', 'Maths', 17);
insert into table_1 values (8, 'Dev', 'BMS', 'Physics', 30);
insert into table_1 values (9, 'Aarav', 'BSc IT', 'Biology', 92);
insert into table_1 values (10, 'Meera', 'BCom', 'History', 70);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Tanish', 'BSc IT', 'Maths', 77);
insert into table_2 values (2, 'Simran', 'BSc CS', 'Accounts', 98);
insert into table_2 values (3, 'Rohan', 'BBA', 'Computer', 78);
insert into table_2 values (4, 'Kabir', 'BSc IT', 'English', 67);
insert into table_2 values (5, 'Isha', 'BA', 'Biology', 55);
insert into table_2 values (6, 'Aanya', 'BMS', 'Marketing', 19);
insert into table_2 values (7, 'Isha', 'BMS', 'Accounts', 48);
insert into table_2 values (8, 'Isha', 'BMS', 'English', 13);
insert into table_2 values (9, 'Simran', 'BSc IT', 'Accounts', 56);
insert into table_2 values (10, 'Isha', 'BCom', 'Accounts', 35);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Meera', 'BCom', 'Biology', 35);
insert into table_3 values (2, 'Riya', 'BA', 'History', 57);
insert into table_3 values (3, 'Tanish', 'BA', 'History', 90);
insert into table_3 values (4, 'Riya', 'BSc IT', 'Accounts', 87);
insert into table_3 values (5, 'Dev', 'BA', 'Biology', 37);
insert into table_3 values (6, 'Aanya', 'BSc CS', 'Accounts', 59);
insert into table_3 values (7, 'Riya', 'BBA', 'English', 7);
insert into table_3 values (8, 'Aarav', 'BBA', 'Marketing', 76);
insert into table_3 values (9, 'Rohan', 'BCom', 'Marketing', 6);
insert into table_3 values (10, 'Rohan', 'BCom', 'Marketing', 4);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Tanish', 'BSc CS', 'Marketing', 23);
insert into table_4 values (2, 'Riya', 'BSc IT', 'Accounts', 55);
insert into table_4 values (3, 'Riya', 'BSc CS', 'Biology', 63);
insert into table_4 values (4, 'Aarav', 'BBA', 'Marketing', 76);
insert into table_4 values (5, 'Tanish', 'BBA', 'Accounts', 17);
insert into table_4 values (6, 'Meera', 'BA', 'Computer', 23);
insert into table_4 values (7, 'Riya', 'BSc IT', 'Computer', 5);
insert into table_4 values (8, 'Kabir', 'BMS', 'Accounts', 9);
insert into table_4 values (9, 'Simran', 'BA', 'Biology', 96);
insert into table_4 values (10, 'Riya', 'BSc CS', 'Biology', 93);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Isha', 'BA', 'English', 72);
insert into table_5 values (2, 'Simran', 'BMS', 'English', 38);
insert into table_5 values (3, 'Meera', 'BA', 'Accounts', 44);
insert into table_5 values (4, 'Kabir', 'BSc CS', 'Physics', 10);
insert into table_5 values (5, 'Simran', 'BCom', 'English', 32);
insert into table_5 values (6, 'Aarav', 'BCom', 'English', 5);
insert into table_5 values (7, 'Aanya', 'BSc CS', 'Accounts', 92);
insert into table_5 values (8, 'Riya', 'BMS', 'Biology', 21);
insert into table_5 values (9, 'Dev', 'BSc CS', 'Marketing', 6);
insert into table_5 values (10, 'Tanish', 'BBA', 'History', 48);

select * from table_5;
drop table table_5;

-- Create Database database_14
create database database_14;
use database_14;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Aanya', 'BBA', 'History', 71);
insert into table_1 values (2, 'Aanya', 'BSc IT', 'Marketing', 48);
insert into table_1 values (3, 'Tanish', 'BMS', 'History', 28);
insert into table_1 values (4, 'Aarav', 'BSc IT', 'Maths', 21);
insert into table_1 values (5, 'Dev', 'BBA', 'English', 87);
insert into table_1 values (6, 'Meera', 'BSc IT', 'Marketing', 71);
insert into table_1 values (7, 'Simran', 'BSc IT', 'Marketing', 72);
insert into table_1 values (8, 'Rohan', 'BMS', 'Biology', 62);
insert into table_1 values (9, 'Rohan', 'BCom', 'History', 14);
insert into table_1 values (10, 'Kabir', 'BA', 'Marketing', 69);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Riya', 'BSc IT', 'English', 91);
insert into table_2 values (2, 'Kabir', 'BA', 'Marketing', 17);
insert into table_2 values (3, 'Riya', 'BSc IT', 'History', 49);
insert into table_2 values (4, 'Isha', 'BMS', 'Biology', 86);
insert into table_2 values (5, 'Kabir', 'BBA', 'Physics', 9);
insert into table_2 values (6, 'Rohan', 'BSc IT', 'Marketing', 91);
insert into table_2 values (7, 'Rohan', 'BMS', 'Accounts', 62);
insert into table_2 values (8, 'Dev', 'BBA', 'Computer', 16);
insert into table_2 values (9, 'Tanish', 'BBA', 'Physics', 2);
insert into table_2 values (10, 'Kabir', 'BMS', 'Accounts', 68);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Rohan', 'BMS', 'Physics', 86);
insert into table_3 values (2, 'Kabir', 'BSc IT', 'Maths', 30);
insert into table_3 values (3, 'Riya', 'BA', 'English', 4);
insert into table_3 values (4, 'Isha', 'BBA', 'English', 72);
insert into table_3 values (5, 'Meera', 'BSc CS', 'Biology', 37);
insert into table_3 values (6, 'Simran', 'BBA', 'Marketing', 7);
insert into table_3 values (7, 'Kabir', 'BBA', 'Computer', 92);
insert into table_3 values (8, 'Tanish', 'BMS', 'Maths', 33);
insert into table_3 values (9, 'Meera', 'BA', 'English', 74);
insert into table_3 values (10, 'Aanya', 'BBA', 'Accounts', 21);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Isha', 'BCom', 'Physics', 9);
insert into table_4 values (2, 'Tanish', 'BSc CS', 'Biology', 82);
insert into table_4 values (3, 'Aarav', 'BSc IT', 'Biology', 68);
insert into table_4 values (4, 'Kabir', 'BSc CS', 'Accounts', 67);
insert into table_4 values (5, 'Isha', 'BSc CS', 'Physics', 30);
insert into table_4 values (6, 'Simran', 'BBA', 'Maths', 71);
insert into table_4 values (7, 'Simran', 'BSc IT', 'Marketing', 42);
insert into table_4 values (8, 'Simran', 'BA', 'Biology', 15);
insert into table_4 values (9, 'Meera', 'BSc CS', 'English', 17);
insert into table_4 values (10, 'Tanish', 'BSc CS', 'Biology', 100);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Riya', 'BA', 'Physics', 97);
insert into table_5 values (2, 'Dev', 'BBA', 'Biology', 83);
insert into table_5 values (3, 'Kabir', 'BSc IT', 'History', 56);
insert into table_5 values (4, 'Riya', 'BA', 'Maths', 3);
insert into table_5 values (5, 'Rohan', 'BMS', 'History', 7);
insert into table_5 values (6, 'Aarav', 'BA', 'Biology', 94);
insert into table_5 values (7, 'Aanya', 'BSc CS', 'Biology', 10);
insert into table_5 values (8, 'Dev', 'BSc IT', 'Accounts', 76);
insert into table_5 values (9, 'Meera', 'BMS', 'Maths', 54);
insert into table_5 values (10, 'Tanish', 'BBA', 'Computer', 64);

select * from table_5;
drop table table_5;

-- Create Database database_15
create database database_15;
use database_15;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Meera', 'BMS', 'Accounts', 58);
insert into table_1 values (2, 'Riya', 'BBA', 'History', 49);
insert into table_1 values (3, 'Rohan', 'BBA', 'Maths', 72);
insert into table_1 values (4, 'Dev', 'BA', 'English', 57);
insert into table_1 values (5, 'Tanish', 'BMS', 'Physics', 11);
insert into table_1 values (6, 'Aanya', 'BSc IT', 'Biology', 32);
insert into table_1 values (7, 'Aanya', 'BCom', 'History', 75);
insert into table_1 values (8, 'Tanish', 'BBA', 'Maths', 97);
insert into table_1 values (9, 'Riya', 'BCom', 'English', 97);
insert into table_1 values (10, 'Riya', 'BSc CS', 'Accounts', 95);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Kabir', 'BBA', 'Accounts', 5);
insert into table_2 values (2, 'Riya', 'BA', 'English', 67);
insert into table_2 values (3, 'Tanish', 'BBA', 'Marketing', 22);
insert into table_2 values (4, 'Dev', 'BBA', 'Computer', 23);
insert into table_2 values (5, 'Dev', 'BSc IT', 'Maths', 98);
insert into table_2 values (6, 'Isha', 'BBA', 'Computer', 34);
insert into table_2 values (7, 'Dev', 'BMS', 'Maths', 34);
insert into table_2 values (8, 'Riya', 'BCom', 'Computer', 95);
insert into table_2 values (9, 'Rohan', 'BBA', 'English', 4);
insert into table_2 values (10, 'Tanish', 'BSc IT', 'Biology', 32);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Aarav', 'BCom', 'Physics', 50);
insert into table_3 values (2, 'Kabir', 'BCom', 'Computer', 10);
insert into table_3 values (3, 'Isha', 'BSc IT', 'History', 86);
insert into table_3 values (4, 'Kabir', 'BSc IT', 'Marketing', 79);
insert into table_3 values (5, 'Aarav', 'BSc IT', 'History', 5);
insert into table_3 values (6, 'Tanish', 'BSc IT', 'Maths', 96);
insert into table_3 values (7, 'Meera', 'BSc CS', 'English', 32);
insert into table_3 values (8, 'Isha', 'BBA', 'Computer', 56);
insert into table_3 values (9, 'Simran', 'BSc IT', 'Biology', 18);
insert into table_3 values (10, 'Tanish', 'BBA', 'English', 8);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Aanya', 'BCom', 'English', 19);
insert into table_4 values (2, 'Aarav', 'BMS', 'History', 56);
insert into table_4 values (3, 'Kabir', 'BSc IT', 'Computer', 88);
insert into table_4 values (4, 'Aarav', 'BSc CS', 'English', 72);
insert into table_4 values (5, 'Aanya', 'BSc IT', 'English', 16);
insert into table_4 values (6, 'Kabir', 'BBA', 'History', 39);
insert into table_4 values (7, 'Rohan', 'BBA', 'History', 81);
insert into table_4 values (8, 'Aanya', 'BCom', 'Computer', 8);
insert into table_4 values (9, 'Rohan', 'BMS', 'Marketing', 16);
insert into table_4 values (10, 'Kabir', 'BCom', 'Accounts', 13);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Kabir', 'BBA', 'Physics', 86);
insert into table_5 values (2, 'Isha', 'BSc CS', 'History', 30);
insert into table_5 values (3, 'Kabir', 'BBA', 'History', 23);
insert into table_5 values (4, 'Meera', 'BSc CS', 'English', 78);
insert into table_5 values (5, 'Tanish', 'BA', 'Marketing', 13);
insert into table_5 values (6, 'Aanya', 'BCom', 'Marketing', 52);
insert into table_5 values (7, 'Dev', 'BBA', 'Accounts', 42);
insert into table_5 values (8, 'Tanish', 'BCom', 'Accounts', 52);
insert into table_5 values (9, 'Kabir', 'BMS', 'English', 41);
insert into table_5 values (10, 'Dev', 'BCom', 'Accounts', 18);

select * from table_5;
drop table table_5;

-- Create Database database_16
create database database_16;
use database_16;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Rohan', 'BMS', 'Maths', 52);
insert into table_1 values (2, 'Riya', 'BA', 'Biology', 69);
insert into table_1 values (3, 'Dev', 'BCom', 'Maths', 3);
insert into table_1 values (4, 'Kabir', 'BCom', 'History', 27);
insert into table_1 values (5, 'Meera', 'BSc IT', 'Maths', 66);
insert into table_1 values (6, 'Isha', 'BA', 'English', 99);
insert into table_1 values (7, 'Kabir', 'BMS', 'English', 8);
insert into table_1 values (8, 'Aanya', 'BSc CS', 'History', 88);
insert into table_1 values (9, 'Tanish', 'BMS', 'History', 49);
insert into table_1 values (10, 'Tanish', 'BCom', 'Maths', 39);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Tanish', 'BSc CS', 'Physics', 59);
insert into table_2 values (2, 'Tanish', 'BBA', 'English', 50);
insert into table_2 values (3, 'Rohan', 'BCom', 'Maths', 87);
insert into table_2 values (4, 'Kabir', 'BSc IT', 'Computer', 74);
insert into table_2 values (5, 'Aanya', 'BSc IT', 'History', 88);
insert into table_2 values (6, 'Aarav', 'BMS', 'History', 85);
insert into table_2 values (7, 'Dev', 'BMS', 'Biology', 34);
insert into table_2 values (8, 'Aarav', 'BSc CS', 'Maths', 51);
insert into table_2 values (9, 'Dev', 'BBA', 'Computer', 8);
insert into table_2 values (10, 'Simran', 'BMS', 'Biology', 29);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Rohan', 'BBA', 'Computer', 4);
insert into table_3 values (2, 'Aarav', 'BSc IT', 'History', 8);
insert into table_3 values (3, 'Tanish', 'BBA', 'Computer', 77);
insert into table_3 values (4, 'Dev', 'BBA', 'Accounts', 7);
insert into table_3 values (5, 'Kabir', 'BSc CS', 'Biology', 56);
insert into table_3 values (6, 'Dev', 'BA', 'Marketing', 16);
insert into table_3 values (7, 'Aarav', 'BBA', 'English', 79);
insert into table_3 values (8, 'Kabir', 'BA', 'Maths', 24);
insert into table_3 values (9, 'Aanya', 'BCom', 'Biology', 64);
insert into table_3 values (10, 'Rohan', 'BMS', 'History', 7);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Dev', 'BA', 'Computer', 33);
insert into table_4 values (2, 'Aarav', 'BSc IT', 'Biology', 62);
insert into table_4 values (3, 'Meera', 'BCom', 'Physics', 58);
insert into table_4 values (4, 'Dev', 'BA', 'Marketing', 39);
insert into table_4 values (5, 'Tanish', 'BSc CS', 'Accounts', 37);
insert into table_4 values (6, 'Tanish', 'BBA', 'Biology', 57);
insert into table_4 values (7, 'Aarav', 'BSc CS', 'Computer', 26);
insert into table_4 values (8, 'Meera', 'BSc CS', 'English', 25);
insert into table_4 values (9, 'Riya', 'BMS', 'Physics', 4);
insert into table_4 values (10, 'Aanya', 'BBA', 'Marketing', 34);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Meera', 'BA', 'Marketing', 17);
insert into table_5 values (2, 'Dev', 'BSc CS', 'Maths', 73);
insert into table_5 values (3, 'Kabir', 'BA', 'Accounts', 84);
insert into table_5 values (4, 'Rohan', 'BMS', 'Computer', 96);
insert into table_5 values (5, 'Isha', 'BSc IT', 'Computer', 68);
insert into table_5 values (6, 'Meera', 'BMS', 'Accounts', 36);
insert into table_5 values (7, 'Isha', 'BCom', 'History', 5);
insert into table_5 values (8, 'Dev', 'BCom', 'Biology', 20);
insert into table_5 values (9, 'Dev', 'BCom', 'Accounts', 58);
insert into table_5 values (10, 'Aarav', 'BMS', 'Biology', 76);

select * from table_5;
drop table table_5;

-- Create Database database_17
create database database_17;
use database_17;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Aarav', 'BCom', 'Accounts', 8);
insert into table_1 values (2, 'Dev', 'BBA', 'History', 41);
insert into table_1 values (3, 'Aarav', 'BSc CS', 'Accounts', 70);
insert into table_1 values (4, 'Rohan', 'BMS', 'English', 61);
insert into table_1 values (5, 'Dev', 'BCom', 'Physics', 2);
insert into table_1 values (6, 'Simran', 'BBA', 'English', 49);
insert into table_1 values (7, 'Meera', 'BA', 'Maths', 13);
insert into table_1 values (8, 'Riya', 'BCom', 'Maths', 89);
insert into table_1 values (9, 'Kabir', 'BCom', 'English', 84);
insert into table_1 values (10, 'Riya', 'BCom', 'English', 95);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Dev', 'BMS', 'Marketing', 69);
insert into table_2 values (2, 'Aarav', 'BMS', 'History', 29);
insert into table_2 values (3, 'Simran', 'BSc IT', 'Computer', 29);
insert into table_2 values (4, 'Dev', 'BMS', 'English', 30);
insert into table_2 values (5, 'Rohan', 'BA', 'Accounts', 79);
insert into table_2 values (6, 'Aarav', 'BA', 'Marketing', 78);
insert into table_2 values (7, 'Aanya', 'BMS', 'English', 65);
insert into table_2 values (8, 'Rohan', 'BSc CS', 'Marketing', 82);
insert into table_2 values (9, 'Dev', 'BBA', 'Computer', 65);
insert into table_2 values (10, 'Rohan', 'BMS', 'Marketing', 64);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Simran', 'BSc IT', 'Maths', 55);
insert into table_3 values (2, 'Kabir', 'BSc IT', 'Maths', 16);
insert into table_3 values (3, 'Meera', 'BSc IT', 'English', 19);
insert into table_3 values (4, 'Meera', 'BMS', 'English', 26);
insert into table_3 values (5, 'Aanya', 'BA', 'Marketing', 47);
insert into table_3 values (6, 'Aarav', 'BMS', 'Biology', 92);
insert into table_3 values (7, 'Meera', 'BMS', 'Marketing', 22);
insert into table_3 values (8, 'Rohan', 'BBA', 'Marketing', 37);
insert into table_3 values (9, 'Kabir', 'BMS', 'Biology', 84);
insert into table_3 values (10, 'Isha', 'BMS', 'Marketing', 70);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Aarav', 'BSc IT', 'Biology', 94);
insert into table_4 values (2, 'Aarav', 'BSc CS', 'Marketing', 59);
insert into table_4 values (3, 'Tanish', 'BSc IT', 'Physics', 57);
insert into table_4 values (4, 'Rohan', 'BCom', 'Marketing', 25);
insert into table_4 values (5, 'Isha', 'BA', 'Marketing', 38);
insert into table_4 values (6, 'Tanish', 'BSc CS', 'History', 9);
insert into table_4 values (7, 'Tanish', 'BSc CS', 'Accounts', 67);
insert into table_4 values (8, 'Aarav', 'BMS', 'History', 69);
insert into table_4 values (9, 'Aanya', 'BSc CS', 'History', 29);
insert into table_4 values (10, 'Tanish', 'BBA', 'Biology', 27);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Dev', 'BCom', 'English', 9);
insert into table_5 values (2, 'Dev', 'BSc IT', 'Physics', 14);
insert into table_5 values (3, 'Meera', 'BMS', 'English', 71);
insert into table_5 values (4, 'Riya', 'BCom', 'English', 40);
insert into table_5 values (5, 'Aanya', 'BCom', 'Maths', 34);
insert into table_5 values (6, 'Simran', 'BMS', 'Physics', 40);
insert into table_5 values (7, 'Kabir', 'BMS', 'History', 14);
insert into table_5 values (8, 'Aarav', 'BA', 'Marketing', 65);
insert into table_5 values (9, 'Rohan', 'BCom', 'History', 81);
insert into table_5 values (10, 'Rohan', 'BMS', 'Accounts', 44);

select * from table_5;
drop table table_5;

-- Create Database database_18
create database database_18;
use database_18;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Aanya', 'BSc CS', 'Marketing', 40);
insert into table_1 values (2, 'Aarav', 'BMS', 'English', 83);
insert into table_1 values (3, 'Tanish', 'BSc CS', 'Accounts', 37);
insert into table_1 values (4, 'Tanish', 'BMS', 'Marketing', 86);
insert into table_1 values (5, 'Tanish', 'BCom', 'English', 26);
insert into table_1 values (6, 'Meera', 'BSc CS', 'Accounts', 22);
insert into table_1 values (7, 'Aanya', 'BMS', 'English', 48);
insert into table_1 values (8, 'Isha', 'BSc CS', 'History', 97);
insert into table_1 values (9, 'Kabir', 'BCom', 'History', 64);
insert into table_1 values (10, 'Aanya', 'BCom', 'History', 41);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Aarav', 'BCom', 'Biology', 21);
insert into table_2 values (2, 'Isha', 'BCom', 'Biology', 33);
insert into table_2 values (3, 'Rohan', 'BCom', 'English', 55);
insert into table_2 values (4, 'Simran', 'BA', 'Maths', 95);
insert into table_2 values (5, 'Isha', 'BSc IT', 'Computer', 17);
insert into table_2 values (6, 'Simran', 'BCom', 'Maths', 83);
insert into table_2 values (7, 'Dev', 'BSc CS', 'Accounts', 38);
insert into table_2 values (8, 'Rohan', 'BBA', 'Physics', 82);
insert into table_2 values (9, 'Riya', 'BMS', 'Maths', 69);
insert into table_2 values (10, 'Tanish', 'BSc CS', 'Maths', 82);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Rohan', 'BCom', 'Marketing', 47);
insert into table_3 values (2, 'Tanish', 'BA', 'Maths', 91);
insert into table_3 values (3, 'Isha', 'BCom', 'Marketing', 21);
insert into table_3 values (4, 'Kabir', 'BSc IT', 'History', 84);
insert into table_3 values (5, 'Tanish', 'BA', 'Physics', 87);
insert into table_3 values (6, 'Aanya', 'BA', 'English', 86);
insert into table_3 values (7, 'Aarav', 'BA', 'History', 65);
insert into table_3 values (8, 'Kabir', 'BBA', 'English', 66);
insert into table_3 values (9, 'Kabir', 'BSc IT', 'Marketing', 23);
insert into table_3 values (10, 'Aanya', 'BSc CS', 'History', 20);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Aanya', 'BMS', 'Biology', 48);
insert into table_4 values (2, 'Dev', 'BMS', 'Accounts', 19);
insert into table_4 values (3, 'Isha', 'BCom', 'Marketing', 17);
insert into table_4 values (4, 'Aarav', 'BBA', 'History', 63);
insert into table_4 values (5, 'Aarav', 'BSc CS', 'Accounts', 72);
insert into table_4 values (6, 'Kabir', 'BA', 'Maths', 64);
insert into table_4 values (7, 'Aanya', 'BSc IT', 'Computer', 56);
insert into table_4 values (8, 'Dev', 'BBA', 'Computer', 68);
insert into table_4 values (9, 'Tanish', 'BA', 'Computer', 51);
insert into table_4 values (10, 'Aarav', 'BMS', 'Accounts', 25);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Dev', 'BMS', 'Biology', 41);
insert into table_5 values (2, 'Rohan', 'BMS', 'English', 14);
insert into table_5 values (3, 'Simran', 'BSc IT', 'History', 51);
insert into table_5 values (4, 'Tanish', 'BA', 'Biology', 94);
insert into table_5 values (5, 'Isha', 'BBA', 'Maths', 4);
insert into table_5 values (6, 'Aarav', 'BCom', 'Biology', 19);
insert into table_5 values (7, 'Aarav', 'BSc IT', 'History', 88);
insert into table_5 values (8, 'Aarav', 'BSc CS', 'Accounts', 69);
insert into table_5 values (9, 'Aanya', 'BSc CS', 'Computer', 39);
insert into table_5 values (10, 'Aanya', 'BSc CS', 'Biology', 33);

select * from table_5;
drop table table_5;

-- Create Database database_19
create database database_19;
use database_19;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Dev', 'BA', 'English', 32);
insert into table_1 values (2, 'Rohan', 'BBA', 'Accounts', 9);
insert into table_1 values (3, 'Dev', 'BSc CS', 'History', 58);
insert into table_1 values (4, 'Aarav', 'BSc IT', 'Physics', 48);
insert into table_1 values (5, 'Aanya', 'BBA', 'Marketing', 84);
insert into table_1 values (6, 'Aarav', 'BSc CS', 'Marketing', 44);
insert into table_1 values (7, 'Dev', 'BBA', 'Biology', 58);
insert into table_1 values (8, 'Meera', 'BCom', 'Physics', 66);
insert into table_1 values (9, 'Dev', 'BSc IT', 'Biology', 77);
insert into table_1 values (10, 'Dev', 'BSc IT', 'English', 94);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Isha', 'BSc CS', 'Maths', 98);
insert into table_2 values (2, 'Simran', 'BSc CS', 'Biology', 61);
insert into table_2 values (3, 'Aarav', 'BA', 'Computer', 100);
insert into table_2 values (4, 'Tanish', 'BSc IT', 'English', 71);
insert into table_2 values (5, 'Aanya', 'BSc IT', 'Maths', 6);
insert into table_2 values (6, 'Riya', 'BSc CS', 'Accounts', 70);
insert into table_2 values (7, 'Rohan', 'BBA', 'Accounts', 96);
insert into table_2 values (8, 'Aarav', 'BA', 'Marketing', 62);
insert into table_2 values (9, 'Isha', 'BMS', 'Maths', 90);
insert into table_2 values (10, 'Simran', 'BSc IT', 'English', 49);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Aanya', 'BCom', 'Biology', 97);
insert into table_3 values (2, 'Meera', 'BSc CS', 'Accounts', 99);
insert into table_3 values (3, 'Dev', 'BSc IT', 'Biology', 53);
insert into table_3 values (4, 'Tanish', 'BBA', 'History', 78);
insert into table_3 values (5, 'Isha', 'BBA', 'Physics', 58);
insert into table_3 values (6, 'Dev', 'BSc CS', 'Biology', 71);
insert into table_3 values (7, 'Kabir', 'BCom', 'Computer', 33);
insert into table_3 values (8, 'Aanya', 'BBA', 'Computer', 69);
insert into table_3 values (9, 'Meera', 'BSc IT', 'History', 67);
insert into table_3 values (10, 'Simran', 'BBA', 'History', 66);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Aarav', 'BA', 'English', 10);
insert into table_4 values (2, 'Kabir', 'BCom', 'Physics', 12);
insert into table_4 values (3, 'Aarav', 'BSc CS', 'Maths', 84);
insert into table_4 values (4, 'Aanya', 'BBA', 'Accounts', 70);
insert into table_4 values (5, 'Dev', 'BSc IT', 'Biology', 49);
insert into table_4 values (6, 'Simran', 'BBA', 'English', 8);
insert into table_4 values (7, 'Riya', 'BBA', 'Accounts', 10);
insert into table_4 values (8, 'Meera', 'BCom', 'Maths', 92);
insert into table_4 values (9, 'Meera', 'BA', 'Computer', 77);
insert into table_4 values (10, 'Meera', 'BSc CS', 'History', 6);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Dev', 'BMS', 'Marketing', 79);
insert into table_5 values (2, 'Aanya', 'BMS', 'Biology', 6);
insert into table_5 values (3, 'Rohan', 'BSc IT', 'English', 76);
insert into table_5 values (4, 'Meera', 'BSc CS', 'History', 10);
insert into table_5 values (5, 'Rohan', 'BMS', 'Maths', 59);
insert into table_5 values (6, 'Tanish', 'BSc IT', 'Accounts', 80);
insert into table_5 values (7, 'Dev', 'BBA', 'Marketing', 98);
insert into table_5 values (8, 'Aanya', 'BA', 'Computer', 88);
insert into table_5 values (9, 'Dev', 'BSc IT', 'Maths', 4);
insert into table_5 values (10, 'Tanish', 'BSc CS', 'Computer', 97);

select * from table_5;
drop table table_5;

-- Create Database database_20
create database database_20;
use database_20;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Aarav', 'BSc IT', 'Biology', 52);
insert into table_1 values (2, 'Isha', 'BSc CS', 'Biology', 94);
insert into table_1 values (3, 'Dev', 'BSc IT', 'English', 57);
insert into table_1 values (4, 'Meera', 'BSc IT', 'Accounts', 8);
insert into table_1 values (5, 'Riya', 'BMS', 'English', 28);
insert into table_1 values (6, 'Dev', 'BMS', 'English', 35);
insert into table_1 values (7, 'Aarav', 'BBA', 'Computer', 43);
insert into table_1 values (8, 'Riya', 'BA', 'History', 63);
insert into table_1 values (9, 'Aanya', 'BMS', 'Computer', 41);
insert into table_1 values (10, 'Isha', 'BCom', 'English', 1);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Aanya', 'BA', 'Biology', 67);
insert into table_2 values (2, 'Rohan', 'BCom', 'Biology', 15);
insert into table_2 values (3, 'Simran', 'BMS', 'Maths', 48);
insert into table_2 values (4, 'Tanish', 'BMS', 'Marketing', 8);
insert into table_2 values (5, 'Meera', 'BBA', 'Computer', 75);
insert into table_2 values (6, 'Tanish', 'BCom', 'Maths', 69);
insert into table_2 values (7, 'Tanish', 'BA', 'English', 35);
insert into table_2 values (8, 'Meera', 'BA', 'Marketing', 99);
insert into table_2 values (9, 'Meera', 'BSc CS', 'Marketing', 64);
insert into table_2 values (10, 'Tanish', 'BA', 'Maths', 45);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Riya', 'BCom', 'Accounts', 46);
insert into table_3 values (2, 'Rohan', 'BA', 'Accounts', 6);
insert into table_3 values (3, 'Isha', 'BSc CS', 'Maths', 100);
insert into table_3 values (4, 'Dev', 'BSc CS', 'Accounts', 82);
insert into table_3 values (5, 'Kabir', 'BA', 'Physics', 45);
insert into table_3 values (6, 'Dev', 'BSc IT', 'History', 2);
insert into table_3 values (7, 'Tanish', 'BBA', 'Computer', 69);
insert into table_3 values (8, 'Kabir', 'BSc IT', 'Maths', 97);
insert into table_3 values (9, 'Kabir', 'BSc CS', 'Marketing', 68);
insert into table_3 values (10, 'Rohan', 'BSc CS', 'Biology', 82);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Tanish', 'BSc CS', 'Maths', 73);
insert into table_4 values (2, 'Riya', 'BBA', 'Accounts', 57);
insert into table_4 values (3, 'Tanish', 'BCom', 'Marketing', 2);
insert into table_4 values (4, 'Simran', 'BCom', 'Biology', 84);
insert into table_4 values (5, 'Rohan', 'BA', 'Computer', 60);
insert into table_4 values (6, 'Meera', 'BBA', 'Marketing', 38);
insert into table_4 values (7, 'Rohan', 'BSc CS', 'Computer', 45);
insert into table_4 values (8, 'Dev', 'BMS', 'History', 47);
insert into table_4 values (9, 'Aarav', 'BSc CS', 'Accounts', 57);
insert into table_4 values (10, 'Isha', 'BA', 'History', 96);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Kabir', 'BCom', 'Marketing', 58);
insert into table_5 values (2, 'Rohan', 'BSc IT', 'Biology', 47);
insert into table_5 values (3, 'Riya', 'BSc CS', 'English', 39);
insert into table_5 values (4, 'Riya', 'BA', 'Marketing', 8);
insert into table_5 values (5, 'Simran', 'BSc IT', 'Physics', 60);
insert into table_5 values (6, 'Riya', 'BMS', 'Physics', 79);
insert into table_5 values (7, 'Aanya', 'BCom', 'Marketing', 25);
insert into table_5 values (8, 'Simran', 'BA', 'Maths', 4);
insert into table_5 values (9, 'Meera', 'BBA', 'Marketing', 44);
insert into table_5 values (10, 'Aanya', 'BMS', 'Biology', 76);

select * from table_5;
drop table table_5;

-- Create Database database_21
create database database_21;
use database_21;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Aarav', 'BSc IT', 'Physics', 13);
insert into table_1 values (2, 'Aanya', 'BCom', 'Computer', 42);
insert into table_1 values (3, 'Kabir', 'BA', 'Biology', 14);
insert into table_1 values (4, 'Aarav', 'BMS', 'Biology', 89);
insert into table_1 values (5, 'Simran', 'BMS', 'Accounts', 31);
insert into table_1 values (6, 'Rohan', 'BSc IT', 'Marketing', 6);
insert into table_1 values (7, 'Simran', 'BBA', 'Maths', 30);
insert into table_1 values (8, 'Meera', 'BSc IT', 'Accounts', 13);
insert into table_1 values (9, 'Aarav', 'BSc CS', 'History', 56);
insert into table_1 values (10, 'Rohan', 'BSc IT', 'Computer', 23);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Tanish', 'BSc CS', 'Computer', 1);
insert into table_2 values (2, 'Meera', 'BMS', 'Computer', 12);
insert into table_2 values (3, 'Simran', 'BBA', 'Maths', 64);
insert into table_2 values (4, 'Meera', 'BBA', 'Accounts', 66);
insert into table_2 values (5, 'Isha', 'BCom', 'Accounts', 79);
insert into table_2 values (6, 'Tanish', 'BBA', 'English', 74);
insert into table_2 values (7, 'Meera', 'BA', 'English', 18);
insert into table_2 values (8, 'Tanish', 'BSc CS', 'History', 85);
insert into table_2 values (9, 'Riya', 'BBA', 'Maths', 23);
insert into table_2 values (10, 'Aarav', 'BSc IT', 'Maths', 23);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Simran', 'BSc CS', 'Physics', 66);
insert into table_3 values (2, 'Isha', 'BMS', 'Physics', 82);
insert into table_3 values (3, 'Tanish', 'BSc CS', 'Computer', 14);
insert into table_3 values (4, 'Riya', 'BCom', 'Computer', 83);
insert into table_3 values (5, 'Isha', 'BSc IT', 'Maths', 94);
insert into table_3 values (6, 'Simran', 'BMS', 'Computer', 27);
insert into table_3 values (7, 'Aanya', 'BSc IT', 'Accounts', 93);
insert into table_3 values (8, 'Aanya', 'BA', 'History', 24);
insert into table_3 values (9, 'Simran', 'BBA', 'Marketing', 64);
insert into table_3 values (10, 'Riya', 'BSc CS', 'History', 74);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Rohan', 'BCom', 'Maths', 79);
insert into table_4 values (2, 'Rohan', 'BBA', 'Computer', 25);
insert into table_4 values (3, 'Rohan', 'BSc CS', 'English', 36);
insert into table_4 values (4, 'Simran', 'BCom', 'Physics', 6);
insert into table_4 values (5, 'Meera', 'BA', 'English', 100);
insert into table_4 values (6, 'Aarav', 'BBA', 'Physics', 48);
insert into table_4 values (7, 'Tanish', 'BCom', 'Physics', 8);
insert into table_4 values (8, 'Dev', 'BSc IT', 'Physics', 25);
insert into table_4 values (9, 'Dev', 'BCom', 'Physics', 84);
insert into table_4 values (10, 'Simran', 'BCom', 'Accounts', 73);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Aanya', 'BSc IT', 'Accounts', 91);
insert into table_5 values (2, 'Riya', 'BA', 'Marketing', 31);
insert into table_5 values (3, 'Tanish', 'BSc IT', 'Accounts', 16);
insert into table_5 values (4, 'Tanish', 'BBA', 'History', 27);
insert into table_5 values (5, 'Aarav', 'BA', 'Biology', 79);
insert into table_5 values (6, 'Simran', 'BCom', 'Computer', 22);
insert into table_5 values (7, 'Tanish', 'BCom', 'Maths', 64);
insert into table_5 values (8, 'Aarav', 'BSc CS', 'Accounts', 14);
insert into table_5 values (9, 'Aarav', 'BMS', 'Biology', 34);
insert into table_5 values (10, 'Aarav', 'BA', 'Computer', 60);

select * from table_5;
drop table table_5;

-- Create Database database_22
create database database_22;
use database_22;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Tanish', 'BMS', 'History', 16);
insert into table_1 values (2, 'Riya', 'BBA', 'History', 91);
insert into table_1 values (3, 'Simran', 'BA', 'Maths', 16);
insert into table_1 values (4, 'Aanya', 'BA', 'Physics', 30);
insert into table_1 values (5, 'Tanish', 'BA', 'Physics', 94);
insert into table_1 values (6, 'Aarav', 'BCom', 'History', 98);
insert into table_1 values (7, 'Dev', 'BBA', 'Accounts', 73);
insert into table_1 values (8, 'Kabir', 'BBA', 'Accounts', 78);
insert into table_1 values (9, 'Aanya', 'BMS', 'History', 23);
insert into table_1 values (10, 'Riya', 'BBA', 'Accounts', 73);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Meera', 'BCom', 'History', 48);
insert into table_2 values (2, 'Aanya', 'BSc CS', 'Marketing', 92);
insert into table_2 values (3, 'Aanya', 'BMS', 'History', 67);
insert into table_2 values (4, 'Meera', 'BA', 'History', 65);
insert into table_2 values (5, 'Simran', 'BBA', 'Marketing', 7);
insert into table_2 values (6, 'Aanya', 'BSc CS', 'Biology', 50);
insert into table_2 values (7, 'Simran', 'BCom', 'Maths', 47);
insert into table_2 values (8, 'Dev', 'BSc CS', 'Maths', 4);
insert into table_2 values (9, 'Tanish', 'BMS', 'Maths', 35);
insert into table_2 values (10, 'Isha', 'BSc IT', 'Accounts', 31);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Aarav', 'BSc CS', 'Biology', 93);
insert into table_3 values (2, 'Meera', 'BA', 'Physics', 14);
insert into table_3 values (3, 'Aarav', 'BA', 'Accounts', 34);
insert into table_3 values (4, 'Simran', 'BMS', 'Physics', 99);
insert into table_3 values (5, 'Aanya', 'BCom', 'History', 38);
insert into table_3 values (6, 'Isha', 'BSc CS', 'Maths', 70);
insert into table_3 values (7, 'Tanish', 'BA', 'Maths', 75);
insert into table_3 values (8, 'Tanish', 'BA', 'Marketing', 78);
insert into table_3 values (9, 'Dev', 'BBA', 'History', 3);
insert into table_3 values (10, 'Riya', 'BCom', 'Computer', 85);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Meera', 'BCom', 'History', 14);
insert into table_4 values (2, 'Meera', 'BMS', 'Biology', 3);
insert into table_4 values (3, 'Meera', 'BCom', 'Accounts', 38);
insert into table_4 values (4, 'Tanish', 'BA', 'Accounts', 69);
insert into table_4 values (5, 'Aanya', 'BSc IT', 'Computer', 11);
insert into table_4 values (6, 'Simran', 'BSc CS', 'Biology', 70);
insert into table_4 values (7, 'Rohan', 'BSc CS', 'Accounts', 98);
insert into table_4 values (8, 'Aarav', 'BBA', 'Biology', 34);
insert into table_4 values (9, 'Aanya', 'BBA', 'Computer', 94);
insert into table_4 values (10, 'Rohan', 'BBA', 'History', 80);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Isha', 'BSc IT', 'Biology', 34);
insert into table_5 values (2, 'Simran', 'BSc IT', 'History', 60);
insert into table_5 values (3, 'Simran', 'BSc CS', 'History', 35);
insert into table_5 values (4, 'Meera', 'BBA', 'Biology', 44);
insert into table_5 values (5, 'Tanish', 'BBA', 'History', 61);
insert into table_5 values (6, 'Aarav', 'BSc IT', 'History', 84);
insert into table_5 values (7, 'Meera', 'BA', 'History', 39);
insert into table_5 values (8, 'Dev', 'BBA', 'Maths', 24);
insert into table_5 values (9, 'Aarav', 'BMS', 'Maths', 95);
insert into table_5 values (10, 'Aanya', 'BSc IT', 'Biology', 88);

select * from table_5;
drop table table_5;

-- Create Database database_23
create database database_23;
use database_23;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Riya', 'BA', 'Physics', 100);
insert into table_1 values (2, 'Riya', 'BSc CS', 'Computer', 12);
insert into table_1 values (3, 'Simran', 'BBA', 'Physics', 6);
insert into table_1 values (4, 'Tanish', 'BSc IT', 'Physics', 77);
insert into table_1 values (5, 'Kabir', 'BSc IT', 'Biology', 72);
insert into table_1 values (6, 'Dev', 'BBA', 'Physics', 84);
insert into table_1 values (7, 'Aanya', 'BSc CS', 'Biology', 55);
insert into table_1 values (8, 'Simran', 'BA', 'Physics', 59);
insert into table_1 values (9, 'Rohan', 'BSc IT', 'Accounts', 94);
insert into table_1 values (10, 'Riya', 'BCom', 'Accounts', 71);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Riya', 'BBA', 'Biology', 80);
insert into table_2 values (2, 'Tanish', 'BMS', 'Biology', 96);
insert into table_2 values (3, 'Aanya', 'BA', 'Biology', 72);
insert into table_2 values (4, 'Riya', 'BSc CS', 'Maths', 63);
insert into table_2 values (5, 'Kabir', 'BCom', 'Accounts', 82);
insert into table_2 values (6, 'Riya', 'BSc CS', 'Physics', 24);
insert into table_2 values (7, 'Riya', 'BMS', 'Marketing', 22);
insert into table_2 values (8, 'Aarav', 'BA', 'Physics', 13);
insert into table_2 values (9, 'Aanya', 'BMS', 'Physics', 25);
insert into table_2 values (10, 'Aarav', 'BA', 'English', 2);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Aarav', 'BSc CS', 'English', 89);
insert into table_3 values (2, 'Meera', 'BCom', 'History', 50);
insert into table_3 values (3, 'Rohan', 'BSc CS', 'Maths', 43);
insert into table_3 values (4, 'Aarav', 'BSc CS', 'History', 22);
insert into table_3 values (5, 'Riya', 'BBA', 'Marketing', 54);
insert into table_3 values (6, 'Aarav', 'BBA', 'Marketing', 94);
insert into table_3 values (7, 'Kabir', 'BSc CS', 'Physics', 79);
insert into table_3 values (8, 'Aarav', 'BMS', 'History', 17);
insert into table_3 values (9, 'Dev', 'BSc IT', 'Computer', 91);
insert into table_3 values (10, 'Aarav', 'BSc IT', 'Accounts', 92);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Kabir', 'BCom', 'Marketing', 62);
insert into table_4 values (2, 'Meera', 'BA', 'Physics', 99);
insert into table_4 values (3, 'Dev', 'BMS', 'Accounts', 65);
insert into table_4 values (4, 'Meera', 'BCom', 'Accounts', 94);
insert into table_4 values (5, 'Rohan', 'BA', 'Maths', 72);
insert into table_4 values (6, 'Meera', 'BCom', 'Accounts', 70);
insert into table_4 values (7, 'Tanish', 'BMS', 'Biology', 20);
insert into table_4 values (8, 'Aanya', 'BBA', 'History', 9);
insert into table_4 values (9, 'Isha', 'BCom', 'Marketing', 4);
insert into table_4 values (10, 'Simran', 'BSc IT', 'Accounts', 66);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Rohan', 'BSc IT', 'History', 99);
insert into table_5 values (2, 'Aanya', 'BBA', 'Maths', 98);
insert into table_5 values (3, 'Dev', 'BCom', 'Biology', 8);
insert into table_5 values (4, 'Meera', 'BMS', 'English', 43);
insert into table_5 values (5, 'Meera', 'BSc CS', 'Computer', 83);
insert into table_5 values (6, 'Isha', 'BMS', 'Physics', 85);
insert into table_5 values (7, 'Rohan', 'BMS', 'Maths', 47);
insert into table_5 values (8, 'Isha', 'BSc CS', 'Biology', 77);
insert into table_5 values (9, 'Aarav', 'BA', 'Accounts', 55);
insert into table_5 values (10, 'Aanya', 'BBA', 'Maths', 12);

select * from table_5;
drop table table_5;

-- Create Database database_24
create database database_24;
use database_24;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Riya', 'BA', 'English', 48);
insert into table_1 values (2, 'Isha', 'BA', 'History', 4);
insert into table_1 values (3, 'Tanish', 'BCom', 'Biology', 43);
insert into table_1 values (4, 'Kabir', 'BSc CS', 'Accounts', 27);
insert into table_1 values (5, 'Dev', 'BCom', 'Marketing', 51);
insert into table_1 values (6, 'Rohan', 'BSc CS', 'Accounts', 49);
insert into table_1 values (7, 'Aanya', 'BSc CS', 'English', 60);
insert into table_1 values (8, 'Kabir', 'BCom', 'Computer', 55);
insert into table_1 values (9, 'Riya', 'BSc CS', 'Maths', 56);
insert into table_1 values (10, 'Simran', 'BCom', 'Physics', 44);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Tanish', 'BA', 'Physics', 15);
insert into table_2 values (2, 'Tanish', 'BCom', 'Marketing', 16);
insert into table_2 values (3, 'Rohan', 'BMS', 'Biology', 28);
insert into table_2 values (4, 'Simran', 'BSc IT', 'History', 28);
insert into table_2 values (5, 'Isha', 'BSc CS', 'Marketing', 92);
insert into table_2 values (6, 'Kabir', 'BCom', 'Physics', 13);
insert into table_2 values (7, 'Aanya', 'BMS', 'Biology', 56);
insert into table_2 values (8, 'Simran', 'BBA', 'Maths', 53);
insert into table_2 values (9, 'Aarav', 'BA', 'Marketing', 52);
insert into table_2 values (10, 'Rohan', 'BMS', 'English', 61);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Tanish', 'BSc IT', 'Physics', 13);
insert into table_3 values (2, 'Aanya', 'BA', 'English', 97);
insert into table_3 values (3, 'Tanish', 'BA', 'Maths', 89);
insert into table_3 values (4, 'Aanya', 'BSc CS', 'Maths', 59);
insert into table_3 values (5, 'Meera', 'BCom', 'Biology', 45);
insert into table_3 values (6, 'Aarav', 'BMS', 'Computer', 62);
insert into table_3 values (7, 'Aanya', 'BSc IT', 'History', 17);
insert into table_3 values (8, 'Isha', 'BSc IT', 'Computer', 3);
insert into table_3 values (9, 'Dev', 'BCom', 'Marketing', 57);
insert into table_3 values (10, 'Aanya', 'BMS', 'History', 21);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Aanya', 'BMS', 'Physics', 40);
insert into table_4 values (2, 'Isha', 'BA', 'History', 55);
insert into table_4 values (3, 'Aanya', 'BBA', 'Biology', 39);
insert into table_4 values (4, 'Simran', 'BMS', 'Computer', 35);
insert into table_4 values (5, 'Simran', 'BA', 'Marketing', 40);
insert into table_4 values (6, 'Aanya', 'BCom', 'Computer', 43);
insert into table_4 values (7, 'Aanya', 'BSc CS', 'Marketing', 45);
insert into table_4 values (8, 'Aarav', 'BBA', 'Accounts', 50);
insert into table_4 values (9, 'Aanya', 'BA', 'History', 76);
insert into table_4 values (10, 'Isha', 'BA', 'Computer', 87);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Isha', 'BA', 'Maths', 17);
insert into table_5 values (2, 'Riya', 'BA', 'Accounts', 58);
insert into table_5 values (3, 'Isha', 'BCom', 'Computer', 31);
insert into table_5 values (4, 'Kabir', 'BBA', 'History', 60);
insert into table_5 values (5, 'Aanya', 'BSc CS', 'Biology', 44);
insert into table_5 values (6, 'Aarav', 'BCom', 'Biology', 40);
insert into table_5 values (7, 'Meera', 'BBA', 'Physics', 81);
insert into table_5 values (8, 'Tanish', 'BA', 'Physics', 41);
insert into table_5 values (9, 'Aanya', 'BA', 'Accounts', 54);
insert into table_5 values (10, 'Dev', 'BMS', 'Physics', 67);

select * from table_5;
drop table table_5;

-- Create Database database_25
create database database_25;
use database_25;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Tanish', 'BSc CS', 'Computer', 37);
insert into table_1 values (2, 'Riya', 'BCom', 'Computer', 81);
insert into table_1 values (3, 'Aarav', 'BA', 'Physics', 69);
insert into table_1 values (4, 'Aarav', 'BCom', 'Maths', 32);
insert into table_1 values (5, 'Isha', 'BCom', 'English', 89);
insert into table_1 values (6, 'Rohan', 'BA', 'English', 49);
insert into table_1 values (7, 'Riya', 'BMS', 'Marketing', 93);
insert into table_1 values (8, 'Dev', 'BSc IT', 'Physics', 5);
insert into table_1 values (9, 'Meera', 'BSc IT', 'Biology', 23);
insert into table_1 values (10, 'Kabir', 'BBA', 'Marketing', 1);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Rohan', 'BCom', 'Biology', 35);
insert into table_2 values (2, 'Rohan', 'BSc CS', 'Physics', 89);
insert into table_2 values (3, 'Rohan', 'BSc IT', 'Physics', 51);
insert into table_2 values (4, 'Rohan', 'BCom', 'Maths', 77);
insert into table_2 values (5, 'Aarav', 'BMS', 'Accounts', 36);
insert into table_2 values (6, 'Riya', 'BA', 'Accounts', 74);
insert into table_2 values (7, 'Meera', 'BSc CS', 'Computer', 54);
insert into table_2 values (8, 'Meera', 'BA', 'English', 3);
insert into table_2 values (9, 'Aarav', 'BMS', 'Physics', 93);
insert into table_2 values (10, 'Meera', 'BSc IT', 'Maths', 59);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Tanish', 'BSc CS', 'English', 16);
insert into table_3 values (2, 'Kabir', 'BA', 'Physics', 83);
insert into table_3 values (3, 'Aanya', 'BSc IT', 'History', 52);
insert into table_3 values (4, 'Aarav', 'BSc IT', 'Computer', 5);
insert into table_3 values (5, 'Meera', 'BSc CS', 'Physics', 49);
insert into table_3 values (6, 'Riya', 'BBA', 'Physics', 23);
insert into table_3 values (7, 'Dev', 'BMS', 'Accounts', 35);
insert into table_3 values (8, 'Simran', 'BSc IT', 'English', 92);
insert into table_3 values (9, 'Meera', 'BSc IT', 'Accounts', 96);
insert into table_3 values (10, 'Isha', 'BA', 'English', 4);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Meera', 'BA', 'Physics', 37);
insert into table_4 values (2, 'Isha', 'BMS', 'English', 99);
insert into table_4 values (3, 'Rohan', 'BMS', 'English', 11);
insert into table_4 values (4, 'Isha', 'BSc IT', 'Accounts', 52);
insert into table_4 values (5, 'Riya', 'BSc IT', 'Computer', 4);
insert into table_4 values (6, 'Rohan', 'BBA', 'Physics', 73);
insert into table_4 values (7, 'Tanish', 'BMS', 'English', 76);
insert into table_4 values (8, 'Rohan', 'BCom', 'Marketing', 99);
insert into table_4 values (9, 'Kabir', 'BSc IT', 'Accounts', 36);
insert into table_4 values (10, 'Simran', 'BSc CS', 'Marketing', 26);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Rohan', 'BBA', 'Accounts', 94);
insert into table_5 values (2, 'Riya', 'BSc IT', 'Accounts', 4);
insert into table_5 values (3, 'Simran', 'BSc IT', 'Computer', 87);
insert into table_5 values (4, 'Aarav', 'BMS', 'Physics', 44);
insert into table_5 values (5, 'Dev', 'BSc IT', 'Accounts', 69);
insert into table_5 values (6, 'Simran', 'BSc IT', 'Physics', 85);
insert into table_5 values (7, 'Kabir', 'BBA', 'History', 82);
insert into table_5 values (8, 'Meera', 'BBA', 'Computer', 9);
insert into table_5 values (9, 'Dev', 'BA', 'History', 83);
insert into table_5 values (10, 'Rohan', 'BMS', 'History', 19);

select * from table_5;
drop table table_5;

-- Create Database database_26
create database database_26;
use database_26;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Isha', 'BSc IT', 'Biology', 31);
insert into table_1 values (2, 'Riya', 'BBA', 'Computer', 54);
insert into table_1 values (3, 'Rohan', 'BSc CS', 'Maths', 1);
insert into table_1 values (4, 'Kabir', 'BSc CS', 'Computer', 33);
insert into table_1 values (5, 'Dev', 'BA', 'History', 77);
insert into table_1 values (6, 'Riya', 'BCom', 'English', 93);
insert into table_1 values (7, 'Aarav', 'BSc CS', 'Maths', 49);
insert into table_1 values (8, 'Isha', 'BBA', 'Accounts', 74);
insert into table_1 values (9, 'Meera', 'BBA', 'English', 94);
insert into table_1 values (10, 'Isha', 'BBA', 'Physics', 24);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Tanish', 'BSc CS', 'Accounts', 67);
insert into table_2 values (2, 'Meera', 'BBA', 'Computer', 24);
insert into table_2 values (3, 'Aanya', 'BA', 'Computer', 17);
insert into table_2 values (4, 'Kabir', 'BMS', 'History', 40);
insert into table_2 values (5, 'Simran', 'BSc IT', 'Biology', 40);
insert into table_2 values (6, 'Riya', 'BBA', 'English', 54);
insert into table_2 values (7, 'Meera', 'BSc CS', 'Biology', 51);
insert into table_2 values (8, 'Riya', 'BBA', 'Maths', 41);
insert into table_2 values (9, 'Meera', 'BSc IT', 'Biology', 78);
insert into table_2 values (10, 'Simran', 'BSc IT', 'Biology', 6);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Isha', 'BA', 'Biology', 85);
insert into table_3 values (2, 'Meera', 'BCom', 'Marketing', 65);
insert into table_3 values (3, 'Tanish', 'BSc CS', 'History', 17);
insert into table_3 values (4, 'Simran', 'BSc CS', 'Accounts', 99);
insert into table_3 values (5, 'Aanya', 'BMS', 'English', 1);
insert into table_3 values (6, 'Aarav', 'BA', 'Marketing', 4);
insert into table_3 values (7, 'Dev', 'BCom', 'Biology', 70);
insert into table_3 values (8, 'Meera', 'BMS', 'English', 75);
insert into table_3 values (9, 'Rohan', 'BSc IT', 'English', 55);
insert into table_3 values (10, 'Tanish', 'BMS', 'Maths', 69);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Isha', 'BMS', 'Physics', 45);
insert into table_4 values (2, 'Meera', 'BA', 'Marketing', 18);
insert into table_4 values (3, 'Simran', 'BMS', 'Computer', 44);
insert into table_4 values (4, 'Aanya', 'BA', 'English', 49);
insert into table_4 values (5, 'Aanya', 'BSc IT', 'Biology', 17);
insert into table_4 values (6, 'Rohan', 'BMS', 'Biology', 45);
insert into table_4 values (7, 'Aarav', 'BA', 'Marketing', 13);
insert into table_4 values (8, 'Aanya', 'BA', 'History', 62);
insert into table_4 values (9, 'Meera', 'BBA', 'Biology', 71);
insert into table_4 values (10, 'Rohan', 'BA', 'Computer', 19);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Dev', 'BBA', 'Physics', 39);
insert into table_5 values (2, 'Simran', 'BSc IT', 'Biology', 54);
insert into table_5 values (3, 'Rohan', 'BSc CS', 'Computer', 7);
insert into table_5 values (4, 'Aanya', 'BBA', 'Accounts', 11);
insert into table_5 values (5, 'Meera', 'BMS', 'Physics', 62);
insert into table_5 values (6, 'Riya', 'BSc IT', 'Marketing', 79);
insert into table_5 values (7, 'Riya', 'BSc CS', 'Biology', 91);
insert into table_5 values (8, 'Dev', 'BSc CS', 'History', 15);
insert into table_5 values (9, 'Rohan', 'BSc CS', 'History', 77);
insert into table_5 values (10, 'Isha', 'BA', 'History', 13);

select * from table_5;
drop table table_5;

-- Create Database database_27
create database database_27;
use database_27;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Meera', 'BBA', 'Maths', 49);
insert into table_1 values (2, 'Kabir', 'BSc CS', 'History', 3);
insert into table_1 values (3, 'Aarav', 'BA', 'Computer', 37);
insert into table_1 values (4, 'Rohan', 'BBA', 'Marketing', 88);
insert into table_1 values (5, 'Simran', 'BCom', 'English', 39);
insert into table_1 values (6, 'Aarav', 'BA', 'English', 57);
insert into table_1 values (7, 'Aarav', 'BSc IT', 'Accounts', 78);
insert into table_1 values (8, 'Aarav', 'BCom', 'Computer', 41);
insert into table_1 values (9, 'Meera', 'BMS', 'Computer', 22);
insert into table_1 values (10, 'Tanish', 'BSc IT', 'Maths', 27);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Kabir', 'BCom', 'Accounts', 73);
insert into table_2 values (2, 'Aarav', 'BMS', 'Physics', 15);
insert into table_2 values (3, 'Riya', 'BBA', 'Maths', 72);
insert into table_2 values (4, 'Riya', 'BMS', 'Physics', 82);
insert into table_2 values (5, 'Meera', 'BCom', 'Biology', 18);
insert into table_2 values (6, 'Aarav', 'BCom', 'English', 32);
insert into table_2 values (7, 'Meera', 'BCom', 'History', 48);
insert into table_2 values (8, 'Dev', 'BA', 'Biology', 84);
insert into table_2 values (9, 'Aanya', 'BBA', 'Computer', 75);
insert into table_2 values (10, 'Isha', 'BBA', 'Physics', 9);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Meera', 'BA', 'English', 77);
insert into table_3 values (2, 'Aanya', 'BBA', 'Computer', 36);
insert into table_3 values (3, 'Tanish', 'BMS', 'Accounts', 42);
insert into table_3 values (4, 'Isha', 'BSc IT', 'Biology', 77);
insert into table_3 values (5, 'Isha', 'BSc IT', 'English', 1);
insert into table_3 values (6, 'Isha', 'BA', 'Accounts', 9);
insert into table_3 values (7, 'Dev', 'BSc IT', 'Biology', 86);
insert into table_3 values (8, 'Simran', 'BCom', 'Computer', 69);
insert into table_3 values (9, 'Dev', 'BA', 'Maths', 93);
insert into table_3 values (10, 'Kabir', 'BSc IT', 'Biology', 22);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Simran', 'BA', 'History', 34);
insert into table_4 values (2, 'Dev', 'BCom', 'Accounts', 63);
insert into table_4 values (3, 'Kabir', 'BBA', 'Maths', 28);
insert into table_4 values (4, 'Riya', 'BSc IT', 'Accounts', 88);
insert into table_4 values (5, 'Tanish', 'BSc CS', 'Marketing', 2);
insert into table_4 values (6, 'Simran', 'BSc CS', 'Marketing', 37);
insert into table_4 values (7, 'Dev', 'BSc CS', 'History', 13);
insert into table_4 values (8, 'Kabir', 'BA', 'Computer', 57);
insert into table_4 values (9, 'Simran', 'BSc IT', 'Marketing', 30);
insert into table_4 values (10, 'Meera', 'BMS', 'Computer', 6);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Simran', 'BMS', 'History', 100);
insert into table_5 values (2, 'Aarav', 'BSc IT', 'English', 67);
insert into table_5 values (3, 'Simran', 'BA', 'Physics', 50);
insert into table_5 values (4, 'Dev', 'BSc IT', 'English', 47);
insert into table_5 values (5, 'Simran', 'BSc IT', 'Biology', 65);
insert into table_5 values (6, 'Simran', 'BMS', 'Accounts', 40);
insert into table_5 values (7, 'Aarav', 'BSc CS', 'Computer', 33);
insert into table_5 values (8, 'Rohan', 'BSc IT', 'English', 47);
insert into table_5 values (9, 'Kabir', 'BMS', 'Marketing', 3);
insert into table_5 values (10, 'Riya', 'BMS', 'Marketing', 74);

select * from table_5;
drop table table_5;

-- Create Database database_28
create database database_28;
use database_28;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Riya', 'BSc IT', 'Physics', 49);
insert into table_1 values (2, 'Isha', 'BA', 'Maths', 23);
insert into table_1 values (3, 'Rohan', 'BBA', 'Computer', 49);
insert into table_1 values (4, 'Simran', 'BA', 'Computer', 53);
insert into table_1 values (5, 'Aanya', 'BSc IT', 'Physics', 21);
insert into table_1 values (6, 'Riya', 'BSc IT', 'Biology', 70);
insert into table_1 values (7, 'Kabir', 'BMS', 'Marketing', 77);
insert into table_1 values (8, 'Aarav', 'BSc IT', 'Marketing', 89);
insert into table_1 values (9, 'Tanish', 'BBA', 'Marketing', 78);
insert into table_1 values (10, 'Rohan', 'BA', 'Maths', 21);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Aanya', 'BSc IT', 'Accounts', 35);
insert into table_2 values (2, 'Rohan', 'BCom', 'Accounts', 19);
insert into table_2 values (3, 'Rohan', 'BMS', 'English', 25);
insert into table_2 values (4, 'Aanya', 'BMS', 'Physics', 75);
insert into table_2 values (5, 'Riya', 'BCom', 'Accounts', 94);
insert into table_2 values (6, 'Tanish', 'BBA', 'Maths', 28);
insert into table_2 values (7, 'Aanya', 'BSc CS', 'Biology', 23);
insert into table_2 values (8, 'Rohan', 'BA', 'History', 45);
insert into table_2 values (9, 'Riya', 'BA', 'English', 94);
insert into table_2 values (10, 'Tanish', 'BSc IT', 'Accounts', 68);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Simran', 'BMS', 'Computer', 50);
insert into table_3 values (2, 'Meera', 'BSc IT', 'Computer', 59);
insert into table_3 values (3, 'Dev', 'BA', 'Biology', 62);
insert into table_3 values (4, 'Dev', 'BSc CS', 'History', 91);
insert into table_3 values (5, 'Dev', 'BBA', 'Computer', 36);
insert into table_3 values (6, 'Aarav', 'BA', 'Biology', 49);
insert into table_3 values (7, 'Meera', 'BBA', 'Physics', 91);
insert into table_3 values (8, 'Rohan', 'BBA', 'English', 99);
insert into table_3 values (9, 'Aanya', 'BBA', 'English', 7);
insert into table_3 values (10, 'Isha', 'BBA', 'Physics', 94);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Isha', 'BA', 'English', 38);
insert into table_4 values (2, 'Riya', 'BCom', 'Marketing', 89);
insert into table_4 values (3, 'Simran', 'BSc CS', 'Accounts', 2);
insert into table_4 values (4, 'Aarav', 'BMS', 'Biology', 93);
insert into table_4 values (5, 'Tanish', 'BCom', 'Computer', 65);
insert into table_4 values (6, 'Isha', 'BSc IT', 'Marketing', 41);
insert into table_4 values (7, 'Isha', 'BCom', 'Biology', 96);
insert into table_4 values (8, 'Aanya', 'BA', 'Accounts', 20);
insert into table_4 values (9, 'Rohan', 'BSc CS', 'Accounts', 61);
insert into table_4 values (10, 'Isha', 'BBA', 'Accounts', 10);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Aarav', 'BBA', 'Computer', 85);
insert into table_5 values (2, 'Tanish', 'BMS', 'English', 83);
insert into table_5 values (3, 'Kabir', 'BMS', 'Biology', 44);
insert into table_5 values (4, 'Isha', 'BSc CS', 'English', 66);
insert into table_5 values (5, 'Aarav', 'BA', 'Computer', 14);
insert into table_5 values (6, 'Riya', 'BMS', 'History', 24);
insert into table_5 values (7, 'Isha', 'BBA', 'Accounts', 5);
insert into table_5 values (8, 'Riya', 'BCom', 'Accounts', 76);
insert into table_5 values (9, 'Riya', 'BCom', 'Accounts', 99);
insert into table_5 values (10, 'Riya', 'BA', 'Accounts', 53);

select * from table_5;
drop table table_5;

-- Create Database database_29
create database database_29;
use database_29;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Simran', 'BCom', 'Marketing', 7);
insert into table_1 values (2, 'Kabir', 'BSc CS', 'History', 77);
insert into table_1 values (3, 'Riya', 'BCom', 'Marketing', 33);
insert into table_1 values (4, 'Kabir', 'BSc IT', 'Biology', 31);
insert into table_1 values (5, 'Tanish', 'BSc IT', 'Marketing', 71);
insert into table_1 values (6, 'Simran', 'BCom', 'Marketing', 97);
insert into table_1 values (7, 'Dev', 'BBA', 'Biology', 37);
insert into table_1 values (8, 'Aanya', 'BBA', 'Physics', 64);
insert into table_1 values (9, 'Isha', 'BCom', 'Computer', 43);
insert into table_1 values (10, 'Isha', 'BCom', 'Computer', 38);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Rohan', 'BMS', 'History', 9);
insert into table_2 values (2, 'Simran', 'BA', 'History', 33);
insert into table_2 values (3, 'Meera', 'BMS', 'Accounts', 23);
insert into table_2 values (4, 'Aarav', 'BBA', 'Marketing', 61);
insert into table_2 values (5, 'Kabir', 'BSc CS', 'Physics', 100);
insert into table_2 values (6, 'Riya', 'BCom', 'Biology', 71);
insert into table_2 values (7, 'Riya', 'BSc IT', 'Computer', 10);
insert into table_2 values (8, 'Aanya', 'BBA', 'English', 48);
insert into table_2 values (9, 'Meera', 'BA', 'Biology', 41);
insert into table_2 values (10, 'Meera', 'BBA', 'History', 6);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Meera', 'BSc IT', 'Computer', 45);
insert into table_3 values (2, 'Rohan', 'BSc CS', 'Maths', 76);
insert into table_3 values (3, 'Dev', 'BBA', 'English', 51);
insert into table_3 values (4, 'Dev', 'BSc CS', 'Computer', 53);
insert into table_3 values (5, 'Rohan', 'BSc IT', 'History', 59);
insert into table_3 values (6, 'Isha', 'BBA', 'English', 36);
insert into table_3 values (7, 'Isha', 'BBA', 'History', 31);
insert into table_3 values (8, 'Tanish', 'BBA', 'Computer', 89);
insert into table_3 values (9, 'Kabir', 'BMS', 'Biology', 89);
insert into table_3 values (10, 'Aanya', 'BA', 'Accounts', 44);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Simran', 'BMS', 'Computer', 72);
insert into table_4 values (2, 'Kabir', 'BBA', 'English', 89);
insert into table_4 values (3, 'Rohan', 'BBA', 'Biology', 37);
insert into table_4 values (4, 'Tanish', 'BMS', 'History', 4);
insert into table_4 values (5, 'Kabir', 'BCom', 'Computer', 71);
insert into table_4 values (6, 'Simran', 'BSc CS', 'Computer', 78);
insert into table_4 values (7, 'Aarav', 'BBA', 'History', 77);
insert into table_4 values (8, 'Rohan', 'BSc IT', 'Biology', 85);
insert into table_4 values (9, 'Kabir', 'BCom', 'English', 65);
insert into table_4 values (10, 'Dev', 'BMS', 'Accounts', 21);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Aarav', 'BMS', 'Physics', 96);
insert into table_5 values (2, 'Dev', 'BMS', 'Maths', 7);
insert into table_5 values (3, 'Aanya', 'BCom', 'Marketing', 18);
insert into table_5 values (4, 'Rohan', 'BBA', 'Physics', 18);
insert into table_5 values (5, 'Meera', 'BMS', 'English', 70);
insert into table_5 values (6, 'Tanish', 'BSc IT', 'Accounts', 76);
insert into table_5 values (7, 'Kabir', 'BCom', 'Computer', 74);
insert into table_5 values (8, 'Meera', 'BA', 'Marketing', 74);
insert into table_5 values (9, 'Tanish', 'BSc IT', 'Maths', 29);
insert into table_5 values (10, 'Aarav', 'BCom', 'Biology', 39);

select * from table_5;
drop table table_5;

-- Create Database database_30
create database database_30;
use database_30;

-- Table table_1
create table table_1 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_1 values (1, 'Riya', 'BSc IT', 'Physics', 46);
insert into table_1 values (2, 'Tanish', 'BMS', 'Marketing', 91);
insert into table_1 values (3, 'Simran', 'BA', 'Marketing', 72);
insert into table_1 values (4, 'Isha', 'BSc IT', 'History', 7);
insert into table_1 values (5, 'Rohan', 'BSc CS', 'Marketing', 10);
insert into table_1 values (6, 'Isha', 'BCom', 'Marketing', 82);
insert into table_1 values (7, 'Dev', 'BCom', 'Computer', 52);
insert into table_1 values (8, 'Isha', 'BA', 'History', 31);
insert into table_1 values (9, 'Dev', 'BA', 'Biology', 67);
insert into table_1 values (10, 'Aanya', 'BA', 'Accounts', 12);

select * from table_1;
drop table table_1;

-- Table table_2
create table table_2 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_2 values (1, 'Kabir', 'BSc IT', 'English', 10);
insert into table_2 values (2, 'Simran', 'BCom', 'History', 90);
insert into table_2 values (3, 'Aanya', 'BCom', 'English', 87);
insert into table_2 values (4, 'Aarav', 'BCom', 'Computer', 37);
insert into table_2 values (5, 'Kabir', 'BCom', 'Maths', 94);
insert into table_2 values (6, 'Kabir', 'BMS', 'English', 43);
insert into table_2 values (7, 'Aarav', 'BCom', 'Computer', 99);
insert into table_2 values (8, 'Isha', 'BA', 'Biology', 31);
insert into table_2 values (9, 'Dev', 'BCom', 'History', 80);
insert into table_2 values (10, 'Meera', 'BA', 'Marketing', 87);

select * from table_2;
drop table table_2;

-- Table table_3
create table table_3 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_3 values (1, 'Kabir', 'BMS', 'Physics', 48);
insert into table_3 values (2, 'Simran', 'BMS', 'Maths', 50);
insert into table_3 values (3, 'Meera', 'BSc IT', 'Marketing', 29);
insert into table_3 values (4, 'Kabir', 'BA', 'English', 18);
insert into table_3 values (5, 'Dev', 'BA', 'History', 97);
insert into table_3 values (6, 'Aanya', 'BCom', 'History', 2);
insert into table_3 values (7, 'Tanish', 'BSc CS', 'Maths', 12);
insert into table_3 values (8, 'Rohan', 'BCom', 'Physics', 86);
insert into table_3 values (9, 'Aanya', 'BBA', 'Accounts', 14);
insert into table_3 values (10, 'Aanya', 'BA', 'Marketing', 33);

select * from table_3;
drop table table_3;

-- Table table_4
create table table_4 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_4 values (1, 'Tanish', 'BBA', 'Physics', 74);
insert into table_4 values (2, 'Tanish', 'BSc CS', 'Accounts', 83);
insert into table_4 values (3, 'Isha', 'BSc CS', 'Computer', 26);
insert into table_4 values (4, 'Dev', 'BSc CS', 'History', 65);
insert into table_4 values (5, 'Meera', 'BCom', 'Maths', 13);
insert into table_4 values (6, 'Isha', 'BBA', 'Marketing', 21);
insert into table_4 values (7, 'Riya', 'BSc IT', 'Accounts', 10);
insert into table_4 values (8, 'Riya', 'BA', 'Marketing', 26);
insert into table_4 values (9, 'Aanya', 'BBA', 'Biology', 51);
insert into table_4 values (10, 'Dev', 'BA', 'Marketing', 31);

select * from table_4;
drop table table_4;

-- Table table_5
create table table_5 (
    id INT,
    col1 VARCHAR(50),
    col2 VARCHAR(50),
    col3 VARCHAR(50),
    col4 INT
);

insert into table_5 values (1, 'Rohan', 'BBA', 'Maths', 82);
insert into table_5 values (2, 'Dev', 'BCom', 'Biology', 81);
insert into table_5 values (3, 'Dev', 'BSc CS', 'Marketing', 79);
insert into table_5 values (4, 'Dev', 'BBA', 'Physics', 51);
insert into table_5 values (5, 'Aanya', 'BMS', 'Biology', 20);
insert into table_5 values (6, 'Dev', 'BA', 'English', 98);
insert into table_5 values (7, 'Dev', 'BMS', 'Accounts', 82);
insert into table_5 values (8, 'Aarav', 'BSc CS', 'English', 82);
insert into table_5 values (9, 'Riya', 'BSc CS', 'Maths', 3);
insert into table_5 values (10, 'Meera', 'BA', 'Biology', 36);

select * from table_5;
drop table table_5;

