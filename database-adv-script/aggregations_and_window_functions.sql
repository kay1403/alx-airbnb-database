-- 1. Total number of bookings made by each user using COUNT and GROUP BY
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;


-- 2. Rank properties using RANK()
SELECT
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS property_rank
FROM (
    SELECT
        b.property_id,
        COUNT(*) AS total_bookings
    FROM bookings b
    GROUP BY b.property_id
) AS booking_counts;


-- 3. Rank properties using ROW_NUMBER()
SELECT
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_number_rank
FROM (
    SELECT
        b.property_id,
        COUNT(*) AS total_bookings
    FROM bookings b
    GROUP BY b.property_id
) AS booking_counts;
