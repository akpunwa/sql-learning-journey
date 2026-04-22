CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    name VARCHAR(200),
    unit INT NOT NULL
);

CREATE TABLE Enrollment (
    std_id INT,
    course_id INT,
    PRIMARY KEY (std_id, course_id),
    FOREIGN KEY (std_id) REFERENCES Student(std_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);




use studies;

create table Course(
C_Code int Primary key Not NULL, 
Credit int NOT NULL, 
Name varchar(200) NOT NULL,
Department varchar(200) NOT NULL,
Level int NOT NULL
);

create table Student(
Std_ID int Primary Key NOT NULL,
Name varchar(200) NOT NULL,
Reg_No int NOT NULL,
DOB date NOT NULL,
Department varchar(150) NOT NULL,
Level int NOT NULL,
YOA Year NOT NULL,
Status enum('Active', 'Suspended', 'Graduated', 'Expelled', 'Withdrawn', 'Deferred', 'Post Graduate', 'Undergraduate'),
Address text NOT NULL,
Tel varchar(16) NOT NULL,
Email varchar(150) NOT NULL,
CGPA decimal NOT NULL
);


show tables;
describe course;
describe student;

create table Enrolment(
C_Code int, 
Std_ID int,

FOREIGN KEY(C_Code) REFERENCES Course(C_Code),
FOREIGN KEY(Std_ID) REFERENCES Student(Std_ID)

);

describe enrolment;

[3/24, 2:05 PM] Mr Basil Compunter Institute: Database Modelling/Normalization 

show databases;
use GenAi_modelling;

Show tables;


create table Faculty(
Faculty_ID int Primary Key NOT NULL,
Name Varchar(200)  NOT NUll,
Dean varchar(200) NOT NULL,
Number_Of_Dept int NOT NULL,
YOE Date NOT NULL,
Location varchar(200) NOT NULL
);

create table Department(
Dept_ID int Primary Key NOT NULL,
Name varchar(200) NOT NULL,
Faculty varchar(200) NOT NULL,
Student_Count int NOT NULL,
HOD varchar(200) NOT NULL,
Course_Count int NOT NULL,
Lecturers_Count int NOT NULL,

Faculty_ID int NOT NULL,
FOREIGN KEY(Faculty_ID) REFERENCES Faculty(Faculty_ID)
); 


Show tables;

Insert into Faculty(Faculty_ID, Name, Dean, Number_Of_Dept, YOE, Location)
			Values (1233, 'Medical Science', 'John Doe', 10, '2000-05-05', 'Epe'),
				   (1234, 'Arts', 'Ron Weasley', 30, '1990-05-30', 'Ojo'),
				   (1235, 'Engineering', 'Tony Nwosu', 8, '1980-04-25', 'Lekki'),
                   (1236, 'Social Sciences', 'Mr Williams Engadi', 15, '1984-08-30', 'Ojo');



Insert into Department(Dept_ID, Name, Faculty, Student_Count, HOD, Course_Count, Lecturers_Count, Faculty_ID)
			Values(1110, 'Information System', 'Science and Technology',  3000, 'Yinka Williams', 30, 10, 8888);

Select * from Faculty;
sELECT * from Department;
[3/24, 7:57 PM] +234 802 307 6424: Create database GenAi_Modelling;
Use GenAi_Modelling; 
Create table Faculty(Faculty_id int Primary key Not Null, Name varchar(200) Not Null, Dean varchar(200) Not Null, Number_of_Dept int Not NUll, YOE Date Not Null, Location varchar(200) Not Null);
Insert into Faculty(Faculty_ID, Name, Dean, Number_of_Dept, YOE, Location)
Values (1233, 'Medical Sciences', 'John Doe', 10, '2000-05-05', 'Epe'),
	   (1234, 'Arts', 'Ron Weasley', 30, '1990-05-30', 'Ojo'),
       (1235, 'Engineering', 'Tony Nwosu', 8, '1980-04-25', 'Lekki'),
       (1236, 'Social Sciences', 'Mr Williams Angadi', 15, '1984-08-30', 'Ojo');

Create table Department(Dept_ID int Primary key Not Null, Name varchar(200) Not Null, Faculty varchar(200) Not Null, Student_Count int Not Null, HOD varchar(200) Not Null, Course_Count int Not Null, Lecturers_Count int Not NUll,
Faculty_ID int Not NUll, FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID));       
Insert into Department(Dept_ID, Name, Faculty, Student_Count, HOD, Course_Count, Lecturers_Count, Faculty_ID)
Values (1110, 'Political Science', 'Social Sciences', 3000, 'Yinka Williams', 30, 15, 1236);

Select * from Faculty;
Select * from Department;
 show tables;
Select * from Department;

SELECT Department.Dept_ID,
Faculty.Name,
Department.Name
FROM Department
INNER JOIN Faculty ON Department.Faculty= Faculty.Name;
 CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    name VARCHAR(200),
    unit INT NOT NULL
);

CREATE TABLE Enrollment (
    std_id INT,
    course_id INT,
    PRIMARY KEY (std_id, course_id),
    FOREIGN KEY (std_id) REFERENCES Student(std_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);


create database studies;

use studies;

create table Course(
C_Code int Primary key Not NULL, 
Credit int NOT NULL, 
Name varchar(200) NOT NULL,
Department varchar(200) NOT NULL,
Level int NOT NULL
);

create table Student(
Std_ID int Primary Key NOT NULL,
Name varchar(200) NOT NULL,
Reg_No int NOT NULL,
DOB date NOT NULL,
Department varchar(150) NOT NULL,
Level int NOT NULL,
YOA Year NOT NULL,
Status enum('Active', 'Suspended', 'Graduated', 'Expelled', 'Withdrawn', 'Deferred', 'Post Graduate', 'Undergraduate'),
Address text NOT NULL,
Tel varchar(16) NOT NULL,
Email varchar(150) NOT NULL,
CGPA decimal NOT NULL
);


show tables;
describe course;
describe student;

create table Enrolment(
C_Code int, 
Std_ID int,

FOREIGN KEY(C_Code) REFERENCES Course(C_Code),
FOREIGN KEY(Std_ID) REFERENCES Student(Std_ID)
);

create table Course(
C_Code int Primary key Not NULL, 
Credit int NOT NULL, 
Name varchar(200) NOT NULL,
Department varchar(200) NOT NULL,
Level int NOT NULL,

Dept_ID int NOT NULL,
FOREIGN KEY(Dept_ID) REFERENCES Department (DEPT_ID)
);

create table Student(
Std_ID int Primary Key NOT NULL,
Name varchar(200) NOT NULL,
Reg_No int NOT NULL,
DOB date NOT NULL,
Department varchar(150) NOT NULL,
Level int NOT NULL,
YOA Year NOT NULL,
Status enum('Active', 'Suspended', 'Graduated', 'Expelled', 'Withdrawn', 'Deferred', 'Post Graduate', 'Undergraduate'),
Address text NOT NULL,
Tel varchar(16) NOT NULL,
Email varchar(150) NOT NULL,
CGPA decimal NOT NULL,

Dept_ID int NOT NULL,

FOREIGN KEY (Dept_ID) REFERENCES Department(DEPT_ID)
);

Create table Faculty(
Faculty_ID int PRIMARY KEY NOT NULL,
Name varchar(200) NOT NULL,
Dept_Counts int NOT NULL,
Dean varchar(150) NOT NULL,
Location varchar(100) NOT NULL
);

Create table Department(
Dept_ID int Primary Key NOT NULL,
Name varchar(200) NOT NULL,
HOD varchar(200) NOT NULL,
Student_Count int NOT NULL,
Lecturers_Count int NOT NULL,

Faculty_ID int NOT NULL,
FOREIGN KEY(Faculty_ID) REFERENCES Faculty(Faculty_ID)
);
 
create table Enrolment(
C_Code int, 
Std_ID int,
Dept_ID int,
Faculty_ID int,

FOREIGN KEY(C_Code) REFERENCES Course(C_Code),
FOREIGN KEY(Std_ID) REFERENCES Student(Std_ID),
FOREIGN KEY(Dept_ID) REFERENCES Department(Dept_ID),
FOREIGN KEY(Faculty_ID) REFERENCES Faculty(Faculty_ID)
);

use studies;
show tables;




-- OUR MODELLING --

Create table Faculty(
Faculty_ID int PRIMARY KEY NOT NULL,
Name varchar(200) NOT NULL,
Dean varchar(150) NOT NULL,
Location varchar(100) NOT NULL
);




create table Student(
Std_ID int Primary Key NOT NULL,
Name varchar(200) NOT NULL,
Reg_No int NOT NULL,
DOB date NOT NULL,
Level int NOT NULL,
YOA Date NOT NULL,
Status enum('Active', 'Suspended', 'Graduated'),
Address text NOT NULL,
Tel varchar(16) NOT NULL,
Email varchar(150) NOT NULL,
CGPA decimal(4,2) NOT NULL
);

create table Course(
C_Code int Primary key Not NULL, 
Credit int NOT NULL, 
Name varchar(200) NOT NULL,
-- Semester varchar(200) NOT NULL,
Semester varchar(200) Check(Semester in ('First', 'Second'))
);

create table Enrolment(
C_Code int, 
Std_ID int,


FOREIGN KEY(C_Code) REFERENCES Course(C_Code),
FOREIGN KEY(Std_ID) REFERENCES Student(Std_ID)


create database modelling;
show tables;





-- confidence


Create table shopping_mall(
shopping_mall_ID int PRIMARY KEY NOT NULL,
Name varchar(200) NOT NULL,
country varchar(100) NOT NULL,
Location varchar(100) NOT NULL
);

create table items(
items_id int Primary key Not NULL, 
category varchar(200) NOT NULL, 
Name varchar(200) NOT NULL,
price int (100) NOT NULL
);

create table order_items(
order_item_id int  Primary key,
items_id int Not NULL, 
order_id int NOT NULL,


foreign key (order_id) references orders(order_id),
foreign key (items_id) references items(items_id)
);

create table customers(
Customer_id int Primary key Not NULL, 
Name varchar(200) NOT NULL,
state varchar(200) not null,
email varchar (200) not null
);

create table orders(
order_id int primary key not null,
customer_id int not null,
shopping_mall_id int not null,
order_date DATE not null,


FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
foreign key (shopping_mall_ID) references shopping_mall(shopping_mall_ID)
);
 
 drop table shopping_mall cascade; 
 show tables;
 
set foreign_key_checks = 0;
drop table stores;  

 
create table stores(
store_ID int Primary Key NOT NULL,
Name varchar(100) NOT NULL,
shopping_mall_id int not null
);

show databases;
use confidence;



---- Enrolment Modelling ------

Create table Student(
Std_ID int PRIMARY KEY NOT NULL,
Name varchar(200) NOT NULL,
Address Text NOT NULL,
Email varchar(100) UNIQUE NOT NULL,
Tel varchar(16) NOT NULL,
Zip_Code int NOT NULL,
City varchar(100) NOT NULL,
Nationality varchar(100) NOT NULL
);

create table Course(
C_Code int Primary key Not NULL, 
Credit int NOT NULL, 
Name varchar(200) NOT NULL,
Semester varchar(200) Check(Semester in ('First', 'Second'))
);



create table Enrolment(
C_Code int, 
Std_ID int,


FOREIGN KEY(C_Code) REFERENCES Course(C_Code),
FOREIGN KEY(Std_ID) REFERENCES Student(Std_ID)
);

Describe student;

Insert into Student(Std_ID, Name, Address, Email, Tel, Zip_Code, City, Nationality)
Values(1125, 'Seema Sharma', 'Sector 36', 'seemasharma@gmail.com', '+9149944764',  87534, "Gurugram", 'India');

Select * from Student;

Describe course;

Insert Into Course(C_Code, Credit, Name, Semester)
Values(8925, 80, 'Java Proggramming', 'First');

Select * from Student;
Select * from Course;

Describe enrolment;

Insert Into Enrolment(C_Code, Std_ID)
Values(83884, 98875





