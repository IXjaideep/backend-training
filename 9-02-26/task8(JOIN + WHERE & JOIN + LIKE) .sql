-- JOIN + WHERE Tasks

use ecommerce

--1)Orders after certain date with customer data

SELECT c.name,o.order_id FROM customers c
LEFT JOIN order_items o on c.customer_id = o.customer_id
where o.order_date > '2024-01-15'

--2)Employees in specific department
use office
SELECT d.dept_name,e.emp_name from departments  d
LEFT JOIN employees e on d.dept_id = e.dept_id
WHERE d.dept_name = 'IT'

--3)Customers from specific city with orders
use ecommerce

SELECT c.name,o.order_id FROM customers c
LEFT JOIN order_items o on c.customer_id = o.customer_id
where C.city = 'hyderabad'

--4)Products above certain price in orders

select o.order_id,p.product_name FROM order_items o
LEFT JOIN products p  on o.customer_id = p.customer_id
WHERE p.product_cost >5000

--JOIN + LIKE Tasks

--1)Customers starting with ‘A’ with orders
use ecommerce

SELECT c.name,o.order_id FROM customers c
LEFT JOIN order_items o on c.customer_id = o.customer_id
where c.name LIKE 'A%'

--2)Employees name LIKE pattern + department

use office
SELECT d.dept_name,e.emp_name from departments  d
LEFT JOIN employees e on d.dept_id = e.dept_id
WHERE e.emp_name LIKE 'A%'

--3)Products LIKE filter with order data

use ecommerce
SELECT p.product_name,o.order_date FROM products p
LEFT JOIN order_items o on p.customer_id = o.customer_id
where p.product_name LIKE 'L%'