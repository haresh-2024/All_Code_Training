-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: complete
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

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
-- Table structure for table `languageKnown`
--

DROP TABLE IF EXISTS `languageKnown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languageKnown` (
  `Id` int NOT NULL,
  `language` text,
  `lread` text,
  `lwrite` text,
  `speak` text,
  KEY `languageKnown_ibfk_1` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languageKnown`
--

LOCK TABLES `languageKnown` WRITE;
/*!40000 ALTER TABLE `languageKnown` DISABLE KEYS */;
INSERT INTO `languageKnown` VALUES (2,'English','y','y','y'),(3,'English','y','y','y'),(4,'English','n','y','y'),(5,'English','y','y','y'),(6,'English','y','y','n'),(7,'English','y','y','y'),(8,'English','y','y','y'),(9,'English','y','y','y'),(10,'English','y','y','y'),(11,'English','y','y','y'),(12,'English','y','y','y'),(13,'English','y','y','y'),(14,'English','y','y','n'),(15,'English','y','y','y'),(16,'English','y','y','y'),(17,'English','y','y','y'),(18,'English','y','y','y'),(19,'English','y','y','y'),(20,'English','y','y','y'),(21,'English','y','y','y'),(22,'English','y','y','y'),(23,'English','y','y','y'),(24,'English','y','y','y'),(25,'English','y','y','y'),(2,'Hindi','y','y','y'),(3,'Hindi','y','y','y'),(4,'Hindi','y','y','y'),(5,'Hindi','n','y','y'),(6,'Hindi','y','y','y'),(7,'Hindi','y','y','y'),(8,'Hindi','y','n','y'),(9,'Hindi','y','y','y'),(10,'Hindi','y','y','y'),(11,'Hindi','y','y','y'),(12,'Hindi','y','y','n'),(13,'Hindi','y','y','y'),(14,'Hindi','y','y','y'),(15,'Hindi','y','y','y'),(16,'Hindi','y','n','y'),(17,'Hindi','y','y','y'),(18,'Hindi','y','y','y'),(19,'Hindi','y','y','y'),(20,'Hindi','y','y','y'),(21,'Hindi','n','y','y'),(22,'Hindi','y','y','y'),(23,'Hindi','y','n','y'),(24,'Hindi','y','y','y'),(25,'Hindi','y','y','y'),(2,'Gujarati','y','y','y'),(3,'Gujarati','y','y','y'),(4,'Gujarati','y','y','y'),(5,'Gujarati','y','y','y'),(6,'Gujarati','y','y','y'),(7,'Gujarati','y','y','y'),(8,'Gujarati','y','y','y'),(9,'Gujarati','y','y','y'),(10,'Gujarati','y','y','y'),(11,'Gujarati','y','y','y'),(12,'Gujarati','y','y','y'),(13,'Gujarati','y','y','y'),(14,'Gujarati','y','y','y'),(15,'Gujarati','y','y','y'),(16,'Gujarati','y','y','y'),(17,'Gujarati','y','y','y'),(18,'Gujarati','y','y','y'),(19,'Gujarati','y','y','y'),(20,'Gujarati','y','y','y'),(21,'Gujarati','y','y','y'),(22,'Gujarati','y','y','y'),(23,'Gujarati','y','y','y'),(24,'Gujarati','y','y','y'),(25,'Gujarati','y','y','y'),(26,'Gujarati','y','n','y'),(26,'Hindi','y','y','y'),(26,'English','y','y','y'),(170,'Hindi','y','y','y'),(170,'Gujarati','y','y','y'),(170,'English','y','y','y'),(171,'Hindi','y','y','y'),(171,'Gujarati','y','y','y'),(171,'English','y','y','y'),(172,'Hindi','y','y','y'),(172,'Gujarati','y','y','y'),(172,'English','y','y','y'),(173,'Hindi','y','y','y'),(173,'Gujarati','y','y','y'),(173,'English','y','y','y'),(174,'Hindi','y','y','y'),(174,'Gujarati','y','y','y'),(174,'English','y','y','y'),(175,'Hindi','y','y','y'),(175,'Gujarati','y','y','y'),(175,'English','y','y','y'),(176,'Hindi','y','y','y'),(176,'Gujarati','y','y','y'),(176,'English','y','y','y'),(177,'Hindi','y','y','y'),(177,'Gujarati','y','y','y'),(177,'English','y','y','y'),(178,'Hindi','y','y','y'),(178,'Gujarati','y','y','y'),(178,'English','y','y','y'),(179,'Hindi','y','y','y'),(179,'Gujarati','y','y','y'),(179,'English','y','y','y'),(180,'Hindi','y','y','y'),(180,'Gujarati','y','y','y'),(180,'English','y','y','y'),(181,'Hindi','y','y','y'),(181,'Gujarati','y','y','y'),(181,'English','y','y','y'),(182,'Hindi','y','y','y'),(183,'Hindi','y','y','y'),(184,'Hindi','y','y','y'),(185,'Hindi','y','y','y'),(186,'Hindi','y','y','y'),(187,'Hindi','y','y','y'),(188,'Hindi','y','y','y'),(189,'Hindi','y','y','y'),(190,'Hindi','y','y','y'),(191,'Hindi','y','y','y'),(192,'Hindi','y','y','y'),(193,'Hindi','y','y','y'),(194,'Hindi','y','y','y'),(195,'Hindi','y','y','y'),(196,'Hindi','y','y','y'),(197,'Hindi','y','y','y'),(198,'Hindi','y','y','y'),(199,'Hindi','y','y','y'),(200,'Hindi','y','y','y'),(201,'Hindi','y','y','y'),(202,'Hindi','y','y','y'),(203,'Hindi','y','y','y'),(204,'Hindi','y','y','y'),(205,'Hindi','y','y','y'),(206,'Hindi','y','y','y'),(207,'Hindi','y','y','y'),(208,'Hindi','y','y','y'),(209,'Hindi','y','y','y'),(210,'Hindi','y','y','y'),(211,'Hindi','y','y','y'),(212,'Hindi','y','y','y'),(213,'Hindi','y','y','y'),(214,'Hindi','y','y','y'),(215,'Hindi','y','y','y'),(216,'Hindi','y','y','y'),(217,'Hindi','y','y','y'),(218,'Hindi','y','y','y'),(219,'Hindi','y','y','y');
/*!40000 ALTER TABLE `languageKnown` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 17:04:16
