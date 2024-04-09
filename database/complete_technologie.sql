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
-- Table structure for table `technologie`
--

DROP TABLE IF EXISTS `technologie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technologie` (
  `Id` int NOT NULL,
  `technologies` text,
  `level` text,
  KEY `technologie_ibfk_1` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technologie`
--

LOCK TABLES `technologie` WRITE;
/*!40000 ALTER TABLE `technologie` DISABLE KEYS */;
INSERT INTO `technologie` VALUES (2,'mysql','Beginer'),(3,'mysql','Beginer'),(4,'mysql','Beginer'),(5,'mysql','Mediater'),(6,'mysql','Beginer'),(7,'mysql','Beginer'),(8,'mysql','Beginer'),(9,'mysql','Beginer'),(10,'mysql','Expert'),(11,'mysql','Beginer'),(12,'mysql','Beginer'),(13,'mysql','Beginer'),(14,'mysql','Beginer'),(15,'mysql','Expert'),(16,'mysql','Beginer'),(17,'mysql','Beginer'),(18,'mysql','Mediater'),(19,'mysql','Beginer'),(20,'mysql','Beginer'),(21,'mysql','Beginer'),(23,'mysql','Beginer'),(24,'mysql','Beginer'),(25,'mysql','Expert'),(2,'laravel','Beginer'),(3,'laravel','Beginer'),(4,'laravel','Beginer'),(5,'laravel','Mediater'),(6,'laravel','Beginer'),(7,'laravel','Beginer'),(8,'laravel','Beginer'),(9,'laravel','Beginer'),(10,'laravel','Expert'),(11,'laravel','Beginer'),(12,'laravel','Beginer'),(13,'laravel','Beginer'),(14,'laravel','Beginer'),(15,'laravel','Mediater'),(16,'laravel','Beginer'),(17,'laravel','Beginer'),(18,'laravel','Mediater'),(19,'laravel','Beginer'),(20,'laravel','Beginer'),(21,'laravel','Beginer'),(23,'laravel','Beginer'),(24,'laravel','Mediater'),(25,'laravel','Mediater'),(2,'oracle','Beginer'),(3,'oracle','Beginer'),(4,'oracle','Beginer'),(5,'oracle','Mediater'),(6,'oracle','Beginer'),(7,'oracle','Beginer'),(8,'oracle','Beginer'),(9,'oracle','Beginer'),(10,'oracle','Expert'),(11,'oracle','Beginer'),(12,'oracle','Beginer'),(13,'oracle','Beginer'),(14,'oracle','Beginer'),(15,'oracle','Mediater'),(16,'oracle','Beginer'),(17,'oracle','Beginer'),(18,'oracle','Mediater'),(19,'oracle','Beginer'),(20,'oracle','Expert'),(21,'oracle','Beginer'),(23,'oracle','Beginer'),(24,'oracle','Beginer'),(25,'oracle','Mediater'),(2,'php','Beginer'),(3,'php','Beginer'),(4,'php','Beginer'),(5,'php','Mediater'),(6,'php','Beginer'),(7,'php','Beginer'),(8,'php','Beginer'),(9,'php','Beginer'),(10,'php','Expert'),(11,'php','Beginer'),(12,'php','Beginer'),(13,'php','Beginer'),(14,'php','Beginer'),(15,'php','Mediater'),(16,'php','Beginer'),(17,'php','Beginer'),(18,'php','Mediater'),(19,'php','Beginer'),(20,'php','Expert'),(21,'php','Beginer'),(22,'php','Beginer'),(23,'php','Beginer'),(24,'php','Mediater'),(25,'php','Beginer'),(22,'oracle','Beginer'),(22,'mysql','Expert'),(22,'laravel','Mediater'),(26,'php','Mediater'),(26,'larvel','Mediater'),(26,'mysql','Expert'),(26,'oracle','Beginer'),(170,'php','Beginer'),(170,'larvel','Expert'),(170,'mysql','Mediater'),(170,'oracle','Beginer'),(171,'php','Beginer'),(171,'larvel','Expert'),(171,'mysql','Mediater'),(171,'oracle','Beginer'),(172,'php','Beginer'),(172,'larvel','Expert'),(172,'mysql','Mediater'),(172,'oracle','Beginer'),(173,'php','Beginer'),(173,'larvel','Expert'),(173,'mysql','Mediater'),(173,'oracle','Beginer'),(174,'php','Beginer'),(174,'larvel','Expert'),(174,'mysql','Mediater'),(174,'oracle','Beginer'),(175,'php','Beginer'),(175,'larvel','Expert'),(175,'mysql','Mediater'),(175,'oracle','Beginer'),(176,'php','Beginer'),(176,'larvel','Expert'),(176,'mysql','Mediater'),(176,'oracle','Beginer'),(177,'php','Beginer'),(177,'larvel','Expert'),(177,'mysql','Mediater'),(177,'oracle','Beginer'),(178,'php','Beginer'),(178,'larvel','Expert'),(178,'mysql','Mediater'),(178,'oracle','Beginer'),(179,'php','Beginer'),(179,'larvel','Expert'),(179,'mysql','Mediater'),(179,'oracle','Beginer'),(180,'php','Beginer'),(180,'larvel','Expert'),(180,'mysql','Mediater'),(180,'oracle','Beginer'),(181,'php','Beginer'),(181,'larvel','Expert'),(181,'mysql','Mediater'),(181,'oracle','Beginer'),(183,'php','Beginer'),(184,'php','Beginer'),(185,'php','Beginer'),(186,'php','Beginer'),(187,'php','Beginer'),(188,'php','Beginer'),(189,'php','Beginer'),(190,'php','Beginer'),(191,'php','Beginer'),(192,'php','Beginer'),(193,'php','Beginer'),(194,'php','Beginer'),(195,'php','Beginer'),(196,'php','Beginer'),(197,'php','Beginer'),(198,'php','Beginer'),(199,'php','Beginer'),(200,'php','Beginer'),(201,'php','Beginer'),(202,'php','Beginer'),(203,'php','Beginer'),(204,'php','Beginer'),(205,'php','Beginer'),(206,'php','Beginer'),(207,'php','Beginer'),(208,'php','Beginer'),(209,'php','Beginer'),(210,'php','Beginer'),(211,'php','Beginer'),(212,'php','Beginer'),(213,'php','Beginer'),(214,'php','Beginer'),(215,'php','Beginer'),(216,'php','Beginer'),(217,'php','Beginer'),(218,'php','Beginer'),(219,'php','Beginer');
/*!40000 ALTER TABLE `technologie` ENABLE KEYS */;
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
