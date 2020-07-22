CREATE DATABASE  IF NOT EXISTS `stube videos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `stube videos`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 192.168.64.2    Database: stube videos
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
-- Table structure for table `Listado_Publicado`
--

DROP TABLE IF EXISTS `Listado_Publicado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Listado_Publicado` (
  `idListado_Publicado` int(11) NOT NULL,
  `Usuarios_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idListado_Publicado`),
  KEY `fk_Listado_Publicado_Usuarios_idx` (`Usuarios_idUsuario`),
  CONSTRAINT `fk_Listado_Publicado_Usuarios` FOREIGN KEY (`Usuarios_idUsuario`) REFERENCES `Usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listado_Publicado`
--

LOCK TABLES `Listado_Publicado` WRITE;
/*!40000 ALTER TABLE `Listado_Publicado` DISABLE KEYS */;
INSERT INTO `Listado_Publicado` VALUES (1,101),(3,202),(4,202),(2,303);
/*!40000 ALTER TABLE `Listado_Publicado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `idUsuario` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (101,'sergio@gmail.com','1234'),(202,'marco@hotmail.com','123456'),(303,'maria@outlook.com','1234567');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Videos`
--

DROP TABLE IF EXISTS `Videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Videos` (
  `idVideo` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `identificador_video` varchar(45) NOT NULL,
  `Listado_Publicado_idListado_Publicado` int(11) NOT NULL,
  PRIMARY KEY (`idVideo`),
  KEY `fk_Videos_Listado_Publicado1_idx` (`Listado_Publicado_idListado_Publicado`),
  CONSTRAINT `fk_Videos_Listado_Publicado1` FOREIGN KEY (`Listado_Publicado_idListado_Publicado`) REFERENCES `Listado_Publicado` (`idListado_Publicado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Videos`
--

LOCK TABLES `Videos` WRITE;
/*!40000 ALTER TABLE `Videos` DISABLE KEYS */;
INSERT INTO `Videos` VALUES (111,'Portishead invented trip-hop','Portishead  Elysium','https://www.stube.com-12','https://www.youtube.com/watch?v=bp2',1),(222,'Taken from A Moon Shaped Pool','Radiohead  Daydreaming','https://www.stube.com-44','https://www.youtube.com/watch?v=TTAU7lL',2),(333,'Taken from Aphex Twin’s Collapse EP','Aphex Twin  T69 Collapse','https://www.stube.com-09','https://www.youtube.com/watch?v=SqayDn',3),(444,'Taken from Mezzanine','Massive Attack  Black Milk ','https://www.stube.com-02','https://www.youtube.com/watch?v=Bf9AgX4I',3),(555,'From Album Talkie Walkie','Air  Universal Traveler','https://www.stube.com-98','https://www.youtube.com/watch?v=abkIjdT0uTk',4);
/*!40000 ALTER TABLE `Videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-22 17:48:11
