-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS travel_app 
    DEFAULT CHARACTER SET utf8mb4 
    COLLATE utf8mb4_unicode_ci;

-- Seleccionar la base de datos
USE travel_app;

-- Crear tabla 'cities'
CREATE TABLE IF NOT EXISTS cities (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    country_code VARCHAR(2) NOT NULL,
    currency_name VARCHAR(255) NOT NULL,
    currency_code VARCHAR(3) NOT NULL,
    currency_symbol VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- datos iniciales
INSERT INTO cities (name, country_code, currency_name, currency_code, currency_symbol) 
VALUES
('Londres', 'GB', 'Libra Esterlina', 'GBP', '£'),
('Nueva York', 'US', 'Dólar Estadounidense', 'USD', '$'),
('París', 'FR', 'Euro', 'EUR', '€'),
('Tokio', 'JP', 'Yen Japonés', 'JPY', '¥'),
('Madrid', 'ES', 'Euro', 'EUR', '€');
