SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name;

SELECT 
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name;

SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM 
    Products p
JOIN 
    Order_Items oi ON p.product_id = oi.product_id
GROUP BY 
    p.product_id, p.product_name;

SELECT 
    order_date,
    AVG(total_amount) AS avg_order_amount
FROM 
    Orders
GROUP BY 
    order_date;


SELECT 
    payment_method,
    SUM(amount) AS total_revenue
FROM 
    Payments
GROUP BY 
    payment_method;

SELECT 
    o.order_id,
    SUM(oi.quantity) AS total_items
FROM 
    Orders o
JOIN 
    Order_Items oi ON o.order_id = oi.order_id
GROUP BY 
    o.order_id;
