USE northwind;


SELECT MIN(unit_price) AS lowestPrice, MAX(unit_price) AS highestPrice
FROM products;

SELECT AVG(unit_price) 
FROM products;

SELECT MIN(freight), MAX(freight)
FROM orders
WHERE ship_country = "UK";

SELECT AVG(unit_price) 
FROM products;
SELECT product_name, unit_price
FROM products
WHERE unit_price > 28.86
ORDER BY unit_price DESC; 

SELECT COUNT(discontinued)
FROM products
WHERE discontinued = 1;

SELECT product_id, product_name
FROM products
WHERE discontinued = 0
ORDER BY product_id DESC
LIMIT 10;
