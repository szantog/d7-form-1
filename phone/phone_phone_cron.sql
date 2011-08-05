CREATE DATABASE  IF NOT EXISTS `phone` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `phone`;
-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: phone
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `phone_cron`
--

DROP TABLE IF EXISTS `phone_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_cron` (
  `cron_id` int(11) NOT NULL,
  `command` int(11) NOT NULL DEFAULT '0' COMMENT '1: telefonszám hozzárendelése, 2: telefonszám visszarendelése',
  `cust_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Ügyfél azonosító',
  `cust_number` bigint(20) DEFAULT NULL COMMENT 'telefonszám, amelyre vonatkozik',
  `start_time` datetime NOT NULL COMMENT 'Amikor életbe kell léptetni a változást',
  `run_time` datetime NOT NULL COMMENT 'A futás tényleges ideje',
  `run_result` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A futtatás eredménya',
  PRIMARY KEY (`cron_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_cron`
--

LOCK TABLES `phone_cron` WRITE;
/*!40000 ALTER TABLE `phone_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_cron` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-07-22  9:11:56
