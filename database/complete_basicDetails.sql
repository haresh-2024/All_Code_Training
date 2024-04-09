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
-- Table structure for table `basicDetails`
--

DROP TABLE IF EXISTS `basicDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basicDetails` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `fname` text,
  `lname` text,
  `designation` text,
  `email` text,
  `mobile` decimal(10,0) DEFAULT NULL,
  `address` text,
  `city` text,
  `state` text,
  `zipcode` bigint DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `relationship` text,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basicDetails`
--

LOCK TABLES `basicDetails` WRITE;
/*!40000 ALTER TABLE `basicDetails` DISABLE KEYS */;
INSERT INTO `basicDetails` VALUES (2,'raj','karodiya','sdl','raj@gmail.com',8523697410,'jasdan        ','junagadh','Gujarat',365521,'male','married','2002-01-01'),(3,'vivek','kandoliya','sdl','vivek@gmail.com',7898456123,'bhaktinagar','rajkot','gujarat',360005,'male','unmarried','2002-02-01'),(4,'hardev','zala','sdl','hardev@gmail.com',7536214890,'than','surendranagar','gujarat',352140,'male','unmarried','2002-03-01'),(5,'ashish','zapadiya','sdl','ashish@gmail.com',8754123690,'madhupur          ','porbanadar','Gujarat',341203,'male','unmarried','1998-04-01'),(6,'kajal','soni','sdl','kajal@gmail.com',7458963201,'s.g','navasari','gujarat',365741,'female','unmarried','2002-06-01'),(7,'harshika','rabadiya','sdl','harshika@gmail.com',6985741203,'kankot','rajkot','gujarat',345120,'female','unmarried','2002-07-01'),(8,'vishvash','pansariya','sdl','vishvash@gmail.com',7125896340,'sarangpur','botad','gujarat',369852,'male','unmarried','2002-08-01'),(9,'chirag','kanani','sdl','chirag@gmail.com',8574962130,'st bustand','bhavnagar','gujarat',325614,'male','unmarried','2002-09-01'),(10,'dhaval','monani','sdl','dhaval@gmail.com',8523690147,'trikon bug','rajkot','gujarat',360004,'male','unmarried','1998-10-01'),(11,'ajit','vaghela','sdl','ajit@gmail.com',7096525061,'sarkhej','ahmedabad','gujarat',384020,'male','unmarried','2002-11-01'),(12,'pradip','rabari','sdl','pradip@gmail.com',7458963210,'sunsar','sabarkatha','gujarat',352416,'male','unmarried','2002-12-01'),(13,'darshan','kalathiya','sdl','darshan@gmail.com',7584962130,'kamrej','surat','gujarat',395410,'male','unmarried','2002-01-02'),(14,'ashwin','bambhaniya','sdl','ashwin@gmail.com',8741259630,'chitrasar','jafrabad','gujarat',365520,'male','unmarried','2002-02-02'),(15,'saurav','sutariya','sdl','saurav@gmail.com',7895647127,'kalavad','jamnagar','gujarat',368520,'male','unmarried','1998-03-02'),(16,'umag','savaliya','sdl','umag@gmail.com',8569123440,'varachha','surat','gujarat',350102,'male','unmarried','2002-04-02'),(17,'khushi','joshi','sdl','khushi@gmail.com',879650021,'taleti','junagadh','gujarat',354102,'female','unmarried','2002-05-02'),(18,'dhruv','saghani','sdl','druv@gmail.com',7845693322,'kapodra','surat','gujarat',390014,'male','unmarried','2002-06-02'),(19,'sajan','pande','sdl','sajan@gmail.com',7412365890,'kadodra','surat','gujarat',390001,'male','unmarried','2002-07-02'),(20,'chintan','jani','sdl','chintan@gmail.com',8747123789,'machu  ','morbi','Gujarat',385210,'male','married','1998-08-02'),(21,'sagar','chauhan','sdl','sagar@gmail.com',8523697410,'chhapi','palanpur','gujarat',369111,'male','unmarried','2002-09-02'),(22,'dhaval','gohel','sdl','dhaval1@gmail.com',8749988771,'iscon','ahmedabad','gujarat',336655,'male','unmarried','2002-10-02'),(23,'aditya','sutreja','sdl','aditya@gmail.com',7878789898,'keshod','junagadh','gujarat',341278,'male','unmarried','2002-11-02'),(24,'vedant','raval','sdl','vedant@gmail.com',8974567788,'ajar','kachchh','Gujarat',316520,'male','married','2002-12-02'),(25,'rishi','patel','sdl','rishi@gmail.com',8965221144,'rajkot                 ','anand','Gujarat',368820,'male','married','1998-03-01'),(26,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabadwryy','rajula','Gujarat',564712,'male','married','2002-10-03'),(170,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(171,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(172,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(173,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(174,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(175,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(176,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(177,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(178,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(179,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(180,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(181,'haresh','chauhan','sdl','haresh@gmail.com',8141755953,'ahmedabad ','iscon','Gujarat',741025,'male','married','2002-10-03'),(182,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(183,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(184,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(185,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(186,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(187,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(188,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(189,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(190,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(191,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(192,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(193,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(194,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(195,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(196,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(197,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(198,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(199,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(200,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(201,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(202,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(203,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(204,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(205,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(206,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(207,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(208,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(209,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(210,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(211,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(212,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(213,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(214,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(215,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(216,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(217,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(218,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03'),(219,'haresh','chauhan','sd','haresh@gmail.com',8141755953,'ahmedabad bhdgsdg','iscon','Gujarat',741025,'male','married','2002-10-03');
/*!40000 ALTER TABLE `basicDetails` ENABLE KEYS */;
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
