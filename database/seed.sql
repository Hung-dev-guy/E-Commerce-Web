-- Seed data for E-commerce database

-- Insert sample users
INSERT INTO users (email, username, password_hash, full_name) VALUES
('user1@example.com', 'user1', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU1qPvJ', 'Nguyễn Văn A'),
('user2@example.com', 'user2', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU1qPvJ', 'Trần Thị B'),
('user3@example.com', 'user3', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU1qPvJ', 'Lê Văn C')
ON CONFLICT (email) DO NOTHING;

-- Insert sample products
INSERT INTO products (name, description, price, stock, category) VALUES
('Laptop Dell XPS 13', 'Laptop cao cấp, màn hình 13 inch, CPU Intel Core i7', 25000000, 10, 'Laptop'),
('iPhone 15 Pro', 'Smartphone cao cấp, camera 48MP, chip A17 Pro', 30000000, 15, 'Smartphone'),
('Samsung Galaxy S24', 'Smartphone Android cao cấp, màn hình AMOLED', 22000000, 20, 'Smartphone'),
('iPad Air', 'Máy tính bảng Apple, chip M1, màn hình 10.9 inch', 15000000, 12, 'Tablet'),
('Bàn phím cơ Logitech', 'Bàn phím cơ gaming RGB, switch blue', 2000000, 30, 'Accessories'),
('Chuột Logitech MX Master 3', 'Chuột không dây cao cấp cho công việc', 2500000, 25, 'Accessories'),
('Tai nghe Sony WH-1000XM5', 'Tai nghe chống ồn cao cấp', 8000000, 18, 'Audio'),
('Loa Bluetooth JBL Flip 6', 'Loa di động chống nước', 3000000, 40, 'Audio'),
('Màn hình LG 27 inch 4K', 'Màn hình 4K IPS, HDR10', 8500000, 8, 'Monitor'),
('Webcam Logitech C920', 'Webcam Full HD cho họp online', 1800000, 35, 'Accessories'),
('MacBook Pro 14 inch', 'Laptop Apple, chip M3 Pro, 16GB RAM', 55000000, 5, 'Laptop'),
('Apple Watch Series 9', 'Đồng hồ thông minh, GPS, cellular', 12000000, 22, 'Wearable'),
('Samsung Galaxy Tab S9', 'Máy tính bảng Android cao cấp', 18000000, 10, 'Tablet'),
('AirPods Pro 2', 'Tai nghe true wireless, chống ồn', 6500000, 28, 'Audio'),
('Asus ROG Gaming Mouse', 'Chuột gaming có dây, DPI cao', 1500000, 45, 'Accessories')
ON CONFLICT DO NOTHING;

-- Insert sample orders
INSERT INTO orders (user_id, total_amount, status) VALUES
(1, 27000000, 'completed'),
(1, 10500000, 'pending'),
(2, 30000000, 'completed'),
(2, 8000000, 'shipping'),
(3, 4500000, 'completed')
ON CONFLICT DO NOTHING;

-- Insert sample order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 25000000),
(1, 5, 1, 2000000),
(2, 9, 1, 8500000),
(2, 5, 1, 2000000),
(3, 2, 1, 30000000),
(4, 7, 1, 8000000),
(5, 6, 1, 2500000),
(5, 5, 1, 2000000)
ON CONFLICT DO NOTHING;

-- Verify data
SELECT 'Users:' as table_name, COUNT(*) as count FROM users
UNION ALL
SELECT 'Products:', COUNT(*) FROM products
UNION ALL
SELECT 'Orders:', COUNT(*) FROM orders
UNION ALL
SELECT 'Order Items:', COUNT(*) FROM order_items;
