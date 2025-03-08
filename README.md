# Aplicación de Gestión de Viajes

![Captura de pantalla](https://i.pinimg.com/1200x/10/af/6e/10af6e62ebbd7e8ebfd1225eb8e50383.jpg)

Aplicación web para consultar clima y conversión de divisas en tiempo real.

## Características
- Consulta de temperatura actual (°C)
- Conversión de COP a moneda local
- Soporte para 5 ciudades globales


## Tecnologías
| **Frontend**       | **Backend**         | **APIs**               |
|--------------------|---------------------|------------------------|
| Bootstrap 5        | Laravel 8           | OpenWeatherMap         |
| jQuery             | PHP 7.4             | ExchangeRate-API       |
|                    | MySQL 8.0           |                        |

## Instalación 🔧
1. **Clonar repositorio**:
```bash
git clone https://github.com/santy6221/travel_app-php7-.git && cd travel_app-php7-
```

2. **Instalar dependencias**
```bash
composer install
```

3. **Configurar entorno**
```bash
cp .env.example .env && php artisan key:generate
```

4. **Base de datos**
En la ruta travel_app-php7-\database\script_db.sql se encuentra el script de creacion de la db, con datos iniciales
```SQL
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

```

Configurar .env
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=travel_app
DB_USERNAME=tu_usuariodb
DB_PASSWORD=tu_contraseña
```

5. **Iniciar servidor**
```bash
php artisan serve
```

## Uso
1. Accede a http://localhost:8000/travel
2. Selecciona la ciudad e ingresa un presupuesto en COP
3. Los resultados incluyen
 - Temperatura actual
 - Presupuesto convertido
 - Codigo y nombre de la moneda a convertir
 - Tasa de cambio

