-- Lines after this are commented
/*
This is multi comment
*/

-- RENAMING A TABLE
-- RENAME TABLE users TO customers;

-- Alter a table

-- Add column in table
/*
ALTER TABLE users ADD column isActive BOOLEAN DEFAULT TRUE;
SELECT * FROM USERS;
*/

-- Remove column in table

-- ALTER TABLE users DROP column isActive;
-- SELECT * FROM users;

-- Modify column type
-- ALTER TABLE users MODIFY column name varchar(150);
-- ALTER TABLE users MODIFY COLUMN email VARCHAR(150) AFTER id;
-- ALTER TABLE users MODIFY COLUMN date_of_birth DATE FIRST;
SELECT * FROM users;


