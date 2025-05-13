### Index Performance Report

- Indexed `user_id`, `property_id`, and `start_date` in `bookings` for JOINs and range queries.
- Indexed `email` in `users` for fast user lookup.

**Before Indexing (EXPLAIN):**
- Full table scans on bookings.
- High cost values (e.g., rows = 10,000+)

**After Indexing:**
- Index usage confirmed in EXPLAIN output.
- Reduced execution time and I/O cost.
