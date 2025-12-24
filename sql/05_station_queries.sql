-- Consultar estaciones y contaminantes únicos
SELECT DISTINCT ESTACION, MAGNITUD FROM t_master;

-- Comparar valores diarios entre dos estaciones en 2020
SELECT
    FECHA,
    MAX(CASE WHEN ESTACION = "Ramon y Cajal" THEN valor_dia END) AS valor_ramon_y_cajal,
    MAX(CASE WHEN ESTACION = "Escuelas Aguirre" THEN valor_dia END) AS valor_escuelas_aguirre,
    (MAX(CASE WHEN ESTACION = "Ramon y Cajal" THEN valor_dia END) -
     MAX(CASE WHEN ESTACION = "Escuelas Aguirre" THEN valor_dia END)) AS diferencia_valores
FROM t_master
WHERE ESTACION IN ("Ramon y Cajal", "Escuelas Aguirre")
  AND MAGNITUD = 1
  AND FECHA BETWEEN '2020-01-01' AND '2020-12-01'
GROUP BY FECHA
ORDER BY FECHA;
