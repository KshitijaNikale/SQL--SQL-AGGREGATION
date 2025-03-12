USE library_db;
DROP TABLE IF EXISTS Library;
CREATE TABLE Library ( Book_ID INT PRIMARY KEY,
Title VARCHAR(100),
Author VARCHAR(50),
Genre VARCHAR(30),
Status VARCHAR(10)
);

INSERT INTO Library ( Book_ID, Title, Author, Genre, Status)
VALUES 
(101, 'The House in the Cerulean Sea', 'TJ Klune', 'Fantasy', 'Borrowed'),
(102, 'Verity', 'Colleen Hoover', 'Psychological Thriller', 'Available'),
(103, 'It Ends with us', 'Colleen Hoover', 'Contemporary Romance','Borrowed'),
(104, 'Atomic Habits', 'James Clear', 'Self-help', 'Available'),
(105, 'Haunting Adeline', 'HD Carlton', 'Dark Romance', 'Borrowed');
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE Library ADD Copies_Available INT;
UPDATE Library 
SET Copies_Available = 
    CASE 
        WHEN Book_ID = 101 THEN 3
        WHEN Book_ID = 102 THEN 5
        WHEN Book_ID = 103 THEN 2
        WHEN Book_ID = 104 THEN 4
        WHEN Book_ID = 105 THEN 1
        END;
        ALTER TABLE Library ADD Pages INT;
        UPDATE library
        SET Pages =
        CASE
        WHEN Book_ID = 101 THEN 300
        WHEN Book_ID = 102 THEN 500
        WHEN Book_ID = 103 THEN 245
        WHEN Book_ID = 104 THEN 430
        WHEN Book_ID = 105 THEN 180
        END;
        
SELECT AVG(Pages) AS Avverage_Pages FROM Library;

