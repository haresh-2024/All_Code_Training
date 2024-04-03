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
-- Table structure for table `opti`
--

DROP TABLE IF EXISTS `opti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opti` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `sid` int NOT NULL,
  `oname` varchar(255) DEFAULT NULL,
  `okey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opti`
--

LOCK TABLES `opti` WRITE;
/*!40000 ALTER TABLE `opti` DISABLE KEYS */;
INSERT INTO `opti` VALUES (1,1,'English','eng'),(2,1,'Hindi','hid'),(3,1,'Gujarati','guj'),(4,2,'Male','male'),(5,2,'Female','female'),(6,3,'Married','marr'),(7,3,'UnMarried','unmar'),(8,4,'10th','ten'),(9,4,'12th','tew'),(10,4,'Computer Engineering','comp'),(11,4,'electronics Engineering','elec'),(12,4,'Information','It'),(13,5,'PHP','Php'),(14,5,'Laravel','Lara'),(15,5,'mysql','sql'),(16,5,'oracle','orc'),(17,6,'read','read'),(18,6,'write','write'),(19,6,'speak','speak'),(20,6,'read-write','rw'),(21,6,'read-speak','rs'),(22,6,'write-speak','ws'),(23,6,'rws','rws'),(24,6,'NA','na');
/*!40000 ALTER TABLE `opti` ENABLE KEYS */;
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
