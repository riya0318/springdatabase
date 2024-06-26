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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,1,'2024-01-01',1,99.99),(2,2,2,'2024-01-01',2,199.98),(3,3,3,'2024-01-01',3,299.97),(4,4,4,'2024-01-01',4,399.96),(5,5,5,'2024-01-01',5,499.95),(6,6,6,'2024-01-01',6,599.94),(7,7,7,'2024-01-01',7,699.93),(8,8,8,'2024-01-01',8,799.92),(9,9,9,'2024-01-01',9,899.91),(10,10,10,'2024-01-01',10,999.90),(11,11,11,'2024-01-01',11,1099.89),(12,12,12,'2024-01-01',12,1199.88),(13,13,13,'2024-01-01',13,1299.87),(14,14,14,'2024-01-01',14,1399.86),(15,15,15,'2024-01-01',15,1499.85),(16,16,16,'2024-01-01',16,1599.84),(17,17,17,'2024-01-01',17,1699.83),(18,18,18,'2024-01-01',18,1799.82),(19,19,19,'2024-01-01',19,1899.81),(20,20,20,'2024-01-01',20,1999.80),(21,21,21,'2024-01-01',21,2099.79),(22,22,22,'2024-01-01',22,2199.78),(23,23,23,'2024-01-01',23,2299.77),(24,24,24,'2024-01-01',24,2399.76),(25,25,25,'2024-01-01',25,2499.75),(110,10,10,'2024-01-01',10,NULL),(120,20,20,'2024-01-01',20,NULL),(215,15,15,'2024-01-01',NULL,1499.85),(320,NULL,20,'2024-01-01',20,1999.80),(425,25,NULL,'2024-01-01',25,2499.75);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-11 16:14:54
