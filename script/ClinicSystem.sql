CREATE DATABASE  IF NOT EXISTS `clinicsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinicsystem`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: clinicsystem
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Fullname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PhoneNumber` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Status` int NOT NULL DEFAULT '1',
  `Sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin                                                                                                                                                                                                                                                          ','admin                                                                                                                                                                                                                                                          ','Administrator                                                                                                                                                                                                                                                  ','012345678                                                                                                                                                                                                                                                      ','admin@example.com                                                                                                                                                                                                                                              ','2022-02-01',0,NULL),(75,NULL,NULL,'Minh Hoàng','0966069027',NULL,'2022-01-29',1,'male'),(76,NULL,NULL,'Nga ÄoÃ n Thá»',NULL,'nguyenminhoang2799@gmail.com','2022-01-19',1,'male'),(77,NULL,NULL,'Nga ÄoÃ n Thá»',NULL,'nguyenminhoang2799@gmail.com','2022-01-21',1,'male'),(78,NULL,NULL,'Nga Đoàn Thị','0984186278',NULL,'2022-01-03',1,'female'),(79,NULL,NULL,'Nga Đoàn Thị','0984186278',NULL,'2022-01-03',1,'female'),(80,'caoduy1','123456','Nga Đoàn Thị','0984186278','nguyenminhoang2799@gmail.com','1999-01-18',1,NULL),(81,NULL,NULL,'Hải Ly','0966069027','nguyenminhhoang@example.com','1990-01-29',1,'female'),(82,NULL,NULL,'Háº£i Ly','0966069027','nguyenminhhoang@example.com','1990-01-29',1,'male'),(83,NULL,NULL,'Háº£i Ly','0966069027','nguyenminhhoang@example.com','1990-01-29',1,'male'),(84,NULL,NULL,'Háº£i Ly','0966069027','nguyenminhhoang@example.com','1990-01-29',1,'male'),(85,NULL,NULL,'Háº£i Ly','0966069027','nguyenminhhoang@example.com','1990-01-29',1,'male'),(86,NULL,NULL,'Háº£i Ly','0966069027','nguyenminhhoang@example.com','1990-01-29',1,'male'),(87,NULL,NULL,'Háº£i Ly','0966069027','nguyenminhhoang@example.com','1990-01-29',1,'male'),(88,NULL,NULL,'Minh Hoàng','0966069027','nguyenminhoang2799@gmail.com','2022-01-05',1,'female'),(89,'caoduy1','123456','Minh HoaÌng','0966069027','nguyenminhoang2799@gmail.com','2022-01-22',1,NULL),(90,'hoangnm39@fsoft.com.vn','123456','Minh HoaÌng','0966069027','nguyenminhoang2799@gmail.com',NULL,1,NULL),(91,'caoduy1','123456','Nga ÄoÃ n Thá»','0984186278','nguyenminhoang2799@gmail.com',NULL,1,NULL),(92,'HoangNM39','123456','Minh HoaÌng','0966069027','nguyenminhoang2799@gmail.com',NULL,1,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `PatientId` bigint DEFAULT NULL,
  `DoctorId` bigint DEFAULT NULL,
  `MedicalRecordId` bigint DEFAULT NULL,
  `TimeSlot` int DEFAULT NULL,
  `DateSlot` date DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `StatusDescription` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AppointmentCode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CreatedBy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BookingSlotId` bigint DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `BookingSlotId` (`BookingSlotId`),
  KEY `MedicalRecordId` (`MedicalRecordId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,75,0,3,NULL,'2022-01-29',4,'                            Vấn đề sức khoẻ cần khám',NULL,NULL,NULL,NULL,0,'2022-10-09 00:00:00',NULL),(2,77,0,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,'2022-10-24 00:00:00',NULL),(3,78,NULL,NULL,17,'2022-01-03',0,NULL,NULL,NULL,'2022-10-20 00:00:00',NULL,NULL,'2022-10-20 00:00:00',NULL),(4,79,NULL,NULL,17,'2022-01-03',0,NULL,NULL,NULL,'2022-10-20 00:00:00',NULL,NULL,'2022-10-20 00:00:00',NULL),(5,81,80,2,7,'2022-01-04',5,NULL,NULL,NULL,NULL,NULL,21,'2022-10-24 00:00:00',NULL),(6,82,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2022-10-23 00:00:00',NULL,NULL,'2022-10-23 00:00:00',NULL),(7,83,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2022-10-23 00:00:00',NULL,NULL,'2022-10-23 00:00:00',NULL),(8,84,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2022-10-23 00:00:00',NULL,NULL,'2022-10-23 00:00:00',NULL),(9,88,80,0,3,'2022-01-28',3,NULL,NULL,NULL,NULL,NULL,24,'2022-10-23 00:00:00',NULL);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookingslot`
--

DROP TABLE IF EXISTS `bookingslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookingslot` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `DoctorId` bigint DEFAULT NULL,
  `TimeSlot` int DEFAULT NULL,
  `DateSlot` date DEFAULT NULL,
  `RoomId` bigint DEFAULT NULL,
  `Status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `RoomId` (`RoomId`),
  CONSTRAINT `bookingslot_ibfk_1` FOREIGN KEY (`RoomId`) REFERENCES `room` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingslot`
--

LOCK TABLES `bookingslot` WRITE;
/*!40000 ALTER TABLE `bookingslot` DISABLE KEYS */;
INSERT INTO `bookingslot` VALUES (1,0,NULL,'2022-01-04',NULL,1),(2,0,NULL,'2022-01-04',NULL,1),(3,0,NULL,'2022-01-04',NULL,1),(4,0,NULL,'2022-01-04',NULL,1),(5,0,NULL,NULL,NULL,1),(6,0,NULL,'2022-01-04',NULL,1),(7,0,3,'2022-01-24',NULL,1),(8,0,0,'2022-01-04',NULL,1),(9,0,14,'2022-01-05',NULL,1),(10,0,4,'2022-01-04',3,1),(11,0,5,'2022-01-04',1,1),(12,0,0,'2022-01-04',1,1),(13,0,2,'2022-01-04',4,1),(14,80,4,'2022-01-04',3,1),(15,80,3,'2022-01-04',1,1),(16,80,5,'2022-01-04',1,1),(17,80,7,'2022-01-04',1,1),(18,80,0,'2022-01-28',1,1),(19,80,7,'2022-01-04',1,1),(20,80,7,'2022-01-04',1,1),(21,80,7,'2022-01-04',1,1),(22,80,0,'2022-01-28',1,1),(23,80,3,'2022-01-28',1,1),(24,80,3,'2022-01-28',1,1);
/*!40000 ALTER TABLE `bookingslot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `Id` bigint NOT NULL,
  `Specialization` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `Id` (`Id`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `account` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (80,'Heart');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicalhistory`
--

DROP TABLE IF EXISTS `medicalhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicalhistory` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `EditedBy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `EditedDate` datetime DEFAULT NULL,
  `MedicalJson` longtext,
  `PatientId` bigint DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalhistory`
--

LOCK TABLES `medicalhistory` WRITE;
/*!40000 ALTER TABLE `medicalhistory` DISABLE KEYS */;
INSERT INTO `medicalhistory` VALUES (1,'admin                                                                                                                                                                                                                                                          ','2022-10-24 00:00:00',NULL,NULL,'{}',NULL),(2,'admin                                                                                                                                                                                                                                                          ','2022-10-24 00:00:00',NULL,NULL,'{\"bodyTemperature\":\"12\",\"height\":\"12\",\"bloodPressure\":\"12\",\"weight\":\"12\",\"symptom\":\"12\",\"earlyDiagnosis\":\"123\",\"finalDiagnosis\":\"123\",\"conclusion\":\"123\"}',NULL),(3,'admin                                                                                                                                                                                                                                                          ','2022-10-24 00:00:00',NULL,NULL,'{\"bodyTemperature\":\"213\",\"height\":\"123\",\"bloodPressure\":\"123\",\"weight\":\"123\",\"symptom\":\"123\",\"earlyDiagnosis\":\"12\",\"finalDiagnosis\":\"321\",\"diagnosisDisease\":\"123\",\"conclusion\":\"1231\"}',NULL);
/*!40000 ALTER TABLE `medicalhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `Id` bigint NOT NULL,
  `InsuranceCode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `IdentityCard` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GuardianFullname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GuardianPhoneNumber` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `Id` (`Id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `account` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (75,NULL,NULL,NULL,NULL,NULL),(76,NULL,NULL,NULL,NULL,NULL),(77,NULL,NULL,NULL,'Minh HoaÌng','0966069027'),(78,NULL,NULL,NULL,NULL,NULL),(79,NULL,NULL,NULL,NULL,NULL),(81,NULL,NULL,NULL,'Minh HoÃÂ ng','09824556'),(82,NULL,NULL,NULL,NULL,NULL),(83,NULL,NULL,NULL,NULL,NULL),(84,NULL,NULL,NULL,NULL,NULL),(85,NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,NULL,NULL,NULL),(87,NULL,NULL,NULL,NULL,NULL),(88,NULL,NULL,'Số 8 Ngách 19 Ngõ 68 Triều Khúc','Nga Đoàn Thị','0984186278');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN                                                                                                                                                                                                                                                          ','Admin system                                                                                                                                                                                                                                                   '),(2,'MANAGER                                                                                                                                                                                                                                                        ','Manager                                                                                                                                                                                                                                                        '),(3,'USER                                                                                                                                                                                                                                                           ','User system                                                                                                                                                                                                                                                    '),(4,'ANONYMOUS                                                                                                                                                                                                                                                      ','Unknown User                                                                                                                                                                                                                                                   ');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `RoomName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'Room 1','Room 1'),(2,'Room 2','Room 2'),(3,'Room 3','Room 3'),(4,'Room 4','Room 4');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `UserId` bigint DEFAULT NULL,
  `RoleId` bigint DEFAULT NULL,
  KEY `UserId` (`UserId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `account` (`Id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `role` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-24 11:38:19
