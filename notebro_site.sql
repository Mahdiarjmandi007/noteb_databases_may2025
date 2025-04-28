-- phpMyAdmin SQL Dump
-- version 5.2.0-rc1-1.el7.remi
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2025 at 03:37 PM
-- Server version: 10.11.9-MariaDB-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notebro_site`
--
CREATE DATABASE IF NOT EXISTS `notebro_site` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `notebro_site`;

-- --------------------------------------------------------

--
-- Table structure for table `affil_choice`
--
-- Creation: Feb 21, 2024 at 10:09 PM
-- Last update: Apr 28, 2025 at 03:34 PM
--

DROP TABLE IF EXISTS `affil_choice`;
CREATE TABLE IF NOT EXISTS `affil_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `choice` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14739 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--
-- Creation: Feb 21, 2024 at 10:09 PM
-- Last update: Apr 28, 2025 at 10:01 AM
--

DROP TABLE IF EXISTS `api_keys`;
CREATE TABLE IF NOT EXISTS `api_keys` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `api_key` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_hits` int(11) NOT NULL,
  `daily_allowed` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--
-- Creation: Feb 21, 2024 at 10:09 PM
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ord` int(11) DEFAULT 9999,
  `brand` varchar(50) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `brands`
--

TRUNCATE TABLE `brands`;
--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `ord`, `brand`, `pic`, `pic2`, `link`, `inactive`) VALUES
(1, 1, 'HP', '/img/brands/HP_Logo.svg.png', '/img/brands/HP_Logo_link2black.png', '', 0),
(2, 3, 'DELL', '/img/brands/Dell_Logo.svg.png', '/img/brands/Dell_logo-2.png', '', 0),
(3, 4, 'ASUS', '/img/brands/ASUS_Logo.svg.png', '', '', 0),
(4, 6, 'ACER', '/img/brands/Acer_Logo.png', '', '', 0),
(6, 7, 'SAMSUNG', '/img/brands/samsung_logo.png', '', '', 0),
(7, 2, 'LENOVO', '/img/brands/Lenovo_Logo.png', '/img/brands/Lenovo_Logo2.png', '', 0),
(8, 5, 'APPLE', '/img/brands/Apple_Logo.png', '', '', 0),
(9, 9, 'VAIO', '/img/brands/Vaio_logo.png', '', '', 0),
(10, 10, 'FUJITSU', '/img/brands/fujitsu_logo.png', '', '', 0),
(11, 11, 'MSI', '/img/brands/msi_logo.png', '', '', 0),
(12, 12, 'GIGABYTE', '/img/brands/gigabyte_logo.png', '', '', 0),
(13, 14, 'PANASONIC', '/img/brands/panasonic_logo.png', '', '', 0),
(14, 15, 'CLEVO', '/img/brands/clevo_logo.png', '', '', 0),
(15, 16, 'RAZER', '/img/brands/razer_logo.png', '', '', 0),
(16, 13, 'MICROSOFT', '/img/brands/microsoft_logo.png', '/img/brands/microsoft_logo_2.png', '', 0),
(18, 17, 'LG', '/img/brands/lg_logo.png', '', '', 0),
(20, 18, 'TOSHIBA', '/img/brands/toshiba_logo.png', '', '', 1),
(21, 19, 'PORSCHE DESIGN', '/img/brands/porschedesign_logo.png', '', '', 1),
(22, 20, 'MEDION', '/img/brands/medion_logo.png', '', '', 0),
(23, 21, 'Xiaomi', '/img/brands/xiaomi_logo.png', '', '', 0),
(24, 22, 'Huawei', '/img/brands/huawei_logo.png', '', '', 0),
(25, 23, 'EVGA', '/img/brands/evga_logo.png', '', '', 1),
(26, 24, 'Google', '/img/brands/google_pixelbook_logo.png', '', '', 0),
(27, 25, 'Quanta', '/img/brands/Quanta_logo.png', '', '', 0),
(28, 26, 'Tongfang', '/img/brands/Tongfang_logo.png', '', '', 0),
(29, 27, 'Chuwi', '/img/brands/Chuwi_logo.png', '', '', 0),
(30, 28, 'Getac', '/img/brands/getac_logo.png', '', '', 0),
(31, 29, 'AVITA', '/img/brands/Avita_logo.png', '', '', 0),
(32, 18, 'Dynabook', '/img/brands/dynabook_logo.png', '', '', 0),
(33, 30, 'Bmorn', '/img/brands/bmorn_logo.png', '', '', 0),
(34, 31, 'framework', '/img/brands/framework_logo.png', '', '', 0),
(35, 32, 'Corsair', '/img/brands/corsair_logo.png', '', '', 0),
(36, 33, 'Eluktronics', '/img/brands/eluktronics_logo.png', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cpu_max_freq`
--
-- Creation: Feb 21, 2024 at 10:09 PM
--

DROP TABLE IF EXISTS `cpu_max_freq`;
CREATE TABLE IF NOT EXISTS `cpu_max_freq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `a` float NOT NULL,
  `b-slope` float NOT NULL,
  `maxTDP` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `cpu_max_freq`
--

TRUNCATE TABLE `cpu_max_freq`;
--
-- Dumping data for table `cpu_max_freq`
--

INSERT INTO `cpu_max_freq` (`id`, `type`, `a`, `b-slope`, `maxTDP`) VALUES
(0, 'None', 0, 0, 0),
(1, 'Intel 8 - 6c - 12t', -2.2, 0.04917, 60),
(2, 'Intel 8 - 4c - 8t', -2.348, 0.05538, 55),
(3, 'Intel 9 - 8c - 16t', -1.48, 0.03048, 65),
(4, 'Intel 8U - 4c - 8t', -1.69, 0.09421, 25);

-- --------------------------------------------------------

--
-- Table structure for table `exchrate`
--
-- Creation: Feb 21, 2024 at 10:09 PM
-- Last update: Apr 28, 2025 at 12:10 PM
--

DROP TABLE IF EXISTS `exchrate`;
CREATE TABLE IF NOT EXISTS `exchrate` (
  `id` int(3) NOT NULL,
  `code` char(6) DEFAULT NULL,
  `sign` char(4) DEFAULT NULL,
  `country` char(4) DEFAULT NULL,
  `country_long` char(25) DEFAULT NULL,
  `buy` varchar(30) DEFAULT NULL,
  `rate` float DEFAULT 0,
  `vat` float DEFAULT 0,
  `convr` float GENERATED ALWAYS AS (`rate` * `vat`) VIRTUAL,
  `regions` varchar(50) NOT NULL DEFAULT '1',
  `ex_war` varchar(50) DEFAULT NULL,
  `default_regions` varchar(10) NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `exchrate`
--

TRUNCATE TABLE `exchrate`;
--
-- Dumping data for table `exchrate`
--

INSERT INTO `exchrate` (`id`, `code`, `sign`, `country`, `country_long`, `buy`, `rate`, `vat`, `regions`, `ex_war`, `default_regions`, `valid`) VALUES
(0, 'USD', '$', 'US', 'United States', 'buy', 1, 1, '0,1,2', NULL, '2', 1),
(1, 'EUR', '€', 'EU', 'Europe', 'price+EU', 0.880909, 1.2, '0,1,3', '1,8,17,22', '3', 0),
(3, 'GBP', '£', 'UK', 'United Kingdom', 'price+UK', 0.749715, 1.1, '0,1,3', '1,8,17,22', '3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nomen`
--
-- Creation: Feb 21, 2024 at 10:09 PM
-- Last update: Apr 27, 2025 at 10:12 PM
--

DROP TABLE IF EXISTS `nomen`;
CREATE TABLE IF NOT EXISTS `nomen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT -1,
  `name` varchar(1000) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `prop` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `prop1` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `prop2` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `prop3` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `type_2` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `nomen`
--

TRUNCATE TABLE `nomen`;
--
-- Dumping data for table `nomen`
--

INSERT INTO `nomen` (`id`, `type`, `name`, `prop`, `prop1`, `prop2`, `prop3`) VALUES
(1, 1, 'BGA1440', 'INTEL', '14', '2020-12-30', NULL),
(2, 1, 'BGA1356', 'INTEL', '14', '2017-08-01', NULL),
(3, 1, 'BGA1090', 'INTEL', '14', '2019-12-01', NULL),
(4, 1, 'BGA1515', 'INTEL', '14', '2018-08-01', NULL),
(5, 1, 'BGA1528', 'INTEL', '14', '2020-04-01', NULL),
(6, 1, 'BGA (FP5)', 'AMD', '14', '2020-07-05', NULL),
(7, 1, 'BGA (FP4)', 'AMD', '28', '2019-01-09', NULL),
(8, 1, 'BGA1526', 'INTEL', '10', '2019-08-01', NULL),
(9, 1, 'BGA (FP6)', 'AMD', '7', '2023-01-01', NULL),
(10, 1, 'BGA (FT5)', 'AMD', '14', '2020-10-01', NULL),
(11, 1, 'BGA1499', 'INTEL', '10', '2021-05-31', NULL),
(12, 1, 'BGA', 'ARM-based', '5', '2025-01-31', NULL),
(13, 1, 'BGA1449', 'INTEL', '10', '2021-07-01', NULL),
(14, 1, 'BGA1338', 'INTEL', '10', '2021-02-01', NULL),
(15, 1, 'BGA1787', 'INTEL', '10', '2021-08-01', NULL),
(16, 1, 'BGA (FP7)', 'AMD', '6', '2024-03-01', NULL),
(17, 1, 'BGA1744', 'INTEL', '7', '2025-03-01', NULL),
(18, 1, 'BGA1700', 'INTEL', '7', '2022-03-01', NULL),
(19, 1, 'BGA1964', 'INTEL', '7', '2023-12-31', NULL),
(20, 1, 'BGA (FP8)', 'AMD', '5', '2025-02-02', NULL),
(21, 1, 'BGA1264', 'INTEL', '7', '2025-02-02', NULL),
(22, 1, 'BGA (FL1)', 'AMD', '5', '2025-01-01', NULL),
(23, 1, 'BGA2049', 'INTEL', '7', '2025-01-01', NULL),
(24, 1, 'BGA2833', 'INTEL', '3', '2024-09-01', NULL),
(25, 1, 'BGA (FP11)', 'AMD', '4', '2025-01-01', NULL),
(26, 1, 'BGA2114', 'INTEL', '3', '2025-01-01', NULL),
(27, 11, 'INTEL', NULL, NULL, NULL, NULL),
(28, 11, 'AMD', NULL, NULL, NULL, NULL),
(29, 11, 'ARM-based', NULL, NULL, NULL, NULL),
(30, 13, '2', NULL, NULL, NULL, NULL),
(31, 15, '24', NULL, NULL, NULL, NULL),
(32, 14, '1.1', NULL, NULL, NULL, NULL),
(33, 16, '5.8', NULL, NULL, NULL, NULL),
(34, 17, '2017-01-01', NULL, NULL, NULL, NULL),
(35, 18, '2025-03-01', NULL, NULL, NULL, NULL),
(36, 19, '28', NULL, NULL, NULL, NULL),
(37, 20, '2', NULL, NULL, NULL, NULL),
(38, 72, '2,3,4,5,6,7,10,12,14,28', NULL, NULL, NULL, NULL),
(39, 21, '5', NULL, NULL, NULL, NULL),
(40, 22, '157', NULL, NULL, NULL, NULL),
(41, 85, '5,6,9,12,15,17,25,28,29,30,35,45,46,53,54,55,65,75,80,95,115,157', NULL, NULL, NULL, NULL),
(42, 12, 'NVIDIA', NULL, NULL, NULL, NULL),
(43, 12, 'APPLE', NULL, NULL, NULL, NULL),
(44, 12, 'AMD', NULL, NULL, NULL, NULL),
(45, 12, 'INTEL', NULL, NULL, NULL, NULL),
(46, 7, 'Intel Core 3/i3', 'INTEL', NULL, NULL, NULL),
(47, 7, 'Intel Core 5/i5', 'INTEL', NULL, NULL, NULL),
(48, 7, 'Intel Core 7/9/i7/i9', 'INTEL', NULL, NULL, NULL),
(49, 7, 'Intel Xeon', 'INTEL', NULL, NULL, NULL),
(50, 7, 'AMD Ryzen 3', 'AMD', NULL, NULL, NULL),
(51, 7, 'AMD Ryzen 5', 'AMD', NULL, NULL, NULL),
(52, 7, 'AMD Ryzen 7', 'AMD', NULL, NULL, NULL),
(53, 7, 'Business features', '', NULL, NULL, NULL),
(54, 7, 'Multithreading', '', NULL, NULL, NULL),
(55, 7, 'VT-d/AMD-Vi', '', NULL, NULL, NULL),
(56, 7, 'Virtualization', '', NULL, NULL, NULL),
(57, 3, 'Maxwell', 'NVIDIA', NULL, NULL, NULL),
(58, 3, 'Turing', 'NVIDIA', NULL, NULL, NULL),
(59, 3, 'Pascal', 'NVIDIA', NULL, NULL, NULL),
(60, 3, 'M1', 'APPLE', NULL, NULL, NULL),
(61, 3, 'Ampere', 'NVIDIA', NULL, NULL, NULL),
(62, 3, 'RDNA 2.0', 'AMD', NULL, NULL, NULL),
(63, 3, 'Alchemist', 'INTEL', NULL, NULL, NULL),
(64, 3, 'M2', 'APPLE', NULL, NULL, NULL),
(65, 3, 'RDNA 3.0', 'AMD', NULL, NULL, NULL),
(66, 3, 'M2 Pro', 'APPLE', NULL, NULL, NULL),
(67, 3, 'M2 Max', 'APPLE', NULL, NULL, NULL),
(68, 3, 'Ada Lovelace', 'NVIDIA', NULL, NULL, NULL),
(69, 3, 'M3 Pro', 'APPLE', NULL, NULL, NULL),
(70, 3, 'M3 Max', 'APPLE', NULL, NULL, NULL),
(71, 3, 'M3', 'APPLE', NULL, NULL, NULL),
(72, 3, 'M4', 'APPLE', NULL, NULL, NULL),
(73, 3, 'M4 Pro', 'APPLE', NULL, NULL, NULL),
(74, 3, 'M4 Max', 'APPLE', NULL, NULL, NULL),
(75, 3, 'Blackwell 2.0', 'NVIDIA', NULL, NULL, NULL),
(76, 27, '2048', NULL, NULL, NULL, NULL),
(77, 28, '32768', NULL, NULL, NULL, NULL),
(78, 61, '0.00', NULL, NULL, NULL, NULL),
(79, 62, '230.00', NULL, NULL, NULL, NULL),
(80, 84, '10.00,12.00,18.00,20.00,25.00,30.00,32.00,35.00,40.00,45.00,50.00,55.00,60.00,65.00,70.00,75.00,80.00,85.00,90.00,95.00,100.00,105.00,110.00,115.00,120.00,125.00,130.00,135.00,140.00,145.00,150.00,155.00,165.00,175.00,180.00,195.00,230.00', NULL, NULL, NULL, NULL),
(81, 29, '64', NULL, NULL, NULL, NULL),
(82, 30, '256', NULL, NULL, NULL, NULL),
(83, 73, '1700,2048,4096,6144,8192,12288,16384,24576,32768,65536', NULL, NULL, NULL, NULL),
(84, 74, '64,96,128,192,256', NULL, NULL, NULL, NULL),
(85, 80, '2016-06-01', NULL, NULL, NULL, NULL),
(86, 81, '2025-02-02', NULL, NULL, NULL, NULL),
(87, 4, 'G-Sync/FreeSync', 'ALL', NULL, NULL, NULL),
(88, 4, 'Nvidia CUDA', 'ALL', NULL, NULL, NULL),
(89, 4, 'Optimus/Enduro', 'NVIDIA', NULL, NULL, NULL),
(90, 4, 'Ray Tracing', 'NVIDIA', NULL, NULL, NULL),
(91, 4, 'Replaceable (MXM)', 'ALL', NULL, NULL, NULL),
(92, 33, '0', NULL, NULL, NULL, NULL),
(93, 34, '24576', NULL, NULL, NULL, NULL),
(94, 83, '0,16,32,64,128,192,256,320,384,448,500,512,628,640,692,704,756,768,1000,1012,1024,1128,1152,1192,1216,1256,1280,1500,1512,1524,1536,2000,2024,2048,2128,2176,2192,2240,2256,2304,2500,2512,2548,2560,3000,3024,3048,3072,4000,4048,4096,4224,4288,4352,4596,4608,5096,5120,6096,6144,6272,6336,6400,6644,6656,7144,7168,8144,8192,8320,8384,8448,8692,8704,9192,9216,10192,10240,12288,12416,12480,12544,12788,12800,13288,13312,14288,14336,16384,16512,16576,16640,16884,16896,17384,17408,18384,18432,20480,22528,24576,24704,24768,24832,25076,25088,25576,25600,26576,26624,28672,30720,32768,36864,40960,49152', NULL, NULL, NULL, NULL),
(95, 35, '4', NULL, NULL, NULL, NULL),
(96, 36, '192', NULL, NULL, NULL, NULL),
(97, 37, '1866', NULL, NULL, NULL, NULL),
(98, 38, '8533', NULL, NULL, NULL, NULL),
(99, 39, '2', NULL, NULL, NULL, NULL),
(100, 40, '9', NULL, NULL, NULL, NULL),
(101, 41, '24', NULL, NULL, NULL, NULL),
(102, 42, '100', NULL, NULL, NULL, NULL),
(103, 70, '120', NULL, NULL, NULL, NULL),
(104, 71, '11790.00', NULL, NULL, NULL, NULL),
(105, 59, '1.819', NULL, NULL, NULL, NULL),
(106, 60, '19.657', NULL, NULL, NULL, NULL),
(107, 43, '8.300', NULL, NULL, NULL, NULL),
(108, 44, '193.000', NULL, NULL, NULL, NULL),
(109, 45, '245.000', NULL, NULL, NULL, NULL),
(110, 46, '415.440', NULL, NULL, NULL, NULL),
(111, 47, '0.521', NULL, NULL, NULL, NULL),
(112, 48, '5.200', NULL, NULL, NULL, NULL),
(113, 49, '175.000', NULL, NULL, NULL, NULL),
(114, 50, '320.000', NULL, NULL, NULL, NULL),
(115, 10, 'LED IPS', 'backt', NULL, NULL, NULL),
(116, 10, 'LED TN', 'backt', NULL, NULL, NULL),
(117, 10, 'OLED', 'backt', NULL, NULL, NULL),
(118, 10, '90Hz', 'msc', NULL, NULL, NULL),
(119, 10, '120Hz', 'msc', NULL, NULL, NULL),
(120, 10, '144Hz', 'msc', NULL, NULL, NULL),
(121, 10, '165Hz', 'msc', NULL, NULL, NULL),
(122, 10, '180Hz', 'msc', NULL, NULL, NULL),
(123, 10, '200Hz', 'msc', NULL, NULL, NULL),
(124, 10, '240Hz', 'msc', NULL, NULL, NULL),
(125, 10, '250Hz', 'msc', NULL, NULL, NULL),
(126, 10, '300Hz', 'msc', NULL, NULL, NULL),
(127, 10, '360Hz', 'msc', NULL, NULL, NULL),
(128, 10, '480Hz', 'msc', NULL, NULL, NULL),
(129, 10, 'HDR', 'msc', NULL, NULL, NULL),
(130, 10, '80% sRGB or better', 'msc', NULL, NULL, NULL),
(131, 10, 'G-Sync/FreeSync', 'msc', NULL, NULL, NULL),
(132, 31, '10.5', NULL, NULL, NULL, NULL),
(133, 32, '18.0', NULL, NULL, NULL, NULL),
(134, 75, '10.5,11.6,12.0,12.2,12.3,12.4,12.5,13.0,13.3,13.4,13.5,13.6,13.8,13.9,14.0,14.2,14.4,14.5,15.0,15.1,15.3,15.6,16.0,16.1,16.2,16.3,17.0,17.3,18.0', NULL, NULL, NULL, NULL),
(135, 65, '1024', NULL, NULL, NULL, NULL),
(136, 66, '3840', NULL, NULL, NULL, NULL),
(137, 67, '768', NULL, NULL, NULL, NULL),
(138, 68, '2560', NULL, NULL, NULL, NULL),
(139, 56, 'Glossy', NULL, NULL, NULL, NULL),
(140, 56, 'Matte', NULL, NULL, NULL, NULL),
(141, 55, '7200', NULL, NULL, NULL, NULL),
(142, 55, '5400', NULL, NULL, NULL, NULL),
(143, 54, 'EMMC', NULL, NULL, NULL, NULL),
(144, 54, 'HDD', NULL, NULL, NULL, NULL),
(145, 54, 'N/A', NULL, NULL, NULL, NULL),
(146, 54, 'SSD', NULL, NULL, NULL, NULL),
(147, 54, 'SSHD', NULL, NULL, NULL, NULL),
(148, 53, 'DDR3', NULL, NULL, NULL, NULL),
(149, 53, 'DDR4', NULL, NULL, NULL, NULL),
(150, 53, 'DDR5', NULL, NULL, NULL, NULL),
(151, 76, '4,8,12,16,18,20,24,32,36,40,48,64,96,128,192', NULL, NULL, NULL, NULL),
(152, 77, '1866,2133,2400,2666,2933,3200,3733,4000,4266,4800,5200,5500,5600,6000,6400,7467,7500,8000,8400,8448,8533', NULL, NULL, NULL, NULL),
(153, 52, 'Any/None', NULL, NULL, NULL, NULL),
(154, 52, 'Any optical drive', NULL, NULL, NULL, NULL),
(155, 52, 'NONE', NULL, NULL, NULL, NULL),
(156, 52, 'DVD-RW', NULL, NULL, NULL, NULL),
(157, 51, '150', NULL, NULL, NULL, NULL),
(158, 51, '300', NULL, NULL, NULL, NULL),
(159, 51, '433', NULL, NULL, NULL, NULL),
(160, 51, '600', NULL, NULL, NULL, NULL),
(161, 51, '867', NULL, NULL, NULL, NULL),
(162, 51, '1200', NULL, NULL, NULL, NULL),
(163, 51, '1730', NULL, NULL, NULL, NULL),
(164, 51, '1774', NULL, NULL, NULL, NULL),
(165, 51, '1900', NULL, NULL, NULL, NULL),
(166, 51, '2400', NULL, NULL, NULL, NULL),
(167, 51, '3000', NULL, NULL, NULL, NULL),
(168, 51, '3600', NULL, NULL, NULL, NULL),
(169, 51, '5800', NULL, NULL, NULL, NULL),
(170, 57, '0', NULL, NULL, NULL, NULL),
(171, 58, '5', NULL, NULL, NULL, NULL),
(172, 8, '1.54:1', NULL, NULL, NULL, NULL),
(173, 8, '1.55:1', NULL, NULL, NULL, NULL),
(174, 8, '16:10', NULL, NULL, NULL, NULL),
(175, 8, '16:9', NULL, NULL, NULL, NULL),
(176, 8, '3:2', NULL, NULL, NULL, NULL),
(177, 8, '3:4', NULL, NULL, NULL, NULL),
(178, 8, '4:3', NULL, NULL, NULL, NULL),
(179, 9, '1366x768', '16:9', '768', NULL, NULL),
(180, 9, '2560x1440', '16:9', '1440', NULL, NULL),
(181, 9, '1920x1080', '16:9', '1080', NULL, NULL),
(182, 9, '3840x2160', '16:9', '2160', NULL, NULL),
(183, 9, '2560x1600', '16:10', '1600', NULL, NULL),
(184, 9, '3000x2000', '3:2', '2000', NULL, NULL),
(185, 9, '1920x1280', '3:2', '1280', NULL, NULL),
(186, 9, '2160x1440', '3:2', '1440', NULL, NULL),
(187, 9, '2496x1664', '3:2', '1664', NULL, NULL),
(188, 9, '1600x900', '16:9', '900', NULL, NULL),
(189, 9, '1024x768', '4:3', '768', NULL, NULL),
(190, 9, '2256x1504', '3:2', '1504', NULL, NULL),
(191, 9, '3840x2400', '16:10', '2400', NULL, NULL),
(192, 9, '1920x1200', '16:10', '1200', NULL, NULL),
(193, 9, '2880x1800', '16:10', '1800', NULL, NULL),
(194, 9, '1536x1024', '3:2', '1024', NULL, NULL),
(195, 9, '3456x2160', '16:10', '2160', NULL, NULL),
(196, 9, '3072x1920', '16:10', '1920', NULL, NULL),
(197, 9, '2240x1400', '16:10', '1400', NULL, NULL),
(198, 9, '2400x1600', '3:2', '1600', NULL, NULL),
(199, 9, '3456x2234', '1.55:1', '2234', NULL, NULL),
(200, 9, '3024x1964', '1.55:1', '1964', NULL, NULL),
(201, 9, '2560x1664', '16:10', '1664', NULL, NULL),
(202, 9, '2880x1920', '3:2', '1920', NULL, NULL),
(203, 9, '3200x2000', '16:10', '2000', NULL, NULL),
(204, 9, '2880x1620', '16:9', '1620', NULL, NULL),
(205, 9, '1366x912', '3:2', '912', NULL, NULL),
(206, 9, '2880x1864', '1.54:1', '1864', NULL, NULL),
(207, 9, '2048x1280', '16:10', '1280', NULL, NULL),
(208, 9, '1920x2560', '3:4', '2560', NULL, NULL),
(209, 9, '2944x1840', '16:10', '1840', NULL, NULL),
(210, 9, '2304x1536', '3:2', '1536', NULL, NULL),
(211, 9, '3000x1876', '16:10', '1876', NULL, NULL),
(212, 79, '768,900,912,1024,1080,1200,1280,1400,1440,1504,1536,1600,1620,1664,1800,1840,1864,1876,1920,1964,2000,2160,2234,2400,2560', NULL, NULL, NULL, NULL),
(213, 78, '0.000,0.300,0.900,0.920,0.922,1.300,2.000,2.100,3.000,3.600,3.700,5.000,8.000,9.000,9.200,12.000,13.000', NULL, NULL, NULL, NULL),
(214, 23, '1 X HDMI', NULL, NULL, NULL, NULL),
(215, 23, '1 X VGA', NULL, NULL, NULL, NULL),
(216, 23, '1 X mDP', NULL, NULL, NULL, NULL),
(217, 23, '1 X DP', NULL, NULL, NULL, NULL),
(218, 24, '2 X USB-C 3.1', NULL, NULL, NULL, NULL),
(219, 24, '2 X USB 3.0', NULL, NULL, NULL, NULL),
(220, 24, 'MicroSD card reader', NULL, NULL, NULL, NULL),
(221, 24, '2 X USB 3.1', NULL, NULL, NULL, NULL),
(222, 24, '1 X USB 2.0', NULL, NULL, NULL, NULL),
(223, 24, 'SD card reader', NULL, NULL, NULL, NULL),
(224, 24, '1 X USB-C 3.1', NULL, NULL, NULL, NULL),
(225, 24, '1 X USB 3.1', NULL, NULL, NULL, NULL),
(226, 24, '2 X USB 2.0', NULL, NULL, NULL, NULL),
(227, 24, 'Thunderbolt', NULL, NULL, NULL, NULL),
(228, 24, '1 X LAN', NULL, NULL, NULL, NULL),
(229, 24, '4 X USB 3.0', NULL, NULL, NULL, NULL),
(230, 24, '1 X USB 3.0', NULL, NULL, NULL, NULL),
(231, 24, 'SIM card', NULL, NULL, NULL, NULL),
(232, 24, '2 X USB 3.2', NULL, NULL, NULL, NULL),
(233, 24, '2 X USB-C 3.2', NULL, NULL, NULL, NULL),
(234, 24, 'Docking port', NULL, NULL, NULL, NULL),
(235, 24, 'SmartCard', NULL, NULL, NULL, NULL),
(236, 24, '2 X LAN', NULL, NULL, NULL, NULL),
(237, 24, '3 X USB 3.0', NULL, NULL, NULL, NULL),
(238, 24, 'ExpressCard', NULL, NULL, NULL, NULL),
(239, 24, '1 X USB-C 3.2', NULL, NULL, NULL, NULL),
(240, 24, '3 X USB 3.1', NULL, NULL, NULL, NULL),
(241, 24, '2 X USB 3.2 Gen 1x1 (5Gbps)', NULL, NULL, NULL, NULL),
(242, 24, '2 X USB-C 3.2 Gen 2x1 (10Gbps)', NULL, NULL, NULL, NULL),
(243, 24, '1 X USB 3.2', NULL, NULL, NULL, NULL),
(244, 24, '4 X USB 3.2', NULL, NULL, NULL, NULL),
(245, 24, '1 X USB-C 4.0', NULL, NULL, NULL, NULL),
(246, 24, '3 X USB 3.2', NULL, NULL, NULL, NULL),
(247, 24, '1 X USB-C 3.0', NULL, NULL, NULL, NULL),
(248, 24, '3 X USB-C 3.2', NULL, NULL, NULL, NULL),
(249, 24, '2 X USB-C 4.0', NULL, NULL, NULL, NULL),
(250, 24, '2 X USB 3.2 Gen 2x1 (10Gbps)', NULL, NULL, NULL, NULL),
(251, 24, '4 X USB 3.1', NULL, NULL, NULL, NULL),
(252, 24, '1 X USB4 (40Gbps)', NULL, NULL, NULL, NULL),
(253, 24, '1 X USB 3.2 Gen 1x1 (5Gbps)', NULL, NULL, NULL, NULL),
(254, 24, '4 X USB4 (40Gbps)', NULL, NULL, NULL, NULL),
(255, 24, '1 X USB-C 3.2 Gen 1x1 (5Gbps)', NULL, NULL, NULL, NULL),
(256, 24, '2 X USB-C 3.0', NULL, NULL, NULL, NULL),
(257, 24, '3 X USB-C 4.0', NULL, NULL, NULL, NULL),
(258, 24, '1 X USB-C 3.2 Gen 2x1 (10Gbps)', NULL, NULL, NULL, NULL),
(259, 24, '4 X USB-C 4.0', NULL, NULL, NULL, NULL),
(260, 24, '2 X  USB4 (40Gbps)', NULL, NULL, NULL, NULL),
(261, 24, '2 X USB4 (40Gbps)', NULL, NULL, NULL, NULL),
(262, 24, 'Nano-SIM card', NULL, NULL, NULL, NULL),
(263, 24, '1 X USB 3.2 Gen 2x1 (10Gbps)', NULL, NULL, NULL, NULL),
(264, 24, '3 X USB 3.2 Gen 1x1 (5Gbps)', NULL, NULL, NULL, NULL),
(265, 24, '2 X USB-C 3.2 Gen 2x2 (20Gbps)', NULL, NULL, NULL, NULL),
(266, 24, '2 X USB-C 3.2 Gen 1x1 (5Gbps)', NULL, NULL, NULL, NULL),
(267, 24, '1 X USB-C 3.2 Gen 2x2 (20Gbps)', NULL, NULL, NULL, NULL),
(268, 24, '2 X USB4 Gen 3x2 (40 Gbps)', NULL, NULL, NULL, NULL),
(269, 24, '4 X USB 3.2 Gen 1x1 (5Gbps)', NULL, NULL, NULL, NULL),
(270, 24, '3 X USB4 (40Gbps)', NULL, NULL, NULL, NULL),
(271, 24, '3 X USB 3.2 Gen 2x1 (10Gbps)', NULL, NULL, NULL, NULL),
(272, 24, '2 X USB4 Gen 3 (40 Gbps)', NULL, NULL, NULL, NULL),
(273, 24, '1 X USB4 Gen 3 (40 Gbps)', NULL, NULL, NULL, NULL),
(274, 24, '2 X USB4 v2 (120Gbps)', NULL, NULL, NULL, NULL),
(275, 26, 'Aluminium', 'metal', NULL, NULL, NULL),
(276, 26, 'Titan gray', '', NULL, NULL, NULL),
(277, 26, 'Carbon', '', NULL, NULL, NULL),
(278, 26, 'Hard plastic', '', NULL, NULL, NULL),
(279, 26, 'Magnesium', 'metal', NULL, NULL, NULL),
(280, 26, 'Metal', 'metal', NULL, NULL, NULL),
(281, 26, 'Plastic', '', NULL, NULL, NULL),
(282, 69, 'Chiclet keyboard', NULL, NULL, NULL, NULL),
(283, 69, 'Backlit keyboard', NULL, NULL, NULL, NULL),
(284, 69, 'Spill resistant keyboard', NULL, NULL, NULL, NULL),
(285, 69, 'RGB keyboard', NULL, NULL, NULL, NULL),
(286, 69, 'Mechanical keyboard', NULL, NULL, NULL, NULL),
(287, 69, 'Detachable keyboard', NULL, NULL, NULL, NULL),
(288, 69, 'Virtual numpad', NULL, NULL, NULL, NULL),
(289, 69, 'Glass touchpad', NULL, NULL, NULL, NULL),
(290, 69, '2 x speakers', NULL, NULL, NULL, NULL),
(291, 69, 'Stylus', NULL, NULL, NULL, NULL),
(292, 69, 'Premium speakers', NULL, NULL, NULL, NULL),
(293, 69, 'Edgeless display', NULL, NULL, NULL, NULL),
(294, 69, 'Fingerprint reader', NULL, NULL, NULL, NULL),
(295, 69, 'Microphone array', NULL, NULL, NULL, NULL),
(296, 69, 'NFC', NULL, NULL, NULL, NULL),
(297, 69, 'Legacy ports', NULL, NULL, NULL, NULL),
(298, 69, '4 x speakers', NULL, NULL, NULL, NULL),
(299, 69, 'GPS', NULL, NULL, NULL, NULL),
(300, 69, '2 x tweeters', NULL, NULL, NULL, NULL),
(301, 69, 'IR camera', NULL, NULL, NULL, NULL),
(302, 69, '3 x speakers', NULL, NULL, NULL, NULL),
(303, 69, 'Rear camera', NULL, NULL, NULL, NULL),
(304, 69, '2x1W woofers', NULL, NULL, NULL, NULL),
(305, 69, '4x2W woofers', NULL, NULL, NULL, NULL),
(306, 69, '2 x subwoofer', NULL, NULL, NULL, NULL),
(307, 69, '2x2W tweeters', NULL, NULL, NULL, NULL),
(308, 69, '6 x speakers', NULL, NULL, NULL, NULL),
(309, 69, 'Webcam Cover', NULL, NULL, NULL, NULL),
(310, 69, '2x2W woofers', NULL, NULL, NULL, NULL),
(311, 69, ' 4 x speakers', NULL, NULL, NULL, NULL),
(312, 69, '2x4W woofers', NULL, NULL, NULL, NULL),
(313, 69, '2x5W woofer', NULL, NULL, NULL, NULL),
(314, 69, '2 x woofers', NULL, NULL, NULL, NULL),
(315, 69, '2x3W woofers', NULL, NULL, NULL, NULL),
(316, 69, '2x0.8W tweeters', NULL, NULL, NULL, NULL),
(317, 69, 'Bowers & Wilkins speakers', NULL, NULL, NULL, NULL),
(318, 69, 'SD card reader', NULL, NULL, NULL, NULL),
(319, 69, 'eSIM', NULL, NULL, NULL, NULL),
(320, 69, '2x5W woofers', NULL, NULL, NULL, NULL),
(321, 69, '4x3W woofers', NULL, NULL, NULL, NULL),
(322, 69, '2x3W tweeters', NULL, NULL, NULL, NULL),
(323, 69, 'USB-C Charger', NULL, NULL, NULL, NULL),
(324, 63, '0.000', NULL, NULL, NULL, NULL),
(325, 64, '13.000', NULL, NULL, NULL, NULL),
(326, 25, 'Windows 10 Home', NULL, NULL, NULL, NULL),
(327, 25, 'Windows 10 Pro', NULL, NULL, NULL, NULL),
(328, 25, 'Windows 10 S', NULL, NULL, NULL, NULL),
(329, 25, 'Windows 11 Home', NULL, NULL, NULL, NULL),
(330, 25, 'Windows 11 Pro', NULL, NULL, NULL, NULL),
(331, 25, 'No OS', NULL, NULL, NULL, NULL),
(332, 25, 'macOS', NULL, NULL, NULL, NULL),
(333, 25, 'Linux', NULL, NULL, NULL, NULL),
(334, 25, 'Chrome OS', NULL, NULL, NULL, NULL),
(335, 10, 'Stylus', NULL, NULL, NULL, NULL),
(336, 10, 'Edgeless display', NULL, NULL, NULL, NULL),
(337, 9999, '32859', 'nr_confs', NULL, NULL, NULL),
(338, 9999, '1121', 'nr_models', NULL, NULL, NULL),
(339, 9999, '635', 'nr_pmodels', NULL, NULL, NULL),
(340, 9999, '21', 'nr_retailers', NULL, NULL, NULL),
(341, 9998, '2025-04-27 22:12:21', 'gen_time', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nomen_key`
--
-- Creation: Feb 21, 2024 at 10:09 PM
--

DROP TABLE IF EXISTS `nomen_key`;
CREATE TABLE IF NOT EXISTS `nomen_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `nomen_key`
--

TRUNCATE TABLE `nomen_key`;
--
-- Dumping data for table `nomen_key`
--

INSERT INTO `nomen_key` (`id`, `name`, `type`) VALUES
(1, 'cpu_socket', 'list'),
(3, 'gpu_arch', 'list'),
(4, 'gpu_msc', 'list'),
(7, 'cpu_msc', 'list'),
(8, 'display_format', 'list'),
(9, 'display_res', 'list'),
(10, 'display_msc', 'list'),
(11, 'cpu_prod', 'list'),
(12, 'gpu_prod', 'list'),
(13, 'cpu_coremin', 'int'),
(14, 'cpu_freqmin', 'float'),
(15, 'cpu_coremax', 'int'),
(16, 'cpu_freqmax', 'float'),
(17, 'cpu_ldatemin', 'int'),
(18, 'cpu_ldatemax', 'int'),
(19, 'cpu_techmin', 'int'),
(20, 'cpu_techmax', 'int'),
(21, 'cpu_tdpmin', 'int'),
(22, 'cpu_tdpmax', 'int'),
(23, 'mdb_vport', 'list'),
(24, 'mdb_port', 'list'),
(25, 'sys_os', 'list'),
(26, 'chassis_made', 'list'),
(27, 'gpu_memmin', 'int'),
(28, 'gpu_memmax', 'int'),
(29, 'gpu_membusmin', 'int'),
(30, 'gpu_membusmax', 'int'),
(31, 'display_sizemin', 'float'),
(32, 'display_sizemax', 'float'),
(33, 'hdd_capmin', 'int'),
(34, 'hdd_capmax', 'int'),
(35, 'mem_capmin', 'int'),
(36, 'mem_capmax', 'int'),
(37, 'mem_freqmin', 'int'),
(38, 'mem_freqmax', 'int'),
(39, 'acum_nrcmin', 'int'),
(40, 'acum_nrcmax', 'int'),
(41, 'acum_capmin', 'int'),
(42, 'acum_capmax', 'int'),
(43, 'chassis_thicmin', 'float'),
(44, 'chassis_thicmax', 'float'),
(45, 'chassis_widthmin', 'float'),
(46, 'chassis_widthmax', 'float'),
(47, 'chassis_weightmin', 'float'),
(48, 'chassis_weightmax', 'float'),
(49, 'chassis_depthmin', 'float'),
(50, 'chassis_depthmax', 'float'),
(51, 'wnet_speed', 'int'),
(52, 'odd_type', 'list'),
(53, 'mem_type', 'list'),
(54, 'hdd_type', 'list'),
(55, 'hdd_rpm', 'list'),
(56, 'display_surft', 'list'),
(57, 'war_yearsmin', 'int'),
(58, 'war_yearsmax', 'int'),
(59, 'acum_batlifemin', 'float'),
(60, 'acum_batlifemax', 'float'),
(61, 'gpu_powermin', 'float'),
(62, 'gpu_powermax', 'float'),
(63, 'chassis_webmin', 'float'),
(64, 'chassis_webmax', 'float'),
(65, 'display_hresmin', 'int'),
(66, 'display_hresmax', 'int'),
(67, 'display_vresmin', 'int'),
(68, 'display_vresmax', 'int'),
(69, 'chassis_msc', 'list'),
(70, 'price_min', 'int'),
(71, 'price_max', 'int'),
(72, 'cpu_techlist', 'list'),
(73, 'gpu_memlist', 'list'),
(74, 'gpu_membuslist', 'list'),
(75, 'display_sizelist', 'list'),
(76, 'mem_caplist', 'list'),
(77, 'mem_freqlist', 'list'),
(78, 'chassis_webcamlist', 'list'),
(79, 'display_vreslist', 'list'),
(80, 'gpu_ldatemin', 'int'),
(81, 'gpu_ldatemax', 'int'),
(82, 'chassis_charger', 'list'),
(83, 'hdd_sizes', 'list'),
(84, 'gpu_tdps', 'list'),
(85, 'cpu_tdps', 'list'),
(86, 'chassis_pport', 'list'),
(87, 'chassis_pport_old', 'list'),
(9998, 'site_gentime', 'list'),
(9999, 'site_info', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `nomen_models`
--
-- Creation: Feb 21, 2024 at 10:09 PM
-- Last update: Apr 28, 2025 at 11:33 AM
--

DROP TABLE IF EXISTS `nomen_models`;
CREATE TABLE IF NOT EXISTS `nomen_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod` varchar(50) DEFAULT NULL,
  `family` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `nomen_models`
--

TRUNCATE TABLE `nomen_models`;
--
-- Dumping data for table `nomen_models`
--

INSERT INTO `nomen_models` (`id`, `prod`, `family`) VALUES
(1, 'Acer', NULL),
(2, 'Apple', NULL),
(3, 'Asus', NULL),
(4, 'Chuwi', NULL),
(5, 'Clevo', NULL),
(6, 'Corsair', NULL),
(7, 'Dell', NULL),
(8, 'Eluktronics', NULL),
(9, 'Framework', NULL),
(10, 'Fujitsu', NULL),
(11, 'Getac', NULL),
(12, 'Gigabyte', NULL),
(13, 'Google', NULL),
(14, 'HP', NULL),
(15, 'Huawei', NULL),
(16, 'Lenovo', NULL),
(17, 'LG', NULL),
(18, 'Microsoft', NULL),
(19, 'MSI', NULL),
(20, 'Panasonic', NULL),
(21, 'Quanta', NULL),
(22, 'Razer', NULL),
(23, 'Samsung', NULL),
(24, 'Tongfang', NULL),
(25, 'Toshiba', NULL),
(26, 'VAIO', NULL),
(27, 'Xiaomi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nomen_modifiers`
--
-- Creation: Feb 21, 2024 at 10:09 PM
--

DROP TABLE IF EXISTS `nomen_modifiers`;
CREATE TABLE IF NOT EXISTS `nomen_modifiers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `value_to_replace` varchar(50) NOT NULL,
  `value_to_insert` varchar(50) DEFAULT NULL,
  `exec_order` int(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `exec_order` (`exec_order`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `nomen_modifiers`
--

TRUNCATE TABLE `nomen_modifiers`;
--
-- Dumping data for table `nomen_modifiers`
--

INSERT INTO `nomen_modifiers` (`id`, `value_to_replace`, `value_to_insert`, `exec_order`, `type`) VALUES
(1, 'Linux Ubuntu', 'Linux Ubuntu', 1, 'replace'),
(2, 'IPU 6.0 optional', '', 1, 'cpu_msc_ignore'),
(3, 'precision boost', '', 1, 'cpu_msc_ignore'),
(4, 'SMT', '', 1, 'cpu_msc_ignore'),
(5, 'learning boost', '', 1, 'cpu_msc_ignore'),
(6, '64-bit', '', 1, 'cpu_msc_ignore'),
(7, 'BPT', '', 1, 'cpu_msc_ignore'),
(8, 'Intel GNA 2.0', '', 1, 'cpu_msc_ignore'),
(9, '16-core Neural Engine', '', 1, 'cpu_msc_ignore'),
(10, 'IPU 6.0', '', 1, 'cpu_msc_ignore');

-- --------------------------------------------------------

--
-- Table structure for table `nomen_swap`
--
-- Creation: Feb 21, 2024 at 10:09 PM
--

DROP TABLE IF EXISTS `nomen_swap`;
CREATE TABLE IF NOT EXISTS `nomen_swap` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `prop_name` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `swap_to_key` int(20) DEFAULT NULL,
  `duplicate` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `nomen_swap`
--

TRUNCATE TABLE `nomen_swap`;
--
-- Dumping data for table `nomen_swap`
--

INSERT INTO `nomen_swap` (`id`, `prop_name`, `swap_to_key`, `duplicate`) VALUES
(1, 'Stylus', 10, 1),
(2, 'Edgeless display', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tooltip`
--
-- Creation: Feb 21, 2024 at 10:09 PM
--

DROP TABLE IF EXISTS `tooltip`;
CREATE TABLE IF NOT EXISTS `tooltip` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `prop` int(11) DEFAULT 0,
  `lang` char(3) DEFAULT NULL,
  `lang_id` int(11) DEFAULT 0,
  `comp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prop` (`prop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `tooltip`
--

TRUNCATE TABLE `tooltip`;
--
-- Dumping data for table `tooltip`
--

INSERT INTO `tooltip` (`id`, `name`, `text`, `prop`, `lang`, `lang_id`, `comp`) VALUES
(0, 'processor', 'The processor is the core component of any laptop and a key factor for productivity and performance. ', 0, 'EN', 1, 'CPU'),
(1, 'socket', 'The type of connector between the motherboard and the CPU.\n\"BGA\" = soldered CPU <br>\n\"PGA / LGA\" = replaceable CPU\n', 0, 'EN', 1, 'CPU'),
(2, 'clockspeed', 'The speed at which information is being processed. The higher it is, the faster the laptop.', 0, 'EN', 1, 'CPU'),
(3, 'cores', 'Nowadays processors are made up of smaller individual processing units, called cores. Usually more cores mean a faster laptop. ', 0, 'EN', 1, 'CPU'),
(4, 'turbospeed', 'When used intensively, processors can boost their clock speed for short periods of time to help you do your work faster.', 0, 'EN', 1, 'CPU'),
(5, 'cpurating', 'Rating as a percentage of the processing power of the most powerful consumer grade laptop processor available (currently Intel i9-11900K).', 0, 'EN', 1, 'CPU'),
(6, 'technology', 'CPU production technology is given by the size of its transistors, measured in nano-meters (nm). A smaller number indicates a better, more efficient CPU.', 0, 'EN', 1, 'CPU'),
(7, 'cpucache', 'CPUs have embedded memory, called cache memory, that allows them to operate faster and more efficient. More cache memory helps the CPU run faster, but not by a large margin.', 0, 'EN', 1, 'CPU'),
(8, 'cputpd', 'TDP = Thermal Design Power, represents the CPU\'s power consumption and generated heat under load.', 0, 'EN', 1, 'CPU'),
(9, 'cpu_msc', '64-bit = Can access more than 3.25 GB of memory<br><br>\r\nSSE = Streaming SIMD Extensions, greatly increase performance when exactly the same operations are to be performed on multiple data objects <br><br>\r\nAVX = Advanced Vector Extensions, extends the capabilities of SEE, especially for floating point data and operations.<br><br> AVX 2.0 extends AVX capabilities to integers.<br>\r\nHT =Hyper-Threading technology, improves the CPU\'s ability to run multiple task simultaneously. <br><br>\r\nVT-x = AMD-V = Virtualization technology, allows to run a complete virtual PC inside the existing operating system. <br><br>\r\nVT-d = AMD-Vi = Virtualization for directed I/O, allows virtual PCs to interact directly with the physical ports (USB) of the laptop. <br><br>\r\nVT-c = Virtualization for connectivy, allows virtual PCs to interact directly with the physical network card of the laptop. <br><br>\r\nTB = Turbo Boost, makes the CPUs reduce or boost its speed depending on its workload. <br>', 1, 'EN', 1, 'CPU'),
(10, 'cpu_sse', 'SSE = Streaming SIMD Extensions, greatly increase performance when exactly the same operations are to be performed on multiple data objects', 1, 'EN', 1, 'CPU'),
(11, 'cpu_64', '64-bit = Better memory management and can address more than 3.25 GB of memory', 1, 'EN', 1, 'CPU'),
(12, 'cpu_avx', 'AVX = Advanced Vector Extensions, extends the capabilities of SEE, especially for floating point data and operations', 1, 'EN', 1, 'CPU'),
(13, 'cpu_avx2', 'AVX = Advanced Vector Extensions, extends the capabilities of SEE, especially for floating point data and operations. AVX 2.0 extends AVX capabilities to integers.', 1, 'EN', 1, 'CPU'),
(15, 'cpu_ht', 'HT/SMT = Hyper-Threading technology improves the CPU\'s ability to run multiple task simultaneously', 1, 'EN', 1, 'CPU'),
(16, 'cpu_vt', 'VT-x = AMD-V = Virtualization technology allows to run a complete virtual PC inside the existing operating system', 1, 'EN', 1, 'CPU'),
(17, 'cpu_vtd', 'VT-d = AMD-Vi = Virtualization for directed I/O, allows virtual PCs to interact directly with the physical ports (USB) of the laptop', 1, 'EN', 1, 'CPU'),
(18, 'cpu_vtc', 'VT-c = Virtualization for connectivy, allows virtual PCs to interact directly with the physical network card of the laptop', 1, 'EN', 1, 'CPU'),
(19, 'cpu_tb', 'TBT = Intel Turbo Boost = AMD Turbo Core = AMD XFR and is similar to BPT = Intel Burst Performance. All of which make the CPU boost its speed depending on workload.', 1, 'EN', 1, 'CPU'),
(20, 'videocard', 'The video card is the main component that influences user interface and graphic experience. At the core of every video card is the graphics processor unit (GPU).', 0, 'EN', 1, 'GPU'),
(21, 'gpu_core', 'The standard speed at which the graphics processing unit operates, the higher it is, the better performance.', 0, 'EN', 1, 'GPU'),
(22, 'gpu_arch', 'Each video card is based on a generic architecture. Newer architectures have more features and better performance.', 0, 'EN', 1, 'GPU'),
(23, 'gpu_pipe', 'Pipelines (shaders) are the number of computing units of the graphics processing unit. On the same architecture, more pipelines mean better performance.', 0, 'EN', 1, 'GPU'),
(24, 'gpu_shader', 'The highest shader model supported by the video card. For video games to run, they need to implement a shader model no larger than the highest supported by the video card.', 0, 'EN', 1, 'GPU'),
(25, 'gpu_mems', 'The speed at which the video memory operates, a higher number means better performance.', 0, 'EN', 1, 'GPU'),
(26, 'gpu_bus', 'The amount of information that can be exchanged at once between the graphic processing core and the video memory.', 0, 'EN', 1, 'GPU'),
(27, 'gpu_shared', 'Many laptop video cards do not have dedicated video memory and use shared system RAM memory. Shared memory is significantly slower than dedicated video memory.', 0, 'EN', 1, 'GPU'),
(28, 'gpu_memsize', 'Top tier video cards benefit from a larger video memory (over 3072 MB).', 0, 'EN', 1, 'GPU'),
(29, 'gpu_TDP', 'TDP = Thermal Design Power, represents the video card\'s power consumption and generated heat under load.', 0, 'EN', 1, 'GPU'),
(30, 'gpu_rating', 'Rating as a percentage of the processing power of the most powerful single laptop video card available (currently Nvidia RTX 3080 Ti).', 0, 'EN', 1, 'GPU'),
(31, 'gpu_boost', 'When used intensively graphics processing units can operate at much higher speeds provided they do not exceed certain designated temperatures.', 0, 'EN', 1, 'GPU'),
(32, 'GPU_tech', 'The production technology of the core processing unit is given by the size of its transistors, measured in nano-meters (nm). A smaller number indicates a better, more efficient core.', 0, 'EN', 1, 'GPU'),
(33, 'GPU_gsync', 'An adaptive-sync technology that eliminates screen tearing, making for a much smother gameplay with no performance penalty.', 0, 'EN', 1, 'GPU'),
(34, 'GPU_eyefinity', 'AMD technology which enables smother gameplay and better immersion when using multi-monitor setups.', 0, 'EN', 1, 'GPU'),
(35, 'GPU_Physx', 'If games support Nvidia PhysX then they enable additional effects such as tearable cloth, dynamic smoke or simulated particle debris.', 0, 'EN', 1, 'GPU'),
(36, 'GPU_CUDA', 'A parallel computing platform accessible to software developers through CUDA-accelerated libraries. Currently supports C, C++ and Fortran.', 0, 'EN', 1, 'GPU'),
(37, 'GPU_SLI', 'A multi video card solution, linking two or more video cards to produce a single output.', 0, 'EN', 1, 'GPU'),
(38, 'GPU_App', 'Improves video quality and enhance application performance such a video conversion programs.', 0, 'EN', 1, 'GPU'),
(39, 'GPU_OE', 'A switchable graphics technology that uses the processor\'s integrated video card when no video demanding applications are running, greatly improving battery life.', 0, 'EN', 1, 'GPU'),
(40, 'GPU_Bboost', 'Significantly improves battery life when running games just on battery power.', 0, 'EN', 1, 'GPU'),
(41, 'GPU_zerocore', 'Improves battery life when running non-video intensive tasks like web-browsing or office work.', 0, 'EN', 1, 'GPU'),
(42, 'Display_d', 'The quality of a laptop display is fundamental for end user experience and productivity.', 0, 'EN', 1, 'DISPLAY'),
(43, 'Display_size', 'Display size is directly related to laptop size.', 0, 'EN', 1, 'DISPLAY'),
(44, 'Display_ratio', 'Represents the ratio between the width and height of the display.', 0, 'EN', 1, 'DISPLAY'),
(45, 'Display_res', 'Resolution = the number of pixels (coloured dots) that the screen has (width x height). A higher resolution greatly improves user experience and productivity.', 0, 'EN', 1, 'DISPLAY'),
(46, 'Display_surf', 'Matte = good visibility in all conditions. Glossy = more vivid colours but poor visibility in brightly lit environments.', 0, 'EN', 1, 'DISPLAY'),
(47, 'Display_tech', 'Type of technology used by the display.', 0, 'EN', 1, 'DISPLAY'),
(48, 'Display_rate', 'Rating is based on resolution, type and colour accuracy. The best screens are usually found on high-end professional laptops.', 0, 'EN', 1, 'DISPLAY'),
(49, 'HDD_rpm', 'RPM = rotations per minute. For classic magnetic disks (HDD) a higher RPM means a faster device.', 0, 'EN', 1, 'HDD'),
(50, 'HDD_cap', 'Capacity = the amount of information the storage can hold, the minimum necessary for decent operation is 64GB, recommended is 256 GB.', 0, 'EN', 1, 'HDD'),
(51, 'HDD_type', 'HDD = classic storage on spinning magnetic disks. SSD = modern storage on integrated memory circuits. M.2 = same as SSD but faster and smaller.\n', 0, 'EN', 1, 'HDD'),
(52, 'MDB_vga', 'On board = integrated into the motherboard. Replaceable = a replaceable propriety card. MXM = a replaceable MXM standard card.', 0, 'EN', 1, 'MDB'),
(53, 'MDB_desc', 'All laptop components are connected to the motherboard. Some components like the video card and processor are usually soldered on the motherboard.', 0, 'EN', 1, 'MDB'),
(54, 'MDB_mem', 'The number memory slots influences the maximum amount of system memory on a laptop.', 0, 'EN', 1, 'MDB'),
(55, 'MDB_chip', 'The chipset controls how all the components of the laptop interact with one another.', 0, 'EN', 1, 'MDB'),
(56, 'MDB_iinter', 'Type of supported internal card slots.', 0, 'EN', 1, 'MDB'),
(57, 'MDB_sinter', 'Type of main storage interface.', 0, 'EN', 1, 'MDB'),
(58, 'MDB_lan', 'Integrated network card for classic cable networks (LAN).', 0, 'EN', 1, 'MDB'),
(59, 'MEM_desc', 'Information needed for immediate use is kept in system memory.', 0, 'EN', 1, 'MEM'),
(60, 'MEM_type', 'Memory speed determines how fast information is exchanged between the memory and the processor. It has negligible impact on overall laptop performance.', 0, 'EN', 1, 'MEM'),
(61, 'MEM_stand', 'Memories are built around a set of standardized specifications. Memories using the same standard are interchangeable.', 0, 'EN', 1, 'MEM'),
(62, 'MEM_cap', 'If a laptop runs out of system memory there is a noticeable loss in performance and productivity. For most office work 4 GB is enough, but gaming or image editing require a lot more. ', 0, 'EN', 1, 'MEM'),
(63, 'MEM_cas', 'CAS Latency = the time it takes for a memory module to retrieve information. Memories on the same standard/speed run faster if they have a smaller CAS latency.', 0, 'EN', 1, 'MEM'),
(64, 'OPT_desc', 'Most laptops come with an integrated optical drive for DVDs and/or Blu-ray disks.', 0, 'EN', 1, 'ODD'),
(65, 'OPT_type', 'DVD-RW = read/write/erase DVDs. BD-ROM = read Blu-rays & read/write/erase DVDs. BD-R = read/write Blu-rays/DVDs. BD-RE = read/write/erase Blu-rays/DVDs ', 0, 'EN', 1, 'ODD'),
(66, 'OPT_speed', 'The number indicates the read speed of the drive. A higher number means a faster drive.', 0, 'EN', 1, 'ODD'),
(67, 'BAT_cap', 'The maximum amount of power stored by the battery. For the same laptop a higher number means better battery life.', 0, 'EN', 1, 'ACUM'),
(68, 'BAT_rate', 'Rating is based on battery capacity, weight and size.', 0, 'EN', 1, 'ACUM'),
(69, 'CHAS_desc', 'All laptop components are enclosed in the chassis. A well designed chassis will provide good cooling and increased resistance to shocks.', 0, 'EN', 1, 'CHASSIS'),
(70, 'CHAS_per', 'Type and number of available external ports.', 0, 'EN', 1, 'CHASSIS'),
(71, 'WIFI_desc', 'Today all laptops come equipped with a wireless card.', 0, 'EN', 1, 'WNET'),
(72, 'WIFI_speed', 'Maximum theoretical speed of the wireless card.', 0, 'EN', 1, 'WNET'),
(73, 'WIFI_stand', 'All wireless cards are build around a set of industry standards, named \"a\", \"b\", \"c\" and so on. A higher letter implies a newer, better standard and increased transfer speeds.', 0, 'EN', 1, 'WNET'),
(74, 'Warranty_stand', 'Standard warranty = the laptop is sent to the service centre and collected/received when fixed. On-Site = a trained professional goes to the laptop\'s location and fixes it. ADP = Accidental Damage Protection.', 0, 'EN', 1, 'WAR'),
(75, 'OS_desc', 'The software program installed on a laptop for basic user interaction and functionality. Most popular operating systems are Windows, MacOS and Linux.', 0, 'EN', 1, 'SIST'),
(76, 'CHAS_wb', 'The quality of the webcam is measured in megapixels (MP). More megapixels result in better quality.', 0, 'EN', 1, 'CHASSIS'),
(77, 'CHAS_per', 'Type and number of available external video ports.', 0, 'EN', 1, 'CHASSIS'),
(78, 'WNET_blu', 'Bluetooth is used to connected other wireless devices such as mice, keyboards or headphones to a laptop.', 0, 'EN', 1, 'WNET'),
(79, 'WNET_displ', 'Wireless Display (WiDi) is a technology developed by Intel which enables users to stream music, movies, photos, videos and apps wirelessly from their laptop to a compatible HDTV.', 0, 'EN', 1, 'WNET'),
(80, 'oem', 'They are referred to as OEM (original equipment manufacturer). OEMs are manufacturers who resell another company\'s product under their own name and branding.', 0, 'EN', 1, 'OTHER'),
(81, 'quanta', '<a href=\"https://en.wikipedia.org/wiki/Quanta_Computer\">Quanta wikipedia page</a>', 0, 'EN', 1, 'OTHER'),
(82, 'compal', '<a href=\"https://en.wikipedia.org/wiki/Compal_Electronics\">Compal wikipedia page</a>', 0, 'EN', 1, 'OTHER'),
(83, 'wistron', '<a href=\"https://en.wikipedia.org/wiki/Wistron_Corporation\">Wistron wikipedia page</a>', 0, 'EN', 1, 'OTHER'),
(84, 'chassis_weight', 'Weight may vary depending on configuration.', 0, 'EN', 1, 'CHASSIS'),
(85, 'chassis_thickness', 'Thickness usually varies, this is the laptop\'s thickest point.', 0, 'EN', 1, 'CHASSIS'),
(86, 'display_srgb', 'sRGB is currently the standard range of colors for laptop displays. The percentage represents how much of this color range (gamut) the display is able to reproduce.', 0, 'EN', 1, 'DISPLAY'),
(87, 'display_nits', 'Nits measure the luminosity of a display, it is equivalent to candelas per square metre (cd/m2). Most consumer laptop displays have luminances of 200 to 300 nits. High-definition televisions range from 450 to about 1500 nits.', 0, 'EN', 1, 'DISPLAY'),
(88, 'GPU_RAY', 'Ray tracing improves reflections and lighting realism in games while severely impacting the framerate.', 0, 'EN', 1, 'GPU'),
(89, 'GPU_NVDLSS', 'Using machine learning (AI), it enables higher quality textures and smoother edges without a noticeable impact on the framerate.', 0, 'EN', 1, 'GPU'),
(100, 'expand_model', 'Click the arrow for more information.', 0, 'EN', 1, 'OTHER'),
(101, 'expand_search', 'Click the arrow for more options.', 0, 'EN', 1, 'OTHER'),
(102, 'overall_rating', 'Noteb overall rating weighs over 40 different technical features of a laptop against all other laptops on the market. Each feature receives a score from 1 to 100, where 100 is the best available on the market and 1 is the worse.\r\nNo laptop can achieve a rating of 100% simply because in a laptop everything is a trade-off. For instance, a high-performance processor will necessarily sacrifice portability and battery life. Still, there are laptops with low performance and poor battery life, which get a low rating from Noteb, and there are laptops which provide excellent performance and long battery life which get much higher scores. Be advised that a higher rating will most certainly imply a higher price.', 0, 'EN', 1, 'OTHER'),
(103, 'intel_gna', 'Delivers a dedicated engine for background workloads such as voice processing and noise suppression at ultra-low power, for maximum battery life.', 0, 'EN', 1, 'CPU'),
(104, 'gpu_mxm', 'MXM is an industry-standard graphics card format that enables laptops to have replaceable and upgradable graphic cards. In 2009-2010 this format was widely popular and, many laptops had replaceable/upgradeable video cards. As of 2020, this format is almost abandoned.', 0, 'EN', 1, 'CPU'),
(105, 'gpu_pgff', 'The video card in this laptop is a separate board that uses a vendor propriety format (PGFF), making it possible to upgrade or replace. However, obtaining a replacement board will be difficult. Since the graphics card is often one of the components to fail, being able to replace it makes the laptop much easier to fix.', 0, 'EN', 1, 'CPU');

-- --------------------------------------------------------

--
-- Table structure for table `top_laptops`
--
-- Creation: Feb 21, 2024 at 10:09 PM
-- Last update: Apr 28, 2025 at 11:31 AM
--

DROP TABLE IF EXISTS `top_laptops`;
CREATE TABLE IF NOT EXISTS `top_laptops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `ord` int(11) DEFAULT 100,
  `m_id` int(11) DEFAULT NULL,
  `c_id` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cpu` varchar(20) NOT NULL,
  `display` varchar(20) NOT NULL,
  `mem` varchar(20) NOT NULL,
  `hdd` varchar(20) NOT NULL,
  `shdd` varchar(20) NOT NULL,
  `gpu` varchar(20) NOT NULL,
  `wnet` varchar(20) NOT NULL,
  `odd` varchar(20) NOT NULL,
  `mdb` varchar(20) NOT NULL,
  `chassis` varchar(20) NOT NULL,
  `acum` varchar(20) NOT NULL,
  `warranty` varchar(20) NOT NULL,
  `sist` varchar(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `price` int(11) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `min_price` int(11) NOT NULL DEFAULT 0,
  `max_price` int(11) NOT NULL DEFAULT 100,
  `price_range` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `c_id` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `top_laptops`
--

TRUNCATE TABLE `top_laptops`;
--
-- Dumping data for table `top_laptops`
--

INSERT INTO `top_laptops` (`id`, `type`, `ord`, `m_id`, `c_id`, `img`, `name`, `cpu`, `display`, `mem`, `hdd`, `shdd`, `gpu`, `wnet`, `odd`, `mdb`, `chassis`, `acum`, `warranty`, `sist`, `date`, `price`, `valid`, `min_price`, `max_price`, `price_range`) VALUES
(451, 'HomeStudent', 98, 7493, '11230124657802000384_7493', 'res/img/models/4945_1.jpg', 'Lenovo Yoga 7 2-in-1 14', '853', '1443', '224', '30', '0', '1068', '84', '0', '4877', '4583', '769', '1', '10', '2021-01-04', 690, 1, 700, 800, 1),
(457, 'Business', 100, 7414, '1721116018497808524_7414', 'res/img/models/4875_1.jpg', 'HP Zbook Firefly 16 G11', '830', '1439', '174', '30', '0', '872', '84', '0', '4798', '4520', '56', '1', '11', '2021-03-09', 1900, 1, 1900, 2000, 1),
(458, 'Gaming', 100, 7573, '568910862489304103_7573', 'res/img/models/5012_1.jpg', 'Acer Nitro V 16', '838', '1713', '162', '40', '0', '987', '84', '0', '4970', '4649', '710', '1', '10', '2021-03-09', 1000, 1, 1000, 1100, 1),
(475, 'Business', 100, 6948, '16937074658257000448_6948', 'res/img/models/4453_1.jpg', 'Lenovo ThinkPad P16', '792', '1410', '173', '40', '0', '1039', '84', '0', '4389', '4149', '822', '1', '11', '2021-08-24', 1800, 1, 1800, 1900, 1),
(485, 'Gaming', 100, 6876, '5619426299485730403_6876', 'res/img/models/4389_1.jpg', 'HP Omen 16', '799', '1612', '162', '40', '0', '1033', '84', '0', '4331', '4090', '741', '1', '10', '2022-01-19', 1000, 1, 1000, 1100, 1),
(488, 'HomeStudent', 100, 7369, '13323139345979000832_7369', 'res/img/models/4833_1.jpg', 'Apple MacBook Air 15', '822', '1669', '158', '30', '0', '1054', '75', '0', '4747', '4479', '996', '1', '3', '2022-02-11', 1450, 1, 1400, 1550, 1),
(489, 'Gaming', 89, 6766, '15433422076196999168_6766', 'res/img/models/4310_1.jpg', 'Lenovo Legion Pro', '772', '1579', '168', '66', '0', '946', '72', '0', '4261', '4030', '533', '1', '10', '2022-02-24', 1500, 1, 1500, 1600, 1),
(493, 'HomeStudent', 99, 7062, '11055363233009999872_7062', 'res/img/models/4548_1.jpg', 'Dell Inspiron 15', '769', '596', '121', '40', '0', '907', '35', '0', '4479', '4239', '897', '1', '10', '2022-06-17', 700, 1, 700, 800, 1),
(494, 'Business', 100, 7364, '11938859791075000320_7364', 'res/img/models/4828_1.jpg', 'Dell XPS 16', '829', '1725', '160', '40', '0', '939', '84', '0', '4742', '4474', '980', '1', '10', '2022-08-18', 2400, 1, 2400, 2500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vars`
--
-- Creation: Feb 21, 2024 at 10:09 PM
-- Last update: Apr 28, 2025 at 11:31 AM
--

DROP TABLE IF EXISTS `vars`;
CREATE TABLE IF NOT EXISTS `vars` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `value` varchar(200) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `vars`
--

TRUNCATE TABLE `vars`;
--
-- Dumping data for table `vars`
--

INSERT INTO `vars` (`id`, `name`, `value`) VALUES
(1, 'genconfig', '0'),
(2, 'veto_model_name', 'dGPU,FHD,HD,QHD,WWAN,vPro');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
