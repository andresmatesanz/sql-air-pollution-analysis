-- Configuración inicial de SQL para evitar errores
SET sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- Crear base de datos y seleccionarla
CREATE DATABASE IF NOT EXISTS emisiones;
USE emisiones;
