-- Ranking anual de emisiones por estación y magnitud
WITH select_media_anual AS (
    SELECT
        ANO,
        MAGNITUD,
        ESTACION,
        ROUND(AVG(valor_dia), 2) AS media_anual
    FROM t_master
    WHERE MAGNITUD = 1 AND ANO IN (2020, 2021)
    GROUP BY ANO, MAGNITUD, ESTACION
),
select_ranking_emisiones AS (
    SELECT
        ESTACION,
        MAGNITUD,
        ANO,
        AVG(valor_dia) AS media_anual,
        RANK() OVER (PARTITION BY ANO, MAGNITUD ORDER BY AVG(valor_dia) DESC) AS ranking_emisiones
    FROM t_master
    WHERE MAGNITUD = 1 AND ANO IN (2020, 2021)
    GROUP BY ESTACION, MAGNITUD, ANO
),
select_mes_max AS (
    SELECT
        ESTACION,
        ANO,
        MES AS mes_max,
        ROUND(AVG(valor_dia), 2) AS max_media_mensual,
        ROW_NUMBER() OVER (PARTITION BY ESTACION, ANO ORDER BY AVG(valor_dia) DESC) AS rn
    FROM t_master
    WHERE MAGNITUD = 1 AND ANO IN (2020, 2021)
    GROUP BY ESTACION, ANO, MES
)
SELECT
    r.ANO,
    r.MAGNITUD,
    r.ESTACION,
    ma.media_anual,
    r.ranking_emisiones,
    m.mes_max,
    m.max_media_mensual
FROM select_ranking_emisiones r
JOIN select_media_anual ma
  ON r.ANO = ma.ANO AND r.ESTACION = ma.ESTACION AND r.MAGNITUD = ma.MAGNITUD
JOIN select_mes_max m
  ON r.ANO = m.ANO AND r.ESTACION = m.ESTACION
WHERE m.rn = 1
ORDER BY r.ANO, r.MAGNITUD, r.ranking_emisiones;

-- Análisis estadístico avanzado (mediana, percentil 75, filtrado por año 2022)
WITH base AS (
    SELECT
        ANO,
        MAGNITUD,
        valor_dia,
        ROW_NUMBER() OVER(PARTITION BY MAGNITUD ORDER BY valor_dia) AS rn,
        COUNT(*) OVER(PARTITION BY MAGNITUD) AS total
    FROM t_master
    WHERE valor_dia IS NOT NULL AND ANO = 2022
),
mediana AS (
    SELECT
        MAGNITUD,
        AVG(valor_dia) AS mediana
    FROM base
    WHERE rn IN ((total + 1) / 2, (total + 2) / 2)
    GROUP BY MAGNITUD
),
p75 AS (
    SELECT
        MAGNITUD,
        MAX(CASE WHEN rn = CEIL(0.75 * total) THEN valor_dia END) AS p75
    FROM base
    GROUP BY MAGNITUD
),
promedios AS (
    SELECT
        ANO,
        MAGNITUD,
        AVG(valor_dia) AS promedio_valor_dia
    FROM base
    GROUP BY ANO, MAGNITUD
)
SELECT
    m.MAGNITUD,
    ROUND(pr.promedio_valor_dia, 2) AS promedio_valor_dia,
    m.mediana,
    p.p75
FROM mediana m
JOIN p75 p USING(MAGNITUD)
JOIN promedios pr USING(MAGNITUD)
WHERE pr.promedio_valor_dia > 10
ORDER BY pr.promedio_valor_dia DESC;
