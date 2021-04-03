# SQL

## MySQL Queries
Using a SQL Interface (GUI or CLI), connect to the following [AWS RDS](https://aws.amazon.com/rds/) Instance : 

- Endpoint : `tekcamp-4.crmocoybkprv.us-east-1.rds.amazonaws.com` 
- PORT : `3306`

The credentials are as follows : 

- username : `<first-name>_<last-name>`
- password : `cohort-4`

###
***************************************
After connecting to the MySQL RDS instance, <h2>DO NOT UNDER ANY CIRCUMSTANCES RUN THE FOLLOWING QUERY(s): </h2>
🔺 💢 💢 💢 💢 💢 💢 💢 💢💢 💢 💢 💢 🔺 

`DROP SCHEMA | DATABASE company`

`DROP SCHEMA | DATABASE student;`

🔺 💢 💢 💢 💢 💢 💢 💢 💢💢 💢 💢 💢 🔺 
###
***************************************
   
### Using the `student` schema, perform the following queries, and record them in the `student.sql` file, : 
  1.  Find the male students
  2.  Find the female students
  3.  Find the student(s) from Texas
  4.  Find the student(s) from Virginia
  5.  Find the student(s) fron O'Haraton
  6.  Retrieve the student(s) that are NOT from Texas
  7.  Find the student(s) from NY that have a GPA greater than 3.0
  8.  Organize the students with the following fields :
      `Student Name` , `GPA`
  9.  Organize the students in alphabetical order by last name
  10. Organize the students in descending order by first name
  11. Retrieve the top 100 students with the highest GPA
  12. Calculate the average GPA of the students
  13. Calculate the number of students in the table
  14. Show the number of students that have a GPA > 3.0 from each type of educational background
        - `education`  , `GPA > 3.0`
        - `high school`, `75` (as an example record, but not accurately reflecting the dataset)
  15. Retrieve the Female Students with a GPA > 3.5
        - `Female Student` , `GPA`
  16. Retrieve the Male Students with a GPA < 2.0 
        - `Male Student` , `GPA`

###
***************************************
### Using the `company` schema, perform the following queries, and record them in the `company.sql` file, : 

  1. Retrieve the Employees in alphabetical order by last name
  2. Sort the employees by Salary, from highest to lowest
  3. Calculate the average salary of all of the employees
  4. Retrieve the employee with the lowest salary
  5. Retrieve the employee with the highest salary
  6. Retrieve the top ten employees with the highest salary
  8. Retrieve the employees by the date of hire, from newest to oldest hire.
  9. Retreive the employee with the Departmnet Name in the following format : 
    - `Full Employee Name` , `Department Name`
  10. Retrive the `Full Employee Name` and `username` in alphabetical order by username
  11. Retrieve the Number of employees per department, organized by departments in descending order

###
***************************************
### Using the <code>tc4_&lt;your_firstname_your_lastname&gt;</code>. schema, perform the following queries, and record them all in the `tm_schema.sql` file : 

- Create **your own** schema.  Name your schema in the following format : <code>tc4_&lt;your_firstname_your_lastname&gt;</code>.  
- After creating your schema, request your instructor to grant you CRUD access to the schema you just created.

1. Create a table in **your schema**.  Name the table `tm_teammate`.  The `tm_teammate` table should have the folowing fields : 
  - `name`, `background`, `hobbies`, `id` (primary key)
2. Insert the members of your TM group into the `tm_teammate` table.  Obtain the neccessary data from your tm-teammates to insert. If your tm_teammate does not feel comforable sharing information, put `NULL` in the record for that particular field.
3. Insert your Instructor into the `tm_teammate` table.  
4. Update the instructor record to reflect your TM instead of your instructor
5. Remove your TM from the `tm_teammate` table.

6. Create a copy of the student table from the `student` schema into your <code>tc4_&lt;your_firstname_your_lastname&gt;</code> schema and perform the following queries : 
   1. Remove all students 
   2. Insert 5 new student records
   3. Change the GPA of all female students from Texas to 4.0
   4. Set the GPA to NULL for any student without an education
   5. Format and Update the dates of birth (dob) for every student to the following : 'MM-DD-YYYY' **(OPTIONAL)**
   
7. Create a copy of the `department` and `employee` tables from the  `company` schema into your <code>tc4_&lt;your_firstname_your_lastname&gt;</code> schema and perform the following queries : 
   1. Add three new departments
   2. Add 6 new employees, assigned to one of the new departments you just created
   3. Change the department name of `FINANCE` to `ACCOUNTING`
   4. Retrieve all the department names as lowercased
   5. Remove the employee from each department with the lowest salary.

### Don't forget to record every query performed above in the `tm_schema.sql` file.   
***************************************
### Optional Exercise

Create a new cloud managed relational database instance powered by MySQL.  Some examples are : 

- [Amazon Relational Database Service (RDS)](https://aws.amazon.com/rds/)
- [Azure Database for MySQL](https://azure.microsoft.com/en-us/services/mysql/)
- [Google Cloud SQL](https://cloud.google.com/sql)

Do the query exercises on your own managed cloud database instance.  Be sure to add the URL to your instance here on this README.

Create another <code>.sql</code> "script" file that shows all the queries that were performed to accomplish this task.  You should name the file according to the cloud provider you selected for this task.  For example, if you went with AWS, you can name the file :  `aws_rds.sql` for example.  

Add some comments at the top of the sql file that describe some of the steps you took to configure the managed cloud database instance.  Come up with a way to display all the data that you have stored on your instance.  One recommendation would be to create a SQL script file that returns all the data from your cloud database instance.  Be sure to add appropriate instructions to the sql file to properly get the data to verify the data is stored properly.


*************
## SQL Database Modeling

For these exercises, create an Entity Relationship (Database Schema Diagram) for the following scenarios.  You can use any Database modeling tool to complete the job.  Below are a few choices : 
  
 - [`dbdiagram.io`](https://dbdiagram.io/)
 - [`dbdesigner.net`](https://www.dbdesigner.net/)
 - [`sqldbm`](https://app.sqldbm.com/)
 - [`genmymodel`](https://app.sqldbm.com/)

After creating the diagrams, implement each model in the schema you created in the first exercise.(<code>tc4_&lt;your_firstname-your_lastname&gt;</code>).  Record all your SQL queries in the `db_modeling.sql` file.

Note, there are multiple ways to model the following scenarios.  There is **not** necessarily only one right answer, but multiple approaches.  Use your database modeling skills to design a logical database model.

1. TEKCafe  is looking to design a relational database management system.  They have to keep track of their customers in relation to the orders they make.  TEKCafe is interested in keeping track of all of their products that their customers will order.  TEK Cafe currently has the following products available for customers to purchase: 

- Teas
- Coffees
- Coffee Mugs
- Frappuccinos 

2. A medical center employs several physicians. A physician can see many patients, and a patient can be seen by many physicians though not always on the one visit. On any particular visit, a patient has one or more diagnoses. 

3. A marketing company is setting up a rating management system for products belonging to one of their clients.  They want to keep track of the product ratings provided by each customer.  The model should keep track of the product ratings of different products provided by each customer.  

4. A university wants to set up a system for managing their students and student advisors.  Once a student chooses their major, they are assigned a student advisor that has experience in that particular major.   Once assigned, the advisor can help them get through the major they have selected.  The university wants to keep track of all the majors, students, and advisors.  

5. An e-commerce business wants to keep track of their customers, products, and vendors.  They also want to keep track of the orders that customers have placed.

6. Create a Relational Database Model of TEKcamp


## ********************************************************
## Git Instructions

- [ ] Create a template copy of this repository by clicking : "Use this template"
- [ ] Name the repository the same name as the master template repository.  
- [ ] Select Private Access for your template copy.
- [ ] Add your TM as collaborator
- [ ] Clone YOUR repo to your local computer
- [ ] Create a new branch: <code>git checkout -b `<firstName-lastName>`</code>.
- [ ] Implement the project on your newly created `<firstName-lastName>` branch, committing changes regularly.
- [ ] Push all of your commits: <code>git push origin `<firstName-lastName>`</code>.
- [ ] When ready for your TM to review, open a Pull Request (PR) and add your TM as a collaborator.

## ********************************************************