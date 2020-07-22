CREATE DATABASE  IF NOT EXISTS `redsocial` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `redsocial`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 192.168.64.2    Database: redsocial
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
-- Table structure for table `Amigos`
--

DROP TABLE IF EXISTS `Amigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Amigos` (
  `idAmigo` int(11) NOT NULL,
  `amigo_id` varchar(45) NOT NULL,
  PRIMARY KEY (`idAmigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Amigos`
--

LOCK TABLES `Amigos` WRITE;
/*!40000 ALTER TABLE `Amigos` DISABLE KEYS */;
INSERT INTO `Amigos` VALUES (220,'Andreu'),(221,'Ferran'),(222,'Carina'),(223,'Andrea');
/*!40000 ALTER TABLE `Amigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Amigos_has_Amigos`
--

DROP TABLE IF EXISTS `Amigos_has_Amigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Amigos_has_Amigos` (
  `Usuario_idUsuario` int(11) NOT NULL,
  `Amigos_idAmigo` int(11) NOT NULL,
  `como_se_conocieron` varchar(45) NOT NULL,
  KEY `fk_Amigos_has_Amigos_Usuario1_idx` (`Usuario_idUsuario`),
  KEY `fk_Amigos_has_Amigos_Amigos1_idx` (`Amigos_idAmigo`),
  CONSTRAINT `fk_Amigos_has_Amigos_Amigos1` FOREIGN KEY (`Amigos_idAmigo`) REFERENCES `Amigos` (`idAmigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Amigos_has_Amigos_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Amigos_has_Amigos`
--

LOCK TABLES `Amigos_has_Amigos` WRITE;
/*!40000 ALTER TABLE `Amigos_has_Amigos` DISABLE KEYS */;
INSERT INTO `Amigos_has_Amigos` VALUES (1,220,'museo'),(2,223,'playa'),(3,221,'voleyball'),(4,222,'surf');
/*!40000 ALTER TABLE `Amigos_has_Amigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fotografias`
--

DROP TABLE IF EXISTS `Fotografias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fotografias` (
  `idFotografia` int(11) NOT NULL,
  `id_foto` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idFotografia`),
  KEY `fk_Fotografias_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Fotografias_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fotografias`
--

LOCK TABLES `Fotografias` WRITE;
/*!40000 ALTER TABLE `Fotografias` DISABLE KEYS */;
INSERT INTO `Fotografias` VALUES (1111,'amanecer','badalona','https://photo1111.com/new',1),(2222,'palmera','ocata','https://photo2222.com/new',2),(3333,'gato_botero','raval','https://photo3333.com/new',3),(4444,'long_board','barceloneta','https://photo4444.com/new',4);
/*!40000 ALTER TABLE `Fotografias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `idUsuario` int(11) NOT NULL,
  `usuario_id` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `usuario_id_UNIQUE` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'1','juan','juan@gmail.com','123'),(2,'2','maria','maria@hotmail.com','456'),(3,'3','pedro','pedro@hotmail.com','789'),(4,'4','ana','ana@gmx.com','101');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-22 17:46:05
