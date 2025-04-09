create database hospital;
use hospital;


create table patients (
  patient_id int primary key,
  name varchar(100) not null,
  age int not null,
  gender varchar(10) not null,
  contact_number varchar(10) not null,
  address varchar(200) not null
);
insert into patients(patient_id, name, age, gender, contact_number, address) values
(101, 'john smith', 32, 'male', '9876543210', 'mumbai'),
(102, 'sarah lee', 28, 'female', '8765432109', 'thane'),
(103, 'rohit mehra', 45, 'male', '9988776655', 'pune'),
(104, 'meera desai', 35, 'female', '8877665544', 'nashik'),
(105, 'vijay pawar', 50, 'male', '8899001122', 'nagpur'),
(106, 'aarti sharma', 29, 'female', '7788996655', 'panvel'),
(107, 'om patil', 31, 'male', '7766554433', 'dombivli'),
(108, 'neha rao', 40, 'female', '6677889900', 'vasai'),
(109, 'prasad kulkarni', 38, 'male', '9988998877', 'solapur'),
(110, 'anita singh', 26, 'female', '7755664433', 'andheri');
select * from patients;


create table doctors (
  doctor_id int primary key,
  name varchar(100) not null,
  specialization varchar(50) not null,
  contact varchar(10) not null,
  email varchar(100) not null
);
insert into doctors(doctor_id, name, specialization, contact, email) values
(201, 'dr. anil sharma', 'cardiology', '9876541230', 'anil@hospital.com'),
(202, 'dr. seema gupta', 'pediatrics', '9876541231', 'seema@hospital.com'),
(203, 'dr. rajiv menon', 'orthopedics', '9876541232', 'rajiv@hospital.com'),
(204, 'dr. neeta kale', 'neurology', '9876541233', 'neeta@hospital.com'),
(205, 'dr. ramesh tiwari', 'dermatology', '9876541234', 'ramesh@hospital.com'),
(206, 'dr. meena iyer', 'gynecology', '9876541235', 'meena@hospital.com'),
(207, 'dr. manish mehta', 'general medicine', '9876541236', 'manish@hospital.com'),
(208, 'dr. sneha khan', 'ent', '9876541237', 'sneha@hospital.com'),
(209, 'dr. dev patel', 'dentist', '9876541238', 'dev@hospital.com'),
(210, 'dr. kavita rao', 'psychiatry', '9876541239', 'kavita@hospital.com');
select * from doctors;


create table appointments (
  appointment_id int primary key,
  patient_id int not null,
  doctor_id int not null,
  appointment_date date not null,
  time_slot varchar(20) not null,
  foreign key(patient_id) references patients(patient_id),
  foreign key(doctor_id) references doctors(doctor_id)
);
insert into appointments(appointment_id, patient_id, doctor_id, appointment_date, time_slot) values
(301, 101, 201, '2024-04-10', '10:00 AM'),
(302, 102, 202, '2024-04-11', '11:00 AM'),
(303, 103, 203, '2024-04-12', '12:00 PM'),
(304, 104, 204, '2024-04-13', '01:00 PM'),
(305, 105, 205, '2024-04-14', '02:00 PM'),
(306, 106, 206, '2024-04-15', '03:00 PM'),
(307, 107, 207, '2024-04-16', '04:00 PM'),
(308, 108, 208, '2024-04-17', '05:00 PM'),
(309, 109, 209, '2024-04-18', '06:00 PM'),
(310, 110, 210, '2024-04-19', '10:30 AM');
select * from appointments;

create table medications (
  medicine_id int primary key,
  name varchar(100) not null,
  patient_id int not null,
  dosage varchar(50) not null,
  frequency varchar(50) not null,
  foreign key(patient_id) references patients(patient_id)
);
insert into medications(medicine_id, name, patient_id, dosage, frequency) values
(401, 'paracetamol', 101, '500mg', 'twice a day'),
(402, 'amoxicillin', 102, '250mg', 'thrice a day'),
(403, 'metformin', 103, '500mg', 'once a day'),
(404, 'atorvastatin', 104, '10mg', 'once a day'),
(405, 'omeprazole', 105, '20mg', 'before meals'),
(406, 'ibuprofen', 106, '400mg', 'as needed'),
(407, 'cetirizine', 107, '10mg', 'at night'),
(408, 'azithromycin', 108, '500mg', 'for 3 days'),
(409, 'ranitidine', 109, '150mg', 'twice a day'),
(410, 'pantoprazole', 110, '40mg', 'before breakfast');
select * from medications;


create table bills (
  bill_id int primary key,
  patient_id int not null,
  amount int not null,
  payment_mode varchar(50) not null,
  bill_date date not null,
  foreign key(patient_id) references patients(patient_id)
);
insert into bills(bill_id, patient_id, amount, payment_mode, bill_date) values
(501, 101, 1200, 'cash', '2024-04-10'),
(502, 102, 800, 'gpay', '2024-04-11'),
(503, 103, 1500, 'credit card', '2024-04-12'),
(504, 104, 2000, 'upi', '2024-04-13'),
(505, 105, 1100, 'cash', '2024-04-14'),
(506, 106, 950, 'gpay', '2024-04-15'),
(507, 107, 1250, 'phonepe', '2024-04-16'),
(508, 108, 1000, 'cash', '2024-04-17'),
(509, 109, 1750, 'upi', '2024-04-18'),
(510, 110, 950, 'credit card', '2024-04-19');
select * from bills;


