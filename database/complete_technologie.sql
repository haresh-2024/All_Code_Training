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
INSERT INTO `technologie` VALUES (1,'mysql','mideator'),(2,'mysql','beginer'),(3,'mysql','beginer'),(4,'mysql','beginer'),(5,'mysql','mideator'),(6,'mysql','beginer'),(7,'mysql','beginer'),(8,'mysql','beginer'),(9,'mysql','beginer'),(10,'mysql','expert'),(11,'mysql','beginer'),(12,'mysql','beginer'),(13,'mysql','beginer'),(14,'mysql','beginer'),(15,'mysql','expert'),(16,'mysql','beginer'),(17,'mysql','beginer'),(18,'mysql','mideator'),(19,'mysql','beginer'),(20,'mysql','Beginer'),(21,'mysql','beginer'),(23,'mysql','beginer'),(24,'mysql','Beginer'),(25,'mysql','Mediater'),(1,'laravel','mideator'),(2,'laravel','beginer'),(3,'laravel','beginer'),(4,'laravel','beginer'),(5,'laravel','mideator'),(6,'laravel','beginer'),(7,'laravel','beginer'),(8,'laravel','beginer'),(9,'laravel','beginer'),(10,'laravel','expert'),(11,'laravel','beginer'),(12,'laravel','beginer'),(13,'laravel','beginer'),(14,'laravel','beginer'),(15,'laravel','mideator'),(16,'laravel','beginer'),(17,'laravel','beginer'),(18,'laravel','mideator'),(19,'laravel','beginer'),(20,'laravel','Beginer'),(21,'laravel','beginer'),(23,'laravel','beginer'),(24,'laravel','Mediater'),(25,'laravel','mideator'),(1,'oracle','mideator'),(2,'oracle','beginer'),(3,'oracle','beginer'),(4,'oracle','beginer'),(5,'oracle','mideator'),(6,'oracle','beginer'),(7,'oracle','beginer'),(8,'oracle','beginer'),(9,'oracle','beginer'),(10,'oracle','expert'),(11,'oracle','beginer'),(12,'oracle','beginer'),(13,'oracle','beginer'),(14,'oracle','beginer'),(15,'oracle','mideator'),(16,'oracle','beginer'),(17,'oracle','beginer'),(18,'oracle','mideator'),(19,'oracle','beginer'),(20,'oracle','Expert'),(21,'oracle','beginer'),(23,'oracle','beginer'),(24,'oracle','Beginer'),(25,'oracle','Beginer'),(1,'php','mideator'),(2,'php','beginer'),(3,'php','beginer'),(4,'php','beginer'),(5,'php','mideator'),(6,'php','beginer'),(7,'php','beginer'),(8,'php','beginer'),(9,'php','beginer'),(10,'php','expert'),(11,'php','beginer'),(12,'php','beginer'),(13,'php','beginer'),(14,'php','beginer'),(15,'php','mideator'),(16,'php','beginer'),(17,'php','beginer'),(18,'php','mideator'),(19,'php','beginer'),(20,'php','Expert'),(21,'php','beginer'),(22,'php','beginer'),(23,'php','beginer'),(24,'php','Mediater'),(25,'php','Expert'),(22,'oracle','beginer'),(22,'mysql','expert'),(22,'laravel','mideator'),(101,'php','Mediater'),(102,'php','Mediater'),(103,'php','Mediater'),(104,'php','Mediater');
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

-- Dump completed on 2024-03-29 11:12:42
