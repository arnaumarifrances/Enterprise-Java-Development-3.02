-- Tabla de autores
CREATE TABLE Authors (
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL
);

-- Tabla de entradas de blog
CREATE TABLE BlogPosts (
  post_id INT PRIMARY KEY AUTO_INCREMENT,
  author_id INT,
  title VARCHAR(255),
  word_count INT,
  views INT,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
