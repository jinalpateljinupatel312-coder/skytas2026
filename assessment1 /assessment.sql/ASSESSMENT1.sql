
INSERT INTO students VALUES
(1, 'jinal', 'it', 3, 87),
(2, 'divyesh', 'iit', 2, 84),
(3, 'shivani', 'gnm', 1, 69),
(4, 'ankita', 'anm', 3, 65),
(5, 'priya', 'it', 3, 67);

SELECT *  FROM students;

SELECT name, department
from students;

SELECT *
FROM students
WHERE marks > 75;

SELECT *
From students
WHERE department = 'it';

SELECT *
FROM students
ORDER BY marks DESC;

SELECT * 
FROM students
ORDER BY marks DESC
LIMIT 3;

