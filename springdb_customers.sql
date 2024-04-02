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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Customer 1','customer1@example.com','123-456-0001'),(2,'Customer 2','customer2@example.com','123-456-0002'),(3,'Customer 3','customer3@example.com','123-456-0003'),(4,'Customer 4','customer4@example.com','123-456-0004'),(5,'Customer 5','customer5@example.com','123-456-0005'),(6,'Customer 6','customer6@example.com','123-456-0006'),(7,'Customer 7','customer7@example.com','123-456-0007'),(8,'Customer 8','customer8@example.com','123-456-0008'),(9,'Customer 9','customer9@example.com','123-456-0009'),(10,'Customer 10','customer10@example.com','123-456-0010'),(11,'Customer 11','customer11@example.com','123-456-0011'),(12,'Customer 12','customer12@example.com','123-456-0012'),(13,'Customer 13','customer13@example.com','123-456-0013'),(14,'Customer 14','customer14@example.com','123-456-0014'),(15,'Customer 15','customer15@example.com','123-456-0015'),(16,'Customer 16','customer16@example.com','123-456-0016'),(17,'Customer 17','customer17@example.com','123-456-0017'),(18,'Customer 18','customer18@example.com','123-456-0018'),(19,'Customer 19','customer19@example.com','123-456-0019'),(20,'Customer 20','customer20@example.com','123-456-0020'),(21,'Customer 21','customer21@example.com','123-456-0021'),(22,'Customer 22','customer22@example.com','123-456-0022'),(23,'Customer 23','customer23@example.com','123-456-0023'),(24,'Customer 24','customer24@example.com','123-456-0024'),(25,'Customer 25','customer25@example.com','123-456-0025'),(26,'Customer 26','customer26@example.com','123-456-0026'),(27,'Customer 27','customer27@example.com','123-456-0027'),(28,'Customer 28','customer28@example.com','123-456-0028'),(29,'Customer 29','customer29@example.com','123-456-0029'),(30,'Customer 30','customer30@example.com','123-456-0030'),(31,'Customer 31','customer31@example.com','123-456-0031'),(32,'Customer 32','customer32@example.com','123-456-0032'),(33,'Customer 33','customer33@example.com','123-456-0033'),(34,'Customer 34','customer34@example.com','123-456-0034'),(35,'Customer 35','customer35@example.com','123-456-0035'),(36,'Customer 36','customer36@example.com','123-456-0036'),(37,'Customer 37','customer37@example.com','123-456-0037'),(38,'Customer 38','customer38@example.com','123-456-0038'),(39,'Customer 39','customer39@example.com','123-456-0039'),(40,'Customer 40','customer40@example.com','123-456-0040'),(41,'Customer 41','customer41@example.com','123-456-0041'),(42,'Customer 42','customer42@example.com','123-456-0042'),(43,'Customer 43','customer43@example.com','123-456-0043'),(44,'Customer 44','customer44@example.com','123-456-0044'),(45,'Customer 45','customer45@example.com','123-456-0045'),(46,'Customer 46','customer46@example.com','123-456-0046'),(47,'Customer 47','customer47@example.com','123-456-0047'),(48,'Customer 48','customer48@example.com','123-456-0048'),(49,'Customer 49','customer49@example.com','123-456-0049'),(50,'Customer 50','customer50@example.com','123-456-0050'),(51,'Customer 51','customer51@example.com','123-456-0051'),(52,'Customer 52','customer52@example.com','123-456-0052'),(53,'Customer 53','customer53@example.com','123-456-0053'),(54,'Customer 54','customer54@example.com','123-456-0054'),(55,'Customer 55','customer55@example.com','123-456-0055'),(56,'Customer 56','customer56@example.com','123-456-0056'),(57,'Customer 57','customer57@example.com','123-456-0057'),(58,'Customer 58','customer58@example.com','123-456-0058'),(59,'Customer 59','customer59@example.com','123-456-0059'),(60,'Customer 60','customer60@example.com','123-456-0060'),(61,'Customer 61','customer61@example.com','123-456-0061'),(62,'Customer 62','customer62@example.com','123-456-0062'),(63,'Customer 63','customer63@example.com','123-456-0063'),(64,'Customer 64','customer64@example.com','123-456-0064'),(65,'Customer 65','customer65@example.com','123-456-0065'),(66,'Customer 66','customer66@example.com','123-456-0066'),(67,'Customer 67','customer67@example.com','123-456-0067'),(68,'Customer 68','customer68@example.com','123-456-0068'),(69,'Customer 69','customer69@example.com','123-456-0069'),(70,'Customer 70','customer70@example.com','123-456-0070'),(71,'Customer 71','customer71@example.com','123-456-0071'),(72,'Customer 72','customer72@example.com','123-456-0072'),(73,'Customer 73','customer73@example.com','123-456-0073'),(74,'Customer 74','customer74@example.com','123-456-0074'),(75,'Customer 75','customer75@example.com','123-456-0075'),(76,'Customer 76','customer76@example.com','123-456-0076'),(77,'Customer 77','customer77@example.com','123-456-0077'),(78,'Customer 78','customer78@example.com','123-456-0078'),(79,'Customer 79','customer79@example.com','123-456-0079'),(80,'Customer 80','customer80@example.com','123-456-0080'),(81,'Customer 81','customer81@example.com','123-456-0081'),(82,'Customer 82','customer82@example.com','123-456-0082'),(83,'Customer 83','customer83@example.com','123-456-0083'),(84,'Customer 84','customer84@example.com','123-456-0084'),(85,'Customer 85','customer85@example.com','123-456-0085'),(86,'Customer 86','customer86@example.com','123-456-0086'),(87,'Customer 87','customer87@example.com','123-456-0087'),(88,'Customer 88','customer88@example.com','123-456-0088'),(89,'Customer 89','customer89@example.com','123-456-0089'),(90,'Customer 90','customer90@example.com','123-456-0090'),(91,'Customer 91','customer91@example.com','123-456-0091'),(92,'Customer 92','customer92@example.com','123-456-0092'),(93,'Customer 93','customer93@example.com','123-456-0093'),(94,'Customer 94','customer94@example.com','123-456-0094'),(95,'Customer 95','customer95@example.com','123-456-0095'),(96,'Customer 96','customer96@example.com','123-456-0096'),(97,'Customer 97','customer97@example.com','123-456-0097'),(98,'Customer 98','customer98@example.com','123-456-0098'),(99,'Customer 99','customer99@example.com','123-456-0099'),(100,'Customer 100','customer100@example.com','123-456-0100'),(110,'Customer 10','customer10@example.com',NULL),(120,'Customer 20','customer20@example.com',NULL),(130,'Customer 30','customer30@example.com',NULL),(140,'Customer 40','customer40@example.com',NULL),(150,'Customer 50','customer50@example.com',NULL),(160,'Customer 60','customer60@example.com',NULL),(170,'Customer 70','customer70@example.com',NULL),(180,'Customer 80','customer80@example.com',NULL),(190,'Customer 90','customer90@example.com',NULL),(200,'Customer 100','customer100@example.com',NULL),(220,NULL,'customer20@example.com','123-456-0020'),(240,NULL,'customer40@example.com','123-456-0040'),(260,NULL,'customer60@example.com','123-456-0060'),(280,NULL,'customer80@example.com','123-456-0080'),(300,NULL,'customer100@example.com','123-456-0100'),(330,'Customer 30','customer30@example.com','123-456-0030'),(360,'Customer 60','customer60@example.com','123-456-0060'),(390,'Customer 90','customer90@example.com','123-456-0090');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
