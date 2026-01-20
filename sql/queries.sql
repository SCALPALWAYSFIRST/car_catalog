SELECT brand, model, price
FROM cars
ORDER BY price DESC
LIMIT 5;


SELECT 
    brand,
    COUNT(*) AS "Количество",
    ROUND(AVG(price), 2) AS "Средняя_цена",
    MIN(price) AS "Минимальная_цена",
    MAX(price) AS "Максимальная_цена"
FROM cars
GROUP BY brand
ORDER BY "Количество" DESC;


SELECT brand, model, year, color, price
FROM cars
WHERE year BETWEEN 2021 AND 2023
  AND price BETWEEN 1000000 AND 3000000
ORDER BY year DESC, price ASC;


SELECT 
    year,
    COUNT(*) AS "Количество",
    STRING_AGG(CONCAT(brand, ' ', model), ', ') AS "Модели"
FROM cars
GROUP BY year
ORDER BY year DESC;


SELECT 
    color,
    COUNT(*) AS "Количество",
    CASE
        WHEN AVG(price) < 1000000 THEN 'Бюджетный'
        WHEN AVG(price) BETWEEN 1000000 AND 3000000 THEN 'Средний'
        ELSE 'Премиум'
    END AS "Ценовой_сегмент"
FROM cars
GROUP BY color
HAVING COUNT(*) >= 1
ORDER BY "Количество" DESC;