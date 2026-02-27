USE EmployeePayrollDB;

INSERT INTO Departments(DepartmentName)
Values
('HR'),
('IT'),
('Finance'),
('Admin');

INSERT INTO Employees
(FirstName,LastName,Gender,Email,Phone,HireDate,DepartmentID,BaseSalary)
Values
('Ravi','Kumar','M','ravi.kumar@gmail.com','9876543210','2023-01-10',1,30000.00),
('Sita','Sharma','F','sita.sharma@gmail.com','9876543211','2023-02-15',2,35000.00),
('Arjun','Reddy','M','arjun.reddy@gmail.com','9876543212','2023-03-20',1,40000.00),
('Priya','Singh','F','priya.singh@gmail.com','9876543213','2023-04-05',3,32000.00),
('Karthik','Varma','M','karthik.varma@gmail.com','9876543214','2023-05-12',4,28000.00),
('Ananya','Iyer','F','ananya.iyer@gmail.com','9876543215','2023-06-18',2,37000.00);

INSERT INTO PayRoll
(EmployeeID,PayMonth,BasicSalary,HRA,DA,Deductions)
Values
(1001, 'Jan-2024', 30000, 5000, 3000, 2000),
(1002, 'Jan-2024', 35000, 6000, 3500, 2500),
(1003, 'Jan-2024', 40000, 7000, 4000, 3000),
(1004, 'Jan-2024', 32000, 5500, 3200, 1800),
(1005, 'Jan-2024', 28000, 4500, 2800, 1500),
(1006, 'Jan-2024', 37000, 6200, 3600, 2400);

INSERT INTO Attendance
(EmployeeID,AttendanceDate,Status)
Values
(1001, '2024-01-01', 'Present'),
(1002, '2024-01-01', 'Absent'),
(1003, '2024-01-01', 'Present'),
(1004, '2024-01-01', 'OnLeave'),
(1005, '2024-01-01', 'Present'),
(1006, '2024-01-01', 'Present');