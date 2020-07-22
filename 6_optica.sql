CREATE DATABASE  IF NOT EXISTS `Optica` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Optica`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 192.168.64.2    Database: Optica
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
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clientes` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion_postal` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `fecha_registro` date NOT NULL,
  `recomendado_por` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente_UNIQUE` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (1,'mariona','08001','665888992','mariona@gmail.com','2007-05-03','jose'),(2,'anee','08002','666001447','anee@gmail.com','2001-03-09','alvaro'),(3,'jose','08003','656773994','jose@hotmail.com','2024-02-13','gabriel'),(4,'alvaro','08004','612208803','alvaro@hotmail.com','2030-12-17','anee'),(5,'gabriel','08005','934553500','gabriel@gmx.com','2024-06-20','mariona');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empleados` (
  `idEmpleado` int(11) NOT NULL,
  `nombre_empleado` varchar(45) NOT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
INSERT INTO `Empleados` VALUES (200,'Gema'),(201,'Nuria'),(202,'Rafael'),(203,'Sandra');
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gafas`
--

DROP TABLE IF EXISTS `Gafas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gafas` (
  `idGafa` int(11) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `graduacion_izq` decimal(10,0) NOT NULL,
  `graduacion_der` decimal(10,0) NOT NULL,
  `tipo_montura` varchar(45) NOT NULL,
  `color_montura` varchar(45) NOT NULL,
  `color_cristal_izq` varchar(45) NOT NULL,
  `color_cristal_der` varchar(45) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `Proveedores_idProveedor` int(11) NOT NULL,
  PRIMARY KEY (`idGafa`),
  KEY `fk_Gafas_Proveedores_idx` (`Proveedores_idProveedor`),
  CONSTRAINT `fk_Gafas_Proveedores` FOREIGN KEY (`Proveedores_idProveedor`) REFERENCES `Proveedores` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gafas`
--

LOCK TABLES `Gafas` WRITE;
/*!40000 ALTER TABLE `Gafas` DISABLE KEYS */;
INSERT INTO `Gafas` VALUES (111,'rayban',25,25,'pasta','negro','negro','negro',115,22),(112,'persol',30,1,'flotante','marron','verde','verde',105,33),(120,'dior',0,0,'metallica','niquel','negro','negro',220,44);
/*!40000 ALTER TABLE `Gafas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Optica`
--

DROP TABLE IF EXISTS `Optica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Optica` (
  `idOptica` int(11) NOT NULL,
  PRIMARY KEY (`idOptica`),
  UNIQUE KEY `idOptica_UNIQUE` (`idOptica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Optica`
--

LOCK TABLES `Optica` WRITE;
/*!40000 ALTER TABLE `Optica` DISABLE KEYS */;
INSERT INTO `Optica` VALUES (111);
/*!40000 ALTER TABLE `Optica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Proveedores` (
  `idProveedor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `calle` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `piso` varchar(45) NOT NULL,
  `puerta` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `direccion_postal` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `fax` varchar(45) NOT NULL,
  `nif` varchar(45) NOT NULL,
  `Optica_idOptica` int(11) NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `idProveedor_UNIQUE` (`idProveedor`),
  UNIQUE KEY `nif_UNIQUE` (`nif`),
  KEY `fk_Proveedores_Optica1_idx` (`Optica_idOptica`),
  CONSTRAINT `fk_Proveedores_Optica1` FOREIGN KEY (`Optica_idOptica`) REFERENCES `Optica` (`idOptica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
INSERT INTO `Proveedores` VALUES (22,'vision','asturias','14','2','2','madrid','08003','espana','91564512','91564513','22334223',111),(33,'veoveo','paredes','128','5','6','barcelona','08004','espana','91564545','92562346','33411334',111),(44,'queves','fontanals','67','1','1','bilbao','09005','espana','92939116','92939117','44244442',111);
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Registro_de_ventas`
--

DROP TABLE IF EXISTS `Registro_de_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registro_de_ventas` (
  `idRegistro_de_venta` int(11) NOT NULL,
  `Optica_idOptica` int(11) NOT NULL,
  `Empleados_idEmpleado` int(11) NOT NULL,
  `Clientes_idCliente` int(11) NOT NULL,
  `Gafas_idGafa` int(11) NOT NULL,
  `Proveedores_idProveedor` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idRegistro_de_venta`),
  UNIQUE KEY `idRegistro_de_venta_UNIQUE` (`idRegistro_de_venta`),
  KEY `fk_Registro_de_ventas_Optica1_idx` (`Optica_idOptica`),
  KEY `fk_Registro_de_ventas_Empleados1_idx` (`Empleados_idEmpleado`),
  KEY `fk_Registro_de_ventas_Clientes1_idx` (`Clientes_idCliente`),
  KEY `fk_Registro_de_ventas_Gafas1_idx` (`Gafas_idGafa`),
  KEY `fk_Registro_de_ventas_Proveedores1_idx` (`Proveedores_idProveedor`),
  CONSTRAINT `fk_Registro_de_ventas_Clientes1` FOREIGN KEY (`Clientes_idCliente`) REFERENCES `Clientes` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registro_de_ventas_Empleados1` FOREIGN KEY (`Empleados_idEmpleado`) REFERENCES `Empleados` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registro_de_ventas_Gafas1` FOREIGN KEY (`Gafas_idGafa`) REFERENCES `Gafas` (`idGafa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registro_de_ventas_Optica1` FOREIGN KEY (`Optica_idOptica`) REFERENCES `Optica` (`idOptica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registro_de_ventas_Proveedores1` FOREIGN KEY (`Proveedores_idProveedor`) REFERENCES `Proveedores` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registro_de_ventas`
--

LOCK TABLES `Registro_de_ventas` WRITE;
/*!40000 ALTER TABLE `Registro_de_ventas` DISABLE KEYS */;
INSERT INTO `Registro_de_ventas` VALUES (222221,111,203,4,112,44,'2018-07-20'),(222222,111,202,5,111,22,'2019-07-20'),(222223,111,200,3,120,33,'2020-07-20');
/*!40000 ALTER TABLE `Registro_de_ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-22 17:42:52
