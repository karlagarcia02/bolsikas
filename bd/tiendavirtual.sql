-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-12-2020 a las 17:06:13
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE IF NOT EXISTS `carrito` (
  `carrito_id` int(10) NOT NULL,
  `carrito_producto` int(10) NOT NULL,
  `carrito_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `categoria_id` int(10) NOT NULL,
  `categoria_nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`) VALUES
(3, 'KIDS'),
(4, 'MOCHILAS'),
(1, 'DAMAS'),
(2, 'CABALLEROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla ` cliente`
--

CREATE TABLE IF NOT EXISTS ` cliente` (
  `cliente_id` int(10) NOT NULL AUTO_INCREMENT,
  `cliente_nombre` varchar(30) NOT NULL,
  `cliente_email` varchar(30) NOT NULL,
  `cliente_telefono` int(10) NOT NULL,
  `cliente_ciudad` varchar(30) NOT NULL,
  `cliente_direccion` varchar(50) NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `pedido_id` int(10) NOT NULL,
  `pedido_cliente` int(10) NOT NULL,
  `pedido_producto` int(10) NOT NULL,
  `pedido_fecha` date NOT NULL,
  `pedido_preciototal` int(10) NOT NULL,
  `pedido_estado` varchar(30) NOT NULL,
  `pedido_descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `producto_id` int(10) NOT NULL,
  `producto_nombre` varchar(30) NOT NULL,
  `producto_stock` int(10) NOT NULL,
  `producto_precio` int(10) NOT NULL,
  `producto_descripcion` int(10) NOT NULL,
  `producto_imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
