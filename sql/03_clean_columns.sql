-- Eliminar columnas que no se utilizan
ALTER TABLE t_master
DROP COLUMN IF EXISTS MyUnknownColumn;

ALTER TABLE t_master
DROP COLUMN IF EXISTS PUNTO_MUESTREO;
