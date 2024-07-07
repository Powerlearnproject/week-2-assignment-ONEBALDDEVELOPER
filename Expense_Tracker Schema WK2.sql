-- CREATE DATABASE IF NOT EXISTS expense_tracker;

-- USE expense_tracker;

-- CREATE TABLE IF NOT EXISTS Expenses (
--   expense_id INT PRIMARY KEY AUTO_INCREMENT,
--   amount DECIMAL(10,2) NOT NULL,
--   date DATE NOT NULL,
--   category VARCHAR(50) NOT NULL
-- );


-- Function to generate random date within a specific range (modify as needed)
-- DELIMITER //

-- CREATE FUNCTION GetRandomDate(startDate DATE, endDate DATE)
-- RETURNS DATE
-- READS SQL DATA
-- DETERMINISTIC
-- BEGIN
--   DECLARE randomDays INT;
--   SET randomDays = FLOOR(RAND() * (DATEDIFF(endDate, startDate) + 1));
--   RETURN DATE_ADD(startDate, INTERVAL randomDays DAY);
-- END; //

-- DELIMITER ;

-- -- Stored Procedure to insert sample data with random dates and categories (categories can be modified)
-- DELIMITER //

-- CREATE PROCEDURE InsertSampleData()
-- BEGIN
--   DECLARE counter INT DEFAULT 1;

--   WHILE counter <= 20 DO
--     INSERT INTO Expenses (amount, date, category)
--     VALUES (FLOOR(10 + RAND() * 100),
--             GetRandomDate(DATE_SUB(CURDATE(), INTERVAL 4 YEAR), CURDATE()),  -- Random date within the last 4 years
--             CASE WHEN counter % 4 = 0 THEN 'Groceries'
--                  WHEN counter % 4 = 1 THEN 'Entertainment'
--      expenses            WHEN counter % 4 = 2 THEN 'Transportation'
--                  ELSE 'Other'
--             END);
--     SET counter = counter + 1;
--   END WHILE;
-- END; //

-- DELIMITER ;

-- -- Call the procedure to insert sample data
-- CALL InsertSampleData();

-- -- Drop the functions and procedures if they are no longer needed
-- DROP PROCEDURE IF EXISTS InsertSampleData;
-- DROP FUNCTION IF EXISTS GetRandomDate;


-- 1.1 SELECT * FROM expenses;

-- 1.2 SELECT date AS day, category, amount  
	-- FROM expenses;

-- 1.3 SELECT * FROM expenses
--     WHERE date BETWEEN "2021-01-1" AND "2024-12-15";

-- 2.1 SELECT * FROM expenses
--     WHERE category = 'Entertainment';  

-- 2.2 SELECT * FROM expenses
-- 	   WHERE amount > 50;
	   
-- 2.3 SELECT * FROM expenses  
-- 	   WHERE amount > 75 AND category = 'Food';

-- 2.4 SELECT * FROM expenses 
--     WHERE category = 'Transportation' OR 'Groceries';

-- 2.5 SELECT * FROM expenses
--     WHERE category != 'Rent';

-- 3.1 SELECT * FROM expenses
-- 	   ORDER BY amount DESC;

-- 3.2 SELECT * FROM expenses
--     ORDER BY date DESC, category ASC;

 
-- 4.1 CREATE TABLE IF NOT EXISTS Income(
-- income_id INT Primary Key AUTO_INCREMENT,
-- amount DECIMAL(10,2) NOT NULL,
-- date DATE NOT NULL,
-- source VARCHAR(50) NOT NULL
-- );

-- 4.2  ALTER TABLE income
-- 		ADD COLUMN category VARCHAR(50);

-- 4.3 ALTER TABLE income
-- DROP COLUMN source;

 
 

