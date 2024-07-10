-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2024 a las 18:11:09
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
-- Base de datos: `api_laravel_11`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postres`
--

CREATE TABLE `postres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `postres`
--

INSERT INTO `postres` (`id`, `nombre`, `precio`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Gelatina de Fresa', '9.00', '35', '2024-03-29 02:00:46', '2024-03-29 07:09:31'),
(3, 'Torta de Naranja', '4.50', '25', '2024-03-29 07:05:13', '2024-03-29 07:05:13'),
(4, 'Pie de Manzana', '3.40', '25', '2024-07-10 16:10:32', '2024-07-10 16:10:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `postres`
--
ALTER TABLE `postres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `postres`
--
ALTER TABLE `postres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
