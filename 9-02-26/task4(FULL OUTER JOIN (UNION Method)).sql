use ecommerce

--1)Combine all customers and orders
SELECT c.*,o.order_date,o.order_place FROM customers c
FULL JOIN  order_items o ON c.customer_id = o.customer_id

--2)Show matched and unmatched rows
SELECT c.*,o.order_date,o.order_place FROM customers c
FULL JOIN  order_items o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL

SELECT c.*,o.order_date,o.order_place FROM customers c
FULL JOIN  order_items o ON c.customer_id = o.customer_id
WHERE o.order_id IS NOT NULL

-- 3)Write FULL JOIN using LEFT + RIGHT + UNION
SELECT c.*,o.order_date,o.order_place FROM customers c
LEFT JOIN  order_items o ON c.customer_id = o.customer_id

UNION

SELECT c.*,o.order_date,o.order_place FROM customers c
LEFT JOIN  order_items o ON c.customer_id = o.customer_id

USE office

--4)Employees + departments full list

SELECT e.*,d.* FROM Employees e
LEFT JOIN departments d  on e.dept_id = d.dept_id

UNION

SELECT e.*,d.* FROM Employees e
RIGHT JOIN departments d  on e.dept_id = d.dept_id
