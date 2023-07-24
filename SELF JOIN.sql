CREATE TABLE if not exists employee (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	manager_id INT,
	FOREIGN KEY (manager_id) 
	REFERENCES employee (employee_id) 
	ON DELETE CASCADE
);
-- INSERT INTO employee (
-- 	employee_id,
-- 	first_name,
-- 	last_name,
-- 	manager_id
-- )
-- VALUES
-- 	(1, 'Windy', 'Hays', NULL),
-- 	(2, 'Ava', 'Christensen', 1),
-- 	(3, 'Hassan', 'Conner', 1),
-- 	(4, 'Anna', 'Reeves', 2),
-- 	(5, 'Sau', 'Norman', 2),
-- 	(6, 'Kelsie', 'Hays', 3),
-- 	(7, 'Tory', 'Goff', 3),
-- 	(8, 'Salley', 'Lester', 3);
	
	--- SELF INNER JOIN
SELECT
    e.first_name || ' ' || e.last_name employee,
    m .first_name || ' ' || m .last_name manager
FROM
    employee e
INNER JOIN employee m ON m .employee_id = e.manager_id
ORDER BY manager;
	--- SELF LEFT JOIN    ( To include top manager also as employee which do not have any manager)
SELECT
	e.employee_id,
    e.first_name || ' ' || e.last_name employee,
    m .first_name || ' ' || m .last_name manager
FROM
    employee e
LEFT JOIN employee m ON m .employee_id = e.manager_id
ORDER BY manager desc;