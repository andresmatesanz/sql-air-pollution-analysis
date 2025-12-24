# 📊 Análisis de Contaminación del Aire en Madrid (2020–2023)

## 🧠 Descripción del proyecto

Este proyecto consiste en un análisis de datos de **contaminación atmosférica en la ciudad de Madrid** utilizando **SQL**.  
Se combinan datos de varios años (2020–2023) para estudiar la evolución de distintos contaminantes, comparar estaciones de medición y realizar análisis estadísticos descriptivos y avanzados.

El objetivo principal es **poner en práctica consultas SQL avanzadas**, incluyendo funciones de ventana, agregaciones, rankings y análisis temporal.

---

## 📁 Estructura del repositorio

📦 sql-air-pollution-analysis
├── 📄 README.md
├── 📄 air_pollution_analysis.sql
└── 📂 data
    ├── emisiones_2020.csv
    ├── emisiones_2021.csv
    ├── emisiones_2022.csv
    └── emisiones_2023.csv


(La carpeta data contiene los datasets originales utilizados para el análisis.)


---

## 🗃️ Fuente de datos

Los datos corresponden a mediciones de contaminación atmosférica en Madrid y contienen información sobre:

- Año y mes de la medición  
- Estación de medición  
- Tipo de contaminante (magnitud)  
- Valores diarios de concentración (D01–D31)  

Cada dataset representa un año distinto.

---

## 🛠️ Tecnologías utilizadas

- **SQL (MySQL 8+)**
- Funciones de ventana (`OVER`, `RANK`, `LAG`, `LEAD`, `ROW_NUMBER`)
- CTEs (`WITH`)
- Agregaciones y estadísticas descriptivas

---

## 🔍 Análisis realizados

Entre los análisis incluidos en el proyecto se encuentran:

- Unión de datasets de múltiples años en una tabla maestra
- Cálculo de valores medios diarios de contaminación
- Creación de columnas temporales (fecha)
- Comparación de niveles de contaminación entre estaciones
- Estadísticas descriptivas por contaminante y estación
- Medias mensuales y trimestrales
- Rankings de estaciones por nivel de contaminación
- Análisis acumulado anual y total
- Cálculo de mediana y percentiles
- Identificación de picos de contaminación

---

## 🧩 Aspectos técnicos destacados

- Uso intensivo de **funciones de ventana** para análisis temporal
- Construcción de queries complejas mediante **CTEs**
- Cálculo manual de **mediana y percentil 75** en SQL
- Análisis estadístico filtrado por año y umbrales críticos
- Enfoque en consultas legibles y escalables

---

## 🚀 Cómo ejecutar el proyecto

1. Crear una base de datos en MySQL:
   ```sql
   CREATE DATABASE emisiones;

2. Importar los datasets anuales en tablas independientes.

3. Ejecutar el archivo:

air_pollution_analysis.sql

Este script crea la tabla maestra y ejecuta todas las consultas del análisis.

---

## 📌 Conclusiones principales

El análisis permite identificar diferencias significativas entre estaciones, contaminantes con mayor impacto y tendencias temporales relevantes en los niveles de contaminación en Madrid entre 2020 y 2023.