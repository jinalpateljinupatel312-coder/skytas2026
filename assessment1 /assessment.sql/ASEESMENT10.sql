- =====================================
-- DROP TABLES (if already exist)
-- =====================================
DROP TABLE IF EXISTS attendance CASCADE;
DROP TABLE IF EXISTS payments CASCADE;
DROP TABLE IF EXISTS menu CASCADE;
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS meals CASCADE;
DROP TABLE IF EXISTS staff CASCADE;

-- =====================================
-- CREATE TABLES
-- =====================================

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    room_no VARCHAR(10),
    join_date DATE,
    status VARCHAR(20) CHECK (status IN ('Active','Inactive')) DEFAULT 'Active'
);

CREATE TABLE meals (
    meal_id SERIAL PRIMARY KEY,
    meal_name VARCHAR(100) NOT NULL,
    meal_type VARCHAR(20) CHECK (meal_type IN ('Breakfast','Lunch','Dinner')),
    price NUMERIC(8,2) NOT NULL
);

CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    salary NUMERIC(10,2)
);

CREATE TABLE attendance (
    attendance_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id) ON DELETE CASCADE,
    meal_id INT REFERENCES meals(meal_id) ON DELETE CASCADE,
    meal_date DATE NOT NULL
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id) ON DELETE CASCADE,
    amount NUMERIC(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    month VARCHAR(20)
);

CREATE TABLE menu (
    menu_id SERIAL PRIMARY KEY,
    meal_id INT REFERENCES meals(meal_id) ON DELETE CASCADE,
    menu_date DATE NOT NULL
);

-- =====================================
-- SAMPLE DATA
-- =====================================

INSERT INTO students (name, room_no, join_date, status) VALUES
('Amit', '101', '2025-01-10', 'Active'),
('Priya', '102', '2025-02-15', 'Active'),
('Rahul', '103', '2024-12-01', 'Inactive'),
('Sneha', '104', '2025-03-05', 'Active');

INSERT INTO meals (meal_name, meal_type, price) VALUES
('Poha', 'Breakfast', 30),
('Dal Rice', 'Lunch', 60),
('Chapati Sabji', 'Dinner', 50);

INSERT INTO staff (name, role, salary) VALUES
('Ramesh', 'Cook', 15000),
('Suresh', 'Helper', 10000);

INSERT INTO attendance (student_id, meal_id, meal_date) VALUES
(1,1,'2025-02-01'),
(1,2,'2025-02-01'),
(2,2,'2025-02-01'),
(4,3,'2025-02-01');

INSERT INTO payments (student_id, amount, payment_date, month) VALUES
(1,2000,'2025-02-05','February'),
(2,1800,'2025-02-06','February'),
(4,2200,'2025-02-07','February');

INSERT INTO menu (meal_id, menu_date) VALUES
(1,'2025-02-01'),
(2,'2025-02-01'),
(3,'2025-02-01');

-- =====================================
-- 15 BUSINESS QUERIES
-- =====================================

-- 1. List all active students
SELECT * FROM students WHERE status='Active';

-- 2. Total students count
SELECT COUNT(*) AS total_students FROM students;

-- 3. Students joined in 2025
SELECT * FROM students
WHERE EXTRACT(YEAR FROM join_date)=2025;

-- 4. Total amount paid by each student
SELECT s.student_id, s.name, SUM(p.amount) AS total_paid
FROM students s
JOIN payments p ON s.student_id=p.student_id
GROUP BY s.student_id, s.name;

-- 5. Students who have not made payment
SELECT s.student_id, s.name
FROM students s
LEFT JOIN payments p ON s.student_id=p.student_id
WHERE p.student_id IS NULL;

-- 6. Total revenue collected
SELECT SUM(amount) AS total_revenue FROM payments;

-- 7. Most expensive meal
SELECT * FROM meals
WHERE price=(SELECT MAX(price) FROM meals);

-- 8. Total meals taken by each student
SELECT s.name, COUNT(a.attendance_id) AS total_meals
FROM students s
JOIN attendance a ON s.student_id=a.student_id
GROUP BY s.name;

-- 9. Attendance on specific date
SELECT * FROM attendance
WHERE meal_date='2025-02-01';

-- 10. Total staff salary expense
SELECT SUM(salary) AS total_salary FROM staff;

-- 11. Students with room numbers starting with '10'
SELECT * FROM students
WHERE room_no LIKE '10%';

-- 12. Monthly payment summary
SELECT month, SUM(amount) AS monthly_total
FROM payments
GROUP BY month;

-- 13. Students who took Lunch
SELECT DISTINCT s.name
FROM students s
JOIN attendance a ON s.student_id=a.student_id
JOIN meals m ON a.meal_id=m.meal_id
WHERE m.meal_type='Lunch';

-- 14. Average meal price
SELECT AVG(price) AS average_price FROM meals;

-- 15. Students with more than 1 meal attendance
SELECT s.name, COUNT(a.attendance_id) AS meal_count
FROM students s
JOIN attendance a ON s.student_id=a.student_id
GROUP BY s.name
HAVING COUNT(a.attendance_id) > 1;

-- =====================================
-- OPTIMIZATION (INDEXES)
-- =====================================

CREATE INDEX idx_students_status ON students(status);
CREATE INDEX idx_payments_student ON payments(student_id);
CREATE INDEX idx_attendance_student ON attendance(student_id);