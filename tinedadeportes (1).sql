-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2025 a las 00:47:31
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
-- Base de datos: `tinedadeportes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorios`
--

CREATE TABLE `accesorios` (
  `id_accesorios` int(20) NOT NULL,
  `producto` varchar(25) NOT NULL,
  `ref_producto` int(20) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accesorios`
--

INSERT INTO `accesorios` (`id_accesorios`, `producto`, `ref_producto`, `sexo`, `marca`) VALUES
(0, 'guantes', 1235401, 'masculino', 'adidas'),
(1, 'canilleras', 1, 'masculino', 'jaguar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balones`
--

CREATE TABLE `balones` (
  `id_balones` int(20) NOT NULL,
  `deporte` varchar(20) NOT NULL,
  `tamaño` int(15) NOT NULL,
  `material` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `balones`
--

INSERT INTO `balones` (`id_balones`, `deporte`, `tamaño`, `material`, `modelo`) VALUES
(0, 'voleibol', 5, 'cojin', 'V5M5000'),
(12, 'futbol', 8, 'parche', 'ucl2024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calzado`
--

CREATE TABLE `calzado` (
  `id_calz` int(20) NOT NULL,
  `talla` varchar(20) NOT NULL,
  `modelo` varchar(25) NOT NULL,
  `color` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `ref_calz` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calzado`
--

INSERT INTO `calzado` (`id_calz`, `talla`, `modelo`, `color`, `marca`, `ref_calz`) VALUES
(32, '39', 'retro1', 'negro', 'jordan', 112);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herencia`
--

CREATE TABLE `herencia` (
  `id_calz` int(20) NOT NULL,
  `id_muj` int(20) NOT NULL,
  `id_ofer` int(20) NOT NULL,
  `id_hom` int(20) NOT NULL,
  `id_accesorios` int(20) NOT NULL,
  `id_kids` int(20) NOT NULL,
  `id_balones` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hom`
--

CREATE TABLE `hom` (
  `id_hom` int(11) NOT NULL,
  `prenda` varchar(20) NOT NULL,
  `talla` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `ref_prenda` int(20) NOT NULL,
  `marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hom`
--

INSERT INTO `hom` (`id_hom`, `prenda`, `talla`, `color`, `ref_prenda`, `marca`) VALUES
(0, 'camisa', 'M', 'rojo', 1203, ''),
(12, 'sudaderas', 's', 'morado', 3214, 'nike');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kids`
--

CREATE TABLE `kids` (
  `id_kids` int(20) NOT NULL,
  `prenda` varchar(20) NOT NULL,
  `talla` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `ref_prenda` int(20) NOT NULL,
  `sexo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `kids`
--

INSERT INTO `kids` (`id_kids`, `prenda`, `talla`, `color`, `ref_prenda`, `sexo`) VALUES
(0, 'shorts', '10', 'azul', 201, 'masculino'),
(15, 'pantaloneta', '12', 'azul', 21, 'femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muj`
--

CREATE TABLE `muj` (
  `id_muj` int(20) NOT NULL,
  `talla` varchar(20) NOT NULL,
  `prenda` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `ref_prenda` int(20) NOT NULL,
  `marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `muj`
--

INSERT INTO `muj` (`id_muj`, `talla`, `prenda`, `color`, `ref_prenda`, `marca`) VALUES
(0, 'M', 'top', 'morado', 32, 'adidas'),
(16, 'M', 'camisa', 'rosado', 35, 'puma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofer`
--

CREATE TABLE `ofer` (
  `id_ofer` int(20) NOT NULL,
  `prenda` varchar(20) NOT NULL,
  `balon` varchar(20) NOT NULL,
  `accesorio` varchar(20) NOT NULL,
  `ref_prenda` int(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `talla` varchar(20) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `ref_balon` int(20) NOT NULL,
  `ref_accesorio` int(20) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ofer`
--

INSERT INTO `ofer` (`id_ofer`, `prenda`, `balon`, `accesorio`, `ref_prenda`, `marca`, `talla`, `sexo`, `ref_balon`, `ref_accesorio`, `color`) VALUES
(125, 'no aplica', 'no aplica', 'manilla', 0, 'adidas', 'no aplica', 'femenino', 0, 1253, 'amarillo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  ADD PRIMARY KEY (`id_accesorios`);

--
-- Indices de la tabla `balones`
--
ALTER TABLE `balones`
  ADD PRIMARY KEY (`id_balones`);

--
-- Indices de la tabla `calzado`
--
ALTER TABLE `calzado`
  ADD PRIMARY KEY (`id_calz`);

--
-- Indices de la tabla `hom`
--
ALTER TABLE `hom`
  ADD PRIMARY KEY (`id_hom`);

--
-- Indices de la tabla `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`id_kids`);

--
-- Indices de la tabla `muj`
--
ALTER TABLE `muj`
  ADD PRIMARY KEY (`id_muj`);

--
-- Indices de la tabla `ofer`
--
ALTER TABLE `ofer`
  ADD PRIMARY KEY (`id_ofer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
