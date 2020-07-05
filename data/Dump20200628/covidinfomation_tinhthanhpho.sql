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
-- Table structure for table `tinhthanhpho`
--

DROP TABLE IF EXISTS `tinhthanhpho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tinhthanhpho` (
  `matp` varchar(100) NOT NULL,
  `tenthanhpho` varchar(100) DEFAULT NULL,
  `maquocgia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`matp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tinhthanhpho`
--

INSERT INTO `tinhthanhpho` VALUES ('ni0','Hà Nội','vietnam1'),('minh1','TP Hồ Chí Minh','vietnam1'),('bnh2','Thái Bình','vietnam1'),('liu3','Bạc Liêu','vietnam1'),('phc4','Vĩnh Phúc','vietnam1'),('bnh5','Ninh Bình','vietnam1'),('thun6','Bình Thuận','vietnam1'),('ninh7','Quảng Ninh','vietnam1'),('nng8','Đà Nẵng','vietnam1'),('thp9','Đồng Tháp','vietnam1'),('nam10','Quảng Nam','vietnam1'),('giang11','Bắc Giang','vietnam1'),('nam12','Hà Nam','vietnam1'),('tnh13','Hà Tĩnh','vietnam1'),('dng14','Hải Dương','vietnam1'),('ninh15','Tây Ninh','vietnam1'),('ha16','Thanh Hóa','vietnam1'),('th17','Cần Thơ','vietnam1'),('cai18','Lào Cai','vietnam1'),('thun19','Ninh Thuận','vietnam1'),('hu20','Thừa Thiên - Huế','vietnam1'),('vinh21','Trà Vinh','vietnam1'),('tu22','Bà Rịa - Vũng Tàu','vietnam1'),('ninh23','Bắc Ninh','vietnam1'),('tre24','Bến Tre','vietnam1'),('nai25','Đồng Nai','vietnam1'),('giang26','Hà Giang','vietnam1'),('yn27','Hưng Yên','vietnam1'),('ha28','Khánh Hòa','vietnam1'),('chu29','Lai Châu','vietnam1'),('nguyn30','Thái Nguyên','vietnam1');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
