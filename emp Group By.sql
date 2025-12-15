CREATE DATABASE Company;

USE Company;

CREATE TABLE Employee (
  EmployeeId int,
  Name varchar(20),
  Gender varchar(20),
  Salary int,
  Department varchar(20),
  Experience int
);

INSERT INTO Employee VALUES 
(1, 'Sagar Wavhal', 'Male', 35000, 'Boss', 8),
(2, 'Tessa','Female',75000,'Finance',3),
(3,'Bob','Male',28000,'HR',5),
(4, 'Abhishek Wavhal', 'Male', 95000, 'IT', 2),
(5, 'Priya Sharma', 'Female', 45000, 'IT', 2),
(6, 'Rahul Patel', 'Male', 65000, 'Sales', 5),
(7, 'Nisha Gupta', 'Female', 55000, 'Marketing', 4),
(8, 'Vikram Singh', 'Male', 75000, 'Finance', 7),
(9, 'Aarti Desai', 'Female', 50000, 'IT', 3);

select * from Employee;

-- 1] find departments with an sum salary greater than a 80000

select department, sum(salary) from employee
where salary>80000
group by department;

-- 2] find departments with an average salary greater than a certain 50000

select department ,avg(salary) from employee
where salary>50000
group by department;

-- 3] find departments with more than 2 employees

select department ,count(employeeID) from employee
where employeeID>=2
group by department;

-- 4] find departments with more than 3 employees and an average salary greater than 70000:

select department ,avg(salary) from employee
where salary>70000 and employeeID>3
group by department; 