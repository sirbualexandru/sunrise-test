-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.26-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sunrise
CREATE DATABASE IF NOT EXISTS `sunrise` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sunrise`;

-- Dumping structure for table sunrise.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table sunrise.categories: ~5 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`) VALUES
	(1, 'Smartphone'),
	(2, 'Laptop'),
	(3, 'Tablet'),
	(4, 'Desktop'),
	(5, 'Camera');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table sunrise.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `quantity` int(11) unsigned NOT NULL DEFAULT '0',
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `FK_products_categories` (`category_id`),
  CONSTRAINT `FK_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table sunrise.products: ~18 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `price`, `category_id`, `quantity`, `notes`) VALUES
	(1, 'iPad Air 1', 5.00, 3, 19, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
	(2, 'iPad Air 2', 5.00, 3, 42, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
	(3, 'iPad Air 3', 5.00, 3, 31, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
	(4, 'iPad Air 4', 5.00, 3, 90, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
	(5, 'iPad Air 5', 5.00, 3, 70, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
	(6, 'iPad Air 6', 5.00, 3, 33, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
	(7, 'iPad Air 7', 7.00, 3, 47, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
	(10, 'iPhone 5', 5.00, 1, 32, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
	(11, 'iPhone 5s', 5.00, 1, 62, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
	(12, 'iPhone 6', 6.00, 1, 35, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
	(13, 'iPhone 6s', 6.00, 1, 87, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
	(14, 'iPhone 7', 7.00, 1, 53, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
	(15, 'iPhone 8', 8.00, 1, 12, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
	(16, 'iPhone X', 10.00, 1, 73, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
	(20, 'MacBook Air 11', 3.00, 2, 17, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
	(21, 'MacBook Air 13', 5.00, 2, 103, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
	(22, 'MacBook Pro 13', 7.00, 2, 9, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
	(23, 'MacBook Pro 15', 5.00, 2, 2, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. ');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table sunrise.product_history
CREATE TABLE IF NOT EXISTS `product_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `event` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_product_history_products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table sunrise.product_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_history` DISABLE KEYS */;
INSERT INTO `product_history` (`id`, `product_id`, `event`, `title`, `price`, `quantity`, `date`) VALUES
	(8, 1, 'Created', 'iPad Air 1', 5.00, 19, '2017-10-25 23:52:05'),
	(9, 2, 'Created', 'iPad Air 2', 5.00, 42, '2017-10-25 23:52:05'),
	(10, 3, 'Created', 'iPad Air 3', 5.00, 31, '2017-10-25 23:52:05'),
	(11, 4, 'Created', 'iPad Air 4', 5.00, 90, '2017-10-25 23:52:05'),
	(12, 5, 'Created', 'iPad Air 5', 5.00, 70, '2017-10-25 23:52:05'),
	(13, 6, 'Created', 'iPad Air 6', 5.00, 33, '2017-10-25 23:52:05'),
	(14, 7, 'Created', 'iPad Air 7', 7.00, 47, '2017-10-25 23:52:05'),
	(15, 10, 'Created', 'iPhone 5', 5.00, 32, '2017-10-25 23:52:05'),
	(16, 11, 'Created', 'iPhone 5s', 5.00, 62, '2017-10-25 23:52:05'),
	(17, 12, 'Created', 'iPhone 6', 6.00, 35, '2017-10-25 23:52:05'),
	(18, 13, 'Created', 'iPhone 6s', 6.00, 87, '2017-10-25 23:52:05'),
	(19, 14, 'Created', 'iPhone 7', 7.00, 53, '2017-10-25 23:52:05'),
	(20, 15, 'Created', 'iPhone 8', 8.00, 12, '2017-10-25 23:52:05'),
	(21, 16, 'Created', 'iPhone X', 10.00, 73, '2017-10-25 23:52:06'),
	(22, 20, 'Created', 'MacBook Air 11', 3.00, 17, '2017-10-25 23:52:06'),
	(23, 21, 'Created', 'MacBook Air 13', 5.00, 103, '2017-10-25 23:52:06'),
	(24, 22, 'Created', 'MacBook Pro 13', 7.00, 9, '2017-10-25 23:52:06'),
	(25, 23, 'Created', 'MacBook Pro 15', 9.00, 23, '2017-10-25 23:52:06'),
	(26, 23, 'Updated', 'MacBook Pro 15', 6.00, 3, '2017-10-25 23:57:50'),
	(27, 23, 'Updated', 'MacBook Pro 15', 5.00, 2, '2017-10-25 23:59:01');
/*!40000 ALTER TABLE `product_history` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
