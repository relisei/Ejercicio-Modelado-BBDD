CREATE DATABASE  IF NOT EXISTS `aviones3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `aviones3`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 192.168.64.2    Database: aviones3
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
-- Table structure for table `Asientos`
--

DROP TABLE IF EXISTS `Asientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Asientos` (
  `idAsientos` int(11) NOT NULL,
  `avio_id` int(11) DEFAULT NULL,
  `Aviones_idAvion` int(11) NOT NULL,
  PRIMARY KEY (`idAsientos`),
  UNIQUE KEY `idAsientos_UNIQUE` (`idAsientos`),
  UNIQUE KEY `avio_id_UNIQUE` (`avio_id`),
  KEY `fk_Asientos_Aviones_idx` (`Aviones_idAvion`),
  CONSTRAINT `fk_Asientos_Aviones` FOREIGN KEY (`Aviones_idAvion`) REFERENCES `Aviones` (`idAvion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asientos`
--

LOCK TABLES `Asientos` WRITE;
/*!40000 ALTER TABLE `Asientos` DISABLE KEYS */;
INSERT INTO `Asientos` VALUES (126,12,1),(260,56,3),(287,34,2);
/*!40000 ALTER TABLE `Asientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aviones`
--

DROP TABLE IF EXISTS `Aviones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aviones` (
  `idAvion` int(11) NOT NULL,
  `Modelo_idModelo` varchar(45) NOT NULL,
  `capacidad` int(11) NOT NULL,
  PRIMARY KEY (`idAvion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aviones`
--

LOCK TABLES `Aviones` WRITE;
/*!40000 ALTER TABLE `Aviones` DISABLE KEYS */;
INSERT INTO `Aviones` VALUES (1,'BOEING 373',130),(2,'AIRBUS 340',290),(3,'AIRBUS 330',270);
/*!40000 ALTER TABLE `Aviones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-22 17:44:25
