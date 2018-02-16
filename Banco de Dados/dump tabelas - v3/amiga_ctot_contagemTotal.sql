CREATE DATABASE  IF NOT EXISTS `amiga` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `amiga`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 35.198.39.226    Database: amiga
-- ------------------------------------------------------
-- Server version	5.7.14-google-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='992441e9-06b1-11e8-9877-42010a9e0023:1-1378632';

--
-- Table structure for table `ctot_contagemTotal`
--

DROP TABLE IF EXISTS `ctot_contagemTotal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctot_contagemTotal` (
  `ctot_ano` year(4) NOT NULL,
  `ctot_eventoEncontroVeterano` int(10) DEFAULT NULL,
  `ctot_eventoChurrascoVeterano` int(10) DEFAULT NULL,
  `ctot_eventoCompletoVeterano` int(10) DEFAULT NULL,
  `ctot_eventoEncontroConvidado` int(10) DEFAULT NULL,
  `ctot_eventoChurrascoConvidado` int(10) DEFAULT NULL,
  `ctot_eventoCompletoConvidado` int(10) DEFAULT NULL,
  `ctot_camisetap` int(10) DEFAULT NULL,
  `ctot_camisetam` int(10) DEFAULT NULL,
  `ctot_camisetag` int(10) DEFAULT NULL,
  `ctot_camisetagg` int(10) DEFAULT NULL,
  `ctot_camisetaxg` int(10) DEFAULT NULL,
  `ctot_camisetaxgg` int(10) DEFAULT NULL,
  `ctot_bone` int(10) DEFAULT NULL,
  PRIMARY KEY (`ctot_ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-16 17:03:17
