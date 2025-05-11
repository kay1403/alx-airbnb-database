# Database Schema

This directory contains the SQL schema for the Airbnb clone database.

## Tables

- **User**: Stores user details.
- **Property**: Listings posted by users.
- **Booking**: Reservations made by users on properties.
- **Payment**: Payment records associated with bookings.
- **Review**: Feedback left by users after stays.
- **PropertyImage**: Stores image URLs for properties.

## Notes

- All foreign key constraints ensure relational integrity.
- ENUM fields used for payment method and status.
- Indexes improve performance on location searches and booking queries.
