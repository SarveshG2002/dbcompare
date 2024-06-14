-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2024 at 12:16 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chintamani`
--

-- --------------------------------------------------------

--
-- Table structure for table `chintamani-agency-buyers`
--

CREATE TABLE `chintamani-agency-buyers` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chintamani-agency-buyers`
--

INSERT INTO `chintamani-agency-buyers` (`id`, `name`, `phone`, `email`, `commission`, `gst`, `pan`, `address`, `country`, `state`, `pincode`, `previous_due`, `tax_no`, `delivery_address`, `created_at`) VALUES
(3, 'UCkNXIKken', '0630506306', 'W8ungCAMOX', 'uC8vFXrRFq', 'g5d4rqehul', 'xpPImKuj4U', 'EVSbcQ8nrr', '', '', 'Xdg0WAbTQy', 'UFO2qLCdWB', 'ZRPJT0F7uD', 'GCWAtmKDnB', '2024-06-11 13:27:02'),
(4, 'Tushar Kandekar', '09987033179', 'admin@gmail.com', '200', 'wwdw', 'GUYF64564', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', 'India', 'maharashtra', '421306', '400', '45465', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', '2024-06-13 16:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `chintamani-agency-sales-order`
--

CREATE TABLE `chintamani-agency-sales-order` (
  `id` int NOT NULL,
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transport_commision` varchar(211) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gtotal` varchar(211) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalquantity` varchar(222) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lr_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chintamani-agency-sales-order`
--

INSERT INTO `chintamani-agency-sales-order` (`id`, `order_no`, `order_date`, `supplier`, `buyer`, `gst`, `delivery_address`, `remarks`, `transport`, `buyer_signature`, `sales_signature`, `created_at`, `transport_commision`, `gtotal`, `totalquantity`, `commission`, `lr_no`) VALUES
(1, 'SO1', '2024-06-13', '2', '3', 'g5d4rqehul', 'EVSbcQ8nrr', '', '5', '', '', '2024-06-13 16:53:06', '264.12', '13206', '21.3', '2', NULL),
(2, '1', '2024-06-13', 'Supplier Name', 'Buyer Name', 'GST123456', '123 Buyer St, Buyer City', 'Sample remarks', 'Transport Company', 'BuyerSign.png', 'SalesSign.png', '2024-06-13 17:04:52', '500.00', '15000.00', '100.8587', '300.00', NULL),
(3, 'SO2', '2024-06-13', '2', '4', 'wwdw', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', 'ok', '5', '', '', '2024-06-13 17:08:19', '83.6908', '4184.54', '41.84540', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chintamani-agency-sales-order-details`
--

CREATE TABLE `chintamani-agency-sales-order-details` (
  `id` int NOT NULL,
  `sales_order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chintamani-agency-sales-order-details`
--

INSERT INTO `chintamani-agency-sales-order-details` (`id`, `sales_order_id`, `style_no`, `description`, `quantity`, `rate`, `discount`, `total`, `note`, `created_at`) VALUES
(1, '1', '1', 'ok', '21.3000', '620', '13206', '', '', '2024-06-13 16:53:06'),
(2, '3', '1', '', '20.5454', '100', '2054.54', '', '', '2024-06-13 17:08:19'),
(3, '3', '2', '', '21.3000', '100', '2130', '', '', '2024-06-13 17:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `chintamani-agency-sellers`
--

CREATE TABLE `chintamani-agency-sellers` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chintamani-agency-sellers`
--

INSERT INTO `chintamani-agency-sellers` (`id`, `name`, `phone`, `email`, `commission`, `gst`, `pan`, `address`, `country`, `state`, `pincode`, `previous_due`, `tax_no`, `delivery_address`, `created_at`) VALUES
(2, 'Sarvesh Gamdhere', '0694541098', 'DBuRI3By4C', '2', 'dJIIXMfjGp', 'ZYufAmCJ0g', ' C0NbHi2hqk', 'India', 'andhra-pradesh', 'H93GgXXoLf', 'rIp35KcYqj', 'sCehlKXcOp', 'dGWATo9Gxm', '2024-06-11 15:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `chintamani-agency-settings`
--

CREATE TABLE `chintamani-agency-settings` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chintamani-agency-settings`
--

INSERT INTO `chintamani-agency-settings` (`id`, `name`, `phone`, `email`, `logo`, `created_at`) VALUES
(1, 'Chintamani', '5269265090', 'ui0n6@p2dn.com', NULL, '2024-06-12 15:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `chintamani-agency-transport`
--

CREATE TABLE `chintamani-agency-transport` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chintamani-agency-transport`
--

INSERT INTO `chintamani-agency-transport` (`id`, `name`, `phone`, `email`, `commission`, `gst`, `pan`, `address`, `country`, `state`, `pincode`, `previous_due`, `tax_no`, `delivery_address`, `created_at`) VALUES
(1, 'jL5pxAq7Qs', '5344935648', '85j4l27FT8', '2.5', '06J0VGATS4', 'XoRMQI8dzD', ' XEEKb4giTU', 'India', 'andhra-pradesh', '9k2ws9EXf2', NULL, 'EFnzvW2M1u', NULL, '2024-06-11 13:57:21'),
(2, 'Karthik  Shettigar ', '09987033179', 'chellascafe@gmail.com', '10', 'KJGKUG325346', 'DFG79987', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', 'India', 'maharashtra', '421306', NULL, '45465', NULL, '2024-06-13 16:04:33'),
(3, 'Tushar Kandekar', '09987033179', 'admin@gmail.com', '10', 'wwdw', NULL, 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', 'India', 'maharashtra', '421306', NULL, '45465', NULL, '2024-06-13 16:12:03'),
(4, 'sarves', '', '', '2', '', NULL, '  ', 'India', 'andhra-pradesh', '', NULL, '', NULL, '2024-06-13 16:39:17'),
(5, 'Imran', '1234567890', 'imran@gmail.com', '2', '', NULL, ' ', 'India', 'andhra-pradesh', '', NULL, '', NULL, '2024-06-13 16:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `chintamani-agency-users`
--

CREATE TABLE `chintamani-agency-users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chintamani-agency-users`
--

INSERT INTO `chintamani-agency-users` (`id`, `name`, `email`, `phone`, `password`, `created_at`) VALUES
(1, 'RYDLpsH5es 9YJZbijL6r', 'cmgkn@3cam.com', '1231231231', '1234', '2024-06-12 10:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int NOT NULL,
  `name` varchar(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'Rudratech IT Services'),
(2, 'Sarvesh IT Services'),
(3, 'Roshan IT Services');

-- --------------------------------------------------------

--
-- Table structure for table `parshwanath-agency-buyers`
--

CREATE TABLE `parshwanath-agency-buyers` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parshwanath-agency-buyers`
--

INSERT INTO `parshwanath-agency-buyers` (`id`, `name`, `phone`, `email`, `commission`, `gst`, `pan`, `address`, `country`, `state`, `pincode`, `previous_due`, `tax_no`, `delivery_address`, `created_at`) VALUES
(1, 'Tushar Kandekar', '09987033179', 'sarvesh@gmail.com', '200', '654141', 'ljkl2000', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', '', '', '421306', '400', '45465', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', '2024-06-08 17:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `parshwanath-agency-sales-order`
--

CREATE TABLE `parshwanath-agency-sales-order` (
  `id` int NOT NULL,
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parshwanath-agency-sellers`
--

CREATE TABLE `parshwanath-agency-sellers` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parshwanath-agency-transport`
--

CREATE TABLE `parshwanath-agency-transport` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parshwanath-agency-users`
--

CREATE TABLE `parshwanath-agency-users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reshmi-clothing-company-buyers`
--

CREATE TABLE `reshmi-clothing-company-buyers` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reshmi-clothing-company-buyers`
--

INSERT INTO `reshmi-clothing-company-buyers` (`id`, `name`, `phone`, `email`, `commission`, `gst`, `pan`, `address`, `country`, `state`, `pincode`, `previous_due`, `tax_no`, `delivery_address`, `created_at`) VALUES
(2, 'Tushar Kandekar', '09987033179', 'tushar@gmail.com', '200', 'KGHG456', 'GUYF64564', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', '', '', '421306', '4000', '45465', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', '2024-06-13 13:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `reshmi-clothing-company-sales-order`
--

CREATE TABLE `reshmi-clothing-company-sales-order` (
  `id` int NOT NULL,
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reshmi-clothing-company-sales-order-details`
--

CREATE TABLE `reshmi-clothing-company-sales-order-details` (
  `id` int NOT NULL,
  `sales_order_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_no` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reshmi-clothing-company-sellers`
--

CREATE TABLE `reshmi-clothing-company-sellers` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reshmi-clothing-company-sellers`
--

INSERT INTO `reshmi-clothing-company-sellers` (`id`, `name`, `phone`, `email`, `commission`, `gst`, `pan`, `address`, `country`, `state`, `pincode`, `previous_due`, `tax_no`, `delivery_address`, `created_at`) VALUES
(1, 'Sarvesh Gamdhere', '09987033179', 'sarvesh@gmail.com', '200', 'KJGKUG325346', 'GUYF64564', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', '', '', '421306', '400', '45465', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', '2024-06-13 13:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `reshmi-clothing-company-transport`
--

CREATE TABLE `reshmi-clothing-company-transport` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reshmi-clothing-company-transport`
--

INSERT INTO `reshmi-clothing-company-transport` (`id`, `name`, `phone`, `email`, `commission`, `gst`, `pan`, `address`, `country`, `state`, `pincode`, `previous_due`, `tax_no`, `delivery_address`, `created_at`) VALUES
(1, 'Karthik  Shettigar ', '09987033179', 'karthik@gmail.com', '200', 'KGHG456', 'DFG79987', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', '', '', '421306', '400', '45465', 'saidham chawl ,room no. 7, chinchpada gown, kalyan east', '2024-06-13 13:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `reshmi-clothing-company-users`
--

CREATE TABLE `reshmi-clothing-company-users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `role` int DEFAULT NULL,
  `assign_to` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `assign_to`, `status`, `created_at`) VALUES
(1, 'admin', 'chellascafe@gmail.com', '$2y$10$ElGx/GE2mzIIQoL9ZKDydenR1jamAYlAMHR7BaqlP/oI6jWHORnaW', 1, NULL, '1', ''),
(4, 'karthik shettigar', 'rudratech.karthik1@gmail.com', '$2y$10$ElGx/GE2mzIIQoL9ZKDydenR1jamAYlAMHR7BaqlP/oI6jWHORnaW', 2, 'chintamani-agency', 'active', '2024-06-07 15:33:19'),
(5, 'SARVESH', 'sarvesh@gmail.com', '$2y$10$QoT9W/UxlcBQ8pE/JxYpgOt03lwjg4iZxsuy1D0uQ2RwAZnywLclu', 2, 'parshwanath-agency', 'active', '2024-06-08 16:39:47'),
(6, 'Tushar Kandekar', 'admin@gmail.com', '$2y$10$uS6LHFMJFa3PPMyq3IHisO2xF.Mp5KmnvFpLM9TuShgX1POMShKNK', 2, 'vishal-tradelink', 'active', '2024-06-08 17:07:21'),
(7, 'Karthik', 'demo@example.com', '$2y$10$ZRWJfikWeIppJs23r8iheuEupSseqILsub1KLREMJ0sVe6LswG4LS', 2, 'reshmi-clothing-company', 'active', '2024-06-08 17:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `vishal-tradelink-buyers`
--

CREATE TABLE `vishal-tradelink-buyers` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vishal-tradelink-sales-order`
--

CREATE TABLE `vishal-tradelink-sales-order` (
  `id` int NOT NULL,
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vishal-tradelink-sellers`
--

CREATE TABLE `vishal-tradelink-sellers` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vishal-tradelink-transport`
--

CREATE TABLE `vishal-tradelink-transport` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vishal-tradelink-users`
--

CREATE TABLE `vishal-tradelink-users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chintamani-agency-buyers`
--
ALTER TABLE `chintamani-agency-buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chintamani-agency-sales-order`
--
ALTER TABLE `chintamani-agency-sales-order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chintamani-agency-sales-order-details`
--
ALTER TABLE `chintamani-agency-sales-order-details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chintamani-agency-sellers`
--
ALTER TABLE `chintamani-agency-sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chintamani-agency-settings`
--
ALTER TABLE `chintamani-agency-settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chintamani-agency-transport`
--
ALTER TABLE `chintamani-agency-transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chintamani-agency-users`
--
ALTER TABLE `chintamani-agency-users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parshwanath-agency-buyers`
--
ALTER TABLE `parshwanath-agency-buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parshwanath-agency-sales-order`
--
ALTER TABLE `parshwanath-agency-sales-order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parshwanath-agency-sellers`
--
ALTER TABLE `parshwanath-agency-sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parshwanath-agency-transport`
--
ALTER TABLE `parshwanath-agency-transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parshwanath-agency-users`
--
ALTER TABLE `parshwanath-agency-users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reshmi-clothing-company-buyers`
--
ALTER TABLE `reshmi-clothing-company-buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reshmi-clothing-company-sales-order`
--
ALTER TABLE `reshmi-clothing-company-sales-order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reshmi-clothing-company-sales-order-details`
--
ALTER TABLE `reshmi-clothing-company-sales-order-details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reshmi-clothing-company-sellers`
--
ALTER TABLE `reshmi-clothing-company-sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reshmi-clothing-company-transport`
--
ALTER TABLE `reshmi-clothing-company-transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reshmi-clothing-company-users`
--
ALTER TABLE `reshmi-clothing-company-users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vishal-tradelink-buyers`
--
ALTER TABLE `vishal-tradelink-buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vishal-tradelink-sales-order`
--
ALTER TABLE `vishal-tradelink-sales-order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vishal-tradelink-sellers`
--
ALTER TABLE `vishal-tradelink-sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vishal-tradelink-transport`
--
ALTER TABLE `vishal-tradelink-transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vishal-tradelink-users`
--
ALTER TABLE `vishal-tradelink-users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chintamani-agency-buyers`
--
ALTER TABLE `chintamani-agency-buyers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chintamani-agency-sales-order`
--
ALTER TABLE `chintamani-agency-sales-order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chintamani-agency-sales-order-details`
--
ALTER TABLE `chintamani-agency-sales-order-details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chintamani-agency-sellers`
--
ALTER TABLE `chintamani-agency-sellers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chintamani-agency-settings`
--
ALTER TABLE `chintamani-agency-settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chintamani-agency-transport`
--
ALTER TABLE `chintamani-agency-transport`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chintamani-agency-users`
--
ALTER TABLE `chintamani-agency-users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parshwanath-agency-buyers`
--
ALTER TABLE `parshwanath-agency-buyers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parshwanath-agency-sales-order`
--
ALTER TABLE `parshwanath-agency-sales-order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parshwanath-agency-sellers`
--
ALTER TABLE `parshwanath-agency-sellers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parshwanath-agency-transport`
--
ALTER TABLE `parshwanath-agency-transport`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parshwanath-agency-users`
--
ALTER TABLE `parshwanath-agency-users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reshmi-clothing-company-buyers`
--
ALTER TABLE `reshmi-clothing-company-buyers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reshmi-clothing-company-sales-order`
--
ALTER TABLE `reshmi-clothing-company-sales-order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reshmi-clothing-company-sales-order-details`
--
ALTER TABLE `reshmi-clothing-company-sales-order-details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reshmi-clothing-company-sellers`
--
ALTER TABLE `reshmi-clothing-company-sellers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reshmi-clothing-company-transport`
--
ALTER TABLE `reshmi-clothing-company-transport`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reshmi-clothing-company-users`
--
ALTER TABLE `reshmi-clothing-company-users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vishal-tradelink-buyers`
--
ALTER TABLE `vishal-tradelink-buyers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vishal-tradelink-sales-order`
--
ALTER TABLE `vishal-tradelink-sales-order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vishal-tradelink-sellers`
--
ALTER TABLE `vishal-tradelink-sellers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vishal-tradelink-transport`
--
ALTER TABLE `vishal-tradelink-transport`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vishal-tradelink-users`
--
ALTER TABLE `vishal-tradelink-users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
