create database stu1;
use stu1;

CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Salary DECIMAL(10, 2),
    CONSTRAINT chk_age CHECK (Age >= 18 AND Age <= 65),
    CONSTRAINT chk_salary CHECK (Salary >= 0));

insert into employees values(1,"krishna",25,30000),(2,"krish",26,40000),(3,"karthik",26,30500),(4,"kushal",21,35000);

select * from Employees;

ALTER TABLE Employees
ADD COLUMN Department VARCHAR(50),
ADD CONSTRAINT chk_department CHECK (Department IN ('HR', 'IT', 'Finance', 'Marketing'));


ALTER TABLE Employees
DROP constraint chk_age;

ALTER TABLE Employees
ADD CONSTRAINT chk_age CHECK (Age >= 20 AND Age <= 70);

-- This removes the chk_salary constraint from the Employees table.
ALTER TABLE Employees
DROP constraint chk_salary;


--  Naming CHECK Constraints for an Existing Table-
-- If you did not name your CHECK constraints when you created them, you would need to drop the unnamed constraint and add a new one with a name.
-- First, find the unnamed constraint using the following query:

SELECT CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS
WHERE  'Employee';

-- Once you have the constraint name, you can drop and recreate it:

-- Drop the unnamed constraint
-- ALTER TABLE Employees
-- DROP CHECK <constraint_name>;

-- Add the new named constraint
ALTER TABLE Employees
ADD CONSTRAINT chk_salary_named CHECK (Salary >= 0);

drop database stu1;

