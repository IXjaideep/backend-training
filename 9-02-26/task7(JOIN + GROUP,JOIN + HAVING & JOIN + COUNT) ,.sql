use ecommerce

--1)Order count per customer
SELECT o.customer_id,count(o.order_id) as count_per_customer FROM customers c
LEFT JOIN order_items o ON c.customer_id = o.customer_id
group by o.customer_id

--2)Total order amount per customer

SELECT o.customer_id,SUM(o.quantity) AS total_quantity FROM order_items o
LEFT JOIN products p ON o.customer_id = p.customer_id
GROUP BY o.customer_id

--3)Product order count

SELECT p.product_id,count(order_id) AS Product_order_count FROM products p
LEFT JOIN order_items o ON p.customer_id = o.customer_id
GROUP BY p.product_id

--4)Department salary total
use office 

select d.dept_id,sum(e.salary) FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id

--5)Employee count per department
select d.dept_id,count(e.emp_id) FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id

--JOIN + HAVING Tasks
--1) Customers with more than 3 orders

use ecommerce

SELECT o.customer_id,SUM(o.order_id) AS total_quantity FROM order_items o
LEFT JOIN products p ON o.customer_id = p.customer_id
GROUP BY o.customer_id
having SUM(o.quantity) > 3

-- 2)Products ordered more than 10 times

SELECT p.product_id,count(o.quantity) AS Product_order_count FROM products p
LEFT JOIN order_items o ON p.customer_id = o.customer_id
GROUP BY p.product_id
having count(order_id) >= 10

--Customers with total order value > X

SELECT c.customer_id,sum(o.quantity*p.product_cost) as total_cost_per_customer FROM customers c
LEFT JOIN order_items o on c.customer_id = o.customer_id
LEFT JOIN products p on p.customer_id = c.customer_id
GROUP BY c.customer_id
HAVING sum(o.quantity*p.product_cost) > 30000

--Departments with more than 5 employees
use office 
select d.dept_id,count(e.emp_id) as no_of_employees_per_department from departments d
left join employees e on e.dept_id = d.dept_id
group by d.dept_id
having count(e.emp_id) > =5

--JOIN + COUNT Tasks

--1) Count orders per customer
use ecommerce

SELECT c.customer_id,count(o.order_id) FROM customers c
LEFT join order_items o ON c.customer_id = o.customer_id
GROUP BY c.customer_id

--2)Count orders per city

SELECT c.city,count(o.order_id) FROM customers c
LEFT JOIN order_items o on c.customer_id = o.customer_id
GROUP BY c.city

--3)Count employees per department

use office

SELECT d.dept_id,count(e.emp_id) FROM departments d 
LEFT JOIN employees e on d.dept_id = e.dept_id
GROUP BY d.dept_id
