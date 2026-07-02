-- ==========================================
-- Employees Database Data Extraction
-- ==========================================

-- STEP 1 : Create Database
DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;

-- ==========================================
-- STEP 2 : Create Employee Table
-- ==========================================

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Age INT,
    City VARCHAR(50),
    JoinDate DATE
);

-- ==========================================
-- STEP 3 : Insert Sample Records
-- ==========================================

INSERT INTO Employees
(FirstName, LastName, Department, Salary, Age, City, JoinDate)

VALUES

('Amit','Sharma','IT',65000,28,'Delhi','2024-05-15'),

('Priya','Singh','HR',52000,30,'Mumbai','2025-11-20'),

('Rahul','Verma','Finance',72000,35,'Kolkata','2024-03-10'),

('Sneha','Patel','IT',80000,27,'Ahmedabad','2023-01-12'),

('Arjun','Kumar','Marketing',48000,25,'Delhi','2024-07-18'),

('Neha','Gupta','HR',55000,29,'Pune','2025-09-05'),

('Rohit','Das','Finance',69000,32,'Kolkata','2023-06-30'),

('Anjali','Roy','IT',75000,31,'Bangalore','2025-12-15'),

('Vikas','Yadav','Marketing',46000,24,'Lucknow','2026-02-22'),

('Meera','Joshi','IT',90000,34,'Mumbai','2023-08-14');



-- ==========================================
-- 1. Display all records
-- ==========================================

SELECT *
FROM Employees;



-- ==========================================
-- 2. Display specific columns
-- ==========================================

SELECT
EmployeeID,
FirstName,
Department,
Salary
FROM Employees;



-- ==========================================
-- 3. Employees from IT department
-- ==========================================

SELECT *
FROM Employees
WHERE Department='IT';



-- ==========================================
-- 4. Employees with salary greater than 60000
-- ==========================================

SELECT *
FROM Employees
WHERE Salary > 60000;



-- ==========================================
-- 5. Using AND operator
-- Employees in IT department earning above 70000
-- ==========================================

SELECT *
FROM Employees
WHERE Department='IT'
AND Salary > 70000;



-- ==========================================
-- 6. Using OR operator
-- Employees from HR or Finance department
-- ==========================================

SELECT *
FROM Employees
WHERE Department='HR'
OR Department='Finance';



-- ==========================================
-- 7. Using LIKE operator
-- Names starting with 'A'
-- ==========================================

SELECT *
FROM Employees
WHERE FirstName LIKE 'A%';



-- ==========================================
-- 8. Using LIKE operator
-- Cities ending with 'i'
-- ==========================================

SELECT *
FROM Employees
WHERE City LIKE '%i';



-- ==========================================
-- 9. Using BETWEEN operator
-- Salary between 50000 and 75000
-- ==========================================

SELECT *
FROM Employees
WHERE Salary
BETWEEN 50000 AND 75000;



-- ==========================================
-- 10. BETWEEN with dates
-- Employees joined between 2024 and 2025
-- ==========================================

SELECT *
FROM Employees
WHERE JoinDate
BETWEEN '2024-01-01'
AND '2025-12-31';



-- ==========================================
-- 11. ORDER BY Salary (Ascending)
-- ==========================================

SELECT *
FROM Employees
ORDER BY Salary ASC;



-- ==========================================
-- 12. ORDER BY Salary (Descending)
-- ==========================================

SELECT *
FROM Employees
ORDER BY Salary DESC;



-- ==========================================
-- 13. ORDER BY Department then Salary
-- ==========================================

SELECT *
FROM Employees
ORDER BY Department ASC,
Salary DESC;



-- ==========================================
-- 14. LIMIT first 5 rows
-- ==========================================

SELECT *
FROM Employees
LIMIT 5;



-- ==========================================
-- 15. Top 3 highest paid employees
-- ==========================================

SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 3;



-- ==========================================
-- 16. Top 2 youngest employees
-- ==========================================

SELECT *
FROM Employees
ORDER BY Age ASC
LIMIT 2;



-- ==========================================
-- 17. Combined Example
-- IT employees
-- Salary between 60000 and 90000
-- Ordered by Salary
-- Display only first 2 records
-- ==========================================

SELECT
EmployeeID,
FirstName,
Department,
Salary
FROM Employees

WHERE Department='IT'
AND Salary BETWEEN 60000 AND 90000

ORDER BY Salary DESC

LIMIT 2;



-- ==========================================
-- 18. Multiple Conditions
-- Employees from Delhi or Mumbai
-- ==========================================

SELECT *
FROM Employees

WHERE City='Delhi'
OR City='Mumbai'

ORDER BY FirstName;



-- ==========================================
-- 19. Names containing letter 'a'
-- ==========================================

SELECT *
FROM Employees

WHERE FirstName LIKE '%a%';



-- ==========================================
-- 20. Employees older than 30
-- Sorted by Age
-- ==========================================

SELECT *
FROM Employees

WHERE Age > 30

ORDER BY Age ASC;

