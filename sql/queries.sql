
SELECT brand, model, year, color, price
FROM cars
WHERE year BETWEEN 2021 AND 2023
  AND price BETWEEN 1000000 AND 3000000
ORDER BY year DESC, price ASC;
