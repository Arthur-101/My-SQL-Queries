SHOW DATABASES;

DROP DATABASE School;

CREATE DATABASE IF NOT EXISTS School;

USE School;

CREATE TABLE StudentResult (
    Result_Id INT PRIMARY KEY,
    Adm_No INT,
    Sub1 INT,
    Sub2 INT,
    Sub3 INT,
    Sub4 INT,
    Sub5 INT
);

INSERT INTO StudentResult (Result_Id, Adm_No, Sub1, Sub2, Sub3, Sub4, Sub5)
VALUES(01, 101, 85, 62, 48, 91, 58),
      (02, 102, 56, 78, 84, 79, 65),
      (03, 103, 70, 47, 42, 86, 78),
      (04, 104, 32, 53, 49, 44, 61),
      (05, 105, 48, 36, 61, 75, 27),
      (06, 106, 85, 92, 78, 91, 88),
      (07, 107, 76, 88, 94, 79, 85),
      (08, 108, 90, 87, 92, 96, 78),
      (09, 109, 82, 93, 89, 84, 91),
      (10, 110, 28, 36, 21, 25, 20),
      (11, 111, 42, 68, 63, 69, 54),
      (12, 112, 75, 46, 64, 49, 30),
      (13, 113, 62, 57, 48, 66, 55),
      (14, 114, 45, 53, 52, 59, 61),
      (15, 115, 75, 68, 49, 74, 72);

ALTER TABLE StudentResult
ADD TotalPercentage DECIMAL(5, 2),
ADD Grade VARCHAR(2);

UPDATE StudentResult
SET TotalPercentage = ((Sub1 + Sub2 + Sub3 + Sub4 + Sub5) / 500) * 100;

UPDATE StudentResult
SET Grade = 
    CASE
        WHEN TotalPercentage > 80 THEN 'A'
        WHEN TotalPercentage > 60 AND TotalPercentage <= 79.99 THEN 'B'
        WHEN TotalPercentage > 30 AND TotalPercentage <= 59.99 THEN 'C'
        ELSE 'D'
    END;
