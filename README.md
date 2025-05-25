#  Book Inventory Management and Sales Transactions System

This project is a Java-based desktop application built to automate and manage book inventories and sales transactions. It addresses the limitations of manual inventory systems by improving data accuracy, operational efficiency, user experience, and system security.

##  Features

-  **Book Inventory Management** – Add, update, and delete book records.
-  **Sales Transactions** – Record sales, calculate total amounts, and generate invoices.
-  **Book Search** – Quickly search books by title, author, or genre.
-  **Reporting** – Generate sales reports using JasperReports.
-  **User Login** – Simple authentication for system access.

---

##  Motivation

Manual inventory systems frequently encounter:
- Human errors in tracking book and sales data
- Financial losses due to inaccurate stock levels
- Difficulty in retrieving past sales information
- Poor user experience

**Automating** these processes enhances accuracy, streamlines operations, and minimizes errors.

---

##  Objectives

-  Improve operational efficiency through automation
-  Enhance stock and order tracking
-  Provide an intuitive GUI using Java Swing
-  Ensure secure access and protect business data

---

##  Development Tools & Technologies

| Component          | Technology                    |
|-------------------|-------------------------------|
| Programming Lang. | Java (JDK 22)                 |
| IDE               | NetBeans IDE 23               |
| Database          | MySQL via XAMPP v3.3.0        |
| GUI Library       | Java Swing                    |
| Reporting         | Jaspersoft Studio 6.21.3      |

---

## Setup Instructions
### Prerequisites
 - Java JDK 22
 - NetBeans IDE 23
 - XAMPP v3.3.0
 - Jaspersoft Studio 6.21.3

### Installation
- Install JDK 22 :
  Set environment variable JAVA_HOME.

- Install NetBeans IDE 23 :
Link with JDK 22 during setup.

- Install XAMPP :
Start MySQL via Control Panel.

- Set Up MySQL Database :
  - Open http://localhost/phpmyadmin
  - Create database: bookdb
  - Run provided SQL scripts to create tables.

- Configure Database in Code
  - Update connection string in the Java code:
<pre>
String url = "jdbc:mysql://localhost:3306/bookdb";
String user = "root";
String password = "";</pre>
- Install Jaspersoft Studio
<pre>Import .jrxml or .jasper files for report generation.</pre>

- Run Application
  - Launch XAMPP (MySQL)
  - Open project in NetBeans
  - Build and run the project

## raphical User Interfaces (GUI) 

### Login
![image](https://github.com/user-attachments/assets/57c41753-3712-47ac-8c3b-3331e7f70314)
![image](https://github.com/user-attachments/assets/0d0cb6c1-8950-47c5-97c3-01c929dec76a)
![image](https://github.com/user-attachments/assets/982524b9-37b8-4e02-bd92-c95e7c52765e)

### Dashboard 
![image](https://github.com/user-attachments/assets/8da7f70a-24e1-44fb-a97f-ecf43ee3606f)

### Manage Book Stock
![image](https://github.com/user-attachments/assets/31b6da02-242a-49f9-a1da-410a36be68cc)
![image](https://github.com/user-attachments/assets/d428bdc8-17f0-4851-84c6-898f7fe60f78)
![image](https://github.com/user-attachments/assets/e55cabf8-e7ff-41c7-b10f-285ca25c7845)
![image](https://github.com/user-attachments/assets/8578b3f5-1a3c-44b8-8064-19305915deb3)

### Sales Transaction Form 
![image](https://github.com/user-attachments/assets/41ae3766-c692-481f-a3d3-6752d65531c3)

