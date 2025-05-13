-- 1. INNER JOIN to retrieve all bookings and the respective users who made those bookings
SELECT 
    b.id AS booking_id,
    b.property_id,
    b.user_id,
    u.name AS user_name,
    b.start_date,
    b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
ORDER BY b.id;


-- 2. LEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    p.id AS property_id,
    p.name AS property_name,
    r.id AS review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
ORDER BY p.id;


-- 3. FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or the booking is not linked to a user
-- Note: FULL OUTER JOIN is not natively supported in MySQL. Use UNION of LEFT JOIN and RIGHT JOIN.

SELECT 
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.start_date,
    b.end_date
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id

UNION

SELECT 
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.start_date,
    b.end_date
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id
ORDER BY user_id;

