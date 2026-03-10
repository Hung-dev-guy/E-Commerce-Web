-- Get all products
SELECT id, name, description, price, stock, category, created_at, updated_at
FROM products
ORDER BY created_at DESC;

-- Get product by ID
SELECT id, name, description, price, stock, category, created_at, updated_at
FROM products
WHERE id = %s;

-- Get products by category
SELECT id, name, description, price, stock, category, created_at, updated_at
FROM products
WHERE category = %s
ORDER BY created_at DESC;

-- Search products by name
SELECT id, name, description, price, stock, category, created_at, updated_at
FROM products
WHERE name ILIKE %s OR description ILIKE %s
ORDER BY created_at DESC;
