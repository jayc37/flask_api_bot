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
-- Table structure for table `quocgia`
--

DROP TABLE IF EXISTS `quocgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quocgia` (
  `maquocgia` varchar(20) NOT NULL,
  `tenquocgia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`maquocgia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quocgia`
--

INSERT INTO `quocgia` VALUES ('seychelles205','Seychelles'),('montserrat204','Montserrat'),('city203','Vatican City'),('caicos202','Turks and Caicos'),('greenland201','Greenland'),('islands200','Falkland Islands'),('fiji198','Fiji'),('nevis199','Saint Kitts and Nevis'),('lucia196','Saint Lucia'),('dominica197','Dominica'),('laos195','Laos'),('caledonia194','New Caledonia'),('belize193','Belize'),('grenada191','Grenada'),('curaao192','Curaçao'),('barbuda189','Antigua and Barbuda'),('timorleste190','Timor-Leste'),('grenadines188','St Vincent Grenadines'),('namibia186','Namibia'),('gambia187','Gambia'),('martin185','Saint Martin'),('macao184','Macao'),('polynesia183','French Polynesia'),('botswana182','Botswana'),('maarten180','Sint Maarten'),('bhutan181','Bhutan'),('liechtenstein179','Liechtenstein'),('burundi178','Burundi'),('barbados177','Barbados'),('monaco176','Monaco'),('aruba175','Aruba'),('bahamas174','Bahamas'),('eritrea173','Eritrea'),('tobago172','Trinidad and Tobago'),('cambodia171','Cambodia'),('170','Brunei '),('angola169','Angola'),('guyana167','Guyana'),('bermuda168','Bermuda'),('guadeloupe166','Guadeloupe'),('gibraltar165','Gibraltar'),('comoros164','Comoros'),('syria163','Syria'),('islands162','Faeroe Islands'),('islands161','Cayman Islands'),('mongolia160','Mongolia'),('martinique159','Martinique'),('suriname158','Suriname'),('myanmar157','Myanmar'),('montenegro156','Montenegro'),('vietnam155','Vietnam'),('man154','Isle of Man'),('mauritius153','Mauritius'),('zimbabwe152','Zimbabwe'),('taiwan151','Taiwan'),('libya150','Libya'),('benin149','Benin'),('runion148','Réunion'),('liberia147','Liberia'),('palestine146','Palestine'),('eswatini145','Eswatini'),('tanzania144','Tanzania'),('togo143','Togo'),('malawi142','Malawi'),('islands141','Channel Islands'),('mozambique140','Mozambique'),('rwanda139','Rwanda'),('jamaica138','Jamaica'),('malta137','Malta'),('principe136','Sao Tome and Principe'),('princess133','Diamond Princess'),('marino135','San Marino'),('uganda134','Uganda'),('verde132','Cabo Verde'),('yemen131','Yemen'),('uruguay130','Uruguay'),('chad129','Chad'),('andorra128','Andorra'),('georgia127','Georgia'),('congo126','Congo'),('faso125','Burkina Faso'),('jordan124','Jordan'),('niger123','Niger'),('cyprus122','Cyprus'),('latvia121','Latvia'),('tunisia120','Tunisia'),('kong119','Hong Kong'),('paraguay116','Paraguay'),('madagascar117','Madagascar'),('leone118','Sierra Leone'),('guinea115','Equatorial Guinea'),('guiana114','French Guiana'),('zambia113','Zambia'),('lebanon112','Lebanon'),('nicaragua111','Nicaragua'),('guineabissau110','Guinea-Bissau'),('slovenia109','Slovenia'),('zealand108','New Zealand'),('slovakia107','Slovakia'),('albania106','Albania'),('sudan105','South Sudan'),('rica104','Costa Rica'),('lithuania103','Lithuania'),('iceland102','Iceland'),('mali101','Mali'),('mauritania100','Mauritania'),('lanka99','Sri Lanka'),('estonia98','Estonia'),('maldives97','Maldives'),('car96','CAR'),('croatia95','Croatia'),('cuba94','Cuba'),('mayotte93','Mayotte'),('kyrgyzstan92','Kyrgyzstan'),('somalia91','Somalia'),('herzegovina90','Bosnia and Herzegovina'),('venezuela89','Venezuela'),('greece88','Greece'),('kenya84','Kenya'),('ethiopia85','Ethiopia'),('bulgaria86','Bulgaria'),('thailand87','Thailand'),('salvador83','El Salvador'),('gabon82','Gabon'),('haiti78','Haiti'),('macedonia79','North Macedonia'),('hungary80','Hungary'),('luxembourg81','Luxembourg'),('djibouti77','Djibouti'),('guinea76','Guinea'),('drc75','DRC'),('coast71','Ivory Coast'),('uzbekistan72','Uzbekistan'),('senegal73','Senegal'),('tajikistan74','Tajikistan'),('nepal70','Nepal'),('finland69','Finland'),('australia68','Australia'),('sudan67','Sudan'),('malaysia66','Malaysia'),('norway65','Norway'),('morocco64','Morocco'),('honduras63','Honduras'),('cameroon62','Cameroon'),('czechia61','Czechia'),('guatemala60','Guatemala'),('azerbaijan59','Azerbaijan'),('algeria58','Algeria'),('moldova57','Moldova'),('ghana56','Ghana'),('korea55','S Korea'),('denmark54','Denmark'),('serbia53','Serbia'),('kazakhstan52','Kazakhstan'),('nigeria51','Nigeria'),('armenia50','Armenia'),('austria49','Austria'),('japan48','Japan'),('bolivia47','Bolivia'),('bahrain46','Bahrain'),('israel45','Israel'),('iraq44','Iraq'),('panama43','Panama'),('romania42','Romania'),('republic41','Dominican Republic'),('oman40','Oman'),('ireland39','Ireland'),('afghanistan38','Afghanistan'),('philippines37','Philippines'),('poland36','Poland'),('switzerland35','Switzerland'),('ukraine34','Ukraine'),('argentina33','Argentina'),('kuwait32','Kuwait'),('portugal31','Portugal'),('indonesia30','Indonesia'),('singapore29','Singapore'),('uae28','UAE'),('egypt27','Egypt'),('ecuador26','Ecuador'),('netherlands25','Netherlands'),('sweden24','Sweden'),('colombia23','Colombia'),('belarus22','Belarus'),('belgium21','Belgium'),('africa20','South Africa'),('qatar19','Qatar'),('bangladesh18','Bangladesh'),('canada17','Canada'),('arabia16','Saudi Arabia'),('pakistan15','Pakistan'),('mexico14','Mexico'),('france13','France'),('chile12','Chile'),('turkey11','Turkey'),('germany10','Germany'),('iran9','Iran'),('peru8','Peru'),('italy7','Italy'),('spain6','Spain'),('uk5','UK'),('india4','India'),('russia3','Russia'),('brazil2','Brazil'),('usa1','USA'),('world0','World'),('zaandam206','MS Zaandam'),('sahara207','Western Sahara'),('islands208','British Virgin Islands'),('guinea209','Papua New Guinea'),('netherlands210','Caribbean Netherlands'),('barth211','St Barth'),('lesotho212','Lesotho'),('anguilla213','Anguilla'),('miquelon214','Saint Pierre Miquelon'),('china215','China');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
