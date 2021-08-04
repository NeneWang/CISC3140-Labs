-- sqlite3 lab41.db

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

