SELECT order_status,COUNT(*) AS 'total'
FROM olist_orders
GROUP BY order_status
ORDER BY total DESC;
