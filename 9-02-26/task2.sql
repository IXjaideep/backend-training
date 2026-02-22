use ecommerce

--displaying the customers with there orders
--1) Orders with customer name and city

SELECT c.name,c.city,p.product_name FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id;


-- 2)Orders with products (3-table join) and Select multiple columns from joined tables

SELECT c.name,c.city,p.product_name, o.order_date,o.order_place FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON c.customer_id = o.customer_id

--3)Filter joined rows using WHERE amount > X

SELECT c  .name,c.city,p.product_name, o.order_date,o.order_place,p.product_cost FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON c.customer_id = o.customer_id
WHERE P.product_cost > 12000

-- 4) Filter joined rows using LIKE pattern

SELECT c.name,c.city,p.product_name, o.order_date,o.order_place,p.product_cost FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON c.customer_id = o.customer_id
WHERE c.name like 'R%'

SELECT c.name,c.city,p.product_name,o.order_date,o.order_place,p.product_cost FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON c.customer_id = o.customer_id
WHERE p.product_name like '%to%'

SELECT c.name,c.city,p.product_name,o.order_date,o.order_place,p.product_cost FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON c.customer_id = o.customer_id
WHERE p.product_name like 'l%p'

SELECT c.name,c.city,p.product_name,o.order_date,o.order_place,p.product_cost FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON c.customer_id = o.customer_id
WHERE o.order_place LIKE '%d'

--5) top 3 product cost 
SELECT TOP 3 c.name,c.city,p.product_name,o.order_date,o.order_place,p.product_cost FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON c.customer_id = o.customer_id
ORDER BY p.product_cost desc

--6) 3rd hightest product cost

SELECT c.name ,c.city,p.product_name,o.order_date,o.order_place ,p.product_cost FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON c.customer_id = o.customer_id
WHERE p.product_cost IN (
	SELECT product_cost FROM products
	ORDER BY product_cost desc
	OFFSET 2 ROWS FETCH NEXT 1 ROW ONLY
	)


use office

-- 7) employee with departments

SELECT e.emp_name,d.dept_name, e.salary FROM departments d 
LEFT JOIN employees e ON d.dept_id = e.dept_id;

