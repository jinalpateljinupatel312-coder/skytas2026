CREATE TABLE accounts (
    acc_id INT PRIMARY KEY,
    name VARCHAR(50),
    balance INT
);

-- Initial data
INSERT INTO accounts VALUES
(1, 'Ram', 5000),
(2, 'Shyam', 3000);

-- Start transaction
BEGIN;

-- Transfer 1000 from Ram to Shyam
UPDATE accounts
SET balance = balance - 1000
WHERE acc_id = 1;

UPDATE accounts
SET balance = balance + 1000
WHERE acc_id = 2;

-- Commit changes
COMMIT;

-- Check final result
SELECT * FROM accounts;