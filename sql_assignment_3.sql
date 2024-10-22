CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age > 18), 
    Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender CHAR(1),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2) NOT NULL 
);
-- Insert 10 rows
INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary)
VALUES 
(1, 'John', 'Doe', '1985-05-15', 39, 'M', 'HR', 30000),
(2, 'Aaliya', 'Khan', '1990-10-22', 34, 'F', 'Finance', 35000),
(3, 'Raj', 'Patel', '1988-07-12', 36, 'M', 'IT', 28000),
(4, 'Sara', 'Lee', '1995-09-11', 29, 'F', 'HR', 32000),
(5, 'Michael', 'Smith', '1980-03-23', 44, 'M', 'Sales', 25000),
(6, 'Jessica', 'Brown', '1986-06-05', 38, 'F', 'IT', 40000),
(7, 'Ravi', 'Gupta', '1992-12-14', 31, 'M', 'IT', 27000),
(8, 'Emily', 'Clark', '1991-01-18', 33, 'F', 'Finance', 24000),
(9, 'David', 'Miller', '1983-11-02', 41, 'M', 'Marketing', 26000),
(10, 'Sophia', 'Wilson', '1994-04-29', 30, 'F', 'IT', 34000);

-- Write a query that retrieves the name and date of birth of the manager with Manager_Id 1
SELECT First_Name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;


-- Write a query to display the annual income of all managers.
SELECT Manager_Id, First_Name, Last_Name, (Salary * 12) AS Annual_Income
FROM Managers;

-- Write a query to display records of all managers except ‘Aaliya’.
SELECT *
FROM Managers
WHERE First_Name != 'Aaliya';

-- Write a query to display details of managers whose department is IT and earns more than 25000 per month.
SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;


-- Write a query to display details of managers whose salary is between 10000 and 35000.
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;

select*from managers
