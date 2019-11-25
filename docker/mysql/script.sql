CREATE DATABASE IF NOT EXISTS teste;
USE teste;

CREATE TABLE IF NOT EXISTS products (
    id INT(11) AUTO_INCREMENT,
    name VARCHAR(255),
    price DECIMAL(10, 2),
    PRIMARY KEY (id)
);

INSERT INTO products (name, price) VALUE 
('Curso Front-end especialista', 2500),
('Curso JS Fullstack', 900);