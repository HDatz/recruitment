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
-- Table structure for table `nha_tuyen_dung`
--

DROP TABLE IF EXISTS `nha_tuyen_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nha_tuyen_dung` (
  `id_nha_tuyen_dung` int NOT NULL AUTO_INCREMENT,
  `ten_cong_ty` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `linh_vuc` varchar(255) DEFAULT NULL,
  `trang_web` varchar(255) DEFAULT NULL,
  `mo_ta_cong_ty` text,
  `avatar` varchar(255) DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` enum('ROLE_NHATUYENDUNG') NOT NULL DEFAULT 'ROLE_NHATUYENDUNG',
  PRIMARY KEY (`id_nha_tuyen_dung`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `so_dien_thoai` (`so_dien_thoai`),
  KEY `idx_email_nha_tuyen_dung` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nha_tuyen_dung`
--

LOCK TABLES `nha_tuyen_dung` WRITE;
/*!40000 ALTER TABLE `nha_tuyen_dung` DISABLE KEYS */;
INSERT INTO `nha_tuyen_dung` VALUES (2,'IPOS','iposvn@gmail.com','$2a$10$hEqa30UOtTZjYWWe66Xk4.3LDXK94ZxXOZOFhI1f/AmBg27KAKsTy','0914162689','Hà Nội','CNTT','https://ipos.vn/','iPOS.vn là công ty công nghệ hàng đầu tại Việt Nam chuyên cung cấp giải pháp phần mềm quản lý chuyên biệt cho ngành F&B (Food & Beverage). Với hơn một thập kỷ phát triển, iPOS.vn đã trở thành người bạn đồng hành đáng tin cậy của hơn 30.000 nhà hàng, quán cafe, trà sữa, quán ăn nhanh và chuỗi cửa hàng F&B trên toàn quốc.\r\n\r\n? Sứ mệnh\r\niPOS.vn ra đời với mục tiêu giúp các doanh nghiệp F&B vận hành hiệu quả hơn nhờ vào sức mạnh công nghệ. Chúng tôi cam kết tạo ra những giải pháp thông minh, tối ưu quy trình kinh doanh, nâng cao trải nghiệm khách hàng và tăng trưởng doanh thu cho các mô hình kinh doanh F&B – từ nhỏ lẻ cho đến chuỗi lớn.','nhatuyendung_iposvn@gmail.com_1747156892887_maxresdefault.jpg',NULL,'ROLE_NHATUYENDUNG'),(4,'VietComBank','vietcombank@gmail.com','$2a$10$Q7bWBVSSh6mS7sFOxcQA1Ozh3iDSul.4SIrX8IbCDnCkMF5eCB5cu','098765251','Hải Phòng','CNTT','https://www.vietcombank.com.vn/','Ngân hàng TMCP Ngoại thương Việt Nam (Vietcombank) là một trong những ngân hàng thương mại lớn nhất và uy tín nhất tại Việt Nam, được thành lập vào năm 1963. Với hơn 60 năm phát triển, Vietcombank không ngừng đổi mới và tiên phong trong việc hiện đại hóa hệ thống ngân hàng, đóng vai trò chủ lực trong lĩnh vực tài chính – ngân hàng quốc gia. Hiện tại, Vietcombank sở hữu mạng lưới gần 700 chi nhánh và phòng giao dịch trong và ngoài nước, cùng hàng nghìn cây ATM và điểm giao dịch POS trên toàn quốc. Ngoài ra, ngân hàng còn có sự hiện diện quốc tế tại các nước như Lào, Campuchia, Singapore và liên kết với hơn 1.300 ngân hàng đại lý tại hơn 100 quốc gia. Vietcombank cung cấp đầy đủ các dịch vụ tài chính hiện đại như: tài khoản thanh toán, thẻ nội địa và quốc tế, vay tiêu dùng, ngân hàng số, ngoại hối, chuyển tiền quốc tế và tài trợ thương mại. Với uy tín hàng đầu và những giải thưởng danh giá trong nước và quốc tế, Vietcombank luôn giữ vững vị thế là ngân hàng dẫn đầu trong việc kiến tạo giá trị cho khách hàng, cổ đông và cộng đồng.','nhatuyendung_vietcombank@gmail.com_1747156905464_Vietcombank.jpg',NULL,'ROLE_NHATUYENDUNG'),(5,'Viettel Company','viettel@gmail.com','$2a$10$5yJ53sKrw87CQ0ZRGsdnGeOQcbndyYlutYfbZk3ZrSGA1dnmwrUGS','09871234123','Số 61 Cửa Đông, Hoàn Kiếm, Hà Nội','CNTT','https://vietteltelecom.vn/vx/','Đầu những năm 2000, khi mật độ điện thoại di động của Việt Nam chỉ\r\nchiếm 5%, Viettel xuất hiện với khát vọng phổ cập dịch vụ di động,\r\ncùng lời hứa sẽ luôn sáng tạo vì con người, để cuộc sống của người dân\r\nViệt Nam ngày càng tốt hơn.\r\n20 năm sau, Việt Nam đã có mật độ kết nối điện thoại lên tới 130%.\r\nGần 60% khách hàng của Viettel đã sử dụng điện thoại thông minh\r\nkết nối Internet băng rộng 4G. Sứ mệnh phổ cập viễn thông đến người dân\r\nViệt Nam của Viettel đã hoàn thành!\r\nVượt ra khỏi biên giới đất nước, Viettel đặt dấu chân của mình lên khắp\r\nChâu Á, Châu Mỹ, Châu Phi, ghi danh Việt Nam trên bản đồ viễn thông\r\nthế giới. Không dừng ở đó, Viettel mở rộng lĩnh vực sản xuất kinh doanh,\r\nvươn mình trở thành Tập đoàn công nghiệp – công nghệ toàn cầu.\r\nỞ bất cứ lĩnh vực nào và tại bất cứ nơi đâu, lời hứa Sáng tạo vì con người\r\nsẽ vẫn còn mãi!\r\nMột Viettel sáng tạo bằng trái tim sẻ chia, thấu hiểu giờ đây tiếp tục được\r\nmỗi người Viettel đặt trong niềm khát khao làm chủ công nghệ cao, đưa\r\ncông nghệ số vào mọi lĩnh vực của đời sống xã hội, làm cho cuộc sống tốt\r\nđẹp hơn mỗi ngày, cộng hưởng để cùng dựng nên kỷ nguyên số. ','nhatuyendung_viettel@gmail.com_vt.jpg',NULL,'ROLE_NHATUYENDUNG'),(7,'Vin Group','vin@gmail.com','$2a$10$7qwcl8qqgBQV5nFfDUhCh.FZi6zUTzKQToiSvVq0c9XWmSTzMJJk6','099999231111','Số 7, đường Bằng Lăng 1, Vinhomes Riverside, phường Việt Hưng, quận Long Biên, Hà Nội','CNTT','https://www.vingroup.net/','','nhatuyendung_vin@gmail.com_Vingroup_logo.svg.png',NULL,'ROLE_NHATUYENDUNG'),(8,'VMO','vmo@gmail.com','$2a$10$8ZVhmBH/UQYN2Mf4jZcnnepn3jJsiFTLoxvKgarGf66wHNI4sckdy','03219999993','Toà nhà TTC, 19 P. Duy Tân, Dịch Vọng Hậu, Nam Từ Liêm, Hà Nội','CNTT','https://vmogroup.com','Founded in 2012, VMO Holdings (VMO) is among the Top 10 leading IT companies in Vietnam, with 11 offices worldwide and a team of over 1,300 employees. VMO is proud to be a trusted partner of major global enterprises, including Fortune 500 corporations.\r\nOur business lines span Business Consulting, IT Outsourcing, Research & Education, helping enterprises accelerate innovation and optimize operations. VMO delivers IT outsourcing, IT consulting, and DX consulting, helping clients bring their innovative ideas to life efficiently in all sectors: Healthcare, Logistics, Banking, Financial Services & Insurance, Manufacturing, Lifescience, Entertainment. With a strong vision for global expansion, VMO is actively investing in AI, Data, IOT, Cloud, Chip Design.','nhatuyendung_vmo@gmail.com_vmo.jpg',NULL,'ROLE_NHATUYENDUNG');
/*!40000 ALTER TABLE `nha_tuyen_dung` ENABLE KEYS */;
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
