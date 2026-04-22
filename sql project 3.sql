create database confidence;
use confidence;

create table employed_workers(
employed_workers_id int not null,
employed_workers_name varchar(200) not null,
dob date not null,
employed_workers_age int not null,
salary int not null
);
truncate table employed_workers;
select * from employed_workers;

insert into employed_workers(employed_workers_id, employed_workers_name, dob, employed_workers_age, salary)
values(0561, "confidence", '1987-11-27', 38, 200000),
(611, "chigozie", '2007-03-30', 17, 300000),
(6373, "BLESSING", '2004-02-14', 22, 100000);

describe employed_workers;

select * from employed_workers
where employed_workers_age ='17';


