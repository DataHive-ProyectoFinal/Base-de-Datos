-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2025 a las 04:55:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

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
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE `administrador` (
  `ci_usuario` varchar(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `gmail` varchar(100) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas_incumplidas`
--

DROP TABLE IF EXISTS `horas_incumplidas`;
CREATE TABLE `horas_incumplidas` (
  `id` int(11) NOT NULL,
  `id_jornada` int(11) DEFAULT NULL,
  `motivo` text DEFAULT NULL,
  `pago_compensatorio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `id_jornada`
--

DROP TABLE IF EXISTS `id_jornada`;
CREATE TABLE `id_jornada` (
  `id` int(11) NOT NULL,
  `ci_usuario` varchar(20) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `horas_semanales` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrante_familia`
--

DROP TABLE IF EXISTS `integrante_familia`;
CREATE TABLE `integrante_familia` (
  `id` int(11) NOT NULL,
  `id_vivienda` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

DROP TABLE IF EXISTS `pagos`;
CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL,
  `ci_usuario` varchar(20) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `tipo_pago` varchar(50) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

DROP TABLE IF EXISTS `reportes`;
CREATE TABLE `reportes` (
  `id` int(11) NOT NULL,
  `contenido` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

DROP TABLE IF EXISTS `socio`;
CREATE TABLE `socio` (
  `ci_usuario` varchar(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `gmail` varchar(100) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_ingreso`
--

DROP TABLE IF EXISTS `solicitudes_ingreso`;
CREATE TABLE `solicitudes_ingreso` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(100) DEFAULT NULL,
  `ci` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `gmail` varchar(100) DEFAULT NULL,
  `telefono_celular` varchar(20) DEFAULT NULL,
  `telefono_fijo` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `cantidad_familia` int(11) DEFAULT NULL,
  `discapacidad_cargo` enum('Sí','No') DEFAULT NULL,
  `ocupacion` varchar(50) DEFAULT NULL,
  `ingreso` varchar(50) DEFAULT NULL,
  `motivo_interes` text DEFAULT NULL,
  `autorizacion_datos` tinyint(1) DEFAULT NULL,
  `estado` enum('pendiente','aceptado','rechazado') DEFAULT 'pendiente',
  `fecha_solicitud` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes_ingreso`
--

INSERT INTO `solicitudes_ingreso` (`id`, `nombre_completo`, `ci`, `fecha_nacimiento`, `genero`, `gmail`, `telefono_celular`, `telefono_fijo`, `direccion`, `cantidad_familia`, `discapacidad_cargo`, `ocupacion`, `ingreso`, `motivo_interes`, `autorizacion_datos`, `estado`, `fecha_solicitud`) VALUES
(1, 'Valentina Gahn', '68768766', '2000-08-09', 'Femenino', 'valentina@gmail.com', '098765432', '', 'calle', 2, 'No', 'Trabajador formal', '$50.001 - $80.000', 'dhkjzshdkjshkdasjh', 1, 'aceptado', '2025-07-28 03:08:25'),
(2, 'Valentina Gahn', '68768766', '2000-08-09', 'Femenino', 'valentina@gmail.com', '098765432', '', 'calle', 2, 'No', 'Trabajador formal', '$50.001 - $80.000', 'dhkjzshdkjshkdasjh', 1, 'rechazado', '2025-07-28 03:09:12'),
(3, 'Maria Lopez', '67686786', '1978-02-11', 'Femenino', 'maria@gmail.com', '098765544', '', 'calle 11', 5, 'No', 'Trabajador formal', 'Más de $80.000', 'nkfjsjfjksdfkjdsnkfd', 1, 'rechazado', '2025-07-29 00:34:20'),
(4, 'Valentina Gahn', '55656666', '1988-05-04', 'Femenino', 'valentina@gmail.com', '098765478', '', 'nndkjdj', 3, 'No', 'Trabajador formal', '$50.001 - $80.000', 'cbjhdshsdhbfkjdh', 1, 'aceptado', '2025-07-29 00:38:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

DROP TABLE IF EXISTS `tipo_pago`;
CREATE TABLE `tipo_pago` (
  `id` int(11) NOT NULL,
  `id_pago` int(11) DEFAULT NULL,
  `estado_pago` enum('atrasado','actualizado') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `ci` varchar(20) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ci`, `contrasena`) VALUES
('55656666', '$2y$10$CheP8slxWquAAg48tWjnkOa3yrbirfUxYJV.ZI3eNIuiGaHPt3eSu'),
('68768766', '$2y$10$5ZUJHtKAK5uJtvMK5299nunkEDfIL5kTqIHglWs.v7.hvvs.8Q5KW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vivienda`
--

DROP TABLE IF EXISTS `vivienda`;
CREATE TABLE `vivienda` (
  `id` int(11) NOT NULL,
  `habitaciones` int(11) DEFAULT NULL,
  `proceso_construccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`ci_usuario`);

--
-- Indices de la tabla `horas_incumplidas`
--
ALTER TABLE `horas_incumplidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jornada` (`id_jornada`);

--
-- Indices de la tabla `id_jornada`
--
ALTER TABLE `id_jornada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_usuario` (`ci_usuario`);

--
-- Indices de la tabla `integrante_familia`
--
ALTER TABLE `integrante_familia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vivienda` (`id_vivienda`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `ci_usuario` (`ci_usuario`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`ci_usuario`);

--
-- Indices de la tabla `solicitudes_ingreso`
--
ALTER TABLE `solicitudes_ingreso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pago` (`id_pago`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `vivienda`
--
ALTER TABLE `vivienda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `horas_incumplidas`
--
ALTER TABLE `horas_incumplidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `id_jornada`
--
ALTER TABLE `id_jornada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `integrante_familia`
--
ALTER TABLE `integrante_familia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_ingreso`
--
ALTER TABLE `solicitudes_ingreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vivienda`
--
ALTER TABLE `vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`ci_usuario`) REFERENCES `usuarios` (`ci`);

--
-- Filtros para la tabla `horas_incumplidas`
--
ALTER TABLE `horas_incumplidas`
  ADD CONSTRAINT `horas_incumplidas_ibfk_1` FOREIGN KEY (`id_jornada`) REFERENCES `id_jornada` (`id`);

--
-- Filtros para la tabla `id_jornada`
--
ALTER TABLE `id_jornada`
  ADD CONSTRAINT `id_jornada_ibfk_1` FOREIGN KEY (`ci_usuario`) REFERENCES `usuarios` (`ci`);

--
-- Filtros para la tabla `integrante_familia`
--
ALTER TABLE `integrante_familia`
  ADD CONSTRAINT `integrante_familia_ibfk_1` FOREIGN KEY (`id_vivienda`) REFERENCES `vivienda` (`id`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`ci_usuario`) REFERENCES `usuarios` (`ci`);

--
-- Filtros para la tabla `socio`
--
ALTER TABLE `socio`
  ADD CONSTRAINT `socio_ibfk_1` FOREIGN KEY (`ci_usuario`) REFERENCES `usuarios` (`ci`);

--
-- Filtros para la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD CONSTRAINT `tipo_pago_ibfk_1` FOREIGN KEY (`id_pago`) REFERENCES `pagos` (`id_pago`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
