### Partitioning Performance Report

- Partitioned `bookings` by year of `start_date`.

**Before Partitioning:**
- Queries filtering by year took 4–6s on 100,000 rows.

**After Partitioning:**
- Same queries completed under 2s.
- EXPLAIN showed partition pruning applied.
