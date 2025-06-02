-- Tabla de autores del blog
CREATE TABLE Autores (
  id_autor INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL
);

-- Tabla de publicaciones del blog
CREATE TABLE Publicaciones (
  id_publicacion INT PRIMARY KEY AUTO_INCREMENT,
  id_autor INT,
  titulo VARCHAR(255),
  cantidad_palabras INT,
  vistas INT,
  FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);
