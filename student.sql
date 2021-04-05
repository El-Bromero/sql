-- queries on the student schema go here
SHOW schemas;
USE student;

SELECT * FROM student WHERE gender = 'M';
SELECT * FROM student WHERE gender = 'F';
SELECT * FROM student WHERE state = 'TX';
SELECT * FROM student WHERE state = 'VA';
SELECT * FROM student WHERE city = 'O\'Haraton';
SELECT * FROM student WHERE state NOT IN ('TX');
SELECT * FROM student WHERE state = 'NY' AND gpa > 3.0;
SELECT CONCAT(first_name, ' ', last_name) AS name, gpa FROM student;
SELECT * FROM student ORDER BY last_name;
SELECT * FROM student ORDER BY first_name DESC;
SELECT * FROM student ORDER BY gpa DESC LIMIT 100;
SELECT AVG(gpa) FROM student;
SELECT COUNT(*) FROM student;
SELECT education, COUNT(*) FROM student WHERE gpa > 3.0 GROUP BY education;
SELECT * FROM student WHERE gender = 'F' AND gpa > 3.5;
SELECT * FROM student WHERE gender = 'M' AND gpa < 2.0;