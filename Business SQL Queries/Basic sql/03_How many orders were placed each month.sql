SELECT MONTH(order_purchase_timestamp) AS 'month_number',
MONTHNAME(order_purchase_timestamp) AS 'month',
YEAR(order_purchase_timestamp) AS 'year',
COUNT(*) AS 'per_month_orders'
FROM olist_orders
WHERE order_purchase_timestamp IS NOT NULL
GROUP BY 
    MONTHNAME(order_purchase_timestamp),
    MONTH(order_purchase_timestamp),
    YEAR(order_purchase_timestamp)
ORDER BY
    year,month_number ;
    
    --OR

SELECT
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m-01') AS 'purchase_date',
    COUNT(*) AS 'total_orders'
FROM olist_orders
WHERE order_purchase_timestamp IS NOT NULL
GROUP BY DATE_FORMAT(order_purchase_timestamp,'%Y-%m-01')
ORDER BY purchase_date;
