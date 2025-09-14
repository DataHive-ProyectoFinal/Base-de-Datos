-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2025 a las 00:49:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cooperativa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_socios`
--

CREATE TABLE `perfil_socios` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `gmail` varchar(100) DEFAULT NULL,
  `telefono_celular` varchar(20) DEFAULT NULL,
  `telefono_fijo` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `cantidad_familia` int(11) DEFAULT NULL,
  `discapacidad_cargo` enum('Sí','No') DEFAULT NULL,
  `ocupacion` varchar(50) DEFAULT NULL,
  `ingreso` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfil_socios`
--

INSERT INTO `perfil_socios` (`id`, `nombre_completo`, `fecha_nacimiento`, `genero`, `gmail`, `telefono_celular`, `telefono_fijo`, `direccion`, `cantidad_familia`, `discapacidad_cargo`, `ocupacion`, `ingreso`) VALUES
(0, 'vale', '2001-12-12', 'Masculino', 'vale@gmail.com', '099569568', '27098564', 'jdcjdnd', 3, 'No', 'Trabajador formal', 'Menos de $20.000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
