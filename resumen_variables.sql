-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 20-02-2025 a las 21:51:25
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

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
-- Estructura de tabla para la tabla `resumen_variables`
--

CREATE TABLE `resumen_variables` (
  `ID_DEPARTAMENTO` int(11) DEFAULT NULL,
  `DEPARTAMENTO` text DEFAULT NULL,
  `ID_MUNICIPIO` int(11) DEFAULT NULL,
  `MUNICIPIO` text DEFAULT NULL,
  `Latitud` double DEFAULT NULL,
  `Longitud` double DEFAULT NULL,
  `LOCALIDAD` text DEFAULT NULL,
  `Solar_radiation_promedio` double DEFAULT NULL,
  `Wind_promedio` double DEFAULT NULL,
  `consumo_energia_promedio` decimal(14,6) DEFAULT NULL,
  `tipo_cultivo` varchar(100),
  `Desecho_Ton_promedio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resumen_variables`
--

INSERT INTO `resumen_variables` (`ID_DEPARTAMENTO`, `DEPARTAMENTO`, `ID_MUNICIPIO`, `MUNICIPIO`, `Latitud`, `Longitud`, `LOCALIDAD`, `Solar_radiation_promedio`, `Wind_promedio`, `consumo_energia_promedio`, `tipo_cultivo`, `Desecho_Ton_promedio`) VALUES
(0, 'CAUCA', 19809, 'TIMBIQUÍ', 2.702, -77.495, 'CHACÓN (TIMBIQUÍ - CAUCA)', 15190.25, 1.10833334922791, '4366.000000', 'BANANO', 26.981429168156215),
(5, 'ANTIOQUIA', 5873, 'VIGIA DEL FUERTE', 6.456, -76.699, 'LA PLAYA MURRI  (VIGÍA DEL FUERTE - ANTIOQUIA)', 17067.9921875, 0.7583333253860473, '8547.375000', 'PALMA DE ACEITE', 223.7033000588417),
(5, 'ANTIOQUIA', 5873, 'VIGIA DEL FUERTE', 6.456, -76.699, 'LOMA MURRI (VIGÍA DEL FUERTE - ANTIOQUIA)', 17067.9921875, 0.7583333253860473, '9954.875000', 'PALMA DE ACEITE', 223.7033000588417),
(5, 'ANTIOQUIA', 5873, 'VIGIA DEL FUERTE', 6.456, -76.699, 'SAN ANTONIO DE PADUA (VIGÍA DEL FUERTE - ANTIOQUIA)', 17067.9921875, 0.7583333253860473, '6290.066667', 'PALMA DE ACEITE', 223.7033000588417),
(5, 'ANTIOQUIA', 5873, 'VIGIA DEL FUERTE', 6.456, -76.699, 'VEGAEZ (VIGÍA DEL FUERTE - ANTIOQUIA)', 17067.9921875, 0.7583333253860473, '4986.325581', 'PALMA DE ACEITE', 223.7033000588417),
(5, 'ANTIOQUIA', 5873, 'VIGIA DEL FUERTE', 6.456, -76.699, 'VIGÍA DEL FUERTE (VIGÍA DEL FUERTE - ANTIOQUIA)', 17067.9921875, 0.7583333253860473, '124249.571429', 'PALMA DE ACEITE', 223.7033000588417),
(13, 'BOLÍVAR', 13001, 'CARTAGENA DE INDIAS', 10.446, -75.467, 'ISLA FUERTE (CARTAGENA - BOLIVAR)', 19383.68359375, 3.5833332538604727, '79594.500000', 'PALMA DE ACEITE', 173.5878700017929),
(13, 'BOLÍVAR', 13001, 'CARTAGENA DE INDIAS', 10.446, -75.467, 'ISLA FUERTE (CARTAGENA DE INDIAS - BOLÍVAR)', 19383.68359375, 3.583333253860473, '53001.867925', 'PALMA DE ACEITE', 173.5878700017929),
(13, 'BOLÍVAR', 13001, 'CARTAGENA DE INDIAS', 10.446, -75.467, 'ISLA MUCURA (CARTAGENA - BOLIVAR)', 19383.68359375, 3.583333253860473, '9628.750000', 'PALMA DE ACEITE', 173.5878700017929),
(13, 'BOLÍVAR', 13001, 'CARTAGENA DE INDIAS', 10.446, -75.467, 'ISLA MUCURA (CARTAGENA DE INDIAS - BOLÍVAR)', 19383.68359375, 3.583333253860473, '8811.044444', 'PALMA DE ACEITE', 173.5878700017929),
(13, 'BOLÍVAR', 13001, 'CARTAGENA DE INDIAS', 10.446, -75.467, 'SANTA CRUZ DEL ISLOTE (CARTAGENA - BOLIVAR)', 19383.68359375, 3.583333253860473, '17683.500000', 'PALMA DE ACEITE', 173.5878700017929),
(13, 'BOLÍVAR', 13001, 'CARTAGENA DE INDIAS', 10.446, -75.467, 'SANTA CRUZ DEL ISLOTE (CARTAGENA DE INDIAS - BOLÍVAR)', 19383.68359375, 3.583333253860473, '15682.418605', 'PALMA DE ACEITE', 173.5878700017929),
(18, 'CAQUETÁ', 18150, 'CARTAGENA DEL CHAIRÁ', 0.649, -74.274, 'REMOLINO DEL CAGUAN (CARTAGENA DEL CHAIRA - CAQUETÁ)', 14565.908203125, 0.8416666388511659, '23111.928571', 'PALMA DE ACEITE', 799.8934338018298),
(18, 'CAQUETÁ', 18150, 'CARTAGENA DEL CHAIRÁ', 0.649, -74.274, 'SANTA FE DEL CAGUAN (CARTAGENA DEL CHAIRA - CAQUETÁ)', 14565.908203125, 0.8416666388511659, '5410.925926', 'PALMA DE ACEITE', 799.8934338018298),
(18, 'CAQUETÁ', 18753, 'SAN VICENTE DEL CAGUÁN', 1.569, -74.264, 'GUACAMAYAS (SAN VICENTE DEL CAGUÁN - CAQUETÁ)', 15415.25, 0.8833333253860473, '15541.362069', 'PALMA DE ACEITE', 799.8934338018298),
(18, 'CAQUETÁ', 18753, 'SAN VICENTE DEL CAGUÁN', 1.569, -74.264, 'GUAYABAL (SAN VICENTE DEL CAGUÁN - CAQUETÁ)', 15415.25, 0.8833333253860473, '8908.916667', 'PALMA DE ACEITE', 799.8934338018298),
(18, 'CAQUETÁ', 18753, 'SAN VICENTE DEL CAGUÁN', 1.569, -74.264, 'PUERTO BETANIA (SAN VICENTE DEL CAGUÁN - CAQUETÁ)', 15415.25, 0.8833333253860473, '6483.377778', 'PALMA DE ACEITE', 799.8934338018298),
(18, 'CAQUETÁ', 18753, 'SAN VICENTE DEL CAGUÁN', 1.569, -74.264, 'VILLA LOBOS (SAN VICENTE DEL CAGUÁN - CAQUETÁ)', 15415.25, 0.8833333253860471, '18465.400000', 'PALMA DE ACEITE', 799.8934338018298),
(19, 'CAUCA', 19318, 'GUAPI', 2.416, -77.694, 'LIMONES (GUAPI - CAUCA)', 15018.75, 1.083333373069763, '11823.937500', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19318, 'GUAPI', 2.416, -77.694, 'SAN ANTONIO DE GUAJUI (GUAPI - CAUCA)', 15018.75, 1.083333373069763, '15574.326531', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'BETANIA - NAYA (LÓPEZ (MICAY) - CAUCA)', 15667.7412109375, 0.9333333373069761, '8551.833333', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'BOCA GRANDE (LÓPEZ (MICAY) - CAUCA)', 15667.7412109375, 0.9333333373069762, '4822.600000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'BOCA GRANDE (LÓPEZ DE MICAY - CAUCA)', 15667.7412109375, 0.9333333373069761, '4664.666667', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'DOS QUEBRADAS RÍO NAYA (LÓPEZ DE MICAY - CAUCA)', 15667.7412109375, 0.9333333373069762, '5475.900000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'ISLA DE GALLO (LOPEZ (MICAY) - CAUCA)', 15667.7412109375, 0.9333333373069762, '4620.500000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'ISLA DE GALLO (LÓPEZ DE MICAY - CAUCA)', 15667.7412109375, 0.9333333373069761, '4704.568182', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'LA CONCHA - CONCEPCIÓN NAYA (LOPEZ (MICAY) - CAUCA)', 15667.7412109375, 0.9333333373069761, '2796.500000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'NOANAMITO (LOPEZ (MICAY) - CAUCA)', 15667.7412109375, 0.9333333373069761, '9242.666667', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'NOANAMITO (LÓPEZ DE MICAY - CAUCA)', 15667.7412109375, 0.9333333373069762, '8886.650000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'RIO MAYA - DOS QUEBRADAS (LÓPEZ DE MICAY - CAUCA)', 15667.7412109375, 0.9333333373069762, '5001.800000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'SAN ANTONIO DE CHUARE (LOPEZ (MICAY) - CAUCA)', 15667.7412109375, 0.9333333373069762, '10320.250000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'SAN ANTONIO DE CHUARE (LÓPEZ DE MICAY - CAUCA)', 15667.7412109375, 0.9333333373069762, '8183.051282', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'SAN ISIDRO (LÓPEZ (MICAY) - CAUCA)', 15667.7412109375, 0.9333333373069762, '1688.000000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'SAN ISIDRO (LÓPEZ DE MICAY - CAUCA)', 15667.7412109375, 0.9333333373069761, '1288.000000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'ZARAGOZA (LOPEZ (MICAY) - CAUCA)', 15667.7412109375, 0.9333333373069762, '7575.500000', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19418, 'LÓPEZ', 3.004, -77.222, 'ZARAGOZA (LÓPEZ DE MICAY - CAUCA)', 15667.7412109375, 0.9333333373069762, '12919.096774', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19809, 'TIMBIQUÍ', 2.702, -77.495, 'CHACON (TIMBIQUÍ - CAUCA)', 15190.25, 1.1083333492279057, '4675.568627', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19809, 'TIMBIQUÍ', 2.702, -77.495, 'COMUNIDAD DE CHETE (TIMBIQUÍ - CAUCA)', 15190.25, 1.108333349227906, '6723.105263', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19809, 'TIMBIQUÍ', 2.702, -77.495, 'COTEJE (TIMBIQUÍ - CAUCA)', 15190.25, 1.1083333492279057, '10292.203704', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19809, 'TIMBIQUÍ', 2.702, -77.495, 'LOS BRAZOS (TIMBIQUÍ - CAUCA)', 15190.25, 1.1083333492279062, '8724.969697', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19809, 'TIMBIQUÍ', 2.702, -77.495, 'PUERTO SAIJA (TIMBIQUÍ - CAUCA)', 15190.25, 1.108333349227906, '36929.063830', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19809, 'TIMBIQUÍ', 2.702, -77.495, 'SAN JOSE (TIMBIQUÍ - CAUCA)', 15190.25, 1.108333349227906, '11616.921053', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19809, 'TIMBIQUÍ', 2.702, -77.495, 'SANTA MARÍA (TIMBIQUÍ - CAUCA)', 15190.25, 1.1083333492279062, '18233.344828', 'PALMA DE ACEITE', 369.42253479590784),
(19, 'CAUCA', 19809, 'TIMBIQUÍ', 2.702, -77.495, 'SANTA ROSA DE SAIJA (TIMBIQUÍ - CAUCA)', 15190.25, 1.108333349227906, '5015.377778', 'PALMA DE ACEITE', 369.42253479590784),
(27, 'CHOCÓ', 27001, 'QUIBDÓ', 5.941, -76.667, 'TAGACHI (QUIBDÓ - CHOCÓ)', 16583.31640625, 0.725000023841858, '8008.217391', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27006, 'ACANDÍ', 8.435, -77.292, 'ACANDÍ (ACANDÍ - CHOCÓ)', 18501.55078125, 2.0583333969116206, '783237.827586', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27006, 'ACANDÍ', 8.435, -77.292, 'CAPURGANA (ACANDÍ - CHOCÓ)', 18501.55078125, 2.0583333969116206, '367583.037037', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27006, 'ACANDÍ', 8.435, -77.292, 'SAN FRANCISCO (ACANDÍ - CHOCÓ)', 18501.55078125, 2.0583333969116206, '23129.580645', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27025, 'ALTO BAUDÓ', 5.641, -77.088, 'CIUDAD BAUDO (ALTO BAUDO (PIE DE PATO) - CHOCO)', 16243.349609375, 1.066666722297669, '60399.250000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27025, 'ALTO BAUDÓ', 5.641, -77.088, 'CIUDAD BAUDO - PIE DE PATO (ALTO BAUDO - CHOCÓ)', 16243.349609375, 1.0666667222976687, '61547.745455', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27025, 'ALTO BAUDÓ', 5.641, -77.088, 'PLAYITA CATRU (ALTO BAUDO - CHOCÓ)', 16243.349609375, 1.0666667222976691, '706.333333', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27075, 'BAHÍA SOLANO', 6.294, -77.358, 'CIUDAD MUTIS (BAHÍA SOLANO - CHOCÓ)', 17167.80859375, 1.483333349227906, '898227.282609', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27075, 'BAHÍA SOLANO', 6.294, -77.358, 'CUPICA (BAHIA SOLANO (MUTIS) - CHOCO)', 17167.80859375, 1.483333349227909, '89240.500000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27075, 'BAHÍA SOLANO', 6.294, -77.358, 'CUPICA (BAHÍA SOLANO - CHOCÓ)', 17167.80859375, 1.483333349227906, '83264.744681', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27075, 'BAHÍA SOLANO', 6.294, -77.358, 'EL VALLE (BAHIA SOLANO (MUTIS) - CHOCO)', 17167.80859375, 1.483333349227909, '229283.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27075, 'BAHÍA SOLANO', 6.294, -77.358, 'EL VALLE (BAHÍA SOLANO - CHOCÓ)', 17167.80859375, 1.4833333492279057, '223052.890909', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27075, 'BAHÍA SOLANO', 6.294, -77.358, 'MUTIS (BAHIA SOLANO (MUTIS) - CHOCO)', 17167.80859375, 1.4833333492279104, '945042.666667', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'BELEN DE DOCAMPADO (BAJO BAUDÓ - CHOCÓ)', 16035.099609375, 1.1416666507720892, '11350.333333', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'BUENAVISTA (BAJO BAUDÓ (PIZARRO) - CHOCÓ)', 16035.099609375, 1.1416666507720936, '5804.611111', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'BUENAVISTA (BAJO BAUDO - CHOCÓ)', 16035.099609375, 1.1416666507720918, '5105.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'FIRME DE USARGA (BAJO BAUDÓ (PIZARRO) - CHOCÓ)', 16035.099609375, 1.141666650772093, '1103.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'FIRME DE USARGA (BAJO BAUDÓ - CHOCÓ)', 16035.099609375, 1.1416666507720907, '1357.200000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'GUINEAL (BAJO BAUDÓ (PIZARRO) - CHOCÓ)', 16035.099609375, 1.141666650772093, '7821.583333', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'GUINEAL (BAJO BAUDÓ - CHOCÓ)', 16035.099609375, 1.1416666507720907, '5992.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'ORPUA (BAJO BAUDÓ - CHOCÓ)', 16035.099609375, 1.1416666507720934, '995.466667', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'PILIZA (BAJO BAUDÓ (PIZARRO) - CHOCÓ)', 16035.099609375, 1.1416666507720934, '9562.117647', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'PILIZA - BELLAVISTA - VILLA LUZ (BAJO BAUDÓ - CHOCÓ)', 16035.099609375, 1.1416666507720896, '4449.750000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'PIZARRO (BAJO BAUDÓ (PIZARRO) - CHOCÓ)', 16035.099609375, 1.1416666507720943, '290480.309524', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'PIZARRO (BAJO BAUDÓ - CHOCÓ)', 16035.099609375, 1.1416666507720934, '301347.588235', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'SIVIRU (BAJO BAUDÓ - CHOCÓ)', 16035.099609375, 1.1416666507720932, '7982.785714', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'TERRON (BAJO BAUDÓ - CHOCÓ)', 16035.099609375, 1.1416666507720934, '5689.687500', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'VIRUDO', 16035.099609375, 1.1416666507720898, '7551.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27077, 'BAJO BAUDÓ', 5.014, -77.221, 'VIRUDO (BAJO BAUDÓ - CHOCÓ)', 16035.099609375, 1.1416666507720925, '8530.600000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'BELLAVISTA (BOJAYÁ (BELLAVISTA) - CHOCÓ)', 16965.275390625, 1.0750000476837163, '115162.173913', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'BELLAVISTA (BOJAYÁ - CHOCÓ)', 16965.275390625, 1.075000047683721, '129984.500000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'LA LOMA DE BOJAYÁ (BOJAYÁ (BELLAVISTA) - CHOCÓ)', 16965.275390625, 1.0750000476837165, '17095.735294', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'LA LOMA DE BOJAYA (BOJAYÁ - CHOCÓ)', 16965.275390625, 1.075000047683721, '16062.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'NAPIPÍ (BOJAYÁ (BELLAVISTA) - CHOCÓ)', 16965.275390625, 1.0750000476837165, '12645.687500', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'NAPIPI (BOJAYÁ - CHOCÓ)', 16965.275390625, 1.0750000476837172, '14850.375000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'PIEDRA CANDELA (BOJAYÁ - CHOCÓ)', 16965.275390625, 1.0750000476837178, '10689.818182', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'POGUE (BOJAYÁ - CHOCÓ)', 16965.275390625, 1.0750000476837198, '0.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'PUERTO CONTO (BOJAYÁ (BELLAVISTA) - CHOCO)', 16965.275390625, 1.075000047683717, '12381.100000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27099, 'BOJAYÁ', 6.478, -77.103, 'PUERTO CONTO (BOJAYÁ - CHOCÓ)', 16965.275390625, 1.075000047683721, '16599.500000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27250, 'EL LITORAL DEL SAN JUAN', 4.249, -76.966, 'CUCURRUPÍ (EL LITORAL DEL SAN JUAN - CHOCÓ)', 16107.7412109375, 0.925000011920929, '3655.769231', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27250, 'EL LITORAL DEL SAN JUAN', 4.249, -76.966, 'PAPAYO (EL LITORAL DEL SAN JUAN - CHOCÓ)', 16107.7412109375, 0.925000011920929, '5036.714286', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27250, 'EL LITORAL DEL SAN JUAN', 4.249, -76.966, 'SAN BERNARDO BURUJON (EL LITORAL DEL SAN JUAN - CHOCÓ)', 16107.7412109375, 0.925000011920929, '5877.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27250, 'EL LITORAL DEL SAN JUAN', 4.249, -76.966, 'SANTA GENOVEVA DE DOCORDO (EL LITORAL DEL SAN JUAN - CHOCÓ)', 16107.7412109375, 0.925000011920929, '105751.309091', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27250, 'EL LITORAL DEL SAN JUAN', 4.249, -76.966, 'TOGOROMA PLAYA (EL LITORAL DEL SAN JUAN - CHOCO)', 16107.7412109375, 0.925000011920929, '1186.222222', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27361, 'ISTMINA', 4.741, -76.872, 'PANAMACITO', 16456.982421875, 0.7666666507720948, '2059.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27361, 'ISTMINA', 4.741, -76.872, 'PANAMACITO (ISTMINA - CHOCÓ)', 16456.982421875, 0.7666666507720948, '2814.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27361, 'ISTMINA', 4.741, -76.872, 'POTEDÓ (ISTMINA - CHOCÓ)', 16456.982421875, 0.7666666507720948, '4798.250000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27361, 'ISTMINA', 4.741, -76.872, 'UNION CHOCO (ISTMINA - CHOCÓ)', 16456.982421875, 0.7666666507720948, '2475.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27372, 'JURADÓ', 7.116, -77.688, 'JURADO (JURADO - CHOCÓ)', 18079.7421875, 1.5, '237768.021277', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27372, 'JURADÓ', 7.116, -77.688, 'JURADÓ (JURAÓ - CHOCÓ)', 18079.7421875, 1.5, '256385.333333', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27425, 'MEDIO ATRATO (Beté)', 6.037, -76.677, 'BETÉ (MEDIO ATRATO (BETÉ) - CHOCÓ)', 16570.158203125, 0.725000023841858, '23173.142857', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27425, 'MEDIO ATRATO (Beté)', 6.037, -76.677, 'BETE (MEDIO ATRATO - CHOCÓ)', 16570.158203125, 0.725000023841858, '23520.388889', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27425, 'MEDIO ATRATO (Beté)', 6.037, -76.677, 'SAN ROQUE (MEDIO ATRATO (BETÉ) - CHOCÓ)', 16570.158203125, 0.725000023841858, '3100.600000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27425, 'MEDIO ATRATO (Beté)', 6.037, -76.677, 'SAN ROQUE (MEDIO ATRATO - CHOCÓ)', 16570.158203125, 0.725000023841858, '1478.125000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27450, 'MEDIO SAN JUAN', 4.815, -76.808, 'LA LERMA', 16308.6416015625, 0.7083333134651182, '1244.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27450, 'MEDIO SAN JUAN', 4.815, -76.808, 'MACEDONIA (MEDIO SAN JUAN - CHOCÓ)', 16308.6416015625, 0.7083333134651183, '32.600000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27450, 'MEDIO SAN JUAN', 4.815, -76.808, 'UNIÓN WAUNAÁN (MEDIO SAN JUAN - CHOCÓ)', 16308.6416015625, 0.7083333134651183, '5060.500000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27491, 'NÓVITA', 4.856, -76.621, 'JUNTAS DE TAMANA (NOVITA - CHOCÓ)', 16649.642578125, 0.6833333373069762, '2685.200000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27495, 'NUQUÍ', 5.694, -77.297, 'ARUSI (NIQUÍ - CHOCÓ)', 0, 0, '28871.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27495, 'NUQUÍ', 5.694, -77.297, 'ARUSÍ (NUQUÍ - CHOCO)', 0, 0, '17011.692308', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27495, 'NUQUÍ', 5.694, -77.297, 'COMUNIDAD DE PUERTO JAGUA (NUQUÍ - CHOCÓ)', 0, 0, '1297.066667', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27495, 'NUQUÍ', 5.694, -77.297, 'COMUNIDAD INDIGENA DE PANGUI - (EL YUCAL) (NUQUÍ - CHOCÓ)', 0, 0, '8966.833333', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27495, 'NUQUÍ', 5.694, -77.297, 'COMUNIDAD INDÍGENA DE PANGUÍ - EL YUCAL (NUQUÍ - CHOCÓ)', 0, 0, '7509.694444', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27495, 'NUQUÍ', 5.694, -77.297, 'JURUBIRA (NUQUÍ - CHOCÓ)', 0, 0, '19866.800000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27495, 'NUQUÍ', 5.694, -77.297, 'NUQUÍ (NUQUÍ - CHOCÓ)', 0, 0, '336302.476190', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27495, 'NUQUÍ', 5.694, -77.297, 'PUERTO JAGUA (NUQUÍ - CHOCÓ)', 0, 0, '1269.739130', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27615, 'RIOSUCIO', 7.392, -77.255, 'MARCIAL (RIOSUCIO - CHOCÓ)', 18359.19140625, 0.9416666626930238, '145.750000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27615, 'RIOSUCIO', 7.392, -77.255, 'PEÑAS BLANCAS (RIOSUCIO - CHOCÓ)', 18359.19140625, 0.9416666626930238, '53.250000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27615, 'RIOSUCIO', 7.392, -77.255, 'SAN JOSE TAMBORAL (RIOSUCIO - CHOCÓ)', 18359.19140625, 0.9416666626930238, '770.000000', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27745, 'SIPÍ', 4.597, -76.544, 'SIPÍ (SIPÍ - CHOCO)', 16588.474609375, 0.6916666626930238, '13752.363636', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27800, 'UNGUÍA', 8.119, -77.107, 'BALBOA (UNGUÍA - CHOCÓ)', 18731.93359375, 1.7250000238418581, '29625.928571', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27800, 'UNGUÍA', 8.119, -77.107, 'TITUMATE (UNGUÍA - CHOCÓ)', 18731.93359375, 1.7250000238418581, '19836.137931', 'PALMA DE ACEITE', 972.172549366951),
(27, 'CHOCÓ', 27800, 'UNGUÍA', 8.119, -77.107, 'UNGUÍA (UNGUÍA - CHOCÓ)', 18731.93359375, 1.7250000238418581, '540559.210526', 'PALMA DE ACEITE', 972.172549366951),
(44, 'LA GUAJIRA', 44847, 'URIBIA', 12.002, -71.752, 'CABO DE LA VELA (URIBIA - LA GUAJIRA)', 19661.642578125, 4.383333206176759, '38517.500000', 'PALMA DE ACEITE', 8.733488127589226),
(44, 'LA GUAJIRA', 44847, 'URIBIA', 12.002, -71.752, 'NAZARETH (URIBIA - LA GUAJIRA)', 19661.642578125, 4.383333206176759, '54114.227273', 'PALMA DE ACEITE', 8.733488127589226),
(47, 'MAGDALENA', 47189, 'CIÉNAGA', 10.892, -74.046, 'PALMOR (CIÉNAGA - MAGDALENA)', 18874.8828125, 3.1666665077209477, '123148.033898', 'PALMA DE ACEITE', 243.97124671936035),
(50, 'META', 50325, 'MAPIRIPÁN', 3.12, -71.943, 'MAPIRIPAN (MAPIRIPAN - META)', 15932.0498046875, 1.1333333253860476, '227000.017544', 'PALMA DE ACEITE', 892.6454372406006),
(52, 'NARIÑO', 52250, 'EL CHARCO', 2.19, -77.802, 'ALTERÓN (URIBE URIBE) (EL CHARCO - NARIÑO)', 14679.7412109375, 0.924999952316284, '1176.000000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52250, 'EL CHARCO', 2.19, -77.802, 'ALTERON - URIBE URIBE (EL CHARCO - NARIÑO)', 14679.7412109375, 0.9249999523162841, '555.142857', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52250, 'EL CHARCO', 2.19, -77.802, 'BAZAN (EL CHARCO - NARIÑO)', 14679.7412109375, 0.9249999523162841, '25635.434783', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52250, 'EL CHARCO', 2.19, -77.802, 'BOLIVAR - SAN PEDRO (EL CHARCO - NARIÑO)', 14679.7412109375, 0.924999952316284, '5914.457143', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52250, 'EL CHARCO', 2.19, -77.802, 'EL CUIL PUEBLO NUEVO (EL CHARCO - NARIÑO)', 14679.7412109375, 0.9249999523162841, '8684.961538', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52250, 'EL CHARCO', 2.19, -77.802, 'LAS MERCEDES (EL CHARCO - NARIÑO)', 14679.7412109375, 0.924999952316284, '2061.800000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52250, 'EL CHARCO', 2.19, -77.802, 'SAN JOSE (EL CHARCO - NARIÑO)', 14679.7412109375, 0.9249999523162841, '16341.000000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52250, 'EL CHARCO', 2.19, -77.802, 'SAN JOSÉ DEL TAPAJE (EL CHARCO - NARIÑO)', 14679.7412109375, 0.9249999523162841, '16572.078431', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52390, 'LA TOLA', 2.421, -78.213, 'AGUACATAL (LA TOLA - NARIÑO)', 14197.341796875, 1.1333333253860476, '2452.312500', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52390, 'LA TOLA', 2.421, -78.213, 'AMARALES (LA TOLA - NARIÑO)', 14197.341796875, 1.1333333253860476, '10865.745098', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52390, 'LA TOLA', 2.421, -78.213, 'LA VIGIA (LA TOLA - NARIÑO)', 14197.341796875, 1.133333325386049, '8510.250000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52390, 'LA TOLA', 2.421, -78.213, 'LA VIGIA DE LA MAR (LA TOLA - NARIÑO)', 14197.341796875, 1.1333333253860476, '8505.956522', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52390, 'LA TOLA', 2.421, -78.213, 'MULATOS (LA TOLA - NARIÑO)', 14197.341796875, 1.1333333253860476, '6524.807018', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52390, 'LA TOLA', 2.421, -78.213, 'SAN PABLO DE LA MAR (LA TOLA - NARIÑO)', 14197.341796875, 1.133333325386049, '4143.250000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52390, 'LA TOLA', 2.421, -78.213, 'SAN PABLO DEL MAR (LA TOLA - NARIÑO)', 14197.341796875, 1.1333333253860476, '5991.233333', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52427, 'MAGÜÍ (Payán)', 1.909, -78.048, 'ALTO ESTERO (MAGÜI - NARIÑO)', 14471.9912109375, 0.8916666507720948, '788.125000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52427, 'MAGÜÍ (Payán)', 1.909, -78.048, 'BRISAS DE HAMBURGO (MAGÜÍ - NARIÑO)', 14471.9912109375, 0.8916666507720948, '1547.000000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52427, 'MAGÜÍ (Payán)', 1.909, -78.048, 'EL ROSARIO', 14471.9912109375, 0.8916666507720948, '202.500000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52427, 'MAGÜÍ (Payán)', 1.909, -78.048, 'EL ROSARIO (MAGÜI - NARIÑO)', 14471.9912109375, 0.8916666507720948, '0.000000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52427, 'MAGÜÍ (Payán)', 1.909, -78.048, 'GUILPI', 14471.9912109375, 0.8916666507720948, '853.000000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52427, 'MAGÜÍ (Payán)', 1.909, -78.048, 'LA ISLA (MAGÜÍ - NARIÑO)', 14471.9912109375, 0.891666650772095, '326.600000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52427, 'MAGÜÍ (Payán)', 1.909, -78.048, 'LA LOMA (MAGÜÍ - NARIÑO)', 14471.9912109375, 0.891666650772095, '767.700000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52427, 'MAGÜÍ (Payán)', 1.909, -78.048, 'LAS LAJAS (MAGÜÍ - NARIÑO)', 14471.9912109375, 0.891666650772095, '1395.600000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52473, 'MOSQUERA', 2.445, -78.442, 'EL BAJITO DE ECHANDÍA (MOSQUERA - NARIÑO)', 13841.783203125, 1.4833333492279064, '3433.529412', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52490, 'OLAYA HERRERA', 2.293, -78.298, 'BOCA DE PRIETA (OLAYA HERRERA - NARIÑO)', 14279.4169921875, 1.0583333969116209, '3644.938776', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52490, 'OLAYA HERRERA', 2.293, -78.298, 'BOCAS DE PRIETA (OLAYA HERRERA - NARIÑO)', 14279.4169921875, 1.0583333969116206, '3094.200000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52490, 'OLAYA HERRERA', 2.293, -78.298, 'SAN JOSÉ CALABAZAL (OLAYA HERRERA - NARIÑO)', 14279.4169921875, 1.0583333969116209, '8066.785714', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52520, 'FRANCISCO PIZARRO', 2.091, -78.594, 'SAN PEDRO DEL VINO ( FRANCISCO PIZARRO - NARIÑO)', 13543.9580078125, 1.5666667222976696, '5531.000000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52520, 'FRANCISCO PIZARRO', 2.091, -78.594, 'SAN PEDRO DEL VINO (FRANCISCO PIZARRO - NARIÑO)', 13543.9580078125, 1.5666667222976687, '6245.900000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52621, 'ROBERTO PAYÁN (San José)', 1.9, -78.385, 'TAMAJE (ROBERTO PAYAN - NARIÑO)', 13893.6083984375, 1.375, '5052.500000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52696, 'SANTA BÁRBARA (Iscuandé)', 2.299, -77.873, 'LA ENSENADA (SANTA BÁRBARA (ISCUANDÉ) - NARIÑO)', 14712.0830078125, 1.0083333253860476, '6761.567568', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52696, 'SANTA BÁRBARA (Iscuandé)', 2.299, -77.873, 'LA ENSENADA (SANTA BÁRBARA - NARIÑO)', 14712.0830078125, 1.0083333253860478, '6793.470588', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52696, 'SANTA BÁRBARA (Iscuandé)', 2.299, -77.873, 'SANTA RITA (SANTA BARBARA (ISCUANDÉ) - NARIÑO)', 14712.0830078125, 1.008333325386048, '8116.900000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52696, 'SANTA BÁRBARA (Iscuandé)', 2.299, -77.873, 'SECADERO (SANTA BÁRBARA (ISCUANDÉ) - NARIÑO)', 14712.0830078125, 1.0083333253860476, '4628.400000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52696, 'SANTA BÁRBARA (Iscuandé)', 2.299, -77.873, 'SECADERO (SANTA BÁRBARA - NARIÑO)', 14712.0830078125, 1.0083333253860491, '4576.000000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'BOCAS DE CURAY (SAN ANDRÉS DE TUMACO - NARIÑO)', 13513.8662109375, 1.5166666507720934, '8651.928571', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'BOCAS DE CURAY (TUMACO - NARIÑO)', 13513.8662109375, 1.5166666507720943, '10962.190476', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'CHAJAL (TUMACO - NARIÑO)', 13513.8662109375, 1.5166666507720934, '24012.615385', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'PITAL DE LA COSTA (TUMACO - NARIÑO)', 13513.8662109375, 1.5166666507720938, '28038.791667', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'PUEBLO NUEVO (TABLÓN SALADO) (TUMACO - NARIÑO)', 13513.8662109375, 1.5166666507720936, '4534.176471', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'SAN JOSÉ DEL GUAYABO (TUMACO - NARIÑO)', 13513.8662109375, 1.5166666507720903, '2944.000000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'SAN JUAN COSTA (TUMACO - NARIÑO)', 13513.8662109375, 1.516666650772091, '30348.000000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'SAN JUAN DE LA COSTA (SAN ANDRÉS DE TUMACO - NARIÑO)', 13513.8662109375, 1.516666650772094, '32434.111111', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'SANTA ROSA (TUMACO - NARIÑO)', 13513.8662109375, 1.5166666507720932, '3845.750000', 'PALMA DE ACEITE', 57.37079298496246),
(52, 'NARIÑO', 52835, 'TUMACO', 1.638, -78.617, 'TABLÓN DULCE LA PAMPA (TUMACO - NARIÑO)', 13513.8662109375, 1.5166666507720932, '3702.800000', 'PALMA DE ACEITE', 57.37079298496246),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'GALVEZ (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.3999999761581396, '4145.000000', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'HUMANES MAR (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.3999999761581414, '6555.000000', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'PAPAYAL 1 (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.3999999761581416, '9503.733333', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'PITAL (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.3999999761581414, '2958.375000', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'PUERTO MERIZALDE (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.3999999761581419, '104897.384615', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'PUNTA BONITA', 15811.275390625, 1.399999976158141, '7646.750000', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'PUNTA BONITA (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.3999999761581412, '8764.000000', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'PUNTA SOLDADO (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.399999976158141, '5544.000000', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'SAN FRANCISCO DE NAYA (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.399999976158141, '8748.500000', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'SAN FRANCISCO NAYA (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.3999999761581419, '9263.388889', 'CAFE', 103.62793064117432),
(76, 'VALLE DEL CAUCA', 76109, 'BUENAVENTURA', 3.613, -77.089, 'SAN ISIDRO - CALIMA (BUENAVENTURA - VALLE DEL CAUCA)', 15811.275390625, 1.3999999761581414, '3524.875000', 'CAFE', 103.62793064117432),
(85, 'CASANARE', 85430, 'TRINIDAD', 5.37, -71.199, 'BOCAS DEL PAUTO (TRINIDAD - CASANARE)', 16339.7587890625, 1.4500000476837165, '18879.900000', 'PALMA DE ACEITE', 297.06593132019043),
(86, 'PUTUMAYO', 86573, 'PUERTO LEGUÍZAMO', 0.062, -75.068, 'PIÑUÑA NEGRO (PUERTO LEGUÍZAMO - PUTUMAYO)', 14172.4912109375, 0.8583333492279052, '5507.020408', 'PALMA DE ACEITE', 65.44999885559082),
(86, 'PUTUMAYO', 86573, 'PUERTO LEGUÍZAMO', 0.062, -75.068, 'PUERTO LEGUÍZAMO (PUERTO LEGUÍZAMO - PUTUMAYO)', 14172.4912109375, 0.858333349227905, '1177804.400000', 'PALMA DE ACEITE', 65.44999885559082),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA', 88001, 'SAN ANDRÉS', 12.546, -81.721, 'SAN ANDRÉS (SAN ANDRÉS - ARCHIPIÉLAGO DE SAN ANDRÉS y PROVIDENCIA )', 19971.466796875, 3.39166665077209, '23887187.500000', NULL, NULL),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA', 88001, 'SAN ANDRÉS', 12.546, -81.721, 'SAN ANDRÉS (SAN ANDRÉS - ARCHIPIÉLAGO DE SAN ANDRÉS Y PROVIDENCIA)', 19971.466796875, 3.3916666507720916, '20736813.538462', NULL, NULL),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA', 88001, 'SAN ANDRÉS', 12.546, -81.721, 'SAN ANDRES (SAN ANDRES - ARCHIPIELAGO DE SAN ANDRES)', 19971.466796875, 3.39166665077209, '22018989.000000', NULL, NULL),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA', 88564, 'PROVIDENCIA', 13.356, -81.377, 'PROVIDENCIA (PROVIDENCIA - ARCHIPIÉLAGO DE SAN ANDRÉS y PROVIDENCIA )', 19511.775390625, 3.5666666030883794, '1476397.000000', NULL, NULL),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA', 88564, 'PROVIDENCIA', 13.356, -81.377, 'PROVIDENCIA (PROVIDENCIA - ARCHIPIÉLAGO DE SAN ANDRÉS Y PROVIDENCIA)', 19511.775390625, 3.5666666030883794, '1358253.482759', NULL, NULL),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA', 88564, 'PROVIDENCIA', 13.356, -81.377, 'PROVIDENCIA (PROVIDENCIA - ARCHIPIELAGO DE SAN ANDRES)', 19511.775390625, 3.56666660308838, '1396928.500000', NULL, NULL),
(91, 'AMAZONAS', 91001, 'LETICIA', -3.527, -70.048, 'LETICIA (LETICIA - AMAZONAS)', 13229.591796875, 1.0833333730697614, '4927862.741379', 'BANANO', 847.1099853515625),
(91, 'AMAZONAS', 91540, 'PUERTO NARIÑO', -3.629, -70.475, 'PUERTO NARIÑO (PUERTO NARIÑO - AMAZONAS)', 13312.9248046875, 1.041666626930239, '149432.340000', 'BANANO', 847.1099853515625),
(91, 'AMAZONAS', 91798, 'TARAPACÁ', -2.449, -70.01, 'TARAPACA (TARAPACA (ANM) - AMAZONAS)', 13408.091796875, 1.0916666984558103, '35667.428571', 'BANANO', 847.1099853515625),
(91, 'AMAZONAS', 91798, 'TARAPACÁ', -2.449, -70.01, 'TARAPACA (TARAPACA - AMAZONAS)', 13408.091796875, 1.09166669845581, '33048.250000', 'BANANO', 847.1099853515625),
(94, 'GUAINÍA', 94001, 'INÍRIDA', 3.322, -68.46, 'CHORRO BOCON (INÍRIDA - GUAINÍA)', 15622.3583984375, 1.0583332777023304, '6058.428571', 'CAÑA PANELERA', 33.65999984741211),
(94, 'GUAINÍA', 94001, 'INÍRIDA', 3.322, -68.46, 'INÍRIDA (INÍRIDA - GUAINÍA)', 15622.3583984375, 1.0583332777023313, '2497007.840000', 'CAÑA PANELERA', 33.65999984741211),
(94, 'GUAINÍA', 94001, 'INÍRIDA', 3.322, -68.46, 'LAGUNA COLORADA ALTA (INÍRIDA - GUAINÍA)', 15622.3583984375, 1.05833327770233, '9138.750000', 'CAÑA PANELERA', 33.65999984741211),
(94, 'GUAINÍA', 94343, 'BARRANCO MINAS', 3.316, -69.402, 'BARRANCO MINAS (BARRANCO MINAS - GUAINÍA)', 15808.6337890625, 1.1416666507720892, '101878.875000', 'CAÑA PANELERA', 33.65999984741211),
(94, 'GUAINÍA', 94343, 'BARRANCO MINAS', 3.316, -69.402, 'BARRANCOMINAS (BARRANCO MINAS - GUAINÍA)', 15808.6337890625, 1.14166665077209, '86010.000000', 'CAÑA PANELERA', 33.65999984741211),
(94, 'GUAINÍA', 94343, 'BARRANCO MINAS', 3.316, -69.402, 'BARRANCOMINAS (BARRANCOMINAS - GUAINÍA)', 15808.6337890625, 1.1416666507720916, '71494.805556', 'CAÑA PANELERA', 33.65999984741211),
(95, 'GUAVIARE', 95200, 'MIRAFLORES', 1.366, -72.021, 'MIRAFLORES (MIRAFLORES - GUAVIARE)', 14879.5166015625, 0.9583333134651183, '113791.880000', 'CAFE', 0),
(97, 'VAUPÉS', 97001, 'MITÚ', 1.018, -70.421, 'MITÚ (MITÚ - VAUPÉS)', 14404.2666015625, 1, '1741992.169492', 'BANANO', 93.5),
(97, 'VAUPÉS', 97161, 'CARURÚ', 1.055, -71.334, 'CARURÚ (CARURÚ - VAUPÉS)', 14620.93359375, 0.975000023841858, '29370.145455', 'BANANO', 93.5),
(97, 'VAUPÉS', 97666, 'TARAIRA', -0.717, -69.911, 'TARAIRA (TARAIRA - VAUPÉS)', 13655.2587890625, 1.0249999761581414, '40970.535714', 'BANANO', 93.5),
(99, 'VICHADA', 99001, 'PUERTO CARREÑO', 5.839, -68.145, 'CASUARITO (PUERTO CARREÑO - VICHADA)', 16512.42578125, 1.5583332777023313, '37979.837838', 'PALMA DE ACEITE', 79.73181358973186),
(99, 'VICHADA', 99001, 'PUERTO CARREÑO', 5.839, -68.145, 'PUERTO CARREÑO (PUERTO CARREÑO - VICHADA)', 16512.42578125, 1.5583332777023313, '3199756.186441', 'PALMA DE ACEITE', 79.73181358973186),
(99, 'VICHADA', 99524, 'LA PRIMAVERA', 5.525, -69.614, 'LA PRIMAVERA (LA PRIMAVERA - VICHADA)', 16338.2666015625, 1.5249999761581419, '492704.184211', 'PALMA DE ACEITE', 79.73181358973186),
(99, 'VICHADA', 99624, 'SANTA ROSALÍA', 4.983, -70.655, 'SANTA ROSALÍA (SANTA ROSALÍA - VICHADA)', 16494.68359375, 1.483333349227906, '201572.911765', 'PALMA DE ACEITE', 79.73181358973186),
(99, 'VICHADA', 99773, 'CUMARIBO', 4.265, -69.525, 'CUMARIBO (CUMARIBO - VICHADA)', 15888.7412109375, 1.291666626930237, '431583.829268', 'PALMA DE ACEITE', 79.73181358973186);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
