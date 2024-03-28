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
  `Id` int DEFAULT NULL,
  `language` text,
  `lread` text,
  `lwrite` text,
  `speak` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languageKnown`
--

LOCK TABLES `languageKnown` WRITE;
/*!40000 ALTER TABLE `languageKnown` DISABLE KEYS */;
INSERT INTO `languageKnown` VALUES (1,'english','y','y','y'),(2,'english','y','y','y'),(3,'english','y','y','y'),(4,'english','n','y','y'),(5,'english','y','y','y'),(6,'english','y','y','n'),(7,'english','y','y','y'),(8,'english','y','y','y'),(9,'english','y','y','y'),(10,'english','y','y','y'),(11,'english','y','y','y'),(12,'english','y','y','y'),(13,'english','y','y','y'),(14,'english','y','y','n'),(15,'english','y','y','y'),(16,'english','y','y','y'),(17,'english','y','y','y'),(18,'english','y','y','y'),(19,'english','y','y','y'),(20,'english','y','y','y'),(21,'english','y','y','y'),(22,'english','y','y','y'),(23,'english','y','y','y'),(24,'english','y','y','y'),(25,'english','y','y','y'),(1,'hindi','y','y','y'),(2,'hindi','y','y','y'),(3,'hindi','y','y','y'),(4,'hindi','y','y','y'),(5,'hindi','n','y','y'),(6,'hindi','y','y','y'),(7,'hindi','y','y','y'),(8,'hindi','y','n','y'),(9,'hindi','y','y','y'),(10,'hindi','y','y','y'),(11,'hindi','y','y','y'),(12,'hindi','y','y','n'),(13,'hindi','y','y','y'),(14,'hindi','y','y','y'),(15,'hindi','y','y','y'),(16,'hindi','y','n','y'),(17,'hindi','y','y','y'),(18,'hindi','y','y','y'),(19,'hindi','y','y','y'),(20,'hindi','y','y','y'),(21,'hindi','n','y','y'),(22,'hindi','y','y','y'),(23,'hindi','y','n','y'),(24,'hindi','y','y','y'),(25,'hindi','y','y','y'),(1,'gujarati','y','y','y'),(2,'gujarati','y','y','y'),(3,'gujarati','y','y','y'),(4,'gujarati','y','y','y'),(5,'gujarati','y','y','y'),(6,'gujarati','y','y','y'),(7,'gujarati','y','y','y'),(8,'gujarati','y','y','y'),(9,'gujarati','y','y','y'),(10,'gujarati','y','y','y'),(11,'gujarati','y','y','y'),(12,'gujarati','y','y','y'),(13,'gujarati','y','y','y'),(14,'gujarati','y','y','y'),(15,'gujarati','y','y','y'),(16,'gujarati','y','y','y'),(17,'gujarati','y','y','y'),(18,'gujarati','y','y','y'),(19,'gujarati','y','y','y'),(20,'gujarati','y','y','y'),(21,'gujarati','y','y','y'),(22,'gujarati','y','y','y'),(23,'gujarati','y','y','y'),(24,'gujarati','y','y','y'),(25,'gujarati','y','y','y'),(30,'Hindi','y','n','n'),(31,'Gujarati','y','y','y'),(31,'Hindi','y','y','y'),(31,'English','y','y','y'),(32,'English','y','n','n'),(33,'English','y','n','n'),(34,'English','y','n','n'),(35,'English','y','n','n'),(36,'English','y','n','n'),(37,'English','y','n','n'),(38,'English','y','n','n'),(39,'English','y','n','n'),(40,'English','y','n','n'),(41,'English','y','n','n'),(42,'English','y','n','n'),(43,'English','y','n','n'),(44,'English','y','n','n'),(45,'English','y','n','n'),(46,'English','y','n','n'),(47,'English','y','n','n'),(48,'English','y','n','n'),(49,'English','y','n','n'),(50,'English','y','n','n'),(51,'English','y','n','n'),(52,'Gujarati','y','y','y'),(53,'Gujarati','y','y','y'),(54,'Gujarati','y','y','y'),(55,'Gujarati','y','y','y'),(56,'Gujarati','y','y','y'),(57,'Gujarati','y','y','y'),(58,'Gujarati','y','y','y'),(59,'Gujarati','y','y','y'),(60,'Gujarati','y','y','y'),(61,'Gujarati','y','y','y'),(62,'Gujarati','y','y','y'),(63,'Gujarati','y','y','y'),(64,'Gujarati','y','y','y'),(65,'Gujarati','y','y','y'),(66,'Gujarati','y','y','y'),(67,'Gujarati','y','y','y'),(68,'Gujarati','y','y','y'),(69,'Gujarati','y','y','y'),(70,'Gujarati','y','y','y'),(71,'Gujarati','y','y','y'),(72,'Gujarati','y','y','y'),(73,'Gujarati','y','y','y'),(74,'Hindi','y','n','n'),(75,'Hindi','y','n','n'),(76,'Hindi','y','n','n'),(77,'Hindi','y','n','n'),(78,'Gujarati','y','y','y'),(78,'Hindi','y','y','y'),(78,'English','y','y','y'),(79,'Gujarati','y','y','y'),(79,'Hindi','y','y','y'),(79,'English','y','y','y'),(80,'Gujarati','y','y','y'),(80,'Hindi','y','y','y'),(80,'English','y','y','y'),(81,'Gujarati','y','y','y'),(81,'Hindi','y','y','y'),(81,'English','y','y','y'),(82,'Gujarati','y','y','y'),(82,'Hindi','y','y','y'),(82,'English','y','y','y'),(83,'Gujarati','y','y','y'),(83,'Hindi','y','y','y'),(83,'English','y','y','y'),(84,'Gujarati','y','y','y'),(84,'Hindi','y','y','y'),(84,'English','y','y','y'),(85,'Gujarati','y','y','y'),(85,'Hindi','y','y','y'),(85,'English','y','y','y'),(86,'Gujarati','y','y','y'),(86,'Hindi','y','y','y'),(86,'English','y','y','y'),(87,'Hindi','y','y','y'),(88,'Hindi','y','y','y'),(92,'Gujarati','y','y','y'),(92,'Hindi','y','y','y'),(92,'English','y','y','y'),(100,'Gujarati','y','y','y'),(100,'Hindi','y','y','y'),(100,'English','y','y','y'),(101,'Gujarati','y','y','y'),(101,'Hindi','y','y','y'),(101,'English','y','y','y'),(102,'Gujarati','y','y','y'),(102,'Hindi','y','y','y'),(102,'English','y','y','y'),(103,'Gujarati','y','y','y'),(103,'Hindi','y','y','y'),(103,'English','y','y','y'),(104,'English','y','y','n'),(0,'English','y','y','n');
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

-- Dump completed on 2024-03-28 17:58:45
