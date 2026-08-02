/*===========================================================
 MÓDULO 5 - PREENTREGA SQL

 Proyecto: RetailPro
 Archivo: m5_consultas_joins.sql
 Alumna: Giuliana Belén Canosa
 Curso: Data Analytics - Coderhouse

 Descripción:
 Consultas utilizando INNER JOIN, LEFT JOIN y UNION ALL
 para enriquecer el análisis de negocio.

 Nota:
 El script de la Preentrega 3 fue actualizado a partir
 de la devolución recibida del docente, modificando los
 registros INSERT para que coincidan con los datos
 establecidos en la consigna oficial del Módulo 3.

 Además, para dar respuesta a los requerimientos de esta
 preentrega, se incorporan nuevas estructuras y campos
 (segmento, territorios, región, canal e id_territorio),
 ampliando la base de datos original sin modificar su
 estructura principal.

 Estas adecuaciones permiten desarrollar las consultas
 solicitadas en el Módulo 5 manteniendo la continuidad
 del proyecto integrador.

===========================================================*/

/*===========================================================
SECCIÓN 1 - ADECUACIÓN DE LA BASE DE DATOS
Para dar soporte a las consultas con JOIN del Módulo 5.
===========================================================*/

/*==============================
Agregar Segmento a Clientes
================================*/
ALTER TABLE clientes
ADD COLUMN segmento VARCHAR(50);

UPDATE clientes
SET segmento = CASE
    WHEN id_cliente IN (1,2) THEN 'Consumidor'
    WHEN id_cliente IN (3,4) THEN 'Empresa'
    ELSE 'PyME'
END;

/*==============================
Crear tabla Territorios
================================*/
CREATE TABLE territorios(

    id_territorio INT PRIMARY KEY,
    region VARCHAR(50) NOT NULL
);

/*==============================
Insertás algunos datos:
================================*/
INSERT INTO territorios VALUES
(1,'Norte'),
(2,'Centro'),
(3,'Sur');

/*==============================
Agregar columnas a Ventas
================================*/
ALTER TABLE ventas
ADD COLUMN id_territorio INT;

ALTER TABLE ventas
ADD COLUMN canal VARCHAR(20);

/*==============================
Completar esos datos
================================*/
UPDATE ventas
SET id_territorio = CASE

WHEN id_venta IN (1,2,3) THEN 1
WHEN id_venta IN (4,5,6) THEN 2
ELSE 3

END;


UPDATE ventas
SET canal = CASE

WHEN id_venta % 2 = 0 THEN 'Presencial'
ELSE 'Online'

END;

/*==============================
Crear la FK
================================*/
ALTER TABLE ventas

ADD CONSTRAINT fk_territorio

FOREIGN KEY(id_territorio)

REFERENCES territorios(id_territorio);

/*===========================================================
SECCIÓN 2 - CONSULTAS
Consultas con JOIN para el análisis de negocio.
===========================================================*/

/*===========================================================
CONSULTA 1 - VISTA BASE DEL PROYECTO
INNER JOIN
===========================================================*/

SELECT
v.fecha_venta,
c.nombre,
c.segmento,
t.region,
p.nombre_producto,
cat.nombre_categoria AS categoria,
v.cantidad,
v.precio_unitario,
(v.cantidad * v.precio_unitario) AS total_venta,
v.canal

FROM ventas v

INNER JOIN clientes c
ON v.id_cliente = c.id_cliente

INNER JOIN productos p
ON v.id_producto = p.id_producto

INNER JOIN categorias cat
ON p.id_categoria = cat.id_categoria

INNER JOIN territorios t
ON v.id_territorio = t.id_territorio

ORDER BY v.fecha_venta;

/*===========================================================
CONSULTA 2 - CLIENTES SIN VENTAS
LEFT JOIN
===========================================================*/

SELECT
c.nombre,
c.email,
c.fecha_registro

FROM clientes c

LEFT JOIN ventas v
ON c.id_cliente = v.id_cliente

WHERE v.id_venta IS NULL;

/*===========================================================
CONSULTA 3 - PRODUCTOS SIN VENTAS
LEFT JOIN
===========================================================*/

SELECT
p.nombre_producto,
cat.nombre_categoria AS categoria,
p.precio

FROM productos p

LEFT JOIN ventas v
ON p.id_producto = v.id_producto

INNER JOIN categorias cat
ON p.id_categoria = cat.id_categoria

WHERE v.id_venta IS NULL;

/*===========================================================
CONSULTA 4 - CONSOLIDADO POR CANAL
UNION ALL
===========================================================*/

SELECT
canal,
SUM(total_venta) AS total_facturado

FROM (

    SELECT
        'Online' AS canal,
        (cantidad * precio_unitario) AS total_venta
    FROM ventas
    WHERE canal = 'Online'

    UNION ALL

    SELECT
        'Presencial' AS canal,
        (cantidad * precio_unitario) AS total_venta
    FROM ventas
    WHERE canal = 'Presencial'

) AS ventas_canal

GROUP BY canal
ORDER BY canal;

