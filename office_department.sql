create database Office;
use office;
create table department(
deptno int,
deptname varchar(20),
location varchar(20)
);
ALTER TABLE department
ADD designation VARCHAR(20);
INSERT INTO department (deptno, deptname, location, designation) 
VALUES (1, 'Accounting', 'Hyderabad', 'Manager');

INSERT INTO department (deptno, deptname, location, designation) 
VALUES (2, 'Research', 'Chennai', 'Professor');

INSERT INTO department (deptno, deptname, location, designation) 
VALUES (3, 'Sales', 'Mumbai', 'Executive');

INSERT INTO department (deptno, deptname, location, designation) 
VALUES (4, 'Operations', 'Bangalore', 'Supervisor');

INSERT INTO department (deptno, deptname, location, designation) 
VALUES (5, 'HR', 'Delhi', 'Officer');

INSERT INTO department (deptno, deptname, location, designation) 
VALUES (6, 'IT', 'Pune', 'Analyst');

INSERT INTO department (deptno, deptname, location, designation) 
VALUES (7, 'Marketing', 'Kolkata', 'Coordinator');

INSERT INTO department (deptno, deptname, location, designation) 
VALUES (8, 'Finance', 'Chennai', 'Controller');

INSERT INTO department (deptno, deptname, location, designation) 
VALUES (9, 'Legal', 'Hyderabad', 'Advisor');

INSERT INTO department (deptno, deptname, location, designation) 
VALUES (10, 'Support', 'Bangalore', 'Lead');
