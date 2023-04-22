# LAB QUESTION 2 --- 
use mukuldb;
# create table EMP1 
create table EMP1 (ID  int(2),
Name Varchar (10),
Basic double (6, 2),
Designation Varchar (10),
Age  int(2));

# Change the field size of Name column of the EMP1 table from 10 to 15
 Alter table EMP1 MODIFY name varchar(15);
 
 # creating emp_trainee table with same but changed values 
 create table EMP_trainee (Emp_ID  int(2) primary key,
EMP_Name Varchar (10),
EMP_Basic double (6, 2),
EMP_Designation Varchar (10),
EMP_Age  int(2));

# inserting values to EMP1 table
insert into EMP1 values 
(1, 'Rohit', 6700, 'Manager', 24),
(2, 'Sunil', 6200, 'Engineer', 27),
(3, 'Payal', 6300, 'Engineer', 25),
(4, 'Kunal', 6700, 'Trainee', 28),
(5, 'Sunita', 6230, 'Trainee', 26),
(6, 'Bimal', 7000, 'Trainee', 25);

#Insert all rows with the designation ‘trainee’ from the EMP1 table to EMP_trainee table
insert into emp_trainee values
(4, 'Kunal', 6700, 'Trainee', 28),
(5, 'Sunita', 6230, 'Trainee', 26),
(6, 'Bimal', 7000, 'Trainee', 25);

#Add columns Skills(varchar and size-10) and DOJ (date) to the EMP1 table
Alter table EMP1 add Skills varchar(10) after age;
Alter table EMP1 add DOJ date after Skills;
# inserting values in skills and doj columns
update emp1 set skills ='perfect' where id=1;
update emp1 set skills ='techy' where id=2;
update emp1 set skills ='hardworker' where id=3;
update emp1 set skills ='realastic' where id=4;
update emp1 set skills ='optimstic' where id=5;
update emp1 set skills ='geeky' where id=6;

update emp1 set doj ='2004-08-22' where id=1;
update emp1 set doj ='2005-06-20' where id=2;
update emp1 set doj ='2007-08-06' where id=3;
update emp1 set doj ='2001-12-14' where id=4;
update emp1 set doj ='2016-10-03' where id=5;
update emp1 set doj ='2014-08-26' where id=6;

# Change the designation of all trainees in EMP_trainee table to ‘Programmer _Trainee’
alter table emp_trainee modify EMP_Designation Varchar (20);
update emp_trainee set EMP_Designation ='Programmer_Trainee';

# Update more than one row in one query in EMP1 table
update emp1 set name ='Manisha' where id=3;

# Change the data type of ID in EMP1 table to varchar2 and increase the data size to 5.
alter table EMP1 modify id varchar(5);

# Display both the tables EMP1 and EMP_trainee.
select * from emp1 ;
select * from emp_trainee ;

# Rename the column Age of EMP1 table to Age_in_Years.
alter table emp1 change age Age_in_Years int (2); 

# Delete the details of all the trainees from the EMP1 table.
delete from emp1 where Designation='Trainee';

# Drop the Age column from the EMP_trainee table.
alter table emp_trainee drop column EMP_Age;

# Drop two columns in one query from EMP_trainee table
 alter table emp_trainee drop COLUMN EMP_Name, drop column EMP_Designation;

# Rename the table EMP to EMP_Mgr_Engr.
alter table emp1 rename to EMP_Mgr_Engr;

# Truncate EMP_Mgr_Engr table.
truncate table emp_mgr_engr;