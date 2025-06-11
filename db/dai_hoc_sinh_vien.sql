-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: dai_hoc
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `sinh_vien`
--

DROP TABLE IF EXISTS `sinh_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinh_vien` (
  `id_sinh_vien` int NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `nganh_hoc` varchar(255) DEFAULT NULL,
  `nam_tot_nghiep` int DEFAULT NULL,
  `gioi_thieu` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` enum('ROLE_SINHVIEN') NOT NULL DEFAULT 'ROLE_SINHVIEN',
  PRIMARY KEY (`id_sinh_vien`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `so_dien_thoai` (`so_dien_thoai`),
  KEY `idx_email_sinh_vien` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinh_vien`
--

LOCK TABLES `sinh_vien` WRITE;
/*!40000 ALTER TABLE `sinh_vien` DISABLE KEYS */;
INSERT INTO `sinh_vien` VALUES (10,'Lê Quốc Đạt','hungajh68@gmail.com','$2a$10$q9/SrpQacPwoyPDjjqykPu6/BJyMLetO1kEarL5YAKXg3L4ez9SqS','0974980765','Hải phòng','2003-01-19','CNTT',2025,'Đến Từ Hải Phòng Gốc Gia Lâm','sinhvien_hungajh68@gmail.com_1746547688210_sinhvien_anh@gmail.com_1743706380785_sv.webp','2025-03-18 14:53:34','ROLE_SINHVIEN'),(14,'Vũ Hoàng Chương','chuong@gmail.com','$2a$10$7.j/qBBkXs5a13vERG3mIuM1BCTJsGZx0m0pN6QJI6hSjHhWb6nam','0976987234','Hà Nội','2003-10-30','CNTT',2024,'Đến từ chu xá\n','sinhvien_chuong@gmail.com_1746547585271_sinhvien_chuong@gmail.com_1742753981835_chuong.jpg','2025-03-23 09:26:44','ROLE_SINHVIEN'),(15,'Hoàng Văn Đạt','dathoang@gmail.com','$2a$10$qICuR4Tkrka5Hbh1KAvqB.O.fUTLio.WqK.9efF2Lgl8Hi88YV3UK','0974342132','Hà Nội','2003-11-30',NULL,NULL,NULL,'sinhvien_dathoang@gmail.com_1.jpg','2025-03-23 09:27:37','ROLE_SINHVIEN'),(16,'Trần Hải Long','long@gmail.com','$2a$10$pQOcw7U2167mBzGC7oB2n.TX/GyrGU4uADAqDqZQnMdzCBR7RlSp.','09876453123',NULL,NULL,NULL,NULL,NULL,'sinhvien_long@gmail.com_Long Son.png','2025-03-23 09:31:39','ROLE_SINHVIEN'),(17,'Đỗ Thị Mao','mai@gmail.com','$2a$10$PR7VC/K2TdTo63mV.h3JPu5nUWKFzhXmOJ2LSHxEI0BEV4fP6Uu52','0367986234','Hà Nội','2003-11-11','CNTT',2025,NULL,'sinhvien_mai@gmail.com_1742754036688_2.jpg','2025-03-23 09:32:47','ROLE_SINHVIEN'),(18,'Nguyễn Thi Mơ','moabc@gmail.com','$2a$10$NG/xEByQORDBD4bu1nZQbewpOu8lmRArvA.G6UuRqcqshjxCgakh.','0367986253','','2003-03-12','DuLich',NULL,NULL,NULL,'2025-03-23 09:33:25','ROLE_SINHVIEN'),(19,'Lê Đình Mạnh','manh@gmail.com','$2a$10$ROVeNN2Ze8xKLoGusY8USeo3uS7mvkRcIcG9ww09qiYo1pAvN2Cga','0321456897','','1997-02-08',NULL,NULL,NULL,'sinhvien_manh@gmail.com_1742753893449_nhon.png','2025-03-23 13:28:13','ROLE_SINHVIEN'),(21,'Nguyễn Thi Trang','trang@gmail.com','$2a$10$sa60uRHMWAlgTUAe49UsZ.us0Lz34z1Czq27QcEwGPqlq/NFInYfa','0334567819','Hà Nội',NULL,'',NULL,NULL,'sinhvien_trang@gmail.com_1744648344926_nhung-luu-y-khi-di-chup-anh-the-hoc-sinh-sinh-vien-7-0c8056ae-0cd9-4fe7-afba-6d568dbf322d.webp','2025-03-23 13:44:30','ROLE_SINHVIEN'),(22,'Nguyễn Ngọc Phương','phuong@gmail.com','$2a$10$qSfJMRo1vff2kgKzeZR35.s5jksbNAO4LK1Lwd3vHODkFWwrCUWpO','03333333875','Hà Nội',NULL,'DLHL',NULL,NULL,'sinhvien_phuong@gmail.com_np.png','2025-03-23 14:05:34','ROLE_SINHVIEN'),(23,'Nguyễn Thị Nguyệt Ánh','anh@gmail.com','$2a$10$WdkWSaNJN/5HPwfpfuwSXu.aOGaJdpk1ECgrFQ6sblXhFKUYZ1VkS','03324412412','','2000-03-01','',NULL,NULL,'sinhvien_anh@gmail.com_1743706380785_sv.webp','2025-03-23 16:01:37','ROLE_SINHVIEN'),(24,'Lê Hương Mai','mai123@gmail.com','$2a$10$KF8s7YRPXw7bq2aW5SqrKO8paWdULgpRxEGTRh3DkNX.ej6Mx0awq','09769872123',NULL,NULL,NULL,NULL,NULL,'sinhvien_mai123@gmail.com_cut.png','2025-03-23 18:21:20','ROLE_SINHVIEN'),(25,'Vũ Tiến Chung','chungkk@gmail.com','$2a$10$xlW7cC3/hB4MIs8b0t7uhuG4cOJz5Kxgediz0Nq0RK1X9zYtJtLC6','0978112312','Hà Nội','2003-11-30','CNTT',2025,'Đến Từ Chu Xá Gia Lâm Hà Nội','sinhvien_chungkk@gmail.com_1746553960834_1.png','2025-05-06 16:34:21','ROLE_SINHVIEN');
/*!40000 ALTER TABLE `sinh_vien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27 11:07:37
