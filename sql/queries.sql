SELECT 
    year,
    COUNT(*) AS "Количество",
    STRING_AGG(CONCAT(brand, ' ', model), ', ') AS "Модели"
FROM cars
GROUP BY year
ORDER BY year DESC;