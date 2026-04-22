create database football3;
use football3;

create table football3(
fb_id int NOT NULL not null primary key ,
first_name varchar(150) NOT NULL,
last_name varchar(100) NOT NULL,
dob date NOT NULL
);

alter table football3;

drop table football3;

insert into football3(fb_id, first_name, last_name, dob)
value(001, "CRISTAINO", "RONALDO", '1985-02-05'),
(002, "LAMINE", "YAMAL", '2007-09-25'),
(003, "LIONEL", "MESSI", '1990-05-07'),
(004, "KYLIAN", "MBAPPE", '2000-07-15'),
(005, "VIRGIL", "VAN DIJK", '1998-04-30'),
(006, "RUBEN", "DIAS", '2000-02-05');

show tables;

select * from football;

describe  table football;

select * from football
where first_name = 'CRISTAINO';

create user CONT@localhost identified by "dan00D";
Grant insert, alter, create, update on *.* to CONT@localhost;

create  user  bless@localhost identified by '';
Grant all privileges on *.* to bless@localhost;


create database prod_sales;

use prod_sales;

create table prod_sales(
prod_id int NOT NULL,
name varchar(150) NOT NULL,
prod_quantity int NOT NULL,
address varchar(200) NOT NULL,
prod_price int NOT NULL,
cost_price int NOT NULL,
company varchar(150) NOT NULL);

insert into prod_sales(prod_id, name, prod_quantity, address, prod_price, cost_price, company)
values( 015, "iphone", 200, "123 main street",8000, 6000, "apple_comp");



select * from prod_sales;

describe table prod_sales;

select * from prod_sales
where cost_price > 2000;

select * from prod_sales
where prod_price < cost_price;

select * from prod_sales
where prod_price = '26 may 2025';

select * from prod_sales
where expiry_date in ('2025-05-27','2025-05-26');


create database book7;

use book7;

create table book7(
book_id int NOT NULL,
book_name varchar(150) NOT NULL,
dop varchar(200) NOT NULL,
book_author varchar(300) NOT NULL,
book_price int NOT NULL,
gender varchar(500) NOT NULL,
country varchar(200) NOT NULL);

insert into book7(book_id, book_name, dop, book_author, book_price, gender, country)
values(1111, "a farewell to arms", '2013-07-23', "ernest heimingway", 3000, "male", "america" ),
(2000, "the shining", '2015-02-13', "stephen king", 4000, "male","america" ),
(2011, "the bell jar", '2020-05-20', "sylvia plath", 300, "male", "japan" ),
(2012, "the firm", '2012-06-25', "john grisham", 100, "male", "germany"),
(3111, "beloved", '2013-07-01', "tony morrison", 2000, "male","america" ),
(4111, "the tell-tale heart", '2013-04-13', "edgar allam poe", 1000, "male","japan" ),
(5111, "the adventure of tomsawyer", '2013-06-27', "mark twain", 500, "male", "japan" ),
(6111, "the grapes of wrath", '2013-12-28', "john steinbeck", 300, "male","germany" ),
(7111, "to kill a mocking bird", '2013-11-22', "harper lee", 2000, "male", "china" ),
(8111, "the old man and the sea", '2013-08-30', "ernest hemingway", 2000, "male","germny" );

describe book7;

select * from book7;

select * from book7
WHERE dop > '2015-02-13'
or country = "America";



create database employee3;

use employee3;

create table employee3(
employee_id int NOT NULL,
first_name varchar(150) NOT NULL,
last_name varchar(150) NOT NULL,
dob varchar(200) NOT NULL,
emp_address varchar(300) NOT NULL,
gender varchar(500) NOT NULL,
country varchar(200) NOT NULL);


insert into employee3(employee_id, first_name,last_name, dob, emp_address, gender, country)
values(3333, "john", "doe", '2000-10-30', "main street", "male", "america" ),
(4444, "okoro", "joseph", '2003-02-28', "10 abog junction", "male", "nigeria" ),
(5555, "adebayo", "kings", '2004-05-31', "5 miracle avenue", "male", "nigeria" ),
(6666, "precious", "olamide", '2005-08-11', "9 first avenue", "female", "nigeria" ),
(7777, "ava", "harper", '2006-03-21', "3 third avenue", "female", "nyc" ),
(8888, "sandra", "andrew", '2007-05-15', "19 main street", "female", "nyc" ),
(9999, "isabella", "smith", '2008-07-22', "oak avenue", "female", "nyc" );

select* from employee3;

select * from employee3
where country like '%ger%';

select * from employee3
where dob between 2000-01-01 and 2005-01-01;

select * from employee3
where country = 'nigeria'
and employee_id = 4444
and first_name = 'okoro';


select * from employee3
where country = 'nigeria'
or employee_id = 7777
or first_name = 'nyc'
and gender = 'female';

select* from employee3
where country = 'nigeria';

select* from employee3
where country = 'nyc';

select* from employee3
where gender = 'female';

select* from employee3
where gender = 'male';

select * from employee3
WHERE dob >= '2010-01-13'
or country = "nigeria";

select first_name, last_name, employee_id
from employee3
where country in ('nigeria', 'america');

/*select * from employee
where  age >= '25'
and working experience >= 1 year
and account = current_account
and must have a guarantor
else employee is !=
*/

create database property1;

use property1;

create table property1(
property_id int NOT NULL,
name varchar(250) NOT NULL,
location varchar(150) NOT NULL,
title varchar(200) NOT NULL,
price double NOT NULL,
size varchar(500) NOT NULL,
features varchar(200) NOT NULL);

insert into property1(property_id, name, location, title, price, size, features)
values(111, "land", "lagos", "paradise found", 50000000, "3 plot", "sunligth exposure" ),
(222, "resturant", "abuja", "sushi haven", 12000000, "50 seats", "outdoor seating" ),
(333, "land", "banana island", "green haven", 150000000, "5 plot", "soild quality" ),
(444, "resturant", "lagos", "the family table", 700000, "10 seats", "bar area" ),
(555, "hotel", "mainland", "the boutique hotel", 100000000, "150 rooms", "fitness center" ),
(666, "shopping mall", "america", "shopping center", 5000000, "medium", "outdoor spaces" ),
(777, "hospital", "lagos", "communuty hospital", 10000000, "large", "emergency department" ),
(888, "farm", "abuja", "organic farm", 500000, "large", "fields and crops" ),
(999, "school", "america", "high school", 100000000, "3 plot", "laboratories" ),
(1011, "hospital", "benin", "private hospital", 90000000, "small", "outpatient clinics" ),
(1111, "gas station", "anambra", "full service station", 10000000, "small", "fuel pumps" ),
(1211, "shopping mall", "ikeja", "the grand mall", 50000000, "medium", "variety of stores" ),
(1311, "resturant", "epe", "the food studio", 8000000, "large", "private dinning room" ),
(1411, "block industry", "victoria island", "block empire", 3000000, "2 plot", "sustainable materials" ),
(1511, "hotel", "america", "the luxury suites ", 250000000, "100 rooms", "swimming pools" );

select * from property1;
update property1
set price = 00;

update property1
set price = 50000000
where property_id =111;

update property1
set price = 100000000
where property_id =666;

update property1
set price = 150000000
where property_id =333;


select * from property1
where price = 100000000
and property_id = 999
and location = "america";

select * from property1
where price = 1000000
or property_id = 999;

select * from property1
where price = 250000000
and property_id = 1511
and location = "america";

select * from property1
where price = 50000000
or location = "ikeja"
or property_id = "222";

select property_id, name, location
from property1
where location in ("america", "abuja");

select property_id, title, location
from property1
where title in ("sushi haven", "block empire");


select * from property1
where price = 700000
and location = "lagos";

select property_id, name, location
from property1
where name in ("land", "resturant");

select * from property1
where features = 150000000
or property_id = "777"
or location = "america";

select * from property1
where name= 50000000
or title = "the luxury suites"
or property_id = "555";

select * from property1
where price  between 100000000 and 2500000000;

select * from property1
where property_id  between 111 and 999;

select * from property1
where location != 'abuja';

select * from property1
where features like 'sun%';

select * from property1
where features like 's%';

select * from property1
where features like '%ools';

create database product_sales3;

use product_sales3;

create table product_sales3(
prod_id int PRIMARY KEY NOT NULL,
name varchar(150) NOT NULL,
prod_quantity int NOT NULL,
address varchar(200) NOT NULL,
sales_price double NOT NULL,
cost_price double NOT NULL,
department varchar(150) NOT NULL
);

insert into product_sales3(prod_id, name, prod_quantity, address, sales_price, cost_price, department)
values( 011, "iphone", 10, "123 main street",8000, 6000, "marketing department"),
( 022, "gucci shirts", 20, "2 third avenue",1000, 600, "sales department"),
( 033, "gucci trousers", 25, "3 mirale street",80, 60, "operational department"),
( 044, "apple laptop", 50, "4 emmanuel street",500, 450, "support department"),
( 055, "apple tablet", 18, "2 avenue street",80, 65, "logistics department"),
( 066, "apple wristwatch", 15, "1 first avenue street",40, 18, "marketing department"),
( 077, "hoodies", 55, "8 jonz street",1000, 900, "support department"),
( 088, "jackets", 65, "12 ava street",900, 600, "sales department"),
( 099, "nike sneakers", 45, "amadol street",65, 60, "marketing department"),
( 111, "nike boots",57, "25 uche street ",100, 80, "support department"),
( 222, "shorts", 14, "2 paul street",80, 50, "operational department"),
( 333, "heels", 30, "234 elm street",60, 50, "logistics department"),
( 444, "sandals", 24, "15 oak avenue street",30, 17, "sales department"),
( 555, "bed sheets", 28, "7 maple street",100, 90, "operational department"),
( 666, "pillows", 11, " walnut street",70, 6000, "sales department");

select * from product_sales3;

select max(sales_price), department
from product_sales3
group by (department);

select min(cost_price), department
from product_sales3
group by (department);

select sum(sales_price), department
from product_sales3
group by (department);

select avg(sales_price), department
from product_sales3
group by (department);


create table product_sales3(
prod_id int PRIMARY KEY NOT NULL,
name varchar(150) NOT NULL,
prod_quantity int NOT NULL,
address varchar(200) NOT NULL,
sales_price double NOT NULL,
cost_price double NOT NULL,
department varchar(150) NOT NULL
);



























