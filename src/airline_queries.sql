-- Total de vuelos
SELECT COUNT(DISTINCT flight_number) AS total_flights FROM Flights;

-- Promedio de distancia de vuelo
SELECT AVG(distance) AS average_distance FROM Flights;

-- Promedio de asientos por avión
SELECT AVG(total_seats) AS average_seats FROM Aircrafts;

-- Promedio de millas por estatus de cliente
SELECT status, AVG(total_miles) AS avg_miles
FROM Customers
GROUP BY status;

-- Máximo de millas por estatus
SELECT status, MAX(total_miles) AS max_miles
FROM Customers
GROUP BY status;

-- Cantidad de aviones que contienen 'Boeing'
SELECT COUNT(*) FROM Aircrafts
WHERE name LIKE '%Boeing%';

-- Vuelos con distancia entre 300 y 2000 millas
SELECT * FROM Flights
WHERE distance BETWEEN 300 AND 2000;

-- Promedio de distancia por estatus de cliente (JOIN)
SELECT c.status, AVG(f.distance) AS avg_distance
FROM Customers c
JOIN Bookings b ON c.customer_id = b.customer_id
JOIN Flights f ON b.flight_id = f.flight_id
GROUP BY c.status;

-- Avión más reservado por clientes Gold
SELECT a.name, COUNT(*) AS times_booked
FROM Customers c
JOIN Bookings b ON c.customer_id = b.customer_id
JOIN Flights f ON b.flight_id = f.flight_id
JOIN Aircrafts a ON f.aircraft_id = a.aircraft_id
WHERE c.status = 'Gold'
GROUP BY a.name
ORDER BY times_booked DESC
LIMIT 1;
