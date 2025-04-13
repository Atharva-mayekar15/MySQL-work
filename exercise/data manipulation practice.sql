create database TCS;
use TCS;

create table department(
department_id int primary key auto_increment,
department_name varchar(100),
department_head varchar(100),
location varchar(100),
status varchar(50)
);
insert into department(department_name,department_head,location,status) values
('Information Technology','Vijay','Mumbai','Active'),
('Finance','Prem','Gurugram','Active'),
('Data Analytics','Om','New Delhi','Inactive'),
('Cloud Services','Shalini','Pune','Active'),
('Marketing','Abhi','Ahemadabad','Inactive'),
('Cyber Security','Prasad','Jammu & Kashmir','Sespended'),
('Data Science','Raj','Karnataka','Active'),
('Testing','Rishab','Mumbai','Inactive');

-- select queries
-- 1
select * from countries;
 
 -- 2 
 select department_id,department_name from department;
 
 -- 3 
 select * from department where department_name = 'Testing';
 
 -- 4 
 select * from department where location = "Mumbai";
 
 -- 5 
 select count(*) as total_departments from department;
 
 -- 6 
 select * from department where status like 'Active%';
 
 -- 7 
 select * from department order by department_name;
 
 -- 8 
 select * from department where char_length(department_name) > 20;
 
 -- 9 
     select * from department where department_name !='Testing';
 
 -- 10
 select * from department limit 5;
 
 -- alter queries
 
 -- 1
 alter table department 
 add column Department_description varchar(200);
 
 -- 2
 alter table department
 modify column Department_description varchar(200) unique;
 
 -- 3
 alter table department
 add column department_symbol varchar(50);
 
 -- 4
 alter table department
 change column Department_description description varchar(200);
 
 -- 5
 alter table department
 drop column description;
 
 -- 6
 alter table department
 add constraint unique_department unique (department_name);
 
 -- 7
 alter table department
 add column department_ratings varchar(100) unique;
 
 -- 8 
 alter table department
 drop column department_ratings;
 
 -- 9
alter table department
add column established_date date;

-- 10
alter table department
modify column established_date datetime;

-- delete queries

-- 1
delete from department
where department_name='testing';

-- 2
delete from department
where location = 'Mumbai';

-- 3
delete from department
where status ='Active';

-- 4
delete from department
where established_date < '2000-01-01';

-- 5 
delete from department
where location ='New Delhi';

-- 6
delete from department
where department_head ='prasad';

-- 7 
delete from department
where status ='Inactive';

-- 8 
delete from department
where department_name ='Data Analytics' and status = 'Active' ;

-- 9 
delete from department;

-- 10 
delete from department
where departent_name like 'D%';

-- rename

-- 1 
alter table department rename to specilities;

--  2 
alter table specilities rename to department;

-- 3 
alter table department rename column department_id to id;

-- 4 
alter table department rename column department_head to head;

-- 5 
alter table department rename column location to department_location;

-- 6 
alter table department rename column status to working,
rename column department_name to name;

-- update queries

-- 1
update  department
set status = 'Active'
where department_name ='Data Analytics';

-- 2  
update department 
set location='pakistan'
where department_name= 'Marketing';

-- 3 
update department
set department_head = 'Vivek'
where department_name = 'Cloud Services';

-- 4 
update department
set location ='Thane'
where department_name ='Finance';

-- 5 
update department
set status ='Sespended'
where department_name = 'Information Technology';

-- 6 
update department
set department_name ='Services'
where department_head ='Prasad';

-- 7 
update department
set location = 'Sedney'
where department_name ='Cyber Security';

-- 8 
update department
set status ='Not Available'
where department_head= 'Prem';

-- 9 
update department
set department_name = 'Teaching'
where department_id =3;

-- 10 
update department
set location ='Antartica', department_head ='Shobit'
where department_name ='teaching';