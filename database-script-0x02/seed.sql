-- Insert Users
INSERT INTO User (first_name, last_name, email, phone_number, password_hash)
VALUES 
('Alice', 'Brown', 'alice@example.com', '1234567890', 'hashed_pw_1'),
('Bob', 'Smith', 'bob@example.com', '0987654321', 'hashed_pw_2'),
('Celia', 'Ngoma', 'celia@example.com', '1122334455', 'hashed_pw_3');

-- Insert Properties
INSERT INTO Property (user_id, title, description, location, price_per_night, max_guests)
VALUES
(1, 'Cozy Cottage', 'A nice cozy cottage in the woods.', 'Asheville, NC', 120.00, 4),
(2, 'Modern Apartment', 'Downtown apartment with city view.', 'New York, NY', 200.00, 2),
(3, 'Beachside Bungalow', 'Steps from the ocean.', 'Malibu, CA', 300.00, 5);

-- Insert Bookings
INSERT INTO Booking (user_id, property_id, start_date, end_date, total_price)
VALUES
(2, 1, '2025-06-01', '2025-06-03', 240.00),
(3, 2, '2025-06-10', '2025-06-12', 400.00),
(1, 3, '2025-07-01', '2025-07-04', 900.00);

-- Insert Payments
INSERT INTO Payment (booking_id, amount, payment_date, payment_method, status)
VALUES
(1, 240.00, '2025-05-15', 'credit_card', 'completed'),
(2, 400.00, '2025-05-20', 'paypal', 'completed'),
(3, 900.00, '2025-06-01', 'bank_transfer', 'pending');

-- Insert Reviews
INSERT INTO Review (booking_id, user_id, rating, comment)
VALUES
(1, 2, 5, 'Amazing stay, will return!'),
(2, 3, 4, 'Nice view, but noisy at night.');

-- Insert Property Images
INSERT INTO PropertyImage (property_id, image_url)
VALUES
(1, 'https://example.com/images/cottage1.jpg'),
(1, 'https://example.com/images/cottage2.jpg'),
(2, 'https://example.com/images/apartment1.jpg'),
(3, 'https://example.com/images/bungalow1.jpg');
