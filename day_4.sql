-- USE startersql;
-- SHOW INDEXES FROM users;
-- CREATE INDEX idx_email ON users(gender);
-- CREATE INDEX idx_gender_salary ON users(gender,salary);
-- SELECT * FROM users WHERE email="aarav@example.com" AND gender = "Male";
-- SELECT * FROM users
-- WHERE gender = "Female" AND salary > 70000;

-- FOR DROPPING A INDEX
-- DROP INDEX idx_email on users;
-- SELECT AVG(salary) FROM users;
--             SubQueries
-- SELECT name,email
-- FROM users
-- Where salary > (SELECT AVG(salary) FROM users);

-- SELECT id FROM users WHERE salary > 75000;
-- SELECT id,name,referred_by_id
-- FROM users
-- WHERE referred_by_id IN (SELECT id FROM users WHERE salary > (SELECT AVG(salary) from users));

-- SELECT id,name, (SELECT AVG(salary) FROM users) AS avg_salary FROM users;
-- 				GROUP BY AND HAVING
-- SELECT gender, AVG(salary) from users GROUP BY gender;
-- SELECT gender, AVG(salary) AS 'AVG SALARY'
-- FROM users
-- WHERE referred_by_id IS NOT NULL
-- GROUP BY gender WITH ROLLUP;

-- DELIMITER $$
-- CREATE PROCEDURE AddUser(
-- IN p_name VARCHAR(100),
-- IN p_email VARCHAR(100),
-- IN p_gender ENUM('Male', 'Female', 'Other'),
-- IN p_dob DATE,
-- IN p_salary INT
-- )
-- BEGIN
-- 	INSERT INTO users (name, email, gender, date_of_birth, salary)
--     VALUES (p_name, p_email, p_gender, p_dob,p_salary);
--     SELECT * FROM users;
-- END $$
-- DELIMITER ;

-- CALL AddUser('John','Jonh@zaid.com','Male','1990-07-21',440000);
SELECT * from users;
DROP PROCEDURE IF EXISTS AddUser;