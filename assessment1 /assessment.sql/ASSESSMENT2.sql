CREATE TABLE students5 (
   student_id INT,
   name VARCHAR(50),
   department VARCHAR(30),
   year INT,
   marks int
 );

 INSERT INTO students5 VALUES
(1, 'jinal', 'it', 3, 87),
(2, 'divyesh', 'iit', 2, 84),
(3, 'shivani', 'gnm', 1, 69),
(4, 'ankita', 'anm', 3, 65),
(5, 'priya', 'it', 3, 67);
SELECT COUNT(*) AS total_students
FROM students5;

SELECT AVG(marks) AS average_marks
FROM students5;

SELECT
   MAX(marks) AS highest_marks,
   MIN(marks) AS lowest_marks
 FROM students5;

SELECT department, AVG(marks) AS avg_marks
FROM students5
GROUP BY department;

SELECT department, AVG(marks) AS avg_marks
FROM students5
GROUP BY department
HAVING AVG(marks) > 70;
