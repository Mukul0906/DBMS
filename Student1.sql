# create a new datatbase
CREATE database space;
# create a new table under space data base
 CREATE table Student
 # table created having parameters stu id and age having integer entity and char entity of 20 limit for stu name
 (Stu_id int, Stu_name varchar(20),Age int);
  # insert values in the table
 insert into Student values(1,'Mukul',23);  
 insert into Student values(2,'Saurav',23); 
 insert into Student values(3,'Arvind',24); 
 insert into Student values(4,'Kunal',19); 
 insert into Student values(5,'Prince',20); 
 
 CREATE table JavaStudent(Stu_id int, Stu_name varchar(20),fees int);
 insert into JavaStudent values(1,'Mukul',2300);  
 insert into JavaStudent values(2,'Saurav',2500); 

 # drop is used to remove/delete the database/table
 Drop table JavaStudent;
 
 # alter command is used to change or modify the exsisting structure of the database/table
 Alter table Student add email varchar(20);
 Alter table Student drop age ;
 Alter table Student MODIFY Stu_name varchar(30);
 
 # create new table
 CREATE table JavaStudent ( id int primary key auto_increment , Name varchar(20) not null, phone bigint(11) not null unique,
 email varchar(20) not null unique, addr varchar(50), qualification varchar(10) not null, dept varchar(20));
 # add new column
 alter table JavaStudent add age int after dept;
 # modify dataype size
 alter table JavaStudent modify qualification varchar(20) not null;
 # drop column JavaStudent table details
 alter table JavaStudent drop COLUMN dept;
 # change column name
 alter table JavaStudent rename to Stodents_of_Java;
alter table Stodents_of_Java rename to Students_of_Java;
# inser single row
 insert into Students_of_Java values (1, 'Mukul',9999955555,'mukul@obe.com','New delhi','B tech',23);
 # delete all rows from the table 
 truncate table Students_of_Java;
 # delete both (strcture and record)
 drop table Students_of_java;
 