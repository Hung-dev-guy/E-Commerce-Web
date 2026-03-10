-- Get all orders
SELECT id, user_id, total_amount, status, created_at, updated_at
FROM orders
ORDER BY created_at DESC;

-- Get order by ID
SELECT id, user_id, total_amount, status, created_at, updated_at
FROM orders
WHERE id = %s;

-- Get orders by user
SELECT id, user_id, total_amount, status, created_at, updated_at
FROM orders
WHERE user_id = %s
ORDER BY created_at DESC;

-- Get order items by order ID
SELECT oi.id, oi.order_id, oi.product_id, oi.quantity, oi.price,
       p.name as product_name, p.description as product_description
FROM order_items oi
JOIN products p ON oi.product_id = p.id
WHERE oi.order_id = %s;
