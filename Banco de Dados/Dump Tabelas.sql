-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: amiga
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.29-MariaDB

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
-- Table structure for table `adm_administrador`
--

DROP TABLE IF EXISTS `adm_administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_administrador` (
  `adm_id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_email` varchar(100) NOT NULL,
  `adm_senha` varchar(45) NOT NULL,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_administrador`
--

LOCK TABLES `adm_administrador` WRITE;
/*!40000 ALTER TABLE `adm_administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `adm_administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ava_avaliacao`
--

DROP TABLE IF EXISTS `ava_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ava_avaliacao` (
  `ava_id` int(11) NOT NULL,
  `ava_idade` varchar(5) DEFAULT NULL,
  `ava_avaliacao` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ava_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ava_avaliacao`
--

LOCK TABLES `ava_avaliacao` WRITE;
/*!40000 ALTER TABLE `ava_avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `ava_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `con_convidado`
--

DROP TABLE IF EXISTS `con_convidado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `con_convidado` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_nome` varchar(255) NOT NULL,
  `con_rg` varchar(255) NOT NULL,
  `con_parentesco` varchar(255) NOT NULL,
  `con_camiseta` varchar(5) NOT NULL,
  `con_eventoEncontro` tinyint(1) DEFAULT NULL,
  `con_eventoChurrasco` tinyint(1) DEFAULT NULL,
  `con_eventoCompleto` tinyint(1) DEFAULT NULL,
  `mil_cpf` varchar(45) NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `con_convidado`
--

LOCK TABLES `con_convidado` WRITE;
/*!40000 ALTER TABLE `con_convidado` DISABLE KEYS */;
/*!40000 ALTER TABLE `con_convidado` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `ctot_contagemTotal`
--

LOCK TABLES `ctot_contagemTotal` WRITE;
/*!40000 ALTER TABLE `ctot_contagemTotal` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctot_contagemTotal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `for_formulario`
--

DROP TABLE IF EXISTS `for_formulario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `for_formulario` (
  `for_ano` year(4) NOT NULL,
  `for_titulo` varchar(255) DEFAULT NULL,
  `for_subtitulo` varchar(255) DEFAULT NULL,
  `for_endereco` varchar(255) DEFAULT NULL,
  `for_contatos` varchar(255) DEFAULT NULL,
  `for_encontroVeterano` varchar(45) DEFAULT NULL,
  `for_churrascoVeterano` varchar(45) DEFAULT NULL,
  `for_completoVeterano` varchar(45) DEFAULT NULL,
  `for_encontroConvidado` varchar(45) DEFAULT NULL,
  `for_churrascoConvidado` varchar(45) DEFAULT NULL,
  `for_completoConvidado` varchar(45) DEFAULT NULL,
  `for_camisetaExtra` varchar(45) DEFAULT NULL,
  `for_boneExtra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`for_ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `for_formulario`
--

LOCK TABLES `for_formulario` WRITE;
/*!40000 ALTER TABLE `for_formulario` DISABLE KEYS */;
/*!40000 ALTER TABLE `for_formulario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_inscricao`
--

DROP TABLE IF EXISTS `ins_inscricao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_inscricao` (
  `ins_id` int(11) NOT NULL AUTO_INCREMENT,
  `ins_data` date DEFAULT NULL,
  `ins_camisetaExtra` int(5) DEFAULT NULL,
  `ins_boneExtra` int(5) DEFAULT NULL,
  `ins_alojamento` tinyint(1) DEFAULT NULL,
  `mil_cpf` varchar(45) NOT NULL,
  PRIMARY KEY (`ins_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_inscricao`
--

LOCK TABLES `ins_inscricao` WRITE;
/*!40000 ALTER TABLE `ins_inscricao` DISABLE KEYS */;
/*!40000 ALTER TABLE `ins_inscricao` ENABLE KEYS */;
UNLOCK TABLES;

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
  `mil_dataFormatura` date NOT NULL,
  `mil_cpf` varchar(45) DEFAULT NULL,
  `mil_rgMilitar` varchar(45) DEFAULT NULL,
  `mil_rgCivil` varchar(45) DEFAULT NULL,
  `mil_cep` varchar(10) NOT NULL,
  `mil_endereco` varchar(255) NOT NULL,
  `mil_numeroEndereco` varchar(45) DEFAULT NULL,
  `mil_complementoEndereco` varchar(100) DEFAULT NULL,
  `mil_bairro` varchar(100) NOT NULL,
  `mil_cidade` varchar(100) NOT NULL,
  `mil_estado` varchar(45) NOT NULL,
  `mil_telefone` varchar(20) DEFAULT NULL,
  `mil_celular` varchar(20) DEFAULT NULL,
  `mil_email` varchar(100) NOT NULL,
  `mil_camiseta` varchar(5) NOT NULL,
  `mil_eventoEncontro` tinyint(1) DEFAULT NULL,
  `mil_eventoChurrasco` tinyint(1) DEFAULT NULL,
  `mil_eventoCompleto` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`mil_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mil_militar`
--

LOCK TABLES `mil_militar` WRITE;
/*!40000 ALTER TABLE `mil_militar` DISABLE KEYS */;
/*!40000 ALTER TABLE `mil_militar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-21  0:51:30
