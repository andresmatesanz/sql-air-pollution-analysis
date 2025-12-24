-- Eliminar columnas que no se utilizan
ALTER TABLE t_master
DROP COLUMN MyUnknownColumn;

ALTER TABLE t_master
DROP COLUMN PUNTO_MUESTREO;
