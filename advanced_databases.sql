-- MySQL dump 10.13  Distrib 8.4.0, for macos14 (arm64)
--
-- Host: localhost    Database: M605_Advanced_Databases
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `bestsellers`
--

DROP TABLE IF EXISTS `bestsellers`;
/*!50001 DROP VIEW IF EXISTS `bestsellers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bestsellers` AS SELECT 
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `product_description`,
 1 AS `vendor_name`,
 1 AS `total_quantity`,
 1 AS `Total_Revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(10) DEFAULT NULL,
  `coupon_discount` decimal(5,2) DEFAULT NULL,
  `coupon_deadline` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'CODE25',0.25,'2024-07-30 00:00:00'),(2,'SUMMER24',0.10,'2024-08-15 00:00:00'),(3,'PREWINTER',0.35,'2024-09-30 00:00:00'),(4,'WEIHNACHT',0.50,'2024-12-31 00:00:00');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Hans','Gruber','hans_gruber@gadb.com','+49 176 1234567','Berlin','e9cee71ab932fde863338d08be4de9dfe39ea049bdafb342ce659ec5450b69ae','2024-06-23 19:20:52','2024-06-23 19:20:52'),(2,'Jans','Huber','jans_huber@gadb.com','+49 162 1834567','Berlin','d7544c053957e94eb8723bff453550067a3fd7e587c20e29a29be2030c7b519b','2024-06-23 19:20:52','2024-06-23 19:20:52'),(3,'Felix','Muller','felix_muller@gadb.com','+49 176 3234567','Potsdam','ed26464d215b2433c50ddf3e4c9c2467b91e303aa98bd25ee47209bab9a909cb','2024-06-23 19:20:52','2024-06-23 19:20:52'),(4,'Paul','Schneider','paul_schneider@gadb.com','+49 160 5584567','Potsdam','d5991f0d4b1ef2bd76b41adb4ec1fd811208a319cc7f1b2a4dbe5a217b3f21fc','2024-06-23 19:20:52','2024-06-23 19:20:52'),(5,'Heckle','John','heckle_john@gadb.com','+49 150 4334897','Leipzig','456849586516d97d266afabdfdfeb660b1218976e016a9fa96b8e88e7b2bc547','2024-06-23 19:20:52','2024-06-23 19:20:52'),(6,'Bill','Barber','barber_bill@exto.com','+49 133 1828905','Munich','f834b38ec261a066704e338555c15110490eb8c50b4901df2ac3acd7bc884013','2024-06-23 19:20:52','2024-06-23 19:20:52'),(7,'Jennifer','Garner','jenn_garner@exto.com','+49 190 1828666','Bonn','45fab895301972206856ded3e014d8f29cc4f30ce3ea7f4843df97b098088955','2024-06-23 19:20:52','2024-06-23 19:20:52'),(8,'Hannah','Gerber','hannah_garner@bta.com','+49 122 5319001','Bremen','74d90f76bd4892c7be16be1423c7978d5ed25f1927d90dc24373a9f743a46ba2','2024-06-23 19:20:52','2024-06-23 19:20:52'),(9,'Jill','Chamberlain','jill_chamberlain@exto.com','+49 133 1828905','Munich','8e080720436a0fca02621f31e115059455efac507987196a7fb39ed167b030fa','2024-06-23 19:20:52','2024-06-23 19:20:52'),(10,'Francis','Pennywise','francis_penywise@bta.com','+49 121 1812621','Hamburg','e66aba856e6d3ecaaf0ab757c670f99df89e95103a7a6af6be3bdb2ef94c1515','2024-06-23 19:20:52','2024-06-23 19:20:52');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `new_customer` AFTER INSERT ON `customers` FOR EACH ROW BEGIN 
	INSERT INTO loginhistory (customer_id, access_date)
	VALUES (NEW.id, NEW.customer_creation);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `customertotalpurchases`
--

DROP TABLE IF EXISTS `customertotalpurchases`;
/*!50001 DROP VIEW IF EXISTS `customertotalpurchases`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customertotalpurchases` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `SUM(p.total_amount)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fashion_monthly_trend`
--

DROP TABLE IF EXISTS `fashion_monthly_trend`;
/*!50001 DROP VIEW IF EXISTS `fashion_monthly_trend`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fashion_monthly_trend` AS SELECT 
 1 AS `category`,
 1 AS `product_name`,
 1 AS `order_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `loginhistory`
--

DROP TABLE IF EXISTS `loginhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginhistory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `access_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `loginhistory_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginhistory`
--

LOCK TABLES `loginhistory` WRITE;
/*!40000 ALTER TABLE `loginhistory` DISABLE KEYS */;
INSERT INTO `loginhistory` VALUES (1,1,'2024-04-23 20:00:32'),(2,1,'2024-06-02 20:00:32'),(3,1,'2024-06-16 20:00:32'),(4,2,'2024-04-23 20:00:32'),(5,2,'2024-06-02 20:00:32'),(6,2,'2024-06-16 20:00:32'),(7,3,'2024-04-23 20:00:32'),(8,3,'2024-06-02 20:00:32'),(9,3,'2024-06-16 20:00:32'),(10,4,'2024-04-23 20:00:32'),(11,4,'2024-06-02 20:00:32'),(12,4,'2024-06-16 20:00:32'),(13,5,'2024-04-23 20:00:32'),(14,5,'2024-06-02 20:00:32'),(15,5,'2024-06-16 20:00:32'),(16,6,'2024-04-23 20:00:32'),(17,6,'2024-06-02 20:00:32'),(18,6,'2024-06-16 20:00:32'),(19,7,'2024-04-23 20:00:32'),(20,7,'2024-06-02 20:00:32'),(21,7,'2024-06-16 20:00:32'),(22,8,'2024-04-23 20:00:32'),(23,8,'2024-06-02 20:00:32'),(24,8,'2024-06-16 20:00:32'),(25,9,'2024-04-23 20:00:32'),(26,9,'2024-06-02 20:00:32'),(27,9,'2024-06-16 20:00:32'),(28,10,'2024-04-23 20:00:32'),(29,10,'2024-06-02 20:00:32'),(30,10,'2024-06-16 20:00:32');
/*!40000 ALTER TABLE `loginhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_customer_last_login` AFTER INSERT ON `loginhistory` FOR EACH ROW BEGIN 
	UPDATE customers 
	SET login_date = NEW.access_date
	WHERE id = NEW.customer_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,1,1,2),(2,1,12,1),(3,2,5,1),(4,2,3,1),(5,3,4,1),(6,3,19,1),(7,4,14,3),(8,5,18,1),(9,5,20,1),(10,6,15,3),(11,7,17,1),(12,7,13,2),(13,7,11,1),(14,8,10,1),(15,9,9,1),(16,9,5,1),(17,9,8,1),(18,10,7,3),(19,10,2,1),(20,10,1,1),(21,11,14,3),(22,12,7,3),(23,12,2,1),(24,12,1,1),(28,13,1,5),(29,14,1,5),(30,15,1,5),(31,16,1,5),(35,17,1,5),(36,18,2,2);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `new_order_cost` AFTER INSERT ON `orderitems` FOR EACH ROW BEGIN
	CALL calculateorderprice(NEW.order_ID); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_price` decimal(10,2) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_history` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2024-05-23 21:14:56',159.97,1),(2,'2024-05-09 20:38:13',219.98,2),(3,'2024-06-09 20:38:13',639.98,3),(4,'2024-06-16 20:38:13',89.97,4),(5,'2024-06-16 20:38:13',239.98,5),(6,'2024-05-23 20:38:13',29.97,6),(7,'2024-06-18 20:38:13',149.96,7),(8,'2024-06-18 20:38:13',2199.99,8),(9,'2024-06-21 20:38:13',169.97,9),(10,'2024-06-23 20:40:44',255.95,10),(11,'2024-06-17 06:23:14',89.97,8),(12,'2024-06-24 06:29:05',255.95,1),(13,'2024-06-24 08:03:26',99.95,1),(14,'2024-06-24 08:08:04',99.95,2),(15,'2024-06-24 08:35:53',99.95,3),(16,'2024-06-24 08:35:53',99.95,4),(17,'2024-06-24 08:40:56',99.95,5),(18,'2024-06-24 08:41:28',399.98,6);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `new_order_shipment` AFTER INSERT ON `orders` FOR EACH ROW BEGIN 
	INSERT INTO Shipping (order_id, shipment_date)
	VALUES (NEW.id, NEW.created_date);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_type` enum('Debit Card','Credit Card') DEFAULT NULL,
  `card_number` varchar(100) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `CVV` varchar(100) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `payment_methods_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'Debit Card','e370e9694a5c0fffc20c8142da6dab6f7ee0dbdcc954e3a89ad4631943eec1c2','2025-12-01','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',1),(2,'Debit Card','1309df63ada28e482003fe5c5b76a6abdc2084243fbab17b213126c67ba7a415','2026-12-01','8f1f64db81c40ea10e1e9080c9ae60a7acb8925968c431ee16784dea9841c66f',2),(3,'Credit Card','fc7812166981c49be4b7b824ed05058dd8f03083fd725d5171a6bddc8c9372c9','2026-11-01','556d7dc3a115356350f1f9910b1af1ab0e312d4b3e4fc788d2da63668f36d017',2),(4,'Debit Card','2e1676cbd94d639b8958032bc303120ea01d1a766ba962e862b09dba40c02ad2','2026-07-01','865736a1c30a82dc67aba820360a01b1d9d0da5643234cd07c4d60b06eb530c5',3),(5,'Debit Card','ae8c7ca389c9b48a94bfc742efe25ccb0c3fa8aacc95d11257b6d29ebd350d5b','2026-08-01','fabf5b7fedb3e62a81c9298b19706249ee128011bf9d94867681020c16f8b741',3),(6,'Credit Card','ac45d4b832b533a6cdb2725250c55f4c6f33e3dbaad632589f100113a876a5b1','2026-05-01','b3a8e0e1f9ab1bfe3a36f231f676f78bb30a519d2b21e6c530c0eee8ebb4a5d0',4),(7,'Debit Card','9028ab6e248360b5b4ff157aefdc9b6b87cf9e3bcb44068e1227b59219254261','2027-06-01','94f8607915dff25f013e45fc0642fb9830b0fb25ab0ab46d477eaf1061def379',4),(8,'Debit Card','cb406a63c05eb0c4305f1a95f92f8925e2d2503825c255d8336f6c13b4916ee0','2027-07-01','97a6d21df7c51e8289ac1a8c026aaac143e15aa1957f54f42e30d8f8a85c3a55',5),(9,'Credit Card','55ea642eefb6e7c468309323df10b47f0860ea76f7d3c814497ed96ff5bf5acd','2027-05-01','8b5551ea922dd24625c45051c64adb50fdff91fecdf5327a02c7b0be3933965e',6),(10,'Debit Card','98856910d6a5648f991f17d92b50515b94261c79e6c75d5cb4f160f6dd643051','2027-03-01','1bde41ce9b4fccbf7dde0dc315d1aea5fa03f78c56feb1ba744be9e37fab2dce',6),(11,'Debit Card','632a1554ea26febfe34454a130bad0245f3676b714f388066e35af39cf1d984f','2027-08-01','864995ea35b82212a9a2d456a3f89833f24651c4e5ebc21c18476a9afb065035',7),(12,'Credit Card','54cbc5675506e7901ba67a17c7e5c52375acabceb2275fb55f9177239f0c09c7','2028-01-01','8d23cf6c86e834a7aa6eded54c26ce2bb2e74903538c61bdd5d2197997ab2f72',8),(13,'Debit Card','68ca107d754422f0fe4fed5dec2256f688570a87e2c6190462c9fe8699ca7b3a','2028-10-01','07e46896ba89f88776fed50a1b7895129f9b9af7d3b8b33ca23af478bb818d6c',8),(14,'Credit Card','756127777c7ec761568e3f0095c6c660aa2855fe22c95708c58577043b980ead','2028-11-01','5e968ce47ce4a17e3823c29332a39d049a8d0afb08d157eb6224625f92671a51',9),(15,'Credit Card','c4a42a3e4a64aaff2857013593eec5a3ceb18f8e483f63edcdd8310341471d35','2028-03-01','f6e0a1e2ac41945a9aa7ff8a8aaa0cebc12a3bcc981a929ad5cf810a090e11ae',10),(16,'Debit Card','5960e34df1226d783eeb51834870f9b20195f5ff2120794708c5f65ea87a9afb','2027-05-01','7045d16ae7f043ec25774a0a85d6f479e5bb019e9c5a1584bc76736d116b8f33',10);
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `payment_method_id` int DEFAULT NULL,
  `coupon_id` int DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `payment_method_id` (`payment_method_id`),
  KEY `coupon_id` (`coupon_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,1,1,119.98),(2,2,3,NULL,219.98),(3,3,5,1,479.99),(4,4,7,NULL,89.97),(5,5,8,NULL,239.98),(6,6,11,2,26.97),(7,7,11,2,134.96),(8,8,13,NULL,2199.99),(9,9,14,NULL,169.97),(10,10,16,3,166.37),(11,11,12,NULL,89.97),(12,12,1,NULL,266.95);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Fashion','This category comprises of various clothing and attire objects','2024-06-23 19:33:50'),(2,'Travel','Everything to ease every part of your journey, the essentials and the luxury in one area','2024-06-23 19:33:50'),(3,'Outdoor','Hiking, Wandering, Staring at the night sky, all the right stuff in one area','2024-06-23 19:33:50'),(4,'Home','Home essentials for the luxury sufficient families','2024-06-23 19:33:50'),(5,'Garden','every piece needed to make the lawn look homely','2024-06-23 19:33:50'),(6,'DIY','Fancy a new endeavour, or just looking not to break the bank','2024-06-23 19:33:50'),(7,'Sports Goods','Every one just does it','2024-06-23 19:33:50'),(8,'Electronics','Looks like you need a genius bar to help','2024-06-23 19:33:50'),(9,'Food','What can I say, erstemal essen','2024-06-23 19:33:50'),(10,'Beauty & Personal Care','Taking care of one self couldn\'t be better explained','2024-06-23 19:33:50');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `image_caption` varchar(100) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'https://example.com/images/t-shirt-blue.png','The Perfect Blue T Shirt for you',1),(2,'https://example.com/images/t-shirt-blue-2.png','The Perfect Blue T Shirt for you',1),(3,'https://example.com/images/t-shirt-blue-3.png','The Perfect Blue T Shirt for you',1),(4,'https://example.com/images/herschel.png','The Herschel Carry on Bag',2),(5,'https://example.com/images/herschel-2.png','The Herschel Carry on Bag',2),(6,'https://example.com/images/herschel-3.png','The Herschel Carry on Bag',2),(7,'https://example.com/images/martens.png','Doc Martens shoe',3),(8,'https://example.com/images/martens-2.png','Doc Martens Shoe',3),(9,'https://example.com/images/garden-table-set.png','Outdoor Garden and Table Set',4),(10,'https://example.com/images/garden-table-set-2.png','Outdoor Garden and Table Set',4),(11,'https://example.com/images/garden-table-set-3.png','Outdoor Garden and Table Set',4),(12,'https://example.com/images/denim-jeans.png','Denim Jeans',5),(13,'https://example.com/images/denim-jeans-2.png','Denim Jeans',5),(14,'https://example.com/images/denim-jacket.png','Denim Jacket',6),(15,'https://example.com/images/denim-jacket-2.png','Denim Jacket',6),(16,'https://example.com/images/denim-jacket-3.png','Denim Jacket',6),(17,'https://example.com/images/denim-jacket.png','Denim Jacket',6),(18,'https://example.com/images/sunscreen.png','Sunscreen IPF2 250',7),(19,'https://example.com/images/sunscreen-1.png','Sunscreen IPF2 250',7),(20,'https://example.com/images/pull-bear.png','Pullover',8),(21,'https://example.com/images/pull-bear-1.png','Pullover',8),(22,'https://example.com/images/striped-shirt.png','Striped Shirt',9),(23,'https://example.com/images/striped-shirt-2.png','Striped Shirt',9),(24,'https://example.com/images/striped-shirt-1.png','Striped Shirt',9),(25,'https://example.com/images/alienware-r4.png','Dell Alienware r4',10),(26,'https://example.com/images/alienware-r4-1.png','Dell Alienware r4',10),(27,'https://example.com/images/wallpaint-roller.png','Wall Paint Roller',11),(28,'https://example.com/images/wallpaint-roller-1.png','Wall Paint Roller',11),(29,'https://example.com/images/wallpaint-roller-2.png','Wall Paint Roller',11),(30,'https://example.com/images/ritter-suitcases.png','Samsonite Suitcases',12),(31,'https://example.com/images/samsonite-suitcases-1.png','Samsonite Suitcases',12),(32,'https://example.com/images/ritter-sport.png','Ritter Sport',13),(33,'https://example.com/images/ritter-sport-1.png','Ritter Sport',13),(34,'https://example.com/images/wilson-bball.png','Wilson Basketball',14),(35,'https://example.com/images/wilson-bball-1.png','Wilson Basketball',14),(36,'https://example.com/images/dm-shampoo.png','DM Shampoo & Conditioner',15),(37,'https://example.com/images/dm-shampoo-1.png','DM Shampoo & Conditioner',15),(38,'https://example.com/images/olay-skincare.png','Olay Skincare Set',16),(39,'https://example.com/images/olay-skincare-1.png','Olay Skincare Set',16),(40,'https://example.com/images/travel-lock-1.png','Bike Travel Lock',17),(41,'https://example.com/images/ring-doorbell-1.png','Ring Doorbell',18),(42,'https://example.com/images/ring-doorbell.png','Ring Doorbell',18),(43,'https://example.com/images/queen-bed.png','Queen Size Bed',19),(44,'https://example.com/images/queen-bed-1.png','Queen Size Bed',19),(45,'https://example.com/images/amzn-alexa.png','Amazon Alexa',20);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_returns`
--

DROP TABLE IF EXISTS `product_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_returns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderitem_id` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` text,
  PRIMARY KEY (`id`),
  KEY `orderitem_id` (`orderitem_id`),
  CONSTRAINT `product_returns_ibfk_1` FOREIGN KEY (`orderitem_id`) REFERENCES `orderitems` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_returns`
--

LOCK TABLES `product_returns` WRITE;
/*!40000 ALTER TABLE `product_returns` DISABLE KEYS */;
INSERT INTO `product_returns` VALUES (1,20,'2024-05-20 14:56:00',NULL),(2,17,'2024-05-12 11:00:00','The packaging was damaged'),(3,11,'2024-06-01 15:45:02','I did not like it'),(4,4,'2024-06-02 12:00:00',NULL);
/*!40000 ALTER TABLE `product_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `review` text,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_reviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
INSERT INTO `product_reviews` VALUES (1,4,'The product was as per expectations','2024-05-23 19:54:04',1,1),(2,2,'The product was not usable after 2 weeks of use','2024-06-16 19:54:04',2,2),(3,5,'This was a catch, The components are seamless and delivery was on time','2024-05-23 19:54:04',3,3),(4,3,'Just received, product works fine but packaging and material is at par','2024-06-23 19:54:04',4,4),(5,4,'Just What I was looking for','2024-06-23 19:54:04',5,5),(6,1,NULL,'2024-06-23 19:54:04',6,6),(7,5,'A steal for the price','2024-06-23 19:54:04',7,7),(8,4,'The right stuff at the right time','2024-06-23 19:54:04',8,8),(9,1,'Damaged after 1 use','2024-06-23 19:54:04',9,9),(10,3,'The Design quality could have been improved but does its job','2024-06-23 19:54:04',10,10),(11,5,'Just What I was looking for','2024-06-23 19:54:04',1,11),(12,4,'Decent design, quality and price','2024-06-23 19:54:04',2,12),(13,1,'Unusable and impractical','2024-06-23 19:54:04',3,13),(14,2,'Damaged upon delivery but still usable to an extent','2024-06-23 19:54:04',4,14),(15,4,'Just What I was looking for','2024-06-23 19:54:04',5,15),(16,3,NULL,'2024-06-23 19:54:04',6,16),(17,5,NULL,'2024-06-23 19:54:04',7,17),(18,4,'Good quality product and still in use','2024-06-23 19:54:04',8,18),(19,1,NULL,'2024-06-23 19:54:04',9,19),(20,5,'Was waiting for the release of the product for a month','2024-06-23 19:54:04',10,20);
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `product_tags_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (1,1,6),(2,1,1),(3,1,7),(4,2,2),(5,2,3),(6,2,6),(7,2,7),(8,2,8),(9,3,2),(10,3,7),(11,4,1),(12,5,11),(13,5,3),(14,6,11),(15,6,8),(16,6,6),(17,6,7),(18,7,1),(19,8,7),(20,9,1),(21,10,2),(22,10,3),(23,12,2),(24,13,8),(25,14,10),(26,14,8);
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productreturns`
--

DROP TABLE IF EXISTS `productreturns`;
/*!50001 DROP VIEW IF EXISTS `productreturns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productreturns` AS SELECT 
 1 AS `orderitem_id`,
 1 AS `product_return_id`,
 1 AS `product_name`,
 1 AS `product_price`,
 1 AS `date`,
 1 AS `reason`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_description` text,
  `product_price` decimal(10,2) NOT NULL,
  `category_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_id` (`vendor_id`),
  KEY `categorical_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Blue T-Shirt','Comfortable woolen T-Shirt',19.99,1,1),(2,'Herschel - Carryon','Herschel Travel Bag',199.99,2,2),(3,'Doc Martens Outdoor Boots','Leather Boots - Black',179.99,3,3),(4,'Garden Table & Chair Set','All Season - rain and rust resistant garden set',139.99,5,4),(5,'Denim Jeans - Black','Levis full Stretch 501',39.99,1,1),(6,'701 Levis Denim Jacket','The Ultimate Summer Vibe, Denim Jacket',49.99,1,1),(7,'Sunscreen IPF 250','Burn resistance against summer heatwaves and skin protection',11.99,3,1),(8,'Pullover','Pull & Bear',69.99,1,3),(9,'Striped Shirt','Non-iron Shirt Cambridge',59.99,1,6),(10,'Dell Alienware r4','i9-11900K, RTX 3070Ti, 16gb RAM, 1TB SSD Windows 11 Pro Integrated',2199.99,8,6),(11,'Wall Paint Roller and Brushes','5 piece set for wall paints (Home, Office, House Beams) with holders',39.99,6,3),(12,'Samsonite Suitcase','Hardcase EURO edition',119.99,2,2),(13,'Ritter Sport - Erdnuss','8 Size Pack of Ritter Sport - Erdnuss and Caramel',29.99,9,10),(14,'Basketball - Wilson','Size 5 outdoor Wilson Basketball Leather',29.99,7,10),(15,'DM Shampoo & Conditioner Set','Balea - For Men Shampoo Anti-Dandruff and Conditioner Set (50ml)',9.99,10,8),(16,'Olay Skincare Set','Olay Smooth Skin set for Women',19.99,10,5),(17,'Bike Travel Lock','Anti-Slip Lock for Bicycles',49.99,2,7),(18,'Ring Doorbell','Ring Doorbell provides integration with your phone and live streaming of visitors on your front door, integrated with Amazon Alexa',99.99,4,7),(19,'Queen Size Bed','Queen Size (110 x 90) with Support size',499.99,5,1),(20,'Amazon Alexa','Amazon Alexa Home Assistant, integrated with Amazon Prime purchasing',139.99,4,5);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shipping`
--

DROP TABLE IF EXISTS `Shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shipping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `shipment_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shipping`
--

LOCK TABLES `Shipping` WRITE;
/*!40000 ALTER TABLE `Shipping` DISABLE KEYS */;
INSERT INTO `Shipping` VALUES (1,1,'2024-05-23 23:31:09','2024-06-02 23:31:09'),(2,2,'2024-06-09 23:31:09','2024-06-16 23:31:09'),(3,3,'2024-06-09 23:31:09','2024-06-18 23:31:09'),(4,4,'2024-06-16 23:31:09','2024-06-22 23:31:09'),(5,5,'2024-06-16 23:31:09','2024-06-21 23:31:09'),(6,6,'2024-06-20 23:31:09',NULL),(7,7,'2024-06-22 23:31:09',NULL),(8,8,'2024-06-22 23:31:09',NULL);
/*!40000 ALTER TABLE `Shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,1,100,'2024-06-22 22:00:00'),(2,2,50,'2024-06-22 19:45:03'),(3,3,23,'2024-04-23 19:45:03'),(4,4,100,'2024-06-17 19:45:03'),(5,5,133,'2024-06-23 17:45:03'),(6,6,33,'2024-06-23 19:15:03'),(7,7,78,'2024-06-18 19:45:03'),(8,8,86,'2024-06-13 19:45:03'),(9,9,76,'2024-05-23 19:45:03'),(10,10,52,'2024-06-09 19:45:03'),(11,11,88,'2024-05-23 19:45:03'),(12,12,7,'2024-06-23 19:43:03'),(13,13,55,'2024-06-09 19:45:03'),(14,14,33,'2024-06-23 16:45:03'),(15,15,21,'2024-06-22 19:45:03'),(16,16,66,'2024-06-23 19:42:03'),(17,17,39,'2024-06-23 04:45:03'),(18,18,88,'2024-06-19 19:45:03'),(19,19,89,'2024-06-02 19:45:03'),(20,20,92,'2024-05-23 19:45:03');
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Basics','2024-06-23 19:35:08'),(2,'Premium Products','2024-06-23 19:35:08'),(3,'Exclusive Release','2024-06-23 19:35:08'),(4,'Sponsored','2024-06-23 19:35:08'),(5,'Shoes','2024-06-23 19:35:08'),(6,'Male','2024-06-23 19:35:08'),(7,'Female','2024-06-23 19:35:08'),(8,'Kids','2024-06-23 19:35:08'),(9,'Sneakers','2024-06-23 19:35:08'),(10,'Running','2024-06-23 19:35:08'),(11,'Jeans','2024-06-23 19:35:08');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vendorproductofferings`
--

DROP TABLE IF EXISTS `vendorproductofferings`;
/*!50001 DROP VIEW IF EXISTS `vendorproductofferings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vendorproductofferings` AS SELECT 
 1 AS `vendor_name`,
 1 AS `vendor_email`,
 1 AS `vendor_contact`,
 1 AS `vendor_address`,
 1 AS `product_offerings`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(100) NOT NULL,
  `vendor_email` varchar(100) NOT NULL,
  `vendor_contact` varchar(20) DEFAULT NULL,
  `vendor_address` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'Schmidt AH','schmidt-info@punkt.de','+49 50 135476','Adalbert Straße, Berlin','2024-06-23 19:24:05'),(2,'Karnival GmbH','karnival-info@seit.de','+49 22 185376','Schniller Straße, Stuttgart','2024-06-23 19:24:05'),(3,'Schreib Jam','schreiber-info@jam.de','+49 50 197623','Adalbert Straße, Potsdam','2024-06-23 19:24:05'),(4,'Farbe Co.','farber-info@kit.de','+49 30 135999','Müller Straße, Berlin','2024-06-23 19:24:05'),(5,'Glass GmbH','glass-info@geschäft.de','+49 20 135777','Rheinbahnstraße, München','2024-06-23 19:24:05'),(6,'Eigenweiß','jetzt-info@waschen.de','+49 33 412676','Boland Straße, Berlin','2024-06-23 19:24:05'),(7,'Waschen Kopf','kopf-info@waschen.de','+49 30 336112','Landsberger Allee, Bremen','2024-06-23 19:24:05'),(8,'Baden Time','time-info@baden.de','+49 22 651477','Strausberg Nord, Heilbronn','2024-06-23 19:24:05'),(9,'Pullover AG','francis-info@pullover.de','+49 55 333476','Warschauer Straße, Baden','2024-06-23 19:24:05'),(10,'Treff Punkt GmbH','treff-info@connor.de','+49 32 252812','Richard-Strauß-Straße, Crailsheim','2024-06-23 19:24:05');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `bestsellers`
--

/*!50001 DROP VIEW IF EXISTS `bestsellers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bestsellers` AS select `oi`.`product_id` AS `product_id`,`p`.`product_name` AS `product_name`,`p`.`product_description` AS `product_description`,`v`.`vendor_name` AS `vendor_name`,sum(`oi`.`quantity`) AS `total_quantity`,(sum(`oi`.`quantity`) * `p`.`product_price`) AS `Total_Revenue` from ((`orderitems` `oi` join `products` `p` on((`oi`.`product_id` = `p`.`id`))) join `vendors` `v` on((`p`.`vendor_id` = `v`.`id`))) group by `oi`.`product_id` order by `total_quantity` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customertotalpurchases`
--

/*!50001 DROP VIEW IF EXISTS `customertotalpurchases`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customertotalpurchases` AS select `c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,sum(`p`.`total_amount`) AS `SUM(p.total_amount)` from ((`payments` `p` join `orders` `o` on((`p`.`order_id` = `o`.`id`))) join `customers` `c` on((`c`.`id` = `o`.`customer_id`))) group by `c`.`first_name`,`c`.`last_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fashion_monthly_trend`
--

/*!50001 DROP VIEW IF EXISTS `fashion_monthly_trend`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fashion_monthly_trend` AS select `pc`.`category` AS `category`,`p`.`product_name` AS `product_name`,`o`.`created_date` AS `order_date` from (((`product_category` `pc` join `products` `p` on((`p`.`category_id` = `pc`.`id`))) join `orderitems` `oi` on((`p`.`id` = `oi`.`product_id`))) join `orders` `o` on((`oi`.`order_id` = `o`.`id`))) where ((`pc`.`category` = 'Fashion') and (month(`o`.`created_date`) = (month(curdate()) - 1)) and (year(`o`.`created_date`) = year(curdate()))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productreturns`
--

/*!50001 DROP VIEW IF EXISTS `productreturns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productreturns` AS select `o`.`id` AS `orderitem_id`,`pr`.`id` AS `product_return_id`,`p`.`product_name` AS `product_name`,`p`.`product_price` AS `product_price`,`pr`.`date` AS `date`,`pr`.`reason` AS `reason` from ((`orderitems` `o` join `product_returns` `pr` on((`o`.`id` = `pr`.`orderitem_id`))) join `products` `p` on((`o`.`product_id` = `p`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vendorproductofferings`
--

/*!50001 DROP VIEW IF EXISTS `vendorproductofferings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vendorproductofferings` AS select `v`.`vendor_name` AS `vendor_name`,`v`.`vendor_email` AS `vendor_email`,`v`.`vendor_contact` AS `vendor_contact`,`v`.`vendor_address` AS `vendor_address`,count(`p`.`product_name`) AS `product_offerings` from (`vendors` `v` join `products` `p` on((`v`.`id` = `p`.`vendor_id`))) group by `v`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24 23:41:25
