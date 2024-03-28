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
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `id` int DEFAULT NULL,
  `userName` text,
  `password` text,
  `salt` text,
  `pin` text,
  `created_at` text,
  `status` text,
  `password_change` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (15,'haresh@gmail.com','1ecd10a744c6d8c852485079a691ea8f','jDAw','hux3s3LdbdLz','2024-03-21 12:12:17','active','2024-03-27 16:56:33'),(16,'haresh@gmail','d5ca9473e4a6b33a5270e7704dd77d5a','lPr1','iBfd1m5tPQfr','2024-03-21 14:44:04','active','2024-03-26 09:15:10'),(17,'chirag@gmail.com','97c7b46531795bfb419d7f2168ad1f74','6qqI','RL5xYDNyGqUP','2024-03-21 14:44:39','active','2024-03-21 17:09:58'),(18,'dhaval@gmail.com','dcd786e7d5fbc6ab09a52399bfb08c71','aZGD','JAAY7LN530FF','2024-03-21 14:55:08','active','2024-03-21 17:09:58'),(19,'zala@gmail.com','42653aac7155edcb1024cae57042667b','W6cG','PBOQQcvqNghz','2024-03-21 15:21:21','active','2024-03-21 17:09:58'),(20,'vivek@gmail.com','73f5b022d106d6f0c95b2e1242483449','juop','JOQshiXnN2eQ','2024-03-21 15:24:50','active','2024-03-21 17:09:58'),(21,'chirag1@gmail.com','df58bc746407d2e5471968a862dae128','2Nkd','QQ3ZL67s7bRG','2024-03-21 15:28:17','active','2024-03-21 17:09:58'),(22,'vivek1@gmail.com','330a79cdc44968c254aefd378abdb5ec','5RsV','FExPMJKAaFOG','2024-03-21 19:23:25','active','2024-03-21 19:29:20'),(23,'pradip@gmail.com','aa95ca60cdfb4127870edb83a19f1924','Gqrv','aaoMNyfp0Nlg','2024-03-21 19:28:28','inactive','2024-03-21 19:27:36'),(24,'raj@gmail.com','bcfaa26a60634720830bc88402124bcb','ujzI','bOA5VkR2PP2p','2024-03-22 09:09:48','inactive','2024-03-22 09:06:31'),(25,'haresh12@gmail.com','bf029a3c57ba0d3283c060326e542dcf','HJxh','a9TeHREMzC23','2024-03-22 09:17:27','inactive','2024-03-22 09:10:37'),(26,'haresh@gmail.co','6a05d7170521e9d1375a6c93969454d1','iF1E','wmw9YrDL6bVL','2024-03-22 09:27:29','inactive','2024-03-22 09:19:13'),(27,'dhaval@12gmail.com','61687f62368a38f955cebf0e7af8eee4','sXxC','Ed9uUaNX91XU','2024-03-22 09:28:19','active','2024-03-22 09:28:07'),(28,'dhaval1@gmail.com','8e3229e8cbc18e0fc732ffb97745b999','stnh','lzCpaTDrKqd6','2024-03-22 10:45:47','active','2024-03-22 10:39:49'),(29,'hardik@gmail.com','608f79204d807a13ab3f9091b1bf0a4a','yZyn','KwxQKwEQvANM','2024-03-26 09:17:36','active','2024-03-26 09:17:06');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
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
