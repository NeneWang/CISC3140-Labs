-- CREATING AND DROPPING DATABASE
-- CREATE DATABASE student
-- DROP DATABASE student

-- CREATING AND REMOVING DATABASE IN OUR LINUX MACHINE
-- sqlite3 lab41.db
-- rm lab41.db

CREATE TABLE student( name CHAR(255), grade INT(10));


INSERT INTO student VALUES ("John", 10);
INSERT INTO student VALUES ("Rohdl", 9);
INSERT INTO student VALUES ("Rick", 10);
INSERT INTO student VALUES ("Marith", 7);
INSERT INTO student VALUES ("Kim", 8);

SELECT * FROM student;
ALTER TABLE student ADD surname CHAR(255);

UPDATE student SET surname="Smith" WHERE name="John";
UPDATE student SET surname="Reight" WHERE name="Rohdl";
UPDATE student SET surname="Sanchez" WHERE name="Rick";
UPDATE student SET surname="May" WHERE name="Marith";
UPDATE student SET surname="Lee" WHERE name="Kim";

-- Importing data from CSV Refer to students_data.csv available in the repo
.separator ","
.import students_data.csv student


-- 
CREATE TABLE homework (title CHAR(255), credits FLOAT);
.schema homework
-- Shows our homework SCHEMA
DROP TABLE homework;
.schema homework
-- We can see that the schema is no longer available (since the table had been deleted)


