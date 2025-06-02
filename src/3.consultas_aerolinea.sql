-- Asegurar el uso de la base
USE Aerolineas;

-- Total de vuelos
SELECT COUNT(DISTINCT numero_vuelo) AS total_vuelos FROM Vuelos;

-- Promedio de distancia de los vuelos
SELECT AVG(distancia) AS promedio_distancia FROM Vuelos;

-- Promedio de asientos por avión
SELECT AVG(asientos_totales) AS promedio_asientos FROM Aviones;

-- Promedio de millas por estatus
SELECT estatus, AVG(millas_totales) AS promedio_millas
FROM Clientes
GROUP BY estatus;

-- Máxima cantidad de millas por estatus
SELECT estatus, MAX(millas_totales) AS max_millas
FROM Clientes
GROUP BY estatus;

-- Cantidad de aviones que contienen "Boeing"
SELECT COUNT(*) AS total_boeing
FROM Aviones
WHERE modelo LIKE '%Boeing%';

-- Vuelos con distancia entre 300 y 2000 millas
SELECT * FROM Vuelos
WHERE distancia BETWEEN 300 AND 2000;

-- Distancia promedio de vuelos por estatus de cliente
SELECT c.estatus, AVG(v.distancia) AS promedio_distancia
FROM Clientes c
JOIN Reservas r ON c.id_cliente = r.id_cliente
JOIN Vuelos v ON r.id_vuelo = v.id_vuelo
GROUP BY c.estatus;

-- Modelo más reservado por clientes con estatus 'Gold'
SELECT a.modelo, COUNT(*) AS veces_reservado
FROM Clientes c
JOIN Reservas r ON c.id_cliente = r.id_cliente
JOIN Vuelos v ON r.id_vuelo = v.id_vuelo
JOIN Aviones a ON v.id_avion = a.id_avion
WHERE c.estatus = 'Gold'
GROUP BY a.modelo
ORDER BY veces_reservado DESC
LIMIT 1;
