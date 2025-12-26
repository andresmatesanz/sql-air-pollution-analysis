# 🌫️ Análisis de Calidad del Aire en Madrid

Este proyecto analiza la calidad del aire en distintas estaciones de Madrid durante varios años, utilizando datos de distintas magnitudes (como partículas, NO2, etc.) y comparando resultados entre estaciones y años. Los resultados se presentan en CSV y están acompañados de documentación detallada.

## 🗃️ Estructura del proyecto


```text
analizador-contaminacion/
├── data/
│   ├── emisiones2020.csv
│   ├── emisiones2021.csv
│   ├── emisiones2022.csv
│   └── emisiones2023.csv
├── docs/
│   ├── project_description.md
├── outputs/
│   ├── comparativa_estaciones_2020.csv
│   ├── media_mensual_por_estacion.csv
│   ├── ranking_emisiones_2020_2021.csv
│   └── estadisticas_avanzadas_2022.csv
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


### 🗂️ Detalle de las carpetas y archivos

- **data/**  
  Contiene los archivos CSV originales generados a partir de las queries SQL. Son los datos en crudo que se utilizaron para los análisis.

- **sql/**  
  Contiene las queries SQL utilizadas para extraer, filtrar y procesar los datos de las estaciones. Cada script corresponde a una operación específica, como cálculo de promedios mensuales, comparativas entre estaciones o estadísticas avanzadas.

- **outputs/**  
  Contiene los resultados finales en formato CSV, incluyendo:
  - `comparativa_estaciones_2020.csv`: diferencia de valores entre dos estaciones (Ramón y Cajal vs Escuelas Aguirre) para 2020.
  - `estadisticas_avanzadas_2022.csv`: estadísticas detalladas por magnitud (promedio diario, mediana, percentil 75) para 2022.
  - `media_mensual_por_estacion.csv`: promedio mensual de cada estación desde 2020 hasta 2023.

- **docs/project_description.md**  
  Documento que explica el proyecto, describe los datos, los resultados obtenidos y los análisis realizados. Contiene interpretaciones directas de los CSV de salida.

## ▶️ Cómo usar el proyecto

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/andresmatesanz/sql-air-pollution-analysis.git
   cd sql-air-pollution-analysis

2. Explorar los CSV en `data/` y `outputs/` para revisar los datos y resultados.

3. Revisar los scripts SQL en `sql/` para entender cómo se generaron los datos y estadísticas.

4. Consultar `docs/project_description.md` para un análisis completo y explicaciones de los outputs.

## 🔁 Contribuciones

Este proyecto es un análisis finalizado y reproducible. Para nuevas contribuciones se recomienda mantener la estructura de carpetas y documentar cualquier script adicional en `docs/project_description.md`.

## 👤 Autor
**Autor:** Andrés Matesanz
[LinkedIn](https://www.linkedin.com/in/andresmatesanz/) | [GitHub](https://github.com/andresmatesanz)

Proyecto realizado como parte de un proceso formativo en análisis de datos y refactorizado posteriormente para su uso como proyecto de portfolio.
