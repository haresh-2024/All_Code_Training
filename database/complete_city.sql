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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int DEFAULT NULL,
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (20,'Abohar'),(14,'Achalpur'),(1,'Adilabad'),(10,'Adityapur'),(1,'Adoni'),(25,'Agartala'),(27,'Agra '),(7,'Ahmadabad'),(14,'Ahmadnagar '),(17,'Aizawl '),(21,'Ajmer '),(27,'Akbarpur '),(14,'Akola '),(23,'Alandur '),(12,'Alappuzha '),(27,'Aligarh '),(27,'Allahabad '),(21,'Alwar '),(8,'Ambala'),(8,'Ambala Sadar'),(14,'Ambarnath'),(23,'Ambattur'),(5,'Ambikapur'),(23,'Ambur'),(14,'Amravati'),(7,'Amreli'),(20,'Amritsar'),(27,'Amroha'),(7,'Anand'),(1,'Anantapur'),(29,'Anantnag'),(4,'Arrah'),(28,'Asansol'),(28,'Ashoknagar Kalyangarh'),(4,'Aurangabad'),(14,'Aurangabad'),(23,'Avadi'),(27,'Azamgarh'),(14,'Badlapur'),(4,'Bagaha'),(11,'Bagalkot'),(8,'Bahadurgarh'),(28,'Baharampur'),(27,'Bahraich'),(28,'Baidyabati'),(19,'Baleshwar Town'),(27,'Ballia'),(28,'Bally'),(28,'Balurghat'),(28,'Bally City'),(27,'Banda'),(28,'Bankura'),(28,'Bansberia'),(21,'Banswara'),(21,'Baran'),(28,'Baranagar'),(28,'Barasat'),(27,'Baraut'),(28,'Barddhaman'),(27,'Bareilly'),(19,'Baripada Town'),(20,'Barnala'),(28,'Barrackpur'),(14,'Barshi'),(28,'Basirhat'),(27,'Basti'),(20,'Batala'),(20,'Bathinda'),(21,'Beawar'),(4,'Begusarai'),(11,'Belgaum'),(11,'Bellary'),(11,'Bengaluru'),(4,'Bettiah'),(13,'Betul'),(19,'Bhadrak '),(11,'Bhadravati'),(28,'Bhadreswar '),(4,'Bhagalpur'),(30,'Bhalswa Jahangir Pur'),(21,'Bharatpur'),(7,'Bharuch'),(28,'Bhatpara'),(7,'Bhavnagar'),(5,'Bhilai Nagar'),(21,'Bhilwara'),(1,'Bhimavaram'),(13,'Bhind'),(21,'Bhiwadi'),(14,'Bhiwandi'),(8,'Bhiwani'),(13,'Bhopal'),(19,'Bhubaneswar Town'),(7,'Bhuj'),(14,'Bhusawal'),(14,'Bid'),(11,'Bidar'),(28,'Bidhan Nagar'),(4,'4sharif'),(11,'Bijapur'),(21,'Bikaner'),(5,'Bilaspur'),(10,'Bokaro Steel City'),(28,'Bongaon'),(7,'Botad'),(19,'Brahmapur Town'),(27,'Budaun'),(27,'Bulandshahr'),(21,'Bundi'),(30,'Burari'),(13,'Burhanpur'),(4,'Buxar'),(28,'Champdani'),(28,'Chandannagar'),(27,'Chandausi'),(5,'Chandigarh'),(14,'Chandrapur '),(4,'Chapra'),(10,'Chas'),(23,'Chennai'),(13,'Chhattarpur'),(13,'Chhindwara'),(11,'Chikmagalur'),(1,'Chilakaluripet'),(11,'Chitradurga'),(21,'Chittaurgarh'),(1,'Chittoor'),(21,'Churu'),(23,'Coimbatore'),(23,'Cuddalore'),(19,'Cuttack'),(28,'Dabgram'),(30,'Dallo Pura'),(13,'Damoh'),(4,'Darbhanga'),(28,'Darjiling'),(13,'Datia'),(11,'Davanagere'),(7,'Deesa '),(26,'Dehradun'),(4,'Dehri'),(30,'Delhi'),(30,'Delhi Cantonment'),(10,'Deoghar'),(30,'Deoli'),(27,'Deoria'),(13,'Dewas'),(10,'Dhanbad'),(1,'Dharmavaram'),(21,'Dhaulpur'),(14,'Dhule'),(3,'Dibrugarh'),(18,'Dimapur'),(4,'Dinapur Nizamat'),(23,'Dindigul'),(28,'Dum Dum'),(5,'Durg'),(28,'Durgapur'),(1,'Eluru'),(28,'English Bazar'),(23,'Erode'),(27,'Etah'),(27,'Etawah'),(27,'Faizabad'),(8,'Faridabad'),(27,'Farrukhabad-cum-Fatehgarh'),(27,'Fatehpur'),(27,'Firozabad'),(20,'Firozpur'),(11,'Gadag-Betigeri'),(7,'Gandhidham'),(7,'Gandhinagar'),(21,'Ganganagar'),(21,'Gangapur City'),(11,'Gangawati'),(4,'Gaya'),(27,'Ghazipur'),(10,'Giridih'),(7,'Godhra'),(30,'Gokal Pur'),(27,'Gonda'),(7,'Gondal'),(14,'Gondiya'),(27,'Gorakhpur'),(1,'Greater Hyderabad'),(14,'Greater Mumbai'),(27,'Greater Noida'),(1,'Gudivada'),(11,'Gulbarga'),(13,'Guna'),(1,'Guntakal'),(1,'Guntur'),(8,'Gurgaon'),(3,'Guwahati'),(13,'Gwalior'),(28,'Habra'),(4,'Hajipur'),(28,'Haldia'),(26,'Haldwani-cum-Kathgodam'),(28,'Halisahar'),(21,'Hanumangarh'),(28,'Haora'),(27,'Hapur'),(27,'Hardoi'),(26,'Hardwar'),(11,'Hassan'),(30,'Hastsal'),(27,'Hathras'),(10,'Hazaribag'),(21,'Hindaun'),(1,'Hindupur'),(14,'Hinganghat'),(8,'Hisar'),(13,'Hoshangabad'),(20,'Hoshiarpur'),(11,'Hospet'),(23,'Hosur'),(11,'Hubli-Dharwad'),(28,'Hugli-Chinsurah'),(14,'Ichalkaranji'),(5,'Imphal'),(13,'Indore'),(13,'Jabalpur'),(8,'Jagadhri'),(5,'Jagdalpur'),(21,'Jaipur'),(20,'Jalandhar'),(14,'Jalgaon'),(14,'Jalna'),(28,'Jalpaiguri'),(4,'Jamalpur'),(29,'Jammu'),(7,'Jamnagar'),(10,'Jamshedpur'),(28,'Jamuria'),(27,'Jaunpur'),(4,'Jehanabad'),(7,'Jetpur Navagadh'),(27,'Jhansi'),(21,'Jhunjhunun'),(8,'Jind'),(21,'Jodhpur'),(7,'Junagadh'),(1,'Kadapa'),(8,'Kaithal'),(1,'Kakinada'),(7,'Kalol'),(28,'Kalyani'),(28,'Kamarhati'),(23,'Kancheepuram'),(28,'Kanchrapara'),(27,'Kanpur'),(27,'Kanpur City'),(23,'Karaikkudi'),(30,'Karawal Nagar'),(1,'Karimnagar'),(8,'Karnal'),(27,'Kasganj'),(26,'Kashipur'),(4,'Katihar'),(1,'Khammam'),(13,'Khandwa'),(20,'Khanna'),(28,'Kharagpur'),(28,'Khardaha'),(13,'Khargone'),(27,'Khora'),(27,'Khurja'),(30,'Kirari Suleman Nagar'),(4,'Kishanganj'),(21,'Kishangarh'),(12,'Kochi'),(11,'Kolar'),(14,'Kolhapur'),(28,'Kolkata'),(12,'Kollam'),(5,'Korba'),(21,'Kota'),(12,'Kozhikode'),(28,'Krishnanagar'),(28,'Kulti'),(23,'Kumbakonam'),(23,'Kurichi'),(1,'Kurnool'),(27,'Lakhimpur'),(27,'Lalitpur'),(14,'Latur'),(27,'Loni'),(27,'Lucknow'),(20,'Ludhiana'),(1,'Machilipatnam'),(1,'Madanapalle'),(23,'Madavaram'),(28,'Madhyamgram'),(23,'Madurai'),(1,'Mahbubnagar'),(7,'Mahesana'),(28,'Maheshtala'),(27,'Mainpuri'),(14,'Malegaon'),(20,'Malerkotla'),(30,'Mandoli'),(13,'Mandsaur'),(11,'Mandya'),(11,'Mangalore'),(10,'Mango'),(27,'Mathura'),(27,'Maunath Bhanjan'),(28,'Medinipur'),(27,'Meerut'),(14,'Mira Bhayander'),(1,'Miryalaguda'),(27,'Mirzapur-cum-Vindhyachal'),(27,'Modinagar'),(20,'Moga'),(27,'Moradabad'),(13,'Morena'),(7,'Morvi'),(4,'Motihari'),(27,'Mughalsarai'),(20,'Muktsar'),(4,'Munger'),(13,'Murwara'),(30,'Mustafabad'),(27,'Muzaffarnagar'),(4,'Muzaffarpur'),(11,'Mysore'),(28,'Nabadwip'),(7,'Nadiad'),(3,'Nagaon'),(23,'Nagapattinam'),(21,'Nagaur'),(13,'Nagda'),(23,'Nagercoil'),(14,'Nagpur'),(28,'Naihati'),(1,'Nalgonda'),(14,'Nanded Waghala'),(14,'Nandurbar'),(1,'Nandyal'),(30,'Nangloi Jat'),(1,'Narasaraopet'),(14,'Nashik'),(14,'Navi Mumbai'),(14,'Navi Mumbai Panvel Raigarh'),(7,'Navsari'),(13,'Neemuch'),(1,'Nellore'),(30,'New Delhi'),(23,'Neyveli'),(1,'Nizamabad'),(27,'Noida'),(28,'North Barrackpur'),(28,'North Dum Dum'),(1,'Ongole'),(27,'Orai'),(14,'Osmanabad'),(31,'Ozhukarai'),(12,'Palakkad'),(7,'Palanpur'),(21,'Pali'),(23,'Pallavaram'),(8,'Palwal'),(8,'Panchkula'),(28,'Panihati'),(8,'Panipat'),(14,'Panvel'),(14,'Parbhani'),(7,'Patan'),(20,'Pathankot'),(20,'Patiala'),(4,'Patna'),(27,'Pilibhit'),(14,'Pimpri Chinchwad'),(13,'Pithampur'),(7,'Porbandar'),(32,'Port Blair'),(1,'Proddatur'),(31,'Puducherry'),(23,'Pudukkottai'),(14,'Pune'),(19,'Puri'),(4,'Purnia'),(28,'Puruliya'),(27,'Rae Bareli'),(11,'Raichur'),(28,'Raiganj'),(5,'Raigarh'),(5,'Raipur'),(1,'Rajahmundry'),(23,'Rajapalayam'),(28,'Rajarhat Gopalpur'),(7,'Rajkot'),(5,'Rajnandgaon'),(28,'Rajpur Sonarpur'),(1,'Ramagundam'),(27,'Rampur'),(10,'Ranchi'),(11,'Ranibennur'),(28,'Raniganj'),(13,'Ratlam'),(19,'Raurkela Industrial Township'),(19,'Raurkela Town'),(13,'Rewa'),(8,'Rewari'),(28,'Rishra'),(11,'Robertson Pet'),(8,'Rohtak'),(26,'Roorkee'),(26,'Rudrapur'),(20,'S.A.S. Nagar'),(13,'Sagar'),(27,'Saharanpur'),(4,'Saharsa'),(23,'Salem'),(19,'Sambalpur'),(27,'Sambhal'),(14,'Sangli Miraj Kupwad'),(28,'Santipur'),(4,'Sasaram'),(14,'Satara'),(13,'Satna'),(21,'Sawai Madhopur'),(1,'Secunderabad'),(13,'Sehore'),(13,'Seoni'),(28,'Serampore'),(27,'Shahjahanpur'),(27,'Shamli'),(27,'Shikohabad'),(16,'Shillong'),(9,'Shimla'),(11,'Shimoga'),(13,'Shivpuri'),(21,'Sikar'),(3,'Silchar'),(28,'Siliguri'),(13,'Singrauli'),(8,'Sirsa'),(27,'Sitapur'),(4,'Siwan'),(14,'Solapur'),(8,'Sonipat'),(28,'South Dum Dum'),(1,'Srikakulam'),(29,'Srinagar'),(21,'Sujangarh'),(30,'Sultan Pur Majra'),(27,'Sultanpur'),(7,'Surat'),(7,'Surendranagar Dudhrej'),(1,'Suryapet'),(1,'Tadepalligudem'),(1,'Tadpatri'),(23,'Tambaram'),(1,'Tenali'),(14,'Thane'),(8,'Thanesar'),(23,'Thanjavur'),(12,'Thiruvananthapuram'),(23,'Thoothukkudi'),(12,'Thrissur'),(23,'Tiruchirappalli'),(23,'Tirunelveli'),(1,'Tirupati'),(23,'Tiruppur'),(23,'Tiruvannamalai'),(23,'Tiruvottiyur'),(28,'Titagarh'),(21,'Tonk'),(11,'Tumkur'),(21,'Udaipur'),(14,'Udgir'),(11,'Udupi'),(13,'Ujjain'),(14,'Ulhasnagar'),(28,'Uluberia'),(27,'Unnao'),(28,'Uttarpara Kotrung'),(7,'Vadodara'),(7,'Valsad'),(27,'Varanasi'),(14,'Vasai Virar City'),(23,'Vellore'),(7,'Veraval'),(13,'Vidisha'),(1,'Vijayawada'),(1,'Visakhapatnam'),(1,'Vizianagaram '),(1,'Warangal'),(14,'Wardha'),(8,'Yamunanagar'),(14,'Yavatmal');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
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
