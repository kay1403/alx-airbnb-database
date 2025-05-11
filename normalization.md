# Database Normalization

## 1NF – First Normal Form
- Ensured atomic columns (e.g., no lists or comma-separated values).
- Defined primary keys for each table to guarantee unique rows.

## 2NF – Second Normal Form
- All non-key attributes depend fully on the entire primary key.
- Avoided use of composite primary keys; each table uses a single-column PK.

## 3NF – Third Normal Form
- No transitive dependencies among non-key attributes.
- All fields depend only on the primary key of their table.

## Conclusion
The database design adheres to 3NF, ensuring data integrity, reducing redundancy, and optimizing efficiency.
