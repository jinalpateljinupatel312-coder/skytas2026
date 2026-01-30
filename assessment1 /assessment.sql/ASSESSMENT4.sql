SELECT emp_name, salary
FROM employees51
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY total_salary DESC
LIMIT 1;

SELECT emp_name, salary
FROM employees51
WHERE salary = (
    SELECT DISTINCT salary
    FROM employees51
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
);

