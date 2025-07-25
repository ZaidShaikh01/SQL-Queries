-- USE startersql;
-- DROP TABLE IF EXISTS addresses;

-- CREATE TABLE addresses (
-- id INT AUTO_INCREMENT PRIMARY KEY,
-- user_id INT,
-- street VARCHAR(255),
-- city VARCHAR(100),
-- state VARCHAR(100),
-- pincode VARCHAR(10),
-- CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
-- );

-- INSERT INTO addresses (user_id, street, city, state, pincode)
-- VALUES
-- (1, '221B MG Road', 'Mumbai', 'Maharashtra', '400001'),
-- (22, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
-- (3, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
-- (24, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
-- (5, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
-- (6, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
-- (7, '88 Connaught Place', 'Delhi', 'Delhi', '110001'),
-- (8, '10 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
-- (9, '23 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
-- (10, '45 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
-- (11, '67 Ashoka Road', 'Delhi', 'Delhi', '110001'),
-- (12, '89 MG Road', 'Pune', 'Maharashtra', '411001'),
-- (13, '12 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
-- (14, '34 Park Street', 'Kolkata', 'West Bengal', '700016'),
-- (15, '56 Connaught Place', 'Delhi', 'Delhi', '110001'),
-- (16, '78 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
-- (17, '90 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
-- (18, '11 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
-- (19, '33 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
-- (20, '22 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001');

-- SELECT * FROM users;
-- SELECT * FROM addresses;
-- INNER JOIN
-- SELECT users.name,addresses.city
-- FROM users
-- INNER JOIN addresses ON users.id = addresses.user_id;

-- LEFT JOIN
-- SELECT  users.name,users.gender,addresses.city,addresses.state
-- FROM users
-- LEFT JOIN addresses ON users.id = addresses.user_id;

-- RIGHT JOIN
-- SELECT users.name,users.gender,addresses.city AS city, addresses.state AS jaga
-- FROM users
-- RIGHT JOIN addresses ON users.id = addresses.user_id;

-- SELECT * FROM admin_users;
 
--  SELECT name FROM users
--  UNION
--  SELECT name FROM admin_users;

-- SELECT name, date_of_birth ,'User' AS role FROM users
-- UNION
-- SELECT name,date_of_birth, 'Admin' AS role FROM admin_users
-- ORDER BY date_of_birth DESC;

-- SELF JOIN

-- ALTER TABLE users
-- ADD COLUMN referred_by_id INT;
-- UPDATE users SET referred_by_id = 1 WHERE id IN(2,3,12,23,12,45,121);
-- UPDATE users SET referred_by_id = 4 WHERE id = 4;

SELECT 
a.id,
a.name AS user_name,
b.name AS referred_by_name
FROM users a
INNER JOIN users b on a.referred_by_id = b.id;
