CREATE DATABASE  IF NOT EXISTS `springdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `springdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: springdb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Product 1','Apparel',10.99),(2,'Product 2','Electronics',21.98),(3,'Product 3','Apparel',32.97),(4,'Product 4','Electronics',43.96),(5,'Product 5','Apparel',54.95),(6,'Product 6','Electronics',65.94),(7,'Product 7','Apparel',76.93),(8,'Product 8','Electronics',87.92),(9,'Product 9','Apparel',98.91),(10,'Product 10','Electronics',109.90),(11,'Product 11','Apparel',120.89),(12,'Product 12','Electronics',131.88),(13,'Product 13','Apparel',142.87),(14,'Product 14','Electronics',153.86),(15,'Product 15','Apparel',164.85),(16,'Product 16','Electronics',175.84),(17,'Product 17','Apparel',186.83),(18,'Product 18','Electronics',197.82),(19,'Product 19','Apparel',208.81),(20,'Product 20','Electronics',219.80),(21,'Product 21','Apparel',230.79),(22,'Product 22','Electronics',241.78),(23,'Product 23','Apparel',252.77),(24,'Product 24','Electronics',263.76),(25,'Product 25','Apparel',274.75),(101,'Product 101','Apparel',1109.99),(102,'Product 102','Electronics',1120.98),(103,'Product 103','Apparel',1131.97),(104,'Product 104','Electronics',1142.96),(105,'Product 105','Apparel',1153.95),(106,'Product 106','Electronics',1164.94),(107,'Product 107','Apparel',1175.93),(108,'Product 108','Electronics',1186.92),(109,'Product 109','Apparel',1197.91),(110,'Product 110','Electronics',1208.90),(111,'Product 111','Apparel',1219.89),(112,'Product 112','Electronics',1230.88),(113,'Product 113','Apparel',1241.87),(114,'Product 114','Electronics',1252.86),(115,'Product 15','Apparel',NULL),(205,'Product 105','Apparel',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-11 16:14:55
