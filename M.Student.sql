 use mukuldb;
create table MaxStudent (id int primary key , sname varchar(20) not null, phone bigint(11) not null unique,
 email varchar(30) not null unique, addr varchar(50), qualification varchar(10) not null, dept varchar(20));
 
  insert into MaxStudent values
(1,'RANOJOY',831122288,'ran@gmail.com','chennai','MCA','IT'),
(2,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE','IT'),
(3,'ARNAB',834332288,'ganesh@gmail.com','delhi','B Tech','CIVIL'),
(4,'PUJA',834772288,'puja@gmail.com','pune','MCA','IT'),
(5,'AVIJIT',834888288,'avi@gmail.com','mumbai','BE','ELECTRICAL'),
(6,'AKASH',834992288,'akash@gmail.com','goa','B Tech','MECHANICAL');

 # add new column
 alter table MaxStudent add age int after sname;
 # modify dataype size
 alter table MaxStudent modify qualification varchar(20) not null;
 # change value type
 alter table MaxStudent modify phone int not null; 
  # drop column table details
 alter table MaxStudent drop COLUMN dept;
 # change column name
 alter table MaxStudent change column age cage int;
 # chgange table name 
 alter table MaxStudent rename to Student_List;
# inser single row
 insert into Student_List values
 (7, 'Mukul',23,999995555,'mukul@obe.com','New delhi','B tech');
 
 # DML
 
 update Student_List set cage = 23 where id =1;
 update Student_List set cage = 35 where id =2;
 update Student_List set cage = 19 where id =3;
 update Student_List set cage = 29 where id =4;
 update Student_List set cage = 25 where id =5;
 update Student_List set cage = 20 where id =6;
 # add fees column
 alter table Student_List add fees double after qualification;
 update Student_List set fees = 1000.50 where id =1;
 update Student_List set fees = 1000.50 where id =2; 
 update Student_List set fees = 1000.50 where id =3; 
 update Student_List set fees = 1000.50 where id =4; 
 update Student_List set fees = 1000.50 where id =5;
 update Student_List set fees = 1000.50 where id =6;
 update Student_List set fees = 1000.50 where id =7;
 # update details in table
 update Student_List set fees = 2000.50 where id =1;
 update Student_List set fees = 2000.50 where id =2; 
 update Student_List set fees = 2000.50 where id =3; 
 update Student_List set fees = 2000.50 where id =4; 
 update Student_List set fees = 2000.50 where id =5;
 update Student_List set fees = 2000.50 where id =6;
 update Student_List set fees = 2000.50 where id =7;
 update Student_List set addr = 'mumbai' where sname = 'AKASH';
 update Student_List set fees = 4000.50;
  
 # delete any specific row 
 DELETE FROM student_list WHERE sname ='ARNAB';
 # delete any specific column 
 alter table Student_List drop column fees;
 
 
 # select
 select * from Student_list where sname= 'Arnab';
 # and both conditions must be true
 select * from Student_List where addr = 'mumbai' and qualification ='be';
 # or one conbditon must be true
 select * from Student_List where addr = 'mumbai' or qualification ='be';
 # not
select * from Student_List where qualification ='be';
# in 
 select * from Student_List where addr in('delhi' ,'goa');
 # starts with
 select * from Student_list where sname like  'A%';
 # ends with
 select * from Student_list where sname like  '%a';
 # in between
 select * from Student_list where sname like  '%i%';
 # starts and ends with
 select * from Student_list where sname like  'A%t';
 # missing letter 
 select * from Student_list where addr like 'g_a';
 select * from Student_list where sname like 'A_n_b';
 #query with select 
 select id, sname , phone, addr from Student_list;
  select * from Student_list where id =5;
select * from Student_list where sname ='mukul';
# distinct
 select distinct sname from Student_list;
 select distinct cage from Student_list;
 
 # alter
 alter table Student_list add percentage int after fees;
 update Student_list set percentage=20 where id=1;
 update Student_list set percentage=38 where id=2;
 update Student_list set percentage=25 where id=3;
 update Student_list set percentage=12 where id=4;
 update Student_list set percentage=35 where id=5;
 update Student_list set percentage=41 where id=6;
 update Student_list set percentage=60 where id=7;
 
 #as
 select sname,addr,fees, fees+300  as 'incremented fees'from Student_list;
 select sname,fees, fees+percentage+100  as 'Annual consumption fees'from Student_list;
 select percentage from Student_list;
 update Student_list set fees = 2500 where id =1;
 update Student_list set fees = 3700 where id =2;
 update Student_list set fees = 5500 where id =3;
 update Student_list set fees = 3500 where id =4;
 update Student_list set fees = 3300 where id =5;
 update Student_list set fees = 5800 where id =6;
 
 # greater than
 select id,fees from Student_list where fees>4000;
 # between
 select sname,fees from Student_list where fees between 3000 and 4000;
 select * from Student_list where fees =4000 or fees =3300 or fees =5500;
 select * from Student_list where id =1 or id=5 or id =3;
 
 #notEqual
select * from Student_list where fees != 5500;
select * from Student_list where sname ='Arnab';
update Student_list set id=9 where fees>4500.5;
select sname,id from Student_list where fees<3500 and addr='chennai';
truncate Student_list; # delete rows



## query from existing table form new file without saving
#  select * from mukuldb.employee;
#  select ename from employee;