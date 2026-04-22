create database product;
use product;

create table product(
pro_id int auto_increment
PRIMARY KEY NOT NULL,
name varchar(100) NOT NULL,
price int(100) NOT NULL);

insert into product(pro_id, name, price)
values("iphone", $900),
("nike shoes", $500),
("coca-cola", $950),
("dell laptop", $600),
("adidas boot", $400),
("gucci shirt", $100),
("playstation", $260),
("lg frige", $1000),
("apple watch", $300),
("sony headphones", $700);

select * from product;


use product;

create user chigozie_12@localhost identified by 'chigoABC234';
Grant  create, alter, update on *.* to chigozie_12@localhost;
create user Gozie_5@localhost identified by 'Gozie345ABC';
Grant all privileges on *.* to Gozie_5@localhost;




show Grants for chigozie_12@localhost;

create user daniel_3@localhost identified by "dan00D";
Grant insert, alter, create, update on *.* to daniel_3@localhost;

create  user  emmma2@localhost identified by 'emma23ACD';
Grant all privileges on *.* to emmma2@localhost;


show Grants for daniel_3@localhost;
show Grants for emmma2@localhost;


