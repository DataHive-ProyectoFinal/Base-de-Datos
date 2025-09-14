-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2025 a las 17:28:07
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
-- Base de datos: `bd_segunda_entrega`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `id_jornada`
--

CREATE TABLE `id_jornada` (
  `id` int(11) NOT NULL,
  `ci_usuario` varchar(20) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `horas_semanales` int(11) DEFAULT NULL,
  `dia` varchar(20) NOT NULL,
  `mes` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `verificado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `id_jornada`
--

INSERT INTO `id_jornada` (`id`, `ci_usuario`, `descripcion`, `horas_semanales`, `dia`, `mes`, `fecha`, `verificado`) VALUES
(1, '58492750', 'AHDILOIDDBCNODLJKABJ', 8, '18', '3', '2025-03-18', 1),
(2, NULL, 'iojolkjk', 5, '10', '5', '2024-05-10', 0),
(3, NULL, '', 9, '21', '3', '2024-03-21', 0),
(4, NULL, '', 5, '2', '9', '2024-09-02', 0),
(5, NULL, '', 24, '6', '3', '2024-03-06', 0),
(6, '55656666', NULL, NULL, '', '', '0000-00-00', 0),
(7, NULL, 'rfrfe', 3, '6', '8', '2025-08-06', 0),
(8, '58492750', 'ujgctnd', 9, '2', '10', '2024-10-02', 1),
(9, '58492750', 'ujgctnd', 9, '15', '10', '2024-10-15', 1),
(10, '58492750', 'ujgctnd', 9, '21', '10', '2024-10-21', 1),
(11, '58492750', 'ujgctnd', 9, '23', '10', '2024-10-23', 1),
(12, '36487583', '', 5, '2', '8', '2024-08-02', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `id_jornada`
--
ALTER TABLE `id_jornada`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_dias` (`fecha`),
  ADD KEY `ci_usuario` (`ci_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `id_jornada`
--
ALTER TABLE `id_jornada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `id_jornada`
--
ALTER TABLE `id_jornada`
  ADD CONSTRAINT `id_jornada_ibfk_1` FOREIGN KEY (`ci_usuario`) REFERENCES `usuarios` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
