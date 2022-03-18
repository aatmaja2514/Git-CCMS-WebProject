CREATE DATABASE  IF NOT EXISTS `ccms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ccms`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ccms
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Admin_No` int NOT NULL AUTO_INCREMENT,
  `Admin_Id` varchar(20) DEFAULT NULL,
  `Admin_Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`Admin_No`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'AD1','Aditi Narkar','aditinarkar@gmail.com','111','1234567890',20),(2,'AD2','Aditya Kachare','adityakachare121@gmail.com','111','1234567890',21),(3,'AD3','Aryan Mishra','aryan@gmail.com','tuf09','2222222222',25);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge`
--

DROP TABLE IF EXISTS `challenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenge` (
  `Challenge_No` int NOT NULL AUTO_INCREMENT,
  `Challenge_Id` varchar(20) DEFAULT NULL,
  `ch_club` varchar(30) DEFAULT NULL,
  `opp_club` varchar(30) DEFAULT NULL,
  `Venue_id` varchar(30) DEFAULT NULL,
  `Challenge_Date` varchar(45) DEFAULT NULL,
  `Challenge_Time` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `match_status` varchar(45) DEFAULT NULL,
  `exclude_from_team` varchar(45) DEFAULT ' ',
  `include_from_mem` varchar(45) DEFAULT ' ',
  PRIMARY KEY (`Challenge_No`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge`
--

LOCK TABLES `challenge` WRITE;
/*!40000 ALTER TABLE `challenge` DISABLE KEYS */;
INSERT INTO `challenge` VALUES (146,'CLN146','CL1','CL2','VN1','Sun, Feb 20 2022','7:00 pm','Approved','Finished',' ',' '),(147,'CLN147','CL1','CL2','VN1','Wed, Feb 23 2022','4:00 pm','Approved','Finished',' ',' '),(148,'CLN148','CL1','CL2','VN1','Fri, Feb 25 2022','4:00 pm','Unapproved','Finished',' ',' '),(149,'CLN149','CL1','CL2','VN1','Sun, Feb 20 2022','7:00 am','Unapproved','Finished',' ',' '),(150,'CLN150','CL2','CL1','VN2','Tue, Feb 22 2022','4:00 pm','Approved','Finished',' ',' '),(151,'CLN151','CL2','CL1','VN2','Sun, Feb 27 2022','4:00 pm','Unapproved','Finished',' ',' '),(171,'CLN171','CL1','CL2','VN1','Thu, Mar 17 2022','5:00 AM','Approved','Finished',' ',' '),(172,'CLN172','CL1','CL2','VN1','Thu, Mar 31 2022','5:00 AM','Approved','Ongoing',' ',' '),(173,'CLN173','CL2','CL1','VN2','Sun, Mar 27 2022','9:00 AM','Approved','Ongoing',' ',' '),(174,'CLN174','CL2','CL1','VN2','Sat, Mar 05 2022','6:00 AM','Approved','Finished',' ',' '),(175,'CLN175','CL1','CL2','VN1','Wed, Mar 16 2022','5:00 AM','Approved','Finished',' MEM145 MEM146',' MEM128 MEM132 MEM144'),(176,'CLN176','CL1','CL2','VN1','Tue, Mar 15 2022','5:00 AM','Approved','Finished',' MEM144 MEM145 MEM146',' MEM124 MEM128 MEM132'),(177,'CLN177','CL1','CL2','VN1','Wed, Mar 23 2022','5:00 AM','Approved','Ongoing',' MEM128 MEM134 MEM146',' MEM124 MEM133 MEM145'),(178,'CLN178','CL2','CL1','VN2','Tue, Mar 22 2022','9:00 AM','Approved','Ongoing',' MEM134 MEM144 MEM146',' MEM124 MEM133 MEM145'),(179,'CLN179','CL2','CL1','VN2','Fri, Mar 11 2022','6:00 AM','Approved','Finished',' MEM144 MEM145 MEM146',' MEM124 MEM133 MEM134'),(180,'CLN180','CL1','CL2','VN1','Mon, Mar 21 2022','5:00 AM','Approved','Ongoing',' MEM128 MEM132',' MEM124 MEM133 MEM134 MEM136 MEM146');
/*!40000 ALTER TABLE `challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `Club_No` int NOT NULL AUTO_INCREMENT,
  `Club_Id` varchar(45) DEFAULT NULL,
  `Club_Name` varchar(45) DEFAULT NULL,
  `Venue_Id` varchar(30) DEFAULT NULL,
  `club_desc` varchar(255) DEFAULT NULL,
  `Max_capacity` int DEFAULT NULL,
  `Status` varchar(45) DEFAULT 'Pending',
  PRIMARY KEY (`Club_No`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1,'CL1','Spartan Strikers','VN1','The Spartan Strikers are a franchise cricket Club Founded in 2015. They play in Various Cricket Leagues. The team is owned by Spartan Strikers Ltd. This Club has made a record of giving target of 248 runs in 20 over matches.',50,'Approved'),(2,'CL2','Thunder Wolves','VN2','Thunder Wolves are a franchise cricket Club Founded in 2015. The team is owned by Thunder Wolves Ltd. They have won the most Sportify Cricket Club Leagues Matches.',50,'Approved'),(3,'CL3','SuperNovas','VN3','The Supernovas are a franchise cricket Club Founded in 2015. They play in Various Cricket Leagues. The team is owned by Supernovas Ltd.',50,'Approved'),(4,'CL4','Game Swingers','VN4','The Game Swingers are a franchise cricket Club Founded in 2015. They play in Various Cricket Leagues. The team is owned by Game Swingers Ltd. They are the current defending champions.',50,'Approved'),(27,'CL27','Warriors','VN34','The warriors are a franchise cricket Club Founded in 2015. They play in Various Cricket Leagues. The team is owned by Game Swingers Ltd. They are the current defending champions.',15,'Approved'),(35,'CL35','def','VN39','fff',12,'Pending'),(36,'CL36','def','VN40','fff',12,'Approved');
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `Coach_No` int NOT NULL AUTO_INCREMENT,
  `Coach_Id` varchar(10) DEFAULT NULL,
  `Coach_Name` varchar(45) DEFAULT ' ',
  `Email` varchar(45) DEFAULT ' ',
  `Contact` varchar(45) DEFAULT ' ',
  `Age` int DEFAULT '0',
  `Password` varchar(20) DEFAULT ' ',
  `Profile_Picture` varchar(45) DEFAULT ' ',
  `Experience` varchar(100) DEFAULT ' ',
  `Club_Id` varchar(20) DEFAULT ' ',
  `Status` varchar(45) DEFAULT ' ',
  PRIMARY KEY (`Coach_No`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'CH1','Tufayl Dalvi','tufayldalvi@gmail.com','8452879881',20,'123','','tyftyfu','CL1','Head'),(13,'CH13','Aditya Kachare','aditya@gmail.com','1234567890',20,'111',' ','nnfcvn','CL2','Head'),(56,'CH56','Pranay Pawar','pranay@gmail.com','9999999999',20,'111',' ','','CL27','Head'),(57,'CH57','Sahil',' ',' ',0,' ',' ',' ','CL27','Batting'),(58,'CH58','XYZ',' ',' ',0,' ',' ',' ','CL27','Fielding'),(59,'CH59','PQR',' ',' ',0,' ',' ',' ','CL27','Bowling'),(61,'CH61','bbb',' ',' ',0,' ',' ',' ','CL1','Bowling'),(62,'CH62','ccc',' ',' ',0,' ',' ',' ','CL1','Fielding'),(97,'CH97','sa','ddwd','esf',22,'123',' ','dwd','CL36','Head'),(98,'CH98','22',' ',' ',0,' ',' ',' ','CL36','Batting'),(99,'CH99','ff',' ',' ',0,' ',' ',' ','CL36','Fielding'),(100,'CH100','fff',' ',' ',0,' ',' ',' ','CL36','Bowling');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `Member_No` int NOT NULL AUTO_INCREMENT,
  `Member_Id` varchar(30) DEFAULT NULL,
  `Full_name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Club_Id` varchar(45) DEFAULT NULL,
  `Session_Id` varchar(45) DEFAULT NULL,
  `Interested_Status` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Color` varchar(45) DEFAULT ' ',
  `Pet` varchar(45) DEFAULT ' ',
  PRIMARY KEY (`Member_No`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (124,'MEM124','Pranay Pawar','pranaypawar@gmail.com','2222233333',30,'123','CL1','SES20','Fielding','MS',' ',' '),(125,'MEM125','John','sahiljadhav@gmail.com','1234567891',19,'111','CL2','SES1','Batting','T',' ',' '),(128,'MEM128','Aditya Kachare','aadityakachare@gmail.com','9224303446',20,'123','CL2','SES1','Batting','T',' ',' '),(129,'MEM129','Peter Parker','peter@gmail.com','8906784563',22,'111','CL2','SES1','All Rounder','T',' ',' '),(130,'MEM130','Tony Stark','stark@gmail.com','1234567895',30,'567','CL2','SES1','Batting','T',' ',' '),(131,'MEM131','Clint Barton','hawkeyee@gmail.com','7890364783',34,'789','CL2','SES1','Bowling','T',' ',' '),(132,'MEM132','Peter Doppler','dopp@gmail.com','6574893022',20,'456','CL2','SES1','Fielding','T',' ',' '),(133,'MEM133','Will Byres','will@gmail.com','2234563332',15,'678','CL2','SES1','Bowling','M',' ',' '),(134,'MEM134','Bruce Banner ','bruce@gmail.com','7890283789',30,'456','CL2','SES1','Batting','M',' ',' '),(135,'MEM135','Steve Rogers','captain@gmail.com','6785924445',19,'555','CL2','SES1','All Rounder','T',' ',' '),(136,'MEM136','Peter Quil','star@gmail.com','7778889046',25,'890','CL2','SES1','Batting','M',' ',' '),(137,'MEM137','Miles Morales','miles@gmail.com','7890065436',18,'456','CL2','SES1','Fielding','T',' ',' '),(138,'MEM138','Aron Doppler','aron@gmail.com','7890654678',34,'123','CL2','SES1','Bowling','T',' ',' '),(139,'MEM139','Miles Morales','miles1@gmail.com','7890065436',18,'456','CL2','SES1','Fielding','T',' ',' '),(140,'MEM140','Aron Doppler','aron1@gmail.com','7890654678',34,'123','CL2','SES1','Bowling','T',' ',' '),(141,'MEM141','Peter Parker','peter1@gmail.com','8906784563',22,'111','CL2','SES1','All Rounder','T',' ',' '),(142,'MEM142','Tony Stark','stark1@gmail.com','1234567895',30,'567','CL2','SES1','Batting','T',' ',' '),(143,'MEM143','Clint Barton','hawkeye@gmail.com','7890364783',34,'789','CL2','SES1','Bowling','T',' ',' '),(144,'MEM144','AD','pranaypawar1@gmail.com','2222233333',30,'123','CL1','SES2','Fielding','T',' ',' '),(145,'MEM145','PQR','pqr@gmail.com','2222233333',30,'123','CL1','SES2','Fielding','T',' ',' '),(146,'MEM146','XYZ','xyz@gmail.com','2222233333',30,'123','CL1','SES2','Fielding','MS',' ',' '),(147,'MEM147','ABC','abc@gmail.com','2222233333',30,'123','CL3','SES3','Fielding','T',' ',' ');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_admin`
--

DROP TABLE IF EXISTS `notifications_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_admin` (
  `Notification_No` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(200) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Time` varchar(45) DEFAULT NULL,
  `Club_Id` varchar(45) DEFAULT NULL,
  `Noti_Category` varchar(30) DEFAULT NULL,
  `Sender's mail` varchar(100) DEFAULT ' ',
  PRIMARY KEY (`Notification_No`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_admin`
--

LOCK TABLES `notifications_admin` WRITE;
/*!40000 ALTER TABLE `notifications_admin` DISABLE KEYS */;
INSERT INTO `notifications_admin` VALUES (3,'New Club request byff.<a href=\'admin_add_club_req.jsp?id=CL27\'> Click to view.</a>','Mon, Mar 14 2022','5:27 PM','CL27','add club req',' '),(4,'New Club request bysa.<a href=\'admin_add_club_req.jsp?id=CL36\'> Click to view.</a>','Thu, Mar 17 2022','2:45 PM','CL36','add club req',' '),(5,'wed<br>wsdxcvbghjk,.<br>By asadfe, bruce@gmail.com','Thu, Mar 17 2022','9:54 PM','','contact us','bruce@gmail.com');
/*!40000 ALTER TABLE `notifications_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_coach`
--

DROP TABLE IF EXISTS `notifications_coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_coach` (
  `Notification_No` int NOT NULL AUTO_INCREMENT,
  `Visibility` varchar(45) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Time` varchar(30) DEFAULT NULL,
  `Noti_Category` varchar(50) DEFAULT ' ',
  `Challenge_Id` varchar(45) DEFAULT ' ',
  `Mem_Id` varchar(45) DEFAULT ' ',
  PRIMARY KEY (`Notification_No`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_coach`
--

LOCK TABLES `notifications_coach` WRITE;
/*!40000 ALTER TABLE `notifications_coach` DISABLE KEYS */;
INSERT INTO `notifications_coach` VALUES (305,'CL2','You have challenged Spartan Strikers','Sun, Feb 20 2022','11:18 PM','','CLN150','0'),(307,'all','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','11:18 PM','','CLN150','0'),(309,'CL1','You have challenged SuperNovas','Mon, Feb 21 2022','12:04 AM','','CLN155','0'),(311,'all','Spartan Strikers and SuperNovas are having a match ','Mon, Feb 21 2022','12:05 AM','','CLN155','0'),(312,'CL3','ABC has rejected to participate in the match.','Mon, Feb 21 2022','12:19 AM','team approval','MEM147','0'),(313,'CL1','You have challenged Thunder Wolves','Mon, Feb 21 2022','12:39 AM','','CLN156','0'),(315,'all','Spartan Strikers and Thunder Wolves are having a match ','Mon, Feb 21 2022','12:39 AM','','CLN156','0'),(316,'CL1','Aditya Kachare, who is among one of your club\'s member, has changed their pratice session time to 5 - 1 (SES2).','Tue, Feb 22 2022','12:59 AM','member session','','0'),(317,'CL1','Aditya Kachare, who is among one of your club\'s member, has changed their pratice session time to 5 - 8 (SES20).','Tue, Feb 22 2022','6:04 PM','member session','','0'),(318,'CL1','You have challenged Thunder Wolves','Wed, Feb 23 2022','5:00 PM','','CLN157','0'),(320,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','5:03 PM','','CLN157','0'),(321,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','5:04 PM','','CLN157','0'),(322,'CL1','You have challenged Thunder Wolves','Wed, Feb 23 2022','6:14 PM','','CLN158','0'),(324,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','6:15 PM','','CLN158','0'),(325,'CL1','Pranay Pawar has accepted to participate in the match.','Wed, Feb 23 2022','8:33 PM','team approval','MEM124','0'),(326,'all','dazcdsfc<br> Posted by tufayldalvi@gmail.com, CL1','Mon, Feb 28 2022','4:20 PM','','','0'),(327,'all','fafedgfrg<br> Posted by tufayldalvi@gmail.com, CL1','Mon, Feb 28 2022','4:23 PM','','','0'),(328,'all','djtre<br> Posted by tufayldalvi@gmail.com, Spartan Strikers','Mon, Feb 28 2022','4:33 PM','','','0'),(329,'all','hello<br> Posted by tufayldalvi@gmail.com, Spartan Strikers','Mon, Feb 28 2022','4:51 PM','by coach','','0'),(332,'CL2','dopp@gmail.com , one of your club member has requested to participate for match held on Fri, Feb 25 2022 at 3:00 AM between Spartan Strikers and Thunder Wolves.','Wed, Mar 02 2022','1:35 PM','request from member','CLN158','0'),(333,'CL2','dopp@gmail.com , one of your club member has requested to participate for match held on Fri, Feb 25 2022 at 3:00 AM between Spartan Strikers and Thunder Wolves.','Wed, Mar 02 2022','1:56 PM','request from member','CLN158','dopp@gmail.com'),(334,'CL2','You have challenged Spartan Strikers','Fri, Mar 04 2022','3:08 PM','','CLN165',' '),(336,'all','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','3:10 PM','','CLN165',' '),(337,'CL2','You have challenged Spartan Strikers','Fri, Mar 04 2022','3:21 PM','','CLN167',' '),(339,'CL2','You have challenged SuperNovas','Fri, Mar 04 2022','3:22 PM','','CLN168',' '),(340,'CL3','Thunder Wolves challenged you','Fri, Mar 04 2022','3:22 PM','challenge','CLN168',' '),(341,'CL2','You have challenged Game Swingers','Fri, Mar 04 2022','3:25 PM','','CLN169',' '),(342,'CL4','Thunder Wolves challenged you','Fri, Mar 04 2022','3:25 PM','challenge','CLN169',' '),(343,'all','Thunder Wolves and Spartan Strikers are having a match.','Fri, Mar 04 2022','3:26 PM','','CLN167',' '),(344,'CL1','You have challenged Thunder Wolves','Fri, Mar 04 2022','3:31 PM','','CLN171',' '),(346,'all','Spartan Strikers and Thunder Wolves are having a match.','Fri, Mar 04 2022','3:31 PM','','CLN171',' '),(347,'CL1','You have challenged Thunder Wolves','Fri, Mar 04 2022','3:32 PM','','CLN172',' '),(349,'all','Spartan Strikers and Thunder Wolves are having a match.','Fri, Mar 04 2022','3:32 PM','','CLN172',' '),(350,'CL2','You have challenged Spartan Strikers','Fri, Mar 04 2022','3:38 PM','','CLN173',' '),(352,'all','Thunder Wolves and Spartan Strikers are having a match.','Fri, Mar 04 2022','3:39 PM','','CLN173',' '),(353,'CL2','You have challenged Spartan Strikers','Fri, Mar 04 2022','3:39 PM','','CLN174',' '),(355,'all','Thunder Wolves and Spartan Strikers are having a match.','Fri, Mar 04 2022','3:39 PM','','CLN174',' '),(356,'CL1','pranaypawar@gmail.com , one of your club member has requested to participate for match held on Sat, Mar 05 2022 at 6:00 AM between Thunder Wolves and Spartan Strikers (CLN174).','Fri, Mar 04 2022','3:42 PM','request from member','CLN174','pranaypawar@gmail.com'),(357,'CL1','You have challenged Thunder Wolves','Fri, Mar 04 2022','6:41 PM','','CLN175',' '),(359,'all','Spartan Strikers and Thunder Wolves are having a match.','Fri, Mar 04 2022','6:41 PM','','CLN175',' '),(360,'CL1','You have challenged Thunder Wolves','Fri, Mar 04 2022','7:06 PM','','CLN176',' '),(362,'all','Spartan Strikers and Thunder Wolves are having a match.','Fri, Mar 04 2022','7:06 PM','','CLN176',' '),(363,'CL1','You have challenged Thunder Wolves','Fri, Mar 04 2022','7:24 PM','','CLN177',' '),(365,'all','Spartan Strikers and Thunder Wolves are having a match.','Fri, Mar 04 2022','7:26 PM','','CLN177',' '),(366,'CL2','You have challenged Spartan Strikers','Fri, Mar 04 2022','7:34 PM','','CLN178',' '),(368,'all','Thunder Wolves and Spartan Strikers are having a match.','Fri, Mar 04 2022','7:35 PM','','CLN178',' '),(372,'CL2','Will Byres has accepted to participate in the match (CLN178).','Fri, Mar 04 2022','11:25 PM','team approval','CLN178','MEM133'),(373,'CL2','Will Byres , one of your club member has requested to participate for match held on Tue, Mar 15 2022 at 5:00 AM between Spartan Strikers and Thunder Wolves (CLN176).','Fri, Mar 04 2022','11:29 PM','request from member','CLN176','will@gmail.com'),(374,'CL2','You have challenged Spartan Strikers','Tue, Mar 08 2022','9:40 AM','','CLN179',' '),(376,'all','Thunder Wolves and Spartan Strikers are having a match.','Tue, Mar 08 2022','10:42 AM','','CLN179',' '),(377,'CL34','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','6:28 PM',' ',' ',' '),(378,'CL34','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','6:54 PM',' ',' ',' '),(379,'CL34','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','6:55 PM',' ',' ',' '),(380,'CL34','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','6:57 PM',' ',' ',' '),(381,'CL34','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','10:16 PM',' ',' ',' '),(382,'CL27','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','10:28 PM',' ',' ',' '),(383,'CL27','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','10:28 PM',' ',' ',' '),(384,'CL27','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','10:35 PM',' ',' ',' '),(385,'CL27','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','10:38 PM',' ',' ',' '),(386,'CL27','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','10:43 PM',' ',' ',' '),(387,'CL27','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Mon, Mar 14 2022','11:35 PM',' ',' ',' '),(388,'CL1','You have challenged Thunder Wolves','Thu, Mar 17 2022','2:29 PM','','CLN180',' '),(390,'all','Spartan Strikers and Thunder Wolves are having a match.','Thu, Mar 17 2022','2:30 PM','','CLN180',' '),(391,'CL1','Pranay Pawar has accepted to participate in the match (CLN177).','Thu, Mar 17 2022','2:32 PM','team approval','CLN177','MEM124'),(392,'CL36','Welcome coach, your club has been approved by Sportify. You can now make your club\'s practise session slots. <a href=\'coach_profile.jsp?count=1>Click to edit.</a>','Thu, Mar 17 2022','2:47 PM',' ',' ',' ');
/*!40000 ALTER TABLE `notifications_coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_members`
--

DROP TABLE IF EXISTS `notifications_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_members` (
  `Notification_No` int NOT NULL AUTO_INCREMENT,
  `Visibility` varchar(45) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Time` varchar(45) DEFAULT NULL,
  `Noti_Category` varchar(100) DEFAULT NULL,
  `Challenge_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Notification_No`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_members`
--

LOCK TABLES `notifications_members` WRITE;
/*!40000 ALTER TABLE `notifications_members` DISABLE KEYS */;
INSERT INTO `notifications_members` VALUES (15,'all','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','11:18 PM','',' '),(16,'all','Spartan Strikers and SuperNovas are having a match ','Mon, Feb 21 2022','12:05 AM','',' '),(17,'all','Spartan Strikers and Thunder Wolves are having a match ','Mon, Feb 21 2022','12:39 AM','',' '),(18,'CL1','Some session timmings are altered by coach. <a href=\'member_coach_profile.jsp\'> Click to check. </a>','Tue, Feb 22 2022','7:39 PM','session changed',''),(19,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','5:03 PM','','CLN157'),(21,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','6:15 PM','','CLN158'),(22,'all','admin here<br> Posted by Admin aditinarkar@gmail.com','Mon, Feb 28 2022','4:56 PM','by admin',''),(23,'all','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','3:10 PM','','CLN165'),(24,'all','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','3:26 PM','','CLN167'),(25,'all','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','3:31 PM','','CLN171'),(26,'all','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','3:32 PM','','CLN172'),(27,'all','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','3:39 PM','','CLN173'),(28,'all','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','3:39 PM','','CLN174'),(29,'all','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','6:41 PM','','CLN175'),(30,'all','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','7:06 PM','','CLN176'),(31,'all','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','7:26 PM','','CLN177'),(32,'all','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','7:35 PM','','CLN178'),(33,'all','Thunder Wolves and Spartan Strikers are having a match ','Tue, Mar 08 2022','10:42 AM','','CLN179'),(34,'all','Spartan Strikers and Thunder Wolves are having a match ','Thu, Mar 17 2022','2:30 PM','','CLN180');
/*!40000 ALTER TABLE `notifications_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_team`
--

DROP TABLE IF EXISTS `notifications_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_team` (
  `Notification_No` int NOT NULL AUTO_INCREMENT,
  `Visibility` varchar(45) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Time` varchar(45) DEFAULT NULL,
  `Noti_Category` varchar(100) DEFAULT NULL,
  `Challenge_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Notification_No`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_team`
--

LOCK TABLES `notifications_team` WRITE;
/*!40000 ALTER TABLE `notifications_team` DISABLE KEYS */;
INSERT INTO `notifications_team` VALUES (8,'CL1','Your club has challenged Thunder Wolves.','Mon, Feb 14 2022','6:48 pm','match',' '),(9,'CL2','Your club has been challenged by Spartan Strikers.','Mon, Feb 14 2022','6:48 pm','match',' '),(10,'CL1','Your club has challenged Thunder Wolves.','Tue, Feb 15 2022','7:02 pm','match',' '),(11,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Tue, Feb 15 2022','7:02 pm','all',' '),(12,'CL2','Your club has been challenged by Spartan Strikers.','Tue, Feb 15 2022','7:02 pm','match',' '),(13,'CL2','Your club has challenged Spartan Strikers.','Sun, Feb 20 2022','4:12 pm','match',' '),(14,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','4:12 pm','all',' '),(15,'CL1','Your club has been challenged by Thunder Wolves.','Sun, Feb 20 2022','4:12 pm','match',' '),(16,'CL2','Your club has challenged Spartan Strikers.','Sun, Feb 20 2022','4:16 pm','match',' '),(17,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','4:16 pm','all',' '),(18,'CL1','Your club has been challenged by Thunder Wolves.','Sun, Feb 20 2022','4:16 pm','match',' '),(19,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:01 PM','match',' '),(20,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:01 PM','all',' '),(21,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:01 PM','match',' '),(22,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:08 PM','match',' '),(23,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:08 PM','all',' '),(24,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:08 PM','match',' '),(25,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:09 PM','match',' '),(26,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:09 PM','all',' '),(27,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:09 PM','match',' '),(28,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:09 PM','match',' '),(29,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:09 PM','all',' '),(30,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:09 PM','match',' '),(31,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:09 PM','match',' '),(32,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:09 PM','all',' '),(33,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:09 PM','match',' '),(34,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:15 PM','match',' '),(35,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:15 PM','all',' '),(36,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:15 PM','match',' '),(37,'CL2','Your club has challenged Spartan Strikers.','Sun, Feb 20 2022','11:18 PM','match',' '),(38,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','11:18 PM','all',' '),(39,'CL1','Your club has been challenged by Thunder Wolves.','Sun, Feb 20 2022','11:18 PM','match',' '),(40,'CL1','Your club has challenged SuperNovas.','Mon, Feb 21 2022','12:05 AM','match',' '),(41,'CL1','Spartan Strikers and SuperNovas are having a match ','Mon, Feb 21 2022','12:05 AM','all',' '),(42,'CL3','Your club has been challenged by Spartan Strikers.','Mon, Feb 21 2022','12:05 AM','match',' '),(43,'CL1','Your club has challenged Thunder Wolves.','Mon, Feb 21 2022','12:39 AM','match',' '),(44,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Mon, Feb 21 2022','12:39 AM','all',' '),(45,'CL2','Your club has been challenged by Spartan Strikers.','Mon, Feb 21 2022','12:39 AM','match',' '),(46,'CL1','Some session timmings are altered by coach. <a href=\'member_coach_profile.jsp\'> Click to check. </a>','Tue, Feb 22 2022','7:39 PM','session changed',''),(47,'CL1','Your club has challenged Thunder Wolves.','Wed, Feb 23 2022','5:04 PM','match','CLN157'),(48,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','5:04 PM','all','CLN157'),(49,'CL2','Your club has been challenged by Spartan Strikers.','Wed, Feb 23 2022','5:04 PM','match','CLN157'),(50,'CL1','Your club has challenged Thunder Wolves.','Wed, Feb 23 2022','6:15 PM','match','CLN158'),(51,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','6:15 PM','all','CLN158'),(52,'CL2','Your club has been challenged by Spartan Strikers.','Wed, Feb 23 2022','6:15 PM','match','CLN158'),(53,'CL1','Pranay Pawar is your club\'s team captain.','Wed, Feb 23 2022','9:05 PM','match',''),(54,'all','admin here<br> Posted by Admin aditinarkar@gmail.com','Mon, Feb 28 2022','4:56 PM','by admin',''),(55,'CL2','Your club has challenged Spartan Strikers.','Fri, Mar 04 2022','3:10 PM','match','CLN165'),(56,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','3:10 PM','all','CLN165'),(57,'CL1','Your club has been challenged by Thunder Wolves.','Fri, Mar 04 2022','3:10 PM','match','CLN165'),(58,'CL2','Your club has challenged Spartan Strikers.','Fri, Mar 04 2022','3:26 PM','match','CLN167'),(59,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','3:26 PM','all','CLN167'),(60,'CL1','Your club has been challenged by Thunder Wolves.','Fri, Mar 04 2022','3:26 PM','match','CLN167'),(61,'CL1','Your club has challenged Thunder Wolves.','Fri, Mar 04 2022','3:31 PM','match','CLN171'),(62,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','3:31 PM','all','CLN171'),(63,'CL2','Your club has been challenged by Spartan Strikers.','Fri, Mar 04 2022','3:31 PM','match','CLN171'),(64,'CL1','Your club has challenged Thunder Wolves.','Fri, Mar 04 2022','3:32 PM','match','CLN172'),(65,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','3:32 PM','all','CLN172'),(66,'CL2','Your club has been challenged by Spartan Strikers.','Fri, Mar 04 2022','3:32 PM','match','CLN172'),(67,'CL2','Your club has challenged Spartan Strikers.','Fri, Mar 04 2022','3:39 PM','match','CLN173'),(68,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','3:39 PM','all','CLN173'),(69,'CL1','Your club has been challenged by Thunder Wolves.','Fri, Mar 04 2022','3:39 PM','match','CLN173'),(70,'CL2','Your club has challenged Spartan Strikers.','Fri, Mar 04 2022','3:39 PM','match','CLN174'),(71,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','3:39 PM','all','CLN174'),(72,'CL1','Your club has been challenged by Thunder Wolves.','Fri, Mar 04 2022','3:39 PM','match','CLN174'),(73,'CL1','Your club has challenged Thunder Wolves.','Fri, Mar 04 2022','6:41 PM','match','CLN175'),(74,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','6:41 PM','all','CLN175'),(75,'CL2','Your club has been challenged by Spartan Strikers.','Fri, Mar 04 2022','6:41 PM','match','CLN175'),(76,'CL1','Your club has challenged Thunder Wolves.','Fri, Mar 04 2022','7:06 PM','match','CLN176'),(77,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','7:06 PM','all','CLN176'),(78,'CL2','Your club has been challenged by Spartan Strikers.','Fri, Mar 04 2022','7:06 PM','match','CLN176'),(79,'CL1','Your club has challenged Thunder Wolves.','Fri, Mar 04 2022','7:26 PM','match','CLN177'),(80,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Fri, Mar 04 2022','7:26 PM','all','CLN177'),(81,'CL2','Your club has been challenged by Spartan Strikers.','Fri, Mar 04 2022','7:26 PM','match','CLN177'),(82,'CL2','Your club has challenged Spartan Strikers.','Fri, Mar 04 2022','7:35 PM','match','CLN178'),(83,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Fri, Mar 04 2022','7:35 PM','all','CLN178'),(84,'CL1','Your club has been challenged by Thunder Wolves.','Fri, Mar 04 2022','7:35 PM','match','CLN178'),(85,'CL2','Your club has challenged Spartan Strikers.','Tue, Mar 08 2022','10:42 AM','match','CLN179'),(86,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Tue, Mar 08 2022','10:42 AM','all','CLN179'),(87,'CL1','Your club has been challenged by Thunder Wolves.','Tue, Mar 08 2022','10:42 AM','match','CLN179'),(88,'CL1','Your club has challenged Thunder Wolves.','Thu, Mar 17 2022','2:30 PM','match','CLN180'),(89,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Thu, Mar 17 2022','2:30 PM','all','CLN180'),(90,'CL2','Your club has been challenged by Spartan Strikers.','Thu, Mar 17 2022','2:30 PM','match','CLN180');
/*!40000 ALTER TABLE `notifications_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `Session_No` int NOT NULL AUTO_INCREMENT,
  `Session_Id` varchar(45) DEFAULT NULL,
  `Start_Time` varchar(10) DEFAULT NULL,
  `End_Time` varchar(10) DEFAULT NULL,
  `Team_Member` varchar(45) DEFAULT NULL,
  `Club_Id` varchar(45) DEFAULT NULL,
  `Current_Capacity` int DEFAULT NULL,
  `Max_Capacity` int DEFAULT NULL,
  PRIMARY KEY (`Session_No`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,'SES1','5','7','Team','CL2',17,45),(2,'SES2','5','1','Member','CL1',3,34),(3,'SES3','4','3','Team','CL3',1,23),(9,'SES9','5','6','Member','CL2',0,8),(10,'SES10','5','6','Member','CL3',0,9),(13,'SES13','5','6','Member','CL2',0,66),(16,'SES16','6','7','Team','CL1',0,65),(20,'SES20','5','8','Member','CL1',1,80),(30,'SES30','6','12','Team','CL1',0,55);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `Team_No` int NOT NULL AUTO_INCREMENT,
  `Team_Id` varchar(45) DEFAULT NULL,
  `Member_Id` varchar(10) DEFAULT NULL,
  `Club_Id` varchar(45) DEFAULT NULL,
  `Captain` varchar(45) DEFAULT '0',
  `Challenge_Id` varchar(45) DEFAULT ' ',
  PRIMARY KEY (`Team_No`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (55,'TM55','MEM124','CL1','1',' '),(59,'TM59','MEM133','CL2','0','CLN178'),(60,'TM60','MEM124','CL1','0','CLN177');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue` (
  `Venue_No` int NOT NULL AUTO_INCREMENT,
  `Venue_Id` varchar(45) DEFAULT NULL,
  `Venue_Name` varchar(45) DEFAULT NULL,
  `Venue_Address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Venue_No`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (1,'VN1','Eden Park','Bandra'),(2,'VN2','Highland Ground','Colaba'),(4,'VN4','SuperSport Park','Matunga'),(5,'VN5','Centurion Park','Sion'),(34,'VN34','Wankhede','Mumbai'),(39,'VN39','fff','ff'),(40,'VN40','fff','ff');
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ccms'
--
/*!50003 DROP PROCEDURE IF EXISTS `autoinc_admin1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autoinc_admin1`()
BEGIN
UPDATE admin SET Admin_Id = CONCAT('AD', Admin_No) WHERE Admin_Id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autoinc_challenge` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autoinc_challenge`()
BEGIN
UPDATE challenge SET Challenge_Id = CONCAT('CLN', Challenge_No) WHERE Challenge_Id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autoinc_clubs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autoinc_clubs`()
BEGIN
UPDATE clubs SET Club_Id = CONCAT('CL', Club_No) WHERE Club_Id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autoinc_coach2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autoinc_coach2`()
BEGIN
UPDATE coach SET Coach_Id = CONCAT('CH', Coach_No) WHERE Coach_Id IS NULL OR Coach_Id = ' ';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autoinc_member` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autoinc_member`()
BEGIN
UPDATE member SET Member_Id = CONCAT('MEM', Member_No) WHERE Member_Id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autoinc_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autoinc_session`()
BEGIN
UPDATE session SET Session_Id = CONCAT('SES', Session_No) WHERE Session_Id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autoinc_team` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autoinc_team`()
BEGIN
UPDATE team SET Team_Id = CONCAT('TM', Team_No) WHERE Team_Id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autoinc_venue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autoinc_venue`()
BEGIN
UPDATE venue SET Venue_Id = CONCAT('VN', Venue_No) WHERE Venue_Id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-18 15:04:18
