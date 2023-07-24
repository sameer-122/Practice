-- Sample department names
WITH department_names (name) AS (
    VALUES ('HR'), ('Marketing'), ('Sales'), ('Finance'), ('Operations')
),
-- Sample employee names
employee_names (name) AS (
    VALUES ('John'), ('Alice'), ('Mike'), ('Lana'), ('Bob'), ('Sarah'), ('Jake'), ('Emily'), ('Tom'), ('Emma')
)
INSERT INTO employees (name, department, salary, age) 
SELECT
    (SELECT name FROM employee_names ORDER BY random() LIMIT 1),
    (SELECT name FROM department_names ORDER BY random() LIMIT 1),
    50000 + CAST(random() * 10000 AS integer),
    CAST(random() * 10 + 20 AS integer)
FROM generate_series(1, 20);
