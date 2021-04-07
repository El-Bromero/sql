-- queries on your personal tm_schema go here
CREATE SCHEMA IF NOT EXISTS tc4_brandon_romero;
SHOW schemas;
USE tc4_brandon_romero;
CREATE TABLE tm_teammate(
	id int,
	name varchar(255),
    background varchar(255),
    hobbies varchar(255),
    PRIMARY KEY (id)
);
INSERT INTO tm_teammate VALUES (1, "Brandon Romero", "Computer Science", "Playing video games");
INSERT INTO tm_teammate VALUES (2, "Anna Conover", "Computer Science", "Studying");
INSERT INTO tm_teammate VALUES (3, "Jude Carpenter", "Computer Science", "Coding");
INSERT INTO tm_teammate VALUES (4, "Rinn Yanas", "Computer Science", "Watching movies");
INSERT INTO tm_teammate VALUES (5, "Amir Yunas", "TEKSystems", "Teaching");
UPDATE tm_teammate SET name = "Alex Alspaw", hobbies = "Mentoring" WHERE id = 5;
DELETE FROM tm_teammate WHERE name = "Alex Alspaw";

CREATE TABLE IF NOT EXISTS tc4_brandon_romero.student LIKE student.student;
DELETE FROM student;
INSERT INTO student VALUES (1, "Michael", "Scott", "12-12-1965", "M", "Scranton", "PA", "college", "3.2");
INSERT INTO student VALUES (2, "Jolyne", "Cujoh", "07-02-1992", "F", "Miami", "FL", "N/A", "0.0");
INSERT INTO student VALUES (3, "Ermes", "Costello", "03-26-1990", "F", "Lubbock", "TX", "high school", "2.6");
INSERT INTO student VALUES (4, "Enrico", "Pucci", "06-05-1972", "M", "New York", "NY", "college", "3.99");
INSERT INTO student VALUES (5, "Walter", "White", "10-18-1962", "M", "Albuquerque", "NM", "PHD", "4.0");
UPDATE student SET gpa = 4.00 WHERE state = "TX";
UPDATE student SET gpa = NULL WHERE education = "N/A";

CREATE TABLE IF NOT EXISTS tc4_brandon_romero.department LIKE company.department;
INSERT tc4_brandon_romero.department SELECT * FROM company.department;
CREATE TABLE IF NOT EXISTS tc4_brandon_romero.employee LIKE company.employee;
INSERT tc4_brandon_romero.employee SELECT * FROM company.employee;
INSERT INTO department VALUES (600, "STATISTICS");
INSERT INTO department VALUES (700, "ENGINEERS");
INSERT INTO department VALUES (800, "TESTING");
INSERT INTO employee VALUES (300, "Jolyne", "Cujoh", "JCUJOH", 1231231234, "01-JAN-01", 5600, 500);
INSERT INTO employee VALUES (301, "Ermes", "Costello", "ECOSTELLO", 1231231234, "01-JAN-01", 6600, 600);
INSERT INTO employee VALUES (302, "Enrico", "Pucci", "EPUCCI", 1231231234, "01-JAN-01", 8900, 600);
INSERT INTO employee VALUES (303, "Walter", "White", "WWHITE", 1231231234, "01-JAN-01", 6700, 700);
INSERT INTO employee VALUES (304, "John", "Doe", "JDOE", 1231231234, "01-JAN-01", 9600, 700);
INSERT INTO employee VALUES (305, "First", "Last", "FLAST", 1231231234, "01-JAN-01", 12500, 800);
UPDATE department SET dept_name = "ACCOUNTING" WHERE dept_name = "FINANCE";
SELECT LOWER(dept_name) FROM department;
-- MySQL doesn't let you modify a table while using a subquery with the same table. Using "(SELECT * FROM employee) AS SUB" to overcome this and delete lowest monthly salary based on dept
DELETE FROM employee WHERE monthly_salary IN (SELECT MIN(monthly_salary) FROM (SELECT * FROM employee) AS SUB GROUP BY dept_id);