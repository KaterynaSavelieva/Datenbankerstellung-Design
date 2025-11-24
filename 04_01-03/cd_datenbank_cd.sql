CREATE DATABASE  IF NOT EXISTS `cd_datenbank` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cd_datenbank`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: cd_datenbank
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `cd`
--

DROP TABLE IF EXISTS `cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cd` (
  `CDNr` int unsigned NOT NULL AUTO_INCREMENT,
  `CDName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IntNr` int unsigned DEFAULT NULL,
  `MRNr` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CDNr`),
  KEY `IntNr` (`IntNr`),
  KEY `MRNr` (`MRNr`),
  CONSTRAINT `cd_ibfk_1` FOREIGN KEY (`IntNr`) REFERENCES `interpreten` (`InterpretID`),
  CONSTRAINT `cd_ibfk_2` FOREIGN KEY (`MRNr`) REFERENCES `musikrichtung` (`MRID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd`
--

LOCK TABLES `cd` WRITE;
/*!40000 ALTER TABLE `cd` DISABLE KEYS */;
INSERT INTO `cd` VALUES (1,'Golden Melodies',1,1),(2,'Night Waves',2,7),(3,'Electric Heart',3,13),(4,'Skyline Dreams',4,11),(5,'Thunder Beats',5,2),(6,'Feuer & Flamme',6,3),(7,'Black Strings',7,9),(8,'Midnight Stories',8,14),(9,'Urban Nights',9,4),(10,'Broken Silence',10,18),(11,'Flow State',11,5),(12,'Shining Star',12,1),(13,'Revival',13,4),(14,'Energy Rush',14,7),(15,'Wild Motion',15,2),(16,'City Lights',16,11),(17,'Sugar Waves',17,1),(18,'Blue Horizon',18,10),(19,'Dark Bloom',19,18),(20,'Pure Emotion',20,19);
/*!40000 ALTER TABLE `cd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-24 11:00:24
