-- queries on the company schema go here
SHOW schemas;
USE company;

SELECT * FROM employee ORDER BY last_name;
SELECT * FROM employee ORDER BY monthly_salary DESC;
SELECT AVG(monthly_salary) FROM employee;
SELECT * FROM employee WHERE monthly_salary = (SELECT MAX(monthly_salary) FROM employee);
SELECT * FROM employee WHERE monthly_salary = (SELECT MIN(monthly_salary) FROM employee);
SELECT * FROM employee ORDER BY monthly_salary DESC LIMIT 10;
SELECT * FROM employee ORDER BY SUBSTRING(hire_date, 8, 9) DESC, SUBSTRING(hire_date, 4, 6), SUBSTRING(hire_date, 1, 2);
SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS 'Full Employee Name', dept.dept_name AS 'Department Name' FROM employee emp, department dept WHERE emp.dept_id = dept.id;
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Employee Name', username FROM employee ORDER BY username;
SELECT dept.dept_name, COUNT(*) FROM employee, department dept WHERE dept_id = dept.id GROUP BY dept_id ORDER BY dept.dept_name DESC;