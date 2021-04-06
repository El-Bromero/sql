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
SELECT * FROM tm_teammate;