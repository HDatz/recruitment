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
-- Table structure for table `bai_dang_tuyen_dung`
--

DROP TABLE IF EXISTS `bai_dang_tuyen_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_dang_tuyen_dung` (
  `id_bai_dang` int NOT NULL AUTO_INCREMENT,
  `id_nha_tuyen_dung` int NOT NULL,
  `tieu_de` varchar(100) NOT NULL,
  `mo_ta` text NOT NULL,
  `dia_diem` varchar(100) DEFAULT NULL,
  `loai_cong_viec` enum('TOAN_THOI_GIAN','BAN_THOI_GIAN','THUC_TAP') NOT NULL,
  `muc_luong` varchar(50) DEFAULT NULL,
  `yeu_cau` text,
  `ngay_dang` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `han_nop` datetime(6) DEFAULT NULL,
  `trang_thai` enum('CHO_DUYET','DA_DUYET','TU_CHOI') NOT NULL,
  `so_luong_tuyen` int NOT NULL DEFAULT '1',
  `banner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_bai_dang`),
  KEY `id_nha_tuyen_dung` (`id_nha_tuyen_dung`),
  KEY `idx_tieu_de` (`tieu_de`),
  KEY `idx_dia_diem` (`dia_diem`),
  CONSTRAINT `bai_dang_tuyen_dung_ibfk_1` FOREIGN KEY (`id_nha_tuyen_dung`) REFERENCES `nha_tuyen_dung` (`id_nha_tuyen_dung`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_dang_tuyen_dung`
--

LOCK TABLES `bai_dang_tuyen_dung` WRITE;
/*!40000 ALTER TABLE `bai_dang_tuyen_dung` DISABLE KEYS */;
INSERT INTO `bai_dang_tuyen_dung` VALUES (4,7,'Java ','A','hà nội','BAN_THOI_GIAN','2.000.00','A','2025-04-17 15:31:13','2025-01-01 07:00:00.000000','DA_DUYET',36,'baidang__1747243881053_images.png'),(5,4,'HTML CSS ','được làm việc trong môi trg chuyên nghiệp','Thanh Xuân,Hà Nội','TOAN_THOI_GIAN','3.000.000','Sinh Viên Cuối Năm 3 Hoặc Năm 4, Hoặc Đã Ra trg','2025-04-18 15:34:27','2025-11-30 07:00:00.000000','CHO_DUYET',15,'baidang__1746884274945_html.jpg'),(7,7,'PHP','A','29 Liễu Giai, Ba Đình, Hà Nội ','BAN_THOI_GIAN','5tr đến 15tr','A','2025-04-21 16:10:26','2025-06-30 07:00:00.000000','TU_CHOI',10,'baidang__1745251825623_1.png'),(9,4,'Python','B','29 Đồng Xuân, Hoàn Kiếm, Hà Nội ','TOAN_THOI_GIAN','6tr - 10tr','C','2025-04-22 12:41:25','2003-11-30 07:00:00.000000','DA_DUYET',10,'baidang__1745325684685_py.png'),(10,5,'Ruby','Phát triển và bảo trì ứng dụng web sử dụng Ruby on Rails.\r\nThiết kế và triển khai API.\r\nTối ưu hóa hiệu suất ứng dụng.\r\nHợp tác với nhóm thiết kế và phát triển để cải thiện trải nghiệm người dùng.\r\nThực hiện kiểm tra và sửa lỗi code.','5, Tình Quang, P. Giang Biên, Q. Long Biên, Tp. Hà Nội','THUC_TAP','3 - 5 triệu','Kinh nghiệm làm việc với Ruby và Ruby on Rails.\r\nHiểu biết về cơ sở dữ liệu (MySQL, PostgreSQL).\r\nKỹ năng lập trình hướng đối tượng.\r\nKhả năng làm việc nhóm và giao tiếp tốt.','2025-04-22 13:32:24','2025-06-20 07:00:00.000000','DA_DUYET',8,'baidang__1745328743535_ruby.png'),(11,4,'Thực tập sinh lập trình viên di động','Hỗ trợ phát triển ứng dụng di động trên nền tảng iOS hoặc Android.\r\nTham gia vào quá trình thiết kế và triển khai tính năng mới.\r\nThực hiện kiểm tra và sửa lỗi ứng dụng.\r\nHọc hỏi và áp dụng các công nghệ di động mới nhất.','29 Đồng Xuân, Hoàn Kiếm, Hà Nội ','TOAN_THOI_GIAN','5tr đến 15tr','Kiến thức cơ bản về lập trình (Swift cho iOS hoặc Kotlin cho Android).\r\nĐam mê công nghệ di động và sẵn sàng học hỏi.\r\nKỹ năng làm việc nhóm và giao tiếp tốt.','2025-04-22 16:15:15','2026-02-20 07:00:00.000000','DA_DUYET',8,'baidang__1745338515359_mobile.png'),(12,5,'THỰC TẬP SINH CONTENT CREATOR','Lập kế hoạch, lên ý tưởng, sáng tạo nội dung & kịch bản chụp ảnh, quay video sản phẩm.\r\n\r\nViết bài content và tạo video ngắn (sử dụng các app như Capcut, Canva) về sản phẩm của công ty.\r\n\r\nĐăng tải nội dung trên Facebook, TikTok, YouTube, Instagram, Website… để tăng tương tác và nhận diện thương hiệu.\r\n\r\nCập nhật và ứng dụng các trend mới, nội dung xu hướng vào công việc.',' 1 Hùng Vương, Điện Biên, Ba Đình, Hà Nội','TOAN_THOI_GIAN',' từ 5.000.000đ - 7.000.000đ','Yêu cầu ứng viên\r\n\r\nKhông yêu cầu kinh nghiệm – chỉ cần bạn đam mê sáng tạo!\r\n\r\nLà sinh viên hoặc đã tốt nghiệp ngành Marketing hoặc các ngành liên quan.\r\n\r\nCó thể làm toàn thời gian / bán thời gian\r\n\r\nGiao tiếp tốt, nhanh nhẹn, hòa đồng, có tư duy sáng tạo.\r\n\r\nBiết viết content thu hút, nắm bắt trend nhanh, hiểu tâm lý khách hàng.\r\n\r\nAm hiểu về các nền tảng mạng xã hội và yêu thích công nghệ là một lợi thế.','2025-04-27 18:30:44','2026-05-30 07:00:00.000000','DA_DUYET',9,'baidang__1745778644432_mangmaytinh.jpg'),(14,8,'a','A','Hà Nội','BAN_THOI_GIAN','6-7tr','A','2025-05-12 17:32:38','2025-11-30 07:00:00.000000','CHO_DUYET',9,'baidang__1747071157981_vmo.jpg');
/*!40000 ALTER TABLE `bai_dang_tuyen_dung` ENABLE KEYS */;
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
