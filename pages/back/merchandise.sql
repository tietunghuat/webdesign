-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: basketball
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
  `price` int DEFAULT NULL,
  `material` varchar(45) DEFAULT NULL,
  `venue` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `related` varchar(45) DEFAULT NULL,
  `page_one_image` text,
  `page_two_image` text,
  `page_three_image` text,
  `pd_name` varchar(45) DEFAULT NULL,
  `page_one_html` text,
  `page_two_html` text,
  `page_three_html` text,
  `publish_date` date DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `clicktimes` varchar(45) DEFAULT NULL,
  `basketball_pagescol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ball_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basketball_pages`
--

LOCK TABLES `basketball_pages` WRITE;
/*!40000 ALTER TABLE `basketball_pages` DISABLE KEYS */;
INSERT INTO `basketball_pages` VALUES ('Kobe Bryant','簽名紀念版籃球','../../assets/basketball/star/Kobe.jpg',5190,'一般合成皮','室內/外','7號球','115','其他相關籃球:','../../assets/basketball/star/James.png','../../assets/basketball/star/curry.png',NULL,'kobe.jsp','lebron.jsp','curry.jsp',NULL,'2021-06-11','2021-06-12','500',NULL),('LeBron James','簽名紀念版籃球','../../assets/basketball/star/James.png',5190,'一般合成皮','室內/外','7號球','105','其他相關籃球:','../../assets/basketball/star/Kobe.jpg','../../assets/basketball/star/curry.png',NULL,'lebron.jsp','kobe.jsp','curry.jsp',NULL,'2021-06-11','2021-06-12','500',NULL),('SPA63251','仿皮系列Legacy','../../assets/basketball/outside/SPA63251.jpg',700,'橡膠','室外','7號球','105','其他相關籃球:','../../assets/basketball/outside/SPA63817.png','../../assets/basketball/outside/SPA73298.png','../../assets/basketball/outside/SPA73299.png','SPA63251.jsp','SPA63817.jsp','SPA73298.jsp','SPA73299.jsp','2021-06-11','2021-06-12','500',NULL),('SPA63817','2-Panel雙十字葉片','../../assets/basketball/outside/SPA63817.png',800,'橡膠','室外','7號球','100','其他相關籃球:','../../assets/basketball/outside/SPA73298.png','../../assets/basketball/outside/SPA63251.jpg','../../assets/basketball/outside/SPA73299.png','SPA63817.jsp','SPA73298.jsp','SPA63251.jsp','SPA73299.jsp','2021-06-11','2021-06-12','500',NULL),('SPA64281','白金NBA系列室內球','../../assets/basketball/indoor/SPA64281.jpg',1000,'高級合成皮','室內','7號球','100','其他相關籃球:','../../assets/basketball/indoor/SPA74346.jpg','../../assets/basketball/indoor/SPA74403.png',NULL,'SPA64281.jsp','SPA74346.jsp','SPA74403.jsp',NULL,'2021-06-11','2021-06-12','500',NULL),('SPA73298','Grip Control','../../assets/basketball/outside/SPA73298.png',700,'橡膠','室外','7號球','100','其他相關籃球:','../../assets/basketball/outside/SPA63817.png','../../assets/basketball/outside/SPA63251.jpg','../../assets/basketball/outside/SPA73299.png','SPA73298.jsp','SPA63817.jsp','SPA63251.jsp','SPA73299.jsp','2021-06-11','2021-06-12','500',NULL),('SPA73299','金色NBA系列室外用球','../../assets/basketball/outside/SPA73299.png',780,'橡膠','室外','7號球','100','其他相關籃球:','../../assets/basketball/outside/SPA63817.png','../../assets/basketball/outside/SPA63251.jpg','../../assets/basketball/outside/SPA73298.png','SPA73299.jsp','SPA63817.jsp','SPA63251.jsp','SPA73298.jsp','2021-06-11','2021-06-12','500',NULL),('SPA74077','金色NBA系列合成皮球','../../assets/basketball/in_and_out/SPA74077.jpg',990,'一般合成皮','室內/外','7號球','100','其他相關籃球:','../../assets/basketball/in_and_out/SPA74096.jpg','../../assets/basketball/in_and_out/SPA74087.png',NULL,'SPA74077.jsp','SPA74096.jsp','SPA74087.jsp',NULL,'2021-06-11','2021-06-12','500',NULL),('SPA74087','銀色NBA系列合成皮球','../../assets/basketball/in_and_out/SPA74087.png',990,'一般合成皮','室內/外','7號球','100','其他相關籃球:','../../assets/basketball/in_and_out/SPA74096.jpg','../../assets/basketball/in_and_out/SPA74077.jpg',NULL,'SPA74087.jsp','SPA74096.jsp','SPA74077.jsp',NULL,'2021-06-11','2021-06-12','500',NULL),('SPA74096','Never Flat','../../assets/basketball/in_and_out/SPA74096.jpg',790,'一般合成皮','室內/外','7號球','100','其他相關籃球:','../../assets/basketball/in_and_out/SPA74077.jpg','../../assets/basketball/in_and_out/SPA74087.png',NULL,'SPA74096.jsp','SPA74077.jsp','SPA74087.jsp',NULL,'2021-06-11','2021-06-12','500',NULL),('SPA74346','2-Panel雙十字葉片','../../assets/basketball/indoor/SPA74346.jpg',800,'高級合成皮','室內','6號球','100','其他相關籃球:','../../assets/basketball/indoor/SPA64281.jpg','../../assets/basketball/indoor/SPA74403.png',NULL,'SPA74346.jsp','SPA64281.jsp','SPA74403.jsp',NULL,'2021-06-11','2021-06-12','500',NULL),('SPA74403','NBA指定用球','../../assets/basketball/indoor/SPA74403.png',2000,'真牛皮','室內','7號球','100','其他相關籃球:','../../assets/basketball/indoor/SPA74346.jpg','../../assets/basketball/indoor/SPA64281.jpg',NULL,'SPA74403.jsp','SPA64281.jsp','SPA74346.jsp',NULL,'2021-06-11','2021-06-12','500',NULL),('Stephen Curry','簽名紀念版籃球','../../assets/basketball/star/curry.png',5190,'一般合成皮','室內/外','7號球','113','其他相關籃球:','../../assets/basketball/star/Kobe.jpg','../../assets/basketball/star/James.png',NULL,'cuury.jsp','kobe.jsp','lebron.jsp',NULL,'2021-06-11','2021-06-12','500',NULL);
/*!40000 ALTER TABLE `basketball_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberID` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (63,'sss','SPA64281','1','1000',NULL),(65,'fafa','SPA64281','1','1000',NULL),(66,'fafa','SPA74346','1','800',NULL),(67,'www','SPA64281','1','1000',NULL),(68,'www','SPA64281','2','2000',NULL),(69,'66666','LeBron James','1','5190',NULL),(70,'66666','Kobe Bryant','1','5190',NULL),(72,'qwe','SPA64281','1','1000','../../assets/basketball/indoor/SPA64281.jpg');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
  `time` varchar(45) NOT NULL,
  `star` int DEFAULT '0',
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
INSERT INTO `guestbook` VALUES (63,'321231@gmail','123123@','2021-06-19','0:0:0:0:0:0:0:1','kobe','Sat Jun 19 19:37:02 SGT 2021',0),(64,'gg@gg','gg','2021-06-19','0:0:0:0:0:0:0:1','kobe','Sat Jun 19 19:37:38 SGT 2021',0),(65,'123123@213123','123123','2021-06-19','0:0:0:0:0:0:0:1','kobe','Sat Jun 19 20:03:53 SGT 2021',0),(68,'ss@ss','aa','2021-06-19','0:0:0:0:0:0:0:1','kobe','Sat Jun 19 20:45:22 SGT 2021',4),(69,'dd@dd','dd','2021-06-19','0:0:0:0:0:0:0:1','kobe','Sat Jun 19 20:54:18 SGT 2021',4),(70,'KOBE@BKOE','kobeeee','2021-06-19','0:0:0:0:0:0:0:1','kobe','Sat Jun 19 21:04:37 SGT 2021',3),(71,'213@123','123123','2021-06-19','0:0:0:0:0:0:0:1','lebron','Sat Jun 19 21:12:59 SGT 2021',3),(72,'213@213','123','2021-06-19','0:0:0:0:0:0:0:1','SPA74346','Sat Jun 19 21:15:41 SGT 2021',5),(73,'123@213','213213','2021-06-19','0:0:0:0:0:0:0:1','SPA73298','Sat Jun 19 21:15:50 SGT 2021',1),(74,'h2h@haha','haha','2021-06-19','0:0:0:0:0:0:0:1','SPA74346','Sat Jun 19 21:18:16 SGT 2021',4),(75,'213123@123','123123','2021-06-19','0:0:0:0:0:0:0:1','SPA64281','Sat Jun 19 21:55:07 SGT 2021',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (6,'admin','admin','admin@gmail.com'),(7,'ccc','ccc','ccc'),(14,'66666','6666','666'),(24,'aaa','aaa','aaa@aaa'),(25,'hello','hello','hello@hello'),(27,'nya','nya','123@v'),(28,'fa','fa','fa@fa'),(29,'hi','hi','hi@hi'),(30,'noo','noo','noo@'),(31,'sss','sss','sss@sss'),(32,'wew','wew','wew@wew'),(33,'fafa','fafa','fafa@fafa'),(34,'www','www','www@www'),(35,'www','www','www2@www'),(36,'qwe','qwe','qwe@qwe'),(37,'qwe','qwe','qwe@wqe'),(38,'qwe','qwe','qwe'),(39,'haaa','haaa','haaa');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_info`
--

LOCK TABLES `member_info` WRITE;
/*!40000 ALTER TABLE `member_info` DISABLE KEYS */;
INSERT INTO `member_info` VALUES (16,'hello','hello','男','hello','hello@vhello','hello','2021-06-30'),(17,'66666','123','男','213','123@123','123123','2021-06-08'),(18,'66666','123','男','41324','12!@123','1234123','2021-06-08'),(19,'66666','66666','男','6666','6666@666','6666','2021-06-16'),(20,'66666','112','男','1','1@1','12','2021-07-08'),(21,'789','123','男','123','123@ccc.com','123','2021-07-01'),(22,'123456','123456','null','123456@','123@123','123456789','2021-06-02'),(23,'hello','123','ç·','123123','21312@123','3123213','2021-06-17'),(24,'nya','nya','ç·','nya','nya@nya','21314','2021-06-30'),(25,'66666','nya','男','nya','nya@2','nya','2021-06-23'),(26,'66666','123123','ç·','12312312','213@123','12314123','2021-06-25'),(27,'fa','fa','ç·','fa','fa2@fa','fa','2021-06-02'),(28,'fa','213','男','323','12@123','3123','2021-06-02'),(29,'66666','234','男','1324','1243@123','123124','2021-06-18'),(30,'hi','hi','男','hi','hi@hi','hi','2021-06-12'),(31,'noo','noo','男','noo','noonoo@noo','noo','2021-06-11'),(32,'sss','sss','女','sss','sss@sss','sss','2021-06-15'),(33,'wew','wew','男','wew','wew@123','wew','2021-06-08'),(34,'fafa','fafa','男','fafa','fafa@vfafa','fafa','2021-07-06'),(35,'www','www','女','www','www@www','www','2021-03-03'),(36,'www','www','女','www','www@www','www','2021-06-14'),(37,'qwe','qwe','男','qwe','qwe@qwe','qwe','2021-06-06'),(38,'qwe','qwe','男','qwe','qwe2@qwe','qwe','2021-06-07'),(39,'qwe','qwe','男','qwe','qwe@qwe','qwe','2021-06-17');
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
  `price` varchar(45) DEFAULT NULL,
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
INSERT INTO `merchandise` VALUES ('Kobe Byrant','kobe.jsp','../../assets/basketball/star/Kobe.jpg','簽名紀念版籃球','purple','120','allstar','5190','memorial ball','2021-06-07','600','2021-06-08','2021-06-09','全明星'),('LeBron James','lebron.jsp','../../assets/basketball/star/James.png','簽名紀念版籃球','orange','100','allstar','5190','memorial ball','2021-06-07','800','2021-06-08','2021-06-09','全明星'),('SPA63251','SPA63251.jsp','../../assets/basketball/outside/SPA63251.jpg','仿皮系列Legacy','brown','100','outdoor','800','outdoor leather','2021-06-07','600','2021-06-08','2021-06-09','室外'),('SPA63817','SPA63817.jsp','../../assets/basketball/outside/SPA63817.png','2-Panel雙十字葉片','orange','100','outdoor','800','Outdoor First Pick','2021-06-07','500','2021-06-08','2021-06-09','室外'),('SPA64281','SPA64281.jsp','../../assets/basketball/indoor/SPA64281.jpg','白金NBA系列室內球','orange','100','indoor','900','First pick','2021-06-07','500','2021-06-07','2021-06-08','室內'),('SPA73298','SPA73298.jsp','../../assets/basketball/outside/SPA73298.png','Grip Control','orange & black','100','outdoor','850','Outdoor ball','2021-06-07','800','2021-06-08','2021-06-09','室外'),('SPA73299','SPA73299.jsp','../../assets/basketball/outside/SPA73299.png','金色NBA系列室外用球','orange','100','outdoor','750','Outdoor, Durable','2021-06-07','500','2021-06-08','2021-06-09','室外'),('SPA74077','SPA74077.jsp','../../assets/basketball/in_and_out/SPA74077.jpg','金色NBA系列合成皮球','orange','100','inoutdoor ','850','outdoor & indoor used ball','2021-06-07','500','2021-06-08','2021-06-09','室內/外'),('SPA74087','SPA74087.jsp','../../assets/basketball/in_and_out/SPA74087.png','銀色NBA系列合成皮球','orange','100','inoutdoor','850','outdoor and indoor used ball','2021-06-07','500','2021-06-08','2021-06-09','室內'),('SPA74096','SPA74096.jsp','../../assets/basketball/in_and_out/SPA74096.jpg','Never Flat','orange','100','inoutdoor','850','outdoor & indoor used ball','2021-06-07','500','2021-06-08','2021-06-09','室內'),('SPA74346','SPA74346.jsp','../../assets/basketball/indoor/SPA74346.jpg','2-Panel雙十字葉片','orange & white','100','indoor','950','First pick','2021-06-05','300','2021-06-07','2021-06-08','室內'),('SPA74403','SPA74403.jsp','../../assets/basketball/indoor/SPA74403.png','NBA指定用球','orange','100','indoor','1050','NBA official basketball','2021-06-07','800','2021-06-08','2021-06-09','室內'),('Stephen Curry','curry.jsp','../../assets/basketball/star/curry.png','簽名紀念版籃球','blue & white & yellow','80','allstar','5190','memorial ball','2021-06-07','800','2021-06-08','2021-06-09','全明星');
/*!40000 ALTER TABLE `merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberName` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `pay` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `product` varchar(1000) DEFAULT NULL,
  `total` int DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (14,'66666','','male','','','delivery','','','SPA64281,SPA64281,',2000,'2021-06-18 17:47:50',0),(15,'66666','123','male','23312','312','delivery','3123123','123','SPA64281,SPA64281,',2000,'2021-06-18 17:50:28',0),(16,'66666','123124','male','123@13123','41234','delivery','1234','124213','SPA64281,SPA64281,SPA64281,',3000,'2021-06-18 18:54:25',0),(17,'qwe','qwe','male','qwe@qwe','qwe','delivery','qwe','qwe','SPA64281,',1000,'2021-06-19 14:46:59',0),(18,'qwe','qwe','male','qwe@qwe','qwe','delivery','qwe','qwe','SPA64281,',1000,'2021-06-19 21:55:19',0);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-19 22:18:19
