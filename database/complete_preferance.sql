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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferance`
--

LOCK TABLES `preferance` WRITE;
/*!40000 ALTER TABLE `preferance` DISABLE KEYS */;
INSERT INTO `preferance` VALUES (1,'ahmedabad',2,'4','0','web devlopment'),(2,'ahmedabad',2,'5','0','web devlopment'),(3,'ahmedabad',2,'3','0','web devlopment'),(4,'ahmedabad',2,'3.5','0','web devlopment'),(5,'ahmedabad',2,'6','5.5','web devlopment'),(6,'ahmedabad',2,'3.7','0','web devlopment'),(7,'ahmedabad',2,'3.8','0','web devlopment'),(8,'ahmedabad',2,'3.9','0','web devlopment'),(9,'ahmedabad',2,'4','0','web devlopment'),(10,'ahmedabad',2,'5','4.5','web devlopment'),(11,'ahmedabad',2,'4.9','0','web devlopment'),(12,'ahmedabad',2,'4.7','0','web devlopment'),(13,'ahmedabad',2,'4.6','0','web devlopment'),(14,'ahmedabad',2,'4.5','0','web devlopment'),(15,'ahmedabad',2,'7','6','web devlopment'),(16,'ahmedabad',2,'4.4','0','web devlopment'),(17,'ahmedabad',2,'4.3','0','web devlopment'),(18,'ahmedabad',2,'4.4','0','web devlopment'),(19,'ahmedabad',2,'4.2','0','web devlopment'),(20,'Ahmedabad',2,'3','3','Software Devloper'),(21,'ahmedabad',2,'3.9','0','web devlopment'),(22,'ahmedabad',2,'3.8','0','web devlopment'),(23,'ahmedabad',2,'3.6','0','web devlopment'),(24,'ahmedabad',2,'3.5','0','web devlopment'),(25,'Ahmedabad',2,'4.8','4.2','Software Devloper'),(30,'Ahmedabad',7,'7','8','Software Devloper'),(31,'Ahmedabad',2,'5','4','Software Devloper'),(32,'Ahmedabad',5,'1','2','Software Devloper'),(33,'Ahmedabad',5,'1','2','Software Devloper'),(34,'Ahmedabad',5,'1','2','Software Devloper'),(35,'Ahmedabad',5,'1','2','Software Devloper'),(36,'Ahmedabad',1,'1','2','Software Devloper'),(37,'Ahmedabad',1,'1','2','Software Devloper'),(38,'Ahmedabad',1,'1','2','Software Devloper'),(39,'Ahmedabad',1,'1','2','Software Devloper'),(40,'Ahmedabad',1,'1','2','Software Devloper'),(41,'Ahmedabad',1,'1','2','Software Devloper'),(42,'Ahmedabad',1,'1','2','Software Devloper'),(43,'Ahmedabad',1,'1','2','Software Devloper'),(44,'Ahmedabad',1,'1','2','Software Devloper'),(45,'Ahmedabad',1,'1','2','Software Devloper'),(46,'Ahmedabad',1,'1','2','Software Devloper'),(47,'Ahmedabad',1,'1','2','Software Devloper'),(48,'Ahmedabad',1,'1','2','Software Devloper'),(49,'Ahmedabad',1,'1','2','Software Devloper'),(50,'Ahmedabad',1,'1','2','Software Devloper'),(51,'Ahmedabad',1,'1','2','Software Devloper'),(52,'Ahmedabad',5,'2','3','Software Devloper'),(53,'Ahmedabad',5,'2','3','Software Devloper'),(54,'Ahmedabad',5,'2','3','Software Devloper'),(55,'Ahmedabad',5,'2','3','Software Devloper'),(56,'Ahmedabad',5,'2','3','Software Devloper'),(57,'Ahmedabad',5,'2','3','Software Devloper'),(58,'Ahmedabad',5,'2','3','Software Devloper'),(59,'Ahmedabad',5,'2','3','Software Devloper'),(60,'Ahmedabad',5,'2','3','Software Devloper'),(61,'Ahmedabad',5,'2','3','Software Devloper'),(62,'Ahmedabad',5,'2','3','Software Devloper'),(63,'Ahmedabad',5,'2','3','Software Devloper'),(64,'Ahmedabad',5,'2','3','Software Devloper'),(65,'Ahmedabad',5,'2','3','Software Devloper'),(66,'Ahmedabad',5,'2','3','Software Devloper'),(67,'Ahmedabad',5,'2','3','Software Devloper'),(68,'Ahmedabad',5,'2','5','Software Devloper'),(69,'Ahmedabad',5,'2','5','Software Devloper'),(70,'Ahmedabad',5,'2','5','Software Devloper'),(71,'Ahmedabad',5,'2','5','Software Devloper'),(72,'Ahmedabad',5,'2','5','Software Devloper'),(73,'Ahmedabad',5,'2','5','Software Devloper'),(74,'Ahmedabad',1,'11','11','Software Devloper'),(75,'Ahmedabad',1,'11','11','Software Devloper'),(76,'Ahmedabad',1,'11','11','Software Devloper'),(77,'Ahmedabad',1,'11','11','Software Devloper'),(78,'ahmedabad',2,'4.8','4.2','web devlopment'),(79,'ahmedabad',2,'4.8','4.2','web devlopment'),(80,'ahmedabad',2,'4','0','web devlopment'),(81,'ahmedabad',2,'4.8','4.2','web devlopment'),(82,'ahmedabad',2,'4.8','4.2','web devlopment'),(83,'ahmedabad',2,'4.8','4.2','web devlopment'),(84,'ahmedabad',2,'4.8','4.2','web devlopment'),(85,'ahmedabad',2,'4.8','4.2','web devlopment'),(86,'ahmedabad',1,'2','3','software devloper'),(87,'ahmedabad',1,'2','3','software devloper'),(88,'ahmedabad',1,'2','3','software devloper'),(92,'ahmedabad',5,'1','5','software devloper'),(100,'ahmedabad',5,'2','5','software devloper'),(101,'ahmedabad',5,'2','5','software devloper'),(102,'ahmedabad',5,'2','5','software devloper'),(103,'ahmedabad',5,'2','5','software devloper'),(104,'ahmedabad',6,'6','6','software devloper'),(105,'Ahmedabad',5,'1','2','Software Devloper');
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

-- Dump completed on 2024-03-29 11:12:42
