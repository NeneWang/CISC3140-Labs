
-- CREATING AND REMOVING DATABASE IN OUR LINUX MACHINE
-- sqlite3 lab41.db
-- rm lab41.db

CREATE TABLE student( name CHAR(255), grade INT(10));

.separator ","
.import students_data.csv student