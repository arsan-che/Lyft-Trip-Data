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

-- Combine all records from riders and riders2, removing duplicates
SELECT * 
FROM riders
UNION
SELECT *
FROM riders2;

-- Perform a cross join between riders and cars
SELECT * FROM riders CROSS JOIN cars;

-- Calculate the average cost of all trips, rounded to one decimal place
SELECT ROUND(AVG(cost), 1)
FROM trips;

-- Retrieve all riders who have taken fewer than 500 trips
SELECT *
FROM riders
WHERE total_trips < 500;

-- Retrieve all riders from both tables who have taken fewer than 500 trips, removing duplicates
SELECT *
FROM riders
WHERE total_trips < 500
UNION
SELECT *
FROM riders2
WHERE total_trips < 500;

-- Count the number of cars that are currently active
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

-- Retrieve the top two cars with the highest number of trips completed
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;

-- Calculate the average cost of all trips
SELECT AVG(cost)
FROM trips;
