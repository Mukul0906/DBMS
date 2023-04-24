use 4119db;

create table Customer (Cust_id varchar(3) primary key,
Fname varchar(15) not null, Lname varchar(10), 
Area varchar (2) not null, 
Phone bigint(10));

insert into customer values
('A01', 'Ivan', 'Ross', 'SA', 6125467),
('A02', 'Vandana' ,'Ray', 'MU', 5560379),
('A03', 'Pramada', 'Jauguste', 'DA', 4560389),
('A04', 'Basu', 'Navindi', 'BA', 6125401),
('A05', 'Ravi' ,'Shridhar', 'NA' ,null),
('A06', 'Rukmini', 'Aiyer', 'GH', 5125274);

create table Movie (Mv_no int(2) primary key,
Cust_id varchar(3), foreign key(cust_id) references Customer(cust_id),
Title varchar (20)not null, Star varchar(2) not null ,
Price int(3));

insert into movie values 
(1 ,'A02' ,'Bloody' ,'JC' ,181),
(2, 'A04', 'The Firm', 'TC', 200),
(3, 'A01', 'Pretty Woman', 'RG', 151),
(4 ,'A06' ,'Home Alone', 'MC' ,150),
(5, 'A05' ,'The Fugitive', 'MF', 20),
(6 ,'A03', 'Coma' ,'MD', 100),
(7, 'A02', 'Dracula', 'GO' ,150),
(8 ,'A06' ,'Quick Change', 'BM' ,100),
(9, 'A03', 'Gone with the Wind', 'CB', 200),
(10, 'A05' ,'Carry on Doctor', 'LP', 100);

# Display the movie titles, whose price is greater than 100 but less than 200
select title from movie where price > 100 and price<200;

# Display the cust_id who have seen movies having stars as either JC or TC or MC.
select cust_id from movie where star = 'jc' or star = 'tc' or star = 'mc'; 

# Display the details of those customers who have an A in their area name
select * from customer where area like '%A' or 'A%';

#Display the movie titles, whose price is within 180 and the movie titles are of exactly 6 characters.
select title from movie where price <180 ;

# Display the movie name, their original prices and the prices after 10% increment.Give alias name to the incremented price column
select title,price, price+10/100*price  as 'incremented price' from movie;

# Display all the customer details in the following way: ‘Ivan Ross stays in SA and his phone number is 6125467.’
select fname ,lname,' stays in ',area,' and his phone number is ',phone from customer;

# Display the customer’s name whose phone number is not recorded
select fname,lname from customer where phone is null;

# Add the phone number according to your own wish for the person mentioned in problem no 12.
update customer set phone = 56023987 where fname='ravi';

# Display the unique customer ids from movie table.
select distinct cust_id from movie; 

# Delete any row from the Customer table. If you cannot delete, then note the error message displayed.
delete from customer where cust_id = 'a05';
# Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails 
#(`4119db`.`movie`, CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`Cust_id`) REFERENCES `customer` (`Cust_id`))

# Delete any row from the Movie table. If you cannot delete, then note the errormessage displayed.
delete from movie where cust_id='a03'; 

# Drop the Customer table. If you cannot drop, then note the error message displayed.
drop table customer;
# Error Code: 3730. Cannot drop table 'customer' referenced by a foreign key constraint 
#'movie_ibfk_1' on table 'movie'.

# Drop the Movie table. If you cannot drop, then note the error message displayed.
drop table movie;

# Drop the foreign key from Movie table.

