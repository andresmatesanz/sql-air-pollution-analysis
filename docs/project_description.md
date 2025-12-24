# Descripción del Proyecto de Análisis de Calidad del Aire en Madrid

Este proyecto analiza datos de calidad del aire en distintas estaciones de Madrid durante los años 2020-2023. Se utilizan varios conjuntos de datos en formato CSV para estudiar las diferencias entre estaciones, la evolución temporal de contaminantes y estadísticas avanzadas por magnitud.

---

## 1. Comparativa de estaciones durante 2020

Archivo: **`comparativa_estaciones_2020.csv`**

### Estructura del CSV

| Columna               | Descripción |
|-----------------------|-------------|
| `FECHA`               | Fecha del registro (formato AAAA-MM-DD). |
| `valor_ramon_y_cajal` | Valor medido en la estación "Ramon y Cajal". |
| `valor_escuelas_aguirre` | Valor medido en la estación "Escuelas Aguirre". |
| `diferencia_valores`  | Diferencia entre las dos estaciones (Ramon y Cajal - Escuelas Aguirre). |

### Propósito

El objetivo de este archivo es comparar los valores medidos entre dos estaciones concretas durante 2020, permitiendo identificar tendencias, anomalías o diferencias significativas en los registros.

### Observaciones relevantes

- Se observan diferencias negativas en la mayor parte del año, lo que indica que **Ramon y Cajal tiene generalmente valores menores que Escuelas Aguirre**.
- En agosto, la diferencia es positiva, lo que podría indicar un cambio estacional o condiciones meteorológicas específicas.

---

## 2. Estadísticas avanzadas por magnitud (2022)

Archivo: **`estadisticas_avanzadas_2022.csv`**

### Estructura del CSV

| Columna            | Descripción |
|--------------------|-------------|
| `MAGNITUD`         | Código de la magnitud medida (por ejemplo, 7, 8, 9, 10, 12, 14). |
| `promedio_valor_dia` | Valor promedio diario para la magnitud durante 2022. |
| `mediana`          | Mediana de los valores diarios. |
| `p75`              | Percentil 75 de los valores diarios. |

### Propósito

Proporciona un resumen estadístico avanzado para cada magnitud medida, facilitando análisis de dispersión, tendencias y comparación de niveles de contaminación entre magnitudes.

### Observaciones relevantes

- La magnitud `12` presenta los valores más altos (promedio: 66.15), mientras que `9` tiene los más bajos (promedio: 10.38).
- La diferencia entre media, mediana y percentil 75 permite evaluar la **asimetría de los datos** y la presencia de valores extremos.

---

## 3. Media mensual por estación

Archivo: **`media_mensual_por_estacion.csv`**

### Estructura del CSV

| Columna              | Descripción |
|----------------------|-------------|
| `ANO`                | Año del registro. |
| `ESTACION`           | Nombre de la estación de medición. |
| `mes`                | Mes del año (en inglés, p.ej., January). |
| `trimestre`          | Número de trimestre (1-4). |
| `promedio_mensual`   | Valor promedio mensual medido en la estación. |

### Propósito

Este CSV permite analizar la evolución mensual de contaminantes en distintas estaciones durante varios años. Sirve para:

- Comparar estaciones entre sí.
- Observar tendencias anuales y estacionales.
- Analizar posibles incrementos o disminuciones en los niveles de contaminación.

### Observaciones relevantes

- **Estaciones con valores altos:** El Carmen y Ensanche de Vallecas presentan valores medios más elevados en muchos meses.
- **Estaciones con valores bajos:** Moratalaz y Plaza Elíptica tienen valores consistentemente más bajos.
- **Variación estacional:** Se puede observar un descenso en verano y aumento en otoño, reflejando tendencias estacionales típicas de contaminación urbana.

---

## 4. Aplicaciones del proyecto

Este proyecto de análisis de calidad del aire permite:

1. **Detección de anomalías** en estaciones específicas.
2. **Comparación temporal** de contaminación por mes, trimestre y año.
3. **Análisis de tendencias** para estudios ambientales y planificación urbana.
4. **Generación de informes estadísticos** para la toma de decisiones en políticas ambientales.

---

## 5. Consideraciones técnicas

- Todos los archivos están en formato CSV y pueden ser importados directamente en Python, R, Excel o cualquier herramienta de análisis de datos.
- La limpieza de datos incluye:
  - Conversión de fechas a formato estándar.
  - Comprobación de consistencia en nombres de estaciones.
  - Cálculo de diferencias y medias donde corresponde.
- Para gráficos y visualizaciones se recomienda usar librerías como `matplotlib`, `seaborn` o `plotly`.

---

## 6. Recomendaciones para futuros análisis

1. Analizar la correlación entre estaciones y magnitudes.
2. Incorporar datos meteorológicos (temperatura, viento, lluvia) para estudiar su efecto.
3. Estudiar tendencias interanuales más allá de 2023.
4. Aplicar modelos de predicción de contaminación basados en series temporales.

---

### Autor
Andrés Matesanz

Proyecto de análisis de calidad del aire en Madrid, basado en datos públicos de estaciones meteorológicas y ambientales (2020-2023).

