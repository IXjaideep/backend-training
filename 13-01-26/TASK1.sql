use ecommerce

EXEC sp_rename 'dbo.customers.deliver_status', 'status', 'COLUMN';

ALTER table customers
DROP COLUMN customer_status

ALTER TABLE products
DROP CONSTRAINT FK__products__custom__398D8EEE

ALTER table products
DROP COLUMN customer_id

SELECT table_schema,table_name,column_name
FROM INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME ='products'

ALTER TABLE order_items
DROP CONSTRAINT FK__order_ite__produ__3C69FB99

ALTER table order_items
DROP COLUMN customer_id

ALTER table order_items
DROP CONSTRAINT FK__order_ite__custo__3D5E1FD2

ALTER table order_items
DROP COLUMN customer_id

SELECT table_schema,table_name,column_name
FROM INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME ='order_items'

EXEC sp_rename 'order_items.quantity','delivery_status ','COLUMN'

ALTER table order_items
ALTER COLUMN  delivery_status varchar(10)

ALTER TABLE supplier
DROP COLUMN customer_id 

ALTER table supplier
DROP CONSTRAINT FK__supplier__custom__403A8C7D

ALTER table supplier
DROP CONSTRAINT FK__supplier__order___412EB0B6

ALTER TABLE supplier
DROP COLUMN order_id

ALTER table supplier
DROP COLUMN delivery_date

SELECT TABLE_SCHEMA,TABLE_NAME,COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'supplier'

ALTER TABLE supplier
DROP COLUMN customer_id
