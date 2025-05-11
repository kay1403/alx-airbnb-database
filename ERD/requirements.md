Entities and Attributes
Here are the primary entities and their relevant attributes:

User

id (PK)

first_name

last_name

email (unique)

phone_number

password_hash

created_at

updated_at

Property

id (PK)

user_id (FK → User.id)

title

description

location

price_per_night

max_guests

created_at

updated_at

Booking

id (PK)

user_id (FK → User.id)

property_id (FK → Property.id)

start_date

end_date

total_price

created_at

Payment

id (PK)

booking_id (FK → Booking.id)

amount

payment_date

payment_method

status

Review

id (PK)

booking_id (FK → Booking.id)

user_id (FK → User.id)

rating (1–5)

comment

created_at

PropertyImage

id (PK)

property_id (FK → Property.id)

image_url

Relationships
A User can have multiple Properties and multiple Bookings.

A Property belongs to one User and can have many Bookings and many PropertyImages.

A Booking is made by one User for one Property and may have one Payment and one Review.

A Payment is linked to one Booking.

A Review is written by one User for one Booking.
