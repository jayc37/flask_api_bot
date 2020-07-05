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
-- Dumping routines for database 'covidinfomation'
--
/*!50003 DROP PROCEDURE IF EXISTS `proce_gettotalchar12country` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proce_gettotalchar12country`(
)
BEGIN
START TRANSACTION;
select b.tenquocgia, a.tongtruonghop, a.tongchet,a.tonghoiphuc from dulieuthongke a, quocgia b where a.maquocgia = b.maquocgia and a.madulieuthongke in ( select madulieuthongke from dulieuthongke where madulieuthongke = 'usadltk' or madulieuthongke = 'brazildltk' or  madulieuthongke = 'russiadltk' or madulieuthongke = 'indiadltk' or madulieuthongke = 'UKdltk' or madulieuthongke = 'spaindltk'or madulieuthongke = 'perudltk' or madulieuthongke = 'chiledltk' or madulieuthongke = 'italydltk' 
or madulieuthongke = 'irandltk' or madulieuthongke = 'germarydltk' or madulieuthongke = 'turkeydltk');
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_getbenhnhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_getbenhnhan`(
sex varchar(10),dotuoi varchar(20),mabv varchar(100),matp varchar(100),tinhtrang varchar(10),thoigian varchar(20),idbenhnhan varchar(20)
)
BEGIN
START TRANSACTION;
	IF EXISTS (select gioitinh from dulieubenhnhan where gioitinh like sex)
    THEN
		SELECT a.mabenhnhan as 'Bệnh nhân',a.tinhtrang as'Tình trạng',b.tuoi as 'Tuổi',
        a.gioitinh as 'Giới tính', c.tenbenhvien as 'Tên bệnh viện',d.tenthanhpho as 'Tên thành phố'
		FROM dulieubenhnhan a,chitietdulieubenhnhan b, benhvien c,tinhthanhpho d
		WHERE a.mabenhnhan = b.mabenhnhan 
        and  b.mabenhvien = c.mabenhvien
        and c.matinhthanhpho = d.matp
        and b.gioitinh like sex
		and b.tuoi like dotuoi
        and b.mabenhvien like mabv
        and c.matinhthanhpho like matp
        and a.tinhtrang like tinhtrang
        and a.ngaynhiem like thoigian
        and b.idbenhnhan like idbenhnhan;
    ELSE
    SIGNAL SQLSTATE '45000'
 	SET MESSAGE_TEXT = 'Kiểm tra lại string mô tả thuộc tính';
    END IF;
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_getdltktg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_getdltktg`(
	maqg varchar(20)
)
BEGIN
START TRANSACTION;
	IF EXISTS (select maquocgia from quocgia where quocgia.maquocgia like maqg)
    THEN
		SELECT a.tenquocgia,b.tongtruonghop,b.tongchet,b.tonghoiphuc,b.dangdieutri,b.dangnguykich
        FROM QUOCGIA a ,DULIEUTHONGKE b
        where a.maquocgia like maqg
        and b.maquocgia like maqg;
    ELSE
    SIGNAL SQLSTATE '45000'
 	SET MESSAGE_TEXT = 'Kiểm tra lại ma quoc gia';
    END IF;
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_getdltkvn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_getdltkvn`(
	matpho varchar(100)
)
BEGIN
START TRANSACTION;
	IF EXISTS (select matp from tinhthanhpho where tinhthanhpho.matp like matpho)
    THEN
		SELECT a.tenthanhpho,b.tongtruonghop,b.truonghopmoi,b.tongchet,b.tonghoiphuc,b.dangdieutri
        FROM tinhthanhpho a ,chitietdulieuthongke b
        where a.matp like matpho
        and b.matp like matpho;
    ELSE
    SIGNAL SQLSTATE '45000'
 	SET MESSAGE_TEXT = 'Kiểm tra lại ma thanh pho';
    END IF;
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_insert_dulieubenhnhan_vietnam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insert_dulieubenhnhan_vietnam`(
 mabenhnhan varchar(20),ngaynhiem varchar(20),  gioitinh varchar(10), quoctich varchar(60), 
 tinhtrang varchar(20),madulieu varchar(60), idbenhnhan varchar(20),ref text,
datungotrung varchar(10),onuocngoai varchar(10), 
 mabenhvien varchar(100),tenthanhpho varchar(60),tuoi varchar(20))
BEGIN
START TRANSACTION;
	INSERT INTO dulieubenhnhan(mabenhnhan,ngaynhiem,gioitinh,quoctich,tinhtrang,madulieu) values(mabenhnhan, ngaynhiem,gioitinh,quoctich,tinhtrang,madulieu);
	INSERT INTO chitietdulieubenhnhan(mabenhnhan,idbenhnhan,ngaynhiem,gioitinh,maquocgia,tinhtrang,ref,datungotrungquoc,datungonuocngoai,mabenhvien,tuoi) 
    values(mabenhnhan,idbenhnhan, ngaynhiem, gioitinh, quoctich,tinhtrang, ref,datungotrung,onuocngoai,mabenhvien,tuoi);
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_insert_dulieubenhvien_vietnam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insert_dulieubenhvien_vietnam`(
mabenhvien varchar(100), tenbenhvien varchar(100), maloaibenhvien varchar(20), tentp varchar(100))
BEGIN
	declare mattp varchar(100);
    SELECT matp into mattp from tinhthanhpho where tinhthanhpho.tenthanhpho like tentp;
    if exists(select mabenhvien from benhvien where benhvien.mabenhvien = mabenhvien)
    then
    SIGNAL SQLSTATE '45000'
 	SET MESSAGE_TEXT = 'Đã tồn tại ma benh vien';
    else
	START TRANSACTION;
	INSERT INTO benhvien(mabenhvien,tenbenhvien,maloaibenhvien,matinhthanhpho) values(mabenhvien, tenbenhvien,maloaibenhvien,mattp);
	COMMIT;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_insert_dulieuthongkethegioi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insert_dulieuthongkethegioi`(
 matp varchar(100),tentinhthanhpho varchar(100),maquocgia varchar(20),tenquocgia varchar(100),madltk varchar(100),ngaycn date,
 tongcases varchar(20),tongdeath varchar(20),tonghoiphuc varchar(20), dangdieutri varchar(20),
 dangnguykich varchar(20),nhiemmoi varchar(20), chetmoi varchar(20), hoiphucmoi varchar(20))
BEGIN
START TRANSACTION;
 	INSERT INTO quocgia(maquocgia,tenquocgia) values (maquocgia,tenquocgia);
    -- INSERT INTO tinhthanhpho(matp,tenthanhpho,maquocgia) values(matp, tentinhthanhpho,maquocgia);
	INSERT INTO dulieuthongke(madulieuthongke,ngaythangcapnhat,maquocgia,tongtruonghop,tongchet,tonghoiphuc,dangdieutri,dangnguykich)
    values(madltk,ngaycn,maquocgia,tongcases,tongdeath,tonghoiphuc,dangdieutri,dangnguykich);
	-- INSERT INTO chitietdulieuthongke(madulieuthongke,tongtruonghop,truonghopmoi,tongchet,chetmoi,tonghoiphuc,hoiphucmoi,dangdieutri,dangnguykich,matp) 
    -- values(madltk, tongcases, nhiemmoi, tongdeath,chetmoi, tonghoiphuc,hoiphucmoi,dangdieutri,dangnguykich,matp);
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_insert_dulieuthongkevietnam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insert_dulieuthongkevietnam`(
 matp varchar(100),tentinhthanhpho varchar(100),maquocgia varchar(20),tenquocgia varchar(100),madltk varchar(100),ngaycn date,
 tongcases varchar(20),tongdeath varchar(20),tonghoiphuc varchar(20), dangdieutri varchar(20),
 dangnguykich varchar(20),nhiemmoi varchar(20), chetmoi varchar(20), hoiphucmoi varchar(20))
BEGIN
START TRANSACTION;
-- 	INSERT INTO quocgia(maquocgia,tenquocgia) values (maquocgia,tenquocgia);
    INSERT INTO tinhthanhpho(matp,tenthanhpho,maquocgia) values(matp, tentinhthanhpho,maquocgia);
-- 	INSERT INTO dulieuthongke(madulieuthongke,ngaythangcapnhat,maquocgia,tongtruonghop,tongchet,tonghoiphuc,dangdieutri,dangnguykich)
--     values(madltk,ngaycn,maquocgia,tongcases,tongdeath,tonghoiphuc,dangdieutri,dangnguykich);
	INSERT INTO chitietdulieuthongke(madulieuthongke,tongtruonghop,truonghopmoi,tongchet,chetmoi,tonghoiphuc,hoiphucmoi,dangdieutri,dangnguykich,matp) 
    values(madltk, tongcases, nhiemmoi, tongdeath,chetmoi, tonghoiphuc,hoiphucmoi,dangdieutri,dangnguykich,matp);
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_vietnammuonnam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_vietnammuonnam`(
)
BEGIN
START TRANSACTION;
select a.tongtruonghop, a.tonghoiphuc, b.tenthanhpho from chitietdulieuthongke a,tinhthanhpho b where a.matp = b.matp and a.matp in (select matp from tinhthanhpho 
where tenthanhpho in ('Hà Nội','TP Hồ Chí Minh','Thái Bình','Bạc Liêu','Vĩnh Phúc','Ninh Bình'));
COMMIT;
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

-- Dump completed
