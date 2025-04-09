-- single line comments

/*
multiline 
comments
*/

## this is also used to write single line comments

/*
usage of comments

1.documentation: comments can be used to document the purpose of a SQL query or the logic
behind complex operations.
2.debugging: you can temporarily diasable parts of your sql code by commenting them out,
which is useful for debugging.
3. colleboration when working in teams, comments help communicate the intent and 
functionality of the code to other developers.
*/

-- create a school database
create database SIES;

-- to work on this database we need to use it (to execute press ctrl and enter)
use SIES;

-- table 1 students
create table students(
studentID int primary key, -- primary key = unique + not null
name varchar(100),
age int,
gender char(1),
email varchar(100));

insert into students(studentID,name,age,gender,email) values
(1,'atharva',20,'M','atharvamayekar@gmail.com'),
(2,'vivek',21,'M','vivek@gmail.com'),
(3,'prem',21,'M','prem@gmail.com'),
(4,'priya',20,'F','priya@gmail.com'),
(5,'prasad',20,'M','prasd@gmail.com');
select *from students;
truncate table students;
drop table students;




create table teachers(teacherID int primary key,
name varchar(100) not null,
subject varchar(100) not null,
experience varchar(100) not null,
email varchar(100) not null unique
);

insert into teachers(teacherID,name,subject,experience,email) values
(1,'Shalini mam','SQL','10 years','shalini@gmail.com'),
(2,'Rohit sir','Advenced Excel','5 years','rohit@gmail.com'),
(3,'Rupali mam','DSA','3 years','rupali@gmail.com'),
(4,'Saish sir','communication','10 years','siash@gmail.com'),
(5,'Shalini mam','SQL','10 years','shalinimam@gmail.com');
select *from teachers; 

truncate table teachers;

drop table teachers;

-- table 3 classes
create table classes(classID int primary key,
className varchar(10),
section char(1),
totalstudents int,
teacherID int,
foreign key (teacherID) references teachers(teacherID)
);

insert into classes(classID,className,section,totalstudents,teacherID) values
(1,'10th','A',30,1),
(2,'9th','B',25,2),
(3,'11th','C',20,3),
(4,'8th','A',28,4),
(5,'12th','B',22,5);
select *from classes; 
truncate table classes;
drop table classes;

-- table 4 subjects
create table subjects(
subjectID int primary key,
subjectName varchar(50),
credits int,
classID int,
foreign key (classID) references classes(classID)
);

insert into subjects(subjectID,subjectName,credits,classID)values
(1,'mathematics',4,1),
(2,'science',4,2),
(3,'english',3,3),
(4,'history',3,4),
(5,'geography',3,5);
select *from subjects;
truncate table subjects;
drop table subjects;


-- table 5 exams

create table exams(
examID int primary key,
examName varchar(50),
date date,
totalMarks int,
classID int,
foreign key (classID) references classes(classID)
);

insert into exams(examID,examName,date,totalMarks,classID)values
(1,'mid term exam','2023-10-15',100,1), 
(2,'final exam','2023-10-15',100,2), 
(3,'unit exam','2023-11-10',50,3), 
(4,'quaterly exam','2023-10-25',75,4), 
(5,'annual exam','2024-03-15',100,5); 
select *from exams;
truncate table exams;
drop table exams;


-- table 6 attendence
create table attendence(
attendenceID int primary key,
studentID int,
classID int,
date date,
status ENUM('present','absent'),
foreign key(studentID) references students(studentID),
foreign key(classID) references classes(classID)
);

insert into attendence(attendenceID,studentID,classID,date,status)values
(1,1,1,'2023-10-01','present'),
(2,2,2,'2023-10-01','absent'),
(3,3,3,'2023-10-01','present'),
(4,4,4,'2023-10-01','present'),
(5,5,5,'2023-10-01','absent');
select *from attendence;
truncate table attendence;
drop table attendence;


-- table 7 grades
create table grades(
gradeID int primary key,
studentID int,
subjectsID int,
marks int,
foreign key (studentID) references students(studentID),
foreign key (subjectsID) references subjects(subjectID)
);

insert into grades(gradeID,studentID,subjectsID,marks)values
(1,1,1,85),
(2,2,2,78),
(3,3,3,90),
(4,4,4,88),
(5,5,5,92);
select *from grades; 
truncate table grades;
drop table grades;


-- table 8 library

create table library(
bookID int primary key,
title varchar(100),
author varchar(100),
ISBN varchar(20),
availableCopies int
);

insert into library(bookID,title,author,ISBN,availableCopies)values
(1,'the alchemist','paulo coelho','978-0061122415',5),
(2,'to kill a mockingbird','harper lee','978-0061122484',3),
(3,'1984','george orwell','978-0061122935',4),
(4,'pride and prejudice','jane austen','978-0061122563',2),
(5,'the great gatsby','scott fitzgerald','978-0061122565',6);
select *from library; 
truncate table library;
drop table library;


-- table 9 extracurricularactivities
create table extracurricularactivities(
activityID int primary key,
activityName varchar(100),
description text,
classID int,
foreign key (classID) references classes (classID)
);

insert into extracurricularactivities(activityID,activityName,description,classID)values
(1,'basketball','team sport played on a court',1),
(2,'debate club','a club for debating current issues',2),
(3,'science club','a club for science enthusiasts',3),
(4,'drama club','a club for aspiring actors',4),
(5,'art club','a club for artists and creative minds',5);
select *from extracurricularactivites;
truncate table extracurricularactivites;
drop table extracurricularactivites;
-- table 10 parentdetials
create table parentdetials(
parentID int primary key,
studentID int ,
parentname varchar(100),
relationship varchar(50),
contactnumber varchar(15),
foreign key (studentID) references students(studentID)
);

insert into parentdetials(parentID,studentID,parentname,relationship,contactnumber)values
(1,1,'mr anil','father','1234567890'),
(2,2,'mr sunita','mother','1234567899'),
(3,3,'mr Raj','father','1234567898'),
(4,4,'mr Kavita','mother','1234567897'),
(5,5,'mr vikram','father','1234567896');


select *from parentdetails;
truncate table parentdetails;
drop table parentdetails;





create database siesschool;
use siesschool;

create table students(
studentID int primary key,
name varchar(100),
age int,
gender varchar(10),
email varchar(100)
);
insert into students(studentID,name,age,gender,email) values
(1,'atharva',20,'M','atharva@gmail.com'),
(2,'om',21,'M','om@gmail.com');
insert into students(studentID,name,age,gender,email) values
(3,'prem',22,'M','prem@gmail.com'),
(4,'vivek',21,'M','vivek@gmail.com'),
(5,'prasad',23,'M','prasad@gmail.com');
select *from students;

create table teachers(
teacherID int primary key,
name varchar(100),
subject varchar(50),
experience varchar(100),
email varchar(100)
);
insert into teachers(teacherID,name,subject,experience,email) values
(1,'Shalini Mam','SQL','5 years','shalini@gmail.com'),
(2,'Rohit sir','Excel','5 years','rohit@gmail.com'),
(3,'Saish sir','SQL','10 years','saish@gmail.com'),
(4,'Damini Mam','Python','7 years','damini@gmail.com'),
(5,'Tejas Mam','Java','8 years','tejas@gmail.com');
select *from teachers;
create table extracurricular_activity(
activityID int primary key,
name varchar(100),
description varchar(200),
studentID int,
teacherID int,
foreign key(studentID) references students(studentID),
foreign key(teacherID) references teachers(teacherID)
);
insert into extracurricular_activity(activityID,name,description,studentID,teacherID) values
(1,'football','team sports played on rectangular field',1,1),
(2,'music club','interested in singing and playing instruments',2,2),
(3,'drama','acting and stage performance',3,3),
(4,'science','scientific thinking with experiments',4,4),
(5,'art','drawing, painting and crafts',5,5);
select *from extracurricular_activity;


