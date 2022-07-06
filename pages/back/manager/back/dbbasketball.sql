-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: basketball
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `aboutus`
--

use dbbasketball;
DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aboutus` (
  `name` varchar(45) NOT NULL,
  `image` text,
  `background` text,
  `class` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `fbimage` text,
  `igimage` text,
  `mailimage` varchar(45) DEFAULT NULL,
  `fblink` text,
  `iglink` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES ('曾翊傑','../../assets/image/KyleCard.png','../../assets/image/back.png','資管二乙','front_one','--------前端設計--------','../../assets/image/fbicon.png','../../assets/image/igicon.png','../../assets/image/mailicon.png','\"https://www.facebook.com/profile.php?id=100006322693271\"','\"https://www.instagram.com/tseng90317\"'),('池同發','../../assets/image/JabezCard.png','../../assets/image/back.png','資管二甲','rear_two','--------後端製作--------','../../assets/image/fbicon.png','../../assets/image/igicon.png','../../assets/image/mailicon.png','\"https://www.facebook.com/tunghuat.2000\"','\"https://www.instagram.com/tung_huat/\"'),('賴映竹','../../assets/image/ChocoCard.png','../../assets/image/back.png','資管二甲','rear_one','--------後端製作--------','../../assets/image/fbicon.png','../../assets/image/igicon.png','../../assets/image/mailicon.png','\"https://www.facebook.com/profile.php?id=100002349962397\"','\"https://www.instagram.com/choco.2001/\"'),('邱冠哲','../../assets/image/JackCard.png','../../assets/image/back.png','資管二乙','front_two','--------前端設計--------','../../assets/image/fbicon.png','../../assets/image/igicon.png','../../assets/image/mailicon.png','\"https://www.facebook.com/profile.php?id=100002987875803\"','\"https://www.instagram.com/qiuguanzhe/\"');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basketball_pages`
--

DROP TABLE IF EXISTS `basketball_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basketball_pages` (
  `ball_name` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `image` text,
  `price` varchar(45) DEFAULT NULL,
  `material` varchar(45) DEFAULT NULL,
  `venue` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `related` varchar(45) DEFAULT NULL,
  `page_one_image` text,
  `page_two_image` text,
  `page_three_image` text,
  `page_one_html` text,
  `page_two_html` text,
  `page_three_html` text,
  `publish_date` date DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `clicktimes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ball_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basketball_pages`
--

LOCK TABLES `basketball_pages` WRITE;
/*!40000 ALTER TABLE `basketball_pages` DISABLE KEYS */;
INSERT INTO `basketball_pages` VALUES ('Kobe Bryant','簽名紀念版籃球','../../assets/basketball/star/Kobe.jpg','$5190','一般合成皮','室內/外','7號球','100','其他相關籃球:','../../assets/basketball/star/James.png','../../assets/basketball/star/curry.png',NULL,'lebron.jsp','curry.jsp',NULL,'2021-06-11','2021-06-12','500'),('LeBron James','簽名紀念版籃球','../../assets/basketball/star/James.png','$5190','一般合成皮','室內/外','7號球','100','其他相關籃球:','../../assets/basketball/star/Kobe.jpg','../../assets/basketball/star/curry.png',NULL,'kobe.jsp','curry.jsp',NULL,'2021-06-11','2021-06-12','500'),('SPA63251','仿皮系列Legacy','../../assets/basketball/outside/SPA63251.jpg','$700','橡膠','室外','7號球','100','其他相關籃球:','../../assets/basketball/outside/SPA63817.png','../../assets/basketball/outside/SPA73298.png','../../assets/basketball/outside/SPA73299.png','SPA63817.jsp','SPA73298.jsp','SPA73299.jsp','2021-06-11','2021-06-12','500'),('SPA63817','2-Panel雙十字葉片','../../assets/basketball/outside/SPA63817.png','$800','橡膠','室外','7號球','100','其他相關籃球:','../../assets/basketball/outside/SPA73298.png','../../assets/basketball/outside/SPA63251.jpg','../../assets/basketball/outside/SPA73299.png','SPA73298.jsp','SPA63251.jsp','SPA73299.jsp','2021-06-11','2021-06-12','500'),('SPA64281','白金NBA系列室內球','../../assets/basketball/indoor/SPA64281.jpg','$1000  ','高級合成皮','室內','7號球','100','其他相關籃球:','../../assets/basketball/indoor/SPA74346.jpg','../../assets/basketball/indoor/SPA74403.png',NULL,'SPA74346.jsp','SPA74403.jsp',NULL,'2021-06-11','2021-06-12','500'),('SPA73298','Grip Control','../../assets/basketball/outside/SPA73298.png','$700','橡膠','室外','7號球','100','其他相關籃球:','../../assets/basketball/outside/SPA63817.png','../../assets/basketball/outside/SPA63251.jpg','../../assets/basketball/outside/SPA73299.png','SPA63817.jsp','SPA63251.jsp','SPA73299.jsp','2021-06-11','2021-06-12','500'),('SPA73299','金色NBA系列室外用球','../../assets/basketball/outside/SPA73299.png','$780','橡膠','室外','7號球','100','其他相關籃球:','../../assets/basketball/outside/SPA63817.png','../../assets/basketball/outside/SPA63251.jpg','../../assets/basketball/outside/SPA73298.png','SPA63817.jsp','SPA63251.jsp','SPA73298.jsp','2021-06-11','2021-06-12','500'),('SPA74077','金色NBA系列合成皮球','../../assets/basketball/in_and_out/SPA74077.jpg','$990','一般合成皮','室內/外','7號球','100','其他相關籃球:','../../assets/basketball/in_and_out/SPA74096.jpg','../../assets/basketball/in_and_out/SPA74087.png',NULL,'SPA74096.jsp','SPA74087.jsp',NULL,'2021-06-11','2021-06-12','500'),('SPA74087','銀色NBA系列合成皮球','../../assets/basketball/in_and_out/SPA74087.png','$990','一般合成皮','室內/外','7號球','100','其他相關籃球:','../../assets/basketball/in_and_out/SPA74096.jpg','../../assets/basketball/in_and_out/SPA74077.jpg',NULL,'SPA74096.jsp','SPA74077.jsp',NULL,'2021-06-11','2021-06-12','500'),('SPA74096','Never Flat','../../assets/basketball/in_and_out/SPA74096.jpg','$790','一般合成皮','室內/外','7號球','100','其他相關籃球:','../../assets/basketball/in_and_out/SPA74077.jpg','../../assets/basketball/in_and_out/SPA74087.png',NULL,'SPA74077.jsp','SPA74087.jsp',NULL,'2021-06-11','2021-06-12','500'),('SPA74346','2-Panel雙十字葉片','../../assets/basketball/indoor/SPA74346.jpg','$800  ','高級合成皮','室內','6號球','100','其他相關籃球:','../../assets/basketball/indoor/SPA64281.jpg','../../assets/basketball/indoor/SPA74403.png',NULL,'SPA64281.jsp','SPA74403.jsp',NULL,'2021-06-11','2021-06-12','500'),('SPA74403','NBA指定用球','../../assets/basketball/indoor/SPA74403.png','$2000  ','真牛皮','室內','7號球','100','其他相關籃球:','../../assets/basketball/indoor/SPA74346.jpg','../../assets/basketball/indoor/SPA64281.jpg',NULL,'SPA64281.jsp','SPA74346.jsp',NULL,'2021-06-11','2021-06-12','500'),('Stephen Curry','簽名紀念版籃球','../../assets/basketball/star/curry.png','$5190  ','一般合成皮','室內/外','7號球','100','其他相關籃球:','../../assets/basketball/star/Kobe.jpg','../../assets/basketball/star/James.png',NULL,'kobe.jsp','lebron.jsp',NULL,'2021-06-11','2021-06-12','500');
/*!40000 ALTER TABLE `basketball_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `counter` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestbook` (
  `GBNO` tinyint NOT NULL AUTO_INCREMENT,
  `Mail` varchar(30) DEFAULT NULL,
  `Content` tinytext,
  `Putdate` date DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
INSERT INTO `guestbook` VALUES (1,'ttt@gmail.com','tight ball','2021-06-13','0:0:0:0:0:0:0:1','SPA64281'),(2,'ttt@gmail.com','tight ball','2021-06-13','0:0:0:0:0:0:0:1','SPA64281'),(3,'sdfg2@gdsf','sfdgsdfgsdf','2021-06-13','0:0:0:0:0:0:0:1','SPA64281'),(4,'sdfg2@gdsf','sfdgsdfgsdf','2021-06-13','0:0:0:0:0:0:0:1','SPA64281'),(5,'et@gasd','eatet','2021-06-13','0:0:0:0:0:0:0:1',NULL),(6,'','','2021-06-13','0:0:0:0:0:0:0:1',NULL),(7,'123@gg','123','2021-06-13','0:0:0:0:0:0:0:1',NULL),(8,'jabez@yahoo.com','Stephen Currrryyyy','2021-06-13','0:0:0:0:0:0:0:1',NULL),(9,'123@gg','123','2021-06-13','0:0:0:0:0:0:0:1',NULL),(10,'nice@gmail.com','nice','2021-06-13','0:0:0:0:0:0:0:1',NULL),(11,'nice@gmail.com','nice','2021-06-13','0:0:0:0:0:0:0:1',NULL),(12,'tie2@gmail','colorful ball , cool','2021-06-13','0:0:0:0:0:0:0:1',NULL),(13,'asd@asd','asdd','2021-06-13','0:0:0:0:0:0:0:1',NULL),(14,'EFASD@ga','asdasd','2021-06-13','0:0:0:0:0:0:0:1',NULL),(15,'tie@gmail.com','tue','2021-06-14','0:0:0:0:0:0:0:1',NULL),(16,'123@123123','123','2021-06-14','0:0:0:0:0:0:0:1','SPA64281'),(17,'','','2021-06-14','0:0:0:0:0:0:0:1',''),(18,'','','2021-06-14','0:0:0:0:0:0:0:1',NULL),(19,'','','2021-06-14','0:0:0:0:0:0:0:1',NULL),(20,'tead@gna','asd','2021-06-14','0:0:0:0:0:0:0:1',NULL),(21,'tga@g2','213124','2021-06-14','0:0:0:0:0:0:0:1',NULL),(22,'123@123','123124','2021-06-14','0:0:0:0:0:0:0:1',NULL),(23,'123@gggg.123','wqeweq','2021-06-14','0:0:0:0:0:0:0:1','null'),(24,'123@gggg.123','wqeweq','2021-06-14','0:0:0:0:0:0:0:1','null'),(25,'12312@gggg','23123','2021-06-14','0:0:0:0:0:0:0:1','null'),(26,'12312@213','213','2021-06-14','0:0:0:0:0:0:0:1','null'),(27,'12312@213','213','2021-06-14','0:0:0:0:0:0:0:1','null'),(28,'2312321@gggg.ccc','2313','2021-06-14','0:0:0:0:0:0:0:1',''),(29,'123123@gggg.ccc','3123123','2021-06-14','0:0:0:0:0:0:0:1',''),(30,'123123@222.cc','1111111','2021-06-14','0:0:0:0:0:0:0:1','null'),(31,'1111@22321313.jh','111','2021-06-14','0:0:0:0:0:0:0:1','null'),(32,'123@123.com','123','2021-06-14','0:0:0:0:0:0:0:1','null'),(33,'123@123.com','123','2021-06-14','0:0:0:0:0:0:0:1','null'),(34,'123@123.com','123','2021-06-14','0:0:0:0:0:0:0:1','null'),(35,'123@123.com','123','2021-06-14','0:0:0:0:0:0:0:1','null'),(36,'123@123.com','123','2021-06-14','0:0:0:0:0:0:0:1','null'),(37,'123@123.com','123','2021-06-14','0:0:0:0:0:0:0:1','null'),(38,'123@123.com','123','2021-06-14','0:0:0:0:0:0:0:1','null'),(39,'123@123.com','213','2021-06-14','0:0:0:0:0:0:0:1','null'),(40,'123@123.com','123@123.com','2021-06-14','0:0:0:0:0:0:0:1',''),(41,'123@123.com','123@123.com','2021-06-14','0:0:0:0:0:0:0:1',''),(42,'123@123.com','123@123.com','2021-06-14','0:0:0:0:0:0:0:1','null'),(43,'123@123.com','123@123.com','2021-06-14','0:0:0:0:0:0:0:1','null'),(46,'123@com.co','123@com.co','2021-06-14','0:0:0:0:0:0:0:1','SPA64281'),(48,'nice@gmail.com','good nba ball~','2021-06-14','0:0:0:0:0:0:0:1','SPA64281'),(49,'handsomeboy@gmail.com','I like Curry!!','2021-06-14','0:0:0:0:0:0:0:1','curry'),(50,'tunghuat@gmail.com','LeBron is my idol~','2021-06-14','0:0:0:0:0:0:0:1','lebron'),(51,'nice@niec','so colourful ball~','2021-06-14','0:0:0:0:0:0:0:1','SPA63817');
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index`
--

DROP TABLE IF EXISTS `index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `index` (
  `image` text,
  `content` varchar(45) DEFAULT NULL,
  `html` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `color` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `clicktimes` varchar(45) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `alter_date` date DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index`
--

LOCK TABLES `index` WRITE;
/*!40000 ALTER TABLE `index` DISABLE KEYS */;
INSERT INTO `index` VALUES ('../../assets/image/choco.png','球經Choco讓Curry紀念球打5折',NULL,'choco',NULL,NULL,'image','100','2021-06-09','2021-06-08','2021-06-10'),('../../assets/image/jabez1.png','主將池同發讓james紀念球打5折',NULL,'jabez',NULL,NULL,'image','100','2021-06-09','2021-06-08','2021-06-10'),('../../assets/basketball/star/Kobe.jpg','簽名紀念版籃球','kobe.jsp','Kobe Bryant','purple','80','allstar','800','2021-06-09','2021-06-08','2021-06-10'),('../../assets/basketball/star/James.png','簽名紀念版籃球','lebron.jsp','Lebron James','orange','80','allstar','800','2021-06-09','2021-06-08','2021-06-10'),('../../assets/basketball/star/curry.png','簽名紀念版籃球','curry.jsp','Stephen Curry','blue & white & yellow','80','allstar','800','2021-06-09','2021-06-08','2021-06-10'),('../../assets/image/zhe1.png','人氣王冠哲讓Kobe紀念球打5折',NULL,'zhe',NULL,NULL,'image','100','2021-06-09','2021-06-08','2021-06-10');
/*!40000 ALTER TABLE `index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'123','123','123'),(2,'4321','1234','1234@gmail.com'),(3,'12345','12345','12345'),(4,'12345','12345','123456'),(5,'aaa','aaa','aaa'),(6,'admin','admin','admin@gmail.com'),(7,'ccc','ccc','ccc'),(8,'noob','noob','noob'),(9,'test','test','test'),(10,'test','test','test@gmail.com'),(11,'tie','123','tie'),(12,'tiee','tiee','tiee'),(13,'13245','12345','12345'),(14,'66666','6666','666'),(15,'456789','456789','456789@gmail.com'),(16,'fuck','fuck','fuck@fuck.com'),(17,'fuck123','fuck123','fuck123@fuck123.com');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_info`
--

DROP TABLE IF EXISTS `member_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_info` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `born_date` date DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_info`
--

LOCK TABLES `member_info` WRITE;
/*!40000 ALTER TABLE `member_info` DISABLE KEYS */;
INSERT INTO `member_info` VALUES (1,'66666','3213','on','123','null','123','2021-06-23'),(2,'66666','3213','on','123','null','123','2021-06-23'),(3,'66666','3213','on','123','null','123','2021-06-23'),(4,'456789','456789','on','456789','null','456789','2021-06-25'),(5,'fuck','fuck','on','fuck','null','12312312','2021-06-16'),(6,'fuck','fuck','å¥³','fuck','null','12312312','2021-06-16'),(7,'fuck123','fuck123','å¥³','fuck123','null','fuck123','2021-07-08'),(8,'fuck123','fuck123','ç·','fuck123','fuck123@fuck123.com','fuck123','2021-06-18'),(9,'fuck','fuck','ç·','fuck','fuck@g','fuck','2021-06-04'),(10,'fuck','fuck','ç·','fuck','fuck@fuck','fuck','2021-06-03'),(11,'fuck','1','null','1','1@1','1','2021-06-16');
/*!40000 ALTER TABLE `member_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchandise`
--

DROP TABLE IF EXISTS `merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchandise` (
  `ball_number` varchar(45) NOT NULL,
  `html` varchar(45) DEFAULT NULL,
  `image` text,
  `name` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `prize` varchar(45) DEFAULT NULL,
  `content` text,
  `publish` varchar(45) DEFAULT NULL,
  `clicktimes` varchar(45) DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `change_date` date DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ball_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchandise`
--

LOCK TABLES `merchandise` WRITE;
/*!40000 ALTER TABLE `merchandise` DISABLE KEYS */;
INSERT INTO `merchandise` VALUES ('Kobe Byrant','kobe.jsp','../../assets/basketball/star/Kobe.jpg','簽名紀念版籃球','purple','110','allstar','5190','memorial ball','2021-06-07','600','2021-06-08','2021-06-09','全明星'),('LeBron James','lebron.jsp','../../assets/basketball/star/James.png','簽名紀念版籃球','orange','100','allstar','5190','memorial ball','2021-06-07','800','2021-06-08','2021-06-09','全明星'),('SPA63251','SPA63251.jsp','../../assets/basketball/outside/SPA63251.jpg','仿皮系列Legacy','brown','100','outdoor','800','outdoor leather','2021-06-07','600','2021-06-08','2021-06-09','室外'),('SPA63817','SPA63817.jsp','../../assets/basketball/outside/SPA63817.png','2-Panel雙十字葉片','orange','100','outdoor','800','Outdoor First Pick','2021-06-07','500','2021-06-08','2021-06-09','室外'),('SPA64281','SPA64281.jsp','../../assets/basketball/indoor/SPA64281.jpg','白金NBA系列室內球','orange','100','indoor','900','First pick','2021-06-07','500','2021-06-07','2021-06-08','室內'),('SPA73298','SPA73298.jsp','../../assets/basketball/outside/SPA73298.png','Grip Control','orange & black','100','outdoor','850','Outdoor ball','2021-06-07','800','2021-06-08','2021-06-09','室外'),('SPA73299','SPA73299.jsp','../../assets/basketball/outside/SPA73299.png','金色NBA系列室外用球','orange','100','outdoor','750','Outdoor, Durable','2021-06-07','500','2021-06-08','2021-06-09','室外'),('SPA74077','SPA74077.jsp','../../assets/basketball/in_and_out/SPA74077.jpg','金色NBA系列合成皮球','orange','100','inoutdoor ','850','outdoor & indoor used ball','2021-06-07','500','2021-06-08','2021-06-09','室內/外'),('SPA74087','SPA74087.jsp','../../assets/basketball/in_and_out/SPA74087.png','銀色NBA系列合成皮球','orange','100','inoutdoor','850','outdoor and indoor used ball','2021-06-07','500','2021-06-08','2021-06-09','室內'),('SPA74096','SPA74096.jsp','../../assets/basketball/in_and_out/SPA74096.jpg','Never Flat','orange','100','inoutdoor','850','outdoor & indoor used ball','2021-06-07','500','2021-06-08','2021-06-09','室內'),('SPA74346','SPA74346.jsp','../../assets/basketball/indoor/SPA74346.jpg','2-Panel雙十字葉片','orange & white','100','indoor','950','First pick','2021-06-05','300','2021-06-07','2021-06-08','室內'),('SPA74403','SPA74403.jsp','../../assets/basketball/indoor/SPA74403.png','NBA指定用球','orange','100','indoor','1050','NBA official basketball','2021-06-07','800','2021-06-08','2021-06-09','室內'),('Stephen Curry','curry.jsp','../../assets/basketball/star/curry.png','簽名紀念版籃球','blue & white & yellow','80','allstar','5190','memorial ball','2021-06-07','800','2021-06-08','2021-06-09','全明星');
/*!40000 ALTER TABLE `merchandise` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-14 23:04:15
