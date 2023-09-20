CREATE DATABASE hibernateAnnotationsDb;

/* USE THE NEWLY CREATED DATABASE */
USE hibernateAnnotationsDb;

/* CREATING TABLE */
CREATE TABLE student (id INT(11) NOT NULL AUTO_INCREMENT, name VARCHAR(20) DEFAULT NULL, age INT(5)  DEFAULT NULL, PRIMARY KEY (id));

/* DESC TABLE */
DESC student;

desc employee;
show tables;
use techm;


select * from stock;

desc stock;




create table stock(stockid int(10),stock_code varchar(10),stock_name varchar(20), primary key(stockid));


use hibernate;

create database hibernate;


select version();
show databases;
use example;
select * from user;
show tables;

use springbootdb;
show tables;

create database springbootdb;


create table python_employee(id int NOT NULL,name varchar(30) NOT NULL, photo BLOB NOT NULL, biodata BLOB NOT NULL, primary key(id));

describe python_employee;


DELIMITER $$

use pythondatabase$$
CREATE PROCEDURE get_laptop (IN d_id int)
BEGIN
select * from Laptop where id =d_id;
END $$
DELIMITER ;



select * from laptop;
INSERT INTO LAPTOP(id,name,price,purchase_date)
                          values (1,'DELL XPS',78000,'2020-05-20');

use pythondatabase;
show tables;
drop table Laptop;
show databases;



create database mydb;
use mydb;

create table ebookshop(id int,title varchar(50),author varchar(50), price float,qty int);


insert into ebookshop values(1002,"Java for dummies", "Tan Ah Teck" ,11.1,11);

create table emp(empid int,name varchar(30));
create database inspiration_db;

use inspiration_db;
select * from ebookshop;
	
use springhibernate;

use mysql;
use example;

show databases;
use sys;
select * from user;
use techm;
select * from user;
show tables;
select * from slow_log;

drop table `user`;
create database techm;