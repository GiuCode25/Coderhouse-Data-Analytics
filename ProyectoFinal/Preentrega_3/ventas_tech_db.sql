
/*===========================================================
MÓDULO 3 - CHECKPOINT SQL
Proyecto: Ventas_Tech_DB
Alumna: Giuliana Belén Canosa
Curso: Data Analytics - Coderhouse

Descripción:
Script para la creación de la base de datos,
definición de tablas, restricciones de integridad,
carga inicial de datos y consultas de verificación.
===========================================================*/

/*===========================================================
SECCIÓN 1 - DDL
Creación de la estructura de la base de datos
===========================================================*/

-- Ejecutar este comando una única vez para crear la base de datos.
-- Luego conectarse a Ventas_Tech_DB y ejecutar el resto del script.
-- CREATE DATABASE Ventas_Tech_DB;

CREATE DATABASE Ventas_Tech_DB;

DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;

CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200)
);

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    ciudad VARCHAR(50),
    fecha_registro DATE NOT NULL
);

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    id_categoria INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    activo BOOLEAN DEFAULT TRUE,

    FOREIGN KEY (id_categoria)
        REFERENCES categorias(id_categoria)
);

CREATE TABLE ventas (
    id_venta INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    fecha_venta DATE NOT NULL,

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    FOREIGN KEY (id_producto)
        REFERENCES productos(id_producto)
);


/*===========================================================
SECCIÓN 2 - DML
Carga inicial de datos
===========================================================*/

INSERT INTO categorias VALUES
(1, 'Gaming', 'Equipos y accesorios para videojuegos'),
(2, 'Redes', 'Dispositivos para conectividad'),
(3, 'Impresión', 'Impresoras y consumibles'),
(4, 'Smart Home', 'Dispositivos inteligentes para el hogar');

INSERT INTO clientes VALUES
(1, 'Sofía Martínez', 'sofia.martinez@mail.com', 'Buenos Aires', '2024-02-10'),
(2, 'Lucas Fernández', 'lucas.fernandez@mail.com', 'La Plata', '2024-02-18'),
(3, 'Valentina Rojas', 'valentina.rojas@mail.com', 'Mar del Plata', '2024-03-02'),
(4, 'Martín Herrera', 'martin.herrera@mail.com', 'Santa Fe', '2024-03-08'),
(5, 'Camila Navarro', 'camila.navarro@mail.com', 'Salta', '2024-03-15');

INSERT INTO productos VALUES
(1, 'Notebook Gamer X15', 1, 1850.00, 12, TRUE),
(2, 'Router WiFi 6', 2, 140.00, 35, TRUE),
(3, 'Impresora Multifunción', 3, 320.00, 18, TRUE),
(4, 'Lámpara Inteligente LED', 4, 55.00, 50, TRUE),
(5, 'Mouse Gamer RGB', 1, 65.00, 70, TRUE),
(6, 'Switch 8 Puertos', 2, 95.00, 28, TRUE);

INSERT INTO ventas VALUES
(1, 1, 1, 1, 1850.00, '2024-04-02'),
(2, 2, 2, 2, 140.00, '2024-04-03'),
(3, 3, 3, 1, 320.00, '2024-04-04'),
(4, 4, 4, 3, 55.00, '2024-04-05'),
(5, 5, 5, 2, 65.00, '2024-04-06'),
(6, 1, 6, 1, 95.00, '2024-04-07'),
(7, 2, 5, 1, 65.00, '2024-04-08'),
(8, 3, 2, 1, 140.00, '2024-04-09'),
(9, 4, 1, 1, 1850.00, '2024-04-10'),
(10, 5, 4, 2, 55.00, '2024-04-11');

/*===========================================================
SECCIÓN 3 - CONSULTAS DE VERIFICACIÓN
Comprobación de la carga de datos
===========================================================*/

SELECT * FROM categorias;
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM ventas;
