# 📊 Proyecto Integrador – RetailPro

**Curso:** Data Analytics – Coderhouse  
**Alumna:** Giuliana Belén Canosa

---

# 📖 Descripción

**RetailPro** es el proyecto integrador desarrollado durante el curso **Data Analytics** de **Coderhouse**.

El proyecto tiene como objetivo diseñar e implementar una base de datos relacional para una empresa ficticia dedicada a la comercialización de productos tecnológicos, aplicando consultas SQL para responder diferentes preguntas de negocio y preparar la información para su posterior análisis y visualización en Power BI.

A lo largo del curso, el proyecto evoluciona mediante distintas preentregas, incorporando nuevas funcionalidades y consultas que permiten profundizar el análisis de la información.

---

# 🎯 Objetivos del proyecto

- Diseñar un modelo de datos relacional.
- Aplicar principios de normalización.
- Crear una base de datos utilizando SQL.
- Implementar claves primarias y foráneas.
- Aplicar restricciones de integridad.
- Realizar consultas para el análisis del negocio.
- Integrar información mediante JOIN.
- Preparar la información para su utilización en Power BI.

---

# 📂 Estructura del repositorio

```text
ProyectoFinal/
│
├── Preentrega_3/
│   ├── README.md
│   └── ventas_tech_db.sql
│
├── Preentrega_4/
│   ├── README.md
│   └── m4_consultas_negocio.sql
│
├── Preentrega_5/
│   ├── README.md
│   ├── RetailPro_M3_Creacion_Base.sql
│   └── m5_consultas_joins.sql
│
└── README.md
```

---

# 📁 Desarrollo del proyecto

## 📌 Preentrega 3 – Creación de la base de datos

En esta etapa se desarrolló una base de datos relacional utilizando SQL, aplicando los conceptos fundamentales de modelado de datos.

Se implementaron:

- Creación de tablas.
- Claves primarias.
- Claves foráneas.
- Restricciones de integridad.
- Inserción de datos.
- Consultas de verificación.

**Archivo principal**

- `ventas_tech_db.sql`

---

## 📌 Preentrega 4 – Consultas de análisis

Se desarrollaron consultas SQL orientadas al análisis de negocio utilizando:

- Funciones de agregación.
- GROUP BY.
- HAVING.
- CASE.
- CTE (WITH).

Estas consultas permiten obtener indicadores como:

- Facturación.
- Ticket promedio.
- Clientes recurrentes.
- Productos con mayor facturación.

**Archivo principal**

- `m4_consultas_negocio.sql`

---

## 📌 Preentrega 5 – Consultas con JOIN

Para esta etapa se implementó la base de datos **RetailPro**, basada en el modelo relacional desarrollado en las preentregas 1 (Brief del Proyecto) y 2 (Modelo Entidad–Relación).

Esta decisión se tomó porque la consigna del Módulo 5 requiere entidades y atributos como **Clientes, Productos, Territorios, Segmento, Región y Canal**, los cuales no forman parte de la base de datos simplificada utilizada en la Preentrega 3.

Se desarrollaron consultas utilizando:

- INNER JOIN.
- LEFT JOIN.
- UNION ALL.

Estas consultas integran la información de clientes, productos, territorios y ventas en una única vista de análisis.

**Archivos**

- `RetailPro_M3_Creacion_Base.sql`
- `m5_consultas_joins.sql`

---

# ▶️ Ejecución del proyecto

## Para la Preentrega 3

Ejecutar:

```text
ventas_tech_db.sql
```

---

## Para la Preentrega 4

1. Ejecutar la base de datos correspondiente.
2. Ejecutar:

```text
m4_consultas_negocio.sql
```

---

## Para la Preentrega 5

1. Ejecutar:

```text
RetailPro_M3_Creacion_Base.sql
```

2. Seleccionar la base de datos **RetailPro**.

3. Ejecutar:

```text
m5_consultas_joins.sql
```

---

# 🗄️ Modelo de datos (RetailPro)

La base de datos RetailPro está compuesta por las siguientes tablas:

- Clientes
- Productos
- Territorios
- Ventas

Las relaciones entre ellas permiten analizar:

- Ventas por cliente.
- Ventas por producto.
- Ventas por región.
- Ventas por canal.
- Segmentación de clientes.
- Rendimiento de productos.

---

# 🛠️ Tecnologías utilizadas

- SQL Server
- SQL (DDL y DML)
- Git
- GitHub

---

# 📌 Observaciones

Este repositorio reúne las preentregas desarrolladas durante el Proyecto Integrador del curso **Data Analytics**.

La implementación de la base de datos **RetailPro** responde a la continuidad del proyecto planteado desde las primeras etapas del curso y permite desarrollar las consultas requeridas en los módulos posteriores.

---

# 👩‍💻 Autora

**Giuliana Belén Canosa**

Estudiante de **Data Analytics** en **Coderhouse** y desarrolladora del proyecto **RetailPro**, realizado como parte del Proyecto Integrador del curso.

---

# 📬 Contacto

- **GitHub:** https://github.com/GiuCode25
- **LinkedIn:** https://www.linkedin.com/in/giulianacanosa/
- **Email:** *(agregá el correo que quieras compartir, por ejemplo: giuliana@email.com)*

---

⭐ **Gracias por visitar este repositorio.**  
Este proyecto refleja el desarrollo de las distintas etapas del curso **Data Analytics** de **Coderhouse**, desde el diseño del modelo de datos hasta la construcción de consultas SQL orientadas al análisis de negocio. El repositorio continuará actualizándose con las próximas preentregas y la implementación del dashboard final en **Power BI**.

---

# 👩‍💻 Autora

**Giuliana Belén Canosa**

Proyecto desarrollado como parte del curso **Data Analytics** de **Coderhouse**.
