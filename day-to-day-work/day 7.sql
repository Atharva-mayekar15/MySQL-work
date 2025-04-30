-- create a new database named 'demojoins'
create database demojoins;

-- use the newly crated database for subsequent operations
use demojoins;

-- create a table named'Student' with an id and name
create table student(
id int primary key,  -- 'id' is the primary key and must be unique
student_name varchar(50)   -- 'student_name' can hold up to 50 characters
);

-- insert records into the 'Student' table
insert into student(id,student_name) values
(101,'Kerti'),   
(102,'Ravi'),
(103,'Lavish'),
(104,'Trisha');


-- retrieve all records from the 'student' table

select * from student;

-- create a table named 'course' with an ID and course name
create table course(
id int primary key,
course_name varchar(50)
);

insert into course(id,course_name) values
(107,'English'),
(102,'Python'),
(104,'Hindi'),
(108,'Maths');

select * from course;

-- inner join (also known as simple join / equi Join):
-- retrives records that have matching values in both tables involved in the jin.
select student.id, student.student_name, course_name
from student
inner join course on student.id = course.id;

select * from student;

-- left join (also known as left outer join):
-- retrives all records from the left table and the matched records from the right table
-- retrieve all records from 'student' and matching records from 'course'

select student.id,student.student_name, course_name
from student
left join course on student.id = course.id;

-- right join (also known as right outer join)
-- retrieves all records from the right table and the matches from the left table.
-- retrieve all records from 'course' and matching records from 'student'

select course.id,student_name, course_name
from student
right join course on student.id = course.id;

-- full join (also known as full outer join)
-- it retrieves all records from both tables, matchiing rows whre possible, and filling in null values where there are no matches
-- retrive all records from both tables, with nulls where there are no matches
select student.id, student_name, course_name
from student
left join course on student.id = course.id
union 
select student.id, student_name, course_name
from student
right join course on student.id = course.id;

select student.id, student_name, course_name
from student
left join course on student.id = course.id
union 
select course.id, student_name, course_name
from student
right join course on student.id = course.id;

-- left exclusive join (also known as left anti join)
-- retrieves rows from the left table that do not have matching rows in the right table
-- retrieve records from 'student' that do not have matches in 'course' 

select student.id, student_name, course_name
from student
left join course on student.id = course.id
where course.id is null;


-- right exclusive join (also known as right anti join):
-- retrieves rows from the right table that do not have mathcing rows in the left table
-- retrive records from 'course' that do not have matches in student
select course.id, student_name, course_name
from student
right join course on student.id = course.id
where student.id is null;


-- Self Join (Inner self join/outer self-Reference join/self-relating join/Table self join)
select student.id, student_name, course_name
from student, course
where student.id= course.id;

-- cross join (Also known as a cartesian join or cartesian product join)
-- A cros  join retrives the cartesian product of two tables, meaning every row from the first table is combined with every row from the second table.
-- retrieve the cartesian product of 'student' and 'course' tables.

select student.id, student_name, course_name
from student
cross join course;


-- table 1
-- create the faculty table to store information about faculty members
create table faculty(
faculty_id int primary key,
faculty_name varchar(255),
faculty_description text,
dean varchar(255),
faculty_location varchar(255),
faculty_contact_info varchar(255)
);

insert into faculty(faculty_id,faculty_name,faculty_description,dean,faculty_location,faculty_contact_info) values
(1,'Faculty of Science','Covers various scientific disciplines','Dr Alice Smith','Building A','alice.smith@example.com'),
(2,'Faculty of Engineering','Focuses on engineering and Technology','Dr. Bob Jhonson','Building B','bob.jhonson@example.com'),
(3,'Faculty of Arts','Includes humanities and social sciences','Dr. Coral Williams','Building C','coral.williams@example.com'),
(4,'Faculty of Business','Offers business and management courses','Dr. David Brown','Bulding D','david.brown@example.com'),
(5,'Faculty of education','Dedicated to teacher training and education studies','Dr. Eva Davis','Building E','eva.davis@example.com');


-- table 2
-- create the department table to store information about departments within faculties
create table department(
department_id int primary key,
department_name varchar(255),
department_description text,
faculty_id int,
department_head varchar(255),
department_location varchar(255),
foreign key(faculty_id) references faculty(faculty_id)
);

insert into department(department_id,department_name,department_description,faculty_id,department_head,department_location) values
(1,'Department of Physics','Study of matter and energy',1,'Dr. Emily White','Room 101'),
(2,'Department of Computer Science','Focus on computing and programming',1,'Dr. Frank Green','Room 102'),
(3,'Department of Civil Engineering','Deals with infrastructure and construction',2,'Dr. Grace Black','Room 201'),
(4,'Department of Mechanical Engineering','Focus on machinery and mechanics',2,'Dr. Henry Blue','Room 202'),
(5,'Department of History','Study of past events and societies',3,'Dr. Irene Red','Room 301');


-- table 3
create table students(
student_id int primary key,
student_name varchar(255),
student_email varchar(255),
department_id int,
enrollment_year int,
faculty_id int,
foreign key (department_id) references department (department_id),
foreign key (faculty_id) references faculty(faculty_id)
);

insert into students(student_id,student_name,student_email,department_id,enrollment_year,faculty_id) values
(1,'John Doe','john.doe@example.com',1,2021,1),
(2,'Jane Smith','jane.smith@example.com',2,2020,1),
(3,'Alice Johnson','alice.johnson@example.com',1,2022,1),
(4,'Bob Brown','bob.brown@example.com',3,2021,2),
(5,'Charlie Davis','charlie.davis@example',4,2023,2); 


-- table 4
create table salary(
salary_id int primary key,
faculty_id int,
amount decimal(10,2),
payment_date date,
foreign key (faculty_id) references faculty(faculty_id)
);

insert into salary (salary_id,faculty_id,amount,payment_date) values
(1,1, 75000.00,'2023-01-15'),
(2,2,80000.00,'2023-01-15'),
(3,3,70000.00,'2023-01-15'),
(4,4,72000.00,'2023-01-15'),
(5,5,68000.00,'2023-01-15');


-- table 5
create table marks(
marks_id int primary key,
student_id int,
subject_name varchar(255),
marks_obtained int,
semester int,
foreign key(student_id) references students(student_id)
);

insert into marks (marks_id,student_id,subject_name,marks_obtained,semester) values
(1,1,'Physics',85,1),
(2,1,'Mathematics',90,1),
(3,2,'Computer Science',88,2),
(4,3,'Physics',92,1),
(5,4,'Civil Engineering',75,2),
(6,5,'Business Management',80,1);