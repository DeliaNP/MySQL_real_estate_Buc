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
  <li> **employees**  is connected with **details_employees** through a **self referencing** relationship which was implemented through **employees.employee_id** as a primary key and **nume_tabela.nume_coloana_cheie_secundara** as a foreign key</li>
  <li> **nume tabela 3**  is connected with **nume tabela 4** through a **tip relatie** relationship which was implemented through **nume_tabela.nume_coloana_cheie_primara** as a primary key and **nume_tabela.nume_coloana_cheie_secundara** as a foreign key</li>
  <li> **nume tabela 5**  is connected with **nume tabela 6** through a **tip relatie** relationship which was implemented through **nume_tabela.nume_coloana_cheie_primara** as a primary key and **nume_tabela.nume_coloana_cheie_secundara** as a foreign key</li>
  ...........
  <li> **nume tabela n**  is connected with **nume tabela n+1** through a **tip relatie** relationship which was implemented through **nume_tabela.nume_coloana_cheie_primara** as a primary key and **nume_tabela.nume_coloana_cheie_secundara** as a foreign key</li>
</ul><br>

<li>Database Queries</li><br>

<ol type="a">
  <li>DDL (Data Definition Language)</li>

  The following instructions were written in the scope of CREATING the structure of the database (CREATE INSTRUCTIONS)

  **![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/f67da9d6-94d9-4abe-8839-5579bfb6d4a4)![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/ae19c2ef-9268-4d1c-bb66-8753bf2715ba)![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/8be84331-d7a6-4653-ae5e-6aedf4754321)![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/71fca3ef-c64c-4ade-9593-df261c102c48)![image](https://github.com/DeliaNP/MySQL_real_estate_Buc/assets/167696115/616e2c2e-998d-4c50-a38f-521ce0ff05c4) 
**

  After the database and the tables have been created, a few ALTER instructions were written in order to update the structure of the database, as described below:

  **Inserati aici toate instructiunile de ALTER pe care le-ati scris. Incercati sa includeti instructiuni cat mai variate cum ar fi:**
 **- schimbare nume tabela**
 **- adaugare sau stergere coloana**
 **- redenumire coloana**
 **- adaugare proprietati coloana (ex: adaugare auto-increment)**
 **- modificare proprietati coloana (ex: modificare tip de data, modificare pozitie coloana etc)**
 **- adaugare cheie primara sau secundara (daca nu a fost deja adaugata la crearea tabelei)**
 
  
  <li>DML (Data Manipulation Language)</li>

  In order to be able to use the database I populated the tables with various data necessary in order to perform queries and manipulate the data. 
  In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementation phase. 

  Below you can find all the insert instructions that were created in the scope of this project:

  **Inserati aici toate instructiunile de INSERT pe care le-ati scris. Incercati sa folositi atat insert pe toate coloanele (fara sa precizati pe ce coloane se face insert) cat si insert pe cateva coloane (care necesita mentionarea explicita a coloanelor pe care se face insert). De asemenea, incercati sa acoperiti situatia in care inserati mai multe randuri in acelasi timp**

  After the insert, in order to prepare the data to be better suited for the testing process, I updated some data in the following way:

  **Inserati aici toate instructiunile de UPDATE pe care le-ati scris folosind filtrarile necesare astfel incat sa actualizati doar datele de care aveti nevoie**


  <li>DQL (Data Query Language)</li>

After the testing process, I deleted the data that was no longer relevant in order to preserve the database clean: 

**Inserati aici toate instructiunile de DELETE pe care le-ati scris folosind filtrarile necesare astfel incat sa stergeti doar datele de care aveti nevoie**

In order to simulate various scenarios that might happen in real life I created the following queries that would cover multiple potential real-life situations:

**Inserati aici toate instructiunile de SELECT pe care le-ati scris folosind filtrarile necesare astfel incat sa extrageti doar datele de care aveti nevoie**
**Incercati sa acoperiti urmatoarele:**<br>
**- where**<br>
**- AND**<br>
**- OR**<br>
**- NOT**<br>
**- like**<br>
**- inner join**<br>
**- left join**<br>
**- OPTIONAL: right join**<br>
**- OPTIONAL: cross join**<br>
**- functii agregate**<br>
**- group by**<br>
**- having**<br>
**- OPTIONAL DAR RECOMANDAT: Subqueries - nu au fost in scopul cursului. Puteti sa consultati tutorialul [asta](https://www.techonthenet.com/mysql/subqueries.php) si daca nu intelegeti ceva contactati fie trainerul, fie coordonatorul de grupa**<br>

</ol>

<li>Conclusions</li>

**Inserati aici o concluzie cu privire la ceea ce ati lucrat, gen lucrurile pe care le-ati invatat, lessons learned, un rezumat asupra a ceea ce ati facut si orice alta informatie care vi se pare relevanta pentru o concluzie finala asupra a ceea ce ati lucrat**

</ol>
