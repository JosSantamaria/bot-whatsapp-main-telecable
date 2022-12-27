-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-12-2022 a las 04:01:20
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
-- Base de datos: `tlc_whatsapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `initial`
--

DROP TABLE IF EXISTS `initial`;
CREATE TABLE IF NOT EXISTS `initial` (
  `option_key` varchar(500) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `initial`
--

INSERT INTO `initial` (`option_key`, `keywords`, `id`, `message`) VALUES
('STEP_1', 'hola, hola!,ola,inicio,welcome', 2, 'Bienvenido'),
('STEP_2', 'cursos,info,curso', 3, ''),
('STEP_2_1', 'angular', 4, ''),
('STEP_2_2', 'node', 5, ''),
('STEP_2_3', 'ngrx', 6, ''),
('STEP_2_4', 'aws', 7, ''),
('STEP_3', 'asesor', 8, ''),
('STEP_4', 'muchas gracias,gracias,vale gracias', 9, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `response`
--

DROP TABLE IF EXISTS `response`;
CREATE TABLE IF NOT EXISTS `response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_key` varchar(255) DEFAULT NULL,
  `replyMessage` varchar(512) DEFAULT NULL,
  `trigger` varchar(45) DEFAULT NULL,
  `media` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `response`
--

INSERT INTO `response` (`id`, `option_key`, `replyMessage`, `trigger`, `media`) VALUES
(1, 'STEP_1', 'Hola soy el bot escribe curso', NULL, NULL),
(2, 'STEP_2', 'Te envio esto', NULL, 'https://s2.q4cdn.com/175719177/files/doc_presentations/Placeholder-PDF.pdf'),
(3, '.', 'Respuesta Inválida', NULL, NULL),
(5, 'DEFAULT', 'Ninguna opcion seleccionada, por favor escribe exactamente la opcion que quieres :\'(', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
