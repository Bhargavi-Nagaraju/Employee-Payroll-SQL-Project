USE EmployeePayrollDB;
CREATE TABLE Departments(
	DepartmentID INT PRIMARY KEY IDENTITY(1,1),
	DepartmentName VARCHAR(50) NOT NULL
);
CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY Identity(1001,1),
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Gender CHAR(1) CHECK (Gender IN ('M','F','O')),
	Email VARCHAR(100) UNIQUE,
	Phone VARCHAR(15),
	HireDate DATE,
	DepartmentID INT,
	BaseSalary Decimal(10,2),
	FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
CREATE TABLE PayRoll(
	PayRollID INT PRIMARY KEY IDENTITY(1,1),
	EmployeeID INT,
	PayMonth VARCHAR(20),
	BasicSalary Decimal(10,2),
	HRA Decimal(10,2),
	DA Decimal(10,2),
	Deductions Decimal(10,2),
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Attendance(
	AttendanceID INT PRIMARY KEY IDENTITY(1,1),
	EmployeeID INT,
	AttendanceDate DATE,
	Status VARCHAR(10) CHECK (Status IN ('Present','Absent','OnLeave')),
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
