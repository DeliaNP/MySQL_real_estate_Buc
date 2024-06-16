create database real_estate_Buc;
use real_estate_Buc;

create table employees(
    employee_id int primary key auto_increment,
    last_name varchar(25),
    first_name varchar(20),
    manager_id int
    );

alter table employees add foreign key(manager_id) references employees(employee_id);

insert into employees (last_name, first_name, manager_id) values 
('Popescu', 'Ioana', null),
('Petrescu', 'George',  1),
('Mihai', 'Maria', 1),
('Dumitrascu', 'Florin', 1),
('Petre', 'Silvia', 2),
('Marinescu', 'Elena', 2),
('Coman', 'Mihai', 2),
('Georgescu', 'Valentin', 2);

select * from employees;

create table details_employees(
    employee_id int,
    details_id int primary key auto_increment,
    position varchar(15),
    email varchar(50),
    phone varchar(20),
    foreign key (employee_id) references employees(employee_id)
);

insert into details_employees (employee_id, position, email, phone) values 
(1, 'Manager', 'ioanap@gmail.com', '0712345678'),
(2, 'Coordinator', 'georgep@gmail.com', '0723456789'),
(3, 'Agent','mariam@gmail.com', '0734567891'),
(4, 'Agent','dumitrascuf@gmail.com', '0745678912'),
(5, 'Agent','silviap@gmail.com', '0756789123'),
(6, 'Agent','elenam@gmail.com', '0767891234'),
(7, 'Agent','mihaic@gmail.com', '0789123456'),
(8, 'Agent','valenting@gmail.com', '0791234567');

SELECT * FROM details_employees;

create table Mihai_Maria(
propertyID int primary key auto_increment not null,
propertyStatus varchar (15) not null,
propertyType varchar (15) not null,
rooms int not null,
propertyAdress varchar (60) not null,
district varchar (10),
price varchar (15)
);

insert into Mihai_Maria (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('rent', 'apartment', '2', 'Bucharest, Campia Libertatii St., no. 16', '3', '450 Euro'),
('for rent', 'apartment', '2', 'Bucharest, Liviu Rebreanu Blvd., no. 53', '3', '500 Euro'),
('for sale', 'apartemnt', '3', 'Bucharest, Nitu Vasile St., no. 2', '4', '75000 Euro'),
('for rent', 'house', '4', 'Bucharest, Arcadiei St., no. 29', '4', '850 Euro'),
('sold', 'apartment', '4', 'Bucharest, Barajul Dunarii St., no. 10', '3', '76000 Euro'),
('for sale', 'apartemnt', '2', 'Popesti Leordeni, Drumul Fermei St., no. 6', 'Ilfov', '63000 Euro'),
('for sale', 'house', '4', 'Popesti Leordeni, Amurgului St., no. 25', 'Ilfov', '125000 Euro');

create table Dumitrascu_Florin (
propertyID int primary key auto_increment not null,
propertyStatus varchar (15) not null,
propertyType varchar (15) not null,
rooms int not null,
propertyAdress varchar (60) not null,
district varchar (10) not null,
price varchar (15) not null
);

insert into Dumitrascu_Florin (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('for sale', 'apartment', '2', 'Bucharest, Mihai Bravu St., no. 56', '2', '550 Euro'),
('for sale', 'apartment', '2', 'Bucharest, Iancului St., no. 13', '2', '82500 Euro'),
('sold', 'apartment', '3', 'Bucharest, Barajul Sadului St., no. 15', '3', '73000 Euro'),
('for rent', 'apartment', '1', 'Bucharest, Buhusi Ale, no. 5', '3', '300 Euro'),
('sold', 'apartment', '2', 'Bucharest, Pantelimon St., no. 73', '2', '70000 Euro'),
('for sale', 'apartment', '3', 'Bucharest, Burdujeni St., no. 3', '2', '100000 Euro'),
('for sale', 'apartment', '1', 'Bucharest, Drumul Gura Putnei, no. 32', '3', '58000 Euro');

create table Petre_Silvia (
propertyID int primary key auto_increment not null,
propertyStatus varchar (15) not null,
propertyType varchar (15) not null,
rooms int not null,
propertyAdress varchar (60) not null,
district varchar (10) not null,
price varchar (15) not null
);

insert into Petre_Silvia (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('sold', 'apartment', '2', 'Bucharest, Iuliu Maniu Blvd., no. 73', '6', '103000 Euro'),
('for sale', 'apartment', '1', 'Bucharest, Iuliu Maniu Blvd, no. 25', '6', '55000 Euro'),
('for sale', 'apartment', '2', 'Bucharest, Virtutii St., no. 8', '6', '76000 Euro'),
('for sale', 'apartment', '3', 'Bucharest, Drumul Taberei, no. 52', '6', '68000 Euro'),
('for sale', 'apartment', '2', 'Bucharest, Brasov St., no. 14', '6', '95000 Euro'),
('for sale', 'apartment', '1', 'Bucharest, Virtutii St., no. 19', '6', '60000 Euro'),
('sold', 'apartment', '2', 'Bucharest, Iuliu Maniu Blvd, no. 110', '6', '73000 Euro'),
('sold', 'apartment', '2', 'Bucharest, Iuliu Maniu Blvd, no. 60', '6', '85000 Euro');

create table Marinescu_Elena (
propertyID int primary key auto_increment not null,
propertyStatus varchar (15) not null,
propertyType varchar (15) not null,
rooms int not null,
propertyAdress varchar (60) not null,
district varchar (10) not null,
price varchar (15) not null
);

insert into Marinescu_Elena (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('for sale', 'apartment', '2', 'Chiajna, Rezervelor St., no. 43', 'Ilfov', '65000 Euro'),
('for sale', 'apartment', '3', 'Chiajna, Apeductului St., no. 17', 'Ilfov', '725000 Euro'),
('sold', 'apartment', '2', 'Chiajna, Tineretului St., no. 34', 'Ilfov', '68000 Euro'),
('sold', 'apartment', '2', 'Chiajna, Rezervelor St., no. 24', 'Ilfov', '65400 Euro'),
('for sale', 'apartment', '1', 'Chiajna, Tineretului St., no. 20', 'Ilfov', '48000 Euro'),
('sold', 'apartment', '2', 'Chiajna, Tineretului St., no. 6', 'Ilfov', '60000 Euro');

create table Coman_Mihai (
propertyID int primary key auto_increment not null,
propertyStatus varchar (15) not null,
propertyType varchar (15) not null,
rooms int not null,
propertyAdress varchar (60) not null,
district varchar (10) not null,
price varchar (15) not null
);

insert into Coman_Mihai (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('for rent', 'apartment', '2', 'Bucharest, Dacia Blvd, no. 5', '1', '750 Euro'),
('for rent', 'apartment', '2', 'Bucharest, Lascar Catargiu St., no. 34', '1', '880 Euro'),
('for sale', 'apartment', '1', 'Bucharest, Mihai Eminescu St., no. 38', '2', '65000 Euro'),
('for sale', 'apartment', '2', 'Bucharest, Stirbei Voda St., no. 3', '1', '99000 Euro'),
('sold', 'apartment', '1', 'Bucharest, Sperantei St., no. 5', '1', '900 Euro'),
('rent', 'apartment', '2', 'Bucharest, Calea Mosilor, no. 178', '2', '680 Euro');

create table Georgescu_Valentin (
propertyID int primary key auto_increment not null,
propertyStatus varchar (15) not null,
propertyType varchar (15) not null,
spaceArea varchar (5) not null,
propertyAdress varchar (60) not null,
district varchar (10) not null,
price varchar (15) not null
);

alter table Georgescu_Valentin modify propertyType varchar (25) not null;

alter table Georgescu_Valentin modify spaceArea varchar (10) not null;

insert into Georgescu_Valentin (propertyStatus, propertyType, spaceArea, propertyAdress, district, price) values
('for rent', 'commercial space', '70 sqm', 'Bucharest, Lascar Catargiu Blvd, no. 12', '1', '1150 Euro'),
('for rent', 'commercial space', '85 sqm', 'Bucharest, Mihai Eminescu St., no. 14', '2', '1500 Euro'),
('for rent', 'commercial space', '110 sqm', 'Bucharest, Baba Novac St., no. 7', '3', '2200 Euro'),
('rent', 'commercial space', '195 sqm', 'Bucharest, Mihai Bravu St., no. 71', '3', '3420 Euro');

select * from employees;

select * from Mihai_Maria;

select * from Dumitrascu_Florin;

select * from Petre_Silvia;

select * from Marinescu_Elena;

select * from Coman_Mihai;

select * from Georgescu_Valentin;

select * from Dumitrascu_Florin where price like '7%';

select * from Petre_Silvia where rooms = '2' or price > '70000 Euro';

select * from Marinescu_Elena order by price asc;

select * from Marinescu_Elena where propertyStatus = 'sold' order by price desc;

update Coman_Mihai set propertyStatus = 'rent' where propertyID = '5';

update Coman_Mihai set price= '450 Euro' where propertyID = '5';

select * from Mihai_Maria where propertyStatus = 'rent';

select * from Coman_Mihai where rooms = '2';

select * from Mihai_Maria order by district;

select * from Georgescu_Valentin where spaceArea between 75 and 120;

select * from Petre_Silvia where propertyStatus = 'for sale' and price < '70000 Euro';

select count(propertyStatus) from Mihai_Maria where propertyStatus = 'sold';

select min(price) from Georgescu_Valentin where price <= '1500 Euro';

select * from Georgescu_Valentin where propertyStatus like '%o%';

select count(price) from Georgescu_Valentin where price < '1800 Euro';

Select district, COUNT(*) as num_properties from Mihai_Maria group by district;

SELECT district, COUNT(*) AS num_properties FROM Mihai_Maria WHERE district = 'Ilfov' GROUP BY district HAVING COUNT(*) > 1;

select 'Mihai_Maria' as tableName, propertyID, propertyStatus, propertyType, propertyAdress, district, price
from Mihai_Maria
where propertyStatus = 'for sale'
union all
select 'Dumitrascu_Florin' as tableName, propertyID, propertyStatus, propertyType, propertyAdress, district, price
from Dumitrascu_Florin
where propertyStatus = 'for sale'
union all
select 'Petre_Silvia' as tableName, propertyID, propertyStatus, propertyType, propertyAdress, district, price
from Petre_Silvia
where propertyStatus = 'for sale'
union all
select 'Maroinescu_Elena' as tableName, propertyID, propertyStatus, propertyType, propertyAdress, district, price
from Marinescu_Elena
where propertyStatus = 'for sale'
union all
select 'Coman_Mihai' as tableName, propertyID, propertyStatus, propertyType, propertyAdress, district, price
from Coman_Mihai
where propertyStatus = 'for sale'
union all
select 'Georgescu_Valentin' as tableName, propertyID, propertyStatus, propertyType, propertyAdress, district, price
from Georgescu_Valentin
where propertyStatus = 'for sale';

select * from employees cross join details_employees;

select * from employees inner join details_employees on employees.employee_id = details_employees.employee_id;

select * from employees left join details_employees on employees.employee_id=details_employees.employee_id;

select * from employees right join details_employees on employees.employee_id=details_employees.employee_id;

create table transactions(
    transactionID int primary key auto_increment not null,
    employeeID Int not null,
    propertyID int not null,
    transactionDate date not null,
    transactionType varchar(15) not null
    );
    
insert into transactions (employeeID, propertyID, transactionDate, transactionType) values
('1', '2', '2024-01-25', 'rent'),
('1', '6', '2024-01-25', 'rent'),
('2', '3', '2024-02-17', 'sold'),
('4', '4', '2024-03-02', 'sold');

select * from transactions;

delete from transactions;

drop table transactions;

select * from transactions;
