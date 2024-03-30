-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: haue_cs_activity_system
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_info_base`
--

DROP TABLE IF EXISTS `activity_info_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_info_base` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_type` int(11) NOT NULL DEFAULT '0',
  `activity_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `academy_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `begin_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `need_geo` tinyint(4) NOT NULL DEFAULT '0',
  `need_face` tinyint(4) NOT NULL DEFAULT '0',
  `geo_longitude` decimal(10,6) DEFAULT NULL,
  `geo_latitude` decimal(10,6) DEFAULT NULL,
  `geo_radius` decimal(10,6) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_info_base`
--

LOCK TABLES `activity_info_base` WRITE;
/*!40000 ALTER TABLE `activity_info_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_info_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_info_detail`
--

DROP TABLE IF EXISTS `activity_info_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_info_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_statue` tinyint(1) DEFAULT '0',
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_info_detail`
--

LOCK TABLES `activity_info_detail` WRITE;
/*!40000 ALTER TABLE `activity_info_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_info_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_info_academy`
--

DROP TABLE IF EXISTS `data_info_academy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_info_academy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_id` int(11) NOT NULL,
  `academy_num` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `academy_id` (`academy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_info_academy`
--

LOCK TABLES `data_info_academy` WRITE;
/*!40000 ALTER TABLE `data_info_academy` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_info_academy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_info_activity`
--

DROP TABLE IF EXISTS `data_info_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_info_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `activity_num` int(11) DEFAULT NULL,
  `activity_maxnum` int(11) DEFAULT NULL,
  `activity_rate` float DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `academy_id` (`academy_id`),
  KEY `subject_id` (`subject_id`),
  KEY `class_id` (`class_id`),
  KEY `activity_id` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_info_activity`
--

LOCK TABLES `data_info_activity` WRITE;
/*!40000 ALTER TABLE `data_info_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_info_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_info_class`
--

DROP TABLE IF EXISTS `data_info_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_info_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_num` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `academy_id` (`academy_id`),
  KEY `subject_id` (`subject_id`),
  KEY `class_id` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_info_class`
--

LOCK TABLES `data_info_class` WRITE;
/*!40000 ALTER TABLE `data_info_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_info_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_info_subject`
--

DROP TABLE IF EXISTS `data_info_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_info_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_num` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `academy_id` (`academy_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_info_subject`
--

LOCK TABLES `data_info_subject` WRITE;
/*!40000 ALTER TABLE `data_info_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_info_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_manage_academy`
--

DROP TABLE IF EXISTS `sys_manage_academy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_manage_academy` (
  `academy_id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`academy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_manage_academy`
--

LOCK TABLES `sys_manage_academy` WRITE;
/*!40000 ALTER TABLE `sys_manage_academy` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_manage_academy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_manage_class`
--

DROP TABLE IF EXISTS `sys_manage_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_manage_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_manage_class`
--

LOCK TABLES `sys_manage_class` WRITE;
/*!40000 ALTER TABLE `sys_manage_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_manage_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_manage_face`
--

DROP TABLE IF EXISTS `sys_manage_face`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_manage_face` (
  `face_id` int(11) NOT NULL AUTO_INCREMENT,
  `face_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `face_statue` int(11) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`face_id`),
  UNIQUE KEY `uix_face_info` (`face_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_manage_face`
--

LOCK TABLES `sys_manage_face` WRITE;
/*!40000 ALTER TABLE `sys_manage_face` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_manage_face` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_manage_subject`
--

DROP TABLE IF EXISTS `sys_manage_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_manage_subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_id` int(11) NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_manage_subject`
--

LOCK TABLES `sys_manage_subject` WRITE;
/*!40000 ALTER TABLE `sys_manage_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_manage_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_manage_user`
--

DROP TABLE IF EXISTS `sys_manage_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_manage_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_id` int(11) NOT NULL,
  `academy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_privilege` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_manage_user`
--

LOCK TABLES `sys_manage_user` WRITE;
/*!40000 ALTER TABLE `sys_manage_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_manage_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info_base`
--

DROP TABLE IF EXISTS `user_info_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info_base` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `face_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `face_statue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_stunumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_privilege` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `user_stunumber` (`user_stunumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info_base`
--

LOCK TABLES `user_info_base` WRITE;
/*!40000 ALTER TABLE `user_info_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info_wxlogin`
--

DROP TABLE IF EXISTS `user_info_wxlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info_wxlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `session_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info_wxlogin`
--

LOCK TABLES `user_info_wxlogin` WRITE;
/*!40000 ALTER TABLE `user_info_wxlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info_wxlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'haue_cs_activity_system'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30 22:12:06
