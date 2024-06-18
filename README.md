<h1>Database Project for **real_estate_Buc**</h1>

The scope of this project is to use all the SQL knowledge gained throught the Software Testing course and apply them in practice.

Application under test: **real_estate_Buc**

Tools used: MySQL Workbench

Database description: **As part of the project, I developed a database for a real estate agency using SQL. The project involved creating and managing multiple relational tables, each with a specific structure and well-defined connections through primary and foreign keys.**

<ol>
<li>Database Schema </li>
<br>
You can find below the database schema that was generated through Reverse Engineer and which contains all the tables and the relationships between them.

The tables are connected in the following way:

<ul>
  <li> **employees**  is connected with **details_employees** through a **self referencing** relationship which was implemented through **employees.employee_id** as a primary key and **employees.manager_id** as a foreign key</li>
  <li> **employees**  is connected with **details_employees** through a ** one to one** relationship which was implemented through **employees.employee_id** as a primary key and **employee_id** as a foreign key</li>
 
  ...........
  <li> **nume tabela n**  is connected with **nume tabela n+1** through a **tip relatie** relationship which was implemented through **nume_tabela.nume_coloana_cheie_primara** as a primary key and **nume_tabela.nume_coloana_cheie_secundara** as a foreign key</li>
</ul><br>

<li>Database Queries</li><br>

<ol type="a">
  <li>DDL (Data Definition Language)</li>

  The following instructions were written in the scope of CREATING the structure of the database (CREATE INSTRUCTIONS)

  ```
create database real_estate_Buc;
use real_estate_Buc;

create table employees(
    employee_id int primary key auto_increment,
    last_name varchar(25),
    first_name varchar(20),
    manager_id int
    );

create table details_employees(
    employee_id int,
    details_id int primary key auto_increment,
    position varchar(15),
    email varchar(50),
    phone varchar(20),
    foreign key (employee_id) references employees(employee_id)
);

create table Mihai_Maria(
	propertyID int primary key auto_increment not null,
	propertyStatus varchar (15) not null,
	propertyType varchar (15) not null,
	rooms int not null,
	propertyAdress varchar (60) not null,
	district varchar (10),
	price varchar (15)
);

create table Dumitrascu_Florin (
	propertyID int primary key auto_increment not null,
	propertyStatus varchar (15) not null,
	propertyType varchar (15) not null,
	rooms int not null,
	propertyAdress varchar (60) not null,
	district varchar (10) not null,
	price varchar (15) not null
);

create table Petre_Silvia (
	propertyID int primary key auto_increment not null,
	propertyStatus varchar (15) not null,
	propertyType varchar (15) not null,
	rooms int not null,
	propertyAdress varchar (60) not null,
	district varchar (10) not null,
	price varchar (15) not null
);

create table Marinescu_Elena (
	propertyID int primary key auto_increment not null,
	propertyStatus varchar (15) not null,
	propertyType varchar (15) not null,
	rooms int not null,
	propertyAdress varchar (60) not null,
	district varchar (10) not null,
	price varchar (15) not null
);

create table Coman_Mihai (
	propertyID int primary key auto_increment not null,
	propertyStatus varchar (15) not null,
	propertyType varchar (15) not null,
	rooms int not null,
	propertyAdress varchar (60) not null,
	district varchar (10) not null,
	price varchar (15) not null
);

create table Georgescu_Valentin (
	propertyID int primary key auto_increment not null,
	propertyStatus varchar (15) not null,
	propertyType varchar (15) not null,
	spaceArea varchar (5) not null,
	propertyAdress varchar (60) not null,
	district varchar (10) not null,
	price varchar (15) not null
);

create table transactions(
    transactionID int primary key auto_increment not null,
    employeeID Int not null,
    propertyID int not null,
    transactionDate date not null,
    transactionType varchar(15) not null
    );

```
  
  
  After the database and the tables have been created, a few ALTER instructions were written in order to update the structure of the database, as described below:
  
```
alter table employees add foreign key(manager_id) references employees(employee_id);

alter table Georgescu_Valentin modify propertyType varchar (25) not null;

alter table Georgescu_Valentin modify spaceArea varchar (10) not null;

```
  
 
  <li>DML (Data Manipulation Language)</li>

  In order to be able to use the database I populated the tables with various data necessary in order to perform queries and manipulate the data. 
  In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementation phase. 

  Below you can find all the insert instructions that were created in the scope of this project:

```
insert into employees (last_name, first_name, manager_id) values 
('Popescu', 'Ioana', null),
('Petrescu', 'George',  1),
('Mihai', 'Maria', 1),
('Dumitrascu', 'Florin', 1),
('Petre', 'Silvia', 2),
('Marinescu', 'Elena', 2),
('Coman', 'Mihai', 2),
('Georgescu', 'Valentin', 2);

insert into details_employees (employee_id, position, email, phone) values 
(1, 'Manager', 'ioanap@gmail.com', '0712345678'),
(2, 'Coordinator', 'georgep@gmail.com', '0723456789'),
(3, 'Agent','mariam@gmail.com', '0734567891'),
(4, 'Agent','dumitrascuf@gmail.com', '0745678912'),
(5, 'Agent','silviap@gmail.com', '0756789123'),
(6, 'Agent','elenam@gmail.com', '0767891234'),
(7, 'Agent','mihaic@gmail.com', '0789123456'),
(8, 'Agent','valenting@gmail.com', '0791234567');

insert into Mihai_Maria (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('rent', 'apartment', '2', 'Bucharest, Campia Libertatii St., no. 16', '3', '450 Euro'),
('for rent', 'apartment', '2', 'Bucharest, Liviu Rebreanu Blvd., no. 53', '3', '500 Euro'),
('for sale', 'apartemnt', '3', 'Bucharest, Nitu Vasile St., no. 2', '4', '75000 Euro'),
('for rent', 'house', '4', 'Bucharest, Arcadiei St., no. 29', '4', '850 Euro'),
('sold', 'apartment', '4', 'Bucharest, Barajul Dunarii St., no. 10', '3', '76000 Euro'),
('for sale', 'apartemnt', '2', 'Popesti Leordeni, Drumul Fermei St., no. 6', 'Ilfov', '63000 Euro'),
('for sale', 'house', '4', 'Popesti Leordeni, Amurgului St., no. 25', 'Ilfov', '125000 Euro');

insert into Dumitrascu_Florin (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('for sale', 'apartment', '2', 'Bucharest, Mihai Bravu St., no. 56', '2', '550 Euro'),
('for sale', 'apartment', '2', 'Bucharest, Iancului St., no. 13', '2', '82500 Euro'),
('sold', 'apartment', '3', 'Bucharest, Barajul Sadului St., no. 15', '3', '73000 Euro'),
('for rent', 'apartment', '1', 'Bucharest, Buhusi Ale, no. 5', '3', '300 Euro'),
('sold', 'apartment', '2', 'Bucharest, Pantelimon St., no. 73', '2', '70000 Euro'),
('for sale', 'apartment', '3', 'Bucharest, Burdujeni St., no. 3', '2', '100000 Euro'),
('for sale', 'apartment', '1', 'Bucharest, Drumul Gura Putnei, no. 32', '3', '58000 Euro');

insert into Petre_Silvia (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('sold', 'apartment', '2', 'Bucharest, Iuliu Maniu Blvd., no. 73', '6', '103000 Euro'),
('for sale', 'apartment', '1', 'Bucharest, Iuliu Maniu Blvd, no. 25', '6', '55000 Euro'),
('for sale', 'apartment', '2', 'Bucharest, Virtutii St., no. 8', '6', '76000 Euro'),
('for sale', 'apartment', '3', 'Bucharest, Drumul Taberei, no. 52', '6', '68000 Euro'),
('for sale', 'apartment', '2', 'Bucharest, Brasov St., no. 14', '6', '95000 Euro'),
('for sale', 'apartment', '1', 'Bucharest, Virtutii St., no. 19', '6', '60000 Euro'),
('sold', 'apartment', '2', 'Bucharest, Iuliu Maniu Blvd, no. 110', '6', '73000 Euro'),
('sold', 'apartment', '2', 'Bucharest, Iuliu Maniu Blvd, no. 60', '6', '85000 Euro');

insert into Marinescu_Elena (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('for sale', 'apartment', '2', 'Chiajna, Rezervelor St., no. 43', 'Ilfov', '65000 Euro'),
('for sale', 'apartment', '3', 'Chiajna, Apeductului St., no. 17', 'Ilfov', '725000 Euro'),
('sold', 'apartment', '2', 'Chiajna, Tineretului St., no. 34', 'Ilfov', '68000 Euro'),
('sold', 'apartment', '2', 'Chiajna, Rezervelor St., no. 24', 'Ilfov', '65400 Euro'),
('for sale', 'apartment', '1', 'Chiajna, Tineretului St., no. 20', 'Ilfov', '48000 Euro'),
('sold', 'apartment', '2', 'Chiajna, Tineretului St., no. 6', 'Ilfov', '60000 Euro');

insert into Coman_Mihai (propertyStatus, propertyType, rooms, propertyAdress, district, price) values
('for rent', 'apartment', '2', 'Bucharest, Dacia Blvd, no. 5', '1', '750 Euro'),
('for rent', 'apartment', '2', 'Bucharest, Lascar Catargiu St., no. 34', '1', '880 Euro'),
('for sale', 'apartment', '1', 'Bucharest, Mihai Eminescu St., no. 38', '2', '65000 Euro'),
('for sale', 'apartment', '2', 'Bucharest, Stirbei Voda St., no. 3', '1', '99000 Euro'),
('sold', 'apartment', '1', 'Bucharest, Sperantei St., no. 5', '1', '900 Euro'),
('rent', 'apartment', '2', 'Bucharest, Calea Mosilor, no. 178', '2', '680 Euro');

insert into Georgescu_Valentin (propertyStatus, propertyType, spaceArea, propertyAdress, district, price) values
('for rent', 'commercial space', '70 sqm', 'Bucharest, Lascar Catargiu Blvd, no. 12', '1', '1150 Euro'),
('for rent', 'commercial space', '85 sqm', 'Bucharest, Mihai Eminescu St., no. 14', '2', '1500 Euro'),
('for rent', 'commercial space', '110 sqm', 'Bucharest, Baba Novac St., no. 7', '3', '2200 Euro'),
('rent', 'commercial space', '195 sqm', 'Bucharest, Mihai Bravu St., no. 71', '3', '3420 Euro');

```
 
  After the insert, in order to prepare the data to be better suited for the testing process, I updated some data in the following way:

  **![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/fd22dcec-d61d-4193-b080-337047a4fd99)**


  <li>DQL (Data Query Language)</li> 

After the testing process, I deleted the data that was no longer relevant in order to preserve the database clean: 

**I![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/2a63c5b4-fa4a-4e6b-9bf0-38056f4c16d6)**

In order to simulate various scenarios that might happen in real life I created the following queries that would cover multiple potential real-life situations:

**![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/8d201d0d-09a9-4ad3-9f6e-32f4b0b8dc8a)**
**Incercati sa acoperiti urmatoarele:**<br>
**![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/865403bc-ebcf-4eb4-a39f-55e027632f12)**<br>
**- ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/b656dd43-0e33-419f-a459-40217a9e6a5f)**<br>
**- ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/548edd32-b379-49b7-b627-dd9db44e1f54)**<br>


</ol>

<li>Conclusions</li>

**The database development project for the real estate agency demonstrated an in-depth understanding of fundamental SQL concepts and highlighted the ability to implement and manage complex data structures. The combined use of DDL, DML, and DQL commands allowed for the creation of a robust, efficient, and user-friendly database that meets the operational needs of the real estate agency. This project represents a solid example of applying relational database principles and efficient data management in a real-world context.**

</ol>
