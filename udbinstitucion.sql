-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2024 a las 04:56:50
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
-- Base de datos: `udbinstitucion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `idCargo` int(11) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `descripcionCargo` text NOT NULL,
  `jefatura` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrataciones`
--

CREATE TABLE `contrataciones` (
  `idContratacion` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `idCargo` int(11) NOT NULL,
  `idTipoContratacion` int(11) NOT NULL,
  `fechaContratacion` date NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `nombreDepartamento` varchar(50) NOT NULL,
  `descripcionDepartamento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL,
  `numeroDui` varchar(9) NOT NULL,
  `nombrePersona` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `numeroTelefono` varchar(9) NOT NULL,
  `correoInstitucional` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `numeroDui`, `nombrePersona`, `usuario`, `numeroTelefono`, `correoInstitucional`, `fechaNacimiento`) VALUES
(1, '055808869', 'Denis Chavez', 'Decc', '777777777', 'decc@institucion.com', '2024-08-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocontratacion`
--

CREATE TABLE `tipocontratacion` (
  `idTipoContratacion` int(11) NOT NULL,
  `tipoContratacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`idCargo`);

--
-- Indices de la tabla `contrataciones`
--
ALTER TABLE `contrataciones`
  ADD PRIMARY KEY (`idContratacion`),
  ADD KEY `idContratacion` (`idContratacion`),
  ADD KEY `idDepartamento` (`idDepartamento`),
  ADD KEY `idEmpleado` (`idEmpleado`),
  ADD KEY `idCargo` (`idCargo`),
  ADD KEY `idTipoContratacion` (`idTipoContratacion`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `tipocontratacion`
--
ALTER TABLE `tipocontratacion`
  ADD PRIMARY KEY (`idTipoContratacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contrataciones`
--
ALTER TABLE `contrataciones`
  MODIFY `idContratacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipocontratacion`
--
ALTER TABLE `tipocontratacion`
  MODIFY `idTipoContratacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contrataciones`
--
ALTER TABLE `contrataciones`
  ADD CONSTRAINT `contrataciones_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contrataciones_ibfk_2` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contrataciones_ibfk_3` FOREIGN KEY (`idTipoContratacion`) REFERENCES `tipocontratacion` (`idTipoContratacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contrataciones_ibfk_4` FOREIGN KEY (`idCargo`) REFERENCES `cargos` (`idCargo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
