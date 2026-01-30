CREATE TABLE employees37 (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);
CREATE TABLE department37 (
    dept_id INT,
    dept_name VARCHAR(50)
);

SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

SELECT emp_name, salary
FROM employees37
WHERE salary > 50000;

SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

SELECT emp_name, salary
FROM employees37
WHERE salary > 50000;

SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM employees37 e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM employees37 e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_id) > 2;

SELECT e.emp_name
FROM employees37 e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;
