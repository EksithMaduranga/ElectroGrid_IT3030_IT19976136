-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: inquirydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `inquiry`
--

DROP TABLE IF EXISTS `inquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry` (
  `inquiryID` int NOT NULL AUTO_INCREMENT,
  `inquiryTitle` varchar(45) DEFAULT NULL,
  `inquiryDesc` varchar(45) DEFAULT NULL,
  `inquiryPayNo` varchar(45) DEFAULT NULL,
  `inquiryAddr` varchar(45) DEFAULT NULL,
  `inquiryConNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`inquiryID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry`
--

LOCK TABLES `inquiry` WRITE;
/*!40000 ALTER TABLE `inquiry` DISABLE KEYS */;
INSERT INTO `inquiry` VALUES (0,'Test 1','Test 1 Des','in001','Teat 1 Address','IncMLB001inquiry'),(1,'put','puthjh','put001','put1255996','1563'),(3,'Post1','test post','Postman 1','Postman inc.','sl94112123456789'),(4,'P G P Prasanna','177/3 Gamagewatta Gurulana IhalaBope Padukka','117836511','905601056v','zone1'),(5,'P K G Amarasena','72, Ananda Coomaraswamy Mawatha Colombo 07','537894123','923456932v','zone1'),(6,'H M D Weerasooriya','718/7 Maradana Road Colombo 10','772384501','892005412v','zone3'),(7,'A K D Somarathna','177/3 Gamagewatta Gurulana IhalaBope Padukka','758992355','825921246v','zone4'),(8,'T S D Karunarathna','122/A Galpahana Hettigoda','775376519','936123895v','zone1'),(10,'Test 1','Test 1 Des','in001','Teat 1 Address','IncMLB001inquiry'),(11,'Test 1','Test 1 Des','in001','Teat 1 Address','IncMLB001inquiry'),(12,'GG','gg briohfg','1235fin','123,11,. jhvsavcuyvyvycvsuycvbuysbcyuhs','0702295907'),(14,'saf','af','asf','asf','asf'),(15,'hello','af','1235fin','123,11,. jhvsavcuyvyvycvsuycvbuysbcyuhs','0702295907');
/*!40000 ALTER TABLE `inquiry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 16:42:05
