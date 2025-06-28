
-- Monthly Revenue
SELECT 
    DATE_TRUNC('month', sale_date) AS month,
    SUM(quantity * price_per_unit) AS total_revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Quarterly Revenue
SELECT 
    DATE_TRUNC('quarter', sale_date) AS quarter,
    SUM(quantity * price_per_unit) AS total_revenue
FROM sales
GROUP BY quarter
ORDER BY quarter;

-- Top 10 Products by Revenue
SELECT 
    p.product_name,
    SUM(s.quantity * s.price_per_unit) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Declining Product Sales Month-over-Month
WITH monthly_product_sales AS (
    SELECT 
        p.product_name,
        DATE_TRUNC('month', s.sale_date) AS month,
        SUM(s.quantity * s.price_per_unit) AS revenue
    FROM sales s
    JOIN products p ON s.product_id = p.product_id
    GROUP BY p.product_name, month
),
ranked_sales AS (
    SELECT *,
        LAG(revenue) OVER (PARTITION BY product_name ORDER BY month) AS previous_month_revenue
    FROM monthly_product_sales
)
SELECT 
    product_name,
    month,
    revenue,
    previous_month_revenue,
    (revenue - previous_month_revenue) AS revenue_change
FROM ranked_sales
WHERE previous_month_revenue IS NOT NULL AND revenue < previous_month_revenue;

-- Regional Revenue Comparison
SELECT 
    r.region_name,
    SUM(s.quantity * s.price_per_unit) AS region_revenue
FROM sales s
JOIN regions r ON s.region_id = r.region_id
GROUP BY r.region_name
ORDER BY region_revenue DESC;
