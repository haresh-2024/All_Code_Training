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
-- Table structure for table `workExper`
--

DROP TABLE IF EXISTS `workExper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workExper` (
  `Id` int NOT NULL,
  `cname` text,
  `designation` text,
  `fromW` date DEFAULT NULL,
  `toW` date DEFAULT NULL,
  KEY `workExper_ibfk_1` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workExper`
--

LOCK TABLES `workExper` WRITE;
/*!40000 ALTER TABLE `workExper` DISABLE KEYS */;
INSERT INTO `workExper` VALUES (5,'wipro','software devloper','2023-01-01','2024-01-01'),(5,'wipro','software devloper','2023-01-01','2024-01-01'),(10,'wipro','software devloper','2023-01-02','2024-01-01'),(15,'wipro','software devloper','2023-01-02','2024-01-01'),(15,'wipro','software devloper','2023-01-02','2024-01-01'),(20,'wipro','software devloper','2023-01-02','2024-01-01'),(25,'wipro','svd','2023-01-02','2024-02-01'),(25,'wipro','svd','2023-01-02','2024-02-01'),(26,'adsdc','afsf','2020-10-03','2020-10-03'),(26,'google','sfsfs','2020-10-03','2024-02-01'),(170,'google','dacdff','2020-10-03','2024-01-01'),(170,'wipro','dacdff','2023-01-01','2020-10-03'),(171,'google','dacdff','2020-10-03','2024-01-01'),(171,'wipro','dacdff','2023-01-01','2020-10-03'),(172,'google','dacdff','2020-10-03','2024-01-01'),(172,'wipro','dacdff','2023-01-01','2020-10-03'),(173,'google','dacdff','2020-10-03','2024-01-01'),(173,'wipro','dacdff','2023-01-01','2020-10-03'),(174,'google','dacdff','2020-10-03','2024-01-01'),(174,'wipro','dacdff','2023-01-01','2020-10-03'),(175,'google','dacdff','2020-10-03','2024-01-01'),(175,'wipro','dacdff','2023-01-01','2020-10-03'),(176,'google','dacdff','2020-10-03','2024-01-01'),(176,'wipro','dacdff','2023-01-01','2020-10-03'),(177,'google','dacdff','2020-10-03','2024-01-01'),(177,'wipro','dacdff','2023-01-01','2020-10-03'),(178,'google','dacdff','2020-10-03','2024-01-01'),(178,'wipro','dacdff','2023-01-01','2020-10-03'),(179,'google','dacdff','2020-10-03','2024-01-01'),(180,'google','dacdff','2020-10-03','2024-01-01'),(181,'google','dacdff','2020-10-03','2024-01-01'),(182,'google','sdl','2020-10-03','2024-01-01'),(183,'google','sdl','2020-10-03','2024-01-01'),(184,'google','sdl','2020-10-03','2024-01-01'),(185,'google','sdl','2020-10-03','2024-01-01'),(186,'google','sdl','2020-10-03','2024-01-01'),(187,'google','sdl','2020-10-03','2024-01-01'),(188,'google','sdl','2020-10-03','2024-01-01'),(189,'google','sdl','2020-10-03','2024-01-01'),(190,'google','sdl','2020-10-03','2024-01-01'),(191,'google','sdl','2020-10-03','2024-01-01'),(192,'google','sdl','2020-10-03','2024-01-01'),(193,'google','sdl','2020-10-03','2024-01-01'),(194,'google','sdl','2020-10-03','2024-01-01'),(195,'google','sdl','2020-10-03','2024-01-01'),(196,'google','sdl','2020-10-03','2024-01-01'),(197,'google','sdl','2020-10-03','2024-01-01'),(198,'google','sdl','2020-10-03','2024-01-01'),(199,'google','sdl','2020-10-03','2024-01-01'),(200,'google','sdl','2020-10-03','2024-01-01'),(201,'google','sdl','2020-10-03','2024-01-01'),(202,'google','sdl','2020-10-03','2024-01-01'),(203,'google','sdl','2020-10-03','2024-01-01'),(204,'google','sdl','2020-10-03','2024-01-01'),(205,'google','sdl','2020-10-03','2024-01-01'),(206,'google','sdl','2020-10-03','2024-01-01'),(207,'google','sdl','2020-10-03','2024-01-01'),(208,'google','sdl','2020-10-03','2024-01-01'),(209,'google','sdl','2020-10-03','2024-01-01'),(210,'google','sdl','2020-10-03','2024-01-01'),(211,'google','sdl','2020-10-03','2024-01-01'),(212,'google','sdl','2020-10-03','2024-01-01'),(213,'google','sdl','2020-10-03','2024-01-01'),(214,'google','sdl','2020-10-03','2024-01-01'),(215,'google','sdl','2020-10-03','2024-01-01'),(216,'google','sdl','2020-10-03','2024-01-01'),(217,'google','sdl','2020-10-03','2024-01-01'),(218,'google','sdl','2020-10-03','2024-01-01'),(219,'google','sdl','2020-10-03','2024-01-01');
/*!40000 ALTER TABLE `workExper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 17:04:17
