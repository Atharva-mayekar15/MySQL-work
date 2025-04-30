create database xyzCollege;
use xyzCollege;

-- foreign keys
-- delete and update cascade

/*
what are foreign keys?
a foreign key is a filed in one table that links to the primary key of another table.
it creates a relationship between the two tables.
*/
/*
delete cascade
a delete cascade means that when a record in the parent table
( the table with a primary key) is deleted, all corresponding records
in the child table (the table with the foreign key) will also be deleted
automatically*/

/* Update cascade
an update means that when athe rimary key of a record in the parent table is updated,
all corresponding foreign keys in the child table will also be updated automatically. */

-- crete 5 tables(departments,faculty,students,marks,salary)

-- table 1
create table departments(
DepartmentsID int primary key,
DepartmentName varchar(100) not null,
DepartmentHead varchar(100),
CreationDate date not null,
Budget Decimal(10,2) check(budget >=0),
location varchar(100),
PhoneNumber varchar(15),
Email varchar(100) unique,
status enum('Active','Inactive') default 'Active'
);

-- insert values
insert into departments(departmentsID,DepartmentName,DepartmentHead,CreationDate,Budget,Location,PhoneNumber,Email,Status) values
(1,'Computer Science','Dr Aditi Joshi','2015-08-01',600000.00,'Main Campus','022-12345678','csmumbaiuniversity','Active'),
(2,'Mechanical Engeering','Dr Rohan Mehta','2016-07-15',550000.00,'Engeering Block','022-12345671','mech@mumbaiuniversity.edu','Active'),
(3,'Civil Engineering','Dr Priya Sharma','2017-09-10',500000.00,'Engineering Block','022-123497878','civil@mumbaiuniversity.edu','Inactive'),
(4,'Electrical Engineering','Dr Vikram Singh','2018-01-20',520000.00,'Engineering Block','022-18264548','electrical@mumbaiuniversity.edu','Inactive'),
(5,'Informatio Technology','Dr Neha Gupta','2019-03-05',480000.00,'IT Building','022-94838632','it@mumbaiuniversity.edu','Active'),
(6,'Business Administration','Dr Sanjay Rao','2014-11-11',700000.00,'Management Building','022-9698696875','business@mumbaiuniversity.edu','Active'),
(7,'Psychology','Dr Anjali Verma','2022-02-25',300000.00,'Arts Block','022-0908963213','psychology@mumbaiuniversity.edu','Active'),
(8,'Economics','Dr karan Desai','2018-06-30',3500000.00,'Social Science Building','022-923926148','economics@mumbaiuniversity.edu','Inactive'),
(9,'Mathematics','Dr Sneha Patil','2016-04-15','400000.00','Science Block','022-9843428723','maths@mumbaiuniversity.edu','Active'),
(10,'History','Dr Amit Bhatia','2015-12-01',250000.00,'Arts Block','022-2193928484','history@mumbaiuniversity.edu','Active');

select * from departments;

create table faculty(
FacultyID int primary key,
FacultyName varchar(100) not null,
DepartmentID int,
HireDate date not null,
Email varchar(100) unique not null,
Phonenumber varchar(15),
position enum('Professor','Associate Professor','Assistent Professor','Lecturer') not null,
foreign key(DepartmentID) references departments(DepartmentsID)
on delete set null
on update cascade
);
-- insert 10 records
insert into faculty(FacultyID,FacultyName,DepartmentID,HireDate,Email,PhoneNumber,Position) values
(1,'Dr aditi Sharma',1,'2015-08-01','aditi@gmail.com','893462395','Professor'),
(2,'Prof Rajesh Mehta',2,'2016-07-02','rajesh@gmail.com','8946223395','Associate Professor'),
(3,'Dr Neha Patil',3,'2012-08-01','neha@gmail.com','893462195','Assistent Professor'),
(4,'Dr Amit Desai',4,'2021-08-01','amit@gmail.com','893463395','Lecturer'),
(5,'Dr Kavita Joshi',5,'2022-08-01','kavita@gmail.com','893662395','Associate Professor'),
(6,'Dr Sanjay Kulkarni',6,'2023-08-01','sanjay@gmail.com','893762395','Assistent Professor'),
(7,'Dr Rohit Sharma',7,'2024-08-01','rohit@gmail.com','89346236595','Professor'),
(8,'Dr Virat Kohli',8,'2025-01-01','virat@gmail.com','89348762395','Lecturer'),
(9,'Dr Sneha Iyer',9,'2020-08-01','sneha@gmail.com','89342162395','Professor'),
(10,'Dr Vikram Singh',9,'2020-12-12','vikram@gmail.com','89309162395','Professor');
select * from faculty;

-- table 3
create table students(
StudentID int primary key,
StudentName varchar(100),
DepartmentID int,
EnrollmentDate date not null,
Email varchar(100) unique not null,
PhoneNumber varchar(15),
DateOfBirth date,
address varchar(225),
constraint chk_EmailFormat check(Email like '%_@_%._%'),
foreign key(DepartmentID) references Departments(DepartmentsID)
on delete set null
on update cascade
);

-- insert 10 records
insert into students(StudentID,StudentName,DepartmentID,EnrollmentDate,Email,PhoneNumber,DateOfBirth,Address) values
(1,'Aditi Sharma',1,'2013-08-01','aditi@gmail.com','34343243343','2005-06-15','123,Marine Drive,Mumbai'),
(2,'Rahul',2,'2013-08-01','rahul@gmail.com','3434767643343','2004-06-15','456,Juhu Beach,Mumbai'),
(3,'Sneha',3,'2013-08-01','adisnehati@gmail.com','34443243343','2005-07-15','789,Bendra,Mumbai'),
(4,'Vikram',4,'2013-08-01','vikram@gmail.com','34343249843','2005-08-15','321,Andheri,Mumbai'),
(5,'Priya',5,'2013-08-01','priya@gmail.com','3434324563343','2005-09-15','654,Powai,Mumbai'),
(6,'Rohit',6,'2013-08-01','rohit@gmail.com','3434324213343','2004-10-15','987,Thane,Mumbai'),
(7,'Neha',7,'2013-08-01','neha@gmail.com','3434323443343','2003-06-15','159,Dadar,Mumbai'),
(8,'Karan',8,'2013-08-01','karan@gmail.com','8934343243343','2002-06-15','753,Malad,Mumbai'),
(9,'Anjali',9,'2013-08-01','anjali@gmail.com','3434300243343','2003-12-15','125,Borivali,Mumbai'),
(10,'Siddharth',10,'2013-08-01','siddharth@gmail.com','3004343243343','2005-01-15','155,Ghatkopar,Mumbai');
select * from students;

-- Table-4
-- Table: Marks
CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,                              
    -- Unique identifier for each mark record (Primary Key)
   
    StudentID INT,                                      
    -- Student who received the marks
    -- This field links to the Students table to indicate which student received the marks.
   
    FacultyID INT,                                      
    -- Faculty who graded the marks
    -- This field links to the Faculty table to indicate which faculty member graded the marks.
   
    Subject VARCHAR(100) NOT NULL,                      
    -- Subject for which the marks are awarded
    -- This field stores the name of the subject for which the marks are awarded; cannot be NULL.
   
    MarksObtained INT CHECK (MarksObtained >= 0 AND MarksObtained <= 100),
    -- Ensuring marks are within 0-100
    -- This field records the marks obtained by the student; must be between 0 and 100.
   
    ExamDate DATE NOT NULL,                            
    -- Date of the exam
    -- This field records the date on which the exam was conducted; cannot be NULL.
   
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
        ON DELETE CASCADE                              
        -- If a student is deleted, their marks will also be deleted
        ON UPDATE CASCADE,                              
        -- If a StudentID is updated, update it in Marks
       
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
        ON DELETE SET NULL                            
        -- If a faculty member is deleted, set the FacultyID in Marks to NULL
        ON UPDATE CASCADE                              
        -- If a FacultyID is updated, update it in Marks
);

-- insert 10 records
INSERT INTO Marks (MarkID, StudentID, FacultyID, Subject, MarksObtained, ExamDate) VALUES
 (1, 1, 1, 'Mathematics', 85, '2023-05-15'),   -- Student 1
 (2, 2, 2, 'Physics', 78, '2023-05-16'),        -- Student 2
 (3, 3, 3, 'Chemistry', 92, '2023-05-17'),      -- Student 3
 (4, 4, 4, 'Biology', 88, '2023-05-18'),        -- Student 4
 (5, 5, 5, 'Computer Science', 95, '2023-05-19'), -- Student 5
 (6, 6, 6, 'English', 76, '2023-05-20'),        -- Student 6
 (7, 7, 7, 'History', 84, '2023-05-21'),        -- Student 7
 (8, 8, 8, 'Geography', 90, '2023-05-22'),      -- Student 8
 (9, 9, 9, 'Economics', 70, '2023-05-23'),      -- Student 9
 (10, 10, 10, 'Political Science', 82, '2023-05-24'); -- Student 10

select * from marks;

-- Table-5
-- Table: Salary
CREATE TABLE Salary (
    SalaryID INT PRIMARY KEY,                          
    -- Unique identifier for each salary record (Primary Key)
   
    FacultyID INT,                                      
    -- Faculty member whose salary is recorded
    -- This field links to the Faculty table to indicate which faculty member the salary belongs to.
   
    SalaryAmount DECIMAL(10, 2) CHECK (SalaryAmount >= 0),
    -- Ensuring salary is non-negative
    -- This field records the amount of salary paid to the faculty member; must be non-negative.
   
    PaymentDate DATE NOT NULL,                          
    -- Date of salary payment
    -- This field records the date on which the salary was paid; cannot be NULL.
   
    PaymentMethod VARCHAR(50) NOT NULL,                
    -- Method of payment (e.g., bank transfer, cash)
    -- This field indicates the method used for salary payment; cannot be NULL.
   
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
        ON DELETE CASCADE                              
        -- If a faculty member is deleted, their salary record will also be deleted
        ON UPDATE CASCADE                              
        -- If a FacultyID is updated, update it in Salary
);

-- insert 10 records
-- Inserting records into the Salary table
INSERT INTO Salary (SalaryID, FacultyID, SalaryAmount, PaymentDate, PaymentMethod) VALUES
(1, 1, 50000.00, '2023-06-30', 'Bank Transfer'),    
-- Faculty 201
(2, 2, 55000.00, '2023-06-30', 'Cash'),              
-- Faculty 202
(3, 3, 60000.00, '2023-06-30', 'Bank Transfer'),    
-- Faculty 203
(4, 4, 52000.00, '2023-06-30', 'Cheque'),            
-- Faculty 204
(5, 5, 51000.00, '2023-07-30', 'Bank Transfer'),    
-- Faculty 201
(6, 2, 53000.00, '2023-07-30', 'Cash'),              
-- Faculty 202
(7, 3, 59000.00, '2023-07-30', 'Bank Transfer'),    
-- Faculty 203
(8, 4, 54000.00, '2023-07-30', 'Cheque'),            
-- Faculty 204
(9, 1, 52000.00, '2023-08-30', 'Bank Transfer'),    
-- Faculty 201
(10, 2, 55000.00, '2023-08-30', 'Cash');              
-- Faculty 202

select * from salary;

-- perform delete and update operations 
-- delete a department (eg DepartmentID=1)
delete from Departments where DepartmentsID=1;

-- check the faculty and students tables to see the effects
select * from faculty; -- departmentID for faculty in department  1 should be null
select * from students;

-- delete a faculty member (eg facultyID =1 )
delete from faculty where FacultyID = 1;

select * from faculty;

select * from marks;

-- update a department ID (eg change departmentID from 2 to 20)

update departments set DepartmentsID = 20 where DepartmentsID=2;
select * from departments;
select * from students;

-- update  a faculty ID(eg chage facultyID from 3 to 30)
update faculty set FacultyID = 30 where FacultyID=3;
select * from faculty;
select * from salary;


/*
1.In MYSQL, a foreign key constraints:
you can add a foreign key constraints to an existing table to enforce referential integrity.

2.adding a unique constraints:
you can add a unique constraints to ensure that all values in a column are different.

3.adding a check constraints
you can add a check constraint to enforce a condition on the values in a column.

Dropping Constraints

1.dropping a foreign key constraints
you can dropa foreign key constraint if you no longer need it.

2.dropping a unique constraint:
you can drop a unique constraint if you want to allow duplicate values in the column.

3.dropping a check constraint:
you can drop a check constraint if you want to remove the condition on the column.

*/

-- 1 adding a foreign key constraint to the marks table
alter table marks
add constraint fk_student
foreign key (studentID) references students(StudentID)
on update cascade
on delete cascade;

-- 2 adding a unique constraint to the faculty  table on email
alter table faculty
add constraint uq_faculty_email unique(Email);
select * from faculty;

-- 3 adding a check constraint to the salary table to ensure salaryAmount is positive
alter table salary
add constraint chk_salary_amount check(SalaryAmount>0);


-- 4 dropping a foreign key constraint from the marks table
alter table marks
drop foreign key fk_student;

-- 5 dropping a unique constraint from the faculty table
alter table faculty
drop index uq_faculty_email;

-- 6 dropping a check constraint from the salary table
alter table salary
drop check chk_salary_amount;

-- 7 adding a new check constraint to the students table to ensure the age is valid
alter table students
add constraint chk_age check(YEAR(CURDATE()) - year(DateOfBirth) >=0);

-- 8 dropping the check constraint from the students table
alter table students
drop check chk_age;

