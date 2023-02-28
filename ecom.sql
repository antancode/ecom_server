-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2023 at 02:44 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `name`) VALUES
(1, 'Accessories'),
(2, 'Men Shirts'),
(3, 'Men Hoodies'),
(4, 'Women Shirts'),
(5, 'Women Hoodies');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE IF NOT EXISTS `color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'blue'),
(2, 'yellow'),
(3, 'green'),
(4, 'white'),
(5, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `actual_price` double NOT NULL,
  `sale_price` double NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `actual_price`, `sale_price`, `created_on`) VALUES
(2, 'Divi Engine String Bag (Small Logos)', 'This fashionable string bag is made of 100% cotton. It is the perfect size for carrying your everyday essentials.', 19.99, 16.99, '0000-00-00 00:00:00'),
(3, 'Brand Buttons', 'Represent your favorite CMS, eCommerce Platform, Website Builder, or Plugin Company in style with a cool pin.', 19.99, 16.99, '0000-00-00 00:00:00'),
(4, 'Brand Buttons - Divi', '', 9.99, 6.99, '0000-00-00 00:00:00'),
(5, 'Brand Buttons - Divi Engine', '', 9.99, 6.99, '0000-00-00 00:00:00'),
(6, 'Brand Buttons - WooCommerce', '', 9.99, 6.99, '0000-00-00 00:00:00'),
(7, 'Brand Buttons - WordPress', '', 9.99, 6.99, '0000-00-00 00:00:00'),
(8, 'Lanyard', 'Stop losing your important access keys with a lanyard that is ALMOST as reliable as Divi Engine plugins!', 9.99, 6.99, '0000-00-00 00:00:00'),
(9, 'Divi Engine Tee', 'This comfortable cotton t-shirt that features the Divi Engine logo on the front is perfect for any occasion. The shirt is available in three colors.', 39.99, 36.99, '0000-00-00 00:00:00'),
(10, 'Divi Engine Tee - Blue, Large', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(11, 'Divi Engine Tee - White, Large', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(12, 'Divi Engine Tee - Yellow, Large', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(13, 'Divi Engine Tee - Blue, Medium', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(14, 'Divi Engine Tee - White, Medium', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(15, 'Divi Engine Tee - Yellow, Medium', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(16, 'Divi Engine Tee - Blue, Small', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(17, 'Divi Engine Tee - White, Small', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(18, 'Divi Engine Tee - Yellow, Small', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(19, 'Divi Tee', 'This comfortable cotton t-shirt features the Divi logo on the front and back. It is the perfect tee for any occasion.', 39.99, 36.99, '0000-00-00 00:00:00'),
(20, 'Divi Tee - Large', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(21, 'Divi Tee - Medium', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(22, 'Divi Tee - Small', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(23, 'WordPress Tee', 'This comfortable cotton t-shirt features the WordPress logo on the front and back. It is the perfect tee for any occasion.', 39.99, 36.99, '0000-00-00 00:00:00'),
(24, 'WordPress Tee - Large', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(25, 'WordPress Tee - Medium', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(26, 'WordPress Tee - Small', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(27, 'Mens Divi Hoodie', 'This Divi hoodie is a must have for any Divi fan. It is made from a soft, comfortable, and durable cotton blend. The hoodie is a perfect way to stay warm and show your Divi pride.', 14.99, 11.99, '0000-00-00 00:00:00'),
(28, 'Mens Divi Hoodie - Large', '', 39.99, 36.99, '0000-00-00 00:00:00'),
(29, 'Mens Divi Hoodie - Medium', '', 34.99, 31.99, '0000-00-00 00:00:00'),
(30, 'Mens Divi Hoodie - Small', '', 34.99, 31.99, '0000-00-00 00:00:00'),
(31, 'Dat Divi Engine Life Hoodie - Limited Edition', 'This Divi Engine hoodie is a must have for any Divi Engine fan. It is made from a soft, comfortable, and durable cotton blend. The hoodie is a perfect way to stay warm and show your Divi Engine pride.', 14.99, 11.99, '0000-00-00 00:00:00'),
(32, 'Dat Divi Engine Life Hoodie - Limited Edition - Large', '', 44.99, 41.99, '0000-00-00 00:00:00'),
(33, 'Dat Divi Engine Life Hoodie - Limited Edition - Medium', '', 44.99, 41.99, '0000-00-00 00:00:00'),
(34, 'Dat Divi Engine Life Hoodie - Limited Edition - Small', '', 44.99, 41.99, '0000-00-00 00:00:00'),
(35, 'Mens WordPress Hoodie', 'This WordPress hoodie is a must have for any WordPress fan. It is made from a soft, comfortable, and durable cotton blend. The hoodie is a perfect way to stay warm and show your WordPress pride.', 14.99, 11.99, '0000-00-00 00:00:00'),
(36, 'Mens WordPress Hoodie - Large', '', 34.99, 31.99, '0000-00-00 00:00:00'),
(37, 'Mens WordPress Hoodie - Medium', '', 34.99, 31.99, '0000-00-00 00:00:00'),
(38, 'Mens WordPress Hoodie - Small', '', 34.99, 31.99, '0000-00-00 00:00:00'),
(39, 'Divi Engine Logo Zipper Hoodie', 'This Divi Engine hoodie is a must have for any Divi Engine fan. It is made from a soft, comfortable, and durable cotton blend. The hoodie is a perfect way to stay warm and show your Divi Engine pride.', 14.99, 11.99, '0000-00-00 00:00:00'),
(40, 'Divi Engine Logo Zipper Hoodie - Large', '', 29.99, 26.99, '0000-00-00 00:00:00'),
(41, 'Divi Engine Logo Zipper Hoodie - Medium', '', 29.99, 26.99, '0000-00-00 00:00:00'),
(42, 'Divi Engine Logo Zipper Hoodie - Small', '', 29.99, 26.99, '0000-00-00 00:00:00'),
(43, 'Purple Divi Engine Text Zipper Hoodie', 'This Divi Engine hoodie is a must have for any Divi Engine fan. It is made from a soft, comfortable, and durable cotton blend. The hoodie is a perfect way to stay warm and show your Divi Engine pride.', 14.99, 11.99, '0000-00-00 00:00:00'),
(44, 'Purple Divi Engine Text Zipper Hoodie - Large', '', 29.99, 26.99, '0000-00-00 00:00:00'),
(45, 'Purple Divi Engine Text Zipper Hoodie - Medium', '', 29.99, 26.99, '0000-00-00 00:00:00'),
(46, 'Purple Divi Engine Text Zipper Hoodie - Small', '', 29.99, 26.99, '0000-00-00 00:00:00'),
(47, 'WooCommerce \"Gimme the Money\" Zipper Hoodie', 'This WooCommerce hoodie is a must have for any WooCommerce fan. It is made from a soft, comfortable, and durable cotton blend. The hoodie is a perfect way to stay warm and show your WooCommerce pride.', 14.99, 11.99, '0000-00-00 00:00:00'),
(48, 'WooCommerce \"Gimme the Money\" Zipper Hoodie - Large', '', 29.99, 26.99, '0000-00-00 00:00:00'),
(49, 'WooCommerce \"Gimme the Money\" Zipper Hoodie - Medium', '', 29.99, 26.99, '0000-00-00 00:00:00'),
(50, 'WooCommerce \"Gimme the Money\" Zipper Hoodie - Small', '', 29.99, 26.99, '0000-00-00 00:00:00'),
(51, 'Divi Ninja Tee', 'This comfortable cotton t-shirt features the Divi logo on the front and expresses your Ninja status with the theme. It is the perfect tee for any occasion.', 14.99, 11.99, '0000-00-00 00:00:00'),
(52, 'Divi Ninja Tee - Large', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(53, 'Divi Ninja Tee - Medium', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(54, 'Divi Ninja Tee - Small', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(55, 'Divi Simplified Crop-top', 'This comfortable cotton crop-top features the Divi and Divi Engine logos on the front and back. It is the perfect tee for any occasion.', 14.99, 11.99, '0000-00-00 00:00:00'),
(56, 'Dat Divi Engine Life Crop-top (3-Tone)', 'This comfortable cotton crop-top features the Divi Engine logo on the front expressing how easy \"data Divi Engine life\" is. It is the perfect tee for any occasion.', 14.99, 11.99, '0000-00-00 00:00:00'),
(57, 'Dat Divi Engine Life Crop-top (3-Tone) - Large', '', 14.99, 11.99, '0000-00-00 00:00:00'),
(58, 'Dat Divi Engine Life Crop-top (3-Tone) - Medium', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(59, 'Dat Divi Engine Life Crop-top (3-Tone) - Small', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(60, 'Divi Simplified Crop-top - Large, Blue', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(61, 'Divi Simplified Crop-top - Large, White', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(62, 'Divi Simplified Crop-top - Large, Yellow', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(63, 'Divi Simplified Crop-top - Medium, Blue', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(64, 'Divi Simplified Crop-top - Medium, White', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(65, 'Divi Simplified Crop-top - Medium, Yellow', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(66, 'Divi Simplified Crop-top - Small, Blue', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(67, 'Divi Simplified Crop-top - Small, White', '', 12.99, 9.99, '0000-00-00 00:00:00'),
(68, 'Divi Simplified Crop-top - Small, Yellow', '', 12.99, 9.99, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_categorie`
--

DROP TABLE IF EXISTS `product_categorie`;
CREATE TABLE IF NOT EXISTS `product_categorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categorie_id` int NOT NULL,
  `product_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_categorie`
--

INSERT INTO `product_categorie` (`id`, `categorie_id`, `product_id`) VALUES
(1, 1, '1'),
(2, 1, '2'),
(3, 1, '3'),
(4, 1, '4'),
(5, 1, '5'),
(6, 2, '6'),
(7, 2, '7'),
(8, 2, '8'),
(9, 2, '9'),
(10, 2, '10');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

DROP TABLE IF EXISTS `product_color`;
CREATE TABLE IF NOT EXISTS `product_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color_id` int NOT NULL,
  `product_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `color_id`, `product_id`) VALUES
(1, 1, '11'),
(2, 1, '2'),
(3, 1, '13'),
(4, 1, '4'),
(5, 1, '15'),
(6, 2, '16'),
(7, 2, '7'),
(8, 2, '8'),
(9, 2, '22'),
(10, 2, '10');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image`, `created_on`) VALUES
(2, 2, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Bag2.jpg', '0000-00-00 00:00:00'),
(3, 3, 'https://ajax-filters-bc.diviengine.com/sampledata/images/DE-Pins-4.jpg', '0000-00-00 00:00:00'),
(4, 4, 'https://ajax-filters-bc.diviengine.com/sampledata/images/DE-Pins-1.jpg', '0000-00-00 00:00:00'),
(5, 5, 'https://ajax-filters-bc.diviengine.com/sampledata/images/DE-Pins-4.jpg', '0000-00-00 00:00:00'),
(6, 6, 'https://ajax-filters-bc.diviengine.com/sampledata/images/DE-Pins-2.jpg', '0000-00-00 00:00:00'),
(7, 7, 'https://ajax-filters-bc.diviengine.com/sampledata/images/DE-Pins-3.jpg', '0000-00-00 00:00:00'),
(8, 8, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Lanyard1.jpg', '0000-00-00 00:00:00'),
(9, 9, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-yellow-front.jpg', '0000-00-00 00:00:00'),
(10, 10, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-blue-front.jpg', '0000-00-00 00:00:00'),
(11, 11, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-white-front.jpg', '0000-00-00 00:00:00'),
(12, 12, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-yellow-front.jpg', '0000-00-00 00:00:00'),
(13, 13, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-blue-front.jpg', '0000-00-00 00:00:00'),
(14, 14, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-white-front.jpg', '0000-00-00 00:00:00'),
(15, 15, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-yellow-front.jpg', '0000-00-00 00:00:00'),
(16, 16, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-blue-front.jpg', '0000-00-00 00:00:00'),
(17, 17, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-white-front.jpg', '0000-00-00 00:00:00'),
(18, 18, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-3-yellow-front.jpg', '0000-00-00 00:00:00'),
(19, 19, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-2---front.jpg', '0000-00-00 00:00:00'),
(23, 23, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Shirt-1---front.jpg', '0000-00-00 00:00:00'),
(27, 27, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Hoodie-2.jpg', '0000-00-00 00:00:00'),
(31, 31, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Hoodie-1.jpg', '0000-00-00 00:00:00'),
(35, 35, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Hoodie-3.jpg', '0000-00-00 00:00:00'),
(39, 39, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Hoodie-Women-1.jpg', '0000-00-00 00:00:00'),
(43, 43, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Hoodie-Women-2.jpg', '0000-00-00 00:00:00'),
(47, 47, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Hoodie-Women-3.jpg', '0000-00-00 00:00:00'),
(51, 51, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Divi-Ninja.jpg', '0000-00-00 00:00:00'),
(55, 55, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-white.jpg', '0000-00-00 00:00:00'),
(56, 56, 'https://ajax-filters-bc.diviengine.com/sampledata/images/Dat-Divi_Life.jpg', '0000-00-00 00:00:00'),
(60, 60, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-blue.jpg', '0000-00-00 00:00:00'),
(61, 61, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-white.jpg', '0000-00-00 00:00:00'),
(62, 62, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-yellow.jpg', '0000-00-00 00:00:00'),
(63, 63, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-blue.jpg', '0000-00-00 00:00:00'),
(64, 64, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-white.jpg', '0000-00-00 00:00:00'),
(65, 65, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-yellow.jpg', '0000-00-00 00:00:00'),
(66, 66, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-blue.jpg', '0000-00-00 00:00:00'),
(67, 67, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-white.jpg', '0000-00-00 00:00:00'),
(68, 68, 'https://ajax-filters-bc.diviengine.com/sampledata/images/divi-Simplified-croptop-yellow.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
CREATE TABLE IF NOT EXISTS `product_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size_id` int NOT NULL,
  `product_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `size_id`, `product_id`) VALUES
(1, 1, '11'),
(2, 1, '2'),
(3, 1, '13'),
(4, 1, '4'),
(5, 1, '15'),
(6, 2, '16'),
(7, 2, '7'),
(8, 2, '8'),
(9, 2, '22'),
(10, 2, '10');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
CREATE TABLE IF NOT EXISTS `size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `name`) VALUES
(1, 'small'),
(2, 'medium'),
(3, 'large');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
