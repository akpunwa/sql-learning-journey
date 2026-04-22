create database block_industry;
use block_industry;

create table nine_inches_block(
block_id int primary key not null,
materials varchar(200) not null,
price double not null,
wages int not null,
quantity double not null,
block_date  date not null
);

describe table nine_inches_block;

create table six_inches_block(
block_id int primary key not null,
materials varchar(200) not null,
price double not null,
wages int not null,
quantity double not null,
block_date  date not null
);

select * from six_inches_block;

insert into six_inches_block(block_id, materials, price, wages, quantity, block_date)
values(001, "cement", 1000, 2000, 5000, '2026-03-30'



Here's a basic SQL example for employee data:

-- Create employee table
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  position VARCHAR(255),
  department VARCHAR(255),
  salary DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO employees (id, name, position, department, salary)
VALUES
  (1, 'John Doe', 'Manager', 'HR', 500000.00),
  (2, 'Jane Smith', 'Developer', 'IT', 350000.00);

-- Query employees
SELECT * FROM employees WHERE department='IT';
