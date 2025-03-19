-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2025 at 07:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frosh`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `postal_code` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `no` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `recipient_first_name` varchar(255) DEFAULT NULL,
  `recipient_last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `city_id`, `province_id`, `postal_code`, `address`, `no`, `unit`, `recipient_first_name`, `recipient_last_name`, `mobile`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, NULL, '6681185179', 'شهرک گولان', '2', '24', 'سامان', 'اعظمی', '09183818662', 0, NULL, NULL, NULL),
(2, 8, 2, 1, '6681185195', 'شهرک گولان', '1', '1', NULL, NULL, '9183818662', 0, '2025-02-24 13:50:17', '2025-02-24 13:50:17', NULL),
(3, 10, 2, 1, '6697898789', 'آخر کریم آباد', '1', '1', NULL, NULL, '9183818662', 0, '2025-02-24 15:43:55', '2025-02-24 15:43:55', NULL),
(4, 10, 2, 1, '6612', 'gvrdgbrfd', '1', '1', NULL, NULL, '9183818662', 0, '2025-02-24 16:02:17', '2025-02-24 16:02:17', NULL),
(5, 10, 2, 1, '6681185195', 'lij', '1', '1', NULL, NULL, '9183818662', 0, '2025-02-24 16:25:57', '2025-02-24 16:25:57', NULL),
(6, 9, 3, 2, '6681185195', 'میدان قزوین', '2', '2', NULL, NULL, NULL, 0, '2025-02-28 08:08:52', '2025-02-28 08:08:52', NULL),
(7, 9, 2, 1, '6681185195', 'کریم آباد', '1', '1', NULL, NULL, NULL, 0, '2025-03-01 17:13:29', '2025-03-04 18:53:44', NULL),
(8, 11, 2, 1, '6681185195', 'کریم آباد', '1', '1', 'ژیران', 'اعظمی', '09358941979', 0, '2025-03-07 16:20:58', '2025-03-07 16:20:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `amazing_sales`
--

CREATE TABLE `amazing_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `percentage` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amazing_sales`
--

INSERT INTO `amazing_sales` (`id`, `product_id`, `percentage`, `status`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 2, 10, 1, '2025-02-23 12:52:10', '2025-01-03 12:52:10', '2025-02-16 21:09:03', '2025-02-23 12:52:25', NULL),
(4, 4, 12, 1, '2025-02-23 12:54:45', '2025-03-04 12:54:45', '2025-02-18 21:23:15', '2025-02-23 12:54:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `url`, `position`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '1fef', '\"images\\\\banner\\\\2025\\\\02\\\\17\\\\1739751423.png\"', 'add.comd', 0, 1, '2025-02-15 21:05:48', '2025-02-16 20:47:04', NULL),
(6, 'cdfcds2', '\"images\\\\banner\\\\2025\\\\02\\\\17\\\\1739751415.jpg\"', 'add.com', 1, 1, '2025-02-15 21:06:20', '2025-02-16 20:46:55', NULL),
(7, 'fcsrg3', '\"images\\\\banner\\\\2025\\\\02\\\\17\\\\1739751399.png\"', 'add.com', 2, 1, '2025-02-15 21:06:33', '2025-02-16 20:46:39', NULL),
(8, 'ghegdr4', '\"images\\\\banner\\\\2025\\\\02\\\\17\\\\1739751388.jpg\"', 'add.com', 3, 1, '2025-02-15 21:06:47', '2025-02-16 20:46:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `persian_name` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `logo` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `tags` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `persian_name`, `original_name`, `slug`, `logo`, `status`, `tags`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'برند اصلی', 'brand asliiiii', NULL, '{\"indexArray\":{\"large\":\"images\\\\brand\\\\2025\\\\02\\\\07\\\\1738943721\\\\1738943721_large.png\",\"medium\":\"images\\\\brand\\\\2025\\\\02\\\\07\\\\1738943721\\\\1738943721_medium.png\",\"small\":\"images\\\\brand\\\\2025\\\\02\\\\07\\\\1738943721\\\\1738943721_small.png\"},\"directory\":\"images\\\\brand\\\\2025\\\\02\\\\07\\\\1738943721\",\"currentImage\":\"medium\"}', 1, 'برند', '2025-02-07 12:25:22', '2025-02-07 12:25:59', NULL),
(2, 'لرارلا', 'bhfvbdh', NULL, '{\"indexArray\":{\"large\":\"images\\\\brand\\\\2025\\\\02\\\\07\\\\1738943754\\\\1738943754_large.png\",\"medium\":\"images\\\\brand\\\\2025\\\\02\\\\07\\\\1738943754\\\\1738943754_medium.png\",\"small\":\"images\\\\brand\\\\2025\\\\02\\\\07\\\\1738943754\\\\1738943754_small.png\"},\"directory\":\"images\\\\brand\\\\2025\\\\02\\\\07\\\\1738943754\",\"currentImage\":\"medium\"}', 1, 'ذلفتذلف', '2025-02-07 12:25:54', '2025-02-07 12:25:54', NULL),
(3, 'برند3', 'brand3', 'brand3-H4HWV', '{\"indexArray\":{\"large\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372367\\\\1741372367_large.jpg\",\"medium\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372367\\\\1741372367_medium.jpg\",\"small\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372367\\\\1741372367_small.jpg\"},\"directory\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372367\",\"currentImage\":\"medium\"}', 1, 'برند,برند3', '2025-03-07 15:02:48', '2025-03-07 15:02:48', NULL),
(4, 'برند4', 'brand4', 'brand4-UoRPQ', '{\"indexArray\":{\"large\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372412\\\\1741372412_large.jpg\",\"medium\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372412\\\\1741372412_medium.jpg\",\"small\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372412\\\\1741372412_small.jpg\"},\"directory\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372412\",\"currentImage\":\"medium\"}', 1, 'برند,برند4', '2025-03-07 15:03:32', '2025-03-07 15:03:32', NULL),
(5, 'برند5', 'brand5', 'brand5-ZqZy4', '{\"indexArray\":{\"large\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372459\\\\1741372459_large.jpg\",\"medium\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372459\\\\1741372459_medium.jpg\",\"small\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372459\\\\1741372459_small.jpg\"},\"directory\":\"images\\\\brand\\\\2025\\\\03\\\\07\\\\1741372459\",\"currentImage\":\"medium\"}', 1, 'برند,برند5', '2025-03-07 15:04:05', '2025-03-07 15:04:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guarantee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `user_id`, `product_id`, `color_id`, `guarantee_id`, `number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 8, 4, 10, 5, 5, '2025-02-22 14:13:51', '2025-02-23 13:58:19', NULL),
(9, 8, 2, 7, 2, 1, '2025-02-23 13:36:20', '2025-02-23 13:36:20', NULL),
(12, 9, 4, 10, 5, 1, '2025-02-24 14:28:18', '2025-02-28 08:07:16', '2025-02-28 08:07:16'),
(13, 10, 4, 10, 5, 1, '2025-02-24 15:37:54', '2025-02-27 16:06:30', '2025-02-27 16:06:30'),
(14, 10, 4, 11, 6, 1, '2025-02-24 15:57:23', '2025-02-27 16:06:42', '2025-02-27 16:06:42'),
(15, 10, 4, 10, 5, 2, '2025-02-27 16:06:56', '2025-02-28 07:29:48', '2025-02-28 07:29:48'),
(16, 10, 4, 10, 5, 1, '2025-02-28 07:30:18', '2025-02-28 08:50:29', '2025-02-28 08:50:29'),
(17, 9, 2, 7, 2, 1, '2025-02-28 07:38:15', '2025-03-07 16:08:11', '2025-03-07 16:08:11'),
(18, 10, 2, 7, 2, 1, '2025-02-28 07:38:31', '2025-02-28 08:50:29', '2025-02-28 08:50:29'),
(19, 10, 2, 7, 2, 1, '2025-03-01 15:03:16', '2025-03-01 15:17:46', '2025-03-01 15:17:46'),
(20, 10, 2, 7, 2, 1, '2025-03-01 15:18:41', '2025-03-01 17:25:54', '2025-03-01 17:25:54'),
(21, 10, 2, 7, 2, 1, '2025-03-04 13:28:31', '2025-03-04 13:31:14', '2025-03-04 13:31:14'),
(22, 10, 4, 10, 5, 1, '2025-03-04 18:43:47', '2025-03-07 16:52:08', '2025-03-07 16:52:08'),
(23, 10, 2, 7, 2, 1, '2025-03-05 10:16:30', '2025-03-07 16:52:08', '2025-03-07 16:52:08'),
(24, 11, 2, 7, 2, 1, '2025-03-07 16:19:49', '2025-03-07 16:21:10', '2025-03-07 16:21:10'),
(25, 10, 4, 10, 5, 1, '2025-03-07 16:52:30', '2025-03-07 16:52:57', '2025-03-07 16:52:57'),
(26, 11, 4, 10, 5, 1, '2025-03-07 16:53:34', '2025-03-07 16:54:02', '2025-03-07 16:54:02'),
(27, 10, 3, 5, NULL, 1, '2025-03-08 07:25:55', '2025-03-08 07:26:33', '2025-03-08 07:26:33'),
(28, 9, 4, 10, 5, 1, '2025-03-08 07:43:31', '2025-03-08 07:44:09', '2025-03-08 07:44:09'),
(29, 10, 2, 7, 2, 1, '2025-03-08 08:44:54', '2025-03-08 08:46:52', '2025-03-08 08:46:52'),
(30, 10, 2, 7, 4, 3, '2025-03-08 08:45:02', '2025-03-08 08:46:56', '2025-03-08 08:46:56'),
(31, 10, 2, 8, 4, 1, '2025-03-08 08:45:11', '2025-03-08 08:46:57', '2025-03-08 08:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_selected_attributes`
--

CREATE TABLE `cart_item_selected_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_item_id` bigint(20) UNSIGNED NOT NULL,
  `category_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `category_value_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_payments`
--

CREATE TABLE `cash_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cash_receiver` varchar(255) DEFAULT NULL,
  `pay_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_payments`
--

INSERT INTO `cash_payments` (`id`, `amount`, `user_id`, `cash_receiver`, `pay_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1000.000, 1, NULL, '2025-02-08 15:18:03', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_attributes`
--

CREATE TABLE `category_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `unit` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_attributes`
--

INSERT INTO `category_attributes` (`id`, `name`, `type`, `unit`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'سایز صفحه نمایش', 0, 'اینچچ', 1, NULL, '2025-02-18 19:58:18', '2025-02-18 19:58:18'),
(2, 'اندازه', 0, 'متر', 2, NULL, '2025-02-18 19:58:22', '2025-02-18 19:58:22'),
(3, 'رم', 0, 'مگ', 2, '2025-02-07 15:33:33', '2025-02-18 19:58:27', '2025-02-18 19:58:27'),
(4, 'حافظه', 0, 'گیگ', 4, '2025-02-18 19:59:16', '2025-02-18 19:59:16', NULL),
(5, 'رم', 0, 'گیگ', 4, '2025-02-18 20:00:01', '2025-02-18 20:00:01', NULL),
(6, 'سایز صفحه نمایش', 0, 'اینچ', 4, '2025-02-18 20:00:29', '2025-02-18 20:00:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_attribute_default_values`
--

CREATE TABLE `category_attribute_default_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `category_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_values`
--

CREATE TABLE `category_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'value type is 0 => simple, 1 => multi values select by customers (affected on price)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_values`
--

INSERT INTO `category_values` (`id`, `product_id`, `category_attribute_id`, `value`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 4, 6, '{\"value\":\"5.8\",\"price_increase\":\"0\"}', 0, '2025-02-18 20:01:51', '2025-02-18 20:01:51', NULL),
(3, 4, 4, '{\"value\":\"64\",\"price_increase\":\"0\"}', 0, '2025-02-18 20:02:33', '2025-02-18 20:02:33', NULL),
(4, 4, 4, '{\"value\":\"128\",\"price_increase\":\"100000\"}', 0, '2025-02-18 20:02:45', '2025-02-18 20:02:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `province_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'سقز', 1, NULL, NULL, NULL),
(3, 'ورامین', 2, '2025-02-27 19:47:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => unseen, 1 => seen',
  `approved` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => not approved, 1 => approved',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `parent_id`, `author_id`, `commentable_id`, `commentable_type`, `seen`, `approved`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'test2', NULL, 1, 2, 'App\\Models\\Content\\Post', 1, 1, 1, '2025-02-02 23:15:41', '2025-02-18 20:28:19', NULL),
(5, 'admin hastam', 3, 1, 2, 'App\\Models\\Content\\Post', 1, 1, 1, '2025-02-03 18:26:17', '2025-02-18 20:28:19', NULL),
(6, 'admin 2 hastam', 3, 1, 2, 'App\\Models\\Content\\Post', 1, 1, 1, '2025-02-03 18:32:33', '2025-02-18 20:28:19', NULL),
(9, 'آیفون عالییه', NULL, 8, 4, 'App\\Models\\Market\\Product', 1, 1, 1, '2025-02-18 20:28:01', '2025-02-18 20:30:28', NULL),
(10, 'ممنونم دوست خوبم', 9, 1, 4, 'App\\Models\\Market\\Product', 1, 1, 1, '2025-02-18 20:36:20', '2025-02-18 20:36:21', NULL),
(11, 'خیلی محصول عالیه', NULL, 8, 4, 'App\\Models\\Market\\Product', 1, 1, 1, '2025-02-18 20:36:52', '2025-02-18 20:37:19', NULL),
(12, 'پریل فوق العاده س', NULL, 8, 2, 'App\\Models\\Market\\Product', 1, 1, 0, '2025-02-18 20:38:22', '2025-02-18 20:38:28', NULL),
(13, 'yh6uht6', NULL, 10, 2, 'App\\Models\\Market\\Product', 1, 0, 0, '2025-03-04 13:26:41', '2025-03-04 13:30:03', NULL),
(14, 'myaaaaaaa', NULL, 10, 2, 'App\\Models\\Market\\Product', 1, 0, 1, '2025-03-04 13:27:26', '2025-03-05 08:26:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `common_discount`
--

CREATE TABLE `common_discount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` int(11) NOT NULL,
  `discount_ceiling` bigint(20) UNSIGNED DEFAULT NULL,
  `minimal_order_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `common_discount`
--

INSERT INTO `common_discount` (`id`, `title`, `percentage`, `discount_ceiling`, `minimal_order_amount`, `status`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'مناسبت', 10, 1000000, 20000, 1, '2025-02-27 16:31:11', '2025-03-19 16:31:11', '2025-02-27 16:29:30', '2025-02-27 16:31:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, '2025-03-17 06:13:12', '2025-03-17 06:13:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compare_product`
--

CREATE TABLE `compare_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `compare_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compare_product`
--

INSERT INTO `compare_product` (`product_id`, `compare_id`) VALUES
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `copans`
--

CREATE TABLE `copans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `amount_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => percentage, 1 => price unit',
  `discount_ceiling` bigint(20) UNSIGNED DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => common (each user can use one time), 1 => private (one user can use one time)',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copans`
--

INSERT INTO `copans` (`id`, `code`, `amount`, `amount_type`, `discount_ceiling`, `type`, `status`, `start_date`, `end_date`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '10', '10', 0, 1000, 0, 1, '2025-02-08 12:42:35', '2025-02-08 12:42:35', NULL, '2025-02-08 12:42:42', '2025-02-08 12:42:42', NULL),
(2, '12', '10', 1, 100, 0, 1, '2025-02-08 13:26:59', '2025-02-14 13:26:59', NULL, '2025-02-08 13:27:26', '2025-02-08 13:27:26', NULL),
(3, 'saman', '10', 0, 100000000, 1, 1, '2025-02-27 17:17:18', '2025-03-04 17:17:18', 10, '2025-02-27 17:18:17', '2025-02-27 17:18:17', NULL),
(4, 'saiii', '10', 0, 10000, 1, 1, '2025-02-28 07:59:14', '2025-03-18 07:59:14', 2, '2025-02-28 07:59:48', '2025-02-28 07:59:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(20,3) DEFAULT NULL,
  `delivery_time` int(11) DEFAULT NULL,
  `delivery_time_unit` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `name`, `amount`, `delivery_time`, `delivery_time_unit`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'پست پیشتاز', 15000.000, 2, 'روز', 1, '2025-02-07 11:50:10', '2025-02-07 11:55:18', NULL),
(2, 'پست', 12000.000, 4, 'روز', 1, '2025-02-07 11:51:41', '2025-02-07 11:55:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'e744fce5-dd9a-45ab-83c7-4b622f980148', 'database', 'default', '{\"uuid\":\"e744fce5-dd9a-45ab-83c7-4b622f980148\",\"displayName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendEmailToUsers\\\":0:{}\"}}', 'ErrorException: Undefined property: App\\Jobs\\SendEmailToUsers::$email in D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php:29\nStack trace:\n#0 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#1 D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php(29): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#2 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmailToUsers->handle()\n#3 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#8 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#9 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#10 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmailToUsers), false)\n#12 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#13 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#14 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmailToUsers))\n#16 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(335): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#28 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\xampp\\htdocs\\frosh\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#36 {main}', '2025-03-17 18:05:36'),
(2, 'c2638840-d247-4924-8058-c496be7ecb6c', 'database', 'default', '{\"uuid\":\"c2638840-d247-4924-8058-c496be7ecb6c\",\"displayName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendEmailToUsers\\\":0:{}\"}}', 'ErrorException: Undefined property: App\\Jobs\\SendEmailToUsers::$email in D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php:29\nStack trace:\n#0 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#1 D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php(29): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#2 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmailToUsers->handle()\n#3 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#8 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#9 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#10 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmailToUsers), false)\n#12 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#13 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#14 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmailToUsers))\n#16 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(335): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#28 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\xampp\\htdocs\\frosh\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#36 {main}', '2025-03-17 18:05:42'),
(3, '49a092e5-450f-40c4-8729-3ef8397675ed', 'database', 'default', '{\"uuid\":\"49a092e5-450f-40c4-8729-3ef8397675ed\",\"displayName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendEmailToUsers\\\":0:{}\"}}', 'ErrorException: Undefined property: App\\Jobs\\SendEmailToUsers::$email in D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php:29\nStack trace:\n#0 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#1 D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php(29): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#2 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmailToUsers->handle()\n#3 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#8 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#9 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#10 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmailToUsers), false)\n#12 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#13 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#14 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmailToUsers))\n#16 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(335): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#28 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\xampp\\htdocs\\frosh\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#36 {main}', '2025-03-17 18:05:44'),
(4, 'fd103556-f166-4176-a133-60f6705f2025', 'database', 'default', '{\"uuid\":\"fd103556-f166-4176-a133-60f6705f2025\",\"displayName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendEmailToUsers\\\":0:{}\"}}', 'ErrorException: Undefined property: App\\Jobs\\SendEmailToUsers::$email in D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php:29\nStack trace:\n#0 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#1 D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php(29): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#2 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmailToUsers->handle()\n#3 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#8 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#9 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#10 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmailToUsers), false)\n#12 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#13 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#14 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmailToUsers))\n#16 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(335): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#28 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\xampp\\htdocs\\frosh\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#36 {main}', '2025-03-17 18:05:47'),
(5, '9450d686-17e0-49a4-92bc-d0be8d8b8d6e', 'database', 'default', '{\"uuid\":\"9450d686-17e0-49a4-92bc-d0be8d8b8d6e\",\"displayName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendEmailToUsers\\\":0:{}\"}}', 'ErrorException: Undefined property: App\\Jobs\\SendEmailToUsers::$email in D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php:29\nStack trace:\n#0 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#1 D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php(29): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 29)\n#2 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmailToUsers->handle()\n#3 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#8 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#9 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#10 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmailToUsers), false)\n#12 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#13 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#14 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmailToUsers))\n#16 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(335): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#28 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\xampp\\htdocs\\frosh\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#36 {main}', '2025-03-17 18:05:48'),
(6, '68e35fa3-b441-4131-9c81-d1960aeebd13', 'database', 'default', '{\"uuid\":\"68e35fa3-b441-4131-9c81-d1960aeebd13\",\"displayName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendEmailToUsers\\\":0:{}\"}}', 'ErrorException: Undefined property: App\\Jobs\\SendEmailToUsers::$email in D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php:33\nStack trace:\n#0 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 33)\n#1 D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php(33): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 33)\n#2 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmailToUsers->handle()\n#3 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#8 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#9 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#10 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmailToUsers), false)\n#12 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#13 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#14 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmailToUsers))\n#16 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(335): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#28 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\xampp\\htdocs\\frosh\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#36 {main}', '2025-03-17 18:11:34');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(7, 'f9c93873-541d-4728-88ca-4dacfee7da88', 'database', 'default', '{\"uuid\":\"f9c93873-541d-4728-88ca-4dacfee7da88\",\"displayName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendEmailToUsers\\\":0:{}\"}}', 'ErrorException: Undefined property: App\\Jobs\\SendEmailToUsers::$email in D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php:33\nStack trace:\n#0 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 33)\n#1 D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php(33): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 33)\n#2 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmailToUsers->handle()\n#3 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#8 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#9 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#10 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmailToUsers), false)\n#12 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#13 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#14 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmailToUsers))\n#16 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(335): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#28 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\xampp\\htdocs\\frosh\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#36 {main}', '2025-03-17 18:11:42'),
(8, '83374f36-847f-413d-878d-17fa5770083c', 'database', 'default', '{\"uuid\":\"83374f36-847f-413d-878d-17fa5770083c\",\"displayName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendEmailToUsers\\\":0:{}\"}}', 'ErrorException: Undefined property: App\\Jobs\\SendEmailToUsers::$email in D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php:38\nStack trace:\n#0 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(256): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 38)\n#1 D:\\xampp\\htdocs\\frosh\\app\\Jobs\\SendEmailToUsers.php(38): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined prope...\', \'D:\\\\xampp\\\\htdocs...\', 38)\n#2 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmailToUsers->handle()\n#3 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#8 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#9 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#10 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmailToUsers), false)\n#12 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#13 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmailToUsers))\n#14 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmailToUsers))\n#16 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(335): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(696): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#28 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\xampp\\htdocs\\frosh\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\xampp\\htdocs\\frosh\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\xampp\\htdocs\\frosh\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#36 {main}', '2025-03-17 18:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `tags` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `slug`, `status`, `tags`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'چگونه', 'یه سادگی', 'برقیسل', 1, 'لقیلری', '2025-02-24 00:10:58', '2025-02-02 18:32:42', NULL),
(2, 'پرسش 1 ویر', '<p>پاسخ 1 ویر</p>', 'پرسش-1-uggFB', 1, 'تگ سوال,ستگ پرسش,اا', '2025-02-02 18:38:16', '2025-02-02 18:40:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guarantees`
--

CREATE TABLE `guarantees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price_increase` decimal(20,3) NOT NULL DEFAULT 0.000,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guarantees`
--

INSERT INTO `guarantees` (`id`, `name`, `product_id`, `price_increase`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'gcg', 3, 0.000, 1, '2025-02-16 00:56:14', '2025-02-17 20:24:11', '2025-02-17 20:24:11'),
(2, 'guyh', 2, 0.000, 0, '2025-02-16 00:56:33', NULL, NULL),
(3, 'گارانتی اول', 3, 10000.000, 0, '2025-02-16 19:27:51', '2025-02-17 20:24:13', '2025-02-17 20:24:13'),
(4, 'saman', 2, 5000.000, 0, '2025-02-17 19:47:01', '2025-02-17 19:47:01', NULL),
(5, 'گارنتی سامان', 4, 10000.000, 0, '2025-02-18 20:59:21', '2025-02-18 20:59:21', NULL),
(6, 'گارانتی بی پول', 4, 0.000, 0, '2025-02-18 20:59:32', '2025-02-18 20:59:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(9, 'default', '{\"uuid\":\"84493450-33bc-4a61-bd6e-ff93a9282076\",\"displayName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToUsers\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendEmailToUsers\\\":0:{}\"}}', 0, NULL, 1742317443, 1742317443);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`, `status`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ورزشی', 'url', 1, NULL, '2025-02-02 22:34:44', '2025-02-02 19:12:17', NULL),
(2, 'اقتصادی', 'contentmenucreate', 1, NULL, '2025-02-02 19:10:52', '2025-02-02 19:13:50', NULL),
(3, 'فوتبالی', 'yjgjmgy', 1, 1, '2025-02-02 19:11:44', '2025-02-02 19:13:48', NULL),
(4, 'دلار', 'li.kl.ij', 1, 2, '2025-02-02 19:13:33', '2025-02-02 19:13:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_27_180637_add_two_factor_columns_to_users_table', 1),
(5, '2025_01_27_180733_create_personal_access_tokens_table', 1),
(6, '2025_01_27_182016_create_post_categories_table', 1),
(7, '2025_01_27_182525_create_posts_table', 1),
(8, '2025_01_27_183446_create_menus_table', 1),
(9, '2025_01_27_185103_create_faqs_table', 1),
(10, '2025_01_27_185517_create_pages_table', 1),
(11, '2025_01_27_185721_create_comments_table', 1),
(12, '2025_01_27_190304_create_ticket_categories_table', 1),
(13, '2025_01_27_190416_create_ticket_priorities_table', 1),
(14, '2025_01_27_190517_create_ticket_admins_table', 1),
(15, '2025_01_27_191121_create_tickets_table', 1),
(16, '2025_01_27_191403_create_ticket_files_table', 1),
(17, '2025_01_27_192049_create_roles_table', 1),
(18, '2025_01_27_192114_create_permissions_table', 1),
(19, '2025_01_27_192133_create_role_user_table', 1),
(20, '2025_01_27_192150_create_permission_role_table', 1),
(21, '2025_01_27_194036_create_product_categories_table', 1),
(22, '2025_01_27_194114_create_brands_table', 1),
(23, '2025_01_27_194819_create_category_attributes_table', 2),
(24, '2025_01_27_194911_create_category_attribute_default_values_table', 2),
(25, '2025_01_27_194928_create_products_table', 2),
(26, '2025_01_27_200149_create_product_images_table', 3),
(27, '2025_01_27_200205_create_guarantees_table', 3),
(28, '2025_01_27_200445_create_product_colors_table', 3),
(29, '2025_01_27_200521_create_category_values_table', 3),
(30, '2025_01_27_200604_create_product_meta_table', 3),
(31, '2025_01_28_162946_create_copans_table', 4),
(32, '2025_01_28_163300_create_amazing_sales_table', 4),
(33, '2025_01_28_164012_create_common_discount_table', 4),
(34, '2025_01_28_164519_create_provinces_table', 5),
(35, '2025_01_28_164539_create_cities_table', 5),
(36, '2025_01_28_164558_create_addresses_table', 5),
(37, '2025_01_28_164621_create_delivery_table', 5),
(38, '2025_01_28_165323_create_public_sms_table', 6),
(39, '2025_01_28_165343_create_public_mail_table', 6),
(40, '2025_01_28_165402_create_public_mail_files_table', 6),
(41, '2025_01_28_165757_create_product_user_table', 6),
(42, '2025_01_28_170418_create_offline_payments_table', 7),
(43, '2025_01_28_170436_create_online_payments_table', 7),
(44, '2025_01_28_170452_create_cash_payments_table', 7),
(45, '2025_01_28_170508_create_payments_table', 7),
(46, '2025_01_28_174140_create_cart_items_table', 7),
(47, '2025_01_28_174201_create_cart_item_selected_attributes_table', 7),
(48, '2025_01_28_174215_create_orders_table', 7),
(49, '2025_01_28_174227_create_order_items_table', 7),
(50, '2025_01_28_174245_create_order_item_selected_attributes_table', 7),
(51, '2025_02_03_235603_create_settings_table', 8),
(52, '2025_02_10_151710_create_notifications_table', 9),
(53, '2025_02_10_174548_create_otps_table', 10),
(54, '2025_02_10_180108_add_mobile_verify_to_users_table', 11),
(55, '2025_02_15_233039_create_banners_table', 12),
(56, '2025_02_16_005300_add_color_to_product_color_table', 13),
(57, '2025_02_24_170450_add_province_id_to_addresses_table', 14),
(58, '2025_03_03_113910_create_permission_user_table', 15),
(59, '2025_03_05_175816_add_view_to_products_table', 16),
(60, '2025_03_07_184436_create_ratings_table', 17),
(61, '2025_03_17_093559_create_compares_table', 18),
(62, '2025_03_17_093838_create_compare_product_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('f0b79e3c-2ad3-40d4-8f29-4ebd4c4c5fd7', 'App\\Notifications\\NewUserRegistered', 'App\\Models\\User', 1, '{\"message\":\"\\u06cc\\u06a9 \\u06a9\\u0627\\u0631\\u0628\\u0631 \\u062c\\u062f\\u06cc\\u062f \\u062f\\u0631 \\u0633\\u0627\\u06cc\\u062a \\u062b\\u0628\\u062a \\u0646\\u0627\\u0645 \\u06a9\\u0631\\u062f\"}', '2025-02-10 12:19:18', '2025-02-10 12:01:02', '2025-02-10 12:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `pay_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_payments`
--

INSERT INTO `offline_payments` (`id`, `amount`, `user_id`, `transaction_id`, `pay_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20000.000, 1, '2222', '2025-02-08 19:04:25', 0, NULL, NULL, NULL),
(3, 204300.000, 10, NULL, '2025-03-01 15:17:46', 1, '2025-03-01 15:17:46', '2025-03-01 15:17:46', NULL),
(4, 204300.000, 10, NULL, '2025-03-01 17:23:20', 1, '2025-03-01 17:23:20', '2025-03-01 17:23:20', NULL),
(5, 204300.000, 10, NULL, '2025-03-01 17:24:45', 1, '2025-03-01 17:24:45', '2025-03-01 17:24:45', NULL),
(6, 204300.000, 10, NULL, '2025-03-01 17:25:53', 1, '2025-03-01 17:25:53', '2025-03-01 17:25:53', NULL),
(7, 204300.000, 10, NULL, '2025-03-04 13:31:14', 1, '2025-03-04 13:31:14', '2025-03-04 13:31:14', NULL),
(8, 204300.000, 9, NULL, '2025-03-07 16:08:10', 1, '2025-03-07 16:08:10', '2025-03-07 16:08:10', NULL),
(9, 204300.000, 11, NULL, '2025-03-07 16:21:09', 1, '2025-03-07 16:21:09', '2025-03-07 16:21:09', NULL),
(10, 393300.000, 10, NULL, '2025-03-07 16:52:07', 1, '2025-03-07 16:52:07', '2025-03-07 16:52:07', NULL),
(11, 189000.000, 10, NULL, '2025-03-07 16:52:57', 1, '2025-03-07 16:52:57', '2025-03-07 16:52:57', NULL),
(12, 189000.000, 11, NULL, '2025-03-07 16:54:02', 1, '2025-03-07 16:54:02', '2025-03-07 16:54:02', NULL),
(13, 168300.000, 10, NULL, '2025-03-08 07:26:33', 1, '2025-03-08 07:26:33', '2025-03-08 07:26:33', NULL),
(14, 189000.000, 9, NULL, '2025-03-08 07:44:08', 1, '2025-03-08 07:44:08', '2025-03-08 07:44:08', NULL),
(15, 1030500.000, 10, NULL, '2025-03-08 08:46:42', 1, '2025-03-08 08:46:43', '2025-03-08 08:46:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `online_payments`
--

CREATE TABLE `online_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `bank_first_response` text DEFAULT NULL,
  `bank_second_response` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_payments`
--

INSERT INTO `online_payments` (`id`, `amount`, `user_id`, `gateway`, `transaction_id`, `bank_first_response`, `bank_second_response`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 370620.000, 10, NULL, NULL, NULL, NULL, 1, '2025-02-28 08:50:28', '2025-02-28 08:50:28', NULL),
(3, 204300.000, 10, NULL, NULL, NULL, NULL, 1, '2025-03-01 16:10:50', '2025-03-01 16:10:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_object` longtext DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_object` longtext DEFAULT NULL,
  `payment_type` tinyint(4) NOT NULL DEFAULT 0,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `delivery_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_object` longtext DEFAULT NULL,
  `delivery_amount` decimal(20,3) DEFAULT NULL,
  `delivery_status` tinyint(4) NOT NULL DEFAULT 0,
  `delivery_date` timestamp NULL DEFAULT NULL,
  `order_final_amount` decimal(20,3) DEFAULT NULL,
  `order_discount_amount` decimal(20,3) DEFAULT NULL,
  `copan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `copan_object` longtext DEFAULT NULL,
  `order_copan_discount_amount` decimal(20,3) DEFAULT NULL,
  `common_discount_id` bigint(20) UNSIGNED DEFAULT NULL,
  `common_discount_object` longtext DEFAULT NULL,
  `order_common_discount_amount` decimal(20,3) DEFAULT NULL,
  `order_total_products_discount_amount` decimal(20,3) DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address_id`, `address_object`, `payment_id`, `payment_object`, `payment_type`, `payment_status`, `delivery_id`, `delivery_object`, `delivery_amount`, `delivery_status`, `delivery_date`, `order_final_amount`, `order_discount_amount`, `copan_id`, `copan_object`, `order_copan_discount_amount`, `common_discount_id`, `common_discount_object`, `order_common_discount_amount`, `order_total_products_discount_amount`, `order_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 10, 3, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 370620.000, 25200.000, 3, NULL, 37062.000, NULL, NULL, 41180.000, 66380.000, 3, '2025-02-28 07:42:32', '2025-02-28 08:50:29', NULL),
(5, 9, 6, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 204300.000, 0.000, NULL, NULL, NULL, NULL, NULL, 22700.000, 22700.000, 3, '2025-02-28 08:09:02', '2025-03-07 16:08:10', NULL),
(6, 10, 3, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 204300.000, 0.000, NULL, NULL, NULL, NULL, NULL, 22700.000, 22700.000, 3, '2025-03-01 15:03:36', '2025-03-01 15:17:46', NULL),
(7, 10, 3, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 204300.000, 0.000, NULL, NULL, NULL, NULL, NULL, 22700.000, 22700.000, 3, '2025-03-01 15:19:17', '2025-03-01 17:23:20', NULL),
(8, 10, 3, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 204300.000, 0.000, NULL, NULL, NULL, NULL, NULL, 22700.000, 22700.000, 3, '2025-03-01 17:24:39', '2025-03-01 17:24:45', NULL),
(9, 10, 3, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 204300.000, 0.000, NULL, NULL, NULL, NULL, NULL, 22700.000, 22700.000, 3, '2025-03-01 17:25:49', '2025-03-01 17:25:54', NULL),
(10, 10, 3, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 204300.000, 0.000, NULL, NULL, NULL, NULL, NULL, 22700.000, 22700.000, 3, '2025-03-04 13:29:31', '2025-03-04 13:31:14', NULL),
(11, 10, 3, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 393300.000, 0.000, NULL, NULL, NULL, NULL, NULL, 43700.000, 43700.000, 3, '2025-03-04 18:54:06', '2025-03-07 16:52:07', NULL),
(12, 11, 8, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 204300.000, 0.000, NULL, NULL, NULL, NULL, NULL, 22700.000, 22700.000, 3, '2025-03-07 16:21:04', '2025-03-07 16:21:09', NULL),
(13, 10, 3, NULL, NULL, NULL, 0, 0, 2, NULL, NULL, 0, NULL, 189000.000, 0.000, NULL, NULL, NULL, NULL, NULL, 21000.000, 21000.000, 3, '2025-03-07 16:52:53', '2025-03-07 16:52:57', NULL),
(14, 11, 8, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 189000.000, 0.000, NULL, NULL, NULL, NULL, NULL, 21000.000, 21000.000, 3, '2025-03-07 16:53:56', '2025-03-07 16:54:02', NULL),
(15, 10, 3, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 168300.000, 0.000, NULL, NULL, NULL, NULL, NULL, 18700.000, 18700.000, 3, '2025-03-08 07:26:25', '2025-03-08 07:26:33', NULL),
(16, 9, 6, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 189000.000, 0.000, NULL, NULL, NULL, NULL, NULL, 21000.000, 21000.000, 3, '2025-03-08 07:43:58', '2025-03-08 07:44:08', NULL),
(17, 10, 3, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, 0, NULL, 1030500.000, 0.000, NULL, NULL, NULL, NULL, NULL, 114500.000, 114500.000, 3, '2025-03-08 08:46:24', '2025-03-08 08:46:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product` longtext NOT NULL,
  `amazing_sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amazing_sale_object` longtext DEFAULT NULL,
  `amazing_sale_discount_amount` decimal(20,3) DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 1,
  `final_product_price` decimal(20,3) DEFAULT NULL,
  `final_total_price` decimal(20,3) DEFAULT NULL COMMENT 'number * final_product_price',
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guarantee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product`, `amazing_sale_id`, `amazing_sale_object`, `amazing_sale_discount_amount`, `number`, `final_product_price`, `final_total_price`, `color_id`, `guarantee_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 9, 2, '{\"id\":2,\"name\":\"\\u067e\\u0631\\u06cc\\u0644\",\"introduction\":\"<p>\\u0645\\u0627\\u06cc\\u0639 \\u067e\\u0631\\u06cc\\u0644<\\/p>\",\"slug\":\"\\u067e\\u0631\\u06cc\\u0644-XgxMW\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\",\"currentImage\":\"medium\"},\"weight\":\"12.00\",\"length\":\"12.0\",\"width\":\"12.0\",\"height\":\"12.0\",\"price\":\"217000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u067e\\u0631\\u06cc\\u0644\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":16,\"brand_id\":1,\"category_id\":1,\"published_at\":\"2025-02-18 03:19:54\",\"created_at\":\"2025-02-07T17:39:49.000000Z\",\"updated_at\":\"2025-02-17T23:49:54.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 227000.000, 227000.000, 7, 2, '2025-03-01 17:25:54', '2025-03-01 17:25:54', NULL),
(3, 10, 2, '{\"id\":2,\"name\":\"\\u067e\\u0631\\u06cc\\u0644\",\"introduction\":\"<p>\\u0645\\u0627\\u06cc\\u0639 \\u067e\\u0631\\u06cc\\u0644<\\/p>\",\"slug\":\"\\u067e\\u0631\\u06cc\\u0644-XgxMW\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\",\"currentImage\":\"medium\"},\"weight\":\"12.00\",\"length\":\"12.0\",\"width\":\"12.0\",\"height\":\"12.0\",\"price\":\"217000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u067e\\u0631\\u06cc\\u0644\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":16,\"brand_id\":1,\"category_id\":1,\"published_at\":\"2025-02-18 03:19:54\",\"created_at\":\"2025-02-07T17:39:49.000000Z\",\"updated_at\":\"2025-02-17T23:49:54.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 227000.000, 227000.000, 7, 2, '2025-03-04 13:31:14', '2025-03-04 13:31:14', NULL),
(4, 5, 2, '{\"id\":2,\"name\":\"\\u067e\\u0631\\u06cc\\u0644\",\"view\":17,\"introduction\":\"<p>\\u0645\\u0627\\u06cc\\u0639 \\u067e\\u0631\\u06cc\\u0644<\\/p>\",\"slug\":\"\\u067e\\u0631\\u06cc\\u0644-XgxMW\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\",\"currentImage\":\"medium\"},\"weight\":\"12.00\",\"length\":\"12.0\",\"width\":\"12.0\",\"height\":\"12.0\",\"price\":\"217000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u067e\\u0631\\u06cc\\u0644\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":16,\"brand_id\":1,\"category_id\":1,\"published_at\":\"2025-03-07 23:07:48\",\"created_at\":\"2025-02-07T17:39:49.000000Z\",\"updated_at\":\"2025-03-07T19:37:48.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 227000.000, 227000.000, 7, 2, '2025-03-07 16:08:11', '2025-03-07 16:08:11', NULL),
(5, 12, 2, '{\"id\":2,\"name\":\"\\u067e\\u0631\\u06cc\\u0644\",\"view\":25,\"introduction\":\"<p>\\u0645\\u0627\\u06cc\\u0639 \\u067e\\u0631\\u06cc\\u0644<\\/p>\",\"slug\":\"\\u067e\\u0631\\u06cc\\u0644-XgxMW\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\",\"currentImage\":\"medium\"},\"weight\":\"12.00\",\"length\":\"12.0\",\"width\":\"12.0\",\"height\":\"12.0\",\"price\":\"217000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u067e\\u0631\\u06cc\\u0644\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":16,\"brand_id\":1,\"category_id\":1,\"published_at\":\"2025-03-07 23:19:49\",\"created_at\":\"2025-02-07T17:39:49.000000Z\",\"updated_at\":\"2025-03-07T19:49:49.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 227000.000, 227000.000, 7, 2, '2025-03-07 16:21:09', '2025-03-07 16:21:09', NULL),
(6, 11, 4, '{\"id\":4,\"name\":\"\\u0622\\u06cc\\u0641\\u0648\\u064613\",\"view\":10,\"introduction\":\"<p>\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13<\\/p>\",\"slug\":\"\\u0622\\u06cc\\u0641\\u0648\\u064613-Fkthr\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\",\"currentImage\":\"medium\"},\"weight\":\"10.00\",\"length\":\"10.0\",\"width\":\"10.0\",\"height\":\"10.0\",\"price\":\"100000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u06af\\u0648\\u0634\\u06cc,\\u0622\\u06cc\\u0641\\u0648\\u064613\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":12,\"brand_id\":1,\"category_id\":4,\"published_at\":\"2025-03-07 23:51:50\",\"created_at\":\"2025-02-18T23:24:39.000000Z\",\"updated_at\":\"2025-03-07T20:21:50.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 210000.000, 210000.000, 10, 5, '2025-03-07 16:52:08', '2025-03-07 16:52:08', NULL),
(7, 11, 2, '{\"id\":2,\"name\":\"\\u067e\\u0631\\u06cc\\u0644\",\"view\":36,\"introduction\":\"<p>\\u0645\\u0627\\u06cc\\u0639 \\u067e\\u0631\\u06cc\\u0644<\\/p>\",\"slug\":\"\\u067e\\u0631\\u06cc\\u0644-XgxMW\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\",\"currentImage\":\"medium\"},\"weight\":\"12.00\",\"length\":\"12.0\",\"width\":\"12.0\",\"height\":\"12.0\",\"price\":\"217000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u067e\\u0631\\u06cc\\u0644\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":16,\"brand_id\":1,\"category_id\":1,\"published_at\":\"2025-03-07 23:51:23\",\"created_at\":\"2025-02-07T17:39:49.000000Z\",\"updated_at\":\"2025-03-07T20:21:23.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 227000.000, 227000.000, 7, 2, '2025-03-07 16:52:08', '2025-03-07 16:52:08', NULL),
(8, 13, 4, '{\"id\":4,\"name\":\"\\u0622\\u06cc\\u0641\\u0648\\u064613\",\"view\":13,\"introduction\":\"<p>\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13<\\/p>\",\"slug\":\"\\u0622\\u06cc\\u0641\\u0648\\u064613-Fkthr\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\",\"currentImage\":\"medium\"},\"weight\":\"10.00\",\"length\":\"10.0\",\"width\":\"10.0\",\"height\":\"10.0\",\"price\":\"100000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u06af\\u0648\\u0634\\u06cc,\\u0622\\u06cc\\u0641\\u0648\\u064613\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":12,\"brand_id\":1,\"category_id\":4,\"published_at\":\"2025-03-07 23:52:31\",\"created_at\":\"2025-02-18T23:24:39.000000Z\",\"updated_at\":\"2025-03-07T20:22:31.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 210000.000, 210000.000, 10, 5, '2025-03-07 16:52:57', '2025-03-07 16:52:57', NULL),
(9, 14, 4, '{\"id\":4,\"name\":\"\\u0622\\u06cc\\u0641\\u0648\\u064613\",\"view\":17,\"introduction\":\"<p>\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13<\\/p>\",\"slug\":\"\\u0622\\u06cc\\u0641\\u0648\\u064613-Fkthr\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\",\"currentImage\":\"medium\"},\"weight\":\"10.00\",\"length\":\"10.0\",\"width\":\"10.0\",\"height\":\"10.0\",\"price\":\"100000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u06af\\u0648\\u0634\\u06cc,\\u0622\\u06cc\\u0641\\u0648\\u064613\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":12,\"brand_id\":1,\"category_id\":4,\"published_at\":\"2025-03-07 23:53:34\",\"created_at\":\"2025-02-18T23:24:39.000000Z\",\"updated_at\":\"2025-03-07T20:23:34.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 210000.000, 210000.000, 10, 5, '2025-03-07 16:54:02', '2025-03-07 16:54:02', NULL),
(10, 15, 3, '{\"id\":3,\"name\":\"\\u067e\\u0631\\u0633\\u06cc\\u0644\",\"view\":8,\"introduction\":\"<p>\\u0631\\u0628\\u0631\\u0628\\u0631<\\/p>\",\"slug\":\"\\u062a\\u0627\\u0698-Tnruz\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750974\\\\1739750974_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750974\\\\1739750974_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750974\\\\1739750974_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750974\",\"currentImage\":\"medium\"},\"weight\":\"12.00\",\"length\":\"12.0\",\"width\":\"12.0\",\"height\":\"12.0\",\"price\":\"183000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u062a\\u0627\\u0698\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":10,\"brand_id\":1,\"category_id\":1,\"published_at\":\"2025-03-08 14:25:57\",\"created_at\":\"2025-02-07T17:46:06.000000Z\",\"updated_at\":\"2025-03-08T10:55:57.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 187000.000, 187000.000, 5, NULL, '2025-03-08 07:26:33', '2025-03-08 07:26:33', NULL),
(11, 16, 4, '{\"id\":4,\"name\":\"\\u0622\\u06cc\\u0641\\u0648\\u064613\",\"view\":33,\"introduction\":\"<p>\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13\\u06af\\u0648\\u0634\\u06cc \\u06af\\u0648\\u0634\\u06cc 13<\\/p>\",\"slug\":\"\\u0622\\u06cc\\u0641\\u0648\\u064613-Fkthr\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\",\"currentImage\":\"medium\"},\"weight\":\"10.00\",\"length\":\"10.0\",\"width\":\"10.0\",\"height\":\"10.0\",\"price\":\"100000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u06af\\u0648\\u0634\\u06cc,\\u0622\\u06cc\\u0641\\u0648\\u064613\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":12,\"brand_id\":1,\"category_id\":4,\"published_at\":\"2025-03-08 14:43:33\",\"created_at\":\"2025-02-18T23:24:39.000000Z\",\"updated_at\":\"2025-03-08T11:13:33.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 210000.000, 210000.000, 10, 5, '2025-03-08 07:44:08', '2025-03-08 07:44:08', NULL),
(12, 17, 2, '{\"id\":2,\"name\":\"\\u067e\\u0631\\u06cc\\u0644\",\"view\":110,\"introduction\":\"<p>\\u0645\\u0627\\u06cc\\u0639 \\u067e\\u0631\\u06cc\\u0644<\\/p>\",\"slug\":\"\\u067e\\u0631\\u06cc\\u0644-XgxMW\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\",\"currentImage\":\"medium\"},\"weight\":\"12.00\",\"length\":\"12.0\",\"width\":\"12.0\",\"height\":\"12.0\",\"price\":\"217000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u067e\\u0631\\u06cc\\u0644\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":16,\"brand_id\":1,\"category_id\":1,\"published_at\":\"2025-03-08 15:45:14\",\"created_at\":\"2025-02-07T17:39:49.000000Z\",\"updated_at\":\"2025-03-08T12:15:14.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 227000.000, 227000.000, 7, 2, '2025-03-08 08:46:51', '2025-03-08 08:46:51', NULL),
(13, 17, 2, '{\"id\":2,\"name\":\"\\u067e\\u0631\\u06cc\\u0644\",\"view\":110,\"introduction\":\"<p>\\u0645\\u0627\\u06cc\\u0639 \\u067e\\u0631\\u06cc\\u0644<\\/p>\",\"slug\":\"\\u067e\\u0631\\u06cc\\u0644-XgxMW\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\",\"currentImage\":\"medium\"},\"weight\":\"12.00\",\"length\":\"12.0\",\"width\":\"12.0\",\"height\":\"12.0\",\"price\":\"217000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u067e\\u0631\\u06cc\\u0644\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":16,\"brand_id\":1,\"category_id\":1,\"published_at\":\"2025-03-08 15:45:14\",\"created_at\":\"2025-02-07T17:39:49.000000Z\",\"updated_at\":\"2025-03-08T12:15:14.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 3, 232000.000, 696000.000, 7, 4, '2025-03-08 08:46:55', '2025-03-08 08:46:55', NULL),
(14, 17, 2, '{\"id\":2,\"name\":\"\\u067e\\u0631\\u06cc\\u0644\",\"view\":110,\"introduction\":\"<p>\\u0645\\u0627\\u06cc\\u0639 \\u067e\\u0631\\u06cc\\u0644<\\/p>\",\"slug\":\"\\u067e\\u0631\\u06cc\\u0644-XgxMW\",\"image\":{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\",\"currentImage\":\"medium\"},\"weight\":\"12.00\",\"length\":\"12.0\",\"width\":\"12.0\",\"height\":\"12.0\",\"price\":\"217000.000\",\"status\":1,\"marketable\":1,\"tags\":\"\\u067e\\u0631\\u06cc\\u0644\",\"sold_number\":0,\"frozen_number\":0,\"marketable_number\":16,\"brand_id\":1,\"category_id\":1,\"published_at\":\"2025-03-08 15:45:14\",\"created_at\":\"2025-02-07T17:39:49.000000Z\",\"updated_at\":\"2025-03-08T12:15:14.000000Z\",\"deleted_at\":null}', NULL, NULL, 0.000, 1, 222000.000, 222000.000, 8, 4, '2025-03-08 08:46:56', '2025-03-08 08:46:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_item_selected_attributes`
--

CREATE TABLE `order_item_selected_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `category_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `category_value_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `otp_code` varchar(255) NOT NULL,
  `login_id` varchar(255) NOT NULL COMMENT 'email address or mobile number',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => mobile number , 1 => email',
  `used` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => not used , 1 => used',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `token`, `user_id`, `otp_code`, `login_id`, `type`, `used`, `status`, `created_at`, `updated_at`) VALUES
(1, 'R3qjbKGLFEa5q7qwkrjsXgdwDyEs8d05JAHd97ApVYmSJLJE7Pfr0i25FHcr', 7, '737888', '9123122123', 0, 0, 0, '2025-02-10 14:33:47', '2025-02-10 14:33:47'),
(2, 'jxlykAVZF0R4IYivBUuvURlGCkMhouQ48NWAbU5Gr3LBYgNLk8j5cstsRa6j', 8, '906068', '9183818662', 0, 0, 0, '2025-02-12 11:32:45', '2025-02-12 11:32:45'),
(3, 'OpVS6lTIXcfLHDHHHMejXI7PJCRtrW5X6NlLCxMiTTOsy2H3PCUHpqzLXTv9', 8, '352056', '9183818662', 0, 0, 0, '2025-02-12 11:32:48', '2025-02-12 11:32:48'),
(4, 'LuElQBwuSvzFy1DJyWsByyGPichHTmVHl7KVjrfOEAaw1USX1cM0zJw2jvQR', 8, '722590', '9183818662', 0, 0, 0, '2025-02-12 11:46:25', '2025-02-12 11:46:25'),
(5, 'jAVeRjLFTXXTPENKEQhv67fqchfX3tk1n43VgyicuGX4kPhJRteMTN2X3cYU', 9, '781600', 'azamisaman1371@gmail.com', 1, 0, 0, '2025-02-12 12:34:37', '2025-02-12 12:34:37'),
(6, '87YrrRG202uK9qiiBfdytLqIO07cfyPQNoZxe0Qcn4vMbdS6zWWxRCm8mJGk', 9, '380987', 'azamisaman1371@gmail.com', 1, 0, 0, '2025-02-12 12:36:47', '2025-02-12 12:36:47'),
(7, 'r7FiF0QKclU8EnEcQMI6Ar4dI1PAIEPuDXyhfTrCHr6q4raKckVnJ8Fy3Rjg', 9, '233719', 'azamisaman1371@gmail.com', 1, 0, 0, '2025-02-12 12:40:11', '2025-02-12 12:40:11'),
(8, 'ow0xhIlaaGQeqJFMm97hXkZvO4fb8hUikoIVf5LSCulj3hTPwQoVIq3YXdAc', 8, '758021', '9183818662', 0, 0, 0, '2025-02-12 15:14:09', '2025-02-12 15:14:09'),
(9, 'fTsqjVLnbr6dx9yh9KfpHbcBe5KNjqPjHJ6KUcSp1KzSQV2nfUrXRN08gUfU', 8, '381159', '9183818662', 0, 0, 0, '2025-02-12 15:18:35', '2025-02-12 15:18:35'),
(10, 'VV3hfjy9gW7uzW3XIWeafvU8qw2WBB36zuU6FjK3ALj69WRcYTu7pIkL9232', 8, '678176', '9183818662', 0, 0, 0, '2025-02-12 15:20:31', '2025-02-12 15:20:31'),
(11, 'lRcl0q6HH5eYZzvyrAQAC4PReQlSqPrx4mlKh8vl0wUinQXBrBWWstVayzw1', 8, '362959', '9183818662', 0, 0, 0, '2025-02-13 15:21:36', '2025-02-13 15:21:36'),
(12, 'Kjox5dyRoblIUko9t0oQvHAAPsqrosRMHaZstoIc3ODfcC5lkVh01PnmpKaI', 8, '871735', '9183818662', 0, 0, 0, '2025-02-13 15:22:04', '2025-02-13 15:22:04'),
(13, 'faNkEZF5nfaTSNY6hj0uGC8PTX6CUAOcKNI9cZ2dkAelyakSmEwf3USDWGLo', 8, '788297', '9183818662', 0, 0, 0, '2025-02-13 15:22:29', '2025-02-13 15:22:29'),
(14, 'vZv2763shw6byKiVVDsgPgK5vLQhRIwXKwAjpTLFNT3w6vbrj3si6AQmK9BV', 8, '759670', '9183818662', 0, 0, 0, '2025-02-13 15:23:38', '2025-02-13 15:23:38'),
(15, 'albkKpb9vhwkLpsiZzGLoKgxcbazC8dQUWDlMsVQkBDuwr5nUojXGBHjKtad', 8, '850467', '9183818662', 0, 0, 0, '2025-02-13 15:24:44', '2025-02-13 15:24:44'),
(16, 'K75zPYYUpcj6Kx3tVcDgabK5HsTLf2Pn7ErCggMg1dqKzCXfowRhs11wcOrP', 8, '515020', '9183818662', 0, 0, 0, '2025-02-13 15:24:58', '2025-02-13 15:24:58'),
(17, 'CmfHrSJywZuQUXzCuf4QcKZqa6qw3PE4drN3WblGXeIrMdQLowV9RbH90TNS', 8, '762944', '9183818662', 0, 0, 0, '2025-02-13 15:26:06', '2025-02-13 15:26:06'),
(18, 'MHMjqYukYv8ud54yXaCDdqvdbnyy4CaHkeoAnF3nnd3vU86nDxVDiLfBV5f7', 8, '720651', '9183818662', 0, 0, 0, '2025-02-13 15:27:23', '2025-02-13 15:27:23'),
(19, 'iEBAEJvBFg3HjqxpUvzz5313CUXXCYoznfyZw0Nq2yYfDnIQdsjA6hgkGt0m', 8, '344364', '9183818662', 0, 0, 0, '2025-02-13 15:27:35', '2025-02-13 15:27:35'),
(20, 'AJkls4qUzvC1V8MXTWlhQtjXZQpJKwxflhJpWoPJDqqHVGt6O1dQG52jqXrE', 8, '944894', '9183818662', 0, 0, 0, '2025-02-13 15:31:00', '2025-02-13 15:31:00'),
(21, 'jWXseprIZWZ2Ke2I85E6azByTH1FlFo0n06Srm6hsv49yuHLeo6OL8IqaMab', 8, '201187', '9183818662', 0, 0, 0, '2025-02-13 15:31:28', '2025-02-13 15:31:28'),
(22, 'jBof29C4OXlNv3Hgh3UAaPOtIRRbk5KPzKKzCF7q76kCCLUFUWIRsiKYFSmU', 8, '187023', '9183818662', 0, 0, 0, '2025-02-13 15:32:37', '2025-02-13 15:32:37'),
(23, 'iCJI4adQYz8Wpbj07sXCtg6Vf0Gj1V5phHf0FONmrN7Hp02Sr15OJnPFmU0D', 8, '383321', '9183818662', 0, 0, 0, '2025-02-13 15:34:52', '2025-02-13 15:34:52'),
(24, 'aUBIDKDGYCc3u30iRl7y7osI9be8DsDYgQcjghQqLuZZDiJ1SFRCTy8xA1Ff', 8, '452991', '9183818662', 0, 0, 0, '2025-02-13 15:35:27', '2025-02-13 15:35:27'),
(25, '0L7KGpRda5fTh07dcDA1moWOf3vIsAOnRWT6a0FasFrBV0cvrUNyZCwagjbJ', 8, '807305', '9183818662', 0, 0, 0, '2025-02-13 15:36:57', '2025-02-13 15:36:57'),
(26, 'GpC7br3cBdlRWDCxk2HiCRe9RhB2HRKH94qmolOiIOYnwplQcwTXUFhhz2lI', 8, '592967', '9183818662', 0, 0, 0, '2025-02-13 15:37:16', '2025-02-13 15:37:16'),
(27, 'MAvmz4NzRtT5p89LNrJSHAN49r8J5pzeWBd8KWjqyyQNh2mHOHqdnHAFo6ww', 8, '406747', '9183818662', 0, 0, 0, '2025-02-13 15:37:54', '2025-02-13 15:37:54'),
(28, 'kIga6QfRGMOyqQE84eJv8ZRzTQvsb8yLPBwsO0Orc2pG2O6IiMfv8zWSqpP7', 8, '340858', '9183818662', 0, 0, 0, '2025-02-13 15:39:13', '2025-02-13 15:39:13'),
(29, 'ly7ApWmAWit1jhBjUHeXhcs4F8JL4oWivpyvO60GyRSwPncXEGhkJtyaDlX4', 8, '697677', '9183818662', 0, 0, 0, '2025-02-13 15:40:22', '2025-02-13 15:40:22'),
(30, 'WRktH5OxnRtAYkUJszW2ZWwKTHqBZuZagUJrfh3XDG2yPc4Rpcd6ePGUhYQn', 8, '430111', '9183818662', 0, 0, 0, '2025-02-13 15:40:55', '2025-02-13 15:40:55'),
(31, 'Hr6XK8G8qjv7gVIBd7AnfAjt77TZqXzmLcpVUPVrn0mS28DrAMpleBFQT7Gk', 8, '672474', '9183818662', 0, 0, 0, '2025-02-13 15:41:28', '2025-02-13 15:41:28'),
(32, 'tt5XkfjwgZZHNEz2wxUveFNOATlu9E78uZohtU7burvICYHtNIKLma6XfZwm', 8, '846814', '9183818662', 0, 0, 0, '2025-02-13 15:42:36', '2025-02-13 15:42:36'),
(33, 'mymPb41fiX4imSbM8BLB99XjtAamgz5KRlIBSvBAAFdMRA89gr2UOQaxdzmb', 8, '353746', '9183818662', 0, 0, 0, '2025-02-13 15:42:56', '2025-02-13 15:42:56'),
(34, 'jP82MsvGTxVofOlzi9X5Q3dfZfFB9OJ0q4E2QqPdUBlmErqevn2DDy3cRdwU', 8, '319440', '9183818662', 0, 0, 0, '2025-02-13 15:43:13', '2025-02-13 15:43:13'),
(35, 'pRLMY7HKwnXzNDM1F5BYHsMUXfGHxYxOZd1V6R5dHgbQX9S3vDL7SCtSBy1E', 8, '995240', '9183818662', 0, 0, 0, '2025-02-13 15:43:48', '2025-02-13 15:43:48'),
(36, 'C1Q2hB6WmjtXyaAou7eYoCcyaXB1ifBQoqcXoyGK5Wh3f6LQkv4ikY70KX6h', 8, '604494', '9183818662', 0, 0, 0, '2025-02-13 15:44:46', '2025-02-13 15:44:46'),
(37, '4Yw9gtDhvoO9n3liJgwn9G2Apy5vk4xEK2yOpbtnC0QtgyeexQuALqtHZZMR', 8, '299997', '9183818662', 0, 0, 0, '2025-02-13 15:46:20', '2025-02-13 15:46:20'),
(38, '31cTizfGYNiKK2eFJVnTjfHOerLv6gVpMSKoTZoqTjihevrVHzVmtyZhi1jM', 8, '482165', '9183818662', 0, 0, 0, '2025-02-13 15:46:30', '2025-02-13 15:46:30'),
(39, 'y2HbffJ9XR6pk6Iv6DnFtik2oxLjRIw8ASNRW65pUT8pmVTJOQu8z6ucoEL5', 8, '915833', '9183818662', 0, 0, 0, '2025-02-13 15:48:29', '2025-02-13 15:48:29'),
(40, 'JFwlrRzleNakxoCAARER8mNRIMexLw3Wx06hCNpvQab8G1qZBH0aRuD6I7ze', 8, '530884', '9183818662', 0, 0, 0, '2025-02-13 15:48:36', '2025-02-13 15:48:36'),
(41, 'g820rFiCwtkDBtaaefT04Bw3Ns3RfSlTymfPrVQ6rJ6GFA5y7LRtXnPuMdGF', 8, '386683', '9183818662', 0, 0, 0, '2025-02-13 15:49:15', '2025-02-13 15:49:15'),
(42, '16tQRobuGYcrwNXXEe0JQ2M0r2DGkNOEYrHC56fCpoJG5FHhjMiZiGJ0lHzS', 8, '514705', '9183818662', 0, 0, 0, '2025-02-13 15:50:33', '2025-02-13 15:50:33'),
(43, 'FWIGSuPGnA18yD0Iqz4mY1a3mvfg4X18wQYARdxgk1YbxAPylx3dEEanjU3v', 8, '442127', '9183818662', 0, 0, 0, '2025-02-13 15:52:32', '2025-02-13 15:52:32'),
(44, 'hf7nFaBRms6IZ3mpa9lr110q1kTNjR4Z9eL2tnL7FANhQmrouIoqMFCHmkvG', 8, '489451', '9183818662', 0, 0, 0, '2025-02-13 15:54:16', '2025-02-13 15:54:16'),
(45, 'azg7KQ5OKhZIWi8V5vqsmExUWZvCnQVRdnmsSftmSxYWr5Ve5bqx8XFc1y8I', 8, '650266', '9183818662', 0, 0, 0, '2025-02-13 15:54:55', '2025-02-13 15:54:55'),
(46, 'NmNTw78IO7uf6jXBvoXvYRrmCphzEgFqK145SJLiouC7Jr4bLSQNN5ORbnhA', 8, '344128', '9183818662', 0, 0, 0, '2025-02-13 15:56:26', '2025-02-13 15:56:26'),
(47, 'deTiJbPUHFAH3PmEySKKiSyqWVbsrG5zWIjk79cWdFoWsKUEaqfaLGnk5tbw', 8, '203345', '9183818662', 0, 0, 0, '2025-02-13 15:57:05', '2025-02-13 15:57:05'),
(48, '4nDPtuPaf4015Jf3SueyuLNiWq10svKAXrnPC84GkUrgSYb69fafKWmQDZgI', 8, '540218', '9183818662', 0, 0, 0, '2025-02-13 15:57:41', '2025-02-13 15:57:41'),
(49, 'M5mgvfvtJPzFSx26yQdPltW9KFSP5PkfjWbMeJa8w5dqqTxTz3RAJYRyrx47', 8, '502498', '9183818662', 0, 0, 0, '2025-02-13 15:58:05', '2025-02-13 15:58:05'),
(50, 'zILiO55H3WouXftFmvp0jJ2EZ9CAi2WIdlvoOA85Ljb0b5kxn4jA0LFo0Tcq', 8, '975449', '9183818662', 0, 0, 0, '2025-02-13 16:02:53', '2025-02-13 16:02:53'),
(51, 'Zi1szsxHgQDAjBLPBxZfPEJ81uHWyqXTh7nFveUccTra0ZDNpIbAij991h5Y', 8, '848769', '9183818662', 0, 0, 0, '2025-02-13 16:04:15', '2025-02-13 16:04:15'),
(52, 'QYLmZlbB8UoczuSOp0GrXJ5FxSkqMLSnU64TADwnD2YG2qjGkHCmET5oX2D9', 8, '542490', '9183818662', 0, 0, 0, '2025-02-13 16:04:44', '2025-02-13 16:04:44'),
(53, 'SqGcXq6cg8vflgWnkFoDA9c2mFOOGkNtsBzDp55ihydYmWW3uRe4wdHoUE9s', 9, '194726', 'azamisaman1371@gmail.com', 1, 0, 0, '2025-02-13 16:05:34', '2025-02-13 16:05:34'),
(54, 'pCNPYMfq8v6vuB461LJE0ESRh3b38yoThfuLj7OMVV9b2F1gMBwtL2njNUDT', 8, '550674', '9183818662', 0, 0, 0, '2025-02-13 16:12:48', '2025-02-13 16:12:48'),
(55, 'OvdK1a3KiIZM2fjFwEyAInzhzKpNuDI0YYE745P5mQSOYYr4rgSgsGLMYOov', 8, '708999', '9183818662', 0, 0, 0, '2025-02-13 16:13:35', '2025-02-13 16:13:35'),
(56, '9WZZn9JtNn9XzZMSjamMgaw1NZ6JgzibRvUJVe67s7hHsHD4yvaobBjAIdZs', 8, '114292', '9183818662', 0, 0, 0, '2025-02-13 16:14:04', '2025-02-13 16:14:04'),
(57, 'wdOwj7F1WX4vz1xMdXDsoE79HjclsujXgTcwvkDsh7B1tvtLNJQvcAvjl59l', 8, '650434', '9183818662', 0, 0, 0, '2025-02-13 16:20:25', '2025-02-13 16:20:25'),
(58, 'VOdYMHOBHC85vpY7CKDGuCVCuqc3Zx2MXBWEUenlwcrrPtyZyzFtSYhBXson', 8, '824951', '9183818662', 0, 1, 0, '2025-02-13 16:31:41', '2025-02-13 16:31:49'),
(59, 'GzUmi6WzG29k2oiveteEM76Nr0SXKBiBFFQ4MKmDloroWbV6ZMabzGthepE8', 8, '233343', '9183818662', 0, 1, 0, '2025-02-13 16:33:01', '2025-02-13 16:33:08'),
(60, 'izBuSpdxYFz4WFByYiWc6ujmSaroDFLlV2bpy7sOzXCympsKHy4LpOofMGbE', 8, '956523', '9183818662', 0, 1, 0, '2025-02-13 16:33:47', '2025-02-13 16:33:54'),
(61, 'HsqGCABDxzmcEdujI8lQhsP91c7k7xMXUPKLwyzbPBfYAvDm6tCMfYdZXE7q', 9, '555272', 'azamisaman1371@gmail.com', 1, 0, 0, '2025-02-13 16:35:08', '2025-02-13 16:35:08'),
(62, 'r2L12RSGYpxTCjB9rX8e4HyfAmcKFmzO0YNYrey18mLSUOUSMV7jvC137qgU', 9, '765403', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-02-13 16:36:56', '2025-02-13 16:37:14'),
(63, 'a50QmiirpeMFAPypABGqERzlqdruhGLgTP4mSJ2b9Dr9Fn0HSwQiUqkNtRuD', 9, '666348', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-02-13 16:37:55', '2025-02-13 16:38:00'),
(64, 'MvWxwNz2A0FCbOM4dkfPalHDAxHTLMuGw0QDsB9e9ESYs1mQM5BdFCI57cz8', 9, '406569', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-02-13 16:38:22', '2025-02-13 16:38:36'),
(65, 'qOlKi8LhRk2bYcMlikrHeob5S2nbmw9S2B683ELB5GlXv1Xtxe7DqN7zT0hG', 9, '621192', 'azamisaman1371@gmail.com', 1, 0, 0, '2025-02-13 16:48:40', '2025-02-13 16:48:40'),
(66, 'sN8dtl8j0IwmsPild78NCxkLHWTxkXb7vZKaNlbZlS3KyA5qTaksniM59uyE', 9, '581718', 'azamisaman1371@gmail.com', 1, 0, 0, '2025-02-13 16:49:01', '2025-02-13 16:49:01'),
(67, '2SSXJzPNpO6G3bG1DaOFirYoqYF0PqTRvHZoRK7t8XfvlG2MSOJm9egru4di', 9, '396568', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-02-13 16:54:03', '2025-02-13 16:54:11'),
(68, '8sWMq4N3nYcM0f2fhiIzoW1WmGSK0LBZVh0bF9eA6AWkyb2FNCbxLMjkf2pm', 8, '382122', '9183818662', 0, 1, 0, '2025-02-13 18:06:30', '2025-02-13 18:06:36'),
(69, 'IsDyUBcyqBFn7mzHo8mEFCEsTpLWsTVpOEq35yBggtwQUobVpOb9FUjTHnFL', 8, '716946', '9183818662', 0, 1, 0, '2025-02-15 19:42:45', '2025-02-15 19:43:02'),
(70, 'xDh1PNJUygHb3QWwQzrmzr5HguRSD6lBTh39eEojgeRHIXxneCodjGnagZGu', 8, '529513', '9183818662', 0, 1, 0, '2025-02-15 19:56:04', '2025-02-15 19:56:11'),
(71, 'xrfq3GCKcTr2JmawgibFaL5reRoUtZMXGplVteVNI6xgOeZGBae0f5XKMt8T', 8, '379215', '9183818662', 0, 1, 0, '2025-02-18 20:20:00', '2025-02-18 20:20:07'),
(72, 'FR4V4sOW7nuyjWiu8yYzuayJW7hrmmPJYAufOskVHH8tvGQyyqpp2UQyzjf4', 8, '642178', '9183818662', 0, 1, 0, '2025-02-22 12:33:43', '2025-02-22 12:33:50'),
(73, 'BYBtJI9fqn6EoaKwFHrGJnh13g1zY2KG1oTxrsjm18nvYw2k1Z2h9QO47z2n', 8, '317658', '9183818662', 0, 1, 0, '2025-02-23 12:49:42', '2025-02-23 12:49:52'),
(74, 'r9948sUo1CmxaNi0FvjMhntPIavicaak5cFAiyfUhuRZ4I2ZmSmQSsYG9GGK', 8, '266370', '9183818662', 0, 1, 0, '2025-02-23 16:08:30', '2025-02-23 16:08:35'),
(75, '0c618ocnhnymC9fHCZXSIP1lhKA6o3zRSQsqhELlxPLHf1MsNvEUWkvp6X0a', 8, '296257', '9183818662', 0, 1, 0, '2025-02-24 13:28:26', '2025-02-24 13:30:36'),
(76, 'v0Fu1hqDUgk0ryizzrzazq4ZeWSdayjHwumqyIoEacJwniUKsPZPypArVBgo', 9, '976886', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-02-24 14:22:38', '2025-02-24 14:22:44'),
(77, 'cjKJVdgGzcF5Pi9So2EbpWNC1XhN47Xy6NO74mOs355KpzQBhtCHcJPObGCK', 10, '775918', '9183818662', 0, 1, 0, '2025-02-24 15:31:05', '2025-02-24 15:31:13'),
(78, '7IveQmFxv6xFefCuchvCAUDa7BhmVK0husK0bIZB2Onk1vhb566SUoPNjX0Q', 10, '248789', '9183818662', 0, 1, 0, '2025-02-27 15:38:16', '2025-02-27 15:38:22'),
(79, 'VREZbGhejmTfKSWjEENsI7oIB3uMis6fHWRvRv5psa8NNdiqvklyebLy6WNx', 10, '601662', '9183818662', 0, 1, 0, '2025-02-28 07:09:02', '2025-02-28 07:09:15'),
(80, 'v21AQipPYD0f0tQd4poaNhDrRMAYiOotGyvJwrNHxJaj77DjKl1yML8AKfjX', 9, '714170', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-02-28 07:37:59', '2025-02-28 07:38:06'),
(81, 'jm04BXD5Jq3N573KxDzHnhKMGoujSsqStsLGKwFksk4p4KCu9h0dHrN0tKcj', 10, '742879', '9183818662', 0, 1, 0, '2025-03-01 15:01:48', '2025-03-01 15:03:00'),
(82, 'vYim0FZF6Ily8uqIbik3GGr9NknmQAmxtxClav6fpUcx7pMRoA9wt2SODKL5', 9, '351581', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-01 17:12:24', '2025-03-01 17:12:31'),
(83, 'GqNyw32HRPI65wRjkRF7KPTLyVRiVNdm7HPvIF6bSu0D6XsLtcY29HQBRlkF', 10, '583633', '9183818662', 0, 1, 0, '2025-03-03 13:52:35', '2025-03-03 13:52:43'),
(84, 'AIFrFuR9UGZqlBYKMx79VA4Sq6opJdI2ejKJd6Cvvvo7kUJENEJHsq9YcOtp', 9, '238176', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-03 14:41:59', '2025-03-03 14:42:07'),
(85, 'cfPYzZP9RWHeGeZwfIaQkCIPPqO35AwCylsk2RhQum8ZCBrMVMk1fkX1EHOQ', 10, '161485', '9183818662', 0, 1, 0, '2025-03-04 08:22:11', '2025-03-04 08:22:22'),
(86, 'v8I1CaP2NSRq9iUe0iU8beYQOB2BEzCFFzYGERQK5LuOdGASl6YUlw0aQllX', 9, '736177', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-04 08:28:36', '2025-03-04 08:28:42'),
(87, 'lMvQZRMylpfx7fvzbSwX2WH7nAtJtZD4747UXTdbk2e3CAtNSL7VsB3sT0kF', 10, '821640', '9183818662', 0, 1, 0, '2025-03-04 13:24:52', '2025-03-04 13:24:57'),
(88, '1FNyy9aXZugOoUMPGlvwOcDMp1vJD87lFU5njo7ERjtsp25Z8oTevPpr09ed', 9, '999094', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-04 13:34:09', '2025-03-04 13:34:15'),
(89, 'gXYTOVk3rKMMiPImj7srlBleQtJkEfLtopzabE6INAE27nLInvO0fBJo1TQb', 10, '412197', '9183818662', 0, 1, 0, '2025-03-04 18:34:13', '2025-03-04 18:34:30'),
(90, 'WD6JXDwr4T6wQluXxnirJKwkJ9bVjPolskgcvkK1GcrmPw11QvmPTKgi4Xjb', 9, '424910', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-04 18:34:55', '2025-03-04 18:35:05'),
(91, 'nyYpyt1EWUfr41Ae6RRaYrw8VIk3X543bXVNXQQ6Ow5OuwiiXwTCrJqthbWp', 9, '643364', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-04 18:52:45', '2025-03-04 18:52:56'),
(92, 'lt1hJQBWhAAxDrgrFHN8e53vnWBj0pOaKPFaUyd0bZeSbiMJcYvsSoDRSwah', 10, '649032', '9183818662', 0, 1, 0, '2025-03-05 07:26:53', '2025-03-05 07:27:02'),
(93, 'zEkxVKPGmudBm4MJPpctIJeiVYHwMAqaLcyTxBQkvq8cFnt2XQrioaN3CwBa', 10, '435605', '9183818662', 0, 1, 0, '2025-03-05 13:21:42', '2025-03-05 13:21:50'),
(94, '3W9FGrpIYwXEwuHLVfQxEmRKLF6HMp90NH9a6P4M9ctYG65BCX06NTzmeJ9M', 9, '719100', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-05 13:29:28', '2025-03-05 13:29:36'),
(95, 'CW6WDqDGsXvlicFF6OLLU7912wirkDDvMme7R8om3QX8pjzOCeSupF6oR6qB', 10, '787653', '9183818662', 0, 1, 0, '2025-03-06 16:57:53', '2025-03-06 16:58:00'),
(96, 'RHZ18gxdIA7Wg7x1eiqVUD1fHj29ExuSyA4X2oTmlItf456VuWYCDGFrlSFn', 10, '614489', '9183818662', 0, 1, 0, '2025-03-07 14:58:23', '2025-03-07 14:58:33'),
(97, 'N39PmlMCGPUChPjq76CiCeNQSKZhuu1arOx243UvlKjQKoR2CfvqYJBXWqyx', 9, '262785', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-07 16:07:32', '2025-03-07 16:07:38'),
(98, 'sr3dqswYXyR4e71QSzoLpVFITG5kLfFgSemQSEvGSWutXgoxn6nk5ceV1cdb', 11, '659015', '9358941979', 0, 1, 0, '2025-03-07 16:19:30', '2025-03-07 16:19:37'),
(99, 'THoubnB7viktk3Q3tUPisGgYTqgriByhmQnCDhvrwNGGqpxCJrAQw0Eo33xq', 10, '504588', '9183818662', 0, 1, 0, '2025-03-08 07:07:01', '2025-03-08 07:07:19'),
(100, 'AGhZOtF6sAu3DdYTi6EQhb08RLps54EP9xnMu4D7SdBaj5idAQK1pT4USqb7', 9, '734389', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-08 07:07:41', '2025-03-08 07:07:49'),
(101, 'VamJUzw0BhoxcSFhecLyS8na44sbPRDA8pAQF9iHguhlJas2g6x6vM496HYm', 10, '495638', '9183818662', 0, 1, 0, '2025-03-08 08:06:14', '2025-03-08 08:06:27'),
(102, 'jwfwmFGbrsgxj8pmLQKQlQRDM73CX3XEks0YL4haZ9BJEqGDZmDsFDwlA4yg', 11, '926662', '9358941979', 0, 1, 0, '2025-03-08 08:07:14', '2025-03-08 08:07:28'),
(103, '5IrpEeVb9OBU8qEu9pxvekOTIKJ9ziwWPnFGVRPrEGFO4LN0GX7taJZLvonv', 10, '532215', '9183818662', 0, 1, 0, '2025-03-17 05:31:22', '2025-03-17 05:31:35'),
(104, 'YBb9KpJhmeNffVfnxMDXiD8TaXaklghn11E6T72UeAFBPgXiNPsJgo9uN25L', 10, '286650', '9183818662', 0, 1, 0, '2025-03-17 05:32:30', '2025-03-17 05:32:37'),
(105, 'XcNV53MWl6hakTM7aS7O5JZKoza2aot58ZpUcWbCQifscKatfBsWOaUS7E90', 10, '473015', '9183818662', 0, 1, 0, '2025-03-17 16:48:29', '2025-03-17 16:48:40'),
(106, 'N4p0ywsiD6yv7D80Fxq84NtenPQRVkoE6awp69UCzBtoV2LwCSV9mz0ObSc0', 10, '700841', '9183818662', 0, 1, 0, '2025-03-18 13:32:55', '2025-03-18 13:33:07'),
(107, 'OXqZJGP0tqYquQ4sZBNQmXZCOzpNaIpCJTrvRJRDXH4H7tcRGUnKOoTsSW7Z', 9, '578755', 'azamisaman1371@gmail.com', 1, 1, 0, '2025-03-18 13:41:26', '2025-03-18 13:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `tags` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `body`, `slug`, `status`, `tags`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'صفحه تماس با ما  ویرایش', '<p>aboutus</p>', 'اسلاگ', 1, 'تگ,ویرایش', '2025-02-02 22:20:35', '2025-03-17 17:08:40', '2025-03-17 17:08:40'),
(2, 'عنوان', '<p>لاثقافقافق</p>', 'عنوان-XfHQG', 1, 'اگ,2', '2025-02-02 18:53:17', '2025-03-17 17:08:36', '2025-03-17 17:08:36'),
(3, 'تماس با ما', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>آدرس</td>\r\n			<td>سقز</td>\r\n		</tr>\r\n		<tr>\r\n			<td>تلفن</td>\r\n			<td>09183818661</td>\r\n		</tr>\r\n		<tr>\r\n			<td>نام</td>\r\n			<td>سامان اعظمی</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 'تماس-با-ما-sLJi0', 1, 'تماس,ارتباط با ما', '2025-03-17 17:20:20', '2025-03-17 17:20:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => online, 1 => offline, 2 => cash',
  `paymentable_id` bigint(20) UNSIGNED NOT NULL,
  `paymentable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `user_id`, `status`, `type`, `paymentable_id`, `paymentable_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20000.000, 1, 2, 0, 1, 'App\\Models\\Market\\OfflinePayment', '2025-02-08 16:17:58', '2025-02-08 12:09:37', NULL),
(2, 40000.000, 1, 0, 1, 1, 'App\\Models\\Market\\OnlinePayment', '2025-02-08 16:18:03', NULL, NULL),
(3, 1000.000, 1, 3, 0, 1, 'App\\Models\\Market\\CashPayment', '2025-02-08 16:18:07', '2025-02-08 12:13:10', NULL),
(4, 370620.000, 10, 0, 0, 2, 'App\\Models\\Market\\OnlinePayment', '2025-02-28 08:50:29', '2025-02-28 08:50:29', NULL),
(5, 204300.000, 10, 0, 1, 3, 'App\\Models\\Market\\OfflinePayment', '2025-03-01 15:17:46', '2025-03-01 15:17:46', NULL),
(6, 204300.000, 10, 0, 0, 3, 'App\\Models\\Market\\OnlinePayment', '2025-03-01 16:10:51', '2025-03-01 16:10:51', NULL),
(7, 204300.000, 10, 0, 1, 4, 'App\\Models\\Market\\OfflinePayment', '2025-03-01 17:23:20', '2025-03-01 17:23:20', NULL),
(8, 204300.000, 10, 0, 1, 5, 'App\\Models\\Market\\OfflinePayment', '2025-03-01 17:24:45', '2025-03-01 17:24:45', NULL),
(9, 204300.000, 10, 0, 1, 6, 'App\\Models\\Market\\OfflinePayment', '2025-03-01 17:25:54', '2025-03-01 17:25:54', NULL),
(10, 204300.000, 10, 0, 1, 7, 'App\\Models\\Market\\OfflinePayment', '2025-03-04 13:31:14', '2025-03-04 13:31:14', NULL),
(11, 204300.000, 9, 0, 1, 8, 'App\\Models\\Market\\OfflinePayment', '2025-03-07 16:08:10', '2025-03-07 16:08:10', NULL),
(12, 204300.000, 11, 0, 1, 9, 'App\\Models\\Market\\OfflinePayment', '2025-03-07 16:21:09', '2025-03-07 16:21:09', NULL),
(13, 393300.000, 10, 0, 1, 10, 'App\\Models\\Market\\OfflinePayment', '2025-03-07 16:52:07', '2025-03-07 16:52:07', NULL),
(14, 189000.000, 10, 0, 1, 11, 'App\\Models\\Market\\OfflinePayment', '2025-03-07 16:52:57', '2025-03-07 16:52:57', NULL),
(15, 189000.000, 11, 0, 1, 12, 'App\\Models\\Market\\OfflinePayment', '2025-03-07 16:54:02', '2025-03-07 16:54:02', NULL),
(16, 168300.000, 10, 0, 1, 13, 'App\\Models\\Market\\OfflinePayment', '2025-03-08 07:26:33', '2025-03-08 07:26:33', NULL),
(17, 189000.000, 9, 0, 1, 14, 'App\\Models\\Market\\OfflinePayment', '2025-03-08 07:44:08', '2025-03-08 07:44:08', NULL),
(18, 1030500.000, 10, 0, 1, 15, 'App\\Models\\Market\\OfflinePayment', '2025-03-08 08:46:47', '2025-03-08 08:46:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'create-categoryContent', 'ساختن دسته بندی محتوا', 1, NULL, '2025-03-04 08:46:37', NULL),
(2, 'edit-categoryContent', 'ویرایش دسته بندی محتوا', 1, NULL, '2025-03-04 08:46:56', NULL),
(3, 'delete-categoryContent', 'حذف دسته بندی محتوا', 1, NULL, '2025-03-04 08:47:08', NULL),
(4, 'index-categoryContent', 'دیدن دسته بندی محتوا', 1, NULL, '2025-03-04 08:47:19', NULL),
(6, 'status-categoryContent', 'وضعیت دسته بندی محتوا', 0, '2025-03-03 08:41:42', '2025-03-04 08:47:31', NULL),
(7, 'index-categoryProduct', 'دیدن دسته بندی محصولات', 0, '2025-03-03 08:41:55', '2025-03-04 08:54:40', NULL),
(8, 'create-categoryProduct', 'ایجاد دسته بندی محصولات', 0, '2025-03-03 08:42:10', '2025-03-04 08:52:23', NULL),
(9, 'edit-categoryProduct', 'ویرایش دسته بندی محصولات', 0, '2025-03-03 08:42:33', '2025-03-04 08:53:15', NULL),
(10, 'delete-categoryProduct', 'حذف دسته بندی محصولات', 0, '2025-03-04 08:54:14', '2025-03-04 08:54:14', NULL),
(11, 'create-product', 'ساختن محصول', 0, '2025-03-04 09:02:05', '2025-03-04 09:02:05', NULL),
(13, 'index-product', 'دیدن محصول', 0, '2025-03-04 09:04:20', '2025-03-04 09:04:20', NULL),
(14, 'edit-product', 'ویرایش محصول', 0, '2025-03-04 09:05:09', '2025-03-04 09:05:22', NULL),
(15, 'delete-product', 'حذف محصول', 0, '2025-03-04 09:05:53', '2025-03-04 09:05:53', NULL),
(16, 'status-product', 'وضعیت  محصول', 0, '2025-03-04 09:06:34', '2025-03-04 09:06:34', NULL),
(17, 'index-content', 'دیدن محتوا', 0, '2025-03-04 09:46:58', '2025-03-04 09:46:58', NULL),
(18, 'create-content', 'ایجاد محتوا', 0, '2025-03-04 09:47:15', '2025-03-04 09:47:15', NULL),
(19, 'edit-content', 'ویرایش محتوا', 0, '2025-03-04 09:47:35', '2025-03-04 09:47:35', NULL),
(20, 'delete-content', 'حذف محتوا', 0, '2025-03-04 09:47:55', '2025-03-04 09:47:55', NULL),
(21, 'status-content', 'وضعیت محتوا', 0, '2025-03-04 09:48:11', '2025-03-04 09:48:11', NULL),
(22, 'commentable-content', 'قابلیت کامنت محتوا', 0, '2025-03-04 09:48:35', '2025-03-04 09:48:35', NULL),
(23, 'create-brand', 'ساختن برند', 0, '2025-03-05 07:30:56', '2025-03-05 07:30:56', NULL),
(24, 'index-brand', 'دیدن برند', 0, '2025-03-05 07:31:27', '2025-03-05 07:31:27', NULL),
(25, 'edit-brand', 'ویرایش برند', 0, '2025-03-05 07:32:02', '2025-03-05 07:32:02', NULL),
(26, 'delete-brand', 'حذف برند', 0, '2025-03-05 07:32:43', '2025-03-05 07:32:43', NULL),
(27, 'create-store', 'ایجاد انبار', 0, '2025-03-05 07:34:01', '2025-03-05 07:34:01', NULL),
(28, 'index-store', 'دیدن انبار', 0, '2025-03-05 07:34:21', '2025-03-05 07:34:21', NULL),
(29, 'edit-store', 'ویرایش انبار', 0, '2025-03-05 07:34:41', '2025-03-05 07:34:41', NULL),
(30, 'delete-store', 'حذف انبار', 0, '2025-03-05 07:34:58', '2025-03-05 07:34:58', NULL),
(31, 'create-copan', 'ایجاد کپن تخفیف', 0, '2025-03-05 08:13:01', '2025-03-05 08:13:01', NULL),
(32, 'index-copan', 'دیدن کپن تخفیف', 0, '2025-03-05 08:13:36', '2025-03-05 08:13:36', NULL),
(33, 'edit-copan', 'ویرایش کپن تخفیف', 0, '2025-03-05 08:13:58', '2025-03-05 08:13:58', NULL),
(34, 'delete-copan', 'حذف کپن تخفیف', 0, '2025-03-05 08:14:16', '2025-03-05 08:14:16', NULL),
(35, 'create-payment', 'ایجاد پرداخت', 0, '2025-03-05 08:15:06', '2025-03-05 08:15:06', NULL),
(36, 'index-payment', 'دیدن پرداخت ها', 0, '2025-03-05 08:15:27', '2025-03-05 08:15:27', NULL),
(37, 'edit-payment', 'ویرایش پرداخت', 0, '2025-03-05 08:15:48', '2025-03-05 08:15:48', NULL),
(38, 'delete-payment', 'حذف پرداخت ها', 0, '2025-03-05 08:16:06', '2025-03-05 08:16:06', NULL),
(39, 'create-order', 'ایجاد سفارش', 0, '2025-03-05 08:16:40', '2025-03-05 08:16:40', NULL),
(40, 'index-order', 'دیدن سفارش', 0, '2025-03-05 08:17:19', '2025-03-05 08:17:19', NULL),
(41, 'edit-order', 'ویرایش سفارش', 0, '2025-03-05 08:17:41', '2025-03-05 08:17:41', NULL),
(42, 'delete-order', 'حذف سفارش', 0, '2025-03-05 08:17:59', '2025-03-05 08:17:59', NULL),
(43, 'index-delivery', 'دیدن روش ارسال', 0, '2025-03-05 08:18:39', '2025-03-05 08:18:39', NULL),
(44, 'create-delivery', 'ایجاد روش ارسال', 0, '2025-03-05 08:18:57', '2025-03-05 08:18:57', NULL),
(45, 'edit-delivery', 'ویرایش روش ارسال', 0, '2025-03-05 08:19:13', '2025-03-05 08:19:13', NULL),
(46, 'delete-delivery', 'حذف روش ارسال', 0, '2025-03-05 08:19:29', '2025-03-05 08:19:29', NULL),
(47, 'index-commentProduct', 'دیدن کامنت محصولات', 0, '2025-03-05 08:20:29', '2025-03-05 08:20:29', NULL),
(48, 'create-commentProduct', 'ایجاد کامنت محصولات', 0, '2025-03-05 08:20:55', '2025-03-05 08:20:55', NULL),
(49, 'edit-commentProduct', 'ویرایش کامنت محصولات', 0, '2025-03-05 08:21:17', '2025-03-05 08:21:17', NULL),
(50, 'delete-commentProduct', 'حذف کامنت محصولات', 0, '2025-03-05 08:21:35', '2025-03-05 08:21:35', NULL),
(51, 'index-commentPost', 'دیدن کامنت پست ها', 0, '2025-03-05 08:22:04', '2025-03-05 08:22:04', NULL),
(52, 'create-commentPost', 'ایجاد کامنت پست ها', 0, '2025-03-05 08:22:44', '2025-03-05 08:22:44', NULL),
(53, 'edit-commentPost', 'ویرایش کامنت پست', 0, '2025-03-05 08:23:03', '2025-03-05 08:23:03', NULL),
(54, 'delete-commentPost', 'حذف کامنت پست ها', 0, '2025-03-05 08:23:23', '2025-03-05 08:23:23', NULL),
(55, 'approved-commentPost', 'بهبود بخشیدن کامنت پست ها', 0, '2025-03-05 08:24:56', '2025-03-05 08:24:56', NULL),
(56, 'approved-commentProduct', 'بهبود بخشیدن کامنت محصولات', 0, '2025-03-05 08:25:26', '2025-03-05 08:25:26', NULL),
(57, 'show-commentPost', 'نمایش کامنت پست ها', 0, '2025-03-05 08:25:59', '2025-03-05 08:25:59', NULL),
(58, 'show-commentProduct', 'نمایش کامنت محصولات', 0, '2025-03-05 08:26:38', '2025-03-05 08:26:38', NULL),
(59, 'status-commentPost', 'وضعیت کامنت پست ها', 0, '2025-03-05 08:27:27', '2025-03-05 08:27:27', NULL),
(60, 'status-commentProduct', 'وضعیت کامنت محصولات', 0, '2025-03-05 08:27:58', '2025-03-05 08:27:58', NULL),
(61, 'index-menu', 'دیدن منو ها', 0, '2025-03-05 08:29:15', '2025-03-05 08:29:15', NULL),
(62, 'edit-menu', 'ویرایش منو ها', 0, '2025-03-05 08:29:33', '2025-03-05 08:29:33', NULL),
(63, 'create-menu', 'ایجاد منو', 0, '2025-03-05 08:29:54', '2025-03-05 08:29:54', NULL),
(64, 'delete-menu', 'حذف منو', 0, '2025-03-05 08:30:18', '2025-03-05 08:30:18', NULL),
(65, 'status-menu', 'وضعیت منو', 0, '2025-03-05 08:30:35', '2025-03-05 08:30:35', NULL),
(66, 'index-faq', 'دیدن سوالات متداول', 0, '2025-03-05 08:31:30', '2025-03-05 08:31:30', NULL),
(67, 'edit-faq', 'ویرایش سوالات متداول', 0, '2025-03-05 08:31:58', '2025-03-05 08:31:58', NULL),
(68, 'create-faq', 'ایجاد سوالات متداول', 0, '2025-03-05 08:32:28', '2025-03-05 08:32:28', NULL),
(69, 'delete-faq', 'حذف سوالات متداول', 0, '2025-03-05 08:32:50', '2025-03-05 08:32:50', NULL),
(70, 'status-faq', 'وضعیت سوالات متداول', 0, '2025-03-05 08:33:18', '2025-03-05 08:33:18', NULL),
(71, 'index-banner', 'دیدن بنر ها', 0, '2025-03-05 08:34:05', '2025-03-05 08:34:05', NULL),
(72, 'edit-banner', 'ویرایش بنر', 0, '2025-03-05 08:34:32', '2025-03-05 08:34:32', NULL),
(73, 'create-banner', 'ایجاد بنر', 0, '2025-03-05 08:34:57', '2025-03-05 08:34:57', NULL),
(74, 'delete-banner', 'حذف بنر', 0, '2025-03-05 08:35:28', '2025-03-05 08:35:28', NULL),
(75, 'status-banner', 'وضعیت بنر', 0, '2025-03-05 08:35:50', '2025-03-05 08:35:50', NULL),
(76, 'index-ticket', 'دیدن تیکت', 0, '2025-03-05 13:23:31', '2025-03-05 13:23:31', NULL),
(77, 'create-ticket', 'ایجاد تیکت', 0, '2025-03-05 13:23:51', '2025-03-05 13:23:51', NULL),
(78, 'edit-ticket', 'ویرایش تیکت', 0, '2025-03-05 13:24:17', '2025-03-05 13:24:17', NULL),
(79, 'delete-ticket', 'حذف تیکت', 0, '2025-03-05 13:24:48', '2025-03-05 13:24:48', NULL),
(80, 'status-ticket', 'وضعیت تیکت', 0, '2025-03-05 13:25:09', '2025-03-05 13:25:09', NULL),
(81, 'show-ticket', 'نمایش تیکت', 0, '2025-03-05 13:35:33', '2025-03-05 13:35:33', NULL),
(82, 'change-ticket', 'باز و بسته کردن تیکت', 0, '2025-03-05 13:47:46', '2025-03-05 13:47:46', NULL),
(83, 'index-ticketPriority', 'دیدن اولویت بندی تیکت ها', 0, '2025-03-05 13:57:33', '2025-03-05 13:57:33', NULL),
(84, 'index-ticketCategory', 'دیدن دسته بندی تیکت ها', 0, '2025-03-05 13:58:16', '2025-03-05 13:58:16', NULL),
(85, 'index-ticketAdmin', 'دیدن دسترسی تیکت ادمین', 0, '2025-03-05 14:07:24', '2025-03-05 14:07:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`, `created_at`) VALUES
(1, 1, '2025-02-07 00:12:42'),
(1, 4, '2025-03-04 22:09:51'),
(1, 7, '2025-03-04 12:30:03'),
(1, 8, '2025-03-04 12:30:03'),
(1, 11, '2025-03-04 12:37:20'),
(1, 13, '2025-03-04 12:37:20'),
(1, 14, '2025-03-04 12:37:20'),
(1, 17, '2025-03-04 13:19:46'),
(1, 18, '2025-03-04 13:19:46'),
(1, 19, '2025-03-04 13:19:46'),
(1, 76, '2025-03-05 17:24:18'),
(2, 1, '2025-02-07 00:12:30'),
(2, 2, '2025-02-07 00:21:31'),
(2, 3, '2025-02-07 00:08:18'),
(2, 4, '2025-02-07 00:21:48'),
(2, 6, '2025-03-03 12:13:25'),
(2, 7, '2025-03-03 12:13:25'),
(2, 8, '2025-03-03 12:13:25'),
(2, 9, '2025-03-03 12:13:26'),
(2, 10, '2025-03-04 12:29:37'),
(2, 11, '2025-03-04 12:36:57'),
(2, 13, '2025-03-04 12:36:57'),
(2, 14, '2025-03-04 12:36:57'),
(2, 15, '2025-03-04 12:36:57'),
(2, 16, '2025-03-04 12:36:58'),
(2, 17, '2025-03-04 13:19:25'),
(2, 18, '2025-03-04 13:19:26'),
(2, 19, '2025-03-04 13:19:26'),
(2, 20, '2025-03-04 13:19:26'),
(2, 21, '2025-03-04 13:19:26'),
(2, 22, '2025-03-04 13:19:26'),
(2, 23, '2025-03-05 16:57:38'),
(2, 24, '2025-03-05 16:57:39'),
(2, 25, '2025-03-05 16:57:39'),
(2, 26, '2025-03-05 16:57:39'),
(2, 27, '2025-03-05 16:57:39'),
(2, 28, '2025-03-05 16:57:39'),
(2, 29, '2025-03-05 16:57:39'),
(2, 30, '2025-03-05 16:57:39'),
(2, 31, '2025-03-05 16:57:39'),
(2, 32, '2025-03-05 16:57:39'),
(2, 33, '2025-03-05 16:57:39'),
(2, 34, '2025-03-05 16:57:39'),
(2, 35, '2025-03-05 16:57:40'),
(2, 36, '2025-03-05 16:57:40'),
(2, 37, '2025-03-05 16:57:40'),
(2, 38, '2025-03-05 16:57:40'),
(2, 39, '2025-03-05 16:57:40'),
(2, 40, '2025-03-05 16:57:40'),
(2, 41, '2025-03-05 16:57:40'),
(2, 42, '2025-03-05 16:57:40'),
(2, 43, '2025-03-05 16:57:40'),
(2, 44, '2025-03-05 16:57:40'),
(2, 45, '2025-03-05 16:57:40'),
(2, 46, '2025-03-05 16:57:40'),
(2, 47, '2025-03-05 16:57:40'),
(2, 48, '2025-03-05 16:57:40'),
(2, 49, '2025-03-05 16:57:40'),
(2, 50, '2025-03-05 16:57:41'),
(2, 51, '2025-03-05 16:57:41'),
(2, 52, '2025-03-05 16:57:41'),
(2, 53, '2025-03-05 16:57:41'),
(2, 54, '2025-03-05 16:57:41'),
(2, 55, '2025-03-05 16:57:41'),
(2, 56, '2025-03-05 16:57:41'),
(2, 57, '2025-03-05 16:57:41'),
(2, 58, '2025-03-05 16:57:41'),
(2, 59, '2025-03-05 16:57:41'),
(2, 60, '2025-03-05 16:57:41'),
(2, 61, '2025-03-05 16:57:41'),
(2, 62, '2025-03-05 16:57:41'),
(2, 63, '2025-03-05 16:57:41'),
(2, 64, '2025-03-05 16:57:41'),
(2, 65, '2025-03-05 16:57:41'),
(2, 66, '2025-03-05 16:57:41'),
(2, 67, '2025-03-05 16:57:41'),
(2, 68, '2025-03-05 16:57:41'),
(2, 69, '2025-03-05 16:57:41'),
(2, 70, '2025-03-05 16:57:41'),
(2, 71, '2025-03-05 16:57:42'),
(2, 72, '2025-03-05 16:57:42'),
(2, 73, '2025-03-05 16:57:42'),
(2, 74, '2025-03-05 16:57:42'),
(2, 75, '2025-03-05 16:57:42'),
(2, 76, '2025-03-05 16:57:42'),
(2, 77, '2025-03-05 16:57:42'),
(2, 78, '2025-03-05 16:57:42'),
(2, 79, '2025-03-05 16:57:42'),
(2, 80, '2025-03-05 16:57:42'),
(2, 81, '2025-03-05 17:06:01'),
(2, 82, '2025-03-05 17:18:45'),
(2, 83, '2025-03-05 17:32:32'),
(2, 84, '2025-03-05 17:32:32'),
(2, 85, '2025-03-05 17:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`user_id`, `permission_id`, `created_at`) VALUES
(2, 6, '2025-03-03 13:10:13'),
(10, 1, '2025-03-03 11:46:24'),
(10, 7, '2025-03-03 12:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `summary` text NOT NULL,
  `body` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `commentable` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => uncommentable, 1 => commentable',
  `tags` varchar(255) NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `body`, `image`, `status`, `commentable`, `tags`, `published_at`, `author_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', NULL, '<p>nhgkhbkm</p>', '<p>m,hg,mhg</p>', '{\"indexArray\":{\"large\":\"images\\\\post\\\\2025\\\\02\\\\01\\\\1738453680\\\\1738453680_large.png\",\"medium\":\"images\\\\post\\\\2025\\\\02\\\\01\\\\1738453680\\\\1738453680_medium.png\",\"small\":\"images\\\\post\\\\2025\\\\02\\\\01\\\\1738453680\\\\1738453680_small.png\"},\"directory\":\"images\\\\post\\\\2025\\\\02\\\\01\\\\1738453680\",\"currentImage\":\"medium\"}', 1, 1, 'fcbgfn,jmyhgk,vrfd', '2025-03-04 13:29:15', 1, 18, '2025-02-01 20:12:51', '2025-03-04 09:59:15', NULL),
(2, 'bjgyhj', NULL, '<p>hbkujhuhu</p>', '<p>vfdb f</p>', '{\"indexArray\":{\"large\":\"images\\\\post\\\\2025\\\\02\\\\01\\\\1738453814\\\\1738453814_large.png\",\"medium\":\"images\\\\post\\\\2025\\\\02\\\\01\\\\1738453814\\\\1738453814_medium.png\",\"small\":\"images\\\\post\\\\2025\\\\02\\\\01\\\\1738453814\\\\1738453814_small.png\"},\"directory\":\"images\\\\post\\\\2025\\\\02\\\\01\\\\1738453814\",\"currentImage\":\"medium\"}', 1, 1, 'jknujk', '2025-03-04 13:25:50', 9, 18, '2025-02-01 20:20:15', '2025-03-04 09:39:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `tags` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `description`, `slug`, `image`, `status`, `tags`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 'دسته 1', '<p>توضیحات 1</p>', 'دسته-1-ftX1D', '{\"indexArray\":{\"large\":\"images\\\\post-category\\\\2025\\\\01\\\\30\\\\1738267793\\\\1738267793_large.png\",\"medium\":\"images\\\\post-category\\\\2025\\\\01\\\\30\\\\1738267793\\\\1738267793_medium.png\",\"small\":\"images\\\\post-category\\\\2025\\\\01\\\\30\\\\1738267793\\\\1738267793_small.png\"},\"directory\":\"images\\\\post-category\\\\2025\\\\01\\\\30\\\\1738267793\",\"currentImage\":\"medium\"}', 1, 'تگ1,تگ2', '2025-01-30 16:39:54', '2025-02-01 19:31:58', NULL),
(19, 'دسته 2  ویر', '<p>توضیحات تگ 2</p>', 'دسته-2-yqNhB', '{\"indexArray\":{\"large\":\"images\\\\post-category\\\\2025\\\\01\\\\30\\\\1738271334\\\\1738271334_large.png\",\"medium\":\"images\\\\post-category\\\\2025\\\\01\\\\30\\\\1738271334\\\\1738271334_medium.png\",\"small\":\"images\\\\post-category\\\\2025\\\\01\\\\30\\\\1738271334\\\\1738271334_small.png\"},\"directory\":\"images\\\\post-category\\\\2025\\\\01\\\\30\\\\1738271334\",\"currentImage\":\"medium\"}', 1, 'تگ 2,تگ 3', '2025-01-30 16:40:25', '2025-02-01 19:33:03', NULL),
(20, 'گوشی', '<p>گوشی گوشی گوشی</p>', 'گوشی-51TGV', '{\"indexArray\":{\"large\":\"images\\\\post-category\\\\2025\\\\02\\\\18\\\\1739920844\\\\1739920844_large.jpg\",\"medium\":\"images\\\\post-category\\\\2025\\\\02\\\\18\\\\1739920844\\\\1739920844_medium.jpg\",\"small\":\"images\\\\post-category\\\\2025\\\\02\\\\18\\\\1739920844\\\\1739920844_small.jpg\"},\"directory\":\"images\\\\post-category\\\\2025\\\\02\\\\18\\\\1739920844\",\"currentImage\":\"medium\"}', 1, 'گوشی', '2025-02-18 19:50:51', '2025-02-18 19:50:51', NULL),
(21, 'bfdb', '<p>gbtdhbtd</p>', 'bfdb-NKBXv', '{\"indexArray\":{\"large\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030703\\\\1741030703_large.png\",\"medium\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030703\\\\1741030703_medium.png\",\"small\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030703\\\\1741030703_small.png\"},\"directory\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030703\",\"currentImage\":\"medium\"}', 1, 'ngfn', '2025-03-03 16:08:23', '2025-03-03 16:08:30', '2025-03-03 16:08:30'),
(22, 'hrbfdh', '<p>n hgnhgnh</p>', 'hrbfdh-dSVs1', '{\"indexArray\":{\"large\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030792\\\\1741030792_large.png\",\"medium\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030792\\\\1741030792_medium.png\",\"small\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030792\\\\1741030792_small.png\"},\"directory\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030792\",\"currentImage\":\"medium\"}', 1, 'jyg', '2025-03-03 16:09:52', '2025-03-03 16:10:33', '2025-03-03 16:10:33'),
(23, 'bnfcgnbgfn', '<p>jyfjngyjgu</p>', 'bnfcgnbgfn-KhC6S', '{\"indexArray\":{\"large\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030936\\\\1741030936_large.png\",\"medium\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030936\\\\1741030936_medium.png\",\"small\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030936\\\\1741030936_small.png\"},\"directory\":\"images\\\\post-category\\\\2025\\\\03\\\\03\\\\1741030936\",\"currentImage\":\"medium\"}', 1, 'nhg', '2025-03-03 16:12:16', '2025-03-04 08:50:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `view` bigint(20) NOT NULL DEFAULT 0,
  `introduction` text NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `length` decimal(10,1) NOT NULL COMMENT 'cm unit',
  `width` decimal(10,1) NOT NULL COMMENT 'cm unit',
  `height` decimal(10,1) NOT NULL COMMENT 'cm unit',
  `price` decimal(20,3) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `marketable` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 => marketable, 0 => is not marketable',
  `tags` varchar(255) NOT NULL,
  `sold_number` tinyint(4) NOT NULL DEFAULT 0,
  `frozen_number` tinyint(4) NOT NULL DEFAULT 0,
  `marketable_number` tinyint(4) NOT NULL DEFAULT 0,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `view`, `introduction`, `slug`, `image`, `weight`, `length`, `width`, `height`, `price`, `status`, `marketable`, `tags`, `sold_number`, `frozen_number`, `marketable_number`, `brand_id`, `category_id`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'پریل', 115, '<p>مایع پریل</p>', 'پریل-XgxMW', '{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\\\\1739750998_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750998\",\"currentImage\":\"medium\"}', 12.00, 12.0, 12.0, 12.0, 217000.000, 1, 1, 'پریل', 0, 0, 16, 1, 1, '2025-03-17 09:17:49', '2025-02-07 14:09:49', '2025-03-17 05:47:49', NULL),
(3, 'پرسیل', 26, '<p>ربربر</p>', 'تاژ-Tnruz', '{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750974\\\\1739750974_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750974\\\\1739750974_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750974\\\\1739750974_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\17\\\\1739750974\",\"currentImage\":\"medium\"}', 12.00, 12.0, 12.0, 12.0, 183000.000, 1, 1, 'تاژ', 0, 0, 10, 1, 1, '2025-03-08 11:48:18', '2025-02-07 14:16:06', '2025-03-08 08:18:18', NULL),
(4, 'آیفون13', 38, '<p>گوشی گوشی 13گوشی گوشی 13گوشی گوشی 13گوشی گوشی 13</p>', 'آیفون13-Fkthr', '{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_large.jpg\",\"medium\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_medium.jpg\",\"small\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\\\\1739921078_small.jpg\"},\"directory\":\"images\\\\product\\\\2025\\\\02\\\\18\\\\1739921078\",\"currentImage\":\"medium\"}', 10.00, 10.0, 10.0, 10.0, 100000.000, 1, 1, 'گوشی,آیفون13', 0, 0, 12, 1, 4, '2025-03-08 11:53:39', '2025-02-18 19:54:39', '2025-03-08 08:23:39', NULL),
(38, 'htdhbtf', 0, '<p>ljhnl</p>', 'htdhbtf-K34Tb', '{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\03\\\\04\\\\1741093634\\\\1741093634_large.png\",\"medium\":\"images\\\\product\\\\2025\\\\03\\\\04\\\\1741093634\\\\1741093634_medium.png\",\"small\":\"images\\\\product\\\\2025\\\\03\\\\04\\\\1741093634\\\\1741093634_small.png\"},\"directory\":\"images\\\\product\\\\2025\\\\03\\\\04\\\\1741093634\",\"currentImage\":\"medium\"}', 12.00, 12.0, 12.0, 12.0, 120000.000, 1, 1, 'jyh', 0, 0, 0, 1, 1, '2025-03-04 13:08:39', '2025-03-04 09:37:15', '2025-03-04 09:38:39', '2025-03-04 09:38:39'),
(40, 'گوشی جدید', 2, '<p>tfgjftf</p>', 'hnfngcf-FyMUO', '{\"indexArray\":{\"large\":\"images\\\\product\\\\2025\\\\03\\\\04\\\\1741093692\\\\1741093692_large.png\",\"medium\":\"images\\\\product\\\\2025\\\\03\\\\04\\\\1741093692\\\\1741093692_medium.png\",\"small\":\"images\\\\product\\\\2025\\\\03\\\\04\\\\1741093692\\\\1741093692_small.png\"},\"directory\":\"images\\\\product\\\\2025\\\\03\\\\04\\\\1741093692\",\"currentImage\":\"medium\"}', 12.00, 12.0, 12.0, 12.0, 10000.000, 1, 1, 'mjhuyk', 0, 0, 0, 1, 4, '2025-03-17 07:01:53', '2025-03-04 09:38:12', '2025-03-17 07:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `show_in_menu` tinyint(4) NOT NULL DEFAULT 0,
  `tags` text NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `slug`, `image`, `status`, `show_in_menu`, `tags`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'شوینده', '<p>توضیحات lil</p>', NULL, '{\"indexArray\":{\"large\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942409\\\\1738942409_large.png\",\"medium\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942409\\\\1738942409_medium.png\",\"small\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942409\\\\1738942409_small.png\"},\"directory\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942409\",\"currentImage\":\"medium\"}', 1, 1, 'تگ1,تگ2', NULL, '2025-02-07 12:03:33', '2025-02-18 19:52:47', NULL),
(2, 'دسته 2', '<p>توضیحات2</p>', NULL, '{\"indexArray\":{\"large\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942436\\\\1738942436_large.png\",\"medium\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942436\\\\1738942436_medium.png\",\"small\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942436\\\\1738942436_small.png\"},\"directory\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942436\",\"currentImage\":\"medium\"}', 1, 0, 'لف', NULL, '2025-02-07 12:03:56', '2025-02-07 12:03:56', NULL),
(3, 'برای دسته اول', '<p>لرقریث</p>', NULL, '{\"indexArray\":{\"large\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942454\\\\1738942454_large.png\",\"medium\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942454\\\\1738942454_medium.png\",\"small\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942454\\\\1738942454_small.png\"},\"directory\":\"images\\\\product-category\\\\2025\\\\02\\\\07\\\\1738942454\",\"currentImage\":\"medium\"}', 1, 0, 'لفبذ', 1, '2025-02-07 12:04:15', '2025-02-07 12:13:04', NULL),
(4, 'گوشی', '<p>گوشی گوشی گوشی</p>', 'گوشی-btutu', '{\"indexArray\":{\"large\":\"images\\\\product-category\\\\2025\\\\02\\\\18\\\\1739920936\\\\1739920936_large.jpg\",\"medium\":\"images\\\\product-category\\\\2025\\\\02\\\\18\\\\1739920936\\\\1739920936_medium.jpg\",\"small\":\"images\\\\product-category\\\\2025\\\\02\\\\18\\\\1739920936\\\\1739920936_small.jpg\"},\"directory\":\"images\\\\product-category\\\\2025\\\\02\\\\18\\\\1739920936\",\"currentImage\":\"medium\"}', 1, 1, 'گوشی', NULL, '2025-02-18 19:52:17', '2025-02-18 19:52:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price_increase` decimal(20,3) NOT NULL DEFAULT 0.000,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sold_number` tinyint(4) NOT NULL DEFAULT 0,
  `frozen_number` tinyint(4) NOT NULL DEFAULT 0,
  `marketable_number` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `color_name`, `color`, `product_id`, `price_increase`, `status`, `sold_number`, `frozen_number`, `marketable_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'آبی', '#0008ff', 3, 4000.000, 0, 0, 0, 0, '2025-02-16 19:40:16', '2025-02-16 19:40:16', NULL),
(6, 'قرمز', '#ff0000', 3, 10000.000, 0, 0, 0, 0, '2025-02-16 19:40:47', '2025-02-16 19:40:47', NULL),
(7, 'قرمز', '#ff0000', 2, 10000.000, 0, 0, 0, 0, '2025-02-17 19:36:31', '2025-02-17 19:36:31', NULL),
(8, 'آبی', '#001eff', 2, 0.000, 0, 0, 0, 0, '2025-02-17 19:36:46', '2025-02-17 19:36:46', NULL),
(9, 'سفید', '#ffffff', 4, 0.000, 0, 0, 0, 0, '2025-02-18 19:57:36', '2025-02-18 20:51:34', '2025-02-18 20:51:34'),
(10, 'مشکی', '#000000', 4, 100000.000, 0, 0, 0, 0, '2025-02-18 19:57:45', '2025-02-18 19:57:45', NULL),
(11, 'آبی', '#001eff', 4, 1000000.000, 0, 0, 0, 0, '2025-02-18 20:51:50', '2025-02-18 20:51:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"indexArray\":{\"large\":\"images\\\\product-gallery\\\\2025\\\\02\\\\07\\\\1738952994\\\\1738952994_large.png\",\"medium\":\"images\\\\product-gallery\\\\2025\\\\02\\\\07\\\\1738952994\\\\1738952994_medium.png\",\"small\":\"images\\\\product-gallery\\\\2025\\\\02\\\\07\\\\1738952994\\\\1738952994_small.png\"},\"directory\":\"images\\\\product-gallery\\\\2025\\\\02\\\\07\\\\1738952994\",\"currentImage\":\"medium\"}', 3, '2025-02-07 14:59:55', '2025-02-07 14:59:55', NULL),
(2, '{\"indexArray\":{\"large\":\"images\\\\product-gallery\\\\2025\\\\02\\\\07\\\\1738953003\\\\1738953003_large.png\",\"medium\":\"images\\\\product-gallery\\\\2025\\\\02\\\\07\\\\1738953003\\\\1738953003_medium.png\",\"small\":\"images\\\\product-gallery\\\\2025\\\\02\\\\07\\\\1738953003\\\\1738953003_small.png\"},\"directory\":\"images\\\\product-gallery\\\\2025\\\\02\\\\07\\\\1738953003\",\"currentImage\":\"medium\"}', 3, '2025-02-07 15:00:03', '2025-02-07 15:00:03', NULL),
(3, '{\"indexArray\":{\"large\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832260\\\\1739832260_large.jpg\",\"medium\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832260\\\\1739832260_medium.jpg\",\"small\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832260\\\\1739832260_small.jpg\"},\"directory\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832260\",\"currentImage\":\"medium\"}', 2, '2025-02-17 19:14:26', '2025-02-17 19:14:26', NULL),
(4, '{\"indexArray\":{\"large\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832279\\\\1739832279_large.jpg\",\"medium\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832279\\\\1739832279_medium.jpg\",\"small\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832279\\\\1739832279_small.jpg\"},\"directory\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832279\",\"currentImage\":\"medium\"}', 2, '2025-02-17 19:14:39', '2025-02-17 19:14:39', NULL),
(5, '{\"indexArray\":{\"large\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832288\\\\1739832288_large.jpg\",\"medium\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832288\\\\1739832288_medium.jpg\",\"small\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832288\\\\1739832288_small.jpg\"},\"directory\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832288\",\"currentImage\":\"medium\"}', 2, '2025-02-17 19:14:48', '2025-02-17 19:14:48', NULL),
(6, '{\"indexArray\":{\"large\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832300\\\\1739832300_large.jpg\",\"medium\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832300\\\\1739832300_medium.jpg\",\"small\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832300\\\\1739832300_small.jpg\"},\"directory\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832300\",\"currentImage\":\"medium\"}', 2, '2025-02-17 19:15:01', '2025-02-17 19:15:01', NULL),
(7, '{\"indexArray\":{\"large\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832309\\\\1739832309_large.jpg\",\"medium\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832309\\\\1739832309_medium.jpg\",\"small\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832309\\\\1739832309_small.jpg\"},\"directory\":\"images\\\\product-gallery\\\\2025\\\\02\\\\17\\\\1739832309\",\"currentImage\":\"medium\"}', 2, '2025-02-17 19:15:09', '2025-02-17 19:15:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_meta`
--

CREATE TABLE `product_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_meta`
--

INSERT INTO `product_meta` (`id`, `meta_key`, `meta_value`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'پاک کنندگی', 'هست', 2, '2025-02-07 14:09:49', '2025-02-16 20:39:58', NULL),
(2, 'حساسیست دست', 'ندارد', 2, '2025-02-07 14:09:49', '2025-02-16 20:39:58', NULL),
(3, 'حساسیت دست دست', 'ندارد ندارد', 3, '2025-02-07 14:16:06', '2025-02-16 20:39:34', NULL),
(4, 'قیمت', 'متوسط', 3, '2025-02-07 14:16:06', '2025-02-16 20:39:34', NULL),
(5, 'ضدآب', 'هست', 4, '2025-02-18 19:54:39', '2025-02-18 19:54:39', NULL),
(6, 'دوربین', 'عالی', 4, '2025-02-18 19:54:39', '2025-02-18 19:54:39', NULL),
(7, 'جالب', 'است', 40, '2025-03-04 09:38:12', '2025-03-17 07:02:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_user`
--

CREATE TABLE `product_user` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_user`
--

INSERT INTO `product_user` (`product_id`, `user_id`) VALUES
(2, 10),
(3, 8),
(3, 10),
(4, 8),
(4, 9),
(4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'کردستان', '2025-02-24 17:11:47', NULL, NULL),
(2, 'تهران', '2025-02-27 19:46:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `public_mail`
--

CREATE TABLE `public_mail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `public_mail`
--

INSERT INTO `public_mail` (`id`, `subject`, `body`, `status`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'عنوان', '<p>بدنه</p>', 1, '2025-02-07 18:24:24', '2025-02-03 23:29:57', '2025-03-17 17:29:01', NULL),
(2, 'عنوان2 جئدید', '<p>بدنه 2 جدید</p>', 1, '2025-02-04 21:51:32', '2025-02-03 23:30:23', '2025-02-04 19:24:44', NULL),
(3, 'ایمیل جدید', '<p>متن ایمیل جدید</p>', 1, '2025-02-04 21:53:42', '2025-02-04 18:19:54', '2025-02-04 18:23:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `public_mail_files`
--

CREATE TABLE `public_mail_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `public_mail_id` bigint(20) UNSIGNED NOT NULL,
  `file_path` text NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `public_mail_files`
--

INSERT INTO `public_mail_files` (`id`, `public_mail_id`, `file_path`, `file_size`, `file_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'files\\email-files\\2025\\02\\03\\1738626999.png', 81424, 'png', 1, '2025-02-03 23:45:42', '2025-02-03 20:26:43', NULL),
(2, 1, 'files\\email-files\\2025\\02\\03\\1738626989.png', 165082, 'png', 1, '2025-02-03 23:50:09', '2025-02-03 20:26:29', NULL),
(3, 1, 'files\\email-files\\2025\\02\\03\\1738626866.png', 177329, 'png', 1, '2025-02-03 20:24:26', '2025-02-03 20:26:42', NULL),
(4, 3, 'files\\email-files\\2025\\02\\04\\1738712156.png', 177329, 'png', 1, '2025-02-04 18:20:32', '2025-02-04 20:05:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `public_sms`
--

CREATE TABLE `public_sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `public_sms`
--

INSERT INTO `public_sms` (`id`, `title`, `body`, `status`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'فروش ویژه', 'این یک فروش ویژه است', 0, '2025-01-24 20:29:00', '2025-02-03 22:11:49', '2025-02-03 20:56:45', NULL),
(2, 'زمستانه', 'زمستانه است', 0, '2025-02-03 22:54:00', '2025-02-03 22:11:54', '2025-02-03 20:56:16', NULL),
(3, 'عنوانن', 'متن پیامکککک', 1, '2025-02-04 19:25:19', '2025-02-03 19:28:34', '2025-02-03 19:28:34', NULL),
(4, 'عنوان  جدید', 'متن جدید', 0, '2025-02-13 20:29:00', '2025-02-03 19:28:50', '2025-02-04 18:28:15', NULL),
(5, 'ngfjngy', 'htfhnt', 1, '2025-02-03 23:18:44', '2025-02-03 19:42:02', '2025-02-03 19:48:44', '2025-02-03 19:48:44'),
(6, 'hfhfg', 'mhjyytjgj', 0, '2025-02-03 23:18:21', '2025-02-03 19:43:00', '2025-02-03 20:56:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `rateable_type` varchar(255) NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `value` decimal(20,3) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `model_type`, `model_id`, `rateable_type`, `rateable_id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(15, 'App\\Models\\User', 9, 'App\\Models\\Market\\Product', 2, 4.000, 1, '2025-03-08 07:50:44', '2025-03-08 07:50:44'),
(16, 'App\\Models\\User', 10, 'App\\Models\\Market\\Product', 2, 3.000, 1, '2025-03-08 08:05:20', '2025-03-17 05:47:49'),
(18, 'App\\Models\\User', 10, 'App\\Models\\Market\\Product', 3, 5.000, 1, '2025-03-08 08:18:16', '2025-03-08 08:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'operator', 'اپراتور', 0, NULL, '2025-03-03 13:57:40', NULL),
(2, 'admin', 'ادمین', 0, NULL, '2025-03-03 13:57:51', NULL),
(3, 'کاربر', '', 0, NULL, '2025-02-06 21:41:26', '2025-02-06 21:41:26'),
(4, 'جدیدذلفبفذ', 'جدیدیذفلبی', 0, '2025-02-06 21:32:26', '2025-02-06 21:42:06', '2025-02-06 21:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `created_at`) VALUES
(9, 1, '2025-03-03 19:17:55'),
(10, 2, '2025-03-03 11:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ZwAWFBRVf25nfMQsVvlrrbDX7vOLojuRtLSKs2BL', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiREM2VElSWGpKamdsVVlJd1pRNWhVNzh6dWVwTzJpS202alpiYzdkcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjk7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9fQ==', 1742318014);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `description`, `keywords`, `logo`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'عنوان سایت', 'توضیحات سایت', 'کلمات کلیدی سایت', '\"images\\\\setting\\\\2025\\\\02\\\\04\\\\logo.png\"', '\"images\\\\setting\\\\2025\\\\02\\\\04\\\\icon.png\"', NULL, '2025-02-03 20:46:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `seen` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => unseen, 1 => seen',
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `priority_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `description`, `status`, `seen`, `reference_id`, `user_id`, `category_id`, `priority_id`, `ticket_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(38, 'عنوان تیکت', 'متن تیکت متن تیکت متن تیکت متن تیکت متن تیکت متن تیکت متن تیکت متن تیکت متن تیکت متن تیکت', 0, 1, NULL, 10, 1, 1, NULL, '2025-03-05 09:35:42', '2025-03-05 13:54:40', NULL),
(39, 'عنوان تیکت', 'جواب من خیره', 0, 1, 2, 10, 1, 1, 38, '2025-03-05 09:42:48', '2025-03-05 09:42:48', NULL),
(40, 'عنوان تیکت', 'gbfvbfgc', 0, 1, 2, 10, 1, 1, 38, '2025-03-05 13:45:16', '2025-03-05 13:45:16', NULL),
(41, 'k8uyk', 'kuykuhy', 0, 0, NULL, 10, 1, 1, NULL, '2025-03-06 17:25:55', '2025-03-06 17:25:55', NULL),
(42, 'luiliu', 'kutglkuhy', 0, 0, NULL, 10, 1, 1, NULL, '2025-03-06 17:26:10', '2025-03-06 17:26:10', NULL),
(43, 'itykyu7ik', 'khyukliu', 0, 0, NULL, 10, 1, 2, NULL, '2025-03-06 17:26:21', '2025-03-06 17:26:21', NULL),
(44, 'kuyk', 'kuyhui', 0, 0, NULL, 10, 1, 1, NULL, '2025-03-06 17:26:30', '2025-03-06 17:26:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_admins`
--

CREATE TABLE `ticket_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_admins`
--

INSERT INTO `ticket_admins` (`id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 10, '2025-03-05 09:42:35', '2025-03-05 09:42:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_categories`
--

CREATE TABLE `ticket_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_categories`
--

INSERT INTO `ticket_categories` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'مشکل در فروش', 1, '2025-02-04 21:16:57', '2025-03-05 14:02:44', NULL),
(2, 'پرداخت در منزل', 1, '2025-02-04 21:17:10', '2025-02-06 19:05:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_files`
--

CREATE TABLE `ticket_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_path` text NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_files`
--

INSERT INTO `ticket_files` (`id`, `file_path`, `file_size`, `file_type`, `status`, `ticket_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'files\\ticket-files\\2025\\03\\05\\1741179942.jpg', 185089, 'jpg', 0, 38, 10, '2025-03-05 09:35:42', '2025-03-05 09:35:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_priorities`
--

CREATE TABLE `ticket_priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_priorities`
--

INSERT INTO `ticket_priorities` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'مهم', 1, '2025-02-04 21:15:50', '2025-03-05 14:05:18', NULL),
(2, 'خیلی مهم', 1, '2025-02-04 21:16:05', '2025-02-04 21:16:16', NULL),
(3, 'متوسط', 1, '2025-02-06 19:04:47', '2025-02-06 19:04:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `national_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL COMMENT 'avatar',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `activation` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => inactive, 1 => active',
  `activation_date` timestamp NULL DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => user, 1 => admin',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `mobile`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `national_code`, `first_name`, `last_name`, `slug`, `profile_photo_path`, `email_verified_at`, `mobile_verified_at`, `activation`, `activation_date`, `user_type`, `status`, `current_team_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'saman@gmail.com', '9183818663', '12345678', NULL, NULL, NULL, NULL, NULL, 'azami', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, '2025-03-03 09:00:07', NULL),
(2, 'zhiran', '918', '12345678', NULL, NULL, NULL, NULL, 'zahir', 'aza', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, '2025-02-04 23:36:31', '2025-02-04 20:36:49', NULL),
(6, NULL, '9183818665', '$2y$12$WDapgB/5xLP22NFfo0/03OHz7ggqGwfWyZA985EkgIR2Gnfx9wTpG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-23 19:37:19', '2025-02-23 19:37:23', 1, NULL, 0, 0, NULL, NULL, '2025-02-10 14:14:36', '2025-02-10 14:14:36', NULL),
(7, NULL, '9123122123', '$2y$12$EC3i7GZL/rVWcVrdVhR/AOxUkX91bVPPfP7Bci.2vWTc21RB7rAYG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-23 19:37:15', '2025-02-23 19:37:27', 1, NULL, 0, 0, NULL, NULL, '2025-02-10 14:33:16', '2025-02-10 14:33:16', NULL),
(8, 'azamisaman131@gmail.com', NULL, '$2y$12$n1pi135QZrdLVWuZVqBjsuNCbzI.FWwPARHkeE/F7LHp9nns2110e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-23 19:37:30', 1, NULL, 0, 0, NULL, NULL, '2025-02-12 11:32:45', '2025-02-24 14:22:14', NULL),
(9, 'azamisaman1371@gmail.com', '9189788787', '$2y$12$Fa1SFwNaqyzKj0X367t5jOa9PzxmWiAXHOKedMpGrx9HPzK7i6asO', NULL, NULL, NULL, '3858966428', 'sam', 'azam', NULL, NULL, '2025-02-13 16:38:01', NULL, 1, NULL, 1, 1, NULL, NULL, '2025-02-12 12:34:37', '2025-03-03 15:47:47', NULL),
(10, NULL, '9183818662', '$2y$12$eGz7GUJ7GrzfQtqKAO/bouI7PVGcLxrPR.Xpn00jQdSRsn/XSGbjW', NULL, NULL, NULL, '3750223939', 'سامان', 'اعظمی', NULL, NULL, NULL, '2025-02-24 15:31:13', 1, NULL, 1, 1, NULL, NULL, '2025-02-24 15:31:05', '2025-03-03 09:17:29', NULL),
(11, NULL, '9358941979', '$2y$12$HRWdAvJMAYS9b1apjjAHBeiQHNPWBnUndls14NpTSsLcsn/W3KA2i', NULL, NULL, NULL, '3810467863', 'ژیران', 'اعظمی', NULL, NULL, NULL, '2025-03-07 16:19:37', 1, NULL, 0, 0, NULL, NULL, '2025-03-07 16:19:30', '2025-03-07 16:20:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_city_id_foreign` (`city_id`),
  ADD KEY `addresses_province_id_foreign` (`province_id`);

--
-- Indexes for table `amazing_sales`
--
ALTER TABLE `amazing_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amazing_sales_product_id_foreign` (`product_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_user_id_foreign` (`user_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`),
  ADD KEY `cart_items_color_id_foreign` (`color_id`),
  ADD KEY `cart_items_guarantee_id_foreign` (`guarantee_id`);

--
-- Indexes for table `cart_item_selected_attributes`
--
ALTER TABLE `cart_item_selected_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_item_selected_attributes_cart_item_id_foreign` (`cart_item_id`),
  ADD KEY `cart_item_selected_attributes_category_attribute_id_foreign` (`category_attribute_id`),
  ADD KEY `cart_item_selected_attributes_category_value_id_foreign` (`category_value_id`);

--
-- Indexes for table `cash_payments`
--
ALTER TABLE `cash_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `category_attributes`
--
ALTER TABLE `category_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_attributes_category_id_foreign` (`category_id`);

--
-- Indexes for table `category_attribute_default_values`
--
ALTER TABLE `category_attribute_default_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_attribute_default_values_category_attribute_id_foreign` (`category_attribute_id`);

--
-- Indexes for table `category_values`
--
ALTER TABLE `category_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_values_product_id_foreign` (`product_id`),
  ADD KEY `category_values_category_attribute_id_foreign` (`category_attribute_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_province_id_foreign` (`province_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`),
  ADD KEY `comments_author_id_foreign` (`author_id`);

--
-- Indexes for table `common_discount`
--
ALTER TABLE `common_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compares_user_id_foreign` (`user_id`);

--
-- Indexes for table `compare_product`
--
ALTER TABLE `compare_product`
  ADD PRIMARY KEY (`product_id`,`compare_id`),
  ADD KEY `compare_product_compare_id_foreign` (`compare_id`);

--
-- Indexes for table `copans`
--
ALTER TABLE `copans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `copans_user_id_foreign` (`user_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faqs_slug_unique` (`slug`);

--
-- Indexes for table `guarantees`
--
ALTER TABLE `guarantees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guarantees_product_id_foreign` (`product_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offline_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `online_payments`
--
ALTER TABLE `online_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`),
  ADD KEY `orders_delivery_id_foreign` (`delivery_id`),
  ADD KEY `orders_copan_id_foreign` (`copan_id`),
  ADD KEY `orders_common_discount_id_foreign` (`common_discount_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_amazing_sale_id_foreign` (`amazing_sale_id`),
  ADD KEY `order_items_color_id_foreign` (`color_id`),
  ADD KEY `order_items_guarantee_id_foreign` (`guarantee_id`);

--
-- Indexes for table `order_item_selected_attributes`
--
ALTER TABLE `order_item_selected_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_selected_attributes_order_item_id_foreign` (`order_item_id`),
  ADD KEY `order_item_selected_attributes_category_attribute_id_foreign` (`category_attribute_id`),
  ADD KEY `order_item_selected_attributes_category_value_id_foreign` (`category_value_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_slug_unique` (`slug`),
  ADD KEY `product_categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_meta`
--
ALTER TABLE `product_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_meta_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_user`
--
ALTER TABLE `product_user`
  ADD PRIMARY KEY (`product_id`,`user_id`),
  ADD KEY `product_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_mail`
--
ALTER TABLE `public_mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_mail_files`
--
ALTER TABLE `public_mail_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public_mail_files_public_mail_id_foreign` (`public_mail_id`);

--
-- Indexes for table `public_sms`
--
ALTER TABLE `public_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_reference_id_foreign` (`reference_id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_category_id_foreign` (`category_id`),
  ADD KEY `tickets_priority_id_foreign` (`priority_id`),
  ADD KEY `tickets_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `ticket_admins`
--
ALTER TABLE `ticket_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_admins_user_id_foreign` (`user_id`);

--
-- Indexes for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_files`
--
ALTER TABLE `ticket_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_files_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_files_user_id_foreign` (`user_id`);

--
-- Indexes for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_national_code_unique` (`national_code`),
  ADD UNIQUE KEY `users_slug_unique` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `amazing_sales`
--
ALTER TABLE `amazing_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cart_item_selected_attributes`
--
ALTER TABLE `cart_item_selected_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_payments`
--
ALTER TABLE `cash_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_attributes`
--
ALTER TABLE `category_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_attribute_default_values`
--
ALTER TABLE `category_attribute_default_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_values`
--
ALTER TABLE `category_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `common_discount`
--
ALTER TABLE `common_discount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `copans`
--
ALTER TABLE `copans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guarantees`
--
ALTER TABLE `guarantees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `online_payments`
--
ALTER TABLE `online_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_item_selected_attributes`
--
ALTER TABLE `order_item_selected_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_meta`
--
ALTER TABLE `product_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `public_mail`
--
ALTER TABLE `public_mail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `public_mail_files`
--
ALTER TABLE `public_mail_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `public_sms`
--
ALTER TABLE `public_sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ticket_admins`
--
ALTER TABLE `ticket_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_files`
--
ALTER TABLE `ticket_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `amazing_sales`
--
ALTER TABLE `amazing_sales`
  ADD CONSTRAINT `amazing_sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `product_colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_items_guarantee_id_foreign` FOREIGN KEY (`guarantee_id`) REFERENCES `guarantees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_item_selected_attributes`
--
ALTER TABLE `cart_item_selected_attributes`
  ADD CONSTRAINT `cart_item_selected_attributes_cart_item_id_foreign` FOREIGN KEY (`cart_item_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_item_selected_attributes_category_attribute_id_foreign` FOREIGN KEY (`category_attribute_id`) REFERENCES `category_attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_item_selected_attributes_category_value_id_foreign` FOREIGN KEY (`category_value_id`) REFERENCES `category_values` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cash_payments`
--
ALTER TABLE `cash_payments`
  ADD CONSTRAINT `cash_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_attributes`
--
ALTER TABLE `category_attributes`
  ADD CONSTRAINT `category_attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_attribute_default_values`
--
ALTER TABLE `category_attribute_default_values`
  ADD CONSTRAINT `category_attribute_default_values_category_attribute_id_foreign` FOREIGN KEY (`category_attribute_id`) REFERENCES `category_attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_values`
--
ALTER TABLE `category_values`
  ADD CONSTRAINT `category_values_category_attribute_id_foreign` FOREIGN KEY (`category_attribute_id`) REFERENCES `category_attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`);

--
-- Constraints for table `compares`
--
ALTER TABLE `compares`
  ADD CONSTRAINT `compares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `compare_product`
--
ALTER TABLE `compare_product`
  ADD CONSTRAINT `compare_product_compare_id_foreign` FOREIGN KEY (`compare_id`) REFERENCES `compares` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compare_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `copans`
--
ALTER TABLE `copans`
  ADD CONSTRAINT `copans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guarantees`
--
ALTER TABLE `guarantees`
  ADD CONSTRAINT `guarantees_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD CONSTRAINT `offline_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `online_payments`
--
ALTER TABLE `online_payments`
  ADD CONSTRAINT `online_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_common_discount_id_foreign` FOREIGN KEY (`common_discount_id`) REFERENCES `common_discount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_copan_id_foreign` FOREIGN KEY (`copan_id`) REFERENCES `copans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_amazing_sale_id_foreign` FOREIGN KEY (`amazing_sale_id`) REFERENCES `amazing_sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `product_colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_guarantee_id_foreign` FOREIGN KEY (`guarantee_id`) REFERENCES `guarantees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_item_selected_attributes`
--
ALTER TABLE `order_item_selected_attributes`
  ADD CONSTRAINT `order_item_selected_attributes_category_attribute_id_foreign` FOREIGN KEY (`category_attribute_id`) REFERENCES `category_attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_selected_attributes_category_value_id_foreign` FOREIGN KEY (`category_value_id`) REFERENCES `category_values` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_selected_attributes_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `otps`
--
ALTER TABLE `otps`
  ADD CONSTRAINT `otps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_meta`
--
ALTER TABLE `product_meta`
  ADD CONSTRAINT `product_meta_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_user`
--
ALTER TABLE `product_user`
  ADD CONSTRAINT `product_user_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `public_mail_files`
--
ALTER TABLE `public_mail_files`
  ADD CONSTRAINT `public_mail_files_public_mail_id_foreign` FOREIGN KEY (`public_mail_id`) REFERENCES `public_mail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `ticket_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `ticket_priorities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_reference_id_foreign` FOREIGN KEY (`reference_id`) REFERENCES `ticket_admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket_admins`
--
ALTER TABLE `ticket_admins`
  ADD CONSTRAINT `ticket_admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket_files`
--
ALTER TABLE `ticket_files`
  ADD CONSTRAINT `ticket_files_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
