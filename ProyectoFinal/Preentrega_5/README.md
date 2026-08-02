# 📊 Proyecto Integrador - RetailPro

**Curso:** Data Analytics – Coderhouse  
**Alumna:** Giuliana Belén Canosa

---

# 📖 Descripción

RetailPro es el proyecto integrador desarrollado durante el curso **Data Analytics** de **Coderhouse**.

El objetivo del proyecto es diseñar una base de datos relacional y aplicar consultas SQL para responder preguntas de negocio relacionadas con clientes, productos, territorios y ventas. A medida que avanza el curso, el proyecto evoluciona incorporando nuevas consultas y análisis que servirán como base para el desarrollo del dashboard en Power BI.

---

# 📂 Estructura del repositorio

```
ProyectoFinal/
│
├── Preentrega_3/
│   └── RetailPro_M3_Creacion_Base.sql
│
├── Preentrega_4/
│   └── m4_consultas_negocio.sql
│
├── Preentrega_5/
│   └── m5_consultas_joins.sql
│   └── RetailPro_M3_Creacion_Base.sql
│
└── README.md
```

---

# 📁 Contenido

## 📌 Preentrega 3

**Archivo:**

`RetailPro_M3_Creacion_Base.sql`

Contiene:

- Creación de la base de datos **RetailPro**.
- Creación de las tablas.
- Definición de claves primarias y foráneas.
- Carga inicial de datos.
- Consultas de verificación.

---

## 📌 Preentrega 4

**Archivo:**

`m4_consultas_negocio.sql`

Incluye consultas utilizando:

- Funciones de agregación
- GROUP BY
- HAVING
- CASE
- CTE (WITH)

para obtener métricas de negocio.

---

## 📌 Preentrega 5

**Archivo:**

`m5_consultas_joins.sql`
`RetailPro_M3_Creacion_Base.sql` (Preentrega 3)

Incluye consultas utilizando:

- INNER JOIN
- LEFT JOIN
- UNION ALL

para integrar la información de clientes, productos, territorios y ventas en una única vista de análisis.

---

# 🗄️ Modelo de datos

La base de datos **RetailPro** está compuesta por las siguientes tablas:

- Clientes
- Productos
- Territorios
- Ventas

Las relaciones entre ellas permiten analizar:

- ventas por cliente;
- ventas por producto;
- ventas por región;
- ventas por canal;
- comportamiento de los clientes;
- desempeño de los productos.

---

# ▶️ Cómo ejecutar la Preentrega 5

## Archivos

- **RetailPro_M3_Creacion_Base.sql**
  - Crea la base de datos RetailPro.
  - Genera las tablas.
  - Inserta los datos iniciales.

- **m5_consultas_joins.sql**
  - Contiene las consultas solicitadas en la Preentrega 5.

## Orden de ejecución

1. Ejecutar `RetailPro_M3_Creacion_Base.sql`.
2. Seleccionar la base de datos `RetailPro`.
3. Ejecutar `m5_consultas_joins.sql`.

---

# 🛠️ Tecnologías utilizadas

- SQL Server
- SQL
- Git
- GitHub

---

# 👩‍💻 Autora

**Giuliana Belén Canosa**

Proyecto desarrollado como parte del curso **Data Analytics** de **Coderhouse**.
