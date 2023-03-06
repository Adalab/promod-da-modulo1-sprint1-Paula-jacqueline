USE northwind;

SELECT product_id, product_name , unit_price 
FROM products
ORDER BY product_id DESC    
LIMIT 10;     

SELECT product_id, product_name , unit_price  
FROM products
ORDER BY product_id 
LIMIT 10    
OFFSET 10;     

SELECT DISTINCT order_id
FROM order_details;

SELECT DISTINCT order_id
FROM order_details
LIMIT 2;

SELECT DISTINCT *
FROM order_details
ORDER BY unit_price AND quantity
LIMIT 3;

SELECT order_id, unit_price
FROM order_details
WHERE unit_price BETWEEN 5 AND 10 
LIMIT 10;

SELECT *
FROM categories;

SELECT category_name AS NombreDeCategoria
FROM categories;
SELECT order_id, order_date, shipped_date, DATE_ADD(shipped_date, INTERVAL 5 DAY) as FechaRetrasada
FROM orders;

SELECT *
FROM products
WHERE unit_price BETWEEN 15 AND 50;

SELECT *
FROM products
WHERE unit_price IN (18,19,20);
