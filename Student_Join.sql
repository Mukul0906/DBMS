use mukuldb;
create table Student_join( Id int , 
					Fname Varchar(15),
					Lname Varchar(15),
                    Age int(3),
                    City varchar(10),
                    Form_no varchar(2)primary key);
                    
insert into Student_join values(1,'Shifa','Das',23,'Hooghly','A1');
insert into Student_join values(2,'Abhishek','Sarkar',24,'Kolkata','A2');
insert into Student_join values(3,'sourav','Chakrabarty',25,'Patuli','A3');
insert into Student_join values(4,'Atif','Mondal',19,'Nadia','A4');
insert into Student_join values(5,'soumya','Poddar',24,'New town','A5');
insert into Student_join values(6,'niladri','Biswas',24,'Garia','A6');
insert into Student_join values(7,'nisha','Das',23,'Howrah','A7');
insert into Student_join values(8,'Elijah','Rahaman',25,'Behala','A8');
insert into Student_join values(9,'Hrangchal','Sarkar',22,'Barasat','A9');
insert into Student_join values(10,'Elina','Sahoo',20,'Rampurhat','B1');

#foreignkey while table creation
create table fees(
form_no varchar(4),foreign key(form_no) references Student_join(form_no),
amount int,
course varchar(15));
insert into fees values
('A1',4000,'java'),
('A2',4000,'java'),
('A3',5000,'python'),
('A4',3000,'ml'),
('A5',3000,'ml'),
('A6',2000,'python'),
('A7',5500,'dsa'),
('A8',5500,'dsa'),
('A9',6000,'c++'),
('B1',7000,'c#');
#foreign key
#alter table fees add foreign key(form_no) references Student_join(form_no); 
# Inner join-- left outer join-- right outer join--- cross join-- self join

#inner join --- fetch only selected column from both table
select fname, lname,amount,course from Student_join inner join fees on Student_join.form_no = fees.form_no;
select fname, amount,course from Student_join inner join fees on Student_join.form_no = fees.form_no;

#cross join -- fetch all columns from both tables
select * from Student_join cross join fees;

#selfjoin ( reference variable)
select s1.fname, s1.age from Student_join s1 inner join Student_join s2 on S1.age = s2.age and s1.Id<>s2.Id order by s1.ID; 

#leftouterjoin
select Student_join.form_no,fname,amount from Student_join left join fees on Student_join.form_no = fees.form_no;

#rightouterjoin
select Student_join.form_no,fname,course from Student_join right join fees on Student_join.form_no = fees.form_no;