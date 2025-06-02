-- Tabla de clientes de la aerolínea
CREATE TABLE Clientes (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100),
  estatus VARCHAR(20),
  millas_totales INT
);

-- Tabla de aviones
CREATE TABLE Aviones (
  id_avion INT PRIMARY KEY AUTO_INCREMENT,
  modelo VARCHAR(100),
  asientos_totales INT
);

-- Tabla de vuelos
CREATE TABLE Vuelos (
  id_vuelo INT PRIMARY KEY AUTO_INCREMENT,
  numero_vuelo VARCHAR(10),
  id_avion INT,
  distancia INT,
  FOREIGN KEY (id_avion) REFERENCES Aviones(id_avion)
);

-- Tabla de reservas
CREATE TABLE Reservas (
  id_reserva INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente INT,
  id_vuelo INT,
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
  FOREIGN KEY (id_vuelo) REFERENCES Vuelos(id_vuelo)
);
