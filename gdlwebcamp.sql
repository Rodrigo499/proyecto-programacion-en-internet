-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2018 at 10:45 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gdlwebcamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `id_categoria` tinyint(10) NOT NULL,
  `cat_evento` varchar(50) NOT NULL,
  `icono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoria_evento`
--

INSERT INTO `categoria_evento` (`id_categoria`, `cat_evento`, `icono`) VALUES
(1, 'Seminario', 'fa-university'),
(2, 'Conferencias', 'fa-comment'),
(3, 'Talleres', 'fa-code');

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` tinyint(4) NOT NULL,
  `nombre_evento` varchar(60) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time NOT NULL,
  `id_cat_evento` tinyint(10) NOT NULL,
  `id_inv` tinyint(4) NOT NULL,
  `clave` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventos`
--

INSERT INTO `eventos` (`evento_id`, `nombre_evento`, `fecha_evento`, `hora_evento`, `id_cat_evento`, `id_inv`, `clave`) VALUES
(32, 'Responsive Web Design', '2016-12-09', '10:00:00', 3, 1, 'taller_01'),
(33, 'Flexbox', '2016-12-09', '12:00:00', 3, 2, 'taller_02'),
(34, 'HTML5 y CSS3', '2016-12-09', '14:00:00', 3, 3, 'taller_03'),
(35, 'Drupal', '2016-12-09', '17:00:00', 3, 4, 'taller_04'),
(36, 'WordPress', '2016-12-09', '19:00:00', 3, 5, 'taller_05'),
(37, 'Como ser freelancer', '2016-12-09', '10:00:00', 2, 6, 'conf_01'),
(38, 'Tecnologías del Futuro', '2016-12-09', '17:00:00', 2, 1, 'conf_02'),
(39, 'Seguridad en la Web', '2016-12-09', '19:00:00', 2, 2, 'conf_03'),
(40, 'Diseño UI y UX para móviles', '2016-12-09', '10:00:00', 1, 6, 'sem_01'),
(41, 'AngularJS', '2016-12-10', '10:00:00', 3, 1, 'taller_06'),
(42, 'PHP y MySQL', '2016-12-10', '12:00:00', 3, 2, 'taller_07'),
(43, 'JavaScript Avanzado', '2016-12-10', '14:00:00', 3, 3, 'taller_08'),
(44, 'SEO en Google', '2016-12-10', '17:00:00', 3, 4, 'taller_09'),
(45, 'De Photoshop a HTML5 y CSS3', '2016-12-10', '19:00:00', 3, 5, 'taller_10'),
(46, 'PHP Intermedio y Avanzado', '2016-12-10', '21:00:00', 3, 6, 'taller_11'),
(47, 'Como crear una tienda online que venda millones en pocos día', '2016-12-10', '10:00:00', 2, 6, 'conf_04'),
(48, 'Los mejores lugares para encontrar trabajo', '2016-12-10', '17:00:00', 2, 1, 'conf_05'),
(49, 'Pasos para crear un negocio rentable ', '2016-12-10', '19:00:00', 2, 2, 'conf_06'),
(50, 'Aprende a Programar en una mañana', '2016-12-10', '10:00:00', 1, 3, 'sem_02'),
(51, 'Diseño UI y UX para móviles', '2016-12-10', '17:00:00', 1, 5, 'sem_03'),
(52, 'Laravel', '2016-12-11', '10:00:00', 3, 1, 'taller_12'),
(53, 'Crea tu propia API', '2016-12-11', '12:00:00', 3, 2, 'taller_13'),
(54, 'JavaScript y jQuery', '2016-12-11', '14:00:00', 3, 3, 'taller_14'),
(55, 'Creando Plantillas para WordPress', '2016-12-11', '17:00:00', 3, 4, 'taller_15'),
(56, 'Tiendas Virtuales en Magento', '2016-12-11', '19:00:00', 3, 5, 'taller_16'),
(57, 'Como hacer Marketing en línea', '2016-12-11', '10:00:00', 2, 6, 'conf_07'),
(58, '¿Con que lenguaje debo empezar?', '2016-12-11', '17:00:00', 2, 2, 'conf_08'),
(59, 'Frameworks y librerias Open Source', '2016-12-11', '19:00:00', 2, 3, 'conf_09'),
(60, 'Creando una App en Android en una mañana', '2016-12-11', '10:00:00', 1, 4, 'sem_04'),
(61, 'Creando una App en iOS en una tarde', '2016-12-11', '17:00:00', 1, 1, 'sem_05');

-- --------------------------------------------------------

--
-- Table structure for table `invitados`
--

CREATE TABLE `invitados` (
  `invitado_id` tinyint(4) NOT NULL,
  `nombre_invitado` varchar(30) NOT NULL,
  `apellido_invitado` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `ur_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invitados`
--

INSERT INTO `invitados` (`invitado_id`, `nombre_invitado`, `apellido_invitado`, `descripcion`, `ur_imagen`) VALUES
(1, 'Rafael', 'Bautista', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero ratione, reprehenderit pariatur. Ipsam excepturi natus quibusdam, eaque, repudiandae voluptate modi velit nam veniam labore dolores, praesentium qui quam in nostrum?', 'invitado1.jpg'),
(2, 'Shari', 'Carro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero ratione, reprehenderitvoluptate modi velit nam veniam labore dolores, praesentium qui quam in nostrum?', 'invitado2.jpg'),
(3, 'Gregorio ', 'Sanchez', 'voluptate modi velit nam veniam labore dolores, praesentium qui quam in nostrum?', ''),
(4, 'Susana', 'Rivera', 'voluptate modi velit nam veniam labore dolores, praesentium qui quam in nostrum?', 'invitado4.jpg'),
(5, 'Harold', 'Garcia', 'voluptate modi velit nam veniam labore dolores, praesentium qui quam in nostrum?', 'invitado5.jpg'),
(6, 'Misael', 'Ramirez', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero ratione, reprehenderit pariatur. Ipsam excepturi natus quibusdam, eaque, repudiandae voluptate modi velit nam veniam labore dolores, praesentium qui quam in nostrum?', 'invitado6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `id_cat_evento` (`id_cat_evento`),
  ADD KEY `id_invi` (`id_inv`);

--
-- Indexes for table `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`invitado_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categoria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_cat_evento`) REFERENCES `categoria_evento` (`id_categoria`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_inv`) REFERENCES `invitados` (`invitado_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
