# 📊 Preentrega 5 - Consultas con JOIN

**Curso:** Data Analytics – Coderhouse  
**Alumna:** Giuliana Belén Canosa

---

# 📖 Descripción

Esta preentrega corresponde al **Módulo 5** del curso **Data Analytics** de **Coderhouse**.

El objetivo es desarrollar consultas utilizando **INNER JOIN**, **LEFT JOIN** y **UNION ALL** para integrar información proveniente de distintas tablas y responder preguntas de negocio.

Como parte del proyecto integrador, se tomó como base la base de datos **Ventas_Tech_DB** desarrollada en la **Preentrega 3**, la cual fue ampliada incorporando nuevas estructuras y atributos necesarios para cumplir con los requerimientos del módulo.

---

# 📌 Adecuaciones realizadas

Para mantener la continuidad del proyecto, la base de datos original fue actualizada con las siguientes modificaciones:

- Incorporación del campo **segmento** en la tabla **clientes**.
- Creación de la tabla **territorios**.
- Incorporación del campo **id_territorio** en la tabla **ventas**.
- Incorporación del campo **canal** en la tabla **ventas**.
- Creación de la clave foránea entre **ventas** y **territorios**.
- Actualización de los registros para completar la información requerida.

Además, el script correspondiente a la **Preentrega 3** fue actualizado siguiendo la devolución recibida por el docente, modificando los registros **INSERT** para que coincidan con la consigna oficial del Módulo 3.

---

# 📂 Archivos

- **ventas_tech_db.sql**
  - Script correspondiente a la Preentrega 3.
  - Contiene la creación de la base de datos, tablas, restricciones e inserción de datos actualizados.

- **m5_consultas_joins.sql**
  - Contiene la adecuación de la base de datos y las consultas desarrolladas para la Preentrega 5.

---

# ▶️ Orden de ejecución

Para ejecutar correctamente esta preentrega se recomienda el siguiente orden:

1. Ejecutar **ventas_tech_db.sql**.
2. Seleccionar la base de datos **Ventas_Tech_DB**.
3. Ejecutar **m5_consultas_joins.sql**.

De esta manera se crean las nuevas estructuras y posteriormente se ejecutan las consultas del Módulo 5.

---

# 📋 Consultas desarrolladas

La preentrega incluye las siguientes consultas:

### Consulta 1 — Vista base del proyecto

Utiliza **INNER JOIN** para combinar las tablas:

- Ventas
- Clientes
- Productos
- Categorías
- Territorios

Mostrando:

- Fecha de venta
- Cliente
- Segmento
- Región
- Producto
- Categoría
- Cantidad
- Precio unitario
- Total de venta
- Canal

---

### Consulta 2 — Clientes sin ventas

Utiliza **LEFT JOIN** para identificar clientes registrados que no poseen ventas asociadas.

---

### Consulta 3 — Productos sin ventas

Utiliza **LEFT JOIN** para identificar productos del catálogo que aún no registran ventas.

---

### Consulta 4 — Consolidado por canal

Utiliza **UNION ALL** y **GROUP BY** para consolidar el total facturado por canal (**Online** y **Presencial**).

---

# 🛠️ Tecnologías utilizadas

- PostgreSQL 18
- pgAdmin 4
- SQL (DDL, DML y DQL)
- Git
- GitHub

---

# 👩‍💻 Autora

**Giuliana Belén Canosa**

Proyecto desarrollado como parte del curso **Data Analytics** de **Coderhouse**.
