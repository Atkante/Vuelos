-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-08-2023 a las 19:08:08
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mysky`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(20) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `Genero` varchar(10) DEFAULT NULL,
  `cell` char(10) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `pais`, `dni`, `nombre`, `apellido`, `nacimiento`, `Genero`, `cell`, `correo`, `password`) VALUES
(1, 'ecuador', '0605233345', 'Juanito', 'López', '2023-07-12', 'masculino', '0985611539', 'lopez123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'Ecuador', 'Quito', 'Giancarlo', 'Saltos', '2023-07-20', 'null', '0985611539', 'jeanvakican@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(11, 'Ecuador', 'Quito', 'Giancarlo', 'Saltos', '2023-06-27', 'null', '0985611539', 'jeanvacan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(12, 'Ecuador', 'Quito', 'Giancarlo', 'Saltos', '2023-07-14', 'null', '0985611539', 'jeanvacan@gmail.com', 'As12345678'),
(13, 'Ecuador', 'Quito', 'Giancarlo', 'Saltos', '2023-07-21', 'male', '0985611539', 'gianki@gmail.com', '0dd718ee18749005a4d19b1da44d9d09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

DROP TABLE IF EXISTS `destinos`;
CREATE TABLE IF NOT EXISTS `destinos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id`, `nombre`, `precio`) VALUES
(1, 'New York-USA', '900.00'),
(2, 'Seul-Corea del Sur', '1000.00'),
(3, 'Paris-Francia', '632.00'),
(4, 'Sydney-Australia', '1178.00'),
(5, 'Grecia-Europa', '440.00'),
(6, 'España-Europa', '447.00'),
(19, 'Ecuador-Quito', '50.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE IF NOT EXISTS `reserva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `origen` varchar(32) NOT NULL,
  `destino` varchar(32) NOT NULL,
  `fecha salida` datetime NOT NULL,
  `fecha llegada` datetime NOT NULL,
  `cantidad personas` int(3) NOT NULL,
  `precio` float NOT NULL,
  `asiento` int(11) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(64) NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id`, `origen`, `destino`, `fecha salida`, `fecha llegada`, `cantidad personas`, `precio`, `asiento`, `telefono`, `correo`, `total`) VALUES
(1, 'Quito-Ecuador', 'Paris-Francia', '2023-07-30 20:40:00', '2023-07-29 20:40:00', 2, 50, 45, '0985611539', 'jeanvacan@gmail.com', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'eugenio', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

DROP TABLE IF EXISTS `vuelos`;
CREATE TABLE IF NOT EXISTS `vuelos` (
  `id` int(11) NOT NULL,
  `origen` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id`, `origen`, `destino`, `precio`) VALUES
(1, 'New York-USA', 'Seul-Corea del Sur', '900.00'),
(2, 'Paris-Francia', 'Sydney-Australia', '1178.00'),
(3, 'Grecia-Europa', 'España-Europa', '447.00'),
(4, 'Ecuador-Quito', 'Sydney-Australia', '100.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
