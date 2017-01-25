--1. Get all customers and their addresses
SELECT * FROM customers c
JOIN addresses a
ON c.id = a.customer_id;
--2. Get all orders and their line items
SELECT * FROM orders o
LEFT JOIN line_items li
ON o.id = li.order_id;
--3. Which Warehouses have Cheetos
SELECT * FROM products p
JOIN warehouse_product wp ON wp.product_id = p.id
JOIN warehouse w ON wp.warehouse_id = w.id
WHERE p.description = 'cheetos';
--4. Which Warehouses have diet pepsi
SELECT * FROM products p
JOIN warehouse_product wp ON wp.product_id = p.id
JOIN warehouse w ON wp.warehouse_id = w.id
WHERE p.description = 'diet pepsi';
--5. Get the number of orders for each customer
SELECT COUNT (*), first_name FROM customers c
JOIN addresses a ON c.id = a.customer_id
JOIN orders o ON a.id = o.address_id
GROUP BY c.first_name;
--6. How many customers do we have
SELECT COUNT (*) FROM customers;
--7. How many products do we carry
SELECT COUNT (*) FROM products;
--8. What is the total available on-hand quantity of diet pepsi
SELECT SUM(on_hand) FROM products p
JOIN warehouse_product wp ON p.id = wp.product_id
WHERE description = 'diet pepsi';
