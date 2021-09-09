-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2020 a las 15:40:55
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lideres`
--

CREATE TABLE `lideres` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `cargo` varchar(200) NOT NULL,
  `firma` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_19_180328_create_test_table', 2),
(5, '2020_06_01_052332_create_rols_table', 2),
(6, '2020_06_01_053626_create_rol_user_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `cedula` varchar(200) NOT NULL,
  `eps` varchar(200) NOT NULL,
  `afp` varchar(200) NOT NULL,
  `arl` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `empleado` varchar(11) NOT NULL,
  `nombre_contacto` varchar(200) NOT NULL,
  `telefono_contacto` varchar(200) NOT NULL,
  `parentesco` varchar(30) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `cedula`, `eps`, `afp`, `arl`, `telefono`, `empleado`, `nombre_contacto`, `telefono_contacto`, `parentesco`, `direccion`, `created_at`, `updated_at`) VALUES
(1, 'Andrea Santa', '24331278', 'sura', 'proteccion', 'positiva', '310554524', 'SI', 'Beatriz Lopez Arango', '3147016402', 'madre', 'calle 73 3 17 - 30 bloque 3b apto 801', '2020-06-01 13:47:21', '2020-06-01 13:47:21'),
(2, 'Daniel Eduardo Valderrama Wilches', '1053786485', 'Salud Total', 'Protección', 'Sura', '3127094136', 'Si', 'Luz Marina Wilches', '3127835645', 'Madre', 'carrera 11 D # 48 a 44', '2020-06-01 21:18:14', '2020-06-01 21:18:14'),
(3, 'Vanessa Gallego Agudelo', '1010013030', 'Salud Total', 'Protección', 'Colmena', '3225322547', 'Si', 'Juan Carlos Gallego', '8714460', 'Padre', 'Vereda Cuchilla del Salado', '2020-06-01 07:50:08', '2020-06-01 07:50:08'),
(4, 'José Julián Carvajal Vargas', '94392856', 'Nueva EPS', 'Colpensiones', 'Sura', '3015744002', 'Si', 'Carolina Giraldo', '3046751741', 'Esposa', 'La Francia', '2020-06-01 08:02:10', '2020-06-01 08:02:10'),
(5, 'Luz Ensueño Moncada Giraldo', '25080704', 'Sura', 'Porvenir', 'Positiva', '3023767025', 'Si', 'Victoria Moncada', '3122877456', 'Hermana', 'La Florida', '2020-06-01 08:07:16', '2020-06-01 08:07:16'),
(6, 'Manuela Rodriguez Castro', '1094954653', 'Sanitas', 'protección', 'Colmena', '3222121273', 'Si', 'Yannet Castro Grajales', '3134608393', 'Madre', 'Villamaría Barrio La Capilla ', '2020-06-01 08:16:37', '2020-06-01 08:16:37'),
(7, 'Clara Alejandra Giraldo', '1053872495', 'Compensar- MedPlus', 'Ninguna', 'Ninguna', '3227923868', 'Si', 'Luz Ensueño Moncada', '3014709052', 'Madre', 'Palermo', '2020-06-01 08:25:16', '2020-06-01 08:25:16'),
(8, 'Mateo Giraldo Arango ', '1053833909', 'Salud Total', 'Protección', 'Positiva', '3122089367', 'Si', 'Daniela Arias', '3122877456', 'Esposa', 'Palonegro', '2020-06-01 08:30:27', '2020-06-01 08:30:27'),
(9, 'Monica Castro', '24606960', 'Nueva EPS', 'Ninguno', 'Ninguno', '3229425450', 'Si', 'Alexander Blandon', '3229425450', 'Esposo', 'Villamaría', '2020-06-01 08:33:30', '2020-06-01 08:33:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(200) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `puntaje`, `created_at`, `updated_at`) VALUES
(1, '¿PRESENTA TOS RECURRENTE O ESPONTANEA HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)', 1, '2020-06-01 14:34:03', '2020-06-01 14:34:03'),
(2, '¿PRESENTA ESCALOFRIO RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS?', 1, '2020-06-01 14:40:10', '2020-06-01 14:40:10'),
(3, '¿PRESENTA DOLOR DE GARGANTA RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)', 1, '2020-06-01 20:52:43', '2020-06-01 20:52:43'),
(4, '¿PRESENTA DOLOR CORPORAL O MALESTAR GENERAL RECURRENTE O ESPONTÁNEO HOY O EN DÍAS PREVIOS? (2 o 3 DÍAS ANTES)', 1, '2020-06-01 21:09:17', '2020-06-01 21:09:17'),
(5, '¿PRESENTA DOLOR DE CABEZA RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)', 1, '2020-06-01 21:10:21', '2020-06-01 21:10:21'),
(6, '¿PRESENTA FIEBRE MAYOR A 37.8 °C, RECURRENTE O ESPONTANEA HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)', 1, '2020-06-01 21:10:51', '2020-06-01 21:10:51'),
(7, '¿PRESENTA PERDIDA DEL OLFATO, RECURRENTE O ESPONTANEA HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)', 1, '2020-06-01 21:10:51', '2020-06-01 21:10:51'),
(8, '¿PRESENTA DIFICULTAD PARA RESPIRAR COMO SI NO ENTRARA AIRE A SUS PULMONES DE MANERA RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)', 1, '2020-06-01 21:12:40', '2020-06-01 21:12:40'),
(9, '¿PRESENTO FATIGA O REAL DETERIORO DE MIS MOVIMIENTOS Y MIS GANAS DE HACER ALGO, ES RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)', 2, '2020-06-01 21:13:00', '2020-06-01 21:13:00'),
(10, '¿HAS VIAJADO EN LOS UTIMOS 14 DIAS FUERA DE LA CIUDAD?', 2, '2020-06-01 21:13:54', '2020-06-01 21:13:54'),
(11, '¿HAS VIAJADO O ESTADO EN ZONAS AFECTADAS POR COVID-19?', 3, '2020-06-01 21:13:54', '2020-06-01 21:13:54'),
(12, '¿HAS CUIDADO O ESTADO EN CONTACTO CON PACIENTE POSITIVO COVID-19?', 3, '2020-06-01 21:15:08', '2020-06-01 21:15:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `total` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_persona` int(11) NOT NULL,
  `observaciones` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_lider` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'daniel', 'dexter.19@hotmail.es', NULL, '$2y$10$LByHGI9iC32CGAkz2OvoBOM.5zaFN9U.yRQNx3FVF4YvLRTf5g0Iu', 'TinDll2dIqck3fNqEhjhxwECD2nFIewSrBq7qr4f1zhulv6pZu1yJbeeCWsW', '2020-05-18 22:20:34', '2020-05-18 22:20:34'),
(2, 'SoftGreen', 'asistentetecnologia@sotfgreen.com.co', NULL, '$2y$10$SUuf2tUdr5hxEVS2e0WCeeF.k0WVrMl0UAnXLtKx.ZJrCZnMfxX4.', NULL, '2020-05-30 22:47:59', '2020-05-30 22:47:59'),
(3, 'Mateo Giraldo Arango', 'mateogiraldo420@gmail.com', NULL, '$2y$10$3udtC2Of/gv1bv3b2i1YieNiXIX7Ybfvfz2PyurO90lK3BXw.OzXy', NULL, '2020-06-01 22:43:44', '2020-06-01 22:43:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lideres`
--
ALTER TABLE `lideres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lideres`
--
ALTER TABLE `lideres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
