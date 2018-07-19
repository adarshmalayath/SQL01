use jayashree;
show tables;

#1.display employee detail of account department
select  EMPLOYEE_ID,FIRST_NAME,departments.DEPARTMENT_NAME from employee  join departments 
on departments.DEPARTMENT_NAME='accounting';
#2.display department in which sunil work
select DEPARTMENT_NAME,FIRST_NAME from 
departments join employee where employee.FIRST_NAME='john';
#3.display for every department find out the 
#name of employee who is highest paid employee
select DEPARTMENT_NAME,FIRST_NAME,max(salary)
from departments join employee 
on employee.DEPARTMENT_ID=departments.DEPARTMENT_ID
group by DEPARTMENT_NAME;

#4.list the jobs employee not common to dept_id 20 & 30(set)
select JOB_ID,DEPARTMENT_NAME,d.DEPARTMENT_ID from 
employee join departments d where d.DEPARTMENT_ID not in(20,30);

#5.display the name of emplyee belonging to the department vishal
select FIRST_NAME,DEPARTMENT_ID from employee where department_id=
(select department_id from employee where first_name='lex');
#6.list the job with highest salary
select distinct(JOB_ID),max(salary) from employee group by JOB_ID;

#7.list the employeee name whose salary is greater
select First_name,last_name,salary from employee 
where salary>(select min(salary) from employee where department_id=20);

#8.list the details of employees earning more than highest paid manager
select * from employee where salary>
(select max(salary) from employee where job_id='ac_mgr');

#9.delete the dependants detail of employee gupta
savepoint A;
delete  from departments where department_id=
(select department_id from employee where last_name='gupta');



