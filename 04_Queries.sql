--1.Display all records from the Employees table to understand the database structure
Select * from Employees
--2.Fetch Employees belonging to specific department using WHERE clause
SELECT EmployeeID,FirstName,LastName,DepartmentID
From Employees
Where DepartmentID = 3
--Display all records from the Departments table
Select * from Departments
--3.LEFT JOIN
SELECT 
   e.FirstName,
   e.LastName,
   d.DepartmentName
From dbo.Employees e
LEFT JOIN dbo.Departments d
ON e.DepartmentID = d.DepartmentID;
--4.Aggregate function count
SELECT COUNT(*) AS TotalEmployees
FROM dbo.Employees;
--5.AVG
SELECT AVG(BaseSalary) AS AverageSalary
FROM dbo.Employees;
--6 ORDER BY
SELECT EmployeeID,DepartmentID
From Employees
ORDER BY DepartmentID DESC;
--7 GROUP BY
SELECT FirstName,Gender,DepartmentID
From Employees
Where Gender = 'M'
Group By FirstName,Gender,DepartmentID
--8 Having
SELECT DepartmentID, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID
HAVING DepartmentID = 2;

 

