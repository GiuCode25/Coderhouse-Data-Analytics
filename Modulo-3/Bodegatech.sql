-- ═══════════════════════════════════════════
-- BodegaTech — Script de Inventario
-- Autor: Giuliana Canosa
-- Fecha: 27/07/2026
-- ═══════════════════════════════════════════

-- ==========================================
-- SECCIÓN DDL
-- ==========================================

-- Crear la base de datos si no existe
CREATE DATABASE BodegaTech;

--clausula USE
USE BodegaTech;

-- Eliminar la tabla si ya existe
DROP TABLE IF EXISTS inventario;
GO

--CREAR TABLA INVENTARIO
CREATE TABLE inventario(

-- INT porque el identificador será un número entero único para cada producto.
id_producto	INT PRIMARY KEY,

--VARCHAR(100) porque el nombre es texto y no superará los 100 caracteres.
nombre_producto VARCHAR(100),

--VARCHAR(50) porque la categoría es un texto corto.
categoria VARCHAR(50),

--DECIMAL(10,2) porque el precio necesita almacenar valores con dos decimales.
precio_unitario DECIMAL(10,2),

--INT porque representa una cantidad de unidades en stock.
stock_actual INT,

--INT porque almacena el mínimo de unidades para reposición.
stock_minimo	INT,

--DATE porque solo necesitamos guardar la fecha de ingreso.
fecha_ingreso	DATE,

--BIT porque solo admite dos valores: 1 = disponible y 0 = descontinuado.
activo BIT NOT NULL
);

-- ==========================================
-- SECCIÓN DML
-- ==========================================

-- Insertar productos
INSERT INTO inventario
(id_producto, nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES
(1,'Laptop Pro 15', 'Computación', 1200.00, 15, 3, '2024-01-10', 1),
(2, 'Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
(3, 'Monitor 4K 27"', 'Computación', 450.00, 12, 2, '2024-01-15', 1),
(4, 'Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
(5, 'Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
(6, 'Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
(7, 'Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
(8, 'Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
(9, 'SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
(10, 'Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);

-- ==========================================
-- UPDATE ventas del día
-- ==========================================

-- Venta de 3 unidades de Laptop Pro 15
UPDATE inventario
SET stock_actual = stock_actual -3
WHERE id_producto = 1;

-- Venta de 12 unidades de Mouse Inalámbrico
UPDATE inventario
SET stock_actual = stock_actual -12
WHERE id_producto = 2;

-- Venta de 5 unidades de Auriculares BT Pro
UPDATE inventario
SET stock_actual = stock_actual -5
WHERE id_producto = 6;

-- ==========================================
-- UPDATE producto descontinuado
-- ==========================================

-- La Webcam HD 1080p fue descontinuada
UPDATE inventario
SET activo = 0
WHERE id_producto = 8;

-- ==========================================
-- SELECT validaciones
-- ==========================================

SELECT * FROM inventario
