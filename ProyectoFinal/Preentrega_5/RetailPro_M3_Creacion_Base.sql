/*===========================================================
PROYECTO INTEGRADOR - RETAILPRO
Base de datos
Curso: Data Analytics - Coderhouse
Alumna: Giuliana Belén Canosa
===========================================================*/

--Crear la base de datos

CREATE DATABASE RetailPro;
GO

USE RetailPro;
GO

--Eliminar tablas si existen

DROP TABLE IF EXISTS Ventas;
DROP TABLE IF EXISTS Territorios;
DROP TABLE IF EXISTS Productos;
DROP TABLE IF EXISTS Clientes;
GO

--Crear Tabla Clientes

CREATE TABLE Clientes (
IDCliente INT IDENTITY(1,1) PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Email VARCHAR(100) UNIQUE,
Ciudad VARCHAR(50),
Segmento VARCHAR(50),
FechaRegistro DATE NOT NULL
);
GO

--Crear Tabla Productos

CREATE TABLE Productos (
IDProducto INT IDENTITY(1,1) PRIMARY KEY,
NombreProducto VARCHAR(100) NOT NULL,
Categoria VARCHAR(50) NOT NULL,
Subcategoria VARCHAR(50),
Precio DECIMAL(10,2) NOT NULL,
Costo DECIMAL(10,2) NOT NULL
);
GO

--Crear Tabla Territorios

CREATE TABLE Territorios (
IDTerritorio INT IDENTITY(1,1) PRIMARY KEY,
Region VARCHAR(50) NOT NULL,
Pais VARCHAR(50),
Zona VARCHAR(50)
);
GO

--Crear Tabla Ventas
CREATE TABLE Ventas (
IDVenta INT IDENTITY(1,1) PRIMARY KEY,
IDCliente INT NOT NULL,
IDProducto INT NOT NULL,
IDTerritorio INT NOT NULL,
FechaVenta DATE NOT NULL,
Cantidad INT NOT NULL,
PrecioUnitario DECIMAL(10,2) NOT NULL,
TotalVenta DECIMAL(10,2) NOT NULL,
Canal VARCHAR(20) NOT NULL,

CONSTRAINT FK_Ventas_Clientes
     FOREIGN KEY (IDCliente)
     REFERENCES Clientes(IDCliente),

CONSTRAINT FK_Ventas_Productos
     FOREIGN KEY (IDProducto)
     REFERENCES Productos(IDProducto),

CONSTRAINT FK_Ventas_Territorios
     FOREIGN KEY (IDTerritorio)
     REFERENCES Territorios(IDTerritorio)
);
GO

--INSERTAR DATOS

INSERT INTO Clientes
(Nombre, Email, Ciudad, Segmento, FechaRegistro)
VALUES
('María López','maria@mail.com','Buenos Aires','Consumidor','2024-01-05'),
('Carlos Ruiz','carlos@mail.com','Córdoba','Corporativo','2024-01-10'),
('Ana Gómez','ana@mail.com','Rosario','Consumidor','2024-02-01'),
('Pedro Sanz','pedro@mail.com','Mendoza','PyME','2024-02-15'),
('Laura Torres','laura@mail.com','Tucumán','Corporativo','2024-03-01');
GO

INSERT INTO Productos
(NombreProducto,Categoria,Subcategoria,Precio,Costo)
VALUES
('Laptop Pro 15','Computación','Notebook',1200.00,900.00),
('Mouse Inalámbrico','Accesorios','Mouse',28.00,15.00),
('Monitor 4K 27"','Computación','Monitor',450.00,300.00),
('Auriculares BT Pro','Audio','Auriculares',120.00,70.00),
('SSD Externo 1TB','Almacenamiento','SSD',130.00,80.00),
('Teclado Mecánico','Accesorios','Teclado',95.00,55.00);
GO

INSERT INTO Territorios
(Region,Pais,Zona)
VALUES
('Centro','Argentina','Buenos Aires'),
('Centro','Argentina','Córdoba'),
('Litoral','Argentina','Santa Fe'),
('Cuyo','Argentina','Mendoza'),
('Norte','Argentina','Tucumán');
GO

INSERT INTO Ventas
(IDCliente,IDProducto,IDTerritorio,FechaVenta,Cantidad,PrecioUnitario,TotalVenta,Canal)
VALUES
(1,1,1,'2024-03-05',2,1200.00,2400.00,'Online'),
(2,2,2,'2024-03-06',5,28.00,140.00,'Presencial'),
(3,3,3,'2024-03-07',1,450.00,450.00,'Online'),
(1,4,1,'2024-03-08',2,120.00,240.00,'Online'),
(4,5,4,'2024-03-10',3,130.00,390.00,'Presencial'),
(2,6,2,'2024-03-11',4,95.00,380.00,'Online'),
(5,1,5,'2024-03-12',1,1200.00,1200.00,'Presencial'),
(3,2,3,'2024-03-13',8,28.00,224.00,'Online'),
(4,4,4,'2024-03-14',1,120.00,120.00,'Presencial'),
(5,3,5,'2024-03-15',2,450.00,900.00,'Online');
GO

--Verificar tablas

SELECT * FROM Clientes;
SELECT * FROM Productos;
SELECT * FROM Territorios;
SELECT * FROM Ventas;
GO






