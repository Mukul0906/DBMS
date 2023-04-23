# LAB QUESTION 3 ----
use mukuldb;
# create table Employee
create table EMPLOYEE ( EMPLOYEE_ID  int(6),
LAST_NAME VARCHAR(25),
JOB_ID VARCHAR(10),
SALARY double(8,2),
COMM_PCT double(4,2),
MGR_ID int(6),
DEPARTMENT_ID int(4));

# Insert data into EMPLOYEE table
insert into Employee values
(198, 'Connell', 'SH_CLERK', 2600, 2.5, 124 ,50),
(199, 'Grant', 'SH_CLERK', 2600, 2.2, 124, 50),
(200, 'Whalen', 'AD_ASST' ,4400 ,1.3 ,101 ,10),
(201, 'Hartstein', 'IT_PROG', 6000, null, 100, 20),
(202, 'Fay', 'AC_MGR' ,6500 ,null ,210 ,20),
(203, 'Mavris', 'AD_VP', 7500 ,null ,101 ,40),
(204, 'Baer', 'AD_PRES' ,3500 ,1.5 ,101 ,90),
(205, 'Higgins', 'AC_MGR', 2300, null, 101, 60),
(206, 'Gitz', 'IT_PROG' ,5000 ,null ,103 ,60),
(100, 'King', 'AD_ASST' ,8956 ,0.3 ,108 ,100),
(101, 'Kochar', 'SH_CLERK' ,3400 ,1.3 ,118 ,30);

# Display last_name, job_id, employee_id for each employee with employee_id appearing first.
select employee_id,last_name,job_id from Employee ;

# Display the details of all employees of department 60.
select * from Employee where DEPARTMENT_ID =60;

# Display the employee details of the employee who’s last_name is King.
select * from Employee where LAST_NAME ='king';

#. Display unique job_id from EMPLOYEE table. Give alias name to the column as JOB_TITLE.
select distinct job_id as ' JOB_TITLE' from employee;

# Display last_name, salary and salary increase of Rs300. Give the new column name as ‘Increased Salary’.
select last_name,salary, salary+300  as 'Increased Salary'from Employee;

#  Display last_name, salary and annual compensation of all employees, plus a onetime bonus 
# of Rs 100. Give an alias name to the column displaying annual compensation.
select last_name, salary ,'Rs.100' as 'annual compensation' from Employee;

# Display the details of those employees who get commission.
select * from employee where comm_pct >0;

# Display the details of those employees who do not get commission.
select * from employee where comm_pct <0.01;

# Display the Employee_id, Department_id and Salary all employees whose salary is greater than 5000.
select Employee_id,Department_id,salary  from employee where salary >5000;

# Display the Last_Name and Salary of all employees whose salary is between 4000 and 7000.
select Employee_id,Department_id,salary  from employee where salary between 4000 and 7000;

# Display the details of all employees whose salary is either 6000 or 6500 or 7000.
select * from employee where salary = 6000 or salary = 6500 or salary =7000;

# Display the details of all those employees who work either in department 10 or 20 or 30 or 50.
select * from employee where DEPARTMENT_ID = 10 or DEPARTMENT_ID = 20 or DEPARTMENT_ID =30 or DEPARTMENT_ID = 50;

#Display the details of all employees whose salary is not equal to 5000.
select * from Employee where salary != 5000;

# Display the details of all the CLERKS working in the organization.
select * from Employee where job_id like '___clerk';

# Update the job_id’s of the employees who earn more than 5000 to Grade_A.
update Employee set job_id = 'Grade_A' where salary>5000;

# Display the table EMPLOYEE after updating.
select * from Employee;

# Display the details of all those employees who are either CLERK or PROGRAMMER or ASSISTANT.
select * from Employee where job_id like '___clerk'or job_id like '___prog' or job_id like '___asst'; 

# Display those employees from the EMPLOYEE table whose designation is CLERK and salary is less than 3000.
select * from employee  where JOB_ID like '___clerk' and salary<3000;

# Display those employees Last_Name, Mgr_id from the EMPLOYEE table whose salary is above 3000 and work under Manager 101.
select last_name, Mgr_id from employee where salary >3000 and MGR_ID = 101;

