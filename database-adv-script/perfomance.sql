-- 1. Initial query to retrieve all bookings, user details, property details, and payment details
-- Adding conditions with WHERE and AND clauses to filter results based on example criteria
EXPLAIN 
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.start_date >= '2023-01-01'
AND b.end_date <= '2023-12-31'
ORDER BY b.start_date;

-- 2. After analyzing performance, refactor the query if necessary (example: using indexes, reducing joins)
-- Here, we re-run the EXPLAIN ANALYZE to measure performance after improvements (if needed)
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.start_date >= '2023-01-01'
AND b.end_date <= '2023-12-31'
ORDER BY b.start_date;
