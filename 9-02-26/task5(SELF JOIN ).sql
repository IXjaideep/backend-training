use office
--1) Employee with manager name
SELECT m.manager_name,d.dept_name,e.emp_name FROM employees e
LEFT JOIN manager m ON m.manager_id = e.manager_id
LEFT JOIN departments d ON d.dept_id = m.dept_id

--2)Employees under same manager
SELECT e1.emp_name,e1.manager_id From employees e1
join employees e2 ON e1.manager_id = e2.manager_id
AND e1.emp_id <> e2.emp_id;

--3)List only managers
SELECT manager_name FROM manager

