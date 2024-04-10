CREATE DATABASE  IF NOT EXISTS `ace_coffee_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ace_coffee_db`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ace_coffee_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin_account`
--

DROP TABLE IF EXISTS `admin_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_account` (
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `type` varchar(20) NOT NULL,
  `first_login` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_account`
--

LOCK TABLES `admin_account` WRITE;
/*!40000 ALTER TABLE `admin_account` DISABLE KEYS */;
INSERT INTO `admin_account` VALUES ('store_admin','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=','store',0),('website_admin','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=','website',0);
/*!40000 ALTER TABLE `admin_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` varchar(20) NOT NULL,
  `title` text NOT NULL,
  `link_to` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES ('00lbbvxikjvsazy15bru','Banner 1','http://localhost:3000/product/00la543v5z49t3ejn0q5','czdliejsoqo5stpcparb'),('00lbxzlayibewqg2abjd','Banner 3','http://localhost:3000/product/00la546h0zyecqs8ride','tlpglg8bz3vkvqjl9m77'),('00lclnomqkb5f1wtwbhf','Banner 4','http://localhost:3000/news/00lbxvysoe3igfdgiezk','u3fzlonin9j4dv4cvr88');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `opened_at` time DEFAULT NULL,
  `closed_at` time DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `longitude` varchar(30) DEFAULT NULL,
  `latitude` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('00la9jo5qca2zlkkqc49','Trần Hưng Đạo 2','0123456789','683 Trần Hưng Đạo, Phường 1, Quận 5, Thành phố Hồ Chí Minh','07:00:00','24:00:00','2022-11-09 21:17:46','','10.7558343'),('00la9k7cepxxo2zdtlsy','Cao Lo','0123456789','Trường Đại học Công nghệ Sài Gòn, 180, Đường Cao Lỗ, Phường 4, Thành phố Hồ Chí Minh, 73009, Việt Nam','10:03:00','23:03:00','2022-11-09 21:17:54','106.67792639790619','10.7379821'),('00la9oqom7nzodupqegb','Trần Hưng Đạo 1','0123456789','657 Trần Hưng Đạo, Phường 1, Quận 5, Thành phố Hồ Chí Minh','07:00:00','20:00:00','2022-11-16 21:16:49','106.6843129','10.7560029'),('00laan55n86pyi928j7j','Trần Bình Trọng','0123456789','TPBank LiveBank Trần Bình Trọng Quận 5, 74 Trần Bình Trọng, Phường 1, Quận 5, Hồ Chí Minh','07:00:00','20:00:00','2022-11-16 21:16:54','106.681974','10.7544957'),('00laerkzo169m8cdfk34','Trần Phú','0123456789','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh','07:00:00','20:00:00',NULL,'106.6774271','10.7606234'),('00lajqa04xl91iiiiugt','Trần Hưng Đạo','0123456789','683 Trần Hưng Đạo, Phường 1, Quận 5, Thành phố Hồ Chí Minh','07:00:00','20:00:00',NULL,'106.6838454','10.7558343'),('00lbbxmaknw3ohobcn2d','test ','0123456782','Quận 8, Hồ Chí Minh','07:00:00','10:00:00','2022-12-06 15:01:29','106.66585882900006','10.740407144000073'),('00lbbxo93zz4fnc3w85f','Quận 8','0123456787','195 Đ. Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh 700000','07:00:00','20:00:00',NULL,'106.6790114','10.7383871'),('00lc8ju80r0e2xv384fs','Test','0123456172','Ký Túc Xá Đại Học Y Dược, Nguyễn Thái Học, Phạm Ngũ Lão, Quận 1, Hồ Chí Minh','07:00:00','20:00:00','2022-12-29 11:52:09','106.6946817','10.7686946'),('00lch7b3pfjmv9jm15nr','Test','0123456788','Quận Sơn Trà, Đà Nẵng','07:00:00','20:00:00','2023-01-04 12:10:43','108.23421054600004','16.06105748400006'),('00lch7cn14zg3r5ctvj1','Test','0123456789','Shop Trannghihoai19822, 1561 Lê Văn Lương, Nhơn Đức, Nhà Bè, Hồ Chí Minh','07:00:00','20:00:00','2023-01-04 12:15:07','106.70117920300004','10.684450531000039'),('00lch7co9l3576rjgzb5','Test','0123456789','Shop Trannghihoai19822, 1561 Lê Văn Lương, Nhơn Đức, Nhà Bè, Hồ Chí Minh','07:00:00','20:00:00','2023-01-04 12:14:56','106.70117920300004','10.684450531000039'),('00lch7coysu0mk951jgg','Test','0123456789','Shop Trannghihoai19822, 1561 Lê Văn Lương, Nhơn Đức, Nhà Bè, Hồ Chí Minh','07:00:00','20:00:00','2023-01-04 12:11:56','106.70117920300004','10.684450531000039'),('00lcq7bve5y2rpnvi2ar','Pham Hung','0121218889','Sữa chua Trân châu Hạ Long, 179A Phạm Hùng, Phường 4, Quận 8, Hồ Chí Minh','07:00:00','20:00:00','2023-01-10 19:24:01','106.66905121800005','10.741563241000051'),('00libgsq8ts5tu2e7q2k','Bình Thạnh','0987210072','1 Bình Thành, Bình Hưng Hòa B, Bình Tân, Hồ Chí Minh','07:00:00','20:00:00','2023-05-31 16:26:18','106.58673752100009','10.799652581000032'),('00libi93diww6a6gonhf','Bình Thạnh','0982100821','1 Bình Thành, Bình Hưng Hòa B, Bình Tân, Hồ Chí Minh','07:00:00','20:00:00',NULL,'106.58673752100009','10.799652581000032');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_detail` (
  `product_price_id` varchar(20) NOT NULL,
  `user_account_id` varchar(20) NOT NULL,
  `quality` int NOT NULL,
  PRIMARY KEY (`product_price_id`,`user_account_id`),
  KEY `cart_detail__user_idx` (`user_account_id`),
  CONSTRAINT `cart_detail__product_price` FOREIGN KEY (`product_price_id`) REFERENCES `product_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_detail__user` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_detail`
--

LOCK TABLES `cart_detail` WRITE;
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('00la2ke30nrqapk3rinv','Cà Phê Việt Nam',NULL),('00la2ke3pfw8976erpcr','Latte','2022-12-22 02:22:49'),('00la2ke4axm43gf9lzn2','Trà','2022-12-22 02:22:56'),('00la2ke5bkyf8oqsctc9','Bánh mì','2022-12-22 02:23:08'),('00lbby59cc14zj7jex58','testt1ft','2022-12-06 15:59:45'),('00lbxynvkgs4eupbt6jk','Cà Phê Máy',NULL),('00lbxyo13u3r0ixxzm7a','Cold Brew',NULL),('00lbxzm9zrzpu4nxngmw','CoudFee',NULL),('00lbxzmi5qux4e7av16o','CloudTea',NULL),('00lbxzmxydtlqmp5n7zv','Trà trái cây',NULL),('00lbxzn4mw2r4lkptjzn','Trà sữa Macchiato',NULL),('00lbxznfsd9xrcsozz02','Hi-Tea Trà',NULL),('00lbxznlg82nyg91dij7','Hi-Tea Đá Tuyết',NULL),('00lbxznu7v1ms1cucaw7','Bánh mặn',NULL),('00lbxzo0jki6oshcvzgt','Bánh ngọt',NULL),('00lby1jexzq49u40gjjo','Snack',NULL),('00lc8m2jknzr0pe3l4hm','jwje','2022-12-29 11:53:58'),('00lcq6w8olxwbxlwziw6','NewCould','2023-01-10 19:17:39');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon` (
  `coupon_code` varchar(8) NOT NULL,
  `type` varchar(30) DEFAULT 'order',
  `applied_scopes` varchar(45) DEFAULT NULL,
  `begin_at` datetime DEFAULT NULL,
  `finish_at` datetime DEFAULT NULL,
  `decrease` decimal(10,2) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`coupon_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES ('12345677','order','order','2022-12-30 07:00:00','2023-01-01 07:00:00',3.00,'percent'),('12345678','order','branch.product','2022-12-30 07:00:00','2022-12-31 07:00:00',6.00,'money'),('12345679','order','order','2022-12-30 07:00:00','2023-01-01 07:00:00',4.00,'percent'),('BENNHA35','order','order','2022-12-23 07:00:00','2022-12-25 07:00:00',35000.00,'money'),('BENNHA70','order','order','2022-12-23 07:00:00','2022-12-25 07:00:00',70000.00,'money'),('SUMMER20','order','branch','2023-05-30 07:00:00','2023-06-15 07:00:00',20.00,'percent'),('TRANPHU9','order','branch','2022-12-23 07:00:00','2022-12-25 07:00:00',9.00,'percent');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_on_branch`
--

DROP TABLE IF EXISTS `coupon_on_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_on_branch` (
  `coupon_code` varchar(8) NOT NULL,
  `branch_id` varchar(20) NOT NULL,
  PRIMARY KEY (`coupon_code`,`branch_id`),
  KEY `coupon_on_branch__branch_idx` (`branch_id`),
  CONSTRAINT `coupon_on_branch__branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coupon_on_branch__coupon` FOREIGN KEY (`coupon_code`) REFERENCES `coupon` (`coupon_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_on_branch`
--

LOCK TABLES `coupon_on_branch` WRITE;
/*!40000 ALTER TABLE `coupon_on_branch` DISABLE KEYS */;
INSERT INTO `coupon_on_branch` VALUES ('12345678','00laerkzo169m8cdfk34'),('TRANPHU9','00laerkzo169m8cdfk34'),('SUMMER20','00libi93diww6a6gonhf');
/*!40000 ALTER TABLE `coupon_on_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_on_order`
--

DROP TABLE IF EXISTS `coupon_on_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_on_order` (
  `coupon_code` varchar(8) NOT NULL,
  `total_price_from` decimal(10,2) NOT NULL,
  `total_price_to` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`coupon_code`),
  CONSTRAINT `coupon_on_order__coupon` FOREIGN KEY (`coupon_code`) REFERENCES `coupon` (`coupon_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_on_order`
--

LOCK TABLES `coupon_on_order` WRITE;
/*!40000 ALTER TABLE `coupon_on_order` DISABLE KEYS */;
INSERT INTO `coupon_on_order` VALUES ('12345677',0.00,5.00),('12345679',3.00,10000.00),('BENNHA35',1690000.00,NULL),('BENNHA70',2890000.00,NULL);
/*!40000 ALTER TABLE `coupon_on_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_on_product`
--

DROP TABLE IF EXISTS `coupon_on_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_on_product` (
  `coupon_code` varchar(20) NOT NULL,
  `product_price_id` varchar(20) NOT NULL,
  PRIMARY KEY (`coupon_code`,`product_price_id`),
  KEY `coupon__product_price_idx` (`product_price_id`),
  CONSTRAINT `coupon_on_prod__coupon` FOREIGN KEY (`coupon_code`) REFERENCES `coupon` (`coupon_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coupon_on_prod__product_price` FOREIGN KEY (`product_price_id`) REFERENCES `product_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_on_product`
--

LOCK TABLES `coupon_on_product` WRITE;
/*!40000 ALTER TABLE `coupon_on_product` DISABLE KEYS */;
INSERT INTO `coupon_on_product` VALUES ('12345678','00lbqe8g6zmeb7rzqjnr'),('12345678','00lbqe98ywanbjusa4wc');
/*!40000 ALTER TABLE `coupon_on_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` varchar(20) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `cover_image` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES ('00lab8hhciql52dwlxfe','TẠI SAO CÀ PHÊ CÓ VỊ CHUA?','<div class=\"article_content\">\r\n<p>Nhiều người khi uống cà phê cảm thấy có vị chua thường e ngại rằng cà phê hỏng, kém chất lượng hay gặp các vấn đề trong quá trình pha chế và bảo quản. Tuy nhiên, điều này chưa chính xác. Cả hương vị của Arabica hay Robusta nguyên chất, trải qua quá trình chế biến, rang xay đều có vị chua nhẹ. Vậy nên, cà phê có vị chua chua, vẫn giữ được hương thơm đặc trưng vốn có của nó thì bạn có thể yên tâm đó không phải là cà phê hỏng. The Coffee House sẽ chỉ ra những lý do khiến cà phê có vị chua tự nhiên.&nbsp;</p>\r\n<p><strong>Vị chua từ quy trình sơ chế</strong></p>\r\n<p>Trong mỗi loại cà phê đều có độ chua (pH), và độ chua này khác nhau tùy loại. Ở nước ta, đối với hạt cà phê Arabica thường được sơ chế ướt (fully washed) nhằm đảm bảo tối đa hương vị và chất lượng thượng hạng của giống cà phê này. Và đặc trưng của phương pháp sơ chế ướt sẽ cho vị chua hơn là phương pháp sơ chế khô.&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61e6d4b003d7a_90e0757ec93a433e8e7812165271c7a2_grande.jpg\"></p>\r\n<p><em>(Ảnh: Sưu tầm)</em></p>\r\n<p>Lý do là trong quy trình sơ chế ướt, những trái cà phê được đem đi xay xát, cho qua bồn nước để lọc lớp vỏ nhớt bên ngoài, sau đó đem cà phê đi ủ lên men trong khoảng 12 – 36 tiếng. Chính lượng axit còn lại trên hạt cà phê sau khi rửa sẽ mang lại vị chua. Tuy nhiên, đây là phương pháp sơ chế lý tưởng nhất đối với hạt Arabica nên nó có vị chua thanh một cách thú vị, chứ không chua nhiều.&nbsp;</p>\r\n<p>Đối với hạt Robusta khi sử dụng phương pháp sơ chế ướt cũng sẽ tạo nên vị chua rất gắt, vì hạt Robusta có hàm lượng axit cao hơn so với hạt Arabica. Vậy nên, để làm giảm độ chua của cà phê Robusta, người ta sẽ ưu tiên chọn phương pháp sơ chế khô. Lúc này vị của hạt Robusta cũng có vị chua nhưng nhẹ hơn nhiều.</p>\r\n<p><strong>Vị chua từ quá trình rang</strong></p>\r\n<p>Ngoài việc sơ chế sẽ làm thay đổi đến độ chua của cà phê thì quá trình rang cũng sẽ có sự tác động. Vì khi rang sẽ làm thay đổi thành phần axit trong hạt cà phê.&nbsp;</p>\r\n<p>Khi uống cà phê 100% Arabica rang nhạt (light roast hay medium roast), bạn sẽ cảm nhận vị chua nhiều. Tuy nhiên, nếu hạt Arabica này rang đậm (medium dark ro hay dark roast) bạn sẽ cảm nhận độ chua giảm dần.&nbsp;</p>\r\n<p>Đối với hạt Robusta cũng vậy, màu cà phê rang nhạt sẽ cho vị chua nhiều hơn nếu rang đậm. Nhiều người Việt thường không thích vị chua của cà phê, vậy nên nếu dựa theo sở thích của khách hàng, hạt Robusta rang ở mức vừa đậm hoặc đậm hơn thì sẽ tạo ra vị đắng nhiều hơn và không có vị chua.&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61e6d5a3a5d26_8dcd9f076bc047bfb61b6ae182f58d17_grande.jpg\"></p>\r\n<p><em>(Ảnh: Sưu tầm)</em></p>\r\n<p>Như vậy, trên thực tế cà phê nguyên chất, cà phê ngon được rang mộc thường có một chút vị chua. Bên cạnh vị chua thanh tinh tế là vị đắng dịu nhẹ, mùi thơm nồng nàn quyến rũ, khác với vị đắng gắt và mùi hăng hắc của các loại cà phê pha tạp bởi đậu nành hay bắp rang cháy.&nbsp;</p>\r\n<p>Với những chia sẻ của The Coffee House chắc hẳn bạn đã bớt bỡ ngỡ vì cà phê lại có vị chua. Đó là vị chua tự nhiên của cà phê, ngoài ra, vị chua từ việc thu hoạch nhiều trái xanh, chua do quá trình pha chế hay cà phê để lâu làm giảm chất lượng của cà phê là một câu chuyện khác. Vậy nên để thưởng thức cà phê là cả một nghệ thuật. Từ khi bạn cảm nhận được vị đắng dịu, vị chua thanh, hương thơm đặc trưng, đến hậu vị ngọt nơi cổ họng và cả những cung bậc cảm xúc để lại. Và đấy là khi bạn cảm nhận trọn vẹn hương vị cà phê bằng cả sự tinh tế của các giác quan.&nbsp;</p>\r\n<p><em>Để thưởng thức những hương vị cà phê nguyên chất, hảo hạng, gói trọn đầy đủ vị chua, đắng, ngọt và cả hương thơm khác biệt đầy hấp dẫn ấy, mời bạn cùng đến với The Coffee House.</em></p>\r\n</div>','fjwqoezw0dwlujdmbyzu','2022-11-10 22:37:30','2022-11-11 12:40:31','2022-12-21 23:43:54'),('00lac29shdo7woi0u7cw','TẠI SAO CÀ PHÊ CÓ VỊ CHUA?','<div class=\"article_content\">\r\n<p>Nhiều người khi uống cà phê cảm thấy có vị chua thường e ngại rằng cà phê hỏng, kém chất lượng hay gặp các vấn đề trong quá trình pha chế và bảo quản. Tuy nhiên, điều này chưa chính xác. Cả hương vị của Arabica hay Robusta nguyên chất, trải qua quá trình chế biến, rang xay đều có vị chua nhẹ. Vậy nên, cà phê có vị chua chua, vẫn giữ được hương thơm đặc trưng vốn có của nó thì bạn có thể yên tâm đó không phải là cà phê hỏng. The Coffee House sẽ chỉ ra những lý do khiến cà phê có vị chua tự nhiên.&nbsp;</p>\r\n<p><strong>Vị chua từ quy trình sơ chế</strong></p>\r\n<p>Trong mỗi loại cà phê đều có độ chua (pH), và độ chua này khác nhau tùy loại. Ở nước ta, đối với hạt cà phê Arabica thường được sơ chế ướt (fully washed) nhằm đảm bảo tối đa hương vị và chất lượng thượng hạng của giống cà phê này. Và đặc trưng của phương pháp sơ chế ướt sẽ cho vị chua hơn là phương pháp sơ chế khô.&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61e6d4b003d7a_90e0757ec93a433e8e7812165271c7a2_grande.jpg\"></p>\r\n<p><em>(Ảnh: Sưu tầm)</em></p>\r\n<p>Lý do là trong quy trình sơ chế ướt, những trái cà phê được đem đi xay xát, cho qua bồn nước để lọc lớp vỏ nhớt bên ngoài, sau đó đem cà phê đi ủ lên men trong khoảng 12 – 36 tiếng. Chính lượng axit còn lại trên hạt cà phê sau khi rửa sẽ mang lại vị chua. Tuy nhiên, đây là phương pháp sơ chế lý tưởng nhất đối với hạt Arabica nên nó có vị chua thanh một cách thú vị, chứ không chua nhiều.&nbsp;</p>\r\n<p>Đối với hạt Robusta khi sử dụng phương pháp sơ chế ướt cũng sẽ tạo nên vị chua rất gắt, vì hạt Robusta có hàm lượng axit cao hơn so với hạt Arabica. Vậy nên, để làm giảm độ chua của cà phê Robusta, người ta sẽ ưu tiên chọn phương pháp sơ chế khô. Lúc này vị của hạt Robusta cũng có vị chua nhưng nhẹ hơn nhiều.</p>\r\n<p><strong>Vị chua từ quá trình rang</strong></p>\r\n<p>Ngoài việc sơ chế sẽ làm thay đổi đến độ chua của cà phê thì quá trình rang cũng sẽ có sự tác động. Vì khi rang sẽ làm thay đổi thành phần axit trong hạt cà phê.&nbsp;</p>\r\n<p>Khi uống cà phê 100% Arabica rang nhạt (light roast hay medium roast), bạn sẽ cảm nhận vị chua nhiều. Tuy nhiên, nếu hạt Arabica này rang đậm (medium dark ro hay dark roast) bạn sẽ cảm nhận độ chua giảm dần.&nbsp;</p>\r\n<p>Đối với hạt Robusta cũng vậy, màu cà phê rang nhạt sẽ cho vị chua nhiều hơn nếu rang đậm. Nhiều người Việt thường không thích vị chua của cà phê, vậy nên nếu dựa theo sở thích của khách hàng, hạt Robusta rang ở mức vừa đậm hoặc đậm hơn thì sẽ tạo ra vị đắng nhiều hơn và không có vị chua.&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000075078/file/_downloader.la_-61e6d5a3a5d26_8dcd9f076bc047bfb61b6ae182f58d17_grande.jpg\"></p>\r\n<p><em>(Ảnh: Sưu tầm)</em></p>\r\n<p>Như vậy, trên thực tế cà phê nguyên chất, cà phê ngon được rang mộc thường có một chút vị chua. Bên cạnh vị chua thanh tinh tế là vị đắng dịu nhẹ, mùi thơm nồng nàn quyến rũ, khác với vị đắng gắt và mùi hăng hắc của các loại cà phê pha tạp bởi đậu nành hay bắp rang cháy.&nbsp;</p>\r\n<p>Với những chia sẻ của The Coffee House chắc hẳn bạn đã bớt bỡ ngỡ vì cà phê lại có vị chua. Đó là vị chua tự nhiên của cà phê, ngoài ra, vị chua từ việc thu hoạch nhiều trái xanh, chua do quá trình pha chế hay cà phê để lâu làm giảm chất lượng của cà phê là một câu chuyện khác. Vậy nên để thưởng thức cà phê là cả một nghệ thuật. Từ khi bạn cảm nhận được vị đắng dịu, vị chua thanh, hương thơm đặc trưng, đến hậu vị ngọt nơi cổ họng và cả những cung bậc cảm xúc để lại. Và đấy là khi bạn cảm nhận trọn vẹn hương vị cà phê bằng cả sự tinh tế của các giác quan.&nbsp;</p>\r\n<p><em>Để thưởng thức những hương vị cà phê nguyên chất, hảo hạng, gói trọn đầy đủ vị chua, đắng, ngọt và cả hương thơm khác biệt đầy hấp dẫn ấy, mời bạn cùng đến với The Coffee House.</em></p>\r\n</div>','o9j9lqjre2zkxwrppu9e','2022-11-11 12:31:20','2022-11-11 12:34:25','2022-11-11 12:35:15'),('00lac2mrplrjzhqa5z34','Test','<p>New image</p>\r\n<p><img src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1668145283/ndaelcef9ewu45thmrha.webp\" alt=\"\" width=\"500\" height=\"500\"></p>','nnzlwhsysoxy4ku1j2ou','2022-11-11 12:41:25',NULL,'2022-12-21 23:44:00'),('00lb1tzujnvo5oez5m6a','CÀ PHÊ PHIN THẾ HỆ MỚI!','<div class=\"short-info\">\r\n<div class=\"description\">\r\n<p>Cùng ước muốn mang Cà Phê Phin Việt Nam đến gần hơn với người trẻ, Highlands Coffee đã ra mắt PhinDi - Một thế hệ Cà Phê Phin Việt Nam hoàn toàn mới, phục vụ cho thế hệ trẻ đầy nhiệt huyết</p>\r\n</div>\r\n</div>','giht2v4ejszuq0xag7sa','2022-11-29 13:21:39',NULL,'2022-12-21 23:44:06'),('00lbbxv2p6h0lyqfoh49','LỊCH HOẠT ĐỘNG TẾT NGUYÊN ĐÁN 2021 TRÊN TOÀN QUỐC','<p><strong>MỪNG NĂM MỚI - ÊM KHỞI ĐẦU MỚI</strong></p>\r\n<p>Highlands Coffee kính gửi đến quý khách lịch hoạt động&nbsp;Tết Nguyên Đán 2021&nbsp;từ ngày 10-16/2&nbsp;(tức ngày 29 Tết đến Mùng 5 Tết).&nbsp;Trước và sau khoảng thời gian trên các quán mở cửa như bình thường.&nbsp;Chúc quý khách và những người thân yêu một một năm mới may mắn, bình an&nbsp;và hạnh phúc.</p>\r\n<p>&nbsp;</p>\r\n<table class=\"table_responsive\" border=\"1\" cellspacing=\"0\" cellpadding=\"10\">\r\n<thead>\r\n<tr>\r\n<td>\r\n<p><strong><u>MIỀN BẮC</u></strong></p>\r\n<p><em>(Vui lòng nhấp vào hình để đẫn đến lịch quán bạn cần tìm)</em></p>\r\n</td>\r\n<td>\r\n<p><u><strong>MIỀN TRUNG</strong></u></p>\r\n<p><em>(Vui lòng nhấp vào hình để đẫn đến lịch quán bạn cần tìm)</em></p>\r\n</td>\r\n<td>\r\n<p><u><strong>MIỀN NAM</strong></u></p>\r\n<p><em>(Vui lòng nhấp vào hình để đẫn đến lịch quán bạn cần tìm)</em></p>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div><a href=\"https://highlandscoffee.com.vn/lich-hoat-dong-tet-2021-mien-bac.html\"><img src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1670314022/wnbopu6m4d1kleljaqbj.png\" alt=\"hco_7644_festive_2021_schedule_thumbnail-04\" width=\"400\" height=\"400\" data-ck-zoom=\"yes\"></a></div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</td>\r\n<td>\r\n<div>&nbsp;</div>\r\n<div><a href=\"https://highlandscoffee.com.vn/lich-hoat-dong-tet-2021-mien-tr.html\"><img src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1670314036/ba6lrqkzwkks3j8mxd63.png\" alt=\"HCO_7644_FESTIVE_2021_SCHEDULE_THUMBNAIL-05\" width=\"400\" height=\"400\" data-ck-zoom=\"yes\"></a></div>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<div>&nbsp;</div>\r\n<div><a href=\"https://highlandscoffee.com.vn/lich-hoat-dong-tet-2021-mien-nam.html\"><img src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1670314053/ftecjku0h2xvuvrsgm0t.png\" alt=\"HCO_7644_FESTIVE_2021_SCHEDULE_THUMBNAIL-06\" width=\"400\" height=\"400\" data-ck-zoom=\"yes\"></a></div>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>','izss9lsnfpnnhyzmzlbf','2022-12-06 15:07:37','2022-12-06 15:12:20','2022-12-21 23:44:13'),('00lbxvysoe3igfdgiezk','BÁNH TRUNG THU HIGHLANDS COFFEE - SẺ CHIA TINH TÚY ĐẤT VIỆT','<h2><strong>HIGHLANDS COFFEE RA MẮT BÁNH TRUNG THU 2021 – SẺ CHIA TINH TÚY ĐẤT VIỆT</strong></h2>\r\n<p>Mùa trăng tròn lại về đem đến cảm xúc bồi hồi cho biết bao con người Việt Nam, từ những đứa trẻ mong rước đèn Trung thu đến người lớn bồn chồn được đoàn viên, sẻ chia cùng gia đình những chiếc bánh thơm ngon, đậm đà hương vị truyền thống. Năm nay Highlands Coffee mong ước được sẻ chia tinh túy đất Việt đến với quý khách hàng và những người thân thương thông qua bộ ba bánh trung thu truyền thống nhưng cũng không kém phần sang trọng, hiện đại.</p>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div><a href=\"https://www.lazada.vn/shop/highlands-coffee\" target=\"_blank\" rel=\"noopener\"><img src=\"https://highlandscoffee.com.vn/vnt_upload/news/08_2021/HC_7654_MOONCAKE_2021_KV_1920X1080.jpg\" alt=\"HC_7654_MOONCAKE_2021_KV_1920X1080\" width=\"615\" height=\"346\" longdesc=\"https://www.highlandscoffee.com.vn/vn/banh-trung-thu-highlands-coffee-se-chia-tinh-tuy-dat-viet.html\" data-ck-zoom=\"yes\"></a></div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Hương vị đậm đà thơm ngon từ jambon gà quay kết hợp cùng trứng muối béo mặn mang đến vị bánh trung thu truyền thống đúng nghĩa để thưởng thức cùng những người yêu thương.</p>\r\n<p>Giá bán: 70,000 VND</p>\r\n<div>\r\n<div>\r\n<div><a href=\"https://www.lazada.vn/products/banh-trung-thu-jambon-ga-quay-trung-muoi-80g-i1431722879-s5926432285.html?search=store?spm=a2o4n.10441748.0.0.1a156734u9U4Cl&amp;search=store\" target=\"_blank\" rel=\"noopener\"><img src=\"https://highlandscoffee.com.vn/vnt_upload/news/08_2021/JAMBON_GA_QUAY_TRUNG_MUOI_1.jpg\" alt=\"JAMBON_GA_QUAY_TRUNG_MUOI_1\" width=\"703\" height=\"704\" data-ck-zoom=\"yes\"></a></div>\r\n</div>\r\n</div>\r\n<p>Hương vị truyền thống nhưng chưa bao giờ lỗi mốt, kếp hợp giữa đậu xanh ngọt mịn và trứng muối béo mặn cho những buổi tiệc trăng ấm cúng cùng gia đình và người thương.</p>\r\n<p>Giá bán: 70,000 VND</p>\r\n<div>\r\n<div>\r\n<div><a href=\"https://www.lazada.vn/products/banh-trung-thu-dau-xanh-trung-muoi-80g-i1429202394-s5924290375.html?search=store?spm=a2o4n.10441748.0.0.1a156734u9U4Cl&amp;search=store\" target=\"_blank\" rel=\"noopener\"><img src=\"https://highlandscoffee.com.vn/vnt_upload/news/08_2021/DAU_XANH_TRUNG_MUOI.jpg\" alt=\"DAU_XANH_TRUNG_MUOI\" width=\"698\" height=\"699\" data-ck-zoom=\"yes\"></a></div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<p>Hương vị hạt sen tinh tế cùng mùi vani thơm lừng và trứng muối béo mặn hòa quyện trong chiếc bánh trung thu cổ điển để sẻ chia ngọt ngào bên những tách trà ấm cúng.</p>\r\n<p>Giá bán: 70,000 VND</p>\r\n<div>\r\n<div>\r\n<div><a href=\"https://www.lazada.vn/products/banh-trung-thu-hat-sen-trung-muoi-80g-i1431751562-s5926301858.html?search=store?spm=a2o4n.10441748.0.0.1a156734u9U4Cl&amp;search=store\" target=\"_blank\" rel=\"noopener\"><img src=\"https://highlandscoffee.com.vn/vnt_upload/news/08_2021/HYT_SEN_TRUNG_MUOI.jpg\" alt=\"HYT_SEN_TRUNG_MUOI\" width=\"651\" height=\"651\" data-ck-zoom=\"yes\"></a></div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p><strong>Sang trọng với các họa tiết mùa trăng được ép kim công phu, Phá Cỗ Trăng Rằm Hộp 3 Bánh</strong>&nbsp;là bức tranh tươi đẹp về các hoạt động mừng Tết trung thu truyền thống nhưng cũng không kém phần hiện đại để sẻ chia tinh thần lễ hội đến với những người thân thương. Hộp bao gồm 3 vị bánh đủ đầy&nbsp;Jambon Gà Quay Trứng Muối, Đậu Xanh Trứng Muối và Hạt Sen Trứng Muối để tận hưởng trọn vẹn hương vị mùa trăng.</p>\r\n<p>Giá bán: 249,000 VND</p>\r\n<div>\r\n<div><a href=\"https://www.lazada.vn/products/pha-co-trang-ram-hop-3-banh-80g-gom-3-vi-i1431755598-s5926442389.html?search=store?spm=a2o4n.10441748.0.0.1a156734u9U4Cl&amp;search=store\" target=\"_blank\" rel=\"noopener\"><img src=\"https://highlandscoffee.com.vn/vnt_upload/news/08_2021/HC_7654_MOONCAKE_2021_KV_1080X1920.jpg\" alt=\"HC_7654_MOONCAKE_2021_KV_1080X1920\" width=\"540\" height=\"960\" data-ck-zoom=\"yes\"></a></div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>','ymtdhuj8m0qci8bmfno4','2022-12-21 23:45:27','2022-12-21 23:47:36',NULL),('00lbxw36e33emd9tlpd8','HIGHLANDS COFFEE RA MẮT PHINDI HỒNG TRÀ MỚI','<p><span lang=\"VI\">HIGHLANDS COFFEE TR&Igrave;NH L&Agrave;NG PHINDI HỒNG TR&Agrave; MỚI &ndash; CHẤT PHIN QUYỆN TR&Agrave;.</span></p>\r\n<p>&nbsp;</p>\r\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://highlandscoffee.com.vn/vnt_upload/news/12_2020/OB12-KV-FINAL.jpg\" alt=\"OB12-KV-FINAL\" width=\"636\" height=\"990\" data-ck-zoom=\"yes\"></div>\r\n<p><span lang=\"VI\">Lần đầu ti&ecirc;n C&agrave; Ph&ecirc; Phin v&agrave; Tr&agrave; kết hợp trong c&ugrave;ng 1 thức uống. PhinDi Hồng Tr&agrave; Mới đ&aacute;nh dấu sự kết hợp độc đ&aacute;o tưởng như kh&ocirc;ng hợp nhưng lại v&ocirc; c&ugrave;ng ho&agrave; quyện.</span></p>\r\n<p><span lang=\"VI\">Chất Phin quyện Tr&agrave; của t&acirc;n binh PhinDi Hồng Tr&agrave; Mới hứa hẹn sẽ l&agrave;m bạn m&ecirc; mẩn ngay lần thử đầu ti&ecirc;n. Si&ecirc;u phẩm PhinDi Hồng Tr&agrave; Mới đ&atilde; c&oacute; mặt tại gần 400 qu&aacute;n tr&ecirc;n to&agrave;n quốc, đến qu&aacute;n gần nhất v&agrave; thử ngay th&ocirc;i!</span></p>\r\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://highlandscoffee.com.vn/vnt_upload/news/12_2020/Social1.jpg\" alt=\"Social1\" width=\"841\" height=\"1051\" data-ck-zoom=\"yes\"></div>','i8y1hl3ffwe1ue0r8kud','2022-12-21 23:48:51','2023-01-10 19:41:39',NULL),('00lbxw8ilyilpoon7j3r','COMBO ƯU ĐÃI THÁNG 6 ĐẬM CHUYỆN CÙNG NGƯỜI THƯƠNG','<p><strong>THẬT NHIỀU ƯU Đ&Atilde;I COMBO TH&Aacute;NG 6 ĐẬM CHUYỆN C&Ugrave;NG NGƯỜI THƯƠNG</strong></p>\r\n<p>Ng&agrave;y Gia Đ&igrave;nh Việt Nam 28/6 sắp đến. Thật l&agrave; một c&aacute;i \"cớ\" tuyệt vời để bạn c&oacute; dịp kết nối, chia sẻ với những người m&igrave;nh y&ecirc;u thương v&agrave; h&atilde;y để thật nhiều c&acirc;u chuyện đậm đ&agrave; của bạn được lưu lại tại kh&ocirc;ng gian của Highlands Coffee bạn nh&eacute;!</p>\r\n<p>Ưu đ&atilde;i tại cửa h&agrave;ng &aacute;p dụng khung gi&aacute; cũ:</p>\r\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.highlandscoffee.com.vn/vnt_upload/news/06_2020/Standard.png\" alt=\"Standard\" width=\"879\" height=\"473\" data-ck-zoom=\"yes\"></div>\r\n<p>Ưu đ&atilde;i tại cửa h&agrave;ng &aacute;p dụng khung gi&aacute; mới (Danh s&aacute;ch cửa h&agrave;ng &aacute;p dụng&nbsp;<a href=\"https://www.highlandscoffee.com.vn/vn/danh-sach-quan-co-ap-dung-khung-gia-moi.html\">tại đ&acirc;y</a>)&nbsp;</p>\r\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.highlandscoffee.com.vn/vnt_upload/news/06_2020/CBD.png\" alt=\"CBD\" width=\"760\" height=\"409\" data-ck-zoom=\"yes\"></div>','xbnhffovtz0mdm26wvwu','2022-12-21 23:53:01','2023-01-10 19:42:11',NULL),('00lc8tsgcdlj6cntuquz','ejfjre','<p>md fnefd</p>','yphmazl8mdeok8kqha7z','2022-12-29 15:30:00','2022-12-29 16:04:55','2022-12-29 16:05:03'),('00lchdijcap4tstd76he','Tết fes','<p><strong>Tết</strong></p>','tbse6qti4b7myqme1mdj','2023-01-04 15:04:19',NULL,'2023-01-04 15:04:36'),('00lchdk3bdmscx3oiaad','Test','<p>efwbh</p>','oqjbploswexlomwmi4hy','2023-01-04 15:05:31',NULL,'2023-01-04 15:05:43'),('00ldfomuh5wpvn1bgt3k','jbgherb','<p><strong>nebrgvrg</strong></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">knfjwe</p>\r\n<p style=\"text-align: left;\">https://www.youtube.com/watch?v=LXK5AffKjaY</p>','rbshb22ygheywistlzw1','2023-01-28 15:19:46',NULL,'2023-05-31 15:03:25'),('00ldfonn1roq9038a27k','jbgherb','<p><strong>nebrgvrg</strong></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">knfjwe</p>\r\n<p style=\"text-align: left;\">https://www.youtube.com/watch?v=LXK5AffKjaY</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1674894020/joosx6muteizfyg0rf9z.png\" alt=\"\" width=\"551\" height=\"1063\"></p>','tctpb2rxzlobld5dpcuc','2023-01-28 15:20:23','2023-01-28 15:20:51','2023-05-31 15:03:28');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `seen` tinyint NOT NULL,
  `created_at` datetime NOT NULL,
  `link_to` varchar(100) DEFAULT NULL,
  `user_account_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_notification_idx` (`user_account_id`),
  CONSTRAINT `user_notification` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES ('00lbyjzgrgg5lhudi26g','Đơn hàng #00lbyjzgr0zrp8ogp9gj đã được đặt',1,'2022-12-22 10:57:49','http://localhost:3000/user/order-history/00lbyjzgr0zrp8ogp9gj','00lbxya79ra10codnolo'),('00lbyk0ozigryc6jyerr','Đơn hàng #00lbyjzgr0zrp8ogp9gj đã được duyệt',1,'2022-12-22 10:58:46','http://localhost:3000/user/order-history/00lbyjzgr0zrp8ogp9gj','00lbxya79ra10codnolo'),('00lcacqa51mndoyhv1oi','Đơn hàng #00lcacqa4d4k2lenrj87 đã được đặt',1,'2022-12-30 17:07:57','http://localhost:3000/user/order-history/00lcacqa4d4k2lenrj87','00lbxya79ra10codnolo'),('00lcadrsz6xf3g1338vn','Đơn hàng #00lcadrsy8aaxoeltzyc đã được đặt',1,'2022-12-30 17:37:08','http://localhost:3000/user/order-history/00lcadrsy8aaxoeltzyc','00lbxya79ra10codnolo'),('00lcbqsdv3n95bjj88qj','Đơn hàng #00lcadrsy8aaxoeltzyc đã được duyệt',1,'2022-12-31 16:29:16','http://localhost:3000/user/order-history/00lcadrsy8aaxoeltzyc','00lbxya79ra10codnolo'),('00lcbqsehzmj5iju0279','Đơn hàng #00lcadrsy8aaxoeltzyc đã được vận chuyển',1,'2022-12-31 16:29:17','http://localhost:3000/user/order-history/00lcadrsy8aaxoeltzyc','00lbxya79ra10codnolo'),('00lcbqsewjwqwcwfa63n','Đơn hàng #00lcadrsy8aaxoeltzyc đã được nhận',1,'2022-12-31 16:29:18','http://localhost:3000/user/order-history/00lcadrsy8aaxoeltzyc','00lbxya79ra10codnolo'),('00lchal6jaw98ruekfs4','Tài khoản của bạn đã bị khóa tính năng đặt hàng',1,'2023-01-04 13:42:23',NULL,'00lbxya79ra10codnolo'),('00lchal7ls3er61xzjsp','Tài khoản của bạn đã được mở khóa tính năng đặt hàng',1,'2023-01-04 13:42:25',NULL,'00lbxya79ra10codnolo'),('00lchamrikv16rhrrrw7','Tài khoản của bạn đã bị khóa tính năng đặt hàng',1,'2023-01-04 13:43:37',NULL,'00lbxyf55plyjfwy0mkr'),('00lchamsvfz0654roi42','Tài khoản của bạn đã được mở khóa tính năng đặt hàng',1,'2023-01-04 13:43:39',NULL,'00lbxyf55plyjfwy0mkr'),('00lchamvx3ay52fj4obx','Tài khoản của bạn đã bị khóa tính năng đặt hàng',1,'2023-01-04 13:43:43',NULL,'00lbxyf55plyjfwy0mkr'),('00lchamx7jbrzhmj0jb5','Tài khoản của bạn đã được mở khóa tính năng đặt hàng',1,'2023-01-04 13:43:45',NULL,'00lbxyf55plyjfwy0mkr'),('00lcilpypz0wjwivct5k','Đơn hàng #00lcilpyp5w2zjhdh7zj đã được đặt',1,'2023-01-05 11:41:49','http://localhost:3000/user/order-history/00lcilpyp5w2zjhdh7zj','00lbxya79ra10codnolo'),('00lcim2wytrz1pzpmq7b','Đơn hàng #00lcacqa4d4k2lenrj87 đã được hủy',1,'2023-01-05 11:51:53','http://localhost:3000/user/order-history/00lcacqa4d4k2lenrj87','00lbxya79ra10codnolo'),('00lclfysgiauxigqxd5f','Đơn hàng #00lcilpyp5w2zjhdh7zj đã được hủy',1,'2023-01-07 11:24:01','http://localhost:3000/user/order-history/00lcilpyp5w2zjhdh7zj','00lbxya79ra10codnolo'),('00lclfzfhsx97mtfapxh','Đơn hàng #00lclfzfh7jbr39czhp4 đã được đặt',1,'2023-01-07 11:24:31','http://localhost:3000/user/order-history/00lclfzfh7jbr39czhp4','00lbxya79ra10codnolo'),('00lclgmsxqplxygaw3dv','Đơn hàng #00lclfzfh7jbr39czhp4 đã được duyệt',1,'2023-01-07 11:42:42','http://localhost:3000/user/order-history/00lclfzfh7jbr39czhp4','00lbxya79ra10codnolo'),('00lclgnp77p00mfd2lzy','Đơn hàng #00lclfzfh7jbr39czhp4 đã được vận chuyển',1,'2023-01-07 11:43:23','http://localhost:3000/user/order-history/00lclfzfh7jbr39czhp4','00lbxya79ra10codnolo'),('00lclimcwxy7pii94vvg','Đơn hàng #00lclfzfh7jbr39czhp4 đã được hủy',1,'2023-01-07 12:38:20','http://localhost:3000/user/order-history/00lclfzfh7jbr39czhp4','00lbxya79ra10codnolo'),('00lcliu3giy1645fyqbq','Đơn hàng #00lclfzfh7jbr39czhp4 đã được hủy',1,'2023-01-07 12:44:21','http://localhost:3000/user/order-history/00lclfzfh7jbr39czhp4','00lbxya79ra10codnolo'),('00lclixfhlx52y4o0ami','Đơn hàng #00lclixfgtq10jgk43qf đã được đặt',1,'2023-01-07 12:46:57','http://localhost:3000/user/order-history/00lclixfgtq10jgk43qf','00lbxya79ra10codnolo'),('00lclixw8iph2px7rls3','Đơn hàng #00lclixfgtq10jgk43qf đã được hủy',1,'2023-01-07 12:47:18','http://localhost:3000/user/order-history/00lclixfgtq10jgk43qf','00lbxya79ra10codnolo'),('00lcq7g6cdtbke4mprol','Tài khoản của bạn đã bị khóa tính năng đặt hàng',1,'2023-01-10 19:24:27',NULL,'00lbxyf55plyjfwy0mkr'),('00lcq7g714rklcal46wn','Tài khoản của bạn đã được mở khóa tính năng đặt hàng',1,'2023-01-10 19:24:28',NULL,'00lbxyf55plyjfwy0mkr'),('00lcq90acqga3xcjlpjg','Đơn hàng #00lcq90ac9go4txz9d7l đã được đặt',1,'2023-01-10 20:08:05','http://localhost:3000/user/order-history/00lcq90ac9go4txz9d7l','00lbxya79ra10codnolo'),('00lcq90icr7pubcb0wfr','Đơn hàng #00lcq90ac9go4txz9d7l đã được hủy',1,'2023-01-10 20:08:15','http://localhost:3000/user/order-history/00lcq90ac9go4txz9d7l','00lbxya79ra10codnolo'),('00lcq913gmus6fttp26z','Đơn hàng #00lcq913g70j6cmz3ysl đã được đặt',1,'2023-01-10 20:08:42','http://localhost:3000/user/order-history/00lcq913g70j6cmz3ysl','00lbxya79ra10codnolo'),('00lcq98het4x7caz309i','Đơn hàng #00lcq913g70j6cmz3ysl đã được duyệt',1,'2023-01-10 20:14:27','http://localhost:3000/user/order-history/00lcq913g70j6cmz3ysl','00lbxya79ra10codnolo'),('00lcq98j9g09grmmdyzs','Đơn hàng #00lcq913g70j6cmz3ysl đã được vận chuyển',1,'2023-01-10 20:14:29','http://localhost:3000/user/order-history/00lcq913g70j6cmz3ysl','00lbxya79ra10codnolo'),('00lcq98k09kdz0jpmrfe','Đơn hàng #00lcq913g70j6cmz3ysl đã được nhận',1,'2023-01-10 20:14:30','http://localhost:3000/user/order-history/00lcq913g70j6cmz3ysl','00lbxya79ra10codnolo'),('00lia1ynzsa0eawnt2ia','Đơn hàng #00lia1ynycveyes3d439 đã được đặt',1,'2023-05-30 16:04:47','http://localhost:3000/user/order-history/00lia1ynycveyes3d439','00lbxyf55plyjfwy0mkr'),('00lia35avbauml8gr4fe','Đơn hàng #00lia35auzw2mzhixqdr đã được đặt',0,'2023-05-30 16:37:56','http://localhost:3000/user/order-history/00lia35auzw2mzhixqdr','00lbxyf55plyjfwy0mkr'),('00lia36p9gnognlwimkq','Đơn hàng #00lia35auzw2mzhixqdr đã được duyệt',0,'2023-05-30 16:39:01','http://localhost:3000/user/order-history/00lia35auzw2mzhixqdr','00lbxyf55plyjfwy0mkr'),('00libf82qzjzdx2q9x95','Tài khoản của bạn đã bị khóa tính năng đặt hàng',0,'2023-05-31 15:03:47',NULL,'00lc62qftbcdqap8q8us'),('00libf846jydeqar2jk5','Tài khoản của bạn đã được mở khóa tính năng đặt hàng',0,'2023-05-31 15:03:49',NULL,'00lc62qftbcdqap8q8us'),('00libfdh7ivghj7r7i6a','Đơn hàng #00lia35auzw2mzhixqdr đã được vận chuyển',0,'2023-05-31 15:07:59','http://localhost:3000/user/order-history/00lia35auzw2mzhixqdr','00lbxyf55plyjfwy0mkr'),('00libfdic1z6s8ivddel','Đơn hàng #00lia35auzw2mzhixqdr đã được nhận',0,'2023-05-31 15:08:01','http://localhost:3000/user/order-history/00lia35auzw2mzhixqdr','00lbxyf55plyjfwy0mkr'),('00libgc6nn9veykm94tn','Đơn hàng #00libgc6n7o9zvgis99c đã được đặt',0,'2023-05-31 15:34:58','http://localhost:3000/user/order-history/00libgc6n7o9zvgis99c','00lbxyf55plyjfwy0mkr'),('00libgek6zfi1fem9izy','Đơn hàng #00libgc6n7o9zvgis99c đã được duyệt',0,'2023-05-31 15:36:49','http://localhost:3000/user/order-history/00libgc6n7o9zvgis99c','00lbxyf55plyjfwy0mkr'),('00libgemyivt3n6nqccj','Đơn hàng #00libgc6n7o9zvgis99c đã được vận chuyển',0,'2023-05-31 15:36:53','http://localhost:3000/user/order-history/00libgc6n7o9zvgis99c','00lbxyf55plyjfwy0mkr'),('00libgeomuyuz94vt80h','Đơn hàng #00libgc6n7o9zvgis99c đã được nhận',1,'2023-05-31 15:36:55','http://localhost:3000/user/order-history/00libgc6n7o9zvgis99c','00lbxyf55plyjfwy0mkr'),('00libhyl3mf1bo2dgijb','Đơn hàng #00libhyl3biwih0ov6pz đã được đặt',1,'2023-05-31 16:20:23','http://localhost:3000/user/order-history/00libhyl3biwih0ov6pz','00lbxyf55plyjfwy0mkr'),('00libhzlrswpibvl358b','Đơn hàng #00libhyl3biwih0ov6pz đã được duyệt',1,'2023-05-31 16:21:11','http://localhost:3000/user/order-history/00libhyl3biwih0ov6pz','00lbxyf55plyjfwy0mkr'),('00libhznvums6di0u8iq','Đơn hàng #00libhyl3biwih0ov6pz đã được vận chuyển',1,'2023-05-31 16:21:13','http://localhost:3000/user/order-history/00libhyl3biwih0ov6pz','00lbxyf55plyjfwy0mkr'),('00libhzoftzlnlpcadf9','Đơn hàng #00libhyl3biwih0ov6pz đã được nhận',1,'2023-05-31 16:21:14','http://localhost:3000/user/order-history/00libhyl3biwih0ov6pz','00lbxyf55plyjfwy0mkr'),('00libiadavsr8og0sp1m','Tài khoản của bạn đã bị khóa tính năng đặt hàng',0,'2023-05-31 16:29:33',NULL,'00lc61x0ora2w7rg8czf'),('00libiae2zf5992tv91b','Tài khoản của bạn đã được mở khóa tính năng đặt hàng',0,'2023-05-31 16:29:34',NULL,'00lc61x0ora2w7rg8czf'),('00libiafhpcx4pi5gw47','Tài khoản của bạn đã bị khóa tính năng đặt hàng',0,'2023-05-31 16:29:36',NULL,'00lbxyf55plyjfwy0mkr'),('00libiagtik91prknfpw','Tài khoản của bạn đã được mở khóa tính năng đặt hàng',0,'2023-05-31 16:29:37',NULL,'00lbxyf55plyjfwy0mkr');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` varchar(20) NOT NULL,
  `user_account_id` varchar(20) DEFAULT NULL,
  `branch_id` varchar(20) NOT NULL,
  `coupon_code` varchar(8) DEFAULT NULL,
  `received_type` varchar(20) NOT NULL,
  `received_address` varchar(150) NOT NULL,
  `received_at` datetime DEFAULT NULL,
  `delivery_charge` decimal(10,2) NOT NULL,
  `subtotal_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` varchar(15) NOT NULL,
  `note` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `customer_name` varchar(45) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oder__user_idx` (`user_account_id`),
  KEY `order__branch_idx` (`branch_id`),
  KEY `order__coupon_idx` (`coupon_code`),
  CONSTRAINT `order__branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order__coupon` FOREIGN KEY (`coupon_code`) REFERENCES `coupon` (`coupon_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order__user` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('00lbyj63gd4u3vuzts0p',NULL,'00lbbxo93zz4fnc3w85f',NULL,'delivery','180 Cao Lỗ, Phường 4, Quận 8, Hồ Chí Minh',NULL,15000.00,49000.00,64000.00,'cancelled',NULL,'2022-12-22 10:34:59','Nguyen Van A','0123456789',NULL),('00lbyjzgr0zrp8ogp9gj','00lbxya79ra10codnolo','00lbbxo93zz4fnc3w85f',NULL,'atShop','195 Đ. Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh 700000',NULL,0.00,124000.00,124000.00,'verified',NULL,'2022-12-22 10:57:49','Hứa Ðức Tâm','0123456789','dh51801268@student.stu.edu.vn'),('00lclixfgtq10jgk43qf','00lbxya79ra10codnolo','00laerkzo169m8cdfk34',NULL,'atShop','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh',NULL,0.00,147000.00,147000.00,'cancelled',NULL,'2023-01-07 12:46:57','Hứa Ðức Tâm','0123456789','dh51801268@student.stu.edu.vn'),('00lcq90ac9go4txz9d7l','00lbxya79ra10codnolo','00laerkzo169m8cdfk34',NULL,'atShop','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh',NULL,0.00,99000.00,99000.00,'cancelled',NULL,'2023-01-10 20:08:05','Hứa Ðức Tâm','0123456789','dh51801268@student.stu.edu.vn'),('00lcq913g70j6cmz3ysl','00lbxya79ra10codnolo','00laerkzo169m8cdfk34',NULL,'atShop','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh','2023-01-10 20:14:30',0.00,99000.00,99000.00,'received',NULL,'2023-01-10 20:08:42','Hứa Ðức Tâm','0123456789','dh51801268@student.stu.edu.vn'),('00lcq9czvn7zof2py2dt',NULL,'00lbbxo93zz4fnc3w85f',NULL,'delivery','180 Cao Lỗ, Phường 4, Quận 8, Hồ Chí Minh',NULL,15000.00,49000.00,64000.00,'verified',NULL,'2023-01-10 20:17:58','Tran Trung','0919191919',''),('00lcr12vr7o4zdvc98xh',NULL,'00lajqa04xl91iiiiugt',NULL,'delivery','Thủ Đức, Hồ Chí Minh',NULL,56775.00,94000.00,150775.00,'verified',NULL,'2023-01-11 09:13:55','Nguyen Hoang Tin','0983100721',''),('00lcr1fmcof05jc1eoce',NULL,'00laerkzo169m8cdfk34',NULL,'atShop','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh',NULL,0.00,169000.00,169000.00,'verified',NULL,'2023-01-11 09:23:49','nguyen Van A','0123456789',''),('00lia1ynycveyes3d439','00lbxyf55plyjfwy0mkr','00lbbxo93zz4fnc3w85f',NULL,'delivery','Đại học Công nghệ Sài Gòn, Khu chung cư Đồng Diều, 180 Cao Lỗ, Phường 4, Quận 8, Hồ Chí Minh',NULL,15000.00,57000.00,72000.00,'waitVerify',NULL,'2023-05-30 16:04:47','Diệp Bảo Quyên','0982100821','tempaccnth098@gmail.com'),('00lia21t6jr1uvw6dq0s',NULL,'00laerkzo169m8cdfk34',NULL,'atShop','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh',NULL,0.00,335000.00,335000.00,'cancelled',NULL,'2023-05-30 16:07:14','Nguyen Van A','0982100722',''),('00lia32uv2ex8zecugvj',NULL,'00laerkzo169m8cdfk34',NULL,'delivery','3 Tháng 2, Quận 10, Thành phố Hồ Chí Minh',NULL,15000.00,275000.00,290000.00,'cancelled',NULL,'2023-05-30 16:36:02','Nguyen Van A','0982100921',''),('00lia35auzw2mzhixqdr','00lbxyf55plyjfwy0mkr','00laerkzo169m8cdfk34',NULL,'atShop','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh','2023-05-31 15:08:01',0.00,35000.00,35000.00,'received',NULL,'2023-05-30 16:37:56','Diệp Bảo Quyên','0983300219','tempaccnth098@gmail.com'),('00libg8cbxq8sqx0k4z8',NULL,'00laerkzo169m8cdfk34',NULL,'delivery','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh','2023-05-31 15:36:26',15000.00,140000.00,155000.00,'received',NULL,'2023-05-31 15:31:59','Nguyen Van A','0982100821',''),('00libgc6n7o9zvgis99c','00lbxyf55plyjfwy0mkr','00laerkzo169m8cdfk34',NULL,'atShop','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh','2023-05-31 15:36:55',0.00,49000.00,49000.00,'received',NULL,'2023-05-31 15:34:58','Diệp Bảo Quyên','0983200821','tempaccnth098@gmail.com'),('00libhvoaagvm7qf5iri',NULL,'00laerkzo169m8cdfk34',NULL,'atShop','123 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh','2023-05-31 16:21:07',0.00,90000.00,90000.00,'received',NULL,'2023-05-31 16:18:07','Nguyen Van A','0982100821',''),('00libhyl3biwih0ov6pz','00lbxyf55plyjfwy0mkr','00laerkzo169m8cdfk34',NULL,'delivery','Chợ Lớn, Phường 14, Quận 5, Hồ Chí Minh','2023-05-31 16:21:14',17184.00,98000.00,115184.00,'received',NULL,'2023-05-31 16:20:23','Diệp Bảo Quyên','0987210082','tempaccnth098@gmail.com');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_confirm`
--

DROP TABLE IF EXISTS `order_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_confirm` (
  `staff_account_id` varchar(20) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`staff_account_id`,`time`,`order_id`),
  KEY `order_confirm__order_idx` (`order_id`),
  CONSTRAINT `order_confirm__order` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_confirm__staff` FOREIGN KEY (`staff_account_id`) REFERENCES `staff_account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_confirm`
--

LOCK TABLES `order_confirm` WRITE;
/*!40000 ALTER TABLE `order_confirm` DISABLE KEYS */;
INSERT INTO `order_confirm` VALUES ('00laapmat7kkyureuqlj','00lcq913g70j6cmz3ysl','verify','2023-01-10 20:14:27'),('00laapmat7kkyureuqlj','00lcq913g70j6cmz3ysl','delivery','2023-01-10 20:14:29'),('00laapmat7kkyureuqlj','00lcq913g70j6cmz3ysl','verifyReceived','2023-01-10 20:14:30'),('00laapmat7kkyureuqlj','00lcr1fmcof05jc1eoce','verify','2023-05-30 16:08:36'),('00laapmat7kkyureuqlj','00lia35auzw2mzhixqdr','verify','2023-05-30 16:39:01'),('00laapmat7kkyureuqlj','00lia35auzw2mzhixqdr','delivery','2023-05-31 15:07:59'),('00laapmat7kkyureuqlj','00lia35auzw2mzhixqdr','verifyReceived','2023-05-31 15:08:01'),('00laapmat7kkyureuqlj','00libg8cbxq8sqx0k4z8','verify','2023-05-31 15:36:03'),('00laapmat7kkyureuqlj','00libg8cbxq8sqx0k4z8','delivery','2023-05-31 15:36:24'),('00laapmat7kkyureuqlj','00libg8cbxq8sqx0k4z8','verifyReceived','2023-05-31 15:36:26'),('00laapmat7kkyureuqlj','00libgc6n7o9zvgis99c','verify','2023-05-31 15:36:49'),('00laapmat7kkyureuqlj','00libgc6n7o9zvgis99c','delivery','2023-05-31 15:36:53'),('00laapmat7kkyureuqlj','00libgc6n7o9zvgis99c','verifyReceived','2023-05-31 15:36:55'),('00laapmat7kkyureuqlj','00libhvoaagvm7qf5iri','verify','2023-05-31 16:21:05'),('00laapmat7kkyureuqlj','00libhvoaagvm7qf5iri','delivery','2023-05-31 16:21:06'),('00laapmat7kkyureuqlj','00libhvoaagvm7qf5iri','verifyReceived','2023-05-31 16:21:07'),('00laapmat7kkyureuqlj','00libhyl3biwih0ov6pz','verify','2023-05-31 16:21:11'),('00laapmat7kkyureuqlj','00libhyl3biwih0ov6pz','delivery','2023-05-31 16:21:13'),('00laapmat7kkyureuqlj','00libhyl3biwih0ov6pz','verifyReceived','2023-05-31 16:21:14'),('00laywj60oqif3qwosag','00lbyjzgr0zrp8ogp9gj','verify','2022-12-22 10:58:46'),('00laywj60oqif3qwosag','00lcq9czvn7zof2py2dt','verify','2023-01-10 20:26:15'),('00laywjn7a32cfx9o4pb','00lcr12vr7o4zdvc98xh','verify','2023-01-11 09:17:22');
/*!40000 ALTER TABLE `order_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `order_id` varchar(20) NOT NULL,
  `product_price_id` varchar(20) NOT NULL,
  `quality` int NOT NULL,
  `price_at_purchase` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`,`product_price_id`),
  KEY `order_detail__product_price_idx` (`product_price_id`),
  CONSTRAINT `order_detail__order` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_detail__product_price` FOREIGN KEY (`product_price_id`) REFERENCES `product_price` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES ('00lbyj63gd4u3vuzts0p','00lby0y6by6es721yx7d',1,49000.00),('00lbyjzgr0zrp8ogp9gj','00lby12hszb1r5ghkqbb',1,49000.00),('00lbyjzgr0zrp8ogp9gj','00lby1gig9p634fd8rnn',1,75000.00),('00lclixfgtq10jgk43qf','00lby0y6by6es721yx7d',3,49000.00),('00lcq90ac9go4txz9d7l','00lby0y6by6es721yx7d',1,49000.00),('00lcq90ac9go4txz9d7l','00lby1fx0pbgwfau4d8f',2,25000.00),('00lcq913g70j6cmz3ysl','00lby0y6by6es721yx7d',1,49000.00),('00lcq913g70j6cmz3ysl','00lby1fx0pbgwfau4d8f',2,25000.00),('00lcq9czvn7zof2py2dt','00lby12hszb1r5ghkqbb',1,49000.00),('00lcr12vr7o4zdvc98xh','00lby0y6by6es721yx7d',1,49000.00),('00lcr12vr7o4zdvc98xh','00lby0y6by9ykbfldl2p',1,45000.00),('00lcr1fmcof05jc1eoce','00lal8yvdn6tzaf1rrgm',1,59000.00),('00lcr1fmcof05jc1eoce','00lby0x7awagdzmn8wot',2,55000.00),('00lia1ynycveyes3d439','00lby1j9dgcgbk2bjj1k',3,19000.00),('00lia21t6jr1uvw6dq0s','00lbqe8g6zmeb7rzqjnr',4,69000.00),('00lia21t6jr1uvw6dq0s','00lbqe98ywanbjusa4wc',1,59000.00),('00lia32uv2ex8zecugvj','00lby0x7awagdzmn8wot',5,55000.00),('00lia35auzw2mzhixqdr','00lbqe8pl6zja8wkw1ur',1,35000.00),('00libg8cbxq8sqx0k4z8','00lbqe8pl6zja8wkw1ur',1,35000.00),('00libg8cbxq8sqx0k4z8','00lby0c8fiyhth7o38md',3,35000.00),('00libgc6n7o9zvgis99c','00lby12hszb1r5ghkqbb',1,49000.00),('00libhvoaagvm7qf5iri','00lby0c8fiyhth7o38md',1,35000.00),('00libhvoaagvm7qf5iri','00lby1bfhnetcr3o02vc',1,55000.00),('00libhyl3biwih0ov6pz','00lby12hszb1r5ghkqbb',2,49000.00);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `category_id` varchar(20) DEFAULT NULL,
  `cover_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_category_idx` (`category_id`),
  CONSTRAINT `product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('00la53uddgsuejncvnkb','CloudTea Oolong Nướng Caramel','Chiếc trà sữa chân ái dành cho tín đồ hảo ngọt gọi tên CloudTea Oolong Nướng Caramel. Sự kết hợp của foam trứng béo mịn, caramel thơm lừng, trà Oolong nướng rõ vị quyện kem sữa ngọt ngào, làm tan chảy vị giác tựa khoảnh khắc chạm môi người thương. Thêm bột cacao đậm đà và thạch Oolong nướng dai giòn giúp độ ngon nhân đôi.','hide','2022-11-06 15:40:56','2022-11-07 16:29:23','00la2ke4axm43gf9lzn2','dysy2wtr3ggfxvxcluhw'),('00la5424eq31x462fui6','CloudFee Hạnh Nhân Nướng','Vị đắng nhẹ từ cà phê phin truyền thống kết hợp Espresso Ý, lẫn chút ngọt ngào của kem sữa và lớp foam trứng cacao, nhấn thêm hạnh nhân nướng thơm bùi, kèm topping thạch cà phê dai giòn mê ly. Tất cả cùng quyện hoà trong một thức uống làm vị giác \"thức giấc\", thơm ngon hết nấc.','hide','2022-11-06 15:46:58','2022-11-07 16:29:19','00la2ke3pfw8976erpcr','pufzfl5nutuhwkhlj13x'),('00la543v5z49t3ejn0q5','CloudTea S’more Choco Marshmallow','Thức uống đậm chất mùa lễ hội dành cho ai mê đắm sô cô la tới rồi đây. Trà sữa S’more Choco Marshmallow với 3 tầng hương vị đầy hấp dẫn. Tầng foam cheese béo ngậy, rắc thêm vụn bánh quy phô mai giòn tan và marshmallow mềm mịn. Tầng trà sữa Oolong nướng đậm hương, êm vị hòa quyện cùng kem sữa và sô cô la ngọt ngào. Và không thể bỏ qua, thạch Oolong nướng nguyên chất, càng nhai càng cuốn. Thử là mê tít, hệt cái hôn của người thương!','show','2022-11-06 15:48:19',NULL,'00lbxzmi5qux4e7av16o','hysurkordkdoic2f9l1p'),('00la546h0zyecqs8ride','Cà Phê Sữa Đá','Cà phê Đắk Lắk nguyên chất được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.','show','2022-11-06 15:50:21',NULL,'00la2ke30nrqapk3rinv','z00ylscbowkybzyl2nvt'),('00la549w2s8tagv3j5f8','The Coffee House Sữa Đá','Thức uống giúp tỉnh táo tức thì để bắt đầu ngày mới thật hứng khởi. Không đắng khét như cà phê truyền thống, The Coffee House Sữa Đá mang hương vị hài hoà đầy lôi cuốn. Là sự đậm đà của 100% cà phê Arabica Cầu Đất rang vừa tới, biến tấu tinh tế với sữa đặc và kem sữa ngọt ngào cực quyến rũ. Càng hấp dẫn hơn với topping thạch 100% cà phê nguyên chất giúp giữ trọn vị ngon đến ngụm cuối cùng.','show','2022-11-06 15:53:00',NULL,'00la2ke30nrqapk3rinv','szrixakbocvxjkrffzhr'),('00la5b6sgn9gikm64f9a','Hi Tea Đá Tuyết Yuzu Vải','Vị trà hoa Hibiscus chua chua, kết hợp cùng đá tuyết Yuzu mát lạnh tái tê, thêm miếng vải căng mọng, ngọt ngào sẽ khiến bạn thích thú ngay từ lần thử đầu tiên.','show','2022-11-06 19:06:33',NULL,'00lbxznlg82nyg91dij7','roehirwp1y0vk6yqco9u'),('00la5b9alarkkg1gxvdp','Hi Tea Đá Tuyết Xoài Đào','Những miếng đào vàng ươm kết hợp với đá tuyết vị xoài mát lành, cùng nền trà hoa Hibiscus chua dịu đem đến cảm giác lạ miệng, hấp dẫn đến tận ngụm cuối cùng.','show','2022-11-06 19:08:30',NULL,'00lbxznlg82nyg91dij7','fd9fgimfrbtuo4cnt99s'),('00la69qsvph7oxq1hcim','Hi Tea Đào','Sự kết hợp ăn ý giữa Đào cùng trà hoa Hibiscus, tạo nên tổng thể hài hoà dễ gây “thương nhớ” cho team thích món thanh mát, có vị chua nhẹ.','show','2022-11-07 11:13:53',NULL,'00lbxznfsd9xrcsozz02','dthmd8lega6d5eempoyc'),('00la6fzv5nvlowgjt4ng','Hi Tea Vải','Chút ngọt ngào của Vải, mix cùng vị chua thanh tao từ trà hoa Hibiscus, mang đến cho bạn thức uống đúng chuẩn vừa ngon, vừa healthy.','show','2022-11-07 14:08:54',NULL,'00lbxznfsd9xrcsozz02','hjojcvb6eqgsmfdfkb2w'),('00la6j7odrtmxopbm7bk','Hi Tea Yuzu Trân Châu','Không chỉ nổi bật với sắc đỏ đặc trưng từ trà hoa Hibiscus, Hi-Tea Yuzu còn gây ấn tượng với topping Yuzu (quýt Nhật) lạ miệng, kết hợp cùng trân châu trắng dai giòn sần sật, nhai vui vui.','show','2022-11-07 15:38:57',NULL,'00lbxznfsd9xrcsozz02','wdk5z9teooernlifjz0q'),('00laknrkkvbjmaeadert','Hi Tea Dâu Tây Mận Muối Aloe Vera','Sự kết hợp độc đáo giữa 3 sắc thái hương vị khác nhau: trà hoa Hibiscus chua thanh, Mận muối mặn mặn và Dâu tây tươi Đà Lạt cô đặc ngọt dịu. Ngoài ra, topping Aloe Vera tươi mát, ngon ngất ngây, đẹp đắm say, hứa hẹn sẽ khuấy đảo hè này.','show','2022-11-17 12:55:10',NULL,'00lbxznfsd9xrcsozz02','kd4p2u57mrz2eaylwjde'),('00laknu4iurdqw7kksda','Hi Tea Xoài Aloe Vera','Vị ngọt thanh, thơm phức từ xoài chín mọng kết hợp cùng vị chua đặc trưng của trà hoa Hibiscus tự nhiên, sẽ khiến bạn khó lòng quên được thức uống “chân ái” mùa hè này. Đặc biệt, topping Aloe Vera tự nhiên không chỉ nhâm nhi vui miệng mà còn giúp bạn “nâng tầm nhan sắc”.','show','2022-11-17 12:57:10',NULL,'00lbxznfsd9xrcsozz02','ygv6xaycbkwkk73hr9ti'),('00laknv3b3e63rg0j4ac','Hi Tea Phúc Bồn Tử Mandarin','Nền trà Hibiscus thanh mát, quyện vị chua chua ngọt ngọt của phúc bồn tử 100% tự nhiên cùng quýt mọng nước mang đến cảm giác sảng khoái tức thì.','show','2022-11-17 12:57:55',NULL,'00lbxznfsd9xrcsozz02','ggoap1r0lh5k8rtp9xqj'),('00lakq66bh0keoziwl4f','werfghm','ewrgt','show','2022-11-17 14:02:31','2022-12-22 00:58:53','00la2ke30nrqapk3rinv','hkm0ya58h8hwmigbhpfi'),('00lbbybkgwcqvialf3gd','Test product','No describe','show','2022-12-06 15:20:26','2022-12-22 00:58:50','00lbby59cc14zj7jex58','w08xmmoamt30w4nsdfk1'),('00lby0c8fcpi8zdvt3j6','Cà Phê Sữa Nóng','Cà phê được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.','show','2022-12-22 01:47:52',NULL,'00la2ke30nrqapk3rinv','fhubankfddfjct7iweyv'),('00lby0groz3zn08ji0je','Bạc Sỉu','Bạc sỉu chính là \"Ly sữa trắng kèm một chút cà phê\". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.','show','2022-12-22 01:51:24',NULL,'00la2ke30nrqapk3rinv','b8ami4x4idwtymyumgc6'),('00lby0lu39aiu7t26kqn','Bạc Sỉu Nóng','Bạc sỉu chính là \"Ly sữa trắng kèm một chút cà phê\". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.','show','2022-12-22 01:55:20',NULL,'00la2ke30nrqapk3rinv','yodqm14ggi5er4ondohz'),('00lby0o9plwjm3ee84nj','Cà Phê Đen Đá','Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.','show','2022-12-22 01:57:14','2023-05-31 16:24:09','00la2ke30nrqapk3rinv','lbvzxr8cwwh0ypflh954'),('00lby0rkou7ck8n4ug5u','Cà Phê Đen Nóng','Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.','show','2022-12-22 01:59:48',NULL,'00la2ke30nrqapk3rinv','agdgar5qx8suycljrk6c'),('00lby0u6n78y6u49cuqo','Cà Phê Sữa Đá Chai Fresh 250ML','Vẫn là hương vị cà phê sữa đậm đà quen thuộc của The Coffee House nhưng khoác lên mình một chiếc áo mới tiện lợi hơn, tiết kiệm hơn phù hợp với bình thường mới, giúp bạn tận hưởng một ngày dài trọn vẹn. *Sản phẩm dùng ngon nhất trong ngày. *Sản phẩm mặc định mức đường và không đá.','show','2022-12-22 02:01:50',NULL,'00la2ke30nrqapk3rinv','stpcxartlnb1lhkp4zhv'),('00lby0x7as2p35i01zmb','Caramel Macchiato Đá','Caramel Macchiato sẽ mang đến một sự ngạc nhiên thú vị khi vị thơm béo của bọt sữa, sữa tươi, vị đắng thanh thoát của cà phê Espresso hảo hạng và vị ngọt đậm của sốt caramel được gói gọn trong một tách cà phê.','show','2022-12-22 02:04:11',NULL,'00lbxynvkgs4eupbt6jk','zw0oayyenmhh0ung4cpi'),('00lby0y6bpoqbe0ic9jp','Cold Brew Phúc Bồn Tử','Vị chua ngọt của trái phúc bồn tử, làm dậy lên hương vị trái cây tự nhiên vốn sẵn có trong hạt cà phê, hòa quyện thêm vị đăng đắng, ngọt dịu nhẹ nhàng của Cold Brew 100% hạt Arabica Cầu Đất để mang đến một cách thưởng thức cà phê hoàn toàn mới, vừa thơm lừng hương cà phê quen thuộc, vừa nhẹ nhàng và thanh mát bởi hương trái cây đầy thú vị.','show','2022-12-22 02:04:56',NULL,'00lbxyo13u3r0ixxzm7a','rgl06at3y64pygymkynn'),('00lby12hstkuif4hbzck','CloudFee Hạnh Nhân Nướng','Vị đắng nhẹ từ cà phê phin truyền thống kết hợp Espresso Ý, lẫn chút ngọt ngào của kem sữa và lớp foam trứng cacao, nhấn thêm hạnh nhân nướng thơm bùi, kèm topping thạch cà phê dai giòn mê ly. Tất cả cùng quyện hoà trong một thức uống làm vị giác \"thức giấc\", thơm ngon hết nấc.','show','2022-12-22 02:08:18',NULL,'00lbxzm9zrzpu4nxngmw','uz62f32wci1e42hf0bck'),('00lby1bfhdcxswhu1b6b','Trà Long Nhãn Hạt Sen','Thức uống mang hương vị của nhãn, của sen, của trà Oolong đầy thanh mát cho tất cả các thành viên trong dịp Tết này. An lành, thư thái và đậm đà chính là những gì The Coffee House mong muốn gửi trao đến bạn và gia đình.','show','2022-12-22 02:15:15',NULL,'00lbxzmxydtlqmp5n7zv','ivqspz3tndr46k0d2upb'),('00lby1dyb4lzl5h6gl6y','Trà Sữa Sô Cô La (Nóng)','Trong tiết trời se lạnh, còn gì tuyệt hơn khi được nhâm nhi ly Trà Sữa Sô Cô La ấm nóng. Hương vị trà Oolong nướng quen thuộc kết hợp cùng sô cô la ngọt ngào, thêm topping marshmallow mềm mịn, cứ uống là ghiền.','show','2022-12-22 02:17:12',NULL,'00lbxzn4mw2r4lkptjzn','marxjb8nchrwbim6incy'),('00lby1fx0fnxv6j5ik1r','Bánh Mì Gậy Gà Kim Quất','Phiên bản nâng cấp với trọng lượng tăng 80% so với bánh mì que thông thường, đem đến cho bạn bữa ăn nhanh gọn mà vẫn đầy đủ dinh dưỡng. Cắn một miếng là mê mẩn bởi vỏ bánh nướng giòn rụm, nhân đậm vị với từng miếng thịt gà mềm, ướp sốt kim quất chua ngọt, thơm nức đặc trưng. Càng \"đúng bài\" hơn khi thưởng thức kèm Cà phê đượm vị hoặc trà Hi-Tea thanh mát.','show','2022-12-22 02:18:44',NULL,'00lbxznu7v1ms1cucaw7','d9uda71pr8tkokfktimb'),('00lby1j9dbbecpibxcse','Mochi Kem Phúc Bồn Tử','Bao bọc bởi lớp vỏ Mochi dẻo thơm, bên trong là lớp kem lạnh cùng nhân phúc bồn tử ngọt ngào. Gọi 1 chiếc Mochi cho ngày thật tươi mát. Sản phẩm phải bảo quán mát và dùng ngon nhất trong 2h sau khi nhận hàng.','show','2022-12-22 02:21:20',NULL,'00lbxzo0jki6oshcvzgt','vqwypz4e0wnwz0i8mod6'),('00lby1kh730zldju0gra','Mít Sấy','Mít sấy khô vàng ươm, giòn rụm, giữ nguyên được vị ngọt lịm của mít tươi.','hide','2022-12-22 02:22:17',NULL,'00lby1jexzq49u40gjjo','rpyq3wjjkhrnt5uggiub'),('00lca3x0pfxea7192vo4','test','test','show','2022-12-30 13:01:15','2022-12-30 14:27:45','00la2ke30nrqapk3rinv','yl8mzhwqw02d8ue6lsil'),('00lcbi6di8a3ocqmu8nd','tes','1234trg','hide','2022-12-31 12:28:13','2023-01-04 11:46:08','00la2ke30nrqapk3rinv','i8uzwnjyv8ybl5tpkw1e'),('00lcbi6yt4xpb7r3qwrv','tes','1234trg','hide','2022-12-31 12:28:40','2023-01-10 19:06:37','00la2ke30nrqapk3rinv','tz94eneiytpd2ia8dasr'),('00lcbin4o0t4p3iaowfa','Tets','weydfh','hide','2022-12-31 12:41:14','2023-01-04 11:45:50','00la2ke30nrqapk3rinv','to6qlmq3jkz9nedo5ozz'),('00lcbin8he5pwx6xf3wf','Tets','weydfh','hide','2022-12-31 12:41:19','2023-01-10 19:06:32','00la2ke30nrqapk3rinv','bnb3jpyvtcya2ix6gqiz'),('00lcbio48pplq3si0695','Tets','weydfh','hide','2022-12-31 12:42:00','2023-01-04 11:45:44','00la2ke30nrqapk3rinv','du0s1ywgqzxi38jlxlbr'),('00lcbioalhvumdvzyy5z','Tets','weydfh','hide','2022-12-31 12:42:09','2023-01-04 11:45:35','00la2ke30nrqapk3rinv','pmavgq7dtqnqmuqwfu2a'),('00lcq6vnkipu57u0tg1o','Ca phe thuong','No desc','show','2023-01-10 19:08:29','2023-01-10 19:08:45','00la2ke30nrqapk3rinv','ec4lgbi4qhxgb9rjykhx'),('00libh6cjltt0n8wuink','C','wejfnerjvfd','hide','2023-05-31 15:58:26','2023-05-31 16:00:05','00la2ke30nrqapk3rinv','dkpigcfvrtja3hrphmsg'),('00libh88n2ywo5f3gc7k','C','wejfnerjvfd','hide','2023-05-31 15:59:54','2023-05-31 16:00:01','00la2ke30nrqapk3rinv','wdhy4ch5xxma1b4ly783'),('00libhaok2rdlowsbqau','Cà phê đen đá','So cool for today','show','2023-05-31 16:01:48','2023-05-31 16:24:13','00la2ke30nrqapk3rinv','bdgflvrplr17nmxscfbi'),('00libi50gvx9y51jqdti','Cà phê đen đá','So cool for today','show','2023-05-31 16:25:23',NULL,'00la2ke30nrqapk3rinv','hmipuirakyendy26qiqb');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `product_id` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  KEY `image__poduct_idx` (`product_id`),
  CONSTRAINT `image__poduct` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES ('00lbbybkgwcqvialf3gd','oem3dhrowqmvxd7eyau8'),('00la546h0zyecqs8ride','witlpnemrreczqr17ijr'),('00laknu4iurdqw7kksda','qkwy8jpivewf58zaxibc'),('00laknu4iurdqw7kksda','ispthqhdxsvednssnamt'),('00laknrkkvbjmaeadert','z82yzerb20cixf32y6zs'),('00laknrkkvbjmaeadert','lwfe9jvggklthytmeavh'),('00la6j7odrtmxopbm7bk','swp79cgm5auq5wboilsj'),('00la6j7odrtmxopbm7bk','gpwva7otsvdsmxq8wnqj'),('00la6fzv5nvlowgjt4ng','sykynjqbtfxmbqy6fuvl'),('00la6fzv5nvlowgjt4ng','x9by2cuzzpg6vk38zohz'),('00la69qsvph7oxq1hcim','sdzidynamruwt7a22drf'),('00la69qsvph7oxq1hcim','affxzti8qnvwe2cp3c21'),('00la5b9alarkkg1gxvdp','nlsej5qyqizr9kl9fahm'),('00la5b9alarkkg1gxvdp','mhfhzibewnq2yaucvkrd'),('00la5b6sgn9gikm64f9a','ujiysartnc1ofqcshwme'),('00la5b6sgn9gikm64f9a','vwn9khwz0xpetojpq0rd'),('00lby0groz3zn08ji0je','mgd9mwyjykmaqoidxogm'),('00lby0o9plwjm3ee84nj','lrspum0959lvyi1yp4iv'),('00lby0u6n78y6u49cuqo','pvqidmqysehq36rsuv2c'),('00lby0u6n78y6u49cuqo','vafuqe60uxfaxrfsk9os'),('00lby0u6n78y6u49cuqo','kdukyver5rfx0xdn6iyk'),('00lby1j9dbbecpibxcse','zumez0nfxgcudfwbqs7d'),('00lca3x0pfxea7192vo4','do2zdhqne8i6zb7bkrkl'),('00lca3x0pfxea7192vo4','u7sxzqbybbxmbfdj9ljy'),('00lby0x7as2p35i01zmb','lbu4qgfj3oyytl1xggho'),('00lby0x7as2p35i01zmb','e9mtrmof9kk1jvfcd3nf'),('00lcq6vnkipu57u0tg1o','nppke4ecjmglqfts4coa'),('00libh88n2ywo5f3gc7k','ftc4sghf1vkatofoncmx'),('00libhaok2rdlowsbqau','hdbzbvnq7ngxrqzyiulm'),('00libi50gvx9y51jqdti','q1xawves9oj5p2nglx3w');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_price`
--

DROP TABLE IF EXISTS `product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_price` (
  `id` varchar(20) NOT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `product_size_id` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prod_price__prod_size_idx` (`product_size_id`),
  KEY `prod_price__product_idx` (`product_id`),
  CONSTRAINT `prod_price__prod_size` FOREIGN KEY (`product_size_id`) REFERENCES `product_size` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prod_price__product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_price`
--

LOCK TABLES `product_price` WRITE;
/*!40000 ALTER TABLE `product_price` DISABLE KEYS */;
INSERT INTO `product_price` VALUES ('00la5424eqcgd09t46yl','00la5424eq31x462fui6','00la2osqk5j8gyqjx765',49000.00,'2022-11-06 15:46:58','2022-11-13 13:11:35'),('00la5424eqkglxda2zzi',NULL,'00la2osmmz73s5uz7gn3',59000.00,'2022-11-07 13:27:03','2022-11-13 13:11:35'),('00la5424eqknrtycaad8',NULL,'00la2oss7jzpyvo0krwh',55000.00,'2022-11-07 13:28:14','2022-11-13 13:11:35'),('00la543v5zcxt2jostj9','00la543v5z49t3ejn0q5','00la2oss7jzpyvo0krwh',55000.00,'2022-11-06 15:48:19','2022-12-22 02:06:59'),('00la543v5zmf4g0vtgnp','00la543v5z49t3ejn0q5','00la2osqk5j8gyqjx765',49000.00,'2022-11-06 15:48:19','2022-12-22 02:06:59'),('00la543v5zyw4esmm69v','00la543v5z49t3ejn0q5','00la2osmmz73s5uz7gn3',59000.00,'2022-11-06 15:48:19','2022-12-22 02:06:59'),('00la546h0z7s3y92egrb','00la546h0zyecqs8ride','00la2oss7jzpyvo0krwh',55000.00,'2022-11-06 15:50:21','2022-12-22 01:12:34'),('00la546h0zcu8j4gdhmq','00la546h0zyecqs8ride','00la2osqk5j8gyqjx765',49000.00,'2022-11-06 15:50:21','2022-12-22 01:12:34'),('00la546h0zoe3wm6ieb9','00la546h0zyecqs8ride','00la2osmmz73s5uz7gn3',59000.00,'2022-11-06 15:50:21','2022-12-22 01:12:34'),('00la549w2ski4h4l6nwl','00la549w2s8tagv3j5f8','00la2osqk5j8gyqjx765',1000.00,'2022-11-06 15:53:00','2023-05-31 15:41:15'),('00la549w2solmip9t4c9','00la549w2s8tagv3j5f8','00la2oss7jzpyvo0krwh',12.00,'2022-11-06 15:53:00','2023-05-31 15:41:15'),('00la549w2sz3uhlzpymv','00la549w2s8tagv3j5f8','00la2osmmz73s5uz7gn3',11.00,'2022-11-07 14:06:40','2023-05-31 15:41:15'),('00la5b6sgomc0ppbkx56','00la5b6sgn9gikm64f9a','00la2osmmz73s5uz7gn3',10000.00,'2022-11-06 19:06:33','2022-12-22 01:41:19'),('00la5b9alaefbh6um05g','00la5b9alarkkg1gxvdp','00la2osmmz73s5uz7gn3',10000.00,'2022-11-06 19:08:30','2022-12-22 01:40:09'),('00la69qsvp2c0beo948j','00la69qsvph7oxq1hcim','00la2osmmz73s5uz7gn3',1111111.00,'2022-11-07 11:13:53','2022-12-22 01:38:52'),('00la6ffsmhglkao37fvk','00la549w2s8tagv3j5f8','00la2osqk5j8gyqjx765',1000.00,'2022-11-06 15:53:00','2023-05-31 15:41:15'),('00la6fq0fifupb8h0nw5','00la549w2s8tagv3j5f8','00la2osqk5j8gyqjx765',10.00,'2022-11-06 15:53:00','2023-05-31 15:41:15'),('00la6fzv5nl8nofltrzo','00la6fzv5nvlowgjt4ng','00la2osmmz73s5uz7gn3',14.00,'2022-11-07 14:27:56','2022-12-22 01:37:26'),('00la6gnuosgwcd9675jv','00la6fzv5nvlowgjt4ng','00la2osqk5j8gyqjx765',0.00,'2022-11-07 14:27:56','2022-12-22 01:37:26'),('00la6go0rwcm7m9tsav9','00la6fzv5nvlowgjt4ng','00la2oss7jzpyvo0krwh',18.00,'2022-11-07 14:27:56','2022-12-22 01:37:26'),('00la6gpclx7lpxpa22rf','00la5424eq31x462fui6','00la2osqk5j8gyqjx765',1.00,'2022-11-07 15:20:51','2022-11-13 13:11:35'),('00la6gpclxfn2bu08g38','00la5424eq31x462fui6','00la2osmmz73s5uz7gn3',1.00,'2022-11-07 15:20:51','2022-11-13 13:11:35'),('00la6gpclxihzbgiqnkp','00la5424eq31x462fui6','00la2oss7jzpyvo0krwh',1.00,'2022-11-07 15:20:51','2022-11-13 13:11:35'),('00la6iki354fe58h96u2','00la543v5z49t3ejn0q5','00la2osqk5j8gyqjx765',0.00,'2022-11-07 15:20:56','2022-12-22 02:06:59'),('00la6iki35nehjhb67ip','00la543v5z49t3ejn0q5','00la2osmmz73s5uz7gn3',0.00,'2022-11-07 15:20:56','2022-12-22 02:06:59'),('00la6j7odr6bncw3yfl8','00la6j7odrtmxopbm7bk','00la2osmmz73s5uz7gn3',0.00,'2022-11-07 15:49:08','2022-12-22 01:35:58'),('00la6j7odryb58zbmomg','00la6j7odrtmxopbm7bk','00la2osqk5j8gyqjx765',0.00,'2022-11-07 15:49:08','2022-12-22 01:35:58'),('00la6jnpnxbg8oh4zl1f','00la546h0zyecqs8ride','00la2oss7jzpyvo0krwh',0.00,'2022-11-07 15:51:25','2022-12-22 01:12:34'),('00la6jnpnxc7voj4aseg','00la546h0zyecqs8ride','00la2osqk5j8gyqjx765',0.00,'2022-11-07 15:51:25','2022-12-22 01:12:34'),('00la6jntcctcn79rz71o','00la543v5z49t3ejn0q5','00la2oss7jzpyvo0krwh',0.00,'2022-11-07 15:51:30','2022-12-22 02:06:59'),('00la6jnww59d1ktigs0g','00la549w2s8tagv3j5f8','00la2oss7jzpyvo0krwh',0.00,'2022-11-07 15:51:35','2023-05-31 15:41:15'),('00la6l036y0xp5ggrs3e','00la5424eq31x462fui6','00la2osqk5j8gyqjx765',0.00,'2022-11-07 16:29:13','2022-11-13 13:11:35'),('00la6l036youyvafz7o5','00la5424eq31x462fui6','00la2osmmz73s5uz7gn3',0.00,'2022-11-07 16:29:13','2022-11-13 13:11:35'),('00laeyhjn25jw6eosjfa','00la543v5z49t3ejn0q5','00la2oss7jzpyvo0krwh',5000.00,'2022-11-13 13:08:41','2022-12-22 02:06:59'),('00laeyhjn26uuwqaczkc','00la543v5z49t3ejn0q5','00la2osmmz73s5uz7gn3',10000.00,'2022-11-13 13:08:41','2022-12-22 02:06:59'),('00laeyhjn2ki7q7vlagp','00la543v5z49t3ejn0q5','00la2osqk5j8gyqjx765',8000.00,'2022-11-13 13:08:41','2022-12-22 02:06:59'),('00laeyhzvbtwwnlz5nnm','00la5b6sgn9gikm64f9a','00la2osmmz73s5uz7gn3',20000.00,'2022-11-13 13:09:02','2022-12-22 01:41:19'),('00laeyhzvbwrfmghmodg','00la5b6sgn9gikm64f9a','00la2osqk5j8gyqjx765',10000.00,'2022-11-13 13:09:02','2022-12-22 01:41:19'),('00laeyl9d985tj0n5exs','00la543v5z49t3ejn0q5','00la2oss7jzpyvo0krwh',5000.00,'2022-11-17 14:22:52','2022-12-22 02:06:59'),('00laeyl9d9xk8er356tu','00la543v5z49t3ejn0q5','00la2osmmz73s5uz7gn3',10000.00,'2022-11-17 14:22:52','2022-12-22 02:06:59'),('00laeyl9d9zkcqsr5z1k','00la543v5z49t3ejn0q5','00la2osqk5j8gyqjx765',8000.00,'2022-11-17 14:22:52','2022-12-22 02:06:59'),('00laeyog13n3xka7jz4m','00la5b6sgn9gikm64f9a','00la2osqk5j8gyqjx765',1000.00,'2022-11-13 13:14:03','2022-12-22 01:41:19'),('00laeyog13qiu5kgalsw','00la5b6sgn9gikm64f9a','00la2osmmz73s5uz7gn3',2000.00,'2022-11-17 14:24:13','2022-12-22 01:41:19'),('00laknrkkv668z50l0ks','00laknrkkvbjmaeadert','00la2osmmz73s5uz7gn3',65000.00,'2022-11-17 14:00:02','2022-12-22 01:34:34'),('00laknrkkviv453816nq','00laknrkkvbjmaeadert','00la2osqk5j8gyqjx765',45000.00,'2022-11-17 12:55:10','2022-12-22 01:34:34'),('00laknrkkvyd5osvwks8','00laknrkkvbjmaeadert','00la2oss7jzpyvo0krwh',55000.00,'2022-11-17 12:55:10','2022-12-22 01:34:34'),('00laknu4iubs214dzkwg','00laknu4iurdqw7kksda','00la2osqk5j8gyqjx765',49000.00,'2022-11-17 13:54:12','2022-12-22 01:32:24'),('00laknu4iufga51wkw9a','00laknu4iurdqw7kksda','00la2oss7jzpyvo0krwh',55000.00,'2022-11-17 13:54:12','2022-12-22 01:32:24'),('00laknu4iuzeojefbb8j','00laknu4iurdqw7kksda','00la2osmmz73s5uz7gn3',59000.00,'2022-11-17 13:54:12','2022-12-22 01:32:24'),('00laknv3b3f9358vl9vc','00laknv3b3e63rg0j4ac','00la2osqk5j8gyqjx765',49000.00,'2022-11-17 12:57:55','2022-12-22 01:30:46'),('00laknv3b3k88ujxdhkp','00laknv3b3e63rg0j4ac','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 01:30:46',NULL),('00laknv3b3vp9l2ziclt','00laknv3b3e63rg0j4ac','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 01:30:46',NULL),('00lakq022c50nk9k47vu','00laknrkkvbjmaeadert','00la2osqk5j8gyqjx765',15.00,'2022-11-17 13:57:46','2022-12-22 01:34:34'),('00lakq0s3kmyfipbp5b6','00laknrkkvbjmaeadert','00la2osqk5j8gyqjx765',8.00,'2022-11-17 14:00:02','2022-12-22 01:34:34'),('00lakq66boiz1u9f2qmk','00lakq66bh0keoziwl4f','00la2osmmz73s5uz7gn3',14.00,'2022-11-17 14:02:31','2022-12-22 00:58:53'),('00lal8yvdn1yq74ge71s','00la69qsvph7oxq1hcim','00la2osqk5j8gyqjx765',8000.00,'2022-11-18 19:31:15','2022-12-22 01:38:52'),('00lal8yvdn6tzaf1rrgm','00la69qsvph7oxq1hcim','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 01:38:52',NULL),('00lb3ffp1orbuqkxgb8l','00la69qsvph7oxq1hcim','00lb3fav0h8hbgs6f7vj',19000.00,'2022-11-30 16:10:24','2022-12-22 01:38:52'),('00lb3fg17i60mjick14o','00laknv3b3e63rg0j4ac','00lb3fav0h8hbgs6f7vj',49000.00,'2022-12-22 01:30:46',NULL),('00lb3fgpv61zoxadpqes','00la69qsvph7oxq1hcim','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 01:38:52',NULL),('00lb3fhfjqbby4nujgse','00la69qsvph7oxq1hcim','00lb3fav0h8hbgs6f7vj',49000.00,'2022-12-22 01:38:52',NULL),('00lbbybkh13hdc91ie3e','00lbbybkgwcqvialf3gd','00la2osmmz73s5uz7gn3',9999.00,'2022-12-06 15:59:42','2022-12-22 00:58:50'),('00lbbybkh17s35b3s649','00lbbybkgwcqvialf3gd','00la2oss7jzpyvo0krwh',110.00,'2022-12-06 15:27:48','2022-12-22 00:58:50'),('00lbbybkh1c4dy980w2g','00lbbybkgwcqvialf3gd','00lbbyaod63zxosejwty',1110.00,'2022-12-06 15:58:58','2022-12-22 00:58:50'),('00lbbys63rkqq2al92xu','00lbbybkgwcqvialf3gd','00lb3fav0h8hbgs6f7vj',727.00,'2022-12-06 15:59:42','2022-12-22 00:58:50'),('00lbqe8g6zmeb7rzqjnr','00la543v5z49t3ejn0q5','00la2osmmz73s5uz7gn3',69000.00,'2022-12-22 02:06:59',NULL),('00lbqe8pl6zja8wkw1ur','00la546h0zyecqs8ride','00la2oss7jzpyvo0krwh',35000.00,'2022-12-22 01:12:34',NULL),('00lbqe8ycuy1jvctrfoi','00la549w2s8tagv3j5f8','00la2oss7jzpyvo0krwh',45000.00,'2023-05-31 15:41:15',NULL),('00lbqe98yw5t6c9etcgi','00la5b6sgn9gikm64f9a','00lb3fav0h8hbgs6f7vj',3.00,'2022-12-16 17:55:18','2022-12-22 01:41:19'),('00lbqe98ywanbjusa4wc','00la5b6sgn9gikm64f9a','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 01:41:19',NULL),('00lbqe98ywjd81uv18bl','00la5b6sgn9gikm64f9a','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 01:41:19',NULL),('00lbqe9esx2svbg2l5qe','00la5b9alarkkg1gxvdp','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 01:40:09',NULL),('00lbqe9sxnubpasecfxk','00la6fzv5nvlowgjt4ng','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 01:37:26',NULL),('00lbqe9sxnxb9jm9y88a','00la6fzv5nvlowgjt4ng','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 01:37:26',NULL),('00lbqea3p4jb1oa7ki1h','00la6j7odrtmxopbm7bk','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 01:35:58',NULL),('00lbqea3p5h5p4kxmx6q','00la6j7odrtmxopbm7bk','00lb3fav0h8hbgs6f7vj',49000.00,'2022-12-22 01:35:58',NULL),('00lbqeaa7iq0n22pjpcp','00laknrkkvbjmaeadert','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 01:34:34',NULL),('00lbqeai44ejpl06r5et','00laknu4iurdqw7kksda','00lb3fav0h8hbgs6f7vj',49000.00,'2022-12-22 01:32:24',NULL),('00lbqed93aagn5269ysg','00lakq66bh0keoziwl4f','00la2osmmz73s5uz7gn3',1.00,'2022-12-16 17:58:25','2022-12-22 00:58:53'),('00lbqed93an3tci9z2kh','00lakq66bh0keoziwl4f','00la2oss7jzpyvo0krwh',4.00,'2022-12-16 17:58:25','2022-12-22 00:58:53'),('00lbqfap1ym4ew8afnna','00lbbybkgwcqvialf3gd','00la2oss7jzpyvo0krwh',11110.00,'2022-12-16 18:24:26','2022-12-22 00:58:50'),('00lbxyq0lnbwzfx6jpas','00la549w2s8tagv3j5f8','00la2osmmz73s5uz7gn3',49000.00,'2022-12-22 01:02:36','2023-05-31 15:41:15'),('00lbxyq0lnkb1nvizojk','00la549w2s8tagv3j5f8','00lb3fav0h8hbgs6f7vj',39000.00,'2022-12-22 01:02:36','2023-05-31 15:41:15'),('00lbxyqa8eovge8wzz2l','00la549w2s8tagv3j5f8','00la2osmmz73s5uz7gn3',49000.00,'2023-05-31 15:41:15',NULL),('00lbxyqa8eshkgcbuwke','00la549w2s8tagv3j5f8','00lb3fav0h8hbgs6f7vj',39000.00,'2023-05-31 15:41:15',NULL),('00lbxz2tlold50551j0e','00la546h0zyecqs8ride','00la2osmmz73s5uz7gn3',39000.00,'2022-12-22 01:12:34',NULL),('00lbxz2tlou3ly17mlkm','00la546h0zyecqs8ride','00lb3fav0h8hbgs6f7vj',29000.00,'2022-12-22 01:12:34',NULL),('00lbxzsc4xl08cakwwc4','00laknu4iurdqw7kksda','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 01:32:24',NULL),('00lbxzsc4xmop4u382y7','00laknu4iurdqw7kksda','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 01:32:24',NULL),('00lbxzv40p0ktv5ojq9c','00laknrkkvbjmaeadert','00lb3fav0h8hbgs6f7vj',49000.00,'2022-12-22 01:34:34',NULL),('00lbxzv40pv02woo8keh','00laknrkkvbjmaeadert','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 01:34:34',NULL),('00lbxzwx37ro1dgmifcs','00la6j7odrtmxopbm7bk','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 01:35:58',NULL),('00lbxzysxcva6rdolnol','00la6fzv5nvlowgjt4ng','00lb3fav0h8hbgs6f7vj',49000.00,'2022-12-22 01:37:26',NULL),('00lby02agmqjjbbzweo9','00la5b9alarkkg1gxvdp','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 01:40:09',NULL),('00lby0c8fiyhth7o38md','00lby0c8fcpi8zdvt3j6','00lb3fav0h8hbgs6f7vj',35000.00,'2022-12-22 01:49:35',NULL),('00lby0grpd8rql4o336o','00lby0groz3zn08ji0je','00lb3fav0h8hbgs6f7vj',29000.00,'2022-12-22 01:51:24',NULL),('00lby0grpd9fzr2jrm6i','00lby0groz3zn08ji0je','00la2oss7jzpyvo0krwh',35000.00,'2022-12-22 01:51:24',NULL),('00lby0grpdvratyakmsv','00lby0groz3zn08ji0je','00la2osmmz73s5uz7gn3',39000.00,'2022-12-22 01:51:24',NULL),('00lby0lu3gzcgi2vbcqi','00lby0lu39aiu7t26kqn','00lb3fav0h8hbgs6f7vj',35000.00,'2022-12-22 01:55:20',NULL),('00lby0o9pq0pswsjjxok','00lby0o9plwjm3ee84nj','00la2oss7jzpyvo0krwh',35000.00,'2022-12-22 01:57:14','2023-05-31 16:24:09'),('00lby0o9pq6yktin59if','00lby0o9plwjm3ee84nj','00la2osmmz73s5uz7gn3',39000.00,'2022-12-22 01:57:14','2023-05-31 16:24:09'),('00lby0o9pqqr9hmx51i3','00lby0o9plwjm3ee84nj','00lb3fav0h8hbgs6f7vj',29000.00,'2022-12-22 01:57:14','2023-05-31 16:24:09'),('00lby0rkp1nfhet2233v','00lby0rkou7ck8n4ug5u','00lb3fav0h8hbgs6f7vj',35000.00,'2022-12-22 01:59:48',NULL),('00lby0u6nfivd0ryy4cz','00lby0u6n78y6u49cuqo','00lby0se4xa7smz0gcbp',75000.00,'2022-12-22 02:01:50','2023-01-10 20:01:06'),('00lby0x7awagdzmn8wot','00lby0x7as2p35i01zmb','00la2oss7jzpyvo0krwh',55000.00,'2023-01-07 14:08:30',NULL),('00lby0x7awimr8fkpobt','00lby0x7as2p35i01zmb','00lb3fav0h8hbgs6f7vj',49000.00,'2023-01-07 14:08:30',NULL),('00lby0y6by6es721yx7d','00lby0y6bpoqbe0ic9jp','00la2oss7jzpyvo0krwh',49000.00,'2022-12-22 02:04:56',NULL),('00lby0y6by9ykbfldl2p','00lby0y6bpoqbe0ic9jp','00lb3fav0h8hbgs6f7vj',45000.00,'2022-12-22 02:04:56',NULL),('00lby0zxs7cwafyyz018','00la543v5z49t3ejn0q5','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 02:06:18','2022-12-22 02:06:59'),('00lby0zxs7ikz5fyi8ag','00la543v5z49t3ejn0q5','00lb3fav0h8hbgs6f7vj',49000.00,'2022-12-22 02:06:18','2022-12-22 02:06:59'),('00lby12hszb1r5ghkqbb','00lby12hstkuif4hbzck','00lb3fav0h8hbgs6f7vj',49000.00,'2022-12-22 02:13:54',NULL),('00lby12hszbzg0sxws9a','00lby12hstkuif4hbzck','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 02:13:54',NULL),('00lby12hszlg1bf1qwdt','00lby12hstkuif4hbzck','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 02:13:54',NULL),('00lby1bfhnetcr3o02vc','00lby1bfhdcxswhu1b6b','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 02:15:15',NULL),('00lby1bfhnjjrnainfcd','00lby1bfhdcxswhu1b6b','00la2osmmz73s5uz7gn3',59000.00,'2022-12-22 02:15:15',NULL),('00lby1bfhnpxlqzwbscf','00lby1bfhdcxswhu1b6b','00lb3fav0h8hbgs6f7vj',49000.00,'2022-12-22 02:15:15',NULL),('00lby1dybalmet0zhypn','00lby1dyb4lzl5h6gl6y','00la2oss7jzpyvo0krwh',55000.00,'2022-12-22 02:17:12',NULL),('00lby1fx0pbgwfau4d8f','00lby1fx0fnxv6j5ik1r','00lb3fav0h8hbgs6f7vj',25000.00,'2023-01-10 19:55:45',NULL),('00lby1gig9p634fd8rnn','00lby0u6n78y6u49cuqo','00la2osmmz73s5uz7gn3',75000.00,'2022-12-22 02:19:12',NULL),('00lby1j9dgcgbk2bjj1k','00lby1j9dbbecpibxcse','00lb3fav0h8hbgs6f7vj',19000.00,'2022-12-22 02:23:46',NULL),('00lby1kh7b1x3rudgjef','00lby1kh730zldju0gra','00lb3fav0h8hbgs6f7vj',21000.00,'2023-05-31 16:24:31',NULL),('00lca3x0pp4ir4io4l48','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',10000.00,'2022-12-30 13:57:24','2022-12-30 14:27:45'),('00lca5wy4xnx3r9fsruh','00lca3x0pfxea7192vo4','00la2osmmz73s5uz7gn3',3.00,'2022-12-30 14:23:24','2022-12-30 14:27:45'),('00lca5wy4xs5gvxerqbk','00lca3x0pfxea7192vo4','00la2oss7jzpyvo0krwh',3.00,'2022-12-30 13:57:11','2022-12-30 14:27:45'),('00lca5x16kf8e9m2wm9o','00lca3x0pfxea7192vo4','00la2osmmz73s5uz7gn3',3.00,'2022-12-30 14:23:24','2022-12-30 14:27:45'),('00lca69dzymju6dnxqkd','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',8.00,'2022-12-30 14:06:52','2022-12-30 14:27:45'),('00lca6a23pvv8a98l53y','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',5.00,'2022-12-30 14:23:11','2022-12-30 14:27:45'),('00lca6b2x5khrfdr93oh','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-30 14:23:11','2022-12-30 14:27:45'),('00lca6b2x5y5vr29h4pe','00lca3x0pfxea7192vo4','00la2oss7jzpyvo0krwh',13.00,'2022-12-30 14:08:11','2022-12-30 14:27:45'),('00lca6b3e8bjsumywlak','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-30 14:23:11','2022-12-30 14:27:45'),('00lca6b3e8yhktbd5vrr','00lca3x0pfxea7192vo4','00la2oss7jzpyvo0krwh',13.00,'2022-12-30 14:08:11','2022-12-30 14:27:45'),('00lca6biglb6fmgnkdmo','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',5.00,'2022-12-30 14:23:11','2022-12-30 14:27:45'),('00lca6fro5sr576k9wnp','00lca3x0pfxea7192vo4','00la2osmmz73s5uz7gn3',5.00,'2022-12-30 14:23:24','2022-12-30 14:27:45'),('00lca6h6zhfi8zlv6u8k','00lca3x0pfxea7192vo4','00la2osmmz73s5uz7gn3',5.00,'2022-12-30 14:23:24','2022-12-30 14:27:45'),('00lca6lvdgt8ap0ge3uu','00lca3x0pfxea7192vo4','00la2osmmz73s5uz7gn3',5.00,'2022-12-30 14:23:24','2022-12-30 14:27:45'),('00lca6m6wyii8afuap7o','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',3.00,'2022-12-30 14:23:11','2022-12-30 14:27:45'),('00lca6mf46jtawt0f84o','00lca3x0pfxea7192vo4','00la2oss7jzpyvo0krwh',6.00,'2022-12-30 14:17:00','2022-12-30 14:27:45'),('00lca6mpdm2le9zzl5lj','00lca3x0pfxea7192vo4','00la2oss7jzpyvo0krwh',6.00,'2022-12-30 14:17:13','2022-12-30 14:27:45'),('00lca6mpdmr2kc34xe2g','00lca3x0pfxea7192vo4','00la2osmmz73s5uz7gn3',3.00,'2022-12-30 14:23:24','2022-12-30 14:27:45'),('00lca6uzvpj199r3vn7v','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',6.00,'2022-12-30 14:23:40','2022-12-30 14:27:45'),('00lca6vaxgoygobujrw7','00lca3x0pfxea7192vo4','00la2osmmz73s5uz7gn3',14.00,'2022-12-30 14:23:54','2022-12-30 14:27:45'),('00lca6vinu5tbz3y52nj','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-30 14:24:04','2022-12-30 14:27:45'),('00lca6vovxg4a7leqh1d','00lca3x0pfxea7192vo4','00la2osmmz73s5uz7gn3',12.00,'2022-12-30 14:24:12','2022-12-30 14:27:45'),('00lca6vovxnrzzn5qjmb','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-30 14:24:12','2022-12-30 14:27:45'),('00lca6vv8s846vx0mjsv','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-30 14:24:20','2022-12-30 14:27:45'),('00lca6vv8sihk8eemjm3','00lca3x0pfxea7192vo4','00la2osmmz73s5uz7gn3',12.00,'2022-12-30 14:24:20','2022-12-30 14:27:45'),('00lca6vv8sziovsda32l','00lca3x0pfxea7192vo4','00la2oss7jzpyvo0krwh',18.00,'2022-12-30 14:24:20','2022-12-30 14:27:45'),('00lca6w27njmdvw48ky4','00lca3x0pfxea7192vo4','00la2oss7jzpyvo0krwh',18.00,'2022-12-30 14:24:29','2022-12-30 14:27:45'),('00lca6w27nw9so4vjr9v','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-30 14:24:29','2022-12-30 14:27:45'),('00lca6wmoa3mgnrd0xfe','00lca3x0pfxea7192vo4','00la2oss7jzpyvo0krwh',18.00,'2022-12-30 14:24:56','2022-12-30 14:27:45'),('00lca6wmoanxcfx3ztgt','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-30 14:24:56','2022-12-30 14:27:45'),('00lca6wqli84qx47xuej','00lca3x0pfxea7192vo4','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-30 14:25:01','2022-12-30 14:27:45'),('00lcbi6diijrws10e40g','00lcbi6di8a3ocqmu8nd','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-31 12:28:13','2023-01-04 11:46:08'),('00lcbi6yt96rvf2ddjei','00lcbi6yt4xpb7r3qwrv','00lb3fav0h8hbgs6f7vj',4.00,'2022-12-31 12:28:40','2023-01-10 19:06:37'),('00lcbin4o6x3ip5h9gkf','00lcbin4o0t4p3iaowfa','00la2osmmz73s5uz7gn3',12.00,'2022-12-31 12:41:14','2023-01-04 11:45:50'),('00lcbin8hle044prln6a','00lcbin8he5pwx6xf3wf','00la2osmmz73s5uz7gn3',12.00,'2022-12-31 12:41:19','2023-01-10 19:06:32'),('00lcbio48xdt7t10b899','00lcbio48pplq3si0695','00la2osmmz73s5uz7gn3',12.00,'2022-12-31 12:42:00','2023-01-04 11:45:44'),('00lcbioaq2qq38cf0q4a','00lcbioalhvumdvzyy5z','00la2osmmz73s5uz7gn3',12.00,'2022-12-31 12:42:09','2023-01-04 11:45:35'),('00lcq6vnkoaqkfzdofy4','00lcq6vnkipu57u0tg1o','00la2osmmz73s5uz7gn3',20000.00,'2023-01-10 19:08:29','2023-01-10 19:08:45'),('00lcq6vnkod882qcmklp','00lcq6vnkipu57u0tg1o','00la2oss7jzpyvo0krwh',25000.00,'2023-01-10 19:08:29','2023-01-10 19:08:45'),('00libh6cjt9d526pyutf','00libh6cjltt0n8wuink','00la2osmmz73s5uz7gn3',10.00,'2023-05-31 15:58:26','2023-05-31 16:00:05'),('00libh88n7ff63mubi3c','00libh88n2ywo5f3gc7k','00la2osmmz73s5uz7gn3',10.00,'2023-05-31 15:59:54','2023-05-31 16:00:01'),('00libhaok8dzqzxanlya','00libhaok2rdlowsbqau','00la2oss7jzpyvo0krwh',29000.00,'2023-05-31 16:01:56','2023-05-31 16:24:13'),('00libhaok8ycufi49cyo','00libhaok2rdlowsbqau','00la2osmmz73s5uz7gn3',35000.00,'2023-05-31 16:01:56','2023-05-31 16:24:13'),('00libi50h2274lg0jnfc','00libi50gvx9y51jqdti','00la2oss7jzpyvo0krwh',29000.00,'2023-05-31 16:25:48',NULL),('00libi50h2kw3x2mrxll','00libi50gvx9y51jqdti','00la2osmmz73s5uz7gn3',35000.00,'2023-05-31 16:25:48',NULL),('aala549w2ski4h4l6nwl','00la549w2s8tagv3j5f8','00la2osqk5j8gyqjx765',1000.00,'2022-11-06 15:53:00','2023-05-31 15:41:15');
/*!40000 ALTER TABLE `product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES ('00la2osmmz73s5uz7gn3','Lớn',NULL),('00la2osqk5j8gyqjx765','Nhỏ','2022-11-30 16:05:40'),('00la2oss7jzpyvo0krwh','Vừa',NULL),('00la2pa15tyhfwjl5hnf','34frgfh','2022-11-04 23:17:46'),('00la2pa8y60l17p83ga6','e3frgh','2022-11-04 23:18:00'),('00lb3fav0h8hbgs6f7vj','Nhỏ',NULL),('00lbby2mqjc1veecjtev','test','2022-12-06 15:19:39'),('00lbbyaod63zxosejwty','test','2022-12-06 15:59:12'),('00lby0se4xa7smz0gcbp','Chai','2022-12-22 02:19:17'),('00lby1ek8qm9cioq077h','Ổ','2022-12-22 02:18:49'),('00lcq6zigjslpdq7chbt','Chai 1','2023-01-10 19:13:25'),('00lcq73yk4g2tb15gf6i','Chai 12','2023-01-10 19:15:06');
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `id` varchar(20) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `cover_image` varchar(100) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `promotion__coupon_idx` (`coupon_code`),
  CONSTRAINT `promotion__coupon` FOREIGN KEY (`coupon_code`) REFERENCES `coupon` (`coupon_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES ('00lbxx3hu9vi7rpugyzn','SỔ ƯU ĐÃI MỪNG 300 QUÁN','<p><strong>MỤC TI&Ecirc;U CHƯƠNG TR&Igrave;NH</strong></p>\r\n<p><strong>Với 300 qu&aacute;n trải dọc đất nước, Highlands Coffee tự h&agrave;o l&agrave; nơi lưu giữ trăm chuyện đậm đ&agrave; của người Việt khắp 3 miền</strong>. Đ&oacute; c&oacute; thể l&agrave; những c&acirc;u chuyện ngọt ng&agrave;o của đ&ocirc;i lứa, lời đ&ugrave;a vui gi&ograve;n tan của hội bạn hay buổi t&aacute;n gẫu kh&ocirc;ng hồi kết của những người đồng nghiệp. V&agrave; để th&ecirc;m dư vị cho trăm chuyện đậm đ&agrave; ấy, Highlands Coffee th&acirc;n gửi tới kh&aacute;ch h&agrave;ng chương tr&igrave;nh&nbsp;<strong>Sổ Ưu Đ&atilde;i 300 Qu&aacute;n, Trăm Chuyện Đậm Đ&agrave;</strong>&nbsp;với v&ocirc; v&agrave;n Combo hấp dẫn &aacute;p dụng to&agrave;n quốc.</p>\r\n<p align=\"center\"><img src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1671643029/p7a8yrt9gxdmthjmsnc8.png\"></p>\r\n<p>Từng Combo trong Cuốn Cẩm Nang đều được thiết kế một c&aacute;ch chọn lựa, đảm bảo những người bạn, những cặp đ&ocirc;i hay gia đ&igrave;nh c&oacute; thể c&ugrave;ng chung vui với cột mốc&nbsp;<strong>300 qu&aacute;n Highlands Coffee</strong>&nbsp;v&agrave; c&ugrave;ng chia sẻ trăm chuyện đậm đ&agrave; b&ecirc;n nhau.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>THỂ LỆ CHƯƠNG TR&Igrave;NH</strong></p>\r\n<p><strong>1. Chương tr&igrave;nh ưu đ&atilde;i:</strong></p>\r\n<p>Từ ng&agrave;y&nbsp;<strong>07/07/2019</strong>&nbsp;đến ng&agrave;y&nbsp;<strong>21/07/2019</strong>&nbsp;tại Highlands Coffee&reg; to&agrave;n quốc, Qu&yacute; Kh&aacute;ch H&agrave;ng khi mua&nbsp;<strong>sản phẩm bất kỳ&nbsp;</strong>sẽ c&oacute; cơ hội nhận ngay&nbsp;<strong>Sổ&nbsp;Ưu Đ&atilde;i</strong>&nbsp;với nhiều chương tr&igrave;nh hấp dẫn c&ugrave;ng kỷ niệm 300 qu&aacute;n, đ&oacute;n trăm chuyện đậm đ&agrave;!</p>\r\n<p>H&atilde;y tham khảo ngay th&ocirc;ng tin chương tr&igrave;nh ưu đ&atilde;i cụ thể nh&eacute;.</p>\r\n<p><strong>2. Điều khoản v&agrave; điều kiện &aacute;p dụng:</strong></p>\r\n<ul role=\"list\">\r\n<li role=\"listitem\" aria-setsize=\"-1\" data-aria-level=\"1\" data-aria-posinset=\"1\" data-font=\"Symbol\" data-leveltext=\"\" data-listid=\"1\">\r\n<p>Khi mua 2 sản phẩm&nbsp;<strong>C&agrave; ph&ecirc; Truyền thống, Freeze hoặc Tr&agrave; cỡ vừa hoặc lớn</strong>&nbsp;tại Highlands Coffee, kh&aacute;ch h&agrave;ng sẽ được tặng 01 sản phẩm&nbsp;<strong>miễn ph&iacute;</strong>&nbsp;cỡ nhỏ, c&ugrave;ng d&ograve;ng với sản phẩm c&oacute; gi&aacute; trị thấp hơn trong sản phẩm đ&atilde; mua (&aacute;p dụng cho phiếu số 1).&nbsp;</p>\r\n</li>\r\n</ul>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1671643030/koiwdeheq6rpzip6ql5n.png\">&nbsp;</p>\r\n<ul role=\"list\">\r\n<li role=\"listitem\" aria-setsize=\"-1\" data-aria-level=\"1\" data-aria-posinset=\"1\" data-font=\"Symbol\" data-leveltext=\"\" data-listid=\"1\">\r\n<p>Khi mua 01 ly&nbsp;<strong>Tr&agrave;</strong>&nbsp;cỡ vừa, kh&aacute;ch h&agrave;ng sẽ được&nbsp;<strong>miễn ph&iacute; đổi từ cỡ vừa sang cỡ lớn</strong>&nbsp;(&aacute;p dụng cho phiếu số 2).&nbsp;&nbsp;</p>\r\n</li>\r\n</ul>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1671643033/wyq67gmm9jpfqia8dcjo.png\">&nbsp;</p>\r\n<ul role=\"list\">\r\n<li role=\"listitem\" aria-setsize=\"-1\" data-aria-level=\"1\" data-aria-posinset=\"2\" data-font=\"Symbol\" data-leveltext=\"\" data-listid=\"1\">\r\n<p>Gi&aacute; ưu đ&atilde;i&nbsp;<strong>65,000 VNĐ</strong>&nbsp;cho&nbsp;<strong>Combo Tr&agrave; Sen V&agrave;ng + Tr&agrave; cỡ nhỏ</strong>&nbsp;(&aacute;p dụng cho phiếu số 3).&nbsp;</p>\r\n</li>\r\n</ul>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1671643030/piarwajjknuxdopgrz6w.png\">&nbsp;</p>\r\n<ul role=\"list\">\r\n<li role=\"listitem\" aria-setsize=\"-1\" data-aria-level=\"1\" data-aria-posinset=\"1\" data-font=\"Symbol\" data-leveltext=\"\" data-listid=\"1\">\r\n<p>Gi&aacute; ưu đ&atilde;i&nbsp;<strong>75,000 VNĐ</strong>&nbsp;cho&nbsp;<strong>Combo Tr&agrave; Sen V&agrave;ng + Freeze vị bất kỳ cỡ nhỏ</strong>&nbsp;(&aacute;p dụng cho phiếu số 4).&nbsp;</p>\r\n</li>\r\n</ul>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1671643029/qpdhaaywzcsgxgm1yiuf.png\">&nbsp;</p>\r\n<ul role=\"list\">\r\n<li role=\"listitem\" aria-setsize=\"-1\" data-aria-level=\"1\" data-aria-posinset=\"2\" data-font=\"Symbol\" data-leveltext=\"\" data-listid=\"1\">\r\n<p>Gi&aacute; ưu đ&atilde;i&nbsp;<strong>125,000 VNĐ</strong>&nbsp;cho&nbsp;<strong>Combo 2 sản phẩm Tr&agrave; bất kỳ + 2 sản phẩm Freeze bất kỳ</strong>, chỉ &aacute;p dụng cho cỡ nhỏ (&aacute;p dụng cho phiếu số 5)&nbsp;&nbsp;</p>\r\n</li>\r\n</ul>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://res.cloudinary.com/drlg6q51y/image/upload/v1671643029/lu43ajxqlzayezcyaek3.png\">&nbsp;</p>','cfzkguvlmlsevmq2om4f','BENNHA35','2022-12-22 00:17:06','2023-01-10 19:24:52',NULL),('00lbxx6n4iw7zve2ldm3','LÌ XÌ TẾT VÀNG, RỘN RÀNG CHUYỆN XUÂN','<p><strong>MỤC TIÊU CHƯƠNG TRÌNH</strong></p>\r\n<p>Trong không khí rôm rả của những ngày Tết Kỷ Hợi,&nbsp;<strong>Highlands Coffee cùng Trà Sen Vàng</strong>&nbsp;mong muốn&nbsp;<strong>lan tỏa Niềm Vui Rộn Ràng và kính chúc nhà nhà có một Khởi Đầu Như Ý</strong>&nbsp;thông qua&nbsp;<strong>chương trình \"Lì Xì Tết Vàng, Rộn Ràng Chuyện Xuân\"</strong>&nbsp;tại&nbsp;<strong>22 tỉnh thành, khắp 300 quán toàn quốc</strong>.</p>\r\n<div><img src=\"https://highlandscoffee.com.vn/vnt_upload/news/01_2019/01.jpg\" alt=\"01\" data-ck-zoom=\"yes\"></div>\r\n<p>Highlands Coffee tin rằng,&nbsp;<strong>khi những&nbsp;câu chuyện đầu năm thật giòn giã</strong>&nbsp;hòa cùng<strong>&nbsp;tiếng cười sảng khoái</strong>&nbsp;<strong>bên ly Trà Sen Vàng</strong>&nbsp;và&nbsp;người thương yêu, đó&nbsp;<strong>chính là cách đón Một Khởi Đầu Như Ý</strong>.</p>\r\n<div>\r\n<div><img src=\"https://highlandscoffee.com.vn/vnt_upload/news/01_2019/HCO_7558_FESTIVE_2019_LEAFLET_A5_WEB-01_-_Trong_TYt.jpg\" alt=\"HCO_7558_FESTIVE_2019_LEAFLET_A5_WEB-01_-_Trong_TYt\" data-ck-zoom=\"yes\"></div>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<p><strong>THỂ LỆ CHƯƠNG TRÌNH&nbsp;</strong></p>\r\n<p><strong>1. Chương trình ưu đãi:</strong></p>\r\n<p>Từ ngày 16/01/2019&nbsp;đến ngày 24/02/2019&nbsp;tại Highlands Coffee® toàn quốc, Quý Khách Hàng khi mua&nbsp;<strong>Hóa Đơn 89,000đ</strong>&nbsp;sẽ&nbsp;nhận ngay&nbsp;<strong>\"Lì Xì Tết Vàng\"</strong>&nbsp;với nhiều ưu đãi hấp dẫn, nhận lộc đầu xuân!</p>\r\n<p>Tham khảo ngay thông tin chương trình&nbsp;cụ thể&nbsp;bên dưới nào !</p>\r\n<p><strong>2. Điều khoản và điều kiện áp dụng:</strong></p>\r\n<ul>\r\n<li>Với mỗi Hóa Đơn 89,000đ trong lần đầu tiên, quý khách hàng sẽ nhận ngay Lì Xì Tết Vàng, với ưu đãi may mắn bất ngờ : Giảm 10,000đ cho lần sử dụng tiếp theo hoặc Ưu đãi Mua 1 tặng 1 hoặc Mua 2 tặng 1.</li>\r\n</ul>\r\n<div><img src=\"https://highlandscoffee.com.vn/vnt_upload/news/01_2019/HCO-7558-FESTIVE-2019-VOUCHERBOGO-WEBSITE.jpg\" alt=\"HCO-7558-FESTIVE-2019-VOUCHERBOGO-WEBSITE\" data-ck-zoom=\"yes\"></div>\r\n<p><strong>&nbsp; &nbsp;</strong></p>\r\n<p><strong><em>&nbsp; &nbsp; &nbsp;</em><u><em>Đối với Ưu đãi giảm 10,000đ:</em></u></strong></p>\r\n<ul>\r\n<li>Trong lần mua hàng tiếp theo, với mỗi&nbsp;Hóa Đơn từ 70,000đ trở lên, Quý Khách Hàng sẽ được áp dụng Phiếu Ưu Đãi giảm 10,000đ.</li>\r\n</ul>\r\n<hr>\r\n<p><strong><em>&nbsp; &nbsp; &nbsp;</em><u><em>Đối với Ưu đãi Mua 1 tặng 1:</em></u></strong></p>\r\n<ul>\r\n<li>Khi mua 1 ly Trà Sen Vàng cỡ vừa hoặc lớn, bạn sẽ được tặng 1 ly Trà cỡ nhỏ.</li>\r\n<li>Thêm 10.000/ly để đổi sang Trà cỡ vừa hoặc 16.000/ly để đổi sang cỡ lớn.</li>\r\n<li>Vui lòng điền đầy đủ thông tin để nhận được thức uống miễn phí.</li>\r\n</ul>\r\n<hr>\r\n<p><strong>&nbsp;<em>&nbsp;&nbsp;&nbsp;</em><u><em>Đối với Ưu đãi Mua 2 tặng 1:</em></u></strong></p>\r\n<ul>\r\n<li>Khi mua 2 ly Trà Sen Vàng cỡ vừa hoặc lớn, bạn sẽ được tặng 1 ly Trà cỡ nhỏ.</li>\r\n<li>Thêm 10.000/ly để đổi sang Trà cỡ vừa hoặc 16.000/ly để đổi sang cỡ lớn.</li>\r\n<li>Vui lòng điền đầy đủ thông tin để nhận được thức uống miễn phí.</li>\r\n</ul>\r\n<hr>\r\n<ul>\r\n<li>Không áp dụng từ 05/02/2019 (tức mùng 1 Tết) đến hết 08/02/2019 (tức mùng 4 Tết)</li>\r\n<li>Vui lòng đưa phiếu cho nhân viên trước khi thanh toán.</li>\r\n<li>Phiếu không có giá trị quy đổi thành tiền mặt.</li>\r\n<li>Phiếu phải còn nguyên vên, không rách nát, chắp vá, tẩy xóa.</li>\r\n<li>Không áp dụng với các chương trình khuyến mại khác.</li>\r\n<li>Không áp dụng tại các quán Highlands Coffee® tại sân bay trên toàn quốc và tại Highlands Coffee 92 NKKN, Bitexco, CT Plaza Food Court, Hùng Vương Plaza Tầng Trệt &amp; Food Court, Parkson Lê Thánh Tôn, Dinh Độc Lập, Bảo Tàng Chứng Tích, Hệ thống Sense City, Lotte Mart Bình Dương, Parkson TD Plaza Tầng Trệt Hải Phòng, hệ thống Aeon Mall.</li>\r\n<li>Phiếu chỉ có giá trị trong khoảng thời gian đã in trên phiếu.</li>\r\n<li>Quý Khách Hàng vui lòng liên hệ nhân viên để biết thêm chi tiết.</li>\r\n</ul>','rpas75zmqpfbldue1qkb','BENNHA70','2022-12-22 00:19:33',NULL,'2023-01-04 14:10:11'),('00lc91idphvfwov3hfih','1828','<p><strong>wergthyfdbg</strong></p>','xpw4s4xsuiyqkryripxr','12345678','2022-12-29 19:06:07','2022-12-29 19:34:22','2022-12-29 19:35:45'),('00lc91ljj8qxk3nare4i','1828','<p>wergthyfdbg</p>','aiajfxyp6onwfwljyh7r','12345677','2022-12-29 19:08:34',NULL,'2022-12-29 19:35:50'),('00lchc13mnjwqwhbe00e','Just test','<p>Test</p>','rbvgpuwgnyhppgc1agv8','12345677','2023-01-04 14:22:46',NULL,'2023-01-04 14:23:07'),('00lchc18iqqd4ilhpves','Just test','<p>Test</p>','bbkai8psbygkdkjkwi93','12345677','2023-01-04 14:22:52',NULL,'2023-01-04 14:23:02');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `product_id` varchar(20) NOT NULL,
  `user_account_id` varchar(20) NOT NULL,
  `star` int NOT NULL,
  `content` text NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `rating__user_idx` (`user_account_id`),
  KEY `rating__product_idx` (`product_id`),
  CONSTRAINT `rating__product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rating__user` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES ('00lby0y6bpoqbe0ic9jp','00lbxya79ra10codnolo',4,'Good',NULL,'2023-01-10 20:15:01',NULL),('00lby12hstkuif4hbzck','00lbxyf55plyjfwy0mkr',4,'Good',NULL,'2023-05-31 16:22:48',NULL);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_account`
--

DROP TABLE IF EXISTS `staff_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_account` (
  `id` varchar(20) NOT NULL,
  `branch_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(64) NOT NULL,
  `gender` bit(2) NOT NULL,
  `date_of_birth` date NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `delivering_count` int DEFAULT '0',
  `first_login` tinyint DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff__branch_idx` (`branch_id`),
  CONSTRAINT `staff__branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_account`
--

LOCK TABLES `staff_account` WRITE;
/*!40000 ALTER TABLE `staff_account` DISABLE KEYS */;
INSERT INTO `staff_account` VALUES ('00laamkn2tbzcaih8fu3','00laan55n86pyi928j7j','Tran Kieu Khanh','0123456789','',_binary '','2022-11-11','d7z83ppsx98miievuqey','test@gmail.com',0,1,'2022-11-10 13:48:35'),('00laan6lyijyo47xbzjj','00la9oqom7nzodupqegb','Nguyen Thi C','0123456789','',_binary '','2022-11-16','o3ryvxloicwejvuyw75h',NULL,0,1,'2022-11-10 13:48:29'),('00laapmat7kkyureuqlj','00laerkzo169m8cdfk34','Đỗ Trọng Hiếu','0123456789','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '\0','2000-10-04','w7ulrafmykjmxprqvvzo','test@gmail.com',0,0,NULL),('00laywis32cn544fei1c','00laerkzo169m8cdfk34','Tuấn Yên','0123456789','',_binary '\0','2000-10-11','',NULL,0,1,'2022-11-27 12:10:35'),('00laywj60oqif3qwosag','00laerkzo169m8cdfk34','Điêu Bảo Quyên ','0123456788','pi7sO0RTcKFMrVKHMZgcrkwRrNDKkbW6kknZuWm7VSk=',_binary '','2000-10-11','a7fbbrpd98srtm8cscag',NULL,0,1,NULL),('00laywjn7a32cfx9o4pb','00laerkzo169m8cdfk34','Khương Mạnh Quỳnh','0123456888','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '\0','2000-10-11','g2riyintyt1nx4yt9dte',NULL,0,0,NULL),('00laywjt6gi35ldvp1p2','00laerkzo169m8cdfk34','Xuân Vân','0123456888','1234567890o',_binary '','2000-10-11','',NULL,0,1,'2022-11-27 12:10:25'),('00laz8gl5pfc6z99945e','00lajqa04xl91iiiiugt','Ung Nam Hưng','0123451234','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '\0','2022-11-11','uaahcx01eyboxf5yzpto',NULL,0,0,NULL),('00laz8i1pfp8w9grj5lr','00laerkzo169m8cdfk34','est ahaj','0123451232','pi7sO0RTcKFMrVKHMZgcrkwRrNDKkbW6kknZuWm7VSk=',_binary '\0','2022-11-11','',NULL,0,1,'2023-01-04 13:16:01'),('00lc9zum7501xo8zbci9','00laerkzo169m8cdfk34','wbdh wswj','0123456781','default0',_binary '\0','2022-12-30','alwff9nmhmoeagffj7w2',NULL,0,1,'2022-12-30 11:08:20'),('00lc9zvimxmnbqk48d0q','00laerkzo169m8cdfk34','twtstf wefbhe','0123456666','default0',_binary '\0','2022-12-30','xvfwqavl6ku5pgvmz1av',NULL,0,1,'2022-12-30 11:08:24'),('00lc9zw1cbawddpdhc2e','00laerkzo169m8cdfk34','twtstf wefbhe','0123456666','default0',_binary '\0','2022-12-30','ceifnjjbrdosyegmbpzt',NULL,0,1,NULL);
/*!40000 ALTER TABLE `staff_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id` varchar(20) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `gender` bit(2) NOT NULL,
  `date_of_birth` date NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `locked` tinyint NOT NULL DEFAULT '0',
  `verified` tinyint DEFAULT '0',
  `longitude` varchar(30) DEFAULT NULL,
  `latitude` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES ('00lbxya79ra10codnolo','0123456789','Hứa Ðức Tâm','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '\0','2000-12-10','iikoebiuotk2igbrxh1y','dh51801268@student.stu.edu.vn','180 Cao Lỗ, Phường 4, Quận 8, Hồ Chí Minh',NULL,0,1,'106.67834982200009','10.738339536000069'),('00lbxyf55plyjfwy0mkr',NULL,'Diệp Bảo Quyên','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '','2000-12-21','s24i2jsp9ffcsd4w407i','tempaccnth098@gmail.com','Chợ Lớn, Phường 14, Quận 5, Hồ Chí Minh',NULL,0,1,'106.65549460400007','10.751212955000028'),('00lc61x0ora2w7rg8czf',NULL,'Nguyen Van A','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '\0','2022-12-27',NULL,'2@hsh.cm',NULL,NULL,0,0,NULL,NULL),('00lc62qftbcdqap8q8us',NULL,'Nguyen Van A','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '\0','2022-12-28','nxm0amxz1iitwkq73blx','dh5@gmail.com','Add coffee, 19 Ngách 9/2 Trần Quốc Hoàn, Dịch Vọng Hậu, Cầu Giấy, Hà Nội',NULL,0,0,'105.78841264800008','21.041204220000054'),('00lc62x336vstkrg5efd',NULL,'Nguyen Van Binh','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '\0','2022-12-27',NULL,'tempaccnth098@gmail.com',NULL,'2000-01-01 00:00:00',0,1,NULL,NULL),('00lc63d64vycrmkscggk','01234567888','Nguyen Van','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '\0','2022-12-27',NULL,'ts@s.cm',NULL,NULL,0,0,NULL,NULL),('00lcbgwygy7rukrwwk6l',NULL,'Nguyen A','HOrrxlfsrXlxqRaGlkyVweYdjtSphHlS9KUHq+9RzLk=',_binary '\0','2022-12-31',NULL,'test@hsbwd.cm',NULL,NULL,0,0,NULL,NULL);
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19 14:02:59
