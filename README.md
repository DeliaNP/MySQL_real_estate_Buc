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
```
  
  
  After the database and the tables have been created, a few ALTER instructions were written in order to update the structure of the database, as described below:

  **![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/e5b940d6-55ad-4edb-9350-5d0587f42f93)**
 **- ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/42399fc2-c3ff-439c-815c-84a04f2c7bf6)**
 
  <li>DML (Data Manipulation Language)</li>

  In order to be able to use the database I populated the tables with various data necessary in order to perform queries and manipulate the data. 
  In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementation phase. 

  Below you can find all the insert instructions that were created in the scope of this project:

  **![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/7db0485e-0178-4734-9118-7ce19683d083) ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/1731d4db-6c8a-4247-b1b2-2baf2d6cf906)  ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/4446f8b3-f031-486c-a81d-33d38a579ec5) ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/7b88dbda-db92-4f5b-8ba9-e0cd49c125ae)  ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/7d4f97ce-a10d-4b1a-b70a-910cddf009ee)  ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/3d9f3745-c32a-4a1e-b44a-b2932901aaa1) ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/1d558497-cc94-4883-b181-e9ffd838e1ca) ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/a5224503-02ad-43f0-a2fa-ff6e1a59e1a8) ![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/1edbaf19-99be-4c96-ba9e-a052daaad46c)**

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
