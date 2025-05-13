-- Indexes to optimize WHERE/JOIN/ORDER BY performance
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
CREATE INDEX idx_email ON users(email);
