### Monitoring and Refining

**Tools Used:**
- SHOW PROFILE
- EXPLAIN ANALYZE

**Findings:**
- Full table scans occurred on queries filtering `start_date` before indexing/partitioning.
- Indexes on `user_id`, `email`, and `property_id` reduced scan time by 40–60%.

**Changes Made:**
- Added necessary indexes.
- Applied partitioning on `bookings`.
- Reduced SELECT * usage.

**Results:**
- Queries 2x faster.
- Optimized for scale (100k+ rows).
