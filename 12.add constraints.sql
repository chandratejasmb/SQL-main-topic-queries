CREATE DATABASE  StudentManagement;
USE StudentManagement;

CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE);

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender ENUM('Male', 'Female') NOT NULL,
    Age INT CHECK (Age >= 0),   
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) ON DELETE CASCADE);


ALTER TABLE Students ADD CONSTRAINT unique_firstname UNIQUE (FirstName);

ALTER TABLE Students DROP INDEX unique_firstname;

ALTER TABLE Students ADD CONSTRAINT unique_name UNIQUE (FirstName, LastName);

ALTER TABLE Students ADD CONSTRAINT chk_age CHECK (Age >= 10);

ALTER TABLE Students DROP CHECK chk_age;

ALTER TABLE Students ADD CONSTRAINT chk_age CHECK (Age >= 18);

ALTER TABLE Students ADD CONSTRAINT fk_department
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) ON DELETE CASCADE;

ALTER TABLE Students DROP FOREIGN KEY fk_department;

ALTER TABLE Students ADD CONSTRAINT fk_department
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) ON DELETE SET NULL;

ALTER TABLE Students DROP INDEX unique_name;

ALTER TABLE Students DROP CHECK chk_age;

ALTER TABLE Students DROP FOREIGN KEY fk_department;
drop DATABASE  StudentManagement;

