# Preentrega 8 – Modelo de Datos y Medidas DAX | RetailPro

## Descripción

En esta preentrega se desarrolló el modelo analítico de Power BI para el proyecto **RetailPro**, utilizando el archivo generado en la etapa de ETL (M6).

Se implementó un esquema en estrella mediante relaciones activas entre las tablas de dimensiones y la tabla de hechos, se creó una tabla calendario para habilitar funciones de inteligencia temporal y se desarrolló una tabla exclusiva para almacenar las medidas DAX principales del modelo.

---

## Objetivos cumplidos

- Creación del modelo de datos con relaciones activas 1:N.
- Configuración de una tabla calendario (`Dim_Fechas`).
- Marcado de la tabla calendario como Tabla de fechas.
- Creación de la tabla `_Medidas` para organizar las medidas DAX.
- Desarrollo de las medidas principales solicitadas.
- Validación de resultados mediante una matriz en Power BI.

---

## Modelo de datos

El modelo está compuesto por las siguientes tablas:

- Fact_Ventas
- Dim_Clientes
- Dim_Productos
- Dim_Categorias
- Dim_Fechas

Relaciones implementadas:

- Dim_Clientes → Fact_Ventas
- Dim_Productos → Fact_Ventas
- Dim_Categorias → Dim_Productos
- Dim_Fechas → Fact_Ventas

Todas las relaciones fueron configuradas con:

- Cardinalidad 1:N
- Dirección de filtro única
- Relación activa

---

## Tabla calendario

Se creó la tabla **Dim_Fechas** mediante DAX utilizando el rango de fechas existente en la tabla de ventas.

Además se agregaron las siguientes columnas calculadas:

- Año
- Mes Número
- Mes Nombre
- Trimestre
- Semana

La tabla fue marcada como **Tabla de fechas** para permitir el uso de funciones de inteligencia temporal.

---

## Medidas DAX desarrolladas

Se creó la tabla `_Medidas` para almacenar las medidas del modelo.

Las medidas implementadas fueron:

- Total Ventas
- Ventas Online
- Ventas YTD
- Ventas LY
- % Crecimiento Anual

Estas medidas incluyen:

- Agregaciones básicas.
- Uso de CALCULATE.
- Inteligencia temporal.
- Uso de variables (VAR).
- Función DIVIDE para evitar errores de división.

---

## Validación

Se creó una página denominada **Validación** con una matriz configurada de la siguiente manera:

**Filas**

- Mes Nombre

**Columnas**

- Año

**Valores**

- Total Ventas
- Ventas YTD
- Ventas LY
- % Crecimiento Anual

La validación permitió comprobar el correcto funcionamiento de las medidas y del modelo de datos.

---

## Archivo entregado

**Canosa_Giuliana_Checkpoint2.pbix**

---

## Herramientas utilizadas

- Power BI Desktop
- DAX
- Modelo en estrella
- Inteligencia temporal
- GitHub
---

# 👩‍💻 Autora

**Giuliana Belén Canosa**

Proyecto desarrollado como parte del curso **Data Analytics** de **Coderhouse**.
