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
  PRIMARY KEY (`Challenge_No`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge`
--

LOCK TABLES `challenge` WRITE;
/*!40000 ALTER TABLE `challenge` DISABLE KEYS */;
INSERT INTO `challenge` VALUES (146,'CLN146','CL1','CL2','VN1','Sun, Feb 20 2022','7:00 pm','Approved','Finished'),(147,'CLN147','CL1','CL2','VN1','Wed, Feb 23 2022','4:00 pm','Approved','Finished'),(148,'CLN148','CL1','CL2','VN1','Fri, Feb 25 2022','4:00 pm','Unapproved','Ongoing'),(149,'CLN149','CL1','CL2','VN1','Sun, Feb 20 2022','7:00 am','Unapproved','Finished'),(150,'CLN150','CL2','CL1','VN2','Tue, Feb 22 2022','4:00 pm','Approved','Finished'),(151,'CLN151','CL2','CL1','VN2','Sun, Feb 27 2022','4:00 pm','Unapproved','Ongoing'),(152,'CLN152','CL1','CL2','VN1','Sat, Feb 26 2022','4:00 AM','Unapproved','Ongoing'),(153,'CLN153','CL1','CL2','VN1','Sat, Feb 26 2022','3:00 PM','Unapproved','Ongoing'),(154,'CLN154','CL2','CL1','VN2','Wed, Feb 23 2022','5:00 AM','Unapproved','Finished'),(155,'CLN155','CL1','CL3','VN1','Sat, Feb 26 2022','4:00 AM','Approved','Ongoing'),(156,'CLN156','CL1','CL2','VN1','Wed, Feb 23 2022','6:00 AM','Approved','Finished'),(157,'CLN157','CL1','CL2','VN1','Fri, Feb 25 2022','9:00 PM','Approved','Ongoing'),(158,'CLN158','CL1','CL2','VN1','Fri, Feb 25 2022','3:00 AM','Approved','Ongoing');
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
  PRIMARY KEY (`Club_No`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1,'CL1','Spartan Strikers','VN1','The Spartan Strikers are a franchise cricket Club Founded in 2015. They play in Various Cricket Leagues. The team is owned by Spartan Strikers Ltd. This Club has made a record of giving target of 248 runs in 20 over matches.',50),(2,'CL2','Thunder Wolves','VN2','Thunder Wolves are a franchise cricket Club Founded in 2015. The team is owned by Thunder Wolves Ltd. They have won the most Sportify Cricket Club Leagues Matches.',50),(3,'CL3','SuperNovas','VN3','The Supernovas are a franchise cricket Club Founded in 2015. They play in Various Cricket Leagues. The team is owned by Supernovas Ltd.',50),(4,'CL4','Game Swingers','VN4','The Game Swingers are a franchise cricket Club Founded in 2015. They play in Various Cricket Leagues. The team is owned by Game Swingers Ltd. They are the current defending champions.',50),(27,'CL27','Warriors','VN34','The warriors are a franchise cricket Club Founded in 2015. They play in Various Cricket Leagues. The team is owned by Game Swingers Ltd. They are the current defending champions.',15);
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
  `Coach_Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Profile_Picture` varchar(45) DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `Club_Id` varchar(20) DEFAULT NULL,
  `Session_Id` varchar(20) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Coach_No`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'CH1','Tufayl Dalvi','tufayldalvi@gmail.com','8452879881',20,'123','','tyftyfu','CL1','SES1','Head'),(13,'CH13','Aditya Kachare','aditya@gmail.com','1234567890',20,'111',NULL,'nnfcvn','CL2',NULL,'Head'),(56,'CH56','Pranay Pawar','pranay@gmail.com','9999999999',20,'111',NULL,'nnfcvn','CL3',NULL,'Head'),(57,'CH57','Sahil',NULL,NULL,NULL,NULL,NULL,NULL,'CL27',NULL,'Batting'),(58,'CH58','XYZ',NULL,NULL,NULL,NULL,NULL,NULL,'CL27',NULL,'Fielding'),(59,'CH59','PQR',NULL,NULL,NULL,NULL,NULL,NULL,'CL27',NULL,'Bowling'),(61,'CH61','bbb',NULL,NULL,NULL,NULL,NULL,NULL,'CL1',NULL,'Bowling'),(62,'CH62','ccc',NULL,NULL,NULL,NULL,NULL,NULL,'CL1',NULL,'Fielding');
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
  `Challenge_Id` varchar(45) DEFAULT '0',
  PRIMARY KEY (`Member_No`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (124,'MEM124','Pranay Pawar','pranaypawar@gmail.com','2222233333',30,'123','CL1','SES20','Fielding','MS','CLN158'),(125,'MEM125','John','sahiljadhav@gmail.com','1234567891',19,'111','CL2','SES1','Batting','T','0'),(128,'MEM128','Aditya Kachare','aadityakachare@gmail.com','9224303446',20,'123','CL2','SES1','Batting','T','0'),(129,'MEM129','Peter Parker','peter@gmail.com','8906784563',22,'111','CL2','SES1','All Rounder','T','0'),(130,'MEM130','Tony Stark','stark@gmail.com','1234567895',30,'567','CL2','SES1','Batting','T','0'),(131,'MEM131','Clint Barton','hawkeyee@gmail.com','7890364783',34,'789','CL2','SES1','Bowling','T','0'),(132,'MEM132','Peter Doppler','dopp@gmail.com','6574893022',20,'456','CL2','SES1','Fielding','M','0'),(133,'MEM133','Will Byres','will@gmail.com','2234563332',15,'678','CL2','SES1','Bowling','M','0'),(134,'MEM134','Bruce Banner ','bruce@gmail.com','7890283789',30,'456','CL2','SES1','Batting','T','0'),(135,'MEM135','Steve Rogers','captain@gmail.com','6785924445',19,'555','CL2','SES1','All Rounder','T','0'),(136,'MEM136','Peter Quil','star@gmail.com','7778889046',25,'890','CL2','SES1','Batting','M','0'),(137,'MEM137','Miles Morales','miles@gmail.com','7890065436',18,'456','CL2','SES1','Fielding','T','0'),(138,'MEM138','Aron Doppler','aron@gmail.com','7890654678',34,'123','CL2','SES1','Bowling','T','0'),(139,'MEM139','Miles Morales','miles1@gmail.com','7890065436',18,'456','CL2','SES1','Fielding','T','0'),(140,'MEM140','Aron Doppler','aron1@gmail.com','7890654678',34,'123','CL2','SES1','Bowling','T','0'),(141,'MEM141','Peter Parker','peter1@gmail.com','8906784563',22,'111','CL2','SES1','All Rounder','T','0'),(142,'MEM142','Tony Stark','stark1@gmail.com','1234567895',30,'567','CL2','SES1','Batting','T','0'),(143,'MEM143','Clint Barton','hawkeye@gmail.com','7890364783',34,'789','CL2','SES1','Bowling','T','0'),(144,'MEM144','AD','pranaypawar1@gmail.com','2222233333',30,'123','CL1','SES2','Fielding','TS','0'),(145,'MEM145','PQR','pqr@gmail.com','2222233333',30,'123','CL1','SES2','Fielding','T','0'),(146,'MEM146','XYZ','xyz@gmail.com','2222233333',30,'123','CL1','SES2','Fielding','T','0'),(147,'MEM147','ABC','abc@gmail.com','2222233333',30,'123','CL3','SES3','Fielding','T','0');
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
  `Noti_Category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Notification_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_admin`
--

LOCK TABLES `notifications_admin` WRITE;
/*!40000 ALTER TABLE `notifications_admin` DISABLE KEYS */;
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
  `Noti_Category` varchar(50) DEFAULT NULL,
  `Challenge_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Notification_No`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_coach`
--

LOCK TABLES `notifications_coach` WRITE;
/*!40000 ALTER TABLE `notifications_coach` DISABLE KEYS */;
INSERT INTO `notifications_coach` VALUES (305,'CL2','You have challenged Spartan Strikers','Sun, Feb 20 2022','11:18 PM','','CLN150'),(307,'all','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','11:18 PM','','CLN150'),(308,'CL1','Aditya Kachare has accepted to participate in the match.','Sun, Feb 20 2022','11:23 PM','team approval','MEM124'),(309,'CL1','You have challenged SuperNovas','Mon, Feb 21 2022','12:04 AM','','CLN155'),(311,'all','Spartan Strikers and SuperNovas are having a match ','Mon, Feb 21 2022','12:05 AM','','CLN155'),(312,'CL3','ABC has rejected to participate in the match.','Mon, Feb 21 2022','12:19 AM','team approval','MEM147'),(313,'CL1','You have challenged Thunder Wolves','Mon, Feb 21 2022','12:39 AM','','CLN156'),(315,'all','Spartan Strikers and Thunder Wolves are having a match ','Mon, Feb 21 2022','12:39 AM','','CLN156'),(316,'CL1','Aditya Kachare, who is among one of your club\'s member, has changed their pratice session time to 5 - 1 (SES2).','Tue, Feb 22 2022','12:59 AM','member session',''),(317,'CL1','Aditya Kachare, who is among one of your club\'s member, has changed their pratice session time to 5 - 8 (SES20).','Tue, Feb 22 2022','6:04 PM','member session',''),(318,'CL1','You have challenged Thunder Wolves','Wed, Feb 23 2022','5:00 PM','','CLN157'),(320,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','5:03 PM','','CLN157'),(321,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','5:04 PM','','CLN157'),(322,'CL1','You have challenged Thunder Wolves','Wed, Feb 23 2022','6:14 PM','','CLN158'),(324,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','6:15 PM','','CLN158'),(325,'CL1','Pranay Pawar has accepted to participate in the match.','Wed, Feb 23 2022','8:33 PM','team approval','MEM124');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_members`
--

LOCK TABLES `notifications_members` WRITE;
/*!40000 ALTER TABLE `notifications_members` DISABLE KEYS */;
INSERT INTO `notifications_members` VALUES (15,'all','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','11:18 PM','',' '),(16,'all','Spartan Strikers and SuperNovas are having a match ','Mon, Feb 21 2022','12:05 AM','',' '),(17,'all','Spartan Strikers and Thunder Wolves are having a match ','Mon, Feb 21 2022','12:39 AM','',' '),(18,'CL1','Some session timmings are altered by coach. <a href=\'member_coach_profile.jsp\'> Click to check. </a>','Tue, Feb 22 2022','7:39 PM','session changed',''),(19,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','5:03 PM','','CLN157'),(20,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','5:04 PM','','CLN157'),(21,'all','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','6:15 PM','','CLN158');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_team`
--

LOCK TABLES `notifications_team` WRITE;
/*!40000 ALTER TABLE `notifications_team` DISABLE KEYS */;
INSERT INTO `notifications_team` VALUES (8,'CL1','Your club has challenged Thunder Wolves.','Mon, Feb 14 2022','6:48 pm','match',' '),(9,'CL2','Your club has been challenged by Spartan Strikers.','Mon, Feb 14 2022','6:48 pm','match',' '),(10,'CL1','Your club has challenged Thunder Wolves.','Tue, Feb 15 2022','7:02 pm','match',' '),(11,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Tue, Feb 15 2022','7:02 pm','all',' '),(12,'CL2','Your club has been challenged by Spartan Strikers.','Tue, Feb 15 2022','7:02 pm','match',' '),(13,'CL2','Your club has challenged Spartan Strikers.','Sun, Feb 20 2022','4:12 pm','match',' '),(14,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','4:12 pm','all',' '),(15,'CL1','Your club has been challenged by Thunder Wolves.','Sun, Feb 20 2022','4:12 pm','match',' '),(16,'CL2','Your club has challenged Spartan Strikers.','Sun, Feb 20 2022','4:16 pm','match',' '),(17,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','4:16 pm','all',' '),(18,'CL1','Your club has been challenged by Thunder Wolves.','Sun, Feb 20 2022','4:16 pm','match',' '),(19,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:01 PM','match',' '),(20,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:01 PM','all',' '),(21,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:01 PM','match',' '),(22,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:08 PM','match',' '),(23,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:08 PM','all',' '),(24,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:08 PM','match',' '),(25,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:09 PM','match',' '),(26,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:09 PM','all',' '),(27,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:09 PM','match',' '),(28,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:09 PM','match',' '),(29,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:09 PM','all',' '),(30,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:09 PM','match',' '),(31,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:09 PM','match',' '),(32,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:09 PM','all',' '),(33,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:09 PM','match',' '),(34,'CL1','Your club has challenged Thunder Wolves.','Sun, Feb 20 2022','11:15 PM','match',' '),(35,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Sun, Feb 20 2022','11:15 PM','all',' '),(36,'CL2','Your club has been challenged by Spartan Strikers.','Sun, Feb 20 2022','11:15 PM','match',' '),(37,'CL2','Your club has challenged Spartan Strikers.','Sun, Feb 20 2022','11:18 PM','match',' '),(38,'CL2','Thunder Wolves and Spartan Strikers are having a match ','Sun, Feb 20 2022','11:18 PM','all',' '),(39,'CL1','Your club has been challenged by Thunder Wolves.','Sun, Feb 20 2022','11:18 PM','match',' '),(40,'CL1','Your club has challenged SuperNovas.','Mon, Feb 21 2022','12:05 AM','match',' '),(41,'CL1','Spartan Strikers and SuperNovas are having a match ','Mon, Feb 21 2022','12:05 AM','all',' '),(42,'CL3','Your club has been challenged by Spartan Strikers.','Mon, Feb 21 2022','12:05 AM','match',' '),(43,'CL1','Your club has challenged Thunder Wolves.','Mon, Feb 21 2022','12:39 AM','match',' '),(44,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Mon, Feb 21 2022','12:39 AM','all',' '),(45,'CL2','Your club has been challenged by Spartan Strikers.','Mon, Feb 21 2022','12:39 AM','match',' '),(46,'CL1','Some session timmings are altered by coach. <a href=\'member_coach_profile.jsp\'> Click to check. </a>','Tue, Feb 22 2022','7:39 PM','session changed',''),(47,'CL1','Your club has challenged Thunder Wolves.','Wed, Feb 23 2022','5:04 PM','match','CLN157'),(48,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','5:04 PM','all','CLN157'),(49,'CL2','Your club has been challenged by Spartan Strikers.','Wed, Feb 23 2022','5:04 PM','match','CLN157'),(50,'CL1','Your club has challenged Thunder Wolves.','Wed, Feb 23 2022','6:15 PM','match','CLN158'),(51,'CL1','Spartan Strikers and Thunder Wolves are having a match ','Wed, Feb 23 2022','6:15 PM','all','CLN158'),(52,'CL2','Your club has been challenged by Spartan Strikers.','Wed, Feb 23 2022','6:15 PM','match','CLN158'),(53,'CL1','Pranay Pawar is your club\'s team captain.','Wed, Feb 23 2022','9:05 PM','match','');
/*!40000 ALTER TABLE `notifications_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Product_No` int NOT NULL AUTO_INCREMENT,
  `Product_Id` varchar(45) DEFAULT NULL,
  `Product_Name` varchar(45) DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Sizes` varchar(45) DEFAULT NULL,
  `Cost` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Product_No`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'PR1','Cricket Bat',NULL,'MRF, Grade 5 English Willow','Full Size - Short Handle','2500'),(2,'PR2','Cricket Bat',NULL,'Gray-Nicolls Nitro GN3 English Willow','Full Size - Short Handle','1800');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
  PRIMARY KEY (`Team_No`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (55,'TM55','MEM124','CL1','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (1,'VN1','Eden Park','Bandra'),(2,'VN2','Highland Ground','Colaba'),(4,'VN4','SuperSport Park','Matunga'),(5,'VN5','Centurion Park','Sion'),(34,'VN34','Wankhede','Mumbai');
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
UPDATE coach SET Coach_Id = CONCAT('CH', Coach_No) WHERE Coach_Id IS NULL;
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
/*!50003 DROP PROCEDURE IF EXISTS `autoinc_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autoinc_product`()
BEGIN
UPDATE products SET Product_Id = CONCAT('PR', Product_No) WHERE Product_Id IS NULL;
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

-- Dump completed on 2022-02-23 21:20:45
