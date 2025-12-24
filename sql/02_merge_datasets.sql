-- Merge de las tablas anuales en una tabla principal t_master
CREATE TABLE t_master AS
SELECT * FROM emisiones2020
UNION ALL
SELECT * FROM emisiones2021
UNION ALL
SELECT * FROM emisiones2022
UNION ALL
SELECT * FROM emisiones2023;
