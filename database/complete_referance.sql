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
-- Table structure for table `referance`
--

DROP TABLE IF EXISTS `referance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referance` (
  `Id` int NOT NULL,
  `name` text,
  `contact` decimal(10,0) DEFAULT NULL,
  `relationship` text,
  KEY `referance_ibfk_1` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referance`
--

LOCK TABLES `referance` WRITE;
/*!40000 ALTER TABLE `referance` DISABLE KEYS */;
INSERT INTO `referance` VALUES (1,'raj',7541200112,'friend'),(2,'haresh',8752141052,'friend'),(3,'virat',7845963258,'friend'),(4,'rohit',3658974120,'father'),(5,'dinesh',9925678147,'friend'),(6,'mahesh',8547963210,'friend'),(7,'isha',7458912360,'friend'),(8,'kiran',7894561230,'sister'),(9,'rajesh',9865321470,'friend'),(10,'dhaval',7841205693,'brother'),(10,'rakesh',8269574130,'friend'),(11,'ram',9632501478,'friend'),(12,'rahul',7530012469,'friend'),(13,'himesh',9865741203,'friend'),(14,'sobha',9168547230,'mother'),(15,'vishal',8754963210,'friend'),(16,'jayesh',9002255883,'friend'),(16,'mitul',7589841236,'friend'),(17,'smit',4715823690,'friend'),(18,'ravi',9120365478,'friend'),(19,'krishna',8147159863,'friend'),(20,'haresh',7894561230,'friend'),(21,'narendra',7986954121,'friend'),(22,'amit',9878562231,'friend'),(25,'chirag',7894561230,'friend'),(31,'chirag',8596031201,'friend'),(78,'chirag',7895461021,'friend'),(79,'chirag',7895461021,'friend'),(80,'raj',7541200112,'friend'),(81,'chirag',7895461021,'friend'),(82,'chirag',7895461021,'friend'),(83,'chirag',7895461021,'friend'),(84,'chirag',7895461021,'friend'),(85,'chirag',7895461021,'friend'),(86,'sfgsdg',7410258963,'fgsdf'),(87,'sgtd',987653421,'gdgg'),(88,'sgtd',987653421,'gdgg'),(92,'haresh',7890546321,'friend'),(100,'fasddfs',8741256930,'sfs'),(101,'fasddfs',8741256930,'sfs'),(102,'fasddfs',8741256930,'sfs'),(103,'fasddfs',8741256930,'sfs'),(104,'fasddfs',8741256930,'sfs'),(105,'L',8520369741,'Quwxihpwqdikdt'),(105,'Gyowrklqede',7412589632,'Qk');
/*!40000 ALTER TABLE `referance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-28 18:13:57
