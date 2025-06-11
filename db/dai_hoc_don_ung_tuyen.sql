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
-- Table structure for table `don_ung_tuyen`
--

DROP TABLE IF EXISTS `don_ung_tuyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `don_ung_tuyen` (
  `id_don` int NOT NULL AUTO_INCREMENT,
  `id_bai_dang` int NOT NULL,
  `id_sinh_vien` int NOT NULL,
  `ngay_ung_tuyen` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` enum('Chờ duyệt','Đã xem','Đã chấp nhận','Bị từ chối') NOT NULL DEFAULT 'Chờ duyệt',
  `duong_dan_cv` varchar(255) DEFAULT NULL,
  `ngay_phan_hoi` timestamp NULL DEFAULT NULL,
  `id_nha_tuyen_dung` int DEFAULT NULL,
  PRIMARY KEY (`id_don`),
  KEY `id_bai_dang` (`id_bai_dang`),
  KEY `id_sinh_vien` (`id_sinh_vien`),
  KEY `FK7xli3i37swdjgeo8sx8dpd489` (`id_nha_tuyen_dung`),
  CONSTRAINT `don_ung_tuyen_ibfk_1` FOREIGN KEY (`id_bai_dang`) REFERENCES `bai_dang_tuyen_dung` (`id_bai_dang`) ON DELETE CASCADE,
  CONSTRAINT `don_ung_tuyen_ibfk_2` FOREIGN KEY (`id_sinh_vien`) REFERENCES `sinh_vien` (`id_sinh_vien`) ON DELETE CASCADE,
  CONSTRAINT `FK7xli3i37swdjgeo8sx8dpd489` FOREIGN KEY (`id_nha_tuyen_dung`) REFERENCES `nha_tuyen_dung` (`id_nha_tuyen_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_ung_tuyen`
--

LOCK TABLES `don_ung_tuyen` WRITE;
/*!40000 ALTER TABLE `don_ung_tuyen` DISABLE KEYS */;
INSERT INTO `don_ung_tuyen` VALUES (2,10,10,'2025-04-26 13:33:09','Đã chấp nhận',NULL,'2025-04-29 14:20:58',5),(3,11,15,'2025-04-26 14:04:50','Bị từ chối',NULL,'2025-05-10 11:27:33',4),(5,12,15,'2025-04-27 18:31:22','Chờ duyệt',NULL,NULL,5),(6,9,10,'2025-04-29 16:05:44','Đã chấp nhận',NULL,'2025-04-29 16:06:09',4),(9,12,10,'2025-05-01 08:36:09','Bị từ chối','cv_10_1746088569118_2.pdf','2025-05-01 13:47:45',5),(10,10,15,'2025-05-01 10:10:03','Đã chấp nhận','cv_15_1746094203387_3.pdf','2025-05-01 13:30:34',5),(11,11,25,'2025-05-10 09:54:35','Đã chấp nhận','cv_25_1746870875298_2.pdf','2025-05-10 14:05:58',4),(12,10,25,'2025-05-10 17:10:00','Bị từ chối','cv_25_1746897000330_2.pdf','2025-05-13 18:32:26',5),(13,12,25,'2025-05-10 17:10:09','Chờ duyệt','cv_25_1746897009037_2.pdf',NULL,5),(14,4,15,'2025-05-15 15:15:01','Chờ duyệt','cv_15_1747322101432_dat.pdf',NULL,7),(15,9,15,'2025-05-15 15:15:08','Chờ duyệt','cv_15_1747322108930_dat.pdf',NULL,4);
/*!40000 ALTER TABLE `don_ung_tuyen` ENABLE KEYS */;
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
