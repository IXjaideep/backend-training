--JOIN + Subquery Tasks (IN / NOT IN / EXISTS / NOT EXISTS)
use ecommerce

-- Customers whose id IN (select customer_id from orders)
SELECT * FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM order_items
)

--Customers whose id NOT IN (select customer_id from orders)
SELECT * FROM customers
WHERE customer_id NOT IN (
	SELECT customer_id
	FROM order_items
	)

--Products NOT IN ordered products list
SELECT * FROM products
WHERE product_id NOT IN (
	SELECT product_id 
	FROM order_items
	)

--Employees NOT IN departments table

use office
SELECT * From departments 
WHERE dept_id NOT IN (
	SELECT dept_id from employees
	)

--Orders where amount > (subquery average amount)
use ecommerce

SELECT avg(product_cost) FROM products

SELECT o.order_id,p.product_name,p.product_cost From order_items o
left join products p on o.customer_id =p.customer_id
WHERE p.product_cost > (
	SELECT avg(product_cost) 
	FROM products
	)

--Customers who placed orders above average order value

SELECT c.customer_id,p.product_name,p.product_cost From customers c
left join products p on c.customer_id =p.customer_id
WHERE p.product_cost > (
	SELECT avg(product_cost) 
	FROM products
	)

--Employees earning more than department average (subquery + join)

use office
SELECT e.* FROM departments d
LEFT JOIN employees e on d.dept_id = e.dept_id
WHERE e.salary >= (
	SELECT AVG(salary)
    FROM employees
    WHERE d.dept_id = e.dept_id
	)

--Customers NOT IN cancelled orders list
use ecommerce
SELECT * FROM customers
WHERE deliver_status <> 'cancelled'

--Use subquery as derived table and join it
use ecommerce
SELECT * FROM customers
WHERE deliver_status = 'delivered'

--Use EXISTS to find customers with orders
SELECT * FROM customers c
WHERE EXISTS (
	SELECT customer_id FROM order_items o 
	WHERE o.customer_id = c.customer_id)

--Use NOT EXISTS to find customers without orders
SELECT  * FROM customers c
WHERE NOT EXISTS (SELECT customer_id FROM order_items o
	WHERE o.customer_id = c.customer_id)

--Multi-Select JOIN Tasks

SELECT *,
CASE 
	WHEN name like 'j%' then 'start with J'
	WHEN name like 'A%' then 'start with A'
	WHEN name like '%H' then 'end with h'
END AS start_with FROM customers