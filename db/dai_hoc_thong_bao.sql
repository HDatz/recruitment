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
-- Table structure for table `thong_bao`
--

DROP TABLE IF EXISTS `thong_bao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thong_bao` (
  `id_thong_bao` int NOT NULL AUTO_INCREMENT,
  `id_nguoi_nhan` int NOT NULL,
  `loai_nguoi_nhan` enum('SINH_VIEN','NHA_TUYEN_DUNG','QUAN_TRI_VIEN') DEFAULT NULL,
  `noi_dung` text NOT NULL,
  `da_xem` tinyint(1) DEFAULT '0',
  `ngay_gui` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_thong_bao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thong_bao`
--

LOCK TABLES `thong_bao` WRITE;
/*!40000 ALTER TABLE `thong_bao` DISABLE KEYS */;
INSERT INTO `thong_bao` VALUES (1,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được duyệt.',1,'2025-04-18 17:36:01'),(2,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã bị từ chối.',1,'2025-04-20 18:46:54'),(3,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được đưa lại trạng thái chờ duyệt.',1,'2025-04-20 18:46:58'),(4,4,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được duyệt.',1,'2025-04-22 12:42:55'),(5,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã bị từ chối.',1,'2025-04-22 12:43:32'),(6,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được duyệt.',1,'2025-04-24 08:17:10'),(7,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã bị từ chối.',1,'2025-04-24 08:17:20'),(8,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được duyệt.',1,'2025-04-24 08:17:56'),(9,5,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được duyệt.',1,'2025-04-26 08:54:54'),(10,4,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được duyệt.',1,'2025-04-26 11:52:53'),(12,5,'NHA_TUYEN_DUNG','Sinh viên Lê Quốc Đạt vừa ứng tuyển vào bài đăng: Ruby',1,'2025-04-26 13:33:09'),(13,4,'NHA_TUYEN_DUNG','Sinh viên Hoàng Văn Đạt vừa ứng tuyển vào bài đăng: Thực tập sinh lập trình viên di động',1,'2025-04-26 14:04:51'),(14,4,'NHA_TUYEN_DUNG','Sinh viên Hoàng Văn Đạt vừa ứng tuyển vào bài đăng: Python',1,'2025-04-27 10:27:58'),(15,5,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được duyệt.',1,'2025-04-27 18:30:56'),(16,5,'NHA_TUYEN_DUNG','Sinh viên Hoàng Văn Đạt vừa ứng tuyển vào bài đăng: THỰC TẬP SINH CONTENT CREATOR – Mảng Máy Tính',1,'2025-04-27 18:31:22'),(17,10,'SINH_VIEN','Bạn đã được chấp nhận vị trí: Ruby',1,'2025-04-29 14:21:02'),(18,4,'NHA_TUYEN_DUNG','Sinh viên Lê Quốc Đạt vừa ứng tuyển vào bài đăng: Python',1,'2025-04-29 16:05:44'),(19,10,'SINH_VIEN','Bạn đã được chấp nhận vị trí: Python',1,'2025-04-29 16:06:13'),(20,5,'NHA_TUYEN_DUNG','Sinh viên Đỗ Thị Mao vừa ứng tuyển vào bài đăng: Ruby',1,'2025-04-30 10:40:57'),(21,4,'NHA_TUYEN_DUNG','Sinh viên Lê Quốc Đạt vừa ứng tuyển vào bài đăng: Thực tập sinh lập trình viên di động',1,'2025-05-01 07:41:31'),(25,15,'SINH_VIEN','Bạn đã được chấp nhận vị trí: Ruby',1,'2025-05-01 13:30:37'),(27,17,'SINH_VIEN','Đơn ứng tuyển của bạn đã bị từ chối.',0,'2025-05-01 13:46:45'),(28,10,'SINH_VIEN','Đơn ứng tuyển của bạn đã bị từ chối.',1,'2025-05-01 13:47:48'),(29,15,'SINH_VIEN','Đơn ứng tuyển của bạn đã bị từ chối.',1,'2025-05-10 11:27:37'),(30,4,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được duyệt.',1,'2025-05-10 13:25:47'),(31,4,'NHA_TUYEN_DUNG','Bài đăng của bạn đã bị từ chối.',1,'2025-05-10 13:27:17'),(32,25,'SINH_VIEN','Bạn đã được chấp nhận vị trí: Thực tập sinh lập trình viên di động',1,'2025-05-10 14:06:02'),(33,25,'SINH_VIEN','Đơn ứng tuyển của bạn đã bị từ chối.',1,'2025-05-13 18:32:29'),(34,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã bị từ chối.',1,'2025-05-14 17:24:01'),(35,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được đưa lại trạng thái chờ duyệt.',1,'2025-05-14 17:30:37'),(36,7,'NHA_TUYEN_DUNG','Bài đăng của bạn đã được duyệt.',1,'2025-05-14 17:31:30');
/*!40000 ALTER TABLE `thong_bao` ENABLE KEYS */;
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
