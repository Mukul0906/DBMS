use mukulddb;
create table Employee( empid int primary key, ename varchar(20)not null, designation varchar(25)not null ,
dept varchar(20), workinghour varchar(20), salary double(10,2)) ; 

INSERT INTO employee values 
(1,'HEMANT','ENGINEER','EE','8','10000'),
(2,'RITU','SME','BCA','6','11000'),
(3,'RAHUL','MGR','CSE','10','12000'),
(4,'SANA','ADMIN','MSC','12','13000'),
(5,'ARYAN','ENGINEER','EE','8','14000'),
(6,'MUKUL','ADMIN','ME','8','15000');
INSERT INTO employee values 
(7,'UPASANA','ENGINEER','EE','8','16000'),
(8,'PRINCE','MGR','ME','8','17000'),
(9,'TUSHAR','ENGINEER','CE','8','18000'),
(10,'MEGHA','SME','BCA','6','19000'); 

# aggregate function  --- group by
#count
select dept,count(dept) as 'total employee in dept' from Employee group by dept;
#sum
select dept,sum(workinghour) as 'total hours' from Employee group by dept;
select dept,sum(workinghour) as 'total hours' from Employee where dept = 'ME';
select dept,sum(salary) as 'total dept salary' from Employee group by dept;
select dept,sum(salary) as 'total dept salary' from Employee where dept = 'EE';
#average
select dept,avg(salary) as 'average dept salary' from Employee group by dept ;

#min
select dept,min(salary) as 'Minimun dept salary' from Employee group by dept;
select min(salary) from Employee where dept='EE';
select min(salary) from Employee;

#max
select dept,max(salary) as 'Maximum dept salary' from Employee group by dept;
select max(salary) from Employee where dept='EE';
select max(salary) from Employee;

#subquery
select ename,dept,salary from employee where salary=(select max(salary) from employee);
select * from employee where salary=(select min(salary) from employee);

#having
# department which have combined working hour more than 15 will show 
select dept,sum(workinghour) as 'total hours' from employee group by dept having sum(workinghour)>15; 

# order by
select * from employee order by ename asc; # asscending by names
# orderby designation 
select * from employee order by designation;
# orderby  salary by descending
select * from employee order by salary desc;
# orderby  salary by default(asscending)
select * from employee order by salary;