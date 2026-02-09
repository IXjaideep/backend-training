CREATE database ecommerce;
use ecommerce;

CREATE table customers(
	customer_id INT PRIMARY KEY,
	name VARCHAR(255),
	city VARCHAR(255),
	email VARCHAR(255),
	phone_number BIGINT,
	deliver_status VARCHAR(255),
	customer_status VARCHAR(255),
	);

CREATE table products(
	product_id INT PRIMARY KEY,
	customer_id INT,
	product_name VARCHAR(255),
	product_cost VARCHAR(255),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	);
ALTER TABLE products
ALTER COLUMN product_cost INT;

CREATE table order_items(
	order_id INT PRIMARY KEY,
	product_id INT,
	order_date DATE,
	order_place VARCHAR(255),
	FOREIGN KEY (product_id) REFERENCES products(product_id),
	);

ALTER TABLE order_items 
ADD customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
ALTER TABLE order_items 
ADD quantity INT;


CREATE table supplier(
	supplier_id INT PRIMARY KEY, 
	customer_id INT,
	order_id INT,
	supplier_name VARCHAR(255),
	supplier_status VARCHAR(255),
	FOREIGN KEY (customer_id)  REFERENCES customers(customer_id),
	FOREIGN KEY (order_id) REFERENCES order_items(order_id),
	);

ALTER TABLE supplier 
ADD delivery_date DATE;

CREATE table order_report(
	report_id INT PRIMARY  KEY,
	supplier_id INT,
	customer_id INT,
	order_id INT,
	customer_name VARCHAR(255),
	delivery_date DATE,
	delivery_place VARCHAR(255),
	total_cost INT,
	FOREIGN KEY ( supplier_id) REFERENCES supplier(supplier_id),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (order_id) REFERENCES order_items(order_id),
	);
 
INSERT INTO customers VALUES (1,'Ram','Hyderabad','ram@gmail.com',9876543210,'Delivered','Active');
INSERT INTO customers VALUES (2,'Sam','Chennai','sam@gmail.com',9876543211,'Pending','Active');
INSERT INTO customers VALUES (3,'John','Delhi','john@gmail.com',9876543212,'Delivered','Active');
INSERT INTO customers VALUES (4,'Asha','Mumbai','asha@gmail.com',9876543213,'Cancelled','Inactive');
INSERT INTO customers VALUES (5,'Ravi','Pune','ravi@gmail.com',9876543214,'Delivered','Active');
INSERT INTO customers VALUES (6,'Neha','Bangalore','neha@gmail.com',9876543215,'Pending','Active');
INSERT INTO customers VALUES (7,'Kiran','Vizag','kiran@gmail.com',9876543216,'Delivered','Active');
INSERT INTO customers VALUES (8,'Sita','Kolkata','sita@gmail.com',9876543217,'Pending','Active');
INSERT INTO customers VALUES (9,'Arun','Coimbatore','arun@gmail.com',9876543218,'Delivered','Active');
INSERT INTO customers VALUES (10,'Meena','Madurai','meena@gmail.com',9876543219,'Delivered','Active');
INSERT INTO customers VALUES (11,'jai','Kolkata','jai@gmail.com',9876543217,'Pending','Active');
INSERT INTO customers VALUES (12,'rahul','Coimbatore','rahul@gmail.com',9876543218,'Delivered','Active');


INSERT INTO products VALUES (101,1,'Laptop',50000);
INSERT INTO products VALUES (102,2,'Mobile',20000);
INSERT INTO products VALUES (103,3,'Tablet',15000);
INSERT INTO products VALUES (104,4,'Keyboard',1000);
INSERT INTO products VALUES (105,5,'Mouse',500);
INSERT INTO products VALUES (106,6,'Monitor',12000);
INSERT INTO products VALUES (107,7,'Printer',8000);
INSERT INTO products VALUES (108,8,'Camera',30000);
INSERT INTO products VALUES (109,9,'Headphones',2000);
INSERT INTO products VALUES (110,10,'Speaker',4000);
INSERT INTO products VALUES (111,1,'Mouse Pad',300);
INSERT INTO products VALUES (112,1,'USB Cable',250);
INSERT INTO products VALUES (113,2,'Power Bank',1500);
INSERT INTO products VALUES (114,2,'Earphones',1200);
INSERT INTO products VALUES (115,3,'Stylus Pen',800);
INSERT INTO products VALUES (116,3,'Cover Case',500);
INSERT INTO products VALUES (117,4,'Webcam',2500);
INSERT INTO products VALUES (118,4,'Microphone',3500);
INSERT INTO products VALUES (119,5,'Laptop Bag',1500);
INSERT INTO products VALUES (120,5,'Pendrive',700);
INSERT INTO products VALUES (121,6,'HDMI Cable',600);
INSERT INTO products VALUES (122,6,'Keyboard',1200);
INSERT INTO products VALUES (123,7,'Ink Cartridge',2000);
INSERT INTO products VALUES (124,7,'Scanner',9000);
INSERT INTO products VALUES (125,8,'Tripod',1800);
INSERT INTO products VALUES (126,8,'Memory Card',900);
INSERT INTO products VALUES (127,9,'Bluetooth Adapter',1100);
INSERT INTO products VALUES (128,9,'Speaker Stand',700);
INSERT INTO products VALUES (129,10,'Remote',400);
INSERT INTO products VALUES (130,10,'Woofer',7000);



INSERT INTO order_items VALUES (201,101,'2024-01-10','Hyderabad',1,2);
INSERT INTO order_items VALUES (202,102,'2024-01-11','Chennai',2,1);
INSERT INTO order_items VALUES (203,103,'2024-01-12','Delhi',3,3);
INSERT INTO order_items VALUES (204,104,'2024-01-13','Mumbai',4,5);
INSERT INTO order_items VALUES (205,105,'2024-01-14','Pune',5,4);
INSERT INTO order_items VALUES (206,106,'2024-01-15','Bangalore',6,2);
INSERT INTO order_items VALUES (207,107,'2024-01-16','Vizag',7,1);
INSERT INTO order_items VALUES (208,108,'2024-01-17','Kolkata',8,1);
INSERT INTO order_items VALUES (209,109,'2024-01-18','Coimbatore',9,2);
INSERT INTO order_items VALUES (210,110,'2024-01-19','Madurai',10,3);


INSERT INTO supplier VALUES (301,1,201,'ABC Suppliers','Active','2024-01-15');
INSERT INTO supplier VALUES (302,2,202,'XYZ Traders','Active','2024-01-16');
INSERT INTO supplier VALUES (303,3,203,'Prime Corp','Active','2024-01-17');
INSERT INTO supplier VALUES (304,4,204,'Fast Supply','Inactive','2024-01-18');
INSERT INTO supplier VALUES (305,5,205,'Tech Hub','Active','2024-01-19');
INSERT INTO supplier VALUES (306,6,206,'Digital World','Active','2024-01-20');
INSERT INTO supplier VALUES (307,7,207,'Smart Systems','Active','2024-01-21');
INSERT INTO supplier VALUES (308,8,208,'Cam Solutions','Active','2024-01-22');
INSERT INTO supplier VALUES (309,9,209,'Sound Store','Active','2024-01-23');
INSERT INTO supplier VALUES (310,10,210,'Speaker House','Active','2024-01-24');


INSERT INTO order_report VALUES (401,301,1,201,'Ram','2024-01-15','Hyderabad',100000);
INSERT INTO order_report VALUES (402,302,2,202,'Sam','2024-01-16','Chennai',20000);
INSERT INTO order_report VALUES (403,303,3,203,'John','2024-01-17','Delhi',45000);
INSERT INTO order_report VALUES (404,304,4,204,'Asha','2024-01-18','Mumbai',5000);
INSERT INTO order_report VALUES (405,305,5,205,'Ravi','2024-01-19','Pune',2000);
INSERT INTO order_report VALUES (406,306,6,206,'Neha','2024-01-20','Bangalore',24000);
INSERT INTO order_report VALUES (407,307,7,207,'Kiran','2024-01-21','Vizag',8000);
INSERT INTO order_report VALUES (408,308,8,208,'Sita','2024-01-22','Kolkata',30000);
INSERT INTO order_report VALUES (409,309,9,209,'Arun','2024-01-23','Coimbatore',4000);
INSERT INTO order_report VALUES (410,310,10,210,'Meena','2024-01-24','Madurai',12000);

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM order_items;
SELECT * FROM supplier;
SELECT * FROM order_report;

