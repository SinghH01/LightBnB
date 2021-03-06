-- Get all reservations for a user

SELECT reservations.id, properties.title, start_date, properties.cost_per_night, avg(property_reviews.rating)
FROM reservations
JOIN properties ON property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.title, properties.cost_per_night
ORDER BY start_date
LIMIT 10;
