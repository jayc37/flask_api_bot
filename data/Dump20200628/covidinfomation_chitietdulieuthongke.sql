CREATE DATABASE  IF NOT EXISTS `covidinfomation` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `covidinfomation`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: covidinfomation
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `chitietdulieuthongke`
--

DROP TABLE IF EXISTS `chitietdulieuthongke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietdulieuthongke` (
  `madulieuthongke` varchar(100) DEFAULT NULL,
  `tongtruonghop` varchar(20) DEFAULT NULL,
  `truonghopmoi` varchar(20) DEFAULT NULL,
  `tongchet` varchar(20) DEFAULT NULL,
  `chetmoi` varchar(20) DEFAULT NULL,
  `tonghoiphuc` varchar(20) DEFAULT NULL,
  `hoiphucmoi` varchar(20) DEFAULT NULL,
  `dangdieutri` varchar(20) DEFAULT NULL,
  `dangnguykich` varchar(20) DEFAULT NULL,
  `matp` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdulieuthongke`
--

INSERT INTO `chitietdulieuthongke` VALUES ('dltkvn','114','0','0','0','114','0','0','0','ni0'),('dltkvn','60','0','0','0','57','0','3','0','minh1'),('dltkvn','30','0','0','0','28','0','2','0','bnh2'),('dltkvn','21','0','0','0','21','0','0','0','liu3'),('dltkvn','19','0','0','0','19','0','0','0','phc4'),('dltkvn','13','0','0','0','13','0','0','0','bnh5'),('dltkvn','9','0','0','0','9','0','0','0','thun6'),('dltkvn','9','0','0','0','8','0','1','0','ninh7'),('dltkvn','6','0','0','0','6','0','0','0','nng8'),('dltkvn','6','0','0','0','5','0','1','0','thp9'),('dltkvn','5','0','0','0','3','0','2','0','nam10'),('dltkvn','4','0','0','0','4','0','0','0','giang11'),('dltkvn','4','0','0','0','4','0','0','0','nam12'),('dltkvn','4','0','0','0','4','0','0','0','tnh13'),('dltkvn','4','0','0','0','3','0','1','0','dng14'),('dltkvn','4','0','0','0','4','0','0','0','ninh15'),('dltkvn','3','0','0','0','3','0','0','0','ha16'),('dltkvn','2','0','0','0','2','0','0','0','th17'),('dltkvn','2','0','0','0','2','0','0','0','cai18'),('dltkvn','2','0','0','0','2','0','0','0','thun19'),('dltkvn','2','0','0','0','2','0','0','0','hu20'),('dltkvn','2','0','0','0','2','0','0','0','vinh21'),('dltkvn','1','0','0','0','0','0','1','0','tu22'),('dltkvn','1','0','0','0','1','0','0','0','ninh23'),('dltkvn','1','0','0','0','1','0','0','0','tre24'),('dltkvn','1','0','0','0','1','0','0','0','nai25'),('dltkvn','1','0','0','0','1','0','0','0','giang26'),('dltkvn','1','0','0','0','1','0','0','0','yn27'),('dltkvn','1','0','0','0','1','0','0','0','ha28'),('dltkvn','1','0','0','0','1','0','0','0','chu29'),('dltkvn','1','0','0','0','1','0','0','0','nguyn30');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
