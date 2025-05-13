-- 1. Query performance before adding indexes
-- Example query to check performance before indexing
EXPLAIN ANALYZE
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;


-- 2. Create indexes on high-usage columns to improve query performance
-- Creating index on 'user_id' in 'bookings' table and 'id' in 'users' table
CREATE INDEX idx_bookings_user_id ON bookings (user_id);
CREATE INDEX idx_users_id ON users (id);


-- 3. Query performance after adding indexes
-- Now running the same query after indexing to measure the performance improvement
EXPLAIN ANALYZE
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;
