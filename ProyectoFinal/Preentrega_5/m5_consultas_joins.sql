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
Las consultas se desarrollan sobre la base de datos
RetailPro, implementada siguiendo el modelo
relacional definido en las preentregas 1 (Brief del
Proyecto) y 2 (Modelo Entidad-Relación), para dar
continuidad al proyecto integrador y responder a
los requerimientos del presente módulo.

Para ejecutar correctamente este archivo, primero
debe ejecutarse el script
"RetailPro_M3_Creacion_Base.sql", el cual crea la
base de datos, las tablas y carga los datos
iniciales utilizados en las consultas.
===========================================================*/

/*===========================================================
CONSULTA 1 - VISTA BASE DEL PROYECTO
INNER JOIN
===========================================================*/

SELECT
v.FechaVenta,
c.Nombre,
c.Segmento,
t.Region,
p.NombreProducto,
p.Categoria,
v.Cantidad,
v.PrecioUnitario,
v.TotalVenta,
v.Canal

FROM Ventas v
INNER JOIN Clientes c
ON v.IDCliente = c.IDCliente
INNER JOIN Productos p
ON v.IDProducto = p.IDProducto
INNER JOIN Territorios t
ON v.IDTerritorio = t.IDTerritorio

ORDER BY v.FechaVenta;

/*===========================================================
CONSULTA 2 - CLIENTES SIN VENTAS
LEFT JOIN
===========================================================*/

SELECT
c.Nombre,
c.Email,
c.FechaRegistro

FROM Clientes c
LEFT JOIN Ventas v
ON c.IDCliente = v.IDCliente

WHERE v.IDVenta IS NULL;

/*===========================================================
CONSULTA 3 - PRODUCTOS SIN VENTAS
LEFT JOIN
===========================================================*/

SELECT
p.NombreProducto,
p.Categoria,
p.Precio

FROM Productos p
LEFT JOIN Ventas v
ON p.IDProducto = v.IDProducto

WHERE v.IDVenta IS NULL;

/*===========================================================
CONSULTA 4 - CONSOLIDADO POR CANAL
UNION ALL
===========================================================*/

SELECT

 Canal,
 SUM(TotalVenta) AS TotalFacturado

FROM (
SELECT
   'Online' AS Canal,
   TotalVenta
FROM Ventas
WHERE Canal = 'Online'

UNION ALL

SELECT
    'Presencial' AS Canal,
    TotalVenta
FROM Ventas
WHERE Canal = 'Presencial'

) AS VentasCanal

GROUP BY Canal
ORDER BY Canal;

/*===========================================================
NOTA

Con los datos actuales de la base RetailPro,
todos los clientes y productos poseen al menos
una venta registrada.

Por este motivo, las consultas 2 y 3 pueden no
devolver resultados, aunque su lógica sea correcta.

Durante las pruebas se utilizaron registros
temporales sin ventas asociadas para verificar el
funcionamiento de los LEFT JOIN. Dichos registros
fueron eliminados antes de la entrega para no
modificar la base de datos del proyecto.
===========================================================*/