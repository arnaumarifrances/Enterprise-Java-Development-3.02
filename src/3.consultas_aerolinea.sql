-- Total de vuelos registrados
SELECT COUNT(DISTINCT numero_vuelo) AS total_vuelos FROM Vuelos;

-- Promedio de distancia de los vuelos
SELECT AVG(distancia) AS promedio_distancia FROM Vuelos;

-- Promedio de asientos por avión
SELECT AVG(asientos_totales) AS promedio_asientos FROM Aviones;

-- Promedio de millas totales por estatus de cliente
SELECT estatus, AVG(millas_totales) AS promedio_millas
FROM Clientes
GROUP BY estatus;

-- Máxima cantidad de millas por estatus de cliente
SELECT estatus, MAX(millas_totales) AS max_millas
FROM Clientes
GROUP BY estatus;

-- Total de aviones cuyo modelo contiene la palabra 'Boeing'
SELECT COUNT(*) FROM Aviones
WHERE modelo LIKE '%Boeing%';

-- Vuelos con distancia entre 300 y 2000 millas
SELECT * FROM Vuelos
WHERE distancia BETWEEN 300 AND 2000;

-- Promedio de distancia de vuelos por estatus de cliente
SELECT c.estatus, AVG(v.distancia) AS promedio_distancia
FROM Clientes c
JOIN Reservas r ON c.id_cliente = r.id_cliente
JOIN Vuelos v ON r.id_vuelo = v.id_vuelo
GROUP BY c.estatus;

-- Modelo de avión más reservado por clientes con estatus 'Gold'
SELECT a.modelo, COUNT(*) AS veces_reservado
FROM Clientes c
JOIN Reservas r ON c.id_cliente = r.id_cliente
JOIN Vuelos v ON r.id_vuelo = v.id_vuelo
JOIN Aviones a ON v.id_avion = a.id_avion
WHERE c.estatus = 'Gold'
GROUP BY a.modelo
ORDER BY veces_reservado DESC
LIMIT 1;
