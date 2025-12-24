-- Resumen descriptivo por contaminante
SELECT
    MAGNITUD,
    MAX(valor_dia) AS valor_maximo,
    MIN(valor_dia) AS valor_minimo,
    ROUND(AVG(valor_dia), 2) AS valor_medio,
    ROUND(STD(valor_dia), 2) AS desviacion_estandar
FROM t_master
GROUP BY MAGNITUD;

-- Resumen descriptivo por estación
SELECT
    ESTACION,
    MAX(valor_dia) AS valor_maximo,
    MIN(valor_dia) AS valor_minimo,
    ROUND(AVG(valor_dia), 2) AS valor_medio,
    ROUND(STD(valor_dia), 2) AS desviacion_estandar
FROM t_master
GROUP BY ESTACION;

-- Promedio acumulado por estación y año
SELECT
    ESTACION,
    MAGNITUD,
    YEAR(FECHA) AS ano,
    SUM(valor_dia) OVER(PARTITION BY ESTACION) AS acumulado_total,
    SUM(valor_dia) OVER(PARTITION BY ano, ESTACION ORDER BY YEAR(FECHA) DESC) AS acumulado_anual
FROM t_master;
