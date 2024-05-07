-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2024 a las 00:08:01
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
-- Base de datos: `mt_Motor_Manaager`
--
CREATE DATABASE IF NOT EXISTS `mt_Motor_Manaager`;
USE `mt_Motor_Manaager`;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `carrito`
--
CREATE TABLE `carrito` (
  `id_carrito` int(11) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `carrito`
--
INSERT INTO `carrito` (`id_carrito`, `nombre_producto`, `id_usuario`, `fecha`) VALUES
(1, 'arrastre', 1, '2024-05-04 00:36:49'),
(2, 'arrastre', 1, '2024-05-04 00:38:18'),
(3, 'arrastre', 1, '2024-05-04 00:42:52'),
(4, 'arrastre', 1, '2024-05-04 00:45:06'),
(5, 'arrastre', 1, '2024-05-04 00:45:06'),
(6, 'arrastre', 1, '2024-05-08 04:47:12'),
(7, 'arrastre', 1, '2024-05-08 04:47:12'),
(8, 'arrastre', 1, '2024-05-08 04:47:22'),
(9, 'arrastre', 1, '2024-05-08 04:47:22'),
(10, 'arrastre', 6, '2024-05-08 04:51:10'),
(11, 'arrastre', 6, '2024-05-08 04:51:10'),
(12, 'Acelerador', 6, '2024-05-08 04:58:42'),
(13, 'Acelerador', 6, '2024-05-08 04:58:42');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `productos`
--
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `productos`
--
INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `imagen_url`) VALUES
(4, 'caja', 'caja', 300000.00, 'fotoproductos/662a814221c06_caja.jpg'),
(5, 'arrastre', 'arrastre', 12000.00, 'fotoproductos/662a815cd3a76_arrastre.jpg'),
(6, 'Acelerador', 'Acelerador que tiene de caracteristica soltarse', 50000.00, 'fotoproductos/662a84f011089_Acelerador.jpg'),
(7, 'Sillin', 'Sillin para moto NKD', 150000.00, 'fotoproductos/662a86a6d9dd4_Sillin.jpg'),
(8, 'lukas', 'lukas', 190000.00, 'fotoproductos/663aa4f8a5eca_lukas.jpg');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `usuarios`
--
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `numero_documento` varchar(20) NOT NULL,
  `tipo_documento` varchar(50) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `usuarios`
--
INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `contrasena`, `numero_documento`, `tipo_documento`, `direccion`, `codigo_postal`, `pais`, `foto_perfil`) VALUES
(1, 'Daniel', 'Morales', 'dani@gmail.com', '3f547476e0ce8e681ded188f0322a4d5e0d56ec4', '1027400008', 'cedula', 'Carrera 9este #33-75', '2131231', 'Colombia', 'fotosperfiles/111111111.JPG'),
(2, 'Emanuel', 'Diaz', 'em@gmail.com', '3f547476e0ce8e681ded188f0322a4d5e0d56ec4', '1231231', 'tarjetaidentidad', NULL, NULL, NULL, 'fotosperfiles/acelerador.jpg'),
(3, 'dani', 'dani', 'danii@gmail.com', '3f547476e0ce8e681ded188f0322a4d5e0d56ec4', '2134', 'tarjetaidentidad', NULL, NULL, NULL, 'fotosperfiles/3.png'),
(4, 'Leydy', 'Calderon', 'ley@gmail.com', '3f547476e0ce8e681ded188f0322a4d5e0d56ec4', '123', 'tarjetaidentidad', NULL, NULL, NULL, ''),
(5, 'sandra', 'teatino', 'san@gmail.com', '3f547476e0ce8e681ded188f0322a4d5e0d56ec4', '123', 'tarjetaidentidad', 'carrera 9este #33-75', '123221', 'colombia', 'fotosperfiles/imagen 3.png'),
(6, 'fercho', 'mor', 'fercho@gmail.com', '3f547476e0ce8e681ded188f0322a4d5e0d56ec4', '1231231123', 'cedula', NULL, NULL, NULL, '');

-- --------------------------------------------------------
--
-- Índices para tablas volcadas
--
--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id_carrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
