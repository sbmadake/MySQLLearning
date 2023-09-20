use mydatabase;
select * from employee;

select * from `5000 sales records`;
create table temp (id int);


-- CREATE TABLE onlinecustomers (customerid INT PRIMARY KEY IDENTITY(1,1) ,CustomerName VARCHAR(100) 
-- ,CustomerCity VARCHAR(100) ,Customermail VARCHAR(100));



-- create database 

-- SELECT customerName, customercity, customermail, ordertotal,salestotal FROM onlinecustomers AS c FULL JOIN
--    orders AS o
--    ON c.customerid = o.customerid
--    FULL JOIN
--    sales AS s
--    ON o.orderId = s.orderId;



-- SELECT customerName, customercity, customermail, ordertotal,salestotal
-- FROM onlinecustomers AS c
--    INNER JOIN
--    orders AS o
--    ON c.customerid = o.customerid
--    LEFT JOIN
--    sales AS s
--    ON o.orderId = s.orderId
--    WHERE s.salesId IS NULL
--     
--     
--     
--     

-- SELECT customerName, customercity, customermail, salestotal
-- FROM onlinecustomers AS oc
--    INNER JOIN
--    orders AS o
--    ON oc.customerid = o.customerid
--    INNER JOIN
--    sales AS s
--    ON o.orderId = s.orderId



-- CREATE TABLE orders (orderId INT PRIMARY KEY IDENTITY(1,1) , customerid INT  ,
-- ordertotal float ,discountrate float ,orderdate DATETIME);

-- CREATE TABLE sales (salesId INT PRIMARY KEY IDENTITY(1,1),orderId INT,salestotal FLOAT);

--  
 
-- INSERT INTO [dbo].[onlinecustomers]([CustomerName],[CustomerCity],[Customermail]) VALUES (N'Salvador',N'Philadelphia',N'tyiptqo.wethls@chttw.org');
-- INSERT INTO [dbo].[onlinecustomers]([CustomerName],[CustomerCity],[Customermail]) VALUES (N'Gilbert',N'San Diego',N'rrvyy.wdumos@lklkj.org');
-- INSERT INTO [dbo].[onlinecustomers]([CustomerName],[CustomerCity],[Customermail]) VALUES (N'Ernest',N'New York',N'ymuea.pnxkukf@dwv.org');
-- INSERT INTO [dbo].[onlinecustomers]([CustomerName],[CustomerCity],[Customermail]) VALUES (N'Stella',N'Phoenix',N'xvsfzp.rjhtni@rdn.com');
-- INSERT INTO [dbo].[onlinecustomers]([CustomerName],[CustomerCity],[Customermail]) VALUES (N'Jorge',N'Los Angeles',N'oykbo.vlxopp@nmwhv.org');
-- INSERT INTO [dbo].[onlinecustomers]([CustomerName],[CustomerCity],[Customermail]) VALUES (N'Jerome',N'San Antonio',N'wkabc.ofmhetq@gtmh.co');
-- INSERT INTO [dbo].[onlinecustomers]([CustomerName],[CustomerCity],[Customermail]) VALUES (N'Edward',N'Chicago',N'wguexiymy.nnbdgpc@juc.co');
--  

--  
-- INSERT INTO [dbo].[orders]([customerid],[ordertotal],[discountrate],[orderdate]) VALUES (3,1910.64,5.49,CAST('03-Dec-2019' AS DATETIME))
-- INSERT INTO [dbo].[orders]([customerid],[ordertotal],[discountrate],[orderdate]) VALUES (4,150.89,15.33,CAST('11-Jun-2019' AS DATETIME))
-- INSERT INTO [dbo].[orders]([customerid],[ordertotal],[discountrate],[orderdate]) VALUES (5,912.55,13.74,CAST('15-Sep-2019' AS DATETIME))
-- INSERT INTO [dbo].[orders]([customerid],[ordertotal],[discountrate],[orderdate]) VALUES (7,418.24,14.53,CAST('28-May-2019' AS DATETIME))
-- INSERT INTO [dbo].[orders]([customerid],[ordertotal],[discountrate],[orderdate]) VALUES (55,512.55,13.74,CAST('15-Jun-2019' AS DATETIME))
-- INSERT INTO [dbo].[orders]([customerid],[ordertotal],[discountrate],[orderdate]) VALUES (57,118.24,14.53,CAST('28-Dec-2019' AS DATETIME))

--  
-- INSERT INTO [dbo].[sales]([orderId],[salestotal]) VALUES (3,370.95);
-- INSERT INTO [dbo].[sales]([orderId],[salestotal]) VALUES (4,882.13);
-- INSERT INTO [dbo].[sales]([orderId],[salestotal]) VALUES (12,370.95);
-- INSERT INTO [dbo].[sales]([orderId],[salestotal]) VALUES (13,882.13);
-- INSERT INTO [dbo].[sales]([orderId],[salestotal]) VALUES (55,170.95);
-- INSERT INTO [dbo].[sales]([orderId],[salestotal]) VALUES (57,382.13);










select d.departmentname,s.studentname,s.dateofbirth from departments d right join students s on d.departmentid=s.departmentid;


select d.departmentid,d.departmentname,s.studentname from departments d left join students s on d.departmentid=s.departmentid;


select * from departments;

select d.departmentname,s.studentname from departments d inner join students s on d.departmentid=s.departmentid;



select * from students;

select * from Departments;

insert into Departments values (10,'Finance');
insert into Departments values (20,'HR');

show tables;

CREATE TABLE Departments (
	DepartmentId int NOT NULL PRIMARY KEY,
	DepartmentName NVARCHAR(50) NULL
);

desc students;
drop table Students;

insert into students values(102,'tanish',20,'1990-03-02');
select * from students;
insert into students values(101,'tanish',10,'1990-03-02');
CREATE TABLE Students(
	StudentId int PRIMARY KEY NOT NULL,
	StudentName NVARCHAR(50) NULL,
	DepartmentId int NOT NULL,
	DateOfBirth DATE NULL,
	FOREIGN KEY(DepartmentId) REFERENCES Departments(DepartmentId)
);

INSERT INTO Departments VALUES(1, 'IT');
INSERT INTO Departments VALUES(2, 'Arts');

INSERT INTO Students(studentid,StudentName,DepartmentId) VALUES(1,'John', 1);



select distinct address,department_id from employee;



select distinct address from employee;

select * from new_emp;

create table new_emp as (select email from employee);
select department_id, count(*) as myCount from employee group by department_id having myCount > 2;


select * from employee;
select joining_date, count(*) from employee group by joining_date;
select department_id, count(*) from employee group by department_id;

desc employee;

insert into employee values (1,"kamalesh",'patil','bangalore','kamalesh@gmail.com',20,'2020-03-03');
insert into employee values (2,"tarun",'sharma','chennai','tarun@gmail.com',10,'2020-03-03');
insert into employee values (3,"minal",'mishra','delhi','mianl@gmail.com',30,'2020-03-03');
insert into employee values (4,"amrendra",'taneja','agra','amrendra@gmail.com',20,'2020-03-03');
insert into employee values (5,"virat",'mishara','delhi','virat@gmail.com',20,'2020-03-03');
insert into employee values (6,"sachin",'patil','mumbai','sachin@gmail.com',10,'2020-03-03');

desc employee;

alter table new_employee rename to employee;
select * from employee;
show tables;




-- -----------------------------
update person set email=replace(email,'@gmail.com','@mymail.com') where personid=2;


select * from person;
update person set email='paresh1223@gmail.com' where personid=2;

insert into person values(2,'paresh','1984-02-04','sharma','delhi','paresh@gmail.com');
insert into person values(1,'kranti','1982-02-03','patil','pune','kranti@gmail.com');




alter table new_person rename to person;
desc new_person;  -- new table
alter table person change column address peradd varchar(40);

alter table person add dateofbirth date after firstname;
alter table person modify column dateofbirth year;
alter table person modify column email varchar(40);
desc person;
alter table person drop column dataofbirth;
alter table person add email varchar(20);

select * from person;

use mydatabase;
show tables;

show databases;