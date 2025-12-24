# 📊 Análisis de Contaminación del Aire en Madrid (2020–2023)

## 🧠 Descripción del proyecto

Este proyecto consiste en un análisis de datos de **contaminación atmosférica en la ciudad de Madrid** utilizando **SQL**.  
Se combinan datos de varios años (2020–2023) para estudiar la evolución de distintos contaminantes, comparar estaciones de medición y realizar análisis estadísticos descriptivos y avanzados.

El objetivo principal es **poner en práctica consultas SQL avanzadas**, incluyendo funciones de ventana, agregaciones, rankings y análisis temporal.

---

## 📁 Estructura del repositorio

```text
analizador-contaminacion/
├── data/
│   ├── emisiones2020.csv
│   ├── emisiones2021.csv
│   ├── emisiones2022.csv
│   └── emisiones2023.csv
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_merge_datasets.sql
│   ├── 03_clean_columns.sql
│   ├── 04_add_columns.sql
│   ├── 05_station_queries.sql
│   ├── 06_summary_queries.sql
│   ├── 07_monthly_aggregates.sql
│   └── 08_advanced_analysis.sql
└── README.md
```

- **data/:** contiene los datasets originales de emisiones.
- **sql/:** contiene los scripts SQL organizados en archivos independientes por función.
- **README.md:** documentación del proyecto y guía de uso.

---

## ⚙️ Requisitos

- MySQL o MariaDB (versión 8.0 o superior recomendada)
- Acceso a terminal o cliente SQL (por ejemplo, MySQL Workbench, VS Code con extensión SQL)
- Conocimientos básicos de SQL

---

## 🚀 Instrucciones para ejecutar el proyecto

1. Preparar la base de datos

Ejecutar el script 01_create_database.sql para crear la base de datos emisiones:

```sql
source sql/01_create_database.sql;
```

2. Cargar los datasets

Importar los archivos CSV (`emisiones2020.csv`, `emisiones2021.csv`, etc.) a tablas dentro de la base de datos `emisiones`. Puedes usar MySQL Workbench, VS Code o el comando `LOAD DATA INFILE`.

3. Mergear los datasets

Ejecutar `02_merge_datasets.sql` para combinar todas las tablas anuales en `t_master`:

```sql
source sql/02_merge_datasets.sql;
```

4. Limpiar columnas innecesarias

Ejecutar 03_clean_columns.sql:

```sql
source sql/03_clean_columns.sql;
```

5. Agregar columnas calculadas

Ejecutar 04_add_columns.sql para calcular valor_dia y FECHA:

```sql
source sql/04_add_columns.sql;
```

6. Consultas de estaciones y comparación de valores

Ejecutar 05_station_queries.sql para obtener información de estaciones y comparar valores diarios:

```sql
source sql/05_station_queries.sql;
```

