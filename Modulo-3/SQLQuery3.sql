--CREA BASE DE DATOS
CREATE DATABASE Modulo3;
GO

--clausula USE
USE Modulo3;
GO

--CREA TABLA clientes
CREATE TABLE Clientes(
-- INT porque el ID será un número entero único.
id_cliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
-- VARCHAR(100) porque el nombre es texto y no superará los 100 caracteres.
nombre varchar(100),
-- TEXT porque almacenará una biografía o notas que pueden ser largas.
perfil_bio TEXT,
-- DATE porque solo necesitamos guardar la fecha de registro.
fecha_registro DATE
);
GO

--CREA TABLA productos
CREATE TABLE Productos(
-- INT porque el ID del producto será un número entero.
id_producto INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
-- VARCHAR(255) porque la descripción es un texto relativamente largo.
descripcion varchar(255),
-- DECIMAL(10,2) porque almacenará precios con dos decimales.
precio DECIMAL(10,2),
-- BIT porque solo existen dos opciones:
    -- 1 = Activo (a la venta)
    -- 0 = Inactivo (no disponible)
esta_activo BIT
);
GO
