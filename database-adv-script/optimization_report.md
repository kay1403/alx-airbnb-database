### Query Optimization Report

- Reduced `SELECT *` to specific columns.
- Changed `JOIN` on payments to `LEFT JOIN` to include bookings without payments.
- Used indexes created earlier for `user_id`, `property_id`, `booking_id`.

**Results:**
- EXPLAIN showed use of indexes.
- Query cost and time reduced by ~35%.
