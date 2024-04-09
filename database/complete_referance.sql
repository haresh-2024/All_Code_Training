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
INSERT INTO `referance` VALUES (2,'haresh',8752141052,'friend'),(3,'virat',7845963258,'friend'),(4,'rohit',3658974120,'father'),(5,'dinesh',9925678147,'friend'),(6,'mahesh',8547963210,'friend'),(7,'isha',7458912360,'friend'),(8,'kiran',7894561230,'sister'),(9,'rajesh',9865321470,'friend'),(10,'dhaval',7841205693,'brother'),(10,'rakesh',8269574130,'friend'),(11,'ram',9632501478,'friend'),(12,'rahul',7530012469,'friend'),(13,'himesh',9865741203,'friend'),(14,'sobha',9168547230,'mother'),(15,'vishal',8754963210,'friend'),(16,'jayesh',9002255883,'friend'),(16,'mitul',7589841236,'friend'),(17,'smit',4715823690,'friend'),(18,'ravi',9120365478,'friend'),(19,'krishna',8147159863,'friend'),(20,'haresh',7894561230,'friend'),(21,'narendra',7986954121,'friend'),(22,'amit',9878562231,'friend'),(25,'chirag',7894561231,'friend'),(0,'ghh',8741256930,'dfsdf'),(0,'ghh',8741256930,'dfsdf'),(0,'fasddfs',8741256930,'gdgsd'),(0,'fasddfs',8741256930,'gdgsd'),(0,'fasddfs',8741256930,'gdgsd'),(0,'fasddfs',8741256930,'gdgsd'),(0,'dhaval',8741256930,'friend'),(0,'dhaval',8741256930,'friend'),(0,'dhaval',8741256930,'friend'),(0,'dhaval',8741256930,'friend'),(0,'dhaval',8741256930,'friend'),(0,'dhaval',8741256930,'friend'),(0,'dhaval',8741256930,'friend'),(0,'dhaval',8741256930,'friend'),(0,'dhaval',8741256930,'friend'),(0,'dhaval',8741256930,'friend'),(26,'sfsfs',8741256930,'sfs'),(26,'fasddfs',8741256931,'friend'),(0,'sfsfs',8741256930,'gdgsd'),(1,'hayden',7536984102,'friend'),(0,'sfsfs',8741256930,'gdgsd'),(1,'hayden',7536984102,'friend'),(0,'sfsfs',8741256930,'gdgsd'),(1,'hayden',7536984102,'friend'),(0,'sfsfs',8741256930,'gdgsd'),(1,'hayden',7536984102,'friend'),(0,'sfsfs',8741256930,'gdgsd'),(1,'hayden',7536984102,'friend'),(0,'sfsfs',8741256930,'gdgsd'),(1,'hayden',7536984102,'friend'),(0,'sfsfs',8741256930,'gdgsd'),(1,'hayden',7536984102,'friend'),(0,'sfsfs',8741256930,'gdgsd'),(1,'hayden',7536984102,'friend'),(174,'sfsfs',8741256930,'gdgsd'),(174,'hayden',7536984102,'friend'),(174,'sfsfs',8741256930,'gdgsd'),(174,'hayden',7536984102,'friend'),(175,'sfsfs',8741256930,'gdgsd'),(175,'hayden',7536984102,'friend'),(175,'sfsfs',8741256930,'gdgsd'),(175,'hayden',7536984102,'friend'),(176,'sfsfs',8741256930,'gdgsd'),(176,'hayden',7536984102,'friend'),(176,'sfsfs',8741256930,'gdgsd'),(176,'hayden',7536984102,'friend'),(177,'sfsfs',8741256930,'gdgsd'),(177,'hayden',7536984102,'friend'),(177,'sfsfs',8741256930,'gdgsd'),(177,'hayden',7536984102,'friend'),(178,'sfsfs',8741256930,'gdgsd'),(178,'hayden',7536984102,'friend'),(178,'sfsfs',8741256930,'gdgsd'),(178,'hayden',7536984102,'friend'),(179,'sfsfs',8741256930,'gdgsd'),(179,'hayden',8741256931,'gdgsd'),(179,'sfsfs',8741256930,'gdgsd'),(179,'hayden',8741256931,'gdgsd'),(180,'sfsfs',8741256930,'gdgsd'),(180,'hayden',8741256931,'gdgsd'),(180,'sfsfs',8741256930,'gdgsd'),(180,'hayden',8741256931,'gdgsd'),(181,'sfsfs',8741256930,'gdgsd'),(181,'hayden',8741256931,'gdgsd'),(181,'sfsfs',8741256930,'gdgsd'),(181,'hayden',8741256931,'gdgsd'),(183,'hayden',8741256930,'gdgsd'),(183,'fasddfs',6741566665,'gdgsd'),(184,'hayden',8741256930,'gdgsd'),(185,'hayden',8741256930,'gdgsd'),(186,'hayden',8741256930,'gdgsd'),(187,'hayden',8741256930,'gdgsd'),(188,'hayden',8741256930,'gdgsd'),(189,'hayden',8741256930,'gdgsd'),(190,'hayden',8741256930,'gdgsd'),(191,'hayden',8741256930,'gdgsd'),(192,'hayden',8741256930,'gdgsd'),(193,'hayden',8741256930,'gdgsd'),(194,'hayden',8741256930,'gdgsd'),(195,'hayden',8741256930,'gdgsd'),(196,'hayden',8741256930,'gdgsd'),(197,'hayden',8741256930,'gdgsd'),(198,'hayden',8741256930,'gdgsd'),(199,'hayden',8741256930,'gdgsd'),(200,'hayden',8741256930,'gdgsd'),(201,'hayden',8741256930,'gdgsd'),(202,'hayden',8741256930,'gdgsd'),(203,'hayden',8741256930,'gdgsd'),(204,'hayden',8741256930,'gdgsd'),(205,'hayden',8741256930,'gdgsd'),(206,'hayden',8741256930,'gdgsd'),(207,'hayden',8741256930,'gdgsd'),(208,'hayden',8741256930,'gdgsd'),(209,'hayden',8741256930,'gdgsd'),(210,'hayden',8741256930,'gdgsd'),(211,'hayden',8741256930,'gdgsd'),(212,'hayden',8741256930,'gdgsd'),(213,'hayden',8741256930,'gdgsd'),(214,'hayden',8741256930,'gdgsd'),(215,'hayden',8741256930,'gdgsd'),(216,'hayden',8741256930,'gdgsd'),(217,'hayden',8741256930,'gdgsd'),(218,'hayden',8741256930,'gdgsd'),(219,'hayden',8741256930,'gdgsd');
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

-- Dump completed on 2024-04-09 17:04:17
