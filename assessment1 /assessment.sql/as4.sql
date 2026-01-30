CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert data
INSERT INTO employees VALUES
(1, 'Amit', 'IT', 60000),
(2, 'Rahul', 'HR', 40000),
(3, 'Riya', 'IT', 65000),
(4, 'Neha', 'Finance', 45000);

------------------------------------------------
-- 1. Employees earning more than average salary
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

------------------------------------------------
-- 2. Department with highest total salary
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC
LIMIT 1;

------------------------------------------------
-- 3. Employee with second highest salary
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (SELECT MAX(salary) FROM employees)
);

------------------------------------------------
-- 4. Employees working in same department as 'Amit'
SELECT *
FROM employees
WHERE department = (
    SELECT department
    FROM employees
    WHERE name = 'Amit'
);