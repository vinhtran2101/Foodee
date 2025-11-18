-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: foodee
-- ------------------------------------------------------
-- Server version	8.0.41

DROP DATABASE IF EXISTS foodee;
CREATE DATABASE foodee CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE foodee;

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (28,'admin2@example.com',_binary '','abc123','admin1',NULL,'',NULL),(30,'admin@gmail.com',_binary '','$2a$10$EnsAUh.5gxChIcnrttMDhOxki5233S5khuAsXyVsUVuJAniiKDFVi','admin2','HNN','Quản Trị Viên','09823766679'),(41,'duc111@gmail.com',_binary '','$2a$10$C4RJcegLY2KTW/0/Op.aYOBLvbYTp02npSA3k.uYy0CJDlvf.UmTK','ducle02',NULL,'',NULL),(47,'abc@gmail.com',_binary '','$2a$10$f7kr3tQkmQSE/Zw6mc7gvOIAAb9g0odK/YgLYC9zmEVNpTbPIZ8Km','abc','ABCB','abcd','09487756'),(48,'du@gmail.com',_binary '','$2a$10$rcgxs6guZWPUYsbJym72Buv2R/6w.ni8kv0LaFbOtKtkIWgIicwny','ducle002','Hà Nội, Việt Nam','L M D','0937874645'),(53,'ghdyu@gmail.com',_binary '','$2a$10$I1plTSFEAuXj9iLDTh/80ewagW6w/GCXNKh5sioz5PelUGVnmkfJu','abc123','H N','AAA','04875733478'),(58,'hh@gmail.com',_binary '','$2a$10$rWI/Z5gBXxSvy6oeh1iKXuXEZaDnC1ZU9k5.Noafrxox2Ylc34hnK','hhhh','HNN','hhh','0937874646'),(62,'riiccky01@gmail.com',_binary '','$2a$10$tCPXQ.eZIBZn3cCyjgLDsuk69xWIYY.Xa8dKDWP3Sr4ia6nOvNlgm','aa123','nyyy@gmail.com','uyd','0476578687'),(64,'hgru@gmail.com',_binary '','$2a$10$tqqYmb49w/4J8DDezya/1.0UHTS6Ed7wpzc0.FtrmOJTj8FYURStu','mmc','HN','MCK','0476578687'),(70,'a1@gmail.com',_binary '','$2a$10$iyJdy1F.o/wf14NIu.1cU.y9K075tZn3Dn8oybJDq/54p30tq2Cau','NVA','TPHCM','Nguyễn Văn A','0988558680'),(71,'b@gmail.com',_binary '','$2a$10$Yq09/5HmuK8Gj3LsjItGFOCr4NztJfyhKi5uwu/a8loKstsrG6PNK','nvb','Hà Nội, Việt Nam','Nguyễn Văn B','0937874649'),(72,'riicckyc@gmail.com',_binary '','$2a$10$A8CbCAGbX78./3KmtTsJDedMJZbFhJI.8LLp/UI9gTLHLbZz.GrfO','nvc','Hà Nội, Việt Nam','Nguyễn Văn C','0476578687'),(77,'nguyenvana@example.com',_binary '','$2a$10$QeRvok/NQ7yHqgYjhXwnbO/s0EwS.1HDrE4ZX5JPmH2.7jHzgjcDm','abc1234','Hà Nội, Việt Nam','abcd','0476578687');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (24,'ADMIN'),(25,'USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (28,24),(30,24),(41,24),(47,25),(48,25),(53,25),(58,25),(62,25),(64,25),(70,25),(71,25),(72,25),(77,25);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKt8o6pivur7nn124jehx7cygw5` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (11,'Bán chạy'),(9,'Khuyến mãi'),(8,'Mới'),(10,'Nổi bật');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_types` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6iopyn5hbyxusogmmwjr5ci2q` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (5,'Bánh ngọt'),(2,'Cơm'),(6,'Đồ uống'),(1,'Gà rán'),(7,'Hamburger'),(3,'Pizza'),(4,'Salad');
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `discounted_price` double NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `original_price` double NOT NULL,
  `status` varchar(255) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `product_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  KEY `FKrv6og3b2qlahvka0bxn7btyqd` (`product_type_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `FKrv6og3b2qlahvka0bxn7btyqd` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (27,'Cơm vàng giòn rụm kết hợp cùng gà xối mỡ béo ngậy, món ăn truyền thống đậm đà hương vị Việt.','Cơm Gà Xối Mỡ',10,45000,'http://localhost:5173/images/Product/com-ga-xoi-mo.jpg',50000,'AVAILABLE',11,2),(28,'Gà rán giòn tan phủ lớp phô mai béo ngậy, món ăn vặt yêu thích của mọi lứa tuổi.','Gà Rán Phô Mai',13.33,65000,'http://localhost:5173/images/Product/ga-ran-pho-mai.jpg',75000,'AVAILABLE',11,1),(29,'Một sự kết hợp tinh tế giữa chocolate đắng nhẹ và matcha thanh mát, bánh mousse mềm mịn tan chảy trong miệng.','Chocolate matcha cake mousse',10.1,89000,'http://localhost:5173/images/Product/banh-ngot.png',99000,'AVAILABLE',11,5),(30,'Pizza nóng hổi với lớp phô mai kéo sợi thơm lừng, tan chảy trong từng miếng cắn – lựa chọn hoàn hảo cho mọi bữa tiệc.','Pizza Phô Mai',13.33,130000,'http://localhost:5173/images/Product/pizza-pho-mai.jpg',150000,'AVAILABLE',10,3),(31,'Salad thanh mát với lát cá hồi tươi ngon, giàu dinh dưỡng, phù hợp cho người ăn kiêng hoặc yêu thích món nhẹ.','Salad Cá Hồi',17.65,70000,'http://localhost:5173/images/Product/salad-ca-hoi.jpg',85000,'AVAILABLE',8,4),(32,'Trà sữa đậm đà hòa quyện cùng trân châu dai giòn, thức uống yêu thích của giới trẻ mọi thời đại.','Trà Sữa Trân Châu',12.5,35000,'http://localhost:5173/images/Product/tra-sua.jpg',40000,'AVAILABLE',8,6),(33,'Topping hải sản tươi ngon phủ đầy lớp phô mai béo ngậy, đế bánh giòn rụm – món ăn không thể bỏ lỡ.','Pizza Hải Sản',28,135000,'http://localhost:5173/images/Product/pizza-hai-san.jpg',187500,'AVAILABLE',9,3),(34,'Bánh mì kẹp thịt gà chiên giòn, sốt đậm đà, rau tươi – bữa ăn nhanh đầy năng lượng và hương vị.','Hamburger Gà',12.73,48000,'http://localhost:5173/images/Product/hamburger-ga.jpg',55000,'AVAILABLE',9,7),(35,'Sườn nướng than hoa thơm lừng kết hợp cùng cơm trắng dẻo, đậm vị truyền thống Việt.','Cơm Sườn Nướng',15.71,59000,'http://localhost:5173/images/Product/com-suon-nuong.jpg',70000,'AVAILABLE',10,2),(37,'Thịt gà mềm ngọt thấm đẫm sốt cay kiểu Hàn, cay nồng quyến rũ đúng chuẩn vị xứ kim chi.','Gà Sốt Cay Hàn Quốc',18.82,69000,'http://localhost:5173/images/Product/ga-ran-sot-cay.jpg',85000,'AVAILABLE',9,1),(38,'Món salad thanh đạm với nhiều loại rau củ tươi giòn, cung cấp chất xơ và vitamin cho cơ thể.','Salad Rau Củ',24.62,49000,'http://localhost:5173/images/Product/salad-rau-cu.png',65000,'AVAILABLE',10,4),(44,'Vỏ bánh mềm, nhân kem vani mát lạnh, tan chảy trong miệng.','Bánh su kem',20,20000,'http://localhost:5173/images/Product/banh-su-kem.png',25000,'AVAILABLE',8,5),(45,'Vị trà thanh mát kết hợp với đào ngâm và hương cam sả dịu nhẹ','Trà Đào Cam Sả',10,27000,'http://localhost:5173/images/Product/tra_dao.jpg',30000,'AVAILABLE',10,6),(46,'Bánh mì mềm kẹp bò nướng, rau củ và phô mai tan chảy hấp dẫn.\n\n','Burger Bò Phô Mai',8.33,55000,'http://localhost:5173/images/Product/hamburger-bo-pho-mai.jpg',60000,'AVAILABLE',10,7),(47,'Rau xanh tươi trộn cùng ức gà áp chảo và sốt mè rang thơm béo.','Salad Ức Gà',10,45000,'http://localhost:5173/images/Product/salad_uc_ga.jpg',50000,'AVAILABLE',8,4),(48,'Cơm chiên vàng ươm cùng trứng, tôm, lạp xưởng, cà rốt và đậu hà lan, vị mặn ngọt hài hòa – chuẩn món Hoa quen thuộc.','Cơm Chiên Dương Châu',9.62,47000,'http://localhost:5173/images/Product/com-chien.jpg',52000,'AVAILABLE',8,2),(49,'hịt bò nướng mềm ngọt thấm vị sốt BBQ, ăn kèm đế pizza giòn nhẹ và lớp phô mai kéo sợi hấp dẫn – một lựa chọn đậm vị Mỹ.','Pizza Bò Nướng BBQ',3.64,159000,'http://localhost:5173/images/Product/pizza-bo.jpg',165000,'AVAILABLE',8,3),(50,'Lớp mousse mềm mịn tan ngay đầu lưỡi, đậm vị socola nguyên chất và không quá ngọt – món bánh lý tưởng cho người sành ăn.','Bánh Mousse Socola',15.79,32000,'http://localhost:5173/images/Product/banh-ngot-2.jpg',38000,'AVAILABLE',10,5);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`),
  CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (57,47),(22,48),(55,53),(25,58),(30,62),(56,77);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `delivery_address` varchar(255) NOT NULL,
  `delivery_date` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_status` enum('CANCELLED','CANCEL_REQUESTED','CONFIRMED','DELIVERED','PENDING','SHIPPING') NOT NULL,
  `payment_status` enum('FAILED','PAID','PENDING','REFUNDED') NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `total_amount` double NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (11,'dđ','2025-07-28 07:47:00.000000','ghdyu@gmail.com','abc 1238','2025-07-26 20:15:24.570660','SHIPPING','PAID','04875733478',105000,53),(22,'hjhhh','2025-08-01 01:25:00.000000','ghdyu@gmail.com','AA','2025-07-29 10:07:03.457288','SHIPPING','FAILED','04875733478',89000,53),(24,'koo','2025-07-30 10:14:00.000000','ghdyu@gmail.com','AA','2025-07-29 10:11:47.453657','CANCELLED','PENDING','04875733478',70000,53),(26,'uuuu',NULL,'ghdyu@gmail.com','AAA','2025-07-29 11:25:19.370181','CONFIRMED','PENDING','04875733478',89000,53),(32,'65u','2025-09-05 15:32:00.000000','ghdyu@gmail.com','AAA','2025-07-29 12:35:25.503713','DELIVERED','PAID','04875733478',65000,53),(36,'jtyt','2025-07-30 11:04:00.000000','ghdyu@gmail.com','AAA','2025-07-30 07:39:45.712796','SHIPPING','PENDING','04875733478',89000,53),(39,'gbyhuuhuby',NULL,'ghdyu@gmail.com','AAA','2025-07-30 08:06:02.456447','CANCELLED','PENDING','04875733478',623000,53),(42,'jiio',NULL,'ghdyu@gmail.com','AAA','2025-07-30 22:47:56.243742','CONFIRMED','PENDING','04875733478',418000,53),(43,'uii',NULL,'ghdyu@gmail.com','AAA','2025-07-30 23:02:44.288485','CONFIRMED','PENDING','04875733478',35000,53),(44,'ghh',NULL,'ghdyu@gmail.com','AAA','2025-08-01 01:08:10.044797','CONFIRMED','PENDING','04875733478',220000,53),(47,'HN','2025-08-01 21:25:00.000000','ghdyu@gmail.com','AAA','2025-08-01 19:21:02.946306','DELIVERED','PAID','04875733478',118000,53),(49,'HN',NULL,'ghdyu@gmail.com','AAA','2025-08-15 10:32:38.722770','CONFIRMED','PENDING','04875733478',89000,53),(50,'gh',NULL,'ghdyu@gmail.com','AAA','2025-08-15 12:01:05.837048','CONFIRMED','PAID','04875733478',59000,53),(51,'ry',NULL,'ghdyu@gmail.com','AAA','2025-08-15 12:01:21.293543','PENDING','PENDING','04875733478',48000,53),(52,'et4r',NULL,'ghdyu@gmail.com','AAA','2025-08-15 12:56:32.884919','CANCEL_REQUESTED','PENDING','04875733478',185000,53),(61,'TPHCM','2025-08-17 20:12:00.000000','ghdyu@gmail.com','AAA','2025-08-16 20:06:54.766198','SHIPPING','PENDING','04875733478',358000,53),(67,'Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang','2025-08-20 23:36:00.000000','ghdyu@gmail.com','AAA','2025-08-19 23:22:03.223258','SHIPPING','PENDING','04875733478',92000,53),(76,'Xã Phúc Lộc, Huyện Ba Bể, Tỉnh Bắc Kạn',NULL,'du@gmail.com','L M D','2025-09-03 14:42:34.648734','PENDING','PENDING','0937874645',27000,48),(77,'Xã Phúc Lộc, Huyện Ba Bể, Tỉnh Bắc Kạn',NULL,'nguyenvana@example.com','abcd','2025-09-03 21:05:59.745621','PENDING','PENDING','0476578687',27000,77),(78,'Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang',NULL,'nguyenvana@example.com','abcd','2025-09-04 15:18:59.760074','PENDING','PENDING','0476578687',65000,77),(79,'Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang',NULL,'ghdyu@gmail.com','AAA','2025-09-29 20:17:31.702451','PENDING','PENDING','04875733478',70000,53);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `subtotal` double NOT NULL,
  `unit_price` double NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbioxgbv59vetrxe0ejfubep1w` (`order_id`),
  KEY `FKocimc7dtr037rh4ls4l95nlfi` (`product_id`),
  CONSTRAINT `FKbioxgbv59vetrxe0ejfubep1w` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKocimc7dtr037rh4ls4l95nlfi` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (12,3,105000,35000,11,32),(25,1,89000,89000,22,29),(27,2,70000,35000,24,32),(31,1,89000,89000,26,29),(38,1,65000,65000,32,28),(43,1,89000,89000,36,29),(46,7,623000,89000,39,29),(49,3,195000,65000,42,28),(50,1,45000,45000,42,27),(51,2,178000,89000,42,29),(52,1,35000,35000,43,32),(53,2,90000,45000,44,47),(54,2,130000,65000,44,28),(57,2,118000,59000,47,35),(59,1,89000,89000,49,29),(60,1,59000,59000,50,35),(61,1,48000,48000,51,34),(62,1,89000,89000,52,29),(63,2,96000,48000,52,34),(77,1,70000,70000,61,31),(78,1,65000,65000,61,28),(79,1,48000,48000,61,34),(80,1,130000,130000,61,30),(81,1,45000,45000,61,27),(91,1,45000,45000,67,27),(92,1,47000,47000,67,48),(104,1,27000,27000,76,45),(105,1,27000,27000,77,45),(106,1,65000,65000,78,28),(107,1,70000,70000,79,31);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `subtotal` double NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpcttvuq4mxppo8sxggjtn5i2c` (`cart_id`),
  KEY `FK1re40cjegsfvw58xrkdp6bac6` (`product_id`),
  CONSTRAINT `FK1re40cjegsfvw58xrkdp6bac6` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKpcttvuq4mxppo8sxggjtn5i2c` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (42,1,35000,22,32),(46,3,195000,25,28),(54,1,89000,30,29),(77,1,159000,22,49),(78,1,32000,22,50),(129,3,267000,55,29),(130,1,135000,22,33),(131,1,69000,56,37),(132,1,35000,56,32),(133,1,55000,56,46),(134,1,45000,56,27),(135,1,65000,55,28),(136,1,48000,55,34),(137,1,135000,57,33);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_method` enum('CASH_ON_DELIVERY','ONLINE_PAYMENT') NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK8vo36cen604as7etdfwmyjsxt` (`order_id`),
  CONSTRAINT `FK81gagumt0r8y3rmudcgpbk42l` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (11,'ONLINE_PAYMENT',11),(22,'CASH_ON_DELIVERY',22),(24,'ONLINE_PAYMENT',24),(26,'CASH_ON_DELIVERY',26),(32,'CASH_ON_DELIVERY',32),(36,'CASH_ON_DELIVERY',36),(39,'CASH_ON_DELIVERY',39),(42,'CASH_ON_DELIVERY',42),(43,'CASH_ON_DELIVERY',43),(44,'CASH_ON_DELIVERY',44),(47,'CASH_ON_DELIVERY',47),(49,'CASH_ON_DELIVERY',49),(50,'ONLINE_PAYMENT',50),(51,'CASH_ON_DELIVERY',51),(52,'CASH_ON_DELIVERY',52),(61,'CASH_ON_DELIVERY',61),(67,'CASH_ON_DELIVERY',67),(76,'CASH_ON_DELIVERY',76),(77,'CASH_ON_DELIVERY',77),(78,'CASH_ON_DELIVERY',78),(79,'CASH_ON_DELIVERY',79);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `area` varchar(255) DEFAULT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `number_of_guests` int NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `special_requests` varchar(255) DEFAULT NULL,
  `status` enum('CANCELLED','CANCEL_REQUESTED','CONFIRMED','PENDING') NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeyog2oic85xg7hsu2je2lx3s6` (`user_id`),
  CONSTRAINT `FKeyog2oic85xg7hsu2je2lx3s6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (6,'outdoor','2025-08-02','08:58:00.000000','2025-07-27 07:58:50.674535','hhh',2,'0982376668','','CONFIRMED',53),(20,'vip','2025-08-01','08:54:00.000000','2025-07-30 08:49:33.805484','Nguyen Van A',1,'0982376667','','CANCELLED',53),(27,'indoor','2025-08-28','00:23:00.000000','2025-08-16 00:18:17.667265','hhh',1,'0982376667','','PENDING',53),(28,'indoor','2025-08-30','08:11:00.000000','2025-08-16 20:11:14.732277','Nguyen Van A',1,'0937874649','','CANCELLED',53),(29,'vip','2025-09-13','15:17:00.000000','2025-09-03 14:17:09.871165','Nguyen Van A',3,'0982376667','','CANCELLED',53),(30,'outdoor','2025-09-04','17:41:00.000000','2025-09-03 14:41:54.766611','hf',2,'0937874649','','CONFIRMED',48),(31,'indoor','2025-09-04','22:06:00.000000','2025-09-03 21:06:24.725593','hhh',4,'0982376667','','PENDING',77);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Khám phá các ưu đãi hấp dẫn với giảm giá lên đến 30% cho tất cả các combo gà rán trong tháng 7 này!','http://localhost:5173/images/News/news1.jpg','2025-07-24 08:24:50.092312','Ưu Đãi Đặc Biệt Tháng 7 Tại Foodee'),(2,'Tham gia sự kiện ẩm thực lớn nhất năm với các món ăn độc đáo từ foodee vào cuối tuần này.','http://localhost:5173/images/News/news2.jpg','2025-07-15 01:02:48.764920','Sự Kiện Ẩm Thực Tại TP.HCM'),(3,'Chào mừng chi nhánh mới tại Đà Nẵng với hàng loạt phần quà và ưu đãi dành cho khách hàng đầu tiên.','http://localhost:5173/images/News/news3.jpg','2025-07-15 01:03:52.487975','foodee Khai Trương Chi Nhánh Mới Tại Đà Nẵng'),(6,'Chào mừng foodee đến với Quận 5! Nhận ngay phiếu giảm giá 50K cho đơn hàng đầu tiên tại chi nhánh mới từ ngày 5/8 đến 15/8.','http://localhost:5173/images/News/news4.jpg','2025-07-31 00:40:30.678832','Khai Trương Chi Nhánh Mới Tại Quận 5'),(7,'Đặt món online cực tiện lợi và nhận ưu đãi freeship toàn quốc cho mọi đơn từ 99.000đ – áp dụng đến hết tháng 8!','http://localhost:5173/images/News/news7.png','2025-07-31 00:45:37.491183','Miễn Phí Vận Chuyển Cho Đơn Từ 99K'),(8,'Thứ 3 đặc biệt mỗi tuần – mua 1 pizza size M hoặc L, tặng ngay 1 pizza cùng loại! Áp dụng tại cửa hàng hoặc online.','http://localhost:5173/images/News/news6.png','2025-07-31 00:44:12.959751','Mua 1 Tặng 1 Pizza Thứ 3 Hàng Tuần');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


-- Dump completed on 2025-10-26 19:33:21
