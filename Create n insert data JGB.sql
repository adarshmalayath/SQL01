use jayashree;

CREATE TABLE DEPARTMENTS
   (DEPARTMENT_ID varchar(40) primary key, 
	DEPARTMENT_NAME VARCHAR(30), 
	MANAGER_ID varchar(60), 
	LOCATION_ID varchar(40)
   );
select * from departments order by department_id;
Insert into DEPARTMENTS values (10,'Administration',200,1700),(20,'Marketing',201,1800),(30,'Purchasing',114,1700);

Insert into DEPARTMENTS values (40,'Human Resources',203,2400);
 Insert into DEPARTMENTS values (50,'Shipping',121,1500);
 Insert into DEPARTMENTS values (60,'IT',103,1400);
Insert into DEPARTMENTS values (70,'Public Relations',204,2700);
Insert into DEPARTMENTS values  (80,'Sales',145,2500);
 Insert into DEPARTMENTS values (90,'Executive',100,1700);
Insert into DEPARTMENTS values  (100,'Finance',108,1700);
 Insert into DEPARTMENTS values (110,'Accounting',205,1700);
Insert into DEPARTMENTS values  (120,'Treasury',null,1700);
 Insert into DEPARTMENTS values (130,'Corporate Tax',null,1700);
Insert into DEPARTMENTS values  (140,'Control And Credit',null,1700);
Insert into DEPARTMENTS values (150,'Shareholder Services',null,1700);
Insert into DEPARTMENTS values  (160,'Benefits',null,1700);
Insert into DEPARTMENTS values (170,'Manufacturing',null,1700);
Insert into DEPARTMENTS values (180,'Construction',null,1700);
Insert into DEPARTMENTS values  (190,'Contracting',null,1700);
Insert into DEPARTMENTS values  (200,'Operations',null,1700);
Insert into DEPARTMENTS values (220,'NOC',null,1700);
Insert into DEPARTMENTS values (230,'IT Helpdesk',null,1700);
Insert into DEPARTMENTS values (240,'Government Sales',null,1700);
Insert into DEPARTMENTS values  (250,'Retail Sales',null,1700);
Insert into DEPARTMENTS values  (260,'Recruiting',null,1700);
Insert into DEPARTMENTS values (270,'Payroll',null,1700);

CREATE TABLE SAL_GRADE
   (	GRADE VARCHAR(10)primary key, 
	MINSAL varchar(50), 
	MAXSAL varchar(50)
   );
insert into sal_grade values('A',20000,30000);

insert into sal_grade values('f',10000,19999),
('c',5000,9999),
('D',1000,4999),
('E',100,999);
select *from sal_grade;
drop table jayashree.employee;
desc employee;
CREATE TABLE EMPLOYEE
   (	EMPLOYEE_ID varchar(30) primary key, 
	FIRST_NAME VARCHAR(50), 
	LAST_NAME VARCHAR(50), 
	EMAIL VARCHAR (25), 
	PHONE_NUMBER VARCHAR(20), 
	HIRE_DATE DATE, 
	JOB_ID VARCHAR(10), 
	SALARY varchar(80), 
	cOMMISSION_PCT varchar(20), 
	MANAGER_Id varchar(60), 
	DEPARTMENT_ID varchar(40),foreign key(department_id) references departments(department_id)
   );






