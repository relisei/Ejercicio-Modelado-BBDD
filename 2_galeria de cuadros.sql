CREATE DATABASE  IF NOT EXISTS `galeria de cuadros` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `galeria de cuadros`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 192.168.64.2    Database: galeria de cuadros
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Compradores`
--

DROP TABLE IF EXISTS `Compradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Compradores` (
  `idComprador` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dni` varchar(45) NOT NULL,
  PRIMARY KEY (`idComprador`),
  UNIQUE KEY `idComprador_UNIQUE` (`idComprador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compradores`
--

LOCK TABLES `Compradores` WRITE;
/*!40000 ALTER TABLE `Compradores` DISABLE KEYS */;
INSERT INTO `Compradores` VALUES (130,'Josep','Perez','31859483'),(134,'Leonardo','Davinci','30673503');
/*!40000 ALTER TABLE `Compradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cuadros`
--

DROP TABLE IF EXISTS `Cuadros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuadros` (
  `idCuadro` int(11) NOT NULL,
  `precio` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `autor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCuadro`),
  UNIQUE KEY `idCuadro_UNIQUE` (`idCuadro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuadros`
--

LOCK TABLES `Cuadros` WRITE;
/*!40000 ALTER TABLE `Cuadros` DISABLE KEYS */;
INSERT INTO `Cuadros` VALUES (19953519,'3400','marta snull'),(19983001,'350','carlos maria'),(20030954,'2000','antonio baldoni');
/*!40000 ALTER TABLE `Cuadros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegistroVentas`
--

DROP TABLE IF EXISTS `RegistroVentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RegistroVentas` (
  `idRegistroVenta` int(11) NOT NULL,
  `Cuadros_idCuadro` int(11) NOT NULL,
  `Compradores_idComprador` int(11) NOT NULL,
  PRIMARY KEY (`idRegistroVenta`),
  KEY `fk_RegistroVentas_Cuadros_idx` (`Cuadros_idCuadro`),
  KEY `fk_RegistroVentas_Compradores1_idx` (`Compradores_idComprador`),
  CONSTRAINT `fk_RegistroVentas_Compradores1` FOREIGN KEY (`Compradores_idComprador`) REFERENCES `Compradores` (`idComprador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_RegistroVentas_Cuadros` FOREIGN KEY (`Cuadros_idCuadro`) REFERENCES `Cuadros` (`idCuadro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegistroVentas`
--

LOCK TABLES `RegistroVentas` WRITE;
/*!40000 ALTER TABLE `RegistroVentas` DISABLE KEYS */;
INSERT INTO `RegistroVentas` VALUES (302020,19953519,130),(305620,19983001,134),(308720,20030954,130);
/*!40000 ALTER TABLE `RegistroVentas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-22 17:45:18
