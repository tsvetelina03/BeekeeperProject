SELECT * FROM Beekeepers;

SELECT * FROM Apiaries;

SELECT * FROM ProducedHoney;

SELECT * FROM Warehouse;

SELECT * FROM Customers;

SELECT * FROM Sales;

SELECT * FROM ProducedHoney 
WHERE name = 'Акациев мед';

SELECT SUM(quantity_kg * price_per_kg) 
AS total_price_rose_honey FROM Sales 
WHERE product_name = 'Розов мед';

SELECT SUM(quantity_kg) 
AS total_kg_for_date FROM ProducedHoney 
WHERE name = 'Акациев мед';

SELECT SUM(quantity_kg * price_per_kg) 
AS total_klient FROM Sales 
WHERE customer_id = 3;

SELECT COUNT(sale_id) 
AS broi_poruchki_sunflower_honey FROM Sales 
WHERE product_name = 'Мед от горски цветя';

SELECT MAX(quantity_kg * price_per_kg) 
AS nai_golqma_suma FROM Sales 
WHERE customer_id = 4;

SELECT * FROM Sales 
ORDER BY quantity_kg ASC;

SELECT * FROM Apiaries 
WHERE  city = 'София' AND area_sqm = 1500;

SELECT * FROM Apiaries 
WHERE city = 'Варна' OR city = 'Бургас';

SELECT * FROM Warehouse 
WHERE NOT product_name = 'Боровинков мед' 
AND NOT product_name = 'Розов мед' ;

SELECT * FROM Apiaries 
ORDER BY area_sqm DESC;

SELECT MIN(price_per_kg) 
AS min_price FROM Sales;

SELECT AVG(quantity_kg * price_per_kg) 
AS avg_manov_med FROM Sales 
WHERE product_name = 'Манов мед';

SELECT * FROM Beekeepers 
WHERE first_name LIKE 'И%';

SELECT * FROM Apiaries 
WHERE city 
IN ('Русе', 'Видин', 'Пазарджик');

SELECT * FROM Apiaries 
WHERE area_sqm 
BETWEEN 1000 AND 1500;

SELECT first_name,last_name,apiary_id
FROM Beekeepers
JOIN Apiaries ON Beekeepers.beekeeper_id = Apiaries.apiary_id;

SELECT sale_id,customer_email
FROM Sales
JOIN Customers ON Sales.sale_id = Customers.customer_id;
