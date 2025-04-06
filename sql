-- Retrieve all columns from the trips table
SELECT * FROM trips;

-- Retrieve all columns from the riders table
SELECT * FROM riders;

-- Retrieve all columns from the cars table
SELECT * FROM cars;

-- Select rider_id from trips and id from riders, using a LEFT JOIN to include all trips
SELECT trips.rider_id, riders.id
FROM trips
LEFT JOIN riders
ON trips.rider_id = riders.id;

-- Retrieve all columns from trips and cars, using an INNER JOIN to include only matching records
SELECT *
FROM trips
INNER JOIN cars
ON trips.car_id = cars.id;

-- Identify primary key of trips
PRAGMA table_info(trips);
