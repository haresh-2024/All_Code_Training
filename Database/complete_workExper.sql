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
  `Id` int DEFAULT NULL,
  `cname` text,
  `designation` text,
  `fromW` text,
  `toW` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workExper`
--

LOCK TABLES `workExper` WRITE;
/*!40000 ALTER TABLE `workExper` DISABLE KEYS */;
INSERT INTO `workExper` VALUES (5,'wipro','software devloper','2023-01-02','2024-01-01'),(5,'wipro','software devloper','2023-01-02','2024-01-01'),(10,'wipro','software devloper','2023-01-02','2024-01-01'),(15,'wipro','software devloper','2023-01-02','2024-01-01'),(15,'wipro','software devloper','2023-01-02','2024-01-01'),(20,'wipro','software devloper','2023-01-02','2024-01-01'),(25,'google','software devloper','2023-01-02','2024-01-01'),(25,'google','software devloper','2023-01-02','2024-01-01'),(31,'wipro','software devloper','2023-01-02','2024-01-01'),(74,'wipro','software devloper','2023-01-02','2024-01-01'),(78,'wipro','software devloper','2023-01-02','2024-01-01'),(79,'wipro','software devloper','2023-01-02','2024-01-01'),(81,'wipro','software devloper','2023-01-02','2024-01-01'),(82,'wipro','software devloper','2023-01-02','2024-01-01'),(83,'wipro','software devloper','2023-01-02','2024-01-01'),(84,'wipro','software devloper','2023-01-02','2024-01-01'),(85,'wipro','software devloper','2023-01-02','2024-01-01'),(86,'sff','afsf','2020-10-03','2024-01-01'),(87,'sff','afsf','2020-10-03','2024-01-01'),(87,'sss','ss','2023-01-01','2024-01-01'),(87,'sss','ss','2023-01-01','2024-01-01'),(92,'sff','afsf','2020-10-03','2024-01-01'),(92,'sss','ss','2023-01-01','2024-01-01'),(92,'sss','ss','2023-01-01','2024-01-01'),(100,'sff','afsf','2020-10-03','2020-10-03'),(100,'sff','afsf','2020-10-03','2020-10-03'),(101,'sff','afsf','2020-10-03','2020-10-03'),(101,'sff','afsf','2020-10-03','2020-10-03'),(102,'sff','afsf','2020-10-03','2020-10-03'),(102,'sff','afsf','2020-10-03','2020-10-03'),(103,'sff','afsf','2020-10-03','2020-10-03'),(103,'sff','afsf','2020-10-03','2020-10-03');
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

-- Dump completed on 2024-03-28 17:58:45
