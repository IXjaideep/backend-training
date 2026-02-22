USE practice


CREATE TABLE employees (
employee_id INT PRIMARY KEY, 
employee_name VARCHAR(50),
department VARCHAR(50), 
salary DECIMAL(10, 2),
hire_date DATE );

INSERT INTO employees (employee_id, employee_name, department, salary, hire_date) VALUES
(1, 'Amit', 'HR', 50000, '2022-01-15'),
(2, 'Neha', 'HR', 55000, '2023-03-10'),
(3, 'Suresh', 'HR', 48000, '2021-11-20'),
(4, 'Rohit', 'HR', 52000, '2022-09-05'),
(5, 'Raj', 'Finance', 60000, '2021-07-23'),
(6, 'Ravi', 'Finance', 62000, '2022-09-01'),
(7, 'Kiran', 'Finance', 58000, '2021-02-14'),
(8, 'Sunita', 'Finance', 61000, '2023-01-11'),
(9, 'Priya', 'IT', 70000, '2020-12-02'),
(10,'Anjali','IT',67000.00 ,'2021-11-19'),
(11,'Vikas','IT',69000.00,'2022-05-20'),
(12,'Sanjay','IT',72000.00,'2023-04-30'),
(13,'Meena','IT',68000.00,'2021-03-15');

SELECT * FROM employees;

SELECT department,MAX(salary) FROM employees
GROUP BY department

SELECT * FROM employees e
JOIN (SELECT department,MAX(salary) as max_salary FROM employees
GROUP BY department	) d
ON e.department = d.department
WHERE e.department = d.department AND e.salary = d.max_salary

SELECT * FROM (SELECT * ,
ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary desc ) as row_num
FROM employees ) e WHERE row_num <= 2

USE insurance

SELECT shipment_id,count(*) FROM claims
group by shipment_id

SELECT * FROM claims c 
JOIN shipment s
on c.shipment_id = s.shipment_id

