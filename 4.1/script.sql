
-- CREATING AND REMOVING DATABASE IN OUR LINUX MACHINE (SQLITE3)
-- sqlite3 lab41.db
-- rm lab41.db

CREATE TABLE student( name CHAR(255), grade INT(10), surname CHAR(255));

.separator ","
.import students_data.csv student

-- Show available tables schemas
.schema

SELECT (strftime('%Y', 'now')- strftime('%Y',Dob)) - (strftime('%m-%d', 'now' )<strftime('%m-%d', Dob)) FROM Superhero);
SELECT (strftime('%Y', 'now') FROM Superhero);