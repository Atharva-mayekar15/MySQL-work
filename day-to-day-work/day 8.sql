create database demojoins;





-- use the newly created database for subsequent operations
use demojoins;


-- Table 1: Faculty (no change, department_id not added as it doesn't fit logically)
CREATE TABLE faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(255),
    faculty_description TEXT,
    dean VARCHAR(255),
    faculty_location VARCHAR(255),
    faculty_contact_info VARCHAR(255)
);

-- Table 2: Department (no change, already has department_id)
CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255),
    department_description TEXT,
    faculty_id INT,
    department_head VARCHAR(255),
    department_location VARCHAR(255),
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id)
);

-- Table 3: Students (no change, already has department_id)
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    student_email VARCHAR(255),
    department_id INT,
    enrollment_year INT,
    faculty_id INT,
    FOREIGN KEY (department_id) REFERENCES department(department_id),
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id)
);

-- Table 4: Salary (add department_id)
CREATE TABLE salary (
    salary_id INT PRIMARY KEY,
    faculty_id INT,
    department_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id),
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- Table 5: Marks (no change, already has department_id via student_id)
CREATE TABLE marks (
    marks_id INT PRIMARY KEY,
    student_id INT,
    subject_name VARCHAR(255),
    marks_obtained INT,
    semester INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);


-- Insert into faculty (more records for diversity)
INSERT INTO faculty (faculty_id, faculty_name, faculty_description, dean, faculty_location, faculty_contact_info) VALUES
(1, 'Faculty of Science', 'Covers various scientific disciplines', 'Dr. Alice Smith', 'Building A', 'alice.smith@example.com'),
(2, 'Faculty of Engineering', 'Focuses on engineering and technology', 'Dr. Bob Johnson', 'Building B', 'bob.johnson@example.com'),
(3, 'Faculty of Arts', 'Includes humanities and social sciences', 'Dr. Carol Williams', 'Building C', 'carol.williams@example.com'),
(4, 'Faculty of Business', 'Offers business and management courses', 'Dr. David Brown', 'Building D', 'david.brown@example.com'),
(5, 'Faculty of Education', 'Dedicated to teacher training and education studies', 'Dr. Eva Davis', 'Building E', 'eva.davis@example.com'),
(6, 'Faculty of Medicine', 'Focuses on medical sciences and healthcare', 'Dr. Fiona Clark', 'Building F', 'fiona.clark@example.com'),
(7, 'Faculty of Law', 'Covers legal studies and practice', 'Dr. George Adams', 'Building G', 'george.adams@example.com');

-- Insert into department (more records, tied to faculties)
INSERT INTO department (department_id, department_name, department_description, faculty_id, department_head, department_location) VALUES
(1, 'Department of Physics', 'Study of matter and energy', 1, 'Dr. Emily White', 'Room 101'),
(2, 'Department of Computer Science', 'Focus on computing and programming', 1, 'Dr. Frank Green', 'Room 102'),
(3, 'Department of Civil Engineering', 'Deals with infrastructure and construction', 2, 'Dr. Grace Black', 'Room 201'),
(4, 'Department of Mechanical Engineering', 'Focus on machinery and mechanics', 2, 'Dr. Henry Blue', 'Room 202'),
(5, 'Department of History', 'Study of past events and societies', 3, 'Dr. Irene Red', 'Room 301'),
(6, 'Department of Biology', 'Study of living organisms', 1, 'Dr. James Violet', 'Room 103'),
(7, 'Department of Economics', 'Study of markets and finance', 4, 'Dr. Karen Yellow', 'Room 401'),
(8, 'Department of Education Policy', 'Focus on educational systems', 5, 'Dr. Liam Orange', 'Room 501'),
(9, 'Department of Medicine', 'Medical practice and research', 6, 'Dr. Mia Pink', 'Room 601'),
(10, 'Department of Law', 'Legal studies and advocacy', 7, 'Dr. Noah Gray', 'Room 701');

-- Insert into students (more records, tied to departments and faculties)
INSERT INTO students (student_id, student_name, student_email, department_id, enrollment_year, faculty_id) VALUES
(1, 'John Doe', 'john.doe@example.com', 1, 2021, 1),
(2, 'Jane Smith', 'jane.smith@example.com', 2, 2020, 1),
(3, 'Alice Johnson', 'alice.johnson@example.com', 1, 2022, 1),
(4, 'Bob Brown', 'bob.brown@example.com', 3, 2021, 2),
(5, 'Charlie Davis', 'charlie.davis@example.com', 4, 2023, 2),
(6, 'Diana Evans', 'diana.evans@example.com', 5, 2020, 3),
(7, 'Edward Fox', 'edward.fox@example.com', 6, 2022, 1),
(8, 'Fiona Green', 'fiona.green@example.com', 7, 2021, 4),
(9, 'George Hall', 'george.hall@example.com', 8, 2023, 5),
(10, 'Hannah Ives', 'hannah.ives@example.com', 9, 2022, 6),
(11, 'Ian James', 'ian.james@example.com', 10, 2021, 7),
(12, 'Julia King', 'julia.king@example.com', 1, 2023, 1),
(13, 'Kevin Lee', 'kevin.lee@example.com', 2, 2022, 1),
(14, 'Laura Miles', 'laura.miles@example.com', 3, 2020, 2),
(15, 'Mike Nolan', 'mike.nolan@example.com', 4, 2021, 2);

-- Insert into salary (add department_id, more records for department heads)
INSERT INTO salary (salary_id, faculty_id, department_id, amount, payment_date) VALUES
(1, 1, 1, 75000.00, '2023-01-15'),
(2, 1, 2, 78000.00, '2023-01-15'),
(3, 2, 3, 80000.00, '2023-01-15'),
(4, 2, 4, 82000.00, '2023-01-15'),
(5, 3, 5, 70000.00, '2023-01-15'),
(6, 1, 6, 76000.00, '2023-02-15'),
(7, 4, 7, 74000.00, '2023-02-15'),
(8, 5, 8, 72000.00, '2023-02-15'),
(9, 6, 9, 85000.00, '2023-02-15'),
(10, 7, 10, 79000.00, '2023-02-15'),
(11, 1, 1, 75500.00, '2023-03-15'),
(12, 2, 3, 80500.00, '2023-03-15'),
(13, 3, 5, 70500.00, '2023-03-15'),
(14, 4, 7, 74500.00, '2023-03-15'),
(15, 5, 8, 72500.00, '2023-03-15');

-- Insert into marks (more records, tied to students)
INSERT INTO marks (marks_id, student_id, subject_name, marks_obtained, semester) VALUES
(1, 1, 'Physics', 85, 1),
(2, 1, 'Mathematics', 90, 1),
(3, 2, 'Computer Science', 88, 2),
(4, 3, 'Physics', 92, 1),
(5, 4, 'Civil Engineering', 75, 2),
(6, 5, 'Mechanical Engineering', 80, 1),
(7, 6, 'History', 87, 1),
(8, 7, 'Biology', 91, 2),
(9, 8, 'Economics', 78, 1),
(10, 9, 'Education Policy', 84, 2),
(11, 10, 'Medicine', 89, 1),
(12, 11, 'Law', 86, 1),
(13, 12, 'Physics', 82, 2),
(14, 13, 'Computer Science', 90, 1),
(15, 14, 'Civil Engineering', 77, 1),
(16, 15, 'Mechanical Engineering', 83, 2),
(17, 1, 'Chemistry', 88, 2),
(18, 2, 'Data Structures', 85, 1),
(19, 3, 'Mathematics', 94, 2),
(20, 4, 'Structural Analysis', 79, 1);

INSERT INTO marks (marks_id, student_id, subject_name, marks_obtained, semester) VALUES
(21, 1, 'Physics II', 35, 2),  -- John Doe, Faculty 1, Department 1
(22, 6, 'History II', 38, 2); -- Diana Evans, Faculty 3, Department 5

/*
in MYSQL, joins are used to combine rows from two or more tables based on a related column
between them. Joins allow you to retrive data from multiple tbales in a single 
query, making it easier to work with relational databases.

1. INNER JOIN:
- Defination: The INNER JOIN keyword selects records that have matching values in both tables.
- Purpose: To retrive only the rows where there is a match in both tables, effectively fitering out
non-matching rows.

- Example:
select a.EmployeeID, a.Name, b.DepartmentName
from employees alterINNER JOIN Departments b ON a.DepartmentID= b.DepartmentID;


2. LEFT JOIN (	or LEFT OTER JOIN):
- Defination: The LEFT JOIN keyword returns all records from the left table and the matched records from
the right table.
- Purpose: To retrive all records from the left table regradless of wheter there is a match in the right
table. allowing for null values in the result set for non-matching rows.

- Example:
SELECT a.EmployeeID, a.Name, b.DepartmentName
FROM Employees a
LEFT JOIN Departments b ON a.DepartmentID = b.DepartmentID;


3. RIGHT JOIN (or RIGHT OUTER JOIN):
- Defination: The RIGHT JOIN keyword returns al records from the right table and the matched records from the 
left table.
- Purpose: To retrive all records from the right table regardless of wheter there is a match in the left
table, aloowing for NULL values in the result set for non-matching rows.

- Example:
SELECT a.EmployeeID, a.Name, b.DepartmentName
from Employees a
RIGHT JOIN Departments b ON a.DepartmentID = b.DeaprtentID;


4. FULL JOIN (or FULL OUTER JOIN):
- Defination: The FULL JOIN keyword returns all records when there is a match in eiter left or right table records
- Purpose: To retrive all records from both tables, including those that do not have matchs in either table,
MYSQL does not support FULL JOIN directly, but it can be simulated using a combination of LEFT JOIN and RIGHT JOIN with a UNION.

- Example:
SELECT a.EmployeeID, a.Name, b.DeaprtmentName
from employees a
LEFT JOIN Deaprtments b on a.DepartmentID= b.DeaprtmentID
UNION 
SELECT a.EmployeeID, a.Name, b.DepartmentName
from Employees a
RIGHT JOIN Departments b ON a.DeaprtmentID = b.DeapartmentID;


5. LEFT EXCLUSIVE JOIN:
- Defination: This is not a standard SQL join type, but it can be simulated by using a LEFT JOIN and
filtering out the matched records from the right table.
- Purpose: To retrive records from the left table that do not have corresponding records in the right table.

- Example:
SELECT a.EmployeeID, a.Name
FROM Employees a
LEFT JOIN Departments b ON a.DepartmentID = b.DepartmentID
WHERE b.DepartmentID is NULL;


6. RIGHT EXCLUSIVE JOIN:
- Defination: Similar to left exclusive join, this is not a standard SQL join type but can be stimulated
using a RIGHT JON and filtering out the matched records from the left table.
- Purpose: To retrive records from the right table that do not have corresponding records in the left table.

- Example:
SELECT b.DepartmentID, b.DepartmentName
from Employees a
RIGHT JOIN Departments b ON a.DepartmentID = b.DepartmentID
WHERE a.Employeesid is NULL;


7. CROSS JOIN:
- Defination: The CROSS JOIN keyword returns the cartesian product of both tables, meaning it combines
every row of the right table with every row of the second table.
- Purpose: To generate a combination of all records from both tables, which can be useful in certain
scenarios but may result in alarge number of rows in the result set.

- Example:
SELECT a.EmployeeID,b.DepartmentName
from Employees a
CROSS JOIN Departments b;


8. SELF JOIN:
- Defination: A SELF JOIN is a regular join but the table is joined with itself.
- Purpose: To compare rows within the same table, such as finding hierarchical relationship or related
data within the same dataset.
- Example:
SELECT a.EmployeeID, a.Name, b.Name as ManagerName
from Employyes a
INNER JOIN Employees b ON a.ManagerID = b.EmployeeID;

In summary, joins are a powerful feature in SQL that allow you to combine data from multiple tables based on 
relationships between them. Understanding how to use different types of joins effetively is crucial for 
quering relational databses.
*/

/*
Subqueries:

Defination:
A subquery, also known as a nested query or inner query, is a query embedded within another SQL query
It is enclosed in parenthesis and can be used in varius clauses such as SELECT, INSERT, UPDATE or DELETE.
Subqueries can return a single value, a single row, or a set of rows.

Purpose:
Subqueries are used to perform opwerations that require multiple steps or to filter results based on the 
results of another query.
They can simplify complex queries by breking them down into smaller,
more manageable parts. Subqueires can also be used to retrive data that will be used in the main query,
allowing for more dynamic and flexible SQL statements.

Types of Subqueries:
1. Single-row subquery: Returns a single row and can be used with comparison operators.
2. Multiple-row subquery: Returns multiple rows and can be used with operators like IN, ANY, or ALL.
3. Scaler subquery: Returns a single value(one column, one row) and can be used in expressions.

Examples:

1. Single-row subquery:
- Purpose: To find employees whose salary is greater than the average salary.

SELECT EmployeeID, Name
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

2. Multiple-row subquery:
- Purpose: To find employees who work in departments with a budget greater than $100,00.

SELECT EmployeeID, Name
from Employyes
where DepartmentID IN (SELECT DepartmentID FROM Departments WHERE Budget > 100000);

3. Scaler subquery:
- Purpose: To find the name of the employee with the highest salary.

SELECT Name
from Emplyees
WHERE Salary = (SELECT MAX(Salary) FROM Employees);

4. Correlated subquery:
- Purpose: To find employees whose salary is above the average salary of their respective departments.

SELECT 	e.EmployeeID, e.Name
FROM Employees e
WHERE e.Salary > (SELECT AVG(Salary) FROM Employees WHERE DeaprtmentID = e.DepartmentID);

subqueires are a powerful feature in SQL that allow for more complex and dynamic queries by enabling the use
of the results of one query within another. They can help simplify SQL statements and make them more readable
and maintainable.
*/


-- Table-1 Faculty
select * from faculty;

-- 1. Find the dean of the faculty with the longest name

select dean from faculty 
where faculty_id = (SELECT faculty_id FROM faculty ORDER BY LENGTH(faculty_name) DESC LIMIT 1);

-- 2. List faculty names with descriptions cantaining the word "Science"

select faculty_name from faculty
where faculty_id IN (select faculty_id FROM faculty where faculty_description like "%science%");

select * from faculty;

-- 3. Count the number of faculties located starting with "Building B"
SELECT COUNT(*)
FROM faculty
WHERE faculty_location IN (
SELECT faculty_location
FROM faculty
WHERE faculty_location LIKE "Building B%"
);

-- 4. Get the faculty name of the faculty with the same location as 'Faculty of Arts'
SELECT faculty_name
FROM faculty
WHERE faculty_location = (
SELECT faculty_location
FROM faculty
WHERE faculty_name ='Faculty of Arts'
);

-- 5. Find the faculty names with deans whose names cntain the letter 'a'
SELECT faculty_name
FROM faculty
WHERE dean IN (
SELECT dean
FROM faculty
WHERE dean LIKE '%a%'
);


-- Table-2 Department
select * from department;


-- 1. Find the department head of the department with the longest name
SELECT department_head
FROM department
WHERE department_id = (
SELECT department_id
from department
order by LENGTH(department_name) DESC LIMIT 1
);

-- 2. List departments located in the same location as 'Deaprtment of physics'
SELECT department_name
FROM department
where department_location = (
SELECT department_location
from department
where department_name = 'Department of Physics'
);

-- 3. Count the number of departments headed by 'Dr. Grace Black'
select COUNT(*)
FROM department
WHERE department_head = (
SELECT department_head
FROM department
WHERE department_name ='Deaprtment of Civil Engineering'
);

-- 4. Get the department name of the department with the same faculty as 'Deaprtment of computer science'
SELECT department_name
FROM department
WHERE faculty_id = (
SELECT faculty_id
FROM department
WHERE department_name = 'Department of Computer Science'
);

-- 5. Find departments with description containing the word 'engeering'
SELECT department_name
FROM department
WHERE department_id IN (
SELECT department_id
FROM department
WHERE department_description LIKE '%engineering%'
);


-- table-3 students

-- 1. Find the names of students enrolled in the same department as 'Jane Smith'
SELECT student_name
FROM students
WHERE department_id = (
SELECT department_id
FROM students
WHERE student_name ='Jane Smith');

-- 2. Count the number of students enrolled in each faculty
SELECT faculty_id, COUNT(*) AS student_count
FROM students
GROUP BY faculty_id 
HAVING faculty_id IN (
SELECT faculty_id
FROM faculty
WHERE faculty_name LIKE "%Faculty of%");

-- 3. Get the email of the student with the latest enrollment year in the same department as 'Alice Johnson'
SELECT student_email
FROM students
WHERE enrollment_year = (
SELECT MAX(enrollment_year)
FROM students
WHERE department_id = (
SELECT department_id
FROM students
WHERE student_name ='Alice Johnson')
);

-- 4. List students who are in departments with more than 2 students
SELECT student_name
FROM students
WHERE department_id IN (
SELECT department_id
FROM students
GROUP BY department_id
having COUNT(*) > 0
);

-- inner query
SELECT department_id
FROM students
GROUP BY department_id
having COUNT(*) > 0;

-- 5. Find students who are in the same faculty as "Bob Brown" but enrolled in a different year
SELECT student_name
FROM students
WHERE faculty_id = (
SELECT faculty_id
FROM students
WHERE student_name = 'Bob Brown'
) AND enrollment_year <> (
SELECT enrollment_year
FROM students
WHERE student_name ='Bob Brown'
);


-- table 4 - Salary

-- 1. Find the faculty ID who received the highest salary
SELECT faculty_id
FROM salary
WHERE amount = (
    SELECT MAX(amount)
    FROM salary
);

-- 2. List all salaries equal to the salary of faculty ID 3
SELECT salary_id, amount
FROM salary
WHERE amount = (
    SELECT amount
    FROM salary
    WHERE faculty_id = 3
);

-- 3. Count how many faculty members received less salary than faculty ID 2
SELECT COUNT(*)
FROM salary
WHERE amount < (
    SELECT amount
    FROM salary
    WHERE faculty_id = 2
);

-- 4. Find the payment date of the lowest salary
SELECT payment_date
FROM salary
WHERE amount = (
    SELECT MIN(amount)
    FROM salary
);

-- 5. Get all faculty IDs who were paid on the same date as faculty ID 1
SELECT faculty_id
FROM salary
WHERE payment_date = (
    SELECT payment_date
    FROM salary
    WHERE faculty_id = 1
);


-- table 5- marks

-- 1. Get the subject name where the highest mark was obtained
SELECT subject_name
FROM marks
WHERE marks_obtained = (
    SELECT MAX(marks_obtained)
    FROM marks
);

-- 2. List students who got the same marks as student ID 2
SELECT student_id
FROM marks
WHERE marks_obtained = (
    SELECT marks_obtained
    FROM marks
    WHERE student_id = 2
    LIMIT 1
);

-- 3. Count how many students scored less than the student who scored highest
SELECT COUNT(*)
FROM marks
WHERE marks_obtained < (
    SELECT MAX(marks_obtained)
    FROM marks
);

-- 4. Get the subject of student ID 1 in semester 1
SELECT subject_name
FROM marks
WHERE semester = (
    SELECT semester
    FROM marks
    WHERE student_id = 1 AND semester = 1
    LIMIT 1
)
AND student_id = 1;

-- 5. Find students who appeared in the same semester as student ID 4
SELECT student_id
FROM marks
WHERE semester = (
    SELECT semester
    FROM marks
    WHERE student_id = 4
    LIMIT 1
);

-- 

-- sub-Queries with 2 tables

-- 1. Find students who scored above the hightest mark in a specific subject
SELECT s.student_name, m.marks_obtained
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.marks_obtained > (SELECT MAX(marks_obtained) FROM marks WHERE subject_name ='Mathematics');

-- 2. Find faculty members who earn leass than the minimum salary in their department
SELECT f.faculty_name, s.amount
FROM faculty f
JOIN salary s ON f.faculty_id = s.faculty_id
WHERE s.amount = (SELECT MIN(amount) FROM salary WHERE faculty_id = f.faculty_id);

-- 3. Find students who scored above the average marks in a specific subject
SELECT s.student_name, m.marks_obtained
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.marks_obtained > (SELECT AVG(marks_obtained) FROM marks WHERE subject_name ='Science');

-- 4. Find faculty members who earns more than the average salary in their department
SELECT f.faculty_name, s.amount
FROM faculty f
JOIN salary s ON f.faculty_id = s.faculty_id
WHERE s.amount > (SELECT AVG(amount) FROM salary WHERE department = '');

-- 5 Find students who scored above the highest mark in a specific subject and have a faculty member with a specifc title
SELECT s.student_name, m.marks_obtained
from students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.marks_obtained > (SELECT MAX(marks_obtained) FROM marks WHERE subject_name ='Mathematics')
AND s.faculty_id IN (SELECT faculty_id FROM faculty WHERE  dean ='Dr Alice Smith');
select * from faculty;

-- 6 Find faculty members who earn less than the minimum salary in their department and have students with low marks
SELECT f.faculty_name, s.amount
FROM faculty f
JOIN salary s ON f.faculty_id = s.faculty_id
WHERE s.amount < (
    SELECT MIN(s2.amount)
    FROM salary s2
    WHERE s2.faculty_id != f.faculty_id
)
AND EXISTS (
    SELECT 1
    FROM students st
    JOIN marks m ON st.student_id = m.student_id
    WHERE st.faculty_id = f.faculty_id
    AND m.marks_obtained < 40
);


-- sub-queries with 3 tables

-- 1 Find students who scored above the highet mark in a specific subject and are from a specific department
SELECT s.student_name, d.department_name, m.subject_name, m.marks_obtained
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
WHERE d.department_id = 1
AND m.subject_name = 'Physics'
AND m.marks_obtained = (
    SELECT MAX(m2.marks_obtained)
    FROM marks m2
    WHERE m2.subject_name = 'Physics'
);
select * from marks;


-- 2 Find faculty members who ern les than the minimum salary in their department and have students with low marks
SELECT d.department_head AS faculty_member, d.department_name, s.amount
FROM department d
JOIN salary s ON d.department_id = s.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
WHERE s.amount = (
    SELECT MIN(s2.amount)
    FROM salary s2
    WHERE s2.department_id = d.department_id
)
AND EXISTS (
    SELECT 1
    FROM students st
    JOIN marks m ON st.student_id = m.student_id
    WHERE st.department_id = d.department_id
    AND m.marks_obtained < 40
);
select * from salary;

select * from faculty;

select * from department;

select * from marks;

-- 3 find students who scored above the average marks in a specific subject and have a faculty member with a specific title
SELECT s.student_name, m.subject_name, m.marks_obtained, f.dean
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
JOIN faculty f ON s.faculty_id = f.faculty_id
WHERE m.subject_name = 'Physics'
AND m.marks_obtained > (
    SELECT AVG(m2.marks_obtained)
    FROM marks m2
    WHERE m2.subject_name = 'Physics'
)
AND f.dean = 'Dr. Alice Smith';


-- 4 find faculty members who earn more than the average salary in their deppartment and have students with high marks
SELECT f.dean AS faculty_member, f.faculty_name, s.amount
FROM faculty f
JOIN salary s ON f.faculty_id = s.faculty_id
WHERE s.amount > (
    SELECT AVG(s2.amount)
    FROM salary s2
    WHERE s2.faculty_id = f.faculty_id
)
AND EXISTS (
    SELECT 1
    FROM students st
    JOIN marks m ON st.student_id = m.student_id
    WHERE st.faculty_id = f.faculty_id
    AND m.marks_obtained > 80
);

-- 5 find students who scored above the highest marks in a specific subject, are from a specific department
-- and have a faculty member with a specific title
SELECT s.student_name, m.subject_name, m.marks_obtained, f.dean
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
JOIN faculty f ON s.faculty_id = f.faculty_id
WHERE d.department_name = 'Department of Physics'
AND m.subject_name = 'Physics'
AND f.dean LIKE 'Dr.%'
AND m.marks_obtained = (
    SELECT MAX(m2.marks_obtained)
    FROM marks m2
    WHERE m2.subject_name = 'Physics'
);

-- 6 find faculty members who earn less than the minimum salary in their department, have students 
-- with low marks, and are from a specific department
SELECT d.department_head AS faculty_member, d.department_name, s.amount
FROM department d
JOIN salary s ON d.department_id = s.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
WHERE d.department_name = 'Department of History'
AND s.amount < (
    SELECT MIN(s2.amount)
    FROM salary s2
    WHERE s2.department_id != d.department_id
)
AND EXISTS (
    SELECT 1
    FROM students st
    JOIN marks m ON st.student_id = m.student_id
    WHERE st.department_id = d.department_id
    AND m.marks_obtained < 40
);


-- sub-queries with 4 tables

-- 1 find students who scored above the average marks in their department and have a faculty member with a specific title
SELECT s.student_name, m.subject_name, m.marks_obtained, f.faculty_name
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
JOIN faculty f ON s.faculty_id = f.faculty_id
WHERE m.marks_obtained > (
    SELECT AVG(m2.marks_obtained)
    FROM marks m2
    JOIN students s2 ON m2.student_id = s2.student_id
    WHERE s2.department_id = s.department_id
)
AND f.faculty_name = 'Faculty of Science';


-- 2 find faculty members who earn more than aveage salary of their department and have students with high marks 

SELECT d.department_head AS faculty_member, d.department_name, s.amount
FROM department d
JOIN salary s ON d.department_id = s.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
WHERE s.amount > (
    SELECT AVG(s2.amount)
    FROM salary s2
    WHERE s2.department_id = d.department_id
)
AND EXISTS (
    SELECT 1
    FROM students st
    JOIN marks m ON st.student_id = m.student_id
    WHERE st.department_id = d.department_id
    AND m.marks_obtained > 80
);

-- 3 find students who scored above the average marks in their department and are taught by faculty members with a specific salary range
 SELECT s.student_name, m.subject_name, m.marks_obtained, d.department_head, s2.amount
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
JOIN salary s2 ON d.department_id = s2.department_id
JOIN faculty f ON s.faculty_id = f.faculty_id
WHERE m.marks_obtained > (
    SELECT AVG(m2.marks_obtained)
    FROM marks m2
    JOIN students s3 ON m2.student_id = s3.student_id
    WHERE s3.department_id = s.department_id
)
AND s2.amount BETWEEN 50000.00 AND 100000.00;

-- 4 find faculty members who earn less than the minimum saalry in their department and have students with low marks
SELECT d.department_head AS faculty_member, d.department_name, s.amount
FROM department d
JOIN salary s ON d.department_id = s.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
WHERE d.department_name = 'Department of History'
AND s.amount < (
    SELECT MIN(s2.amount)
    FROM salary s2
    WHERE s2.department_id != d.department_id
)
AND EXISTS (
    SELECT 1
    FROM students st
    JOIN marks m ON st.student_id = m.student_id
    WHERE st.department_id = d.department_id
    AND m.marks_obtained < 40
);

-- 5 find students who scored above the average marks in their department and are supervised by faculty members with a specific title and salary range
select s.student_name, m.marks_obtained, d.department_name, f.faculty_name, sa.amount
from students s
JOIN marks m on s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
JOIN faculty f ON f.faculty_id = f.faculty_id
JOIN salary sa ON f.faculty_id = sa.faculty_id
WHERE m.marks_obtained > (SELECT AVG(marks_obtained) FROM marks m2
JOIN students s2 ON m2.student_id = s2.student_id
WHERE s2.department_id = d.department_id)
AND sa.amount > 60000;


-- sub-queries with 5 tables

-- 1 find students with marks greater than the average marks in a department, faculty, and salary range
 SELECT s.student_name, m.subject_name, m.marks_obtained, d.department_head, s2.amount
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
JOIN salary s2 ON f.faculty_id = s2.faculty_id
WHERE m.marks_obtained > (
    SELECT AVG(m2.marks_obtained)
    FROM marks m2
    JOIN students s3 ON m2.student_id = s3.student_id
    WHERE s3.department_id = s.department_id
)
AND s2.amount BETWEEN 50000.00 AND 100000.00;

-- 2 find faculty with salary greater than average salary in a department, faculty and student count
SELECT d.department_head AS faculty_member, d.department_name, s.amount
FROM department d
JOIN salary s ON d.department_id = s.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
WHERE s.amount > (
    SELECT AVG(s2.amount)
    FROM salary s2
    WHERE s2.department_id = d.department_id
)
limit 10;


-- 3 find students who scored above the average marks in their department, are taught by faculty members
-- with a specific title, and belong to a specific saalry range
 SELECT s.student_name, m.subject_name, m.marks_obtained, d.department_head, s2.amount
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
JOIN salary s2 ON f.faculty_id = s2.faculty_id
WHERE m.marks_obtained > (
    SELECT AVG(m2.marks_obtained)
    FROM marks m2
    JOIN students s3 ON m2.student_id = s3.student_id
    WHERE s3.department_id = s.department_id
)
AND f.faculty_name = 'Faculty of Science'
AND s2.amount BETWEEN 50000.00 AND 100000.00;

-- 4 find faculty members who earn less than the minimum salary in their department, have students with low marks, and are from a specific department
SELECT d.department_head AS faculty_member, d.department_name, s.amount
FROM department d
JOIN salary s ON d.department_id = s.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
WHERE d.department_name = 'Department of History'
AND s.amount < (
    SELECT MIN(s2.amount)
    FROM salary s2
    WHERE s2.department_id != d.department_id
)
AND EXISTS (
    SELECT 1
    FROM students st
    JOIN marks m ON st.student_id = m.student_id
    WHERE st.department_id = d.department_id
    AND m.marks_obtained < 40
);


-- 5 find students who scored above the average marks in their department, are supervised by faculty
-- memebers with a specific title, and have faculty members earning a certain salary
SELECT s.student_name, m.subject_name, m.marks_obtained, d.department_head, s2.amount
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
JOIN salary s2 ON f.faculty_id = s2.faculty_id
WHERE m.marks_obtained > (
    SELECT AVG(m2.marks_obtained)
    FROM marks m2
    JOIN students s3 ON m2.student_id = s3.student_id
    WHERE s3.department_id = s.department_id
)
AND f.faculty_name = 'Faculty of Science'
AND s2.amount > 75000;

-- 6 find faculty members who earn more than the average salary in their department and have students
-- with high marks, while also being from a specific department
SELECT d.department_head AS faculty_member, d.department_name, s.amount
FROM department d
JOIN salary s ON d.department_id = s.department_id
JOIN faculty f ON d.faculty_id = f.faculty_id
WHERE d.department_name = 'Department of History'
AND s.amount > (
    SELECT AVG(s2.amount)
    FROM salary s2
    WHERE s2.department_id != d.department_id
)
AND EXISTS (
    SELECT 1
    FROM students st
    JOIN marks m ON st.student_id = m.student_id
    WHERE st.department_id = d.department_id
    AND m.marks_obtained > 40
);

-- 7 find studnets who scored above the highest mark in a specific subject, belong to a specific department,
-- and are taught by faculty members with a specific title and salry range
SELECT s.student_name, m.subject_name, m.marks_obtained, f.dean
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN department d ON s.department_id = d.department_id
JOIN faculty f ON s.faculty_id = f.faculty_id
WHERE d.department_name = 'Department of Physics'
AND m.subject_name = 'Physics'
AND f.dean LIKE 'Dr.%'
AND m.marks_obtained = (
    SELECT MAX(m2.marks_obtained)
    FROM marks m2
    WHERE m2.subject_name = 'Physics'
);





-- Multiple types of subqueries 

-- 1 single Row Subqueries
-- A single-row subquery returns only one row and can be used with comparison operators.
-- Example: Find students who scored more than the highest mark in a specific subject.



