--1.Display all records from the Employees table to understand the database structure
Select * from Employees
--2.Fetch Employees belonging to specific department using WHERE clause
SELECT EmployeeID,FirstName,LastName,DepartmentID
From Employees
Where DepartmentID = 3
--Display all records from the Departments table
Select * from Departments
--3.LEFT JOIN
    Shows all employees with their department names, including those without a department.
SELECT 
   e.FirstName,
   e.LastName,
   d.DepartmentName
From dbo.Employees e
LEFT JOIN dbo.Departments d
ON e.DepartmentID = d.DepartmentID;
--4.Aggregate function count
    Counts the total number of employees.
SELECT COUNT(*) AS TotalEmployees
FROM dbo.Employees;
--5.AVG
    Calculates the average salary of all employees.
SELECT AVG(BasicSalary) AS AverageSalary
FROM dbo.PayRoll;
--6 ORDER BY
    Displays employees sorted by DepartmentID in descending order.
SELECT EmployeeID,DepartmentID
From Employees
ORDER BY DepartmentID DESC;
--7 GROUP BY
    Groups male employees by name and department (removes duplicates of same combination).
SELECT FirstName,Gender,DepartmentID
From Employees
Where Gender = 'M'
Group By FirstName,Gender,DepartmentID
--8 Having
    Shows employee count only for Department ID 2 after grouping.
SELECT DepartmentID, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID
HAVING DepartmentID = 2;
--9 Department-wise Total Salary Paid
    Calculates total salary paid for each department by joining Employees, Departments, and Payroll tables.
SELECT 
    d.DepartmentName,
    SUM(p.BasicSalary + p.HRA + p.DA - p.Deductions) AS TotalSalaryPaid
FROM Employees e
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
INNER JOIN PayRoll p
    ON e.EmployeeID = p.EmployeeID
GROUP BY d.DepartmentName
ORDER BY TotalSalaryPaid DESC;
--10 Highest Salary Employee
     Returns the employee with the highest basic salary.
  select e.FirstName,p.BasicSalary
  From Employees e
  Join PayRoll p On e.EmployeeID = p.EmployeeID
  Where p.BasicSalary = (select Max(BasicSalary) From PayRoll)
--11 Lowest Salary Employee
     Returns the employee with the Lowest basic salary
  select e.FirstName,p.BasicSalary
  From Employees e
  Join PayRoll p On e.EmployeeID = p.EmployeeID
  Where p.BasicSalary = (select Min(BasicSalary) From PayRoll)
--12 Employees earning above average salary
     SELECT e.FirstName, p.BasicSalary
     FROM Employees e
     JOIN payroll p ON e.EmployeeID = p.EmployeeID
     WHERE p.BasicSalary > (SELECT AVG(BasicSalary) FROM payroll);
--13 Net Salary
     SELECT 
    e.FirstName,
    p.BasicSalary,
    p.HRA,
    p.DA,
    p.Deductions,
    (p.BasicSalary + p.HRA + p.DA - p.Deductions) AS NetSalary
FROM Employees e
JOIN Payroll p ON e.EmployeeID = p.EmployeeID;
--14 Count Present Days per Employee
     SELECT 
    e.EmployeeID,
    e.FirstName,
    COUNT(*) AS PresentDays
FROM Employees e
JOIN Attendance a 
    ON e.EmployeeID = a.EmployeeID
WHERE a.Status = 'Present'
GROUP BY e.EmployeeID, e.FirstName;

 

