-- Medias mensuales y trimestres
SELECT DISTINCT
    ANO,
    ESTACION,
    MONTHNAME(FECHA) AS mes,
    QUARTER(FECHA) AS trimestre,
    AVG(valor_dia) OVER(PARTITION BY MONTH(FECHA) ORDER BY ESTACION, ANO, QUARTER(FECHA)) AS promedio_mensual
FROM t_master;

-- Medias mensuales por estaciones con nombres largos (>10 caracteres)
SELECT
    LENGTH(ESTACION) AS num_caracteres,
    ESTACION,
    MAGNITUD,
    MONTH(FECHA) AS mes,
    AVG(valor_dia) OVER(PARTITION BY MONTH(FECHA) ORDER BY ESTACION, MAGNITUD, MONTH(FECHA)) AS promedio_mensual
FROM t_master
WHERE LENGTH(ESTACION) > 10;
