select *from ochestra 
WHERE show_id = 6
AND ochestra_member = 'american';



use confidence;
show tables;

select * from employed_workers;


select * from employed_workers
where employed_workers_age < 30
AND salary > 100000; 



use confidence;
show tables;

select * from employed_workers;

select * from employed_workers
WHERE employed_workers_age < 25
AND dob * '2002-03-30';



use confidence;
show tables;


select * from emplyed_workers;


WHERE employed_workers_id
AND dob * '2000-04-25';





create table church(
church_id int not null,
church_name varchar(200) not null,
founder_name varchar(200) not null,
pastor_name varchar(100) not null,
city_church varchar(200) not null,
church_address varchar(200) not null,
phone_number varchar(20) not null,
state_church varchar(200) not null,
church_capacity int not null
);

insert into church(church_id, church_name, 
founder_name, pastor_name, city_church, 
church_address, 
phone_number, state_church, church_capacity)
values(1009, "grace community chuch", "john smith", "peter johnson", "hope street", "lagos", '+2348012345678', "lagos", 500),
(1045, "grace of god", "john mole", "samuel godwin", "duphin street", "kano", '+2347046351267', "mary", 300),
(155, "assamblies of God", "ruben cathy", "clement joel", "silval street", "warri", '+234783945678', "matton", 200), 
(167, "wonders chapel", "davids mark", "johnson mark", "malawi street", "abuja", '+2348015645678', "abuja", 200),
(180, "prayer for all church", "abraham sun", "peter kain bob", "big street", "asaba", '+2348012345129', "delta", 700),
(124, "gospel root church", "grace hunter", "harmony kamel", "hoval clue street", "greek city", '+2348012345297', "belgium", 300),
(869, "high praise church", "prince ike", "godwin man", "chike wake", "desmond street", '+2347085673458', "rome", 100),
(462, "god is good church", "peter mark", "saint paul", "cruise street", "mark city", '+2347687492787', "abuja", 300),
(164, "Jehovah yawel church", "chiboy gad", "christ mathew", "clay street", "lagos", '+23476585645756', "benue", 400),
(487, "hope view church", "christopher king", "mercy ruth", "grace will street", "kogi", '+2348654765456', "kano", 800); 

select church_name
from church;

select phone_number
from church;

select * from church
where state_church = 'delta';

select * from church
where state_church = 'abuja';

select church_address
from church;


 select * from church
 where state_church = 'kano'
 or state_church = 'abuja'
 or pastor_name = 'johnson mark';
 
 select * from church
 where founder_name = 'prince ike'
 and city_church = 'chike wake';
 
 select * from church 
 where founder_name = 'abuja';
 
 select * from church
 where church_id and church_name = 'mary' 'matton' 'abuja';


select * from church
where phone_number = 'phone number';


select * from church
where pastor_name = 'clement joel';

select church_id, church_name
from church;
 


select * from church
where church_name like '%grace%';

select * from church
where state_church like '%kogi%';


select * from church
where state_church like '%lagos%';


select * from church
where founder_name like '%jo%';

show tables;

create table school(
school_id int not null,
school_name varchar(200) not null,
founder_name varchar(100) not null,
city_school varchar(200) not null,
school_address varchar(200) not null,
phone_number varchar(20) not null,
school_facilities varchar(200) not null,
school_capacity int not null
);

select * from school;

insert into school(school_id, school_name, founder_name, city_school, school_address, phone_number, school_facilities, school_capacity)
values(1007, "community high school", "bar.chikerue obi", "awka", "honey street", '+23408012343478', "black board", 2000 ),  
(1046, "community standard school", "mr chuks okoli", "lagos", "adebeyo street",  '+2347046351267', "chair", 500),
(1035, "community value school", "professor jerk", "anambra", "mark  street",  '+2347046341267', "white board", 3000),
(1048, "girls high school", "uncle sam", "enugu", "christopher street",  '+2347046341267', "chalk", 900),
(1065, "high value school", "mr great", "kano", "malik street", '+2347046357267', "ink", 1000),
(1045, "great learning school", "john melody", "abuja", "greek street",'+2347046651267', "marker", 1000),
(1065, "high value school", "mr maxwell", "ikeja", "marvelous street", '+2347046387267', "ink", 1000),
(1665, "learning field school", "mr jhonson", "imo", "globe street", '+2347076357267', "pen", 2000),
(1067, "st.mary school", "mr mark", "benin", "sweet street", '+2347046354267', "duster", 1000),
(1085, "st.paul school", "mr frank", "benue", "mabble street", '+2347046957267', "table", 1000);
                 
select * from school
where founder_name = 'uncle sam'
and school_id = 1048;


select * from school
where school_address = 'malik street'
and school_id = '1065';

show tables;


select * from school
where school_address = 'honey street'
and founder_name = 'bar.chikerue obi';


select * from school
where school_id = 1046
and school_name = 'community standard school';


select * from school
where city_school = 'anambra'
and school_facilities = 'white board';


select * from school
where phone_number = '+2347046341267'
and city_school = 'anambra';

select * from school
where city_school like '%awka%';

select * from school
where founder_name like '%bar.chikerue obi%';


select * from school
where school_id like '%1007%';

select * from school
where city_school like '%kano';

select * from school
where founder_name like 'uncle sam%';

select * from school;

Select city_school,
Sum(School_capacity)
from school
group  by city_school; 



select city_school,
sum(school_id)
from school
group by city_school;

select * from school;

select school_capacity,
sum(city_school)
from school
group by school_capacity;


select * from school;

select city-school,
count(city_school) as city_school_capacity_school
from school
group by city_scool;


create table supermarket(
product_id int not null,
product_name varchar(200) not null,
category varchar(200) not null,
quantity int not null,
price int not null,
payment_method varchar (200) not null,
sales_date date not null,
total_sales int not null,
location varchar (200) not null,
sales_rep varchar(200) not null,
customer_name varchar(200) not null
);
describe table supermarket;

select * from supermarket;

insert into supermarket(product_id, product_name, category, quantity, price, payment_method, sales_date, total_sales, location, sales_rep, customer_name)
values(100, "fan", "electronics", 10, 15000, "transfer", '2026-02-20', 30000, "lagos", "chioma","blessing"),
(101, "television", "electronics", 1, 100000, "transfer", '2025-03-10', 100000, "kano", "nkechi", "mark"),
(112, "matrass", "furniture", 2, 80000, "pos", '2025-01-10', 160000, "abuja", "marvelous", "chuks"),
(115, "curtain", "home deco", 15, 15000, "cash", '2026-03-23', 225000, "ikeja", "chinwe", "julie"),
(116, "cahir", "furniture", 5, 10000, "transfer", '2026-01-14', 100000, "lagos", "john", "mark"),
(113, "light fittings", "interior fixture", 15, 5000, "cash", '2025-11-17', 75000, "anambra", "chigozie", "glory"),
(122, "milk", "provision", 2, 15000, "pos", '2026-12-14', 30000, "imo", "emmanuel", "mathew"),
(117, "rice", "food", 1, 60000, "cash", '2025-01-18', 60000, "abia", "maxwell", "prince"),
(114, "phone", "electronics", 2, 150000, "transfer", '2026-01-25', 300000, "enugu", "tom", "cletus"),
(118, "pillow", "bedroom accssories", 5, 5000, "cash", '2026-04-12', 25000, "ibadan", "grace", "bob"),
(119, "shoe", "body wear", 3, 10000, "transfer", '2025-07-28', 30000, "benue", "ngozi", "amara"),
(120, "watch", "body wear", 2, 12000, "transfer", '2025-01-24', 24000, "asaba", "chima", "ifeoma"),
(121, "bread", "food", 5, 3000, "cash", '2026-02-20', 15000, "owerri", "jerry", "nonso"),
(122, "dustbin nylon", "kitchen use", 3, 3000, "cash", '2026-01-13', 9000, "cross river", "chijioke", "okay"),
(123, "drinks", "bevrages", 20, 2000, "pos", '2026-06-27', 40000, "kogi", "joy", "johnson");  

Select category,
Sum(total_sales)
from supermarket
group  by category;

Select product_name,
Sum(price)
from supermarket
group  by product_name;

select * from supermarket;

select payment_method,
sum(quantity)
from supermarket
group by payment_method;

select category,
sum(price) as price
from supermarket
group by category;

select payment_method,
count(*) as number_of_transfer,
sum(total_sales) as total_sales
from supermarket
group by payment_method;

select * from supermarket;


select payment_methood,
count(*) as number_of_transfer,
sum(total_sales) as total_sales
from super_market
group by payment_method;


 
select * from salestable;


use prod_sales;
select * from sales_table;


create database 
genAi_Modelling;

use genAi_Modelling;

create table faculty(faculy_id int primary key not null,
name varchar (200) not null,
dean varchar (200) not null,
number_of_dept int not null,
YOE date not null,
location varchar (200) not null,
insert into faculty(faculty_id, name, dean, number_of_dept,YOE, location)
values(1233, 'medical science', 'john Doe', 10, '2000-05-05', 'Epe'),
('1234', 'arts', 'ron weasley', 30, '1990-05-30', 'ojo'),
('1235', 'Engineering', 'tony nwosu', 8, '1980-04-25', 'lekki'),
('1236', 'social sceinces', 'mr williams Agadi', 15, '1984-08-30', 'ojo');


create table depertment(dept_id int primary key not null,
 name varchar(200) not null,
 faculty varchar (200) not null,
 student_count int not null,
 HOD varchar (200) not null,
 course_count int not null,
 lecturers_count int not null,
 faculty_id int not null,
 
 foreign key (faculty_id) refErences faculty(faculty_id);
 insert into depertment(dept_id, name, faculty, students_count, HOD, course_count, lecturers_count, faculty_id)
 values (1110, 'political science', 'social science', 3000, 'yinka wiilams', 30, 15, 1236);
 
 
 select * from faculty;
 select * from depertment;
 
 select depertment dept_id,
 faculty.name
 






create database studies;

use studies;

create table course(c_code int primary key not null,
credit int not null,
name varchar(200) not null,
depertment varchar(200) not null,
level int not null);


create table stdudent(std_id int primary key not null,
name varchar(200) not null,
reg_no int not null,
Dob date not null,
depertment varchar(150) not null,
level int not null,
YOA year not null,
status enum(


