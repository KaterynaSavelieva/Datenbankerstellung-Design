-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: cd
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
-- Table structure for table `titel`
--

DROP TABLE IF EXISTS `titel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titel` (
  `TitelNr` int unsigned NOT NULL,
  `Titel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IntNr` int unsigned NOT NULL,
  `Beurteilung` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`TitelNr`),
  KEY `IntNr` (`IntNr`),
  CONSTRAINT `titel_ibfk_1` FOREIGN KEY (`IntNr`) REFERENCES `interpreten` (`InterpretID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titel`
--

LOCK TABLES `titel` WRITE;
/*!40000 ALTER TABLE `titel` DISABLE KEYS */;
INSERT INTO `titel` VALUES (1,'Yellow',1,4.50),(2,'Trouble',1,4.20),(3,'Rolling in the Deep',2,5.00),(4,'Someone Like You',2,4.80),(5,'Shape of You',3,4.90),(6,'Perfect',3,4.70),(7,'Castle on the Hill',3,4.10),(8,'Sonne',4,4.30),(9,'Ich will',4,4.00),(10,'Links 2 3 4',4,3.80),(11,'Symphony No. 40',5,4.95),(12,'Eine kleine Nachtmusik',5,4.85),(13,'Old Song',1,2.50),(14,'B-Side Track',2,1.80),(50,'Rusty Chains',10,2.20);
/*!40000 ALTER TABLE `titel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-25  9:38:44
