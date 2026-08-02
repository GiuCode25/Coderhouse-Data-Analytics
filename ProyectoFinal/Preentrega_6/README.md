# 📌 Preentrega 6

## Pipeline ETL desde SQL con Power Query y M

**Curso:** Data Analytics – Coderhouse  
**Proyecto:** Ventas_Tech_DB  
**Alumna:** Giuliana Belén Canosa

---

# 📖 Descripción

Esta preentrega tiene como objetivo construir un proceso **ETL (Extract, Transform, Load)** utilizando **Power BI Desktop** y **Power Query**.

Se realizó la conexión a la fuente de datos, el análisis de calidad de la información, la limpieza y transformación de los datos, la documentación del proceso mediante lenguaje **M** y la preparación del modelo para su utilización en futuras etapas del proyecto.

---

# 📂 Archivo entregado

- `Pipeline_ETL_Canosa_Giuliana.pbix`

---

# 🎯 Objetivos alcanzados

Durante el desarrollo de la práctica se realizaron las siguientes tareas:

- Conexión de Power BI al archivo de origen.
- Carga de las cuatro tablas del dataset.
- Perfilado de calidad de los datos.
- Eliminación de registros duplicados.
- Tratamiento de valores nulos.
- Corrección de tipos de datos.
- Renombrado de consultas utilizando nomenclatura profesional.
- Enriquecimiento de la tabla de hechos mediante Merge.
- Documentación de transformaciones utilizando comentarios en lenguaje M.

---

# 🔄 Transformaciones realizadas

## Dim_Clientes

- Eliminación de registros duplicados utilizando **id_cliente**.
- Reemplazo de valores nulos en los campos correspondientes para conservar los registros.
- Corrección de tipos de datos.
- Renombrado de la consulta.

---

## Dim_Productos

- Eliminación de productos duplicados mediante **id_producto**.
- Tratamiento de valores nulos.
- Reemplazo de categorías faltantes por **"Sin Categoría"**.
- Corrección del tipo de dato de las columnas numéricas.
- Renombrado de la consulta.

---

## Dim_Categorias

- Verificación de tipos de datos.
- Eliminación de filas vacías.
- Renombrado de la consulta.

---

## Fact_Ventas

- Verificación de tipos de datos.
- Creación de la tabla de hechos.
- Merge con **Dim_Productos** utilizando **id_producto**.
- Incorporación de las columnas:
  - nombre_producto
  - categoria

---

# 📝 Documentación en lenguaje M

Se incorporaron comentarios técnicos dentro del **Editor Avanzado** para documentar las principales transformaciones realizadas, justificando las decisiones de limpieza y enriquecimiento de los datos.

---

# 📊 Resultado del modelo

El modelo final quedó compuesto por las siguientes consultas:

- Dim_Clientes
- Dim_Productos
- Dim_Categorias
- Fact_Ventas

Todas las consultas fueron cargadas correctamente en Power BI sin errores y listas para continuar con el modelado y la construcción de reportes.

---

# 🛠️ Tecnologías utilizadas

- Microsoft Power BI Desktop
- Power Query
- Lenguaje M
- Microsoft Excel
- Git
- GitHub

---

# 👩‍💻 Autora

**Giuliana Belén Canosa**

Proyecto desarrollado como parte del curso **Data Analytics** de **Coderhouse**.

---

# 📌 Observaciones

Esta preentrega constituye el proceso ETL del proyecto, dejando los datos preparados para las siguientes etapas del curso, donde se desarrollará el modelo analítico, las relaciones entre tablas, la creación de una tabla calendario, medidas DAX y dashboards en Power BI.
