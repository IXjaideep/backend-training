
-- CROSS JOIN Tasks
use ecommerce
SELECT o.*,p.* FROM order_items o
CROSS join products p 

use office
select e.*,d.* from employees e
cross join departments d

--Multi-Table JOIN Tasks

--1) customers + orders + order_items

use ecommerce

select c.*,o.order_date,o.order_place,o.quantity,op.total_cost FROM customers c
LEFT JOIN order_items o on c.customer_id =o.customer_id
LEFT JOIN order_report op on op.customer_id = c.customer_id 


--2) orders + products + suppliers
SELECT p.product_name,p.product_cost,o.order_place,o.order_date,o.quantity,s.supplier_name,s.delivery_date,s.supplier_status 
FROM products p 
LEFT JOIN order_items o ON  p.product_id = o.product_id
LEFT JOIN supplier s ON o.order_id = s.order_id

--3) Build full order report (4 tables -> customers + products + orders + )

SELECT c.name,c.city,c.phone_number,p.product_name,p.product_cost,o.quantity,(p.product_cost * o.quantity) AS total_cost,o.order_place,
s.supplier_name ,c.customer_status,s.supplier_status,c.deliver_status,o.order_date,s.delivery_date
FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON o.customer_id = c.customer_id
LEFT JOIN supplier  s ON s.customer_id = c.customer_id

--USING OF WHERE ,GROUP BY ,HAVINNG , ORDER_BY

SELECT c.name,c.city,c.phone_number,p.product_name,p.product_cost,count(p.product_cost) as count_cost,o.quantity,(p.product_cost * o.quantity) AS total_cost,o.order_place,
s.supplier_name ,c.customer_status,s.supplier_status,c.deliver_status,o.order_date,s.delivery_date
FROM customers c
LEFT JOIN products p ON c.customer_id = p.customer_id
LEFT JOIN order_items o ON o.customer_id = c.customer_id
LEFT JOIN supplier  s ON s.customer_id = c.customer_id
WHERE p.product_cost * o.quantity >= 500
group by c.name,c.city,c.phone_number,p.product_name,p.product_cost,
    o.quantity,o.order_place,s.supplier_name,c.customer_status,s.supplier_status,c.deliver_status,o.order_date,s.delivery_date
HAVING COUNT(p.product_cost) = 1
ORDER BY p.product_cost desc


--4)employees + departments + locations
use office

SELECT l.*,d.*,e.* FROM locations l
LEFT JOIN departments d ON l.location_id = d.location_id
LEFT JOIN employees e ON e.dept_id = d.dept_id
