-- Tabla de clientes
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  status VARCHAR(20),
  total_miles INT
);

-- Tabla de aviones
CREATE TABLE Aircrafts (
  aircraft_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  total_seats INT
);

-- Tabla de vuelos
CREATE TABLE Flights (
  flight_id INT PRIMARY KEY AUTO_INCREMENT,
  flight_number VARCHAR(10),
  aircraft_id INT,
  distance INT,
  FOREIGN KEY (aircraft_id) REFERENCES Aircrafts(aircraft_id)
);

-- Tabla de reservas
CREATE TABLE Bookings (
  booking_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  flight_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);
