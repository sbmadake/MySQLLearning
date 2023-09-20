set AUTOCOMMIT=false;

create table testTable(num int);
insert into testTable values(100);

select * from testTable;

set AUTOCOMMIT=false;

insert into testTable values(100);
select @@autocommit;

commit work;
rollback;

SELECT * FROM STATION, STATS 
WHERE STATION.ID = STATS.ID;
commit work;

INSERT INTO STATS VALUES (13, 1, 57.4, 0.31); 
INSERT INTO STATS VALUES (13, 7, 91.7, 5.15); 
INSERT INTO STATS VALUES (44, 1, 27.3, 0.18); 
INSERT INTO STATS VALUES (44, 7, 74.8, 2.11); 
INSERT INTO STATS VALUES (66, 1, 6.7, 2.10); 
INSERT INTO STATS VALUES (66, 7, 65.8, 4.52);


CREATE TABLE STATS 
(ID INTEGER REFERENCES STATION(ID), 
MONTH INTEGER CHECK (MONTH BETWEEN 1 AND 12), 
TEMP_F REAL CHECK (TEMP_F BETWEEN -80 AND 150), 
RAIN_I REAL CHECK (RAIN_I BETWEEN 0 AND 100), 
PRIMARY KEY (ID, MONTH));


SELECT ID, CITY, STATE FROM STATION;

INSERT INTO STATION VALUES (13, 'Phoenix', 'AZ', 33, 112); 
INSERT INTO STATION VALUES (44, 'Denver', 'CO', 40, 105); 
INSERT INTO STATION VALUES (66, 'Caribou', 'ME', 47, 68);
SELECT * FROM STATION;

SELECT * FROM STATION 
WHERE LAT_N > 39.7;


create table new_employee like employee;

drop table employee;

desc new_employee;

rollback;
truncate employee;

use mydatabase;


delete from employee where first_name like 't%';
select * from employee;


show variables;


insert into member(member_id,member_name) values(2,'tanish'),(3,'anish');

select member_id as 'id',member_name as 'name' from member;



show tables;


desc Member;

insert into member values(1,'member1','pune',current_date(),'monthly',2345,2,566);

select * from member;


show databases;

create table Member(member_id int(5),member_name varchar(30),member_address varchar(50),acc_open_date date,membership_type varchar(20),fees_paid int(4),max_books_allowed int(2), penalty_amount decimal(7,2));



SELECT @@GLOBAL.secure_file_priv;
SHOW VARIABLES LIKE "secure_file_priv"; 
set @@secure_file_priv = '';
use techm;


show tables;
desc employee;

select * from new_user2;

create table new_user2 like user;



create table employee (id int NOT null  auto_increment, name varchar(30),occupation varchar(40) not null, age int not null,primary key(id));


select * from  new_user;
create table new_user as select first_name,last_name from example.user;

desc user;
use example;

show tables;

create table person(personid int, firstname varchar(30),lastname varchar(20),address varchar(40));



show tables;


use mydatabase;





describe example.user;



use mydb;

desc user;

use example;

show tables from EXAMPLE;
select user(),current_date();


use mydatabase;

show tables;

create database mydatabase;




SELECT VERSION(), CURRENT_DATE;
seLeCt vErSiOn(), current_DATE;

show databases;