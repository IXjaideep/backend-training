 -- LEFT JOIN Tasks

 use ecommerce

 -- 1)All customers with orders including NULLs
 SELECT c.name,c.city,o.order_id AS ordered FROM customers c
 LEFT JOIN order_items o ON c.customer_id = o.customer_id

 --2) Customers without orders

 SELECT c.name,c.city,o.order_id AS ordered FROM customers c
 LEFT JOIN order_items o ON c.customer_id = o.customer_id
  WHERE o.order_id IS NULL 

  --3) Products not ordered
  SELECT p.product_name,p.product_cost, o.order_id AS ordered FROM products p
  LEFT JOIN order_items o ON p.product_id = o.product_id
  WHERE o.order_id IS NULL


  use office

  --4) Departments without employees
  SELECT d.dept_name,e.emp_name FROM departments d
  LEFT JOIN employees e ON d.dept_id = e.dept_id
    WHERE e.dept_id IS NOT NULL

 --5)All departments with employees
  SELECT d.dept_name,e.emp_name FROM departments d
  LEFT JOIN employees e ON d.dept_id = e.dept_id
  WHERE e.dept_id IS NULL

  --6)LEFT JOIN with LIKE filter
   SELECT d.dept_name,e.emp_name FROM departments d
  LEFT JOIN employees e ON d.dept_id = e.dept_id
  WHERE e.emp_name LIKE 'A%'

   SELECT d.dept_name,e.emp_name FROM departments d
  LEFT JOIN employees e ON d.dept_id = e.dept_id
  WHERE e.emp_name LIKE '%a'


 use ecommerce

  -- RIGHT JOIN Tasks
  --1)All orders with customer info
  SELECT o.order_id,c.* FROM customers c
  RIGHT JOIN order_items o ON o.customer_id = c.customer_id

  --2) no of ordereds per each customer
  SELECT c.customer_id, COUNT(c.customer_id) as no_of_orders FROM products p 
  RIGHT JOIN customers c ON p.customer_id = c.customer_id
  GROUP BY c.customer_id

    use office

--3 ) All departments even if empty
 SELECT d.dept_name,e.emp_name FROM employees e 
 RIGHT JOIN departments d ON d.dept_id = e.dept_id

