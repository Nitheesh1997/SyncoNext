-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: service_provider
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `isp`
--

DROP TABLE IF EXISTS `isp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `isp` (
  `Name` varchar(25) NOT NULL,
  `lowest_price` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `max_speed` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  `conatct_no` bigint(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isp`
--

LOCK TABLES `isp` WRITE;
/*!40000 ALTER TABLE `isp` DISABLE KEYS */;
INSERT INTO `isp` VALUES ('Bsnl',200,3,40,'bsnl low cost internet',9929392929,'support@bsnl.com','www.bsnl.com'),('Airtel',800,3,45,'airtel fast internet',9988776655,'support@airtel.com','www.airtel.com'),('Hathway',1000,4,55,'hathway broadband internet',9988776644,'support@hathway.com','www.hathway.com'),('BBNL/BNET',850,3,35,'BBNL/BNET broadband internet',9988776633,'support@bnet.com','www.bnet.com'),('Act Broadband',1200,5,70,'Act broadband fast internet',9988776622,'support@act.com','www.act.com'),('YOU Broadband',1300,4,60,'YOU broadband fast internet',9988776611,'support@youbroadband.com','www.youbroadband.com'),('Tikono Digital Network',1300,3,50,'Tikona Digital Network broadband internet',9988776600,'support@tikonadigitalnetwork.com','www.tikonadigitalnetwork.com'),('Railtel',1500,5,60,'Railtel broadband internet',9988775500,'support@railtel.com','www.railtel.com'),('Reliance DSL',1500,4,60,'Reliance DSL broadband internet',9988774400,'support@reliancedsl.com','www.reliancedsl.com');
/*!40000 ALTER TABLE `isp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-10  2:05:40
