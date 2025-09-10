-- SQL Queries for Cafe Dataset

-- 1. Select all orders
SELECT * FROM cafe_orders;

-- 2. Total revenue by month
SELECT MONTH(order_date) AS month, SUM(total_price) AS total_revenue
FROM cafe_orders
GROUP BY month;

-- 3. Revenue by item category
SELECT category, SUM(total_price) AS revenue
FROM cafe_orders
GROUP BY category
ORDER BY revenue DESC;

-- 4. Top 5 best-selling items
SELECT item_name, SUM(quantity) AS total_sold
FROM cafe_orders
GROUP BY item_name
ORDER BY total_sold DESC
LIMIT 5;

-- 5. Average customer rating by category
SELECT category, AVG(customer_rating) AS avg_rating
FROM cafe_orders
GROUP BY category;

-- 6. Revenue by payment type
SELECT payment_type, SUM(total_price) AS revenue
FROM cafe_orders
GROUP BY payment_type;

-- 7. High-value orders (total_price > 500)
SELECT * 
FROM cafe_orders
WHERE total_price > 500;

-- 8. Low-value orders (total_price <= 200)
SELECT * 
FROM cafe_orders
WHERE total_price <= 200;

-- 9. Orders during peak hours
SELECT * 
FROM cafe_orders
WHERE peak_hour_flag = 'Yes';

-- 10. Item combos sold
SELECT item_combos, COUNT(*) AS combo_count
FROM cafe_orders
WHERE item_combos IS NOT NULL
GROUP BY item_combos
ORDER BY combo_count DESC;

-- 11. Monthly revenue by category with percentage contribution
SELECT 
    MONTH(order_date) AS month, 
    category, 
    SUM(total_price) AS category_revenue,
    ROUND(SUM(total_price) / (SELECT SUM(total_price) FROM cafe_orders WHERE MONTH(order_date) = MONTH(o.order_date)) * 100, 2) AS revenue_pct
FROM cafe_orders o
GROUP BY month, category
ORDER BY month, category_revenue DESC;

-- 12. Rank items by total revenue (window function)
SELECT 
    item_name, 
    SUM(total_price) AS revenue,
    RANK() OVER (ORDER BY SUM(total_price) DESC) AS revenue_rank
FROM cafe_orders
GROUP BY item_name
ORDER BY revenue_rank;

-- 13. Cumulative revenue by date
SELECT 
    order_date,
    SUM(total_price) AS daily_revenue,
    SUM(SUM(total_price)) OVER (ORDER BY order_date) AS cumulative_revenue
FROM cafe_orders
GROUP BY order_date
ORDER BY order_date;

-- 14. Average order value by customer type and order source
SELECT 
    customer_type,
    order_source,
    AVG(total_price) AS avg_order_value
FROM cafe_orders
GROUP BY customer_type, order_source
ORDER BY avg_order_value DESC;

-- 15. Identify top 3 items per category by quantity sold
SELECT category, item_name, quantity_sold
FROM (
    SELECT 
        category,
        item_name,
        SUM(quantity) AS quantity_sold,
        RANK() OVER (PARTITION BY category ORDER BY SUM(quantity) DESC) AS rank_per_category
    FROM cafe_orders
    GROUP BY category, item_name
) t
WHERE rank_per_category <= 3
ORDER BY category, quantity_sold DESC;
