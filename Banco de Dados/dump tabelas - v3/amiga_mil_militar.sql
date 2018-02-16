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

SET @@GLOBAL.GTID_PURGED='992441e9-06b1-11e8-9877-42010a9e0023:1-1378633';

--
-- Table structure for table `mil_militar`
--

DROP TABLE IF EXISTS `mil_militar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mil_militar` (
  `mil_id` int(11) NOT NULL AUTO_INCREMENT,
  `mil_nome` varchar(255) NOT NULL,
  `mil_postoGrad` varchar(100) DEFAULT NULL,
  `mil_nomeGuerra` varchar(100) DEFAULT NULL,
  `mil_dataFormatura` varchar(10) NOT NULL,
  `mil_cpf` varchar(45) DEFAULT NULL,
  `mil_rgMilitar` varchar(45) DEFAULT NULL,
  `mil_rgCivil` varchar(45) DEFAULT NULL,
  `mil_cep` varchar(10) DEFAULT NULL,
  `mil_endereco` varchar(255) DEFAULT NULL,
  `mil_numeroEndereco` varchar(45) DEFAULT NULL,
  `mil_complementoEndereco` varchar(100) DEFAULT NULL,
  `mil_bairro` varchar(100) DEFAULT NULL,
  `mil_cidade` varchar(100) DEFAULT NULL,
  `mil_estado` varchar(45) DEFAULT NULL,
  `mil_telefone` varchar(20) DEFAULT NULL,
  `mil_celular` varchar(20) DEFAULT NULL,
  `mil_email` varchar(100) DEFAULT NULL,
  `mil_camiseta` varchar(5) DEFAULT NULL,
  `mil_eventoEncontro` tinyint(1) DEFAULT NULL,
  `mil_eventoChurrasco` tinyint(1) DEFAULT NULL,
  `mil_eventoCompleto` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`mil_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
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

-- Dump completed on 2018-02-16 17:03:18
