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
-- Table structure for table `preferance`
--

DROP TABLE IF EXISTS `preferance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferance` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `location` text,
  `notice` int DEFAULT NULL,
  `ectc` text,
  `cctc` text,
  `department` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferance`
--

LOCK TABLES `preferance` WRITE;
/*!40000 ALTER TABLE `preferance` DISABLE KEYS */;
INSERT INTO `preferance` VALUES (2,'Ahmedabad',2,'5','0','Web Designer'),(3,'Ahmedabad',2,'3','0','Web Designer'),(4,'Ahmedabad',2,'3.5','0','Web Designer'),(5,'Ahmedabad',2,'6','5.5','Web Designer'),(6,'Ahmedabad',2,'3.7','0','Web Designer'),(7,'Ahmedabad',2,'3.8','0','Web Designer'),(8,'Ahmedabad',2,'3.9','0','Web Designer'),(9,'Ahmedabad',2,'4','0','Web Designer'),(10,'Ahmedabad',2,'5','4.5','Web Designer'),(11,'Ahmedabad',2,'4.9','0','Web Designer'),(12,'Ahmedabad',2,'4.7','0','Web Designer'),(13,'Ahmedabad',2,'4.6','0','Web Designer'),(14,'Ahmedabad',2,'4.5','0','Web Designer'),(15,'Ahmedabad',2,'7','6','Web Designer'),(16,'Ahmedabad',2,'4.4','0','Web Designer'),(17,'Ahmedabad',2,'4.3','0','Web Designer'),(18,'Ahmedabad',2,'4.4','0','Web Designer'),(19,'Ahmedabad',2,'4.2','0','Web Designer'),(20,'Ahmedabad',2,'3','3','Software Devloper'),(21,'Ahmedabad',2,'3.9','0','Web Designer'),(22,'Ahmedabad',2,'3.8','0','Web Designer'),(23,'Ahmedabad',2,'3.6','0','Web Designer'),(24,'Ahmedabad',2,'3.5','0','Web Designer'),(25,'Surat',1,'4.8','4.2','Web Designer'),(26,'Ahmedabad',1,'1','2','Software Devloper'),(170,'Ahmedabad',5,'2','1','Software Devloper'),(171,'Ahmedabad',5,'2','1','Software Devloper'),(172,'Ahmedabad',5,'2','1','Software Devloper'),(173,'Ahmedabad',5,'2','1','Software Devloper'),(174,'Ahmedabad',5,'2','1','Software Devloper'),(175,'Ahmedabad',5,'2','1','Software Devloper'),(176,'Ahmedabad',5,'2','1','Software Devloper'),(177,'Ahmedabad',5,'2','1','Software Devloper'),(178,'Ahmedabad',5,'2','1','Software Devloper'),(179,'Ahmedabad',5,'2','1','Software Devloper'),(180,'Ahmedabad',5,'2','1','Software Devloper'),(181,'Ahmedabad',5,'2','1','Software Devloper'),(183,'Ahmedabad',5,'2','1','Software Devloper');
/*!40000 ALTER TABLE `preferance` ENABLE KEYS */;
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
