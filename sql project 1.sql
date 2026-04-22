create database shopping_mall;
use shopping_mall;

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
order_date DATE not null,


FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


create database shopping_mall;
use shopping_mall;

show tables;

drop table Customers;
drop table items;
drop table order_items;
drop table orders;
drop table shopping_mall;

--- realestate 


create database real_estate;
use real_estate;

create table agents
(agents_id int primary key,
auto_increament varchar (200) not null,
name varchar (200) not null,
phone_number varchar (20) not null,
email varchar (100) not null
);


create table clients
(clients_id int primary key,
name varchar (200) not null,
phone_number varchar(20) not null,
email varchar (200) not null
);


create table properties
(property_id int primary key not null,
agent_id int not null,
address varchar (200) not null,
price decimal (12,2) not null
);


create table listings
(listing_id int primary key not null,
property_id int not null,
listing_type varchar(100) not null,
listing_date varchar(2000) not null
);

create table transactions
(transaction_id int primary key not null,
property_id int not null,
client_id int not null,
transaction_date varchar(200) not null,
amount decimal(12,2) not null,

foreign key (agent_id) references agents(agent_id),
foreign key (property_id) references(property_id),
foreign key (clients_id) references clients(client_id)

 






