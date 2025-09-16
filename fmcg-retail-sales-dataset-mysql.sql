-- Total units sold per store
SELECT store_id, SUM(units_sold) AS total_units_sold
FROM sales
GROUP BY store_id
ORDER BY SUM(units_sold) DESC;

-- Determing which product sells the most
SELECT product, SUM(units_sold) AS total_units_sold
FROM sales
GROUP BY product
ORDER BY SUM(units_sold) DESC;

-- Sales by Category
SELECT category, SUM(units_sold) AS total_units_sold
FROM sales
GROUP BY category
ORDER BY SUM(units_sold) DESC;

-- Sales over Time
SELECT MONTH(date), SUM(units_sold) AS total_units_sold
FROM sales
GROUP BY month(date)
ORDER BY SUM(units_sold) DESC;

-- Impact of promotions
SELECT category, promo, SUM(units_sold) AS total_units_sold
FROM sales
GROUP BY promo, category
ORDER BY SUM(units_sold) DESC;