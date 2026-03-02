CREATE TABLE employee_data (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    experience_years INT,
    joining_date DATE
);

INSERT INTO employee_data VALUES
(1, 'Amit', 'IT', 'Hyderabad', 60000, 5000, 5, '2019-06-10'),
(2, 'Ravi', 'HR', 'Mumbai', 45000, 3000, 3, '2020-03-15'),
(3, 'Sneha', 'IT', 'Hyderabad', 75000, 7000, 8, '2017-01-20'),
(4, 'Kiran', 'Finance', 'Delhi', 50000, 4000, 4, '2021-07-11'),
(5, 'Neha', 'IT', 'Mumbai', 60000, 6000, 6, '2018-09-25'),
(6, 'Arjun', 'HR', 'Delhi', 40000, 2000, 2, '2022-05-14'),
(7, 'Priya', 'Finance', 'Hyderabad', 55000, 4500, 5, '2019-11-30'),
(8, 'Rahul', 'IT', 'Delhi', 75000, 8000, 9, '2016-02-18');

--?? BASIC FILTERING
--1)Find all employees whose salary is greater than 60,000.
SELECT * FROM employee_data
WHERE salary > 60000
--2)Find employees working in IT or HR department.

SELECT * FROM employee_data
where department = 'IT' OR department = 'HR'

--3)Find employees whose name starts with 'R'.
SELECT * from employee_data
where emp_name like 'R%'

--4)Find employees whose salary is between 50,000 and 75,000.
SELECT * from employee_data
WHERE salary between 50000 and 75000

--5)Find employees who joined after 2020.

SELECT * from employee_data
where joining_date > '2021-01-01'

--?? ORDER BY

--1)Display employees ordered by salary descending.

SELECT * from employee_data
order by  salary desc

--2)Display employees ordered by department and then salary descending.

SELECT * From employee_data
order by department , salary desc

---?? DISTINCT

--1)Show all unique departments.

SELECT distinct department from employee_data
--2) Show distinct cities
SELECT distinct city from employee_data

--?? AGGREGATE FUNCTIONS

--1) Find total salary of all employees.
SELECT sum(salary) FROM employee_data
--2)Find average salary.

SELECT avg(salary) FROM employee_data

--Find maximum and minimum salary.
SELECT max(salary) as max_salary,min(salary) as min_salary FROM employee_data

--Count total employees.
SELECT count(emp_id) FROM employee_data

--Find total bonus given.

SELECT sum(bonus) FROM employee_data

--?? GROUP BY

--Find total salary department-wise.

SELECT department,sum(salary) from employee_data
group by department

--Find average salary city-wise

SELECT city,
       CAST(AVG(salary) AS DECIMAL(10,2)) AS avg_salary
FROM employee_data
GROUP BY city;

--Count employees in each department.

SELECT department,count(emp_id) as num FROM employee_data
group by department

--?? HAVING

--Show departments where total salary is greater than 1,50,000.

SELECT department,sum(salary) as  total_salary from employee_data
group by department
having sum(salary) >150000

--Show departments having more than 2 employees.

SELECT department,count(emp_id) as  total_salary from employee_data
group by department
having count(emp_id) >= 2

--?? CASE
--Categorize employees:Salary ? 70,000 ? 'High',Salary ? 50,000 ? 'Medium',Otherwise ? 'Low'

SELECT *,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'LOW'
		END AS Categorize_employees
from employee_data

--Create a column:Experience ? 7 ? 'Senior',Otherwise ? 'Junior'

select * ,
	case
		when experience_years >= 7 THEN 'Senior'
		ELSE 'Junior'
		END AS POOP
FROM employee_data

--?? WINDOW FUNCTIONS

--1)	Rank employees based on salary.

SELECT *,
RANK() OVER (ORDER BY salary desc) as rnk
 from employee_data

 --2)Use DENSE_RANK() for salary ranking.
 SELECT *,
dense_RANK() OVER (ORDER BY salary desc) as rnk
 from employee_data

 --3)Assign row numbers ordered by salary.

 SELECT *,
row_number() OVER (ORDER BY salary desc) as row_num
 from employee_data

 --4)Find department-wise salary total using PARTITION BY.
 SELECT *,
 SUM(salary) OVER (PARTITION BY department) AS TOTAL
 FRom employee_data

 --5) Find highest salary employee in each department using window function.
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn
    FROM employee_data
) t
WHERE rn = 1;

--?? SUBQUERY
--Find employees whose salary is greater than average salary.
SELECT * from employee_data
where salary > (select avg(salary) FROM employee_data)

--Find employees who earn the maximum salary.
SELECT * from employee_data
where salary = (select max(salary) FROM employee_data)

--Find employees who earn less than minimum salary in IT department.

SELECT *
FROM employee_data
WHERE salary > (
    SELECT MIN(salary)
    FROM employee_data
    WHERE department = 'IT'
);

CREATE TABLE bonus_table (
    emp_id INT,
    performance_rating VARCHAR(20),
    bonus_amount DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES employee_data(emp_id)
);

INSERT INTO bonus_table VALUES
(1, 'Excellent', 8000),
(2, 'Good', 4000),
(3, 'Excellent', 10000),
(5, 'Average', 3000),
(7, 'Good', 5000);

SELECT emp_name
FROM employee_data e
WHERE EXISTS (
    SELECT *
    FROM bonus_table b
    WHERE b.emp_id = e.emp_id
);

--ANY / ALL
--Find employees whose salary is greater than ANY salary in HR department.
SELECT * from employee_data
WHERE salary > ANY (SELECT salary FROM employee_data where department ='HR')

--Find employees whose salary is greater than ALL salaries in HR department.

SELECT * from employee_data
WHERE salary > ALL (SELECT salary FROM employee_data where department ='HR')

--COMPLEX 

--Find top 2 highest paid employees in each department.
SELECT *  FROM (select *,
ROW_NUMBER() OVER (PARTITION BY department ORDER BY emp_id) as row_num
FROM employee_data) as t
WHERE row_num = 1 OR row_num = 2

SELECT TOP 2 * FROM employee_data
order by salary desc 

--Find second highest salary in the company.

SELECT * FROM employee_data
ORDER BY salary
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY

--Find employees whose salary is above their department average.

SELECT * FROM employee_data e 
JOIN (select department,AVG(salary) as avg_salary FROM employee_data
group by department ) t on e.department = t.department
where e.department = t.department AND e.salary > t.avg_salary

--Find employees who have same salary as someone else.
SELECT e1.emp_name,e1.department,e1.salary,e2.emp_name,e2.salary FROM employee_data e1
CROSS JOIN employee_data e2
WHERE e1.salary = e2.salary AND e1.emp_name <> e2.emp_name

--Find department with highest total salary.

SELECT top 1 department,sum(salary)as total FROM employee_data
GROUP BY department 
ORDER BY total DESC;

--Find employee who has maximum experience.

SELECT * FROM employee_data
WHERE experience_years >=  (SELECT max(experience_years) FROM employee_data)

-- Find the 1rd and 2 nd highest salary in the company for each department.
SELECT * from (SELECT * ,
ROW_NUMBER() OVER (PARTITION BY department ORDER BY emp_id) as row_num
FROM employee_data ) AS t
WHERE row_num =1 or row_num= 2

--Find the 3rd highest salary in the company.

SELECT * from employee_data
order by salary desc
offset 2 rows fetch next 1 row only

--Find employees who earn more than the average salary of their department.

select * from employee_data e
join (select department,avg(salary) as avg_salary FROM employee_data
GROUP BY department ) as t on t.department = e.department
where t.avg_salary <= e.salary

--Find employees whose salary is above company average but below department average.

select * from employee_data e
JOIN(select department,avg(salary) as avg_salary FROM employee_data
GROUP BY department ) as t on t.department = e.department
where t.avg_salary <= e.salary AND e.salary >= (select AVG(salary) AS total_avg FROM employee_data)

--Find department that gives highest total bonus.

SELECT department,MAX(bonus)  as max_bonus FROM employee_data
group by department
having MAX(bonus) = (SELECT MAX(bonus) FROM employee_data)
