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
-- Table structure for table `benhvien`
--

DROP TABLE IF EXISTS `benhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benhvien` (
  `tenbenhvien` varchar(100) DEFAULT NULL,
  `maloaibenhvien` varchar(20) DEFAULT NULL,
  `matinhthanhpho` varchar(100) DEFAULT NULL,
  `mabenhvien` varchar(100) NOT NULL,
  PRIMARY KEY (`mabenhvien`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benhvien`
--

INSERT INTO `benhvien` VALUES ('Bệnh viện Bệnh nhiệt đới TPHCM','bv','liu3','itphcmbcliu'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','bnh2','trungngthibnh'),('Bệnh viện Đa khoa Đồng Văn (Hà Giang)','bv','giang26','hgianghgiang'),('Bệnh viện Thận Hà Nội','bv','ni0','hnihni'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','nam12','trungnghnam'),('Bệnh viện Phổi tỉnh Đồng Nai','bv','nai25','ngnaingnai'),('Bệnh viện Nhi Đồng Thành Phố (TP HCM)','bv','minh1','tphcmchminh'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','ha16','trungngthanhha'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','nguyn30','trungngthinguyn'),('Bệnh viện Đa khoa Bạc Liêu','bv','liu3','bcliubcliu'),('Bệnh viện Đa khoa Hà Nam','bv','nam12','hnamhnam'),('Bệnh viện Đa khoa Cầu Treo','bv','tnh13','cutreohtnh'),('Bệnh viện Lao và Bệnh phổi Cần Thơ','bv','th17','cnthcnth'),('Bệnh viện Đa khoa Bỉm Sơn','bv','ha16','bmsnthanhha'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','chu29','trungnglaichu'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','giang11','trungngbcgiang'),('Trung tâm Y tế huyện Bình Đại','ttyt','tre24','bnhibntre'),('Bệnh viện Dã chiến Cần Giờ','bvdc','minh1','cngichminh'),('Bệnh viện Đa khoa Tây Ninh','bv','ninh15','tyninhtyninh'),('Bệnh viện Lao và Bệnh phổi Trà Vinh','bv','vinh21','trvinhtrvinh'),('Bệnh viện Đa khoa Sa Đéc (Đồng Tháp)','bv','thp9','ngthpngthp'),('Bệnh viện Đa khoa Bắc Ninh','bv','ninh23','bcninhbcninh'),('Trung tâm Y tế huyện Thanh Miện (Hải Dương)','ttyt','dng14','hidnghidng'),('Bệnh viện Đa khoa Ninh Thuận','bv','thun19','ninhthunninhthun'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','nam10','trungngqungnam'),('Bệnh viện số 2 Quảng Ninh','bv','ninh7','qungninhqungninh'),('Bệnh viện Đa khoa Bình Thuận','bv','thun6','bnhthunbnhthun'),('Bệnh viện Dã chiến Củ Chi','bvdc','minh1','cchichminh'),('Bệnh viện Trung ương Huế (CS 2)','bv','nam10','cs2qungnam'),('Bệnh viện Trung ương Huế (CS 2)','bv','hu20','cs2hu'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','ninh7','trungngqungninh'),('Bệnh viện Đa khoa Lào Cai','bv','cai18','locailocai'),('Bệnh viện Đà Nẵng','bv','nng8','nngnng'),('Bệnh viện Đa khoa Ninh Bình','bv','bnh5','ninhbnhninhbnh'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','ni0','trungnghni'),('Trung tâm y tế huyện Tam Đảo','ttyt','phc4','tamovnhphc'),('Trung tâm y tế huyện Bình Xuyên','ttyt','phc4','bnhxuynvnhphc'),('Bệnh viện Bệnh nhiệt đới TPHCM','bv','minh1','itphcmchminh'),('Bệnh viện Bệnh nhiệt đới Khánh Hòa','bv','ha28','khnhhakhnhha'),('Bệnh viện Bệnh nhiệt đới Trung ương','bv','phc4','trungngvnhphc'),('Bệnh viện Đa khoa Thanh Hóa','bv','ha16','thanhhathanhha'),('Bệnh viện Chợ Rẫy','bv','minh1','chrychminh'),('Bệnh viện Đa khoa Thái Bình','bv','bnh2','thibnhthibnh'),('Bệnh viện Đa khoa Trung ương Quảng Nam','bv','nam10','qungnamqungnam'),('Bệnh viện Đa khoa Bà Rịa','bv','tu22','bravngtu');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
