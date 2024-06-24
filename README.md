# M605 Advanced Databases
The assignment is a submission against the Final Project for GISMA UAS Advanced Database Course to implement a Database Schema for an online retail store.

## ABC Inc. Online Store Database Design
ABC Inc., since its inception, has exponentially expanded its operations across Europe. Initially providing a limited quantity of products, now services millions of customers through its website. With a plethora of vendors, customers, product offerings and services, ABC Inc. has realized the need to establish a scalable and comprehensive relational database management system (RDBMS). Through this system, they aim to manage their product suite, customer information, suppliers and transactions efficiently. Moreover, the company seeks to identify trends and areas where they can enhance operations and persist in expanding their business scale globally.

## ERD Design
<p align="center">
  <img src="./ERD.png">
</p>
## IMPORTING SQL
To run the SQL file, following are the commands to be used for MAC TERMINAL on .zsh/.bash shell

```zsh
# Initiate the MySQL Server
mysql.server start

# Establish connection with MySQL with user 'root'
mysql -u root -p

# You will be prompted to enter your password
Password:
```
Once you have connected to the mysql Terminal indicated by:

```zsh
mysql>
```
Enter the command
```sql
--Create a Database for .sql dump
CREATE DATABASE database_name;

--Select the created database
USE database_name;

--Once the database is chosen, the .sql dump file can be imported using the following command:
source /path/to/your/file.sql
# Replace the filepath with where your .sql is saved in
```
