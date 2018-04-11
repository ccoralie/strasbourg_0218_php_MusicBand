-- MySQL dump 10.13  Distrib 5.6.38, for osx10.9 (x86_64)
--
-- Host: localhost    Database: Musicband
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `Album`
--

DROP TABLE IF EXISTS `Album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Album` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `album` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Article`
--

DROP TABLE IF EXISTS `Article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `article` text,
  `titre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Article`
--

LOCK TABLES `Article` WRITE;
/*!40000 ALTER TABLE `Article` DISABLE KEYS */;
/*!40000 ALTER TABLE `Article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categorie`
--

DROP TABLE IF EXISTS `Categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categorie` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorie`
--

LOCK TABLES `Categorie` WRITE;
/*!40000 ALTER TABLE `Categorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Chanson`
--

DROP TABLE IF EXISTS `Chanson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chanson` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `chanson` varchar(45) DEFAULT NULL,
  `album_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `chanson_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `Album` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chanson`
--

LOCK TABLES `Chanson` WRITE;
/*!40000 ALTER TABLE `Chanson` DISABLE KEYS */;
/*!40000 ALTER TABLE `Chanson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Goodies`
--

DROP TABLE IF EXISTS `Goodies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Goodies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `goodies` varchar(45) DEFAULT NULL,
  `prix` decimal(8,2) NOT NULL,
  `reference` varchar(45) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categorie_id` (`categorie_id`),
  CONSTRAINT `goodies_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `Categorie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Goodies`
--

LOCK TABLES `Goodies` WRITE;
/*!40000 ALTER TABLE `Goodies` DISABLE KEYS */;
/*!40000 ALTER TABLE `Goodies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Newsletter`
--

DROP TABLE IF EXISTS `Newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Newsletter` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `mail` varchar(320) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Newsletter`
--

LOCK TABLES `Newsletter` WRITE;
/*!40000 ALTER TABLE `Newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `Newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stock`
--

DROP TABLE IF EXISTS `Stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stock` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `stock` int(20) DEFAULT NULL,
  `reference_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reference_id` (`reference_id`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `Goodies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stock`
--

LOCK TABLES `Stock` WRITE;
/*!40000 ALTER TABLE `Stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Worldtour`
--

DROP TABLE IF EXISTS `Worldtour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Worldtour` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `dateconcert` date DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `salle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Worldtour`
--

LOCK TABLES `Worldtour` WRITE;
/*!40000 ALTER TABLE `Worldtour` DISABLE KEYS */;
/*!40000 ALTER TABLE `Worldtour` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-11 16:20:02
