CREATE DATABASE  IF NOT EXISTS `instituto` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `instituto`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: instituto
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id_alumno` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `cedula_identidad` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  `barrios_id_barrio` int NOT NULL,
  `ciudades_id_ciudad` int NOT NULL,
  `nacionalidades_id_nacionalidad` int NOT NULL,
  `sexos_id_sexo` int NOT NULL,
  PRIMARY KEY (`id_alumno`,`barrios_id_barrio`,`ciudades_id_ciudad`,`nacionalidades_id_nacionalidad`,`sexos_id_sexo`),
  KEY `fk_alumnos_barrios` (`barrios_id_barrio`),
  KEY `fk_alumnos_ciudades1` (`ciudades_id_ciudad`),
  KEY `fk_alumnos_nacionalidades1` (`nacionalidades_id_nacionalidad`),
  KEY `fk_alumnos_sexos1` (`sexos_id_sexo`),
  CONSTRAINT `fk_alumnos_barrios` FOREIGN KEY (`barrios_id_barrio`) REFERENCES `barrios` (`id_barrio`),
  CONSTRAINT `fk_alumnos_ciudades1` FOREIGN KEY (`ciudades_id_ciudad`) REFERENCES `ciudades` (`id_ciudad`),
  CONSTRAINT `fk_alumnos_nacionalidades1` FOREIGN KEY (`nacionalidades_id_nacionalidad`) REFERENCES `nacionalidades` (`id_nacionalidad`),
  CONSTRAINT `fk_alumnos_sexos1` FOREIGN KEY (`sexos_id_sexo`) REFERENCES `sexos` (`id_sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barrios`
--

DROP TABLE IF EXISTS `barrios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barrios` (
  `id_barrio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id_barrio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barrios`
--

LOCK TABLES `barrios` WRITE;
/*!40000 ALTER TABLE `barrios` DISABLE KEYS */;
/*!40000 ALTER TABLE `barrios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudades` (
  `id_ciudad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `codigo_postal` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacionalidades`
--

DROP TABLE IF EXISTS `nacionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nacionalidades` (
  `id_nacionalidad` int NOT NULL AUTO_INCREMENT,
  `gentilicio` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id_nacionalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalidades`
--

LOCK TABLES `nacionalidades` WRITE;
/*!40000 ALTER TABLE `nacionalidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `nacionalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexos`
--

DROP TABLE IF EXISTS `sexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexos` (
  `id_sexo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id_sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexos`
--

LOCK TABLES `sexos` WRITE;
/*!40000 ALTER TABLE `sexos` DISABLE KEYS */;
/*!40000 ALTER TABLE `sexos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-15 20:46:27
