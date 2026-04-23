# 📊 Employee Payroll Management System (SQL)

## 📌 Project Overview

This project is a SQL-based Employee Payroll Management System designed to manage employee records, track attendance, and process payroll data. It simulates a real-world organizational database and demonstrates how SQL can be used for data storage, retrieval, and analysis.

---

## 🧱 Database Structure

The system consists of four main tables:

### 1. Departments

Stores department details.

* DepartmentID (Primary Key)
* DepartmentName

### 2. Employees

Stores employee information.

* EmployeeID (Primary Key)
* FirstName, LastName
* Gender (M/F/O)
* Email (Unique)
* Phone
* HireDate
* DepartmentID (Foreign Key)
* BaseSalary

### 3. PayRoll

Stores salary components.

* PayRollID (Primary Key)
* EmployeeID (Foreign Key)
* PayMonth
* BasicSalary
* HRA
* DA
* Deductions

### 4. Attendance

Tracks employee attendance.

* AttendanceID (Primary Key)
* EmployeeID (Foreign Key)
* AttendanceDate
* Status (Present / Absent / OnLeave)

---

## 📥 Data Population

* Inserted **4 departments**
* Inserted **30 employees** across different departments
* Added payroll data for multiple months
* Recorded attendance with different statuses

This dataset helps simulate a realistic company environment.

---

## ⚙️ SQL Concepts Used

* DDL (CREATE TABLE with constraints)
* DML (INSERT statements)
* SELECT queries
* WHERE filtering
* JOINs (INNER JOIN, LEFT JOIN)
* Aggregate functions (COUNT, AVG, SUM)
* GROUP BY and HAVING
* Subqueries
* ORDER BY
* VIEW creation

---

## 🔍 Key Functional Queries

* Retrieve employee and department data
* Filter employees by department
* Count total employees
* Calculate average salary
* Department-wise salary expenditure
* Identify highest and lowest salary employees
* Employees earning above average salary
* Net salary calculation (Basic + HRA + DA – Deductions)
* Attendance tracking and present day count

---

## 📈 View: EmployeePayrollSummary

A SQL view is created to simplify payroll reporting.

### Purpose:

* Combine multiple tables into one report
* Reduce query complexity
* Provide quick access to salary data

### Includes:

* Employee full name
* Department name
* Salary components
* Net salary calculation

---

## 💡 Insights

* Salary is calculated using multiple components (Basic, HRA, DA, Deductions)
* Departments with more employees have higher payroll expenses
* Employees earning above average salary can be identified using SQL subqueries
* Attendance data helps in analyzing employee consistency
* SQL views improve performance and readability of queries

---

## 🎯 Project Objective

* To design a relational database system
* To apply SQL concepts in a real-world scenario
* To perform data analysis using SQL queries
* To prepare for roles such as MIS Executive, Data Analyst, and SQL Developer

---

## 🚀 Conclusion

This project demonstrates how SQL can be used effectively to manage employee payroll systems. It highlights strong foundational knowledge in database design, data manipulation, and query optimization.

---

