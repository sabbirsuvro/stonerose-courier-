-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 01:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suvroito_work`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/banner/1700989379-56_1687411727263-1920x550-1jpg.webp', '#', 1, '2023-10-01 04:16:43', '2023-11-26 09:03:01'),
(2, 1, 'uploads/banner/1700989460-248_1694592498524-adaptation-1920-x-550jpg.webp', '#', 1, '2023-10-01 04:16:58', '2023-11-26 09:04:21'),
(15, 1, 'uploads/banner/1707199210fashion-banner.jpg', '#', 1, '2024-02-06 05:59:20', '2024-02-06 06:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_categories`
--

INSERT INTO `banner_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider (1060x395)', 1, '2023-02-21 03:05:14', '2023-10-01 04:15:55'),
(5, 'Slider Bottom Ads (425X212px)', 0, '2023-11-19 04:36:08', '2025-03-06 20:27:13'),
(6, 'Footer Top Ads', 0, '2023-11-19 05:25:46', '2025-03-06 20:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'uploads/category/default.png',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Realme', 'realme', NULL, 1, '2023-11-27 07:19:47', '2023-11-27 07:19:47'),
(3, 'Samsung Galaxy', 'samsung-galaxy', NULL, 1, '2023-11-27 07:19:54', '2023-11-27 07:19:54'),
(4, 'Oppo', 'oppo', NULL, 1, '2023-11-27 07:20:19', '2023-11-27 07:20:19'),
(6, 'Infinix', 'infinix', NULL, 1, '2023-11-27 07:23:30', '2023-11-27 07:23:30'),
(7, 'Realme', 'realme', NULL, 1, '2023-11-27 07:23:40', '2023-11-27 07:23:40'),
(8, 'Nokia', 'nokia', NULL, 1, '2023-11-27 07:23:47', '2023-11-27 07:23:47'),
(9, 'Vivo', 'vivo', NULL, 1, '2023-11-27 07:23:54', '2023-11-27 07:23:54'),
(10, 'Itel', 'itel', NULL, 1, '2023-11-27 07:24:02', '2023-11-27 07:24:02'),
(11, 'Apple', 'apple', 'uploads/brand/1701152124-apple-logo.webp', 1, '2023-11-28 06:15:24', '2023-11-28 06:15:24'),
(12, 'Xiaomi Redmi', 'xiaomi-redmi', 'uploads/brand/1701172986-xiaomi-logo.webp', 1, '2023-11-28 12:03:06', '2023-11-28 12:03:06'),
(13, 'HONOR', 'honor', 'uploads/brand/1701498234-honor.webp', 1, '2023-12-02 06:23:55', '2023-12-02 06:23:55'),
(14, 'ONE PLUS', 'one-plus', 'uploads/brand/1701508131-oneplus-nord-n20-se-2.webp', 1, '2023-12-02 09:08:51', '2023-12-02 09:08:51'),
(15, 'I QOO', 'i-qoo', 'uploads/brand/1701943193-og_iqoo_logo.webp', 1, '2023-12-07 09:59:53', '2023-12-07 09:59:53'),
(16, 'OPPO', 'oppo', 'uploads/brand/1701945646-images.webp', 1, '2023-12-07 10:40:46', '2023-12-07 10:40:46'),
(17, 'VIVO', 'vivo', 'uploads/brand/1701946660-images-(1).webp', 1, '2023-12-07 10:57:40', '2023-12-07 10:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` text DEFAULT NULL,
  `image_two` text DEFAULT NULL,
  `image_three` text DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `slug`, `short_description`, `description`, `review`, `product_id`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(1, 'মধুময় বাদাম', 'mdhumy-badam', '\"Ramadan Special: Get Your Exclusive T-Shirt Now!\"&nbsp; Limited offer so your place your order now.', '<ul><li>Product Type: T-shirt</li><li>Print: 100% Quality</li><li>sublimation print</li><li>Color: 100% Guarantee</li><li>Product: Same as Design</li><li>Main Material: Chinigura Fabric</li><li>Gender: Men/Woman</li><li>Stylish and Comfortable</li><li>Size: M, L, XL, XXL</li><li>Size: M-Length 26,Chest 36</li><li>Size: L-Length 27,Chest 38</li><li>Size : XL-Length 28,Chest 40</li><li>Size : XXL-Length 29,Chest 42</li></ul>', '50+ Good Review', 35, 'uploads/campaign/1708414156-b11702393472.webp', NULL, NULL, '1', '2024-02-10 04:15:22', '2024-02-20 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_reviews`
--

CREATE TABLE `campaign_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_reviews`
--

INSERT INTO `campaign_reviews` (`id`, `image`, `campaign_id`, `created_at`, `updated_at`) VALUES
(3, 'uploads/campaign/1708589841-company-rating.png', 1, '2024-02-22 08:17:21', '2024-02-22 08:17:21'),
(4, 'uploads/campaign/1708589841-company-rating.png', 1, '2024-02-22 08:17:21', '2024-02-22 08:17:21'),
(5, 'uploads/campaign/1708589841-company-rating.png', 1, '2024-02-22 08:17:21', '2024-02-22 08:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'uploads/category/default.png',
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `front_view` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `meta_title`, `meta_description`, `front_view`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mens Shopping', 'mens-shopping', 'uploads/category/1706950015-1_alibaba-prince.webp', 'Mens Shopping', '<p>Mens Shopping<br></p>', 1, 1, '2024-02-03 08:46:57', '2024-02-03 08:56:25'),
(2, 0, 'Womens Fashion', 'womens-fashion', 'uploads/category/1706950297-2.webp', 'Womens Fashion', '<p>Womens Fashion<br></p>', 1, 1, '2024-02-03 08:51:38', '2024-02-03 08:51:38'),
(6, 0, 'Gadgets & Electronics', 'gadgets-&-electronics', 'uploads/category/1706950829-6.webp', 'Gadgets', '<p>Gadgets<br></p>', 1, 1, '2024-02-03 09:00:30', '2024-05-31 14:11:38'),
(7, 0, 'Home Decor', 'home-decor', 'uploads/category/1706950889-7.webp', 'Home Decor', '<p>Home Decor<br></p>', 1, 1, '2024-02-03 09:01:30', '2024-05-31 14:11:49'),
(9, 0, 'Watch', 'watch', 'uploads/category/1717142927-smartwatch-features-768x394.webp', 'smart watch', NULL, 1, 1, '2024-05-31 14:08:47', '2024-05-31 14:11:10'),
(11, 0, 'Women Clothing', 'women-clothing', 'uploads/category/1719301000-screenshot_12.webp', 'Buy Women\'s Clothing (Trendy & Diverse)', NULL, 1, 1, '2024-06-25 07:36:40', '2024-06-25 07:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(255) NOT NULL DEFAULT 'text',
  `slug` varchar(255) NOT NULL DEFAULT 'text',
  `subcategory_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `color`, `status`, `created_at`, `updated_at`) VALUES
(32, 'Aqua', '#00FFFF', '1', '2023-11-03 06:04:29', '2023-11-03 09:23:46'),
(35, 'Black', '#000000', '1', '2023-11-03 06:09:13', '2023-11-03 06:09:22'),
(36, 'Bright Blue', '#0096FF', '1', '2023-11-03 06:09:30', '2023-11-03 06:09:38'),
(39, 'Coral', '#FF7F50', '1', '2023-11-03 06:10:23', '2023-11-03 06:10:31'),
(40, 'Gray', '#999999', '1', '2023-11-03 06:10:40', '2023-11-03 06:10:48'),
(41, 'Green', '#008000', '1', '2023-11-03 06:10:57', '2023-11-03 06:11:05'),
(42, 'Hot Pink', '#FF69B4', '1', '2023-11-03 06:11:24', '2023-11-03 06:11:29'),
(44, 'Pink', '#FFC0CB', '1', '2023-11-03 06:12:03', '2023-11-03 08:50:43'),
(48, 'Magenta', '#FF00FF', '1', '2023-11-03 06:13:28', '2023-11-03 06:13:39'),
(49, 'Maroon', '#990000', '1', '2023-11-03 06:13:51', '2023-11-03 06:14:00'),
(50, 'Grass Green', '#7CFC00', '1', '2023-11-03 06:14:14', '2023-11-03 06:59:07'),
(51, 'Navy', '#000080', '1', '2023-11-03 06:14:30', '2023-11-03 06:14:41'),
(52, 'Blue', '#0000FF', '1', '2023-11-03 06:15:01', '2023-11-03 09:53:12'),
(53, 'Olive', '#808000', '1', '2023-11-03 06:15:26', '2023-11-03 06:15:37'),
(54, 'Orange', '#FFA500', '1', '2023-11-03 06:15:46', '2023-11-03 06:15:58'),
(55, 'Yellow Orange', '#FFAA33', '1', '2023-11-03 06:16:17', '2023-11-03 07:03:16'),
(56, 'Orchid', '#DA70D6', '1', '2023-11-03 06:16:35', '2023-11-03 06:16:42'),
(58, 'Purple Heart', '#8b1ec4', '1', '2023-11-03 06:17:09', '2023-11-03 06:17:20'),
(59, 'Red', '#FF0000', '1', '2023-11-03 06:17:30', '2023-11-03 06:17:42'),
(60, 'Canary Yellow', '#FFFF8F', '1', '2023-11-03 06:17:51', '2023-11-03 08:24:41'),
(61, 'Salmon', '#FA8072', '1', '2023-11-03 06:18:13', '2023-11-03 06:18:24'),
(62, 'White', '#ffffff', '1', '2023-11-03 06:18:44', '2023-11-03 06:18:52'),
(63, 'Gold', '#FFD700', '1', '2023-11-03 06:19:02', '2023-11-03 07:08:05'),
(64, 'Crimson', '#DC143C', '1', '2023-11-03 06:37:11', '2023-11-03 09:19:11'),
(65, 'Silver', '#C0C0C0', '1', '2023-11-03 06:40:45', '2023-11-03 09:11:55'),
(67, 'Light Orange', '#FFD580', '1', '2023-11-03 07:13:52', '2023-11-03 07:14:03'),
(68, 'Navajo White', '#FFDEAD', '1', '2023-11-03 07:15:18', '2023-11-03 08:16:20'),
(69, 'Pumpkin Orange', '#FF7518', '1', '2023-11-03 07:17:29', '2023-11-03 07:17:38'),
(70, 'Chocolate', '#D2691E', '1', '2023-11-03 08:01:35', '2023-11-03 08:34:09'),
(73, 'Biscuit', '#FAD7A0', '1', '2023-11-03 09:09:43', '2023-11-03 09:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `hotmail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `maplink` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `hotline`, `hotmail`, `phone`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(1, '01751155302', 'sabbirsuvro9@gmail.com', '01751155302', 'sabbirsuvro9@gmail.com', 'Ishwardi', '#', 1, '2023-01-22 10:35:29', '2024-09-11 22:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `courierapis`
--

CREATE TABLE `courierapis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `secret_key` varchar(155) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courierapis`
--

INSERT INTO `courierapis` (`id`, `type`, `api_key`, `secret_key`, `url`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'steadfast', 'hjga81rztcqsf4mxjusesgdpw2pno6gu', 'b0emzppcr7uje8gxbzx1us1x', 'https://portal.steadfast.com.bd/api/v1/create_order', 'asdfdsfdsafdsf', '0', '2024-02-06 11:29:46', '2025-03-06 20:28:15'),
(2, 'pathao', '', '', 'https://api-hermes.pathao.com/aladdin', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjYxNzVkOWQyODAwNjk2YzU4Y2E1MmZkMGQ5Y2RiZWRkYTBhN2I5YjU0YTIwNTQxNzVhZTVlZjYwNzg2ZTU1MzU1NzYxM2JhZGZhNjcwMzdmIn0.eyJhdWQiOiI0MTkyIiwianRpIjoiNjE3NWQ5ZDI4MDA2OTZjNThjYTUyZmQwZDljZGJlZGRhMGE3YjliNTRhMjA1NDE3NWFlNWVmNjA3ODZlNTUzNTU3NjEzYmFkZmE2NzAzN2YiLCJpYXQiOjE3MDM0MzY4NDQsIm5iZiI6MTcwMzQzNjg0NCwiZXhwIjoxNzExMjEyODQzLCJzdWIiOiIxNzM5MTIiLCJzY29wZXMiOltdfQ.VARDX-r01cIf0uPE_CFItJ44BfyB8-tD0rmXAt9r-DT545rIDKW97VsMWd2jfghQjbnLY8C-nL5yMOCz759IGT-2ApSOCtND1b1Dp_AahtGVDrqKnYn_ZZrWWfdHQ-OYsxGVpH3Cat3kgVafIDcpJJdTTYmtmESrr3dulGCBS4WuyGpNnBnz5TjGk6d3UD83-RG9Ud37x5hSZBJwXM85xrX3AotCo9MhQti7hmsve8Mf4Z2qJSjJBCDPTrjoKDYNsSWqgVtKCYLv3H2mnXu5Ecsp0bxRdTYLzzVZaqF-B8sYYTOeseASgKuE5XQl1NOOCXBr9gBdEC1FD--lpElgG_FeQwvelhpeQ2yyze806ipkY8wNNqEvm9pC9uJ0n7ZmbSezJUYghC7vfi1iEmDOcB9JQxX9WOFi1VKSSOG-u__SQcYRmtAJ8LrTwL8zDMruL4uYFNGe17F-PuRH8ncp_FZK6Q_xuJY7CcDPwCw3E0_SMnmMU7ND25hoUpNly41j9y2G9UaGovfwD-QosPozAqACdRdyqP6cn3icNPY2kp7sSdKLsUIUOZox5ugfjbYC9wC6fzdYED0U85QDA4nPj0NGDVutTcFdED-Yzmmd-VNJVNI9cALfVDfKrpHlWpQMSeeZ7dc16NA0SrayF5DgQbpYg6CbGskmWTCsgmuWFvw', '0', '2024-02-06 11:29:46', '2025-03-06 20:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `create_pages`
--

CREATE TABLE `create_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_pages`
--

INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Order procedure', 'order-procedure', 'Order procedure', 'Just let us know We will Reach you', 1, '2023-10-04 07:02:30', '2023-11-26 18:58:27'),
(3, 'Delivery Rules', 'delivery-rules', 'Delivery Rules', '<p><br></p>', 1, '2023-10-04 07:03:00', '2024-01-15 17:41:53'),
(5, 'Return Policy', 'return-policy', 'Return Policy', 'Np Return Policy', 1, '2023-10-04 07:03:42', '2023-11-26 19:00:02'),
(6, 'Terms & Conditions', 'terms-&-conditions', 'Terms & Conditions', '<p>ORDER CONFIRMED AND PAID</p>', 1, '2023-10-04 07:04:05', '2023-11-26 18:59:36'),
(7, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', 'GO MOBILE BD', 1, '2023-10-04 07:04:19', '2024-01-15 17:42:25'),
(8, 'sabbir ahmed', 'sabbir-ahmed', 'sabbbir', '<p>hello</p>', 1, '2024-09-16 04:17:02', '2024-09-16 04:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `forgot` varchar(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'uploads/default/user.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Application', 'Mobile Application', '01738154732', NULL, NULL, NULL, NULL, 1, '4507', 'uploads/default/user.png', '$2y$10$O/YX84euUCyyFSFKyLPwkOga5pZXdPsvCsOqt7eQpAPEMeL.Rj8ti', NULL, 'active', '2023-11-26 13:35:21', '2024-02-06 05:25:23'),
(18, 'MD HABIBUL BASAR', 'MD HABIBUL BASAR', '01738154731', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$5TykOXa89b0ex.l08afOvO6zzI0Mvo1PwHqY9/NlKd3I12eopVFPC', NULL, 'active', '2024-05-27 11:57:33', '2024-05-27 11:57:33'),
(19, 'MD HABIBUL BASAR', 'MD HABIBUL BASAR', '01738154732', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$ECkkJpoBBBw2KcZO7PK0jeLpOzcSn4hsD0qh4xxMhyI62j6SsDO/.', NULL, 'active', '2024-05-27 16:43:04', '2024-05-27 16:43:04'),
(20, 'Rashed Islam', 'Rashed Islam', '01763095059', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$tSNW0knSN7vc2HCx96U0AeZA3xZrtBYNbrBq135gW2XEwU1b7rfRC', NULL, 'active', '2024-05-29 19:18:14', '2024-05-29 19:18:14'),
(21, 'Rashed Islam', 'rashed-islam-21', '01763095058', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$cnKpmojL7JX3uAqRxJs5XeA1jmbjoEA8iVFhEhI3/2pYfMltzypWu', NULL, 'active', '2024-05-29 19:20:58', '2024-05-29 19:20:58'),
(22, 'Md Ajijul Islam', 'md-ajijul-islam-22', '01988634680', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$Pq7rnXsH1o7dP6sne98PS.iuHukei5O96LOkoLAe6D6qDUOcbyyhC', NULL, 'active', '2024-05-29 21:20:24', '2024-05-29 21:20:24'),
(23, 'Jjjhg', 'Jjjhg', '09766876578', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$vQRD/Zo/x8UekfzC74t0nuhavZLk61KXMhd89sfIDfKn9Ai4.QJ0m', NULL, 'active', '2024-05-29 22:13:19', '2024-05-29 22:13:19'),
(24, 'Arefin', 'Arefin', '01733055211', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$fgIFPVqdhzUYMbAFluYp6O4aqnnkm/6YXwXAf7uT9U4/dPVxYql6G', NULL, 'active', '2024-05-31 01:06:09', '2024-05-31 01:06:09'),
(25, 'hb medul', 'hb-medul-25', '01774364116', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$LJhfzNE6539BCC0rB/i6MOuOkR8fTRG9mVVmg0FUmOfmR0xiBhrLS', NULL, 'active', '2024-05-31 14:59:09', '2024-05-31 14:59:09'),
(26, 'MD HABIBUL BASAR', 'MD HABIBUL BASAR', '01774364115', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$5RV6ptm4nDjDH2j2NriCwu6qvE1sJ.C5DJWJUAiY/FKnI/y1Ljs4y', NULL, 'active', '2024-05-31 15:19:45', '2024-05-31 15:19:45'),
(27, '345', '345', '01903845533', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$AyTPno3LSmx9ChzDf98YHOASyS4ucMgGTiE7ydv92nQqonNWD4FOy', NULL, 'active', '2024-06-03 12:05:07', '2024-06-03 12:05:07'),
(28, '24323', '24323', '01903823423', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$qHBMJZbIdZW5JynLxH./jOF19MA9cFOK0UdbGgWJ9DD.lrv5UAhni', NULL, 'active', '2024-06-03 12:05:42', '2024-06-03 12:05:42'),
(29, 'Shihab Sarker', 'shihab-sarker-29', '01927101320', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$s77j/1kbCsMRcp8KSBTMgumInFMEpYcK4VDeejN0lBdF2aA5DH0Xi', NULL, 'active', '2024-06-04 23:41:01', '2024-06-04 23:41:01'),
(30, 'hb medul', 'hb-medul-30', '01738154733', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$tvGJc2nBzR0Nmhslrnu2iusWnt5kzTJznKZTeC0JT1aJs18i73W36', NULL, 'active', '2024-06-05 02:11:58', '2024-06-05 02:11:58'),
(31, 'Raju Ahammed', 'raju-ahammed-31', '01945158892', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$vpOkWwtwpCEDdQelxT6w3OQJTNLn8WXwWTG5QX36V3dHS2/BIrHD.', NULL, 'active', '2024-06-23 15:33:46', '2024-06-23 15:33:46'),
(32, 'Md Masudur Rahman', 'Md Masudur Rahman', '01648114141', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$r1NEoMs1OaHqXKlANsGi3uxCJaBJ86PiWduZZV1YS.mZyHeIhbDDS', NULL, 'active', '2024-06-25 08:44:24', '2024-06-25 08:44:24'),
(33, 'Md Masudur Rahman', 'Md Masudur Rahman', '01712554769', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$nyGFJOpTQUN6YKpH1TutY.H8sADNhyuinSZCWPelInBkUAjXzYK9a', NULL, 'active', '2024-06-25 08:46:04', '2024-06-25 08:46:04'),
(34, 'hth', 'hth', '01753048343', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$sz1dsJ1T5Nsn/tzWaDU5RuITf0QNlfOe.WPeM30EHlh/slZZEIY1u', NULL, 'active', '2024-07-04 00:20:27', '2024-07-04 00:20:27'),
(35, 'demo', 'demo-35', '01751155302', NULL, NULL, NULL, NULL, 1, '5065', 'uploads/default/user.png', '$2y$10$NOUo6/ivmNkxULPm4WupIuQ6IR11YzniZPVEtyeMoVqqzNdBPdlRK', NULL, 'active', '2024-09-11 23:31:47', '2024-09-12 23:35:24'),
(36, 'Test', 'Test', '01875930000', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$.8wokKHDZHSSQOraE/SXreqRbfzswz/Y8nnazO8xg/rmBqcRnPucG', NULL, 'active', '2024-09-16 19:01:35', '2024-09-16 19:01:35'),
(37, 'Md Tanvir Khan', 'Md Tanvir Khan', '01828560797', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$DVB9flXRp/1h05aTVk7dw.j6Z/Skvk4PVX9an1GG5qC7QQufY/qnW', NULL, 'active', '2024-09-16 20:05:53', '2024-09-16 20:05:53'),
(38, 'sabbir', 'sabbir', '01862791298', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$p/83MGEY3IFqvZMyWL2M2Orwe9A9y5ft3mwDQk5LWXpxVAHdQ8t3a', NULL, 'active', '2024-09-16 22:55:02', '2024-09-16 22:55:02'),
(39, 'zsdf', 'zsdf', '00000000000', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$hSxwvsrvp2vzF.AddF4OrOOTmO7qX/avC5JfpFI3CbBGI2Dh8V5G6', NULL, 'active', '2025-01-28 10:52:11', '2025-01-28 10:52:11'),
(40, 'demo', 'demo-40', '01751155301', NULL, NULL, NULL, NULL, 1, NULL, 'uploads/default/user.png', '$2y$10$8Ckrs/NuhE2T93tjtuMD7.hqqlBAq6p7X7ICAsC41pTIEwEDycmWO', NULL, 'active', '2025-03-12 18:31:51', '2025-03-12 18:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `shippingfee` varchar(255) NOT NULL,
  `partialpayment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1, 112, 'Pilkhana', 'Dhaka', '80', '200', '2021-10-23 19:02:41', '2022-12-10 04:25:24'),
(2, 1684, 'Katasur', 'Dhaka', '80', '200', '2021-10-24 19:02:41', '2022-12-10 04:25:24'),
(3, 6, 'Shyamoli', 'Dhaka', '80', '200', '2021-10-25 19:02:40', '2022-12-10 04:25:24'),
(4, 1685, 'Dhanmondi Staff Quarter', 'Dhaka', '80', '200', '2021-10-26 19:02:40', '2022-12-10 04:25:24'),
(5, 418, 'Dhaka Uddyan', 'Dhaka', '80', '200', '2021-10-27 19:02:40', '2022-12-10 04:25:24'),
(6, 7, 'Adabor', 'Dhaka', '80', '200', '2021-10-28 19:02:40', '2022-12-10 04:25:24'),
(7, 114, 'New Market', 'Dhaka', '80', '200', '2021-10-29 19:02:40', '2022-12-10 04:25:24'),
(8, 426, 'Shekhertek', 'Dhaka', '80', '200', '2021-10-30 19:02:40', '2022-12-10 04:25:24'),
(9, 155, 'Old Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(10, 1660, 'Dhanmondi - Rd 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(11, 326, 'Science Lab', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(12, 1661, 'Dhanmondi - Rd 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(13, 11, 'Lalmatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(14, 327, 'Sobhanbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(15, 1690, 'Arshinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(16, 145, 'Dhaka University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(17, 1691, 'Washpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(18, 1692, 'Garden City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(19, 1693, 'Boddhovumi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(20, 148, 'Kazi Nazrul Islam Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(21, 1187, 'Kaderabad Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(22, 149, 'Kawran Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(23, 1662, 'Dhanmondi - Rd 4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(24, 115, 'Azimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(25, 162, 'Shahbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(26, 306, 'Monipuripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(27, 309, 'Bosila', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(28, 1663, 'Dhanmondi - Rd 4A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(29, 19, 'Sher-E-Bangla Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(30, 116, 'Nilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(31, 163, 'Katabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(32, 1664, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(33, 164, 'Hatirpool', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(34, 1210, 'Eastern Housing (Adabor)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(35, 1665, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(36, 1211, 'Teskunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(37, 1212, 'DHAKA TENARI MORE', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(38, 1666, 'Dhanmondi - Rd 3A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(39, 1213, 'Shahidnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(40, 95, 'Bijoy Shoroni', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(41, 1667, 'Dhanmondi - Rd 6A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(42, 1214, 'Jhigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(43, 185, 'Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(44, 96, 'Farmgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(45, 1668, 'Dhanmondi - Rd 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(46, 1215, 'Polashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(47, 186, 'Kathalbagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2023-01-07 01:52:02'),
(48, 97, 'Indira Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(49, 1669, 'Dhanmondi - Rd 8A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(50, 1216, 'Satmoshjid Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(51, 1670, 'Dhanmondi - Rd 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(52, 1217, 'Shukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(53, 188, 'Central Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(54, 99, 'Tejkunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(55, 1671, 'Dhanmondi - Rd 9A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(56, 1218, 'BNP Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(57, 100, 'Razabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(58, 1672, 'Dhanmondi - Rd 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(59, 1673, 'Dhanmondi - Rd 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(60, 1139, 'Dhaka uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(61, 101, 'Sukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(62, 1674, 'Dhanmondi - Rd 12A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(63, 1140, 'Nobodoy', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(64, 102, 'Panthopath', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(65, 103, 'Kalabagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(66, 1675, 'Dhanmondi - Rd 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(67, 1141, 'Chad Uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(68, 104, 'Green Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(69, 1676, 'Dhanmondi - Rd 15 A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(70, 1142, 'Mohammadia Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(71, 105, 'Manik Mia Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(72, 1677, 'Dhanmondi - Rd 27', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(73, 1143, 'Ring Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(74, 106, 'Asad Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(75, 1678, 'Dhanmondi - Rd 28', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(76, 1144, 'Tajmahal Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(77, 107, 'West Dhanmondi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(78, 1679, 'Dhanmondi - Rd 29', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(79, 1145, 'Nurjahan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(80, 133, 'Dhakeshwari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(81, 108, 'Shankar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(82, 1146, 'Rajia Sultana Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(83, 1, 'Mohammadpur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(84, 273, 'Zigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(85, 109, 'Rayer Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(86, 1681, 'Zafrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(87, 183, 'Paribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(88, 2, 'Dhanmondi - Rd 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(89, 110, 'Tallabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(90, 1682, 'Sadek Khan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(91, 111, 'Hazaribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(92, 1683, 'Sher e Bangla Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(93, 67, 'Nikunja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(94, 1230, 'Mahanogor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(95, 1231, 'Nimtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(96, 1232, 'Nurerchala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(97, 1571, 'Jahangir Gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(98, 82, 'South Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(99, 325, 'Joar Shahara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(100, 1572, 'Nijhum gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(101, 83, 'Merul Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(102, 1573, 'BAF Bashar (Dhaka cantonment)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(103, 1199, 'Apollo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(104, 84, 'Niketon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(105, 72, 'Bashundhara R/A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(106, 1574, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(107, 1200, 'Nurer Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(108, 85, 'Banani', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(109, 86, 'Banani DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(110, 73, 'Vatara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(111, 1575, 'MES colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(112, 1201, 'Bawaila Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(113, 87, 'Mohakhali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(114, 74, 'Nadda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(115, 1202, 'Satarkul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(116, 1185, 'Kunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(117, 88, 'Mohakhali DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(118, 1233, 'Pastola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(119, 14, 'Gudaraghat (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(120, 75, 'Baridhara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(121, 1206, 'Khilbar Tek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(122, 1186, 'Babli Masjid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(123, 1234, 'Poschim Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(124, 76, 'Baridhara DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(125, 1235, 'Purbo Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(126, 77, 'Notun Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(127, 91, 'Aziz Palli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(128, 1236, 'Sat-tola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(129, 78, 'Adarsha Nagar (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(130, 1317, 'Namapara-Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(131, 92, 'Bashtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(132, 1237, 'Shaheenbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(133, 79, 'Shahjadpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(134, 93, 'South Baridhara DIT Project', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(135, 1238, 'Subastu', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(136, 21, 'Cantonment Post Office', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(137, 80, 'Uttor Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(138, 94, 'Aftabnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(139, 1239, 'ICDDRB', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(140, 81, 'Middle Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(141, 39, 'Namapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(142, 1240, 'Satrasta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(143, 1348, 'Niketon Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(144, 323, 'Nakhalpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(145, 1268, 'Rosulbagh(Mohakhali)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(146, 1241, 'Tekpara Adorsonagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(147, 1242, 'Uttar Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(148, 1323, 'Aftab Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(149, 98, 'Tejgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(150, 1243, 'Wireless', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(151, 1244, 'Solmaid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(152, 27, 'M.E.S', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(153, 44, 'Kurmitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(154, 1245, '300 Feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(155, 45, 'Shewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(156, 1219, 'Kalachandpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(157, 174, 'Khilbari Tek (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(158, 1220, 'Jogonnathpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(159, 1221, 'Kuratuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(160, 1329, 'TV gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(161, 1222, 'Alatunnessa School Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(162, 1224, 'Bou Bazar - Mohakhali, Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(163, 1733, 'Nikunja 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(164, 51, 'Kuril', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(165, 1225, 'Chairman Goli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(166, 1226, 'Confidence Tower, Jhilpar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(167, 1227, 'Fuji Trade Center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(168, 3, 'Gulshan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(169, 1228, 'Khil Barirtek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(170, 1229, 'Korail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(171, 66, 'Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(172, 449, 'Mirpur Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(173, 1332, 'Gudaraghat-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(174, 277, 'Kalshi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(175, 1333, 'Namapara-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(176, 1334, 'Oxygen', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(177, 1600, 'Mirpur 60 feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(178, 8, 'Darussalam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(179, 9, 'Gabtoli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(180, 1335, 'Technical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(181, 1481, 'Eastern Housing (Pallabi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(182, 10, 'Pallabi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(183, 1336, 'Mirpur 13 /14 / 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(184, 1337, 'Benaroshi Polli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(185, 12, 'Mirpur DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(186, 329, 'ECB Chattar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(187, 1338, 'Beribadh-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(188, 13, 'Kochukhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(189, 1339, 'Buddhijibi Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(190, 1340, 'Purobi Cinema Hall', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(191, 89, 'South Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(192, 17, 'Agargaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(193, 1341, 'Mondir-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(194, 1694, 'Mirpur - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(195, 90, 'Shah Ali Bag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(196, 18, 'Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(197, 1342, 'Palasnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(198, 1343, 'Purobi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(199, 20, 'Ibrahimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(200, 1344, 'Rupnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(201, 1345, 'Senpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(202, 315, 'Mirpur 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(203, 1131, 'Birulia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(204, 1346, 'BRTA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(205, 22, 'Mirpur Cantonment', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(206, 37, 'Dewanpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(207, 1347, 'Zoo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(208, 23, 'Kafrul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(209, 40, 'Mastertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(210, 1695, 'Mirpur - 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(211, 24, 'Vashantek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(212, 41, 'Balughat', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(213, 1696, 'Mirpur - 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(214, 25, 'Manikdi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(215, 42, 'Barontek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(216, 1697, 'Mirpur - 11.5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(217, 26, 'Matikata', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(218, 43, 'Goltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(219, 1698, 'Mirpur - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(220, 28, 'Rupnagar Residential Area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(221, 1699, 'Mirpur - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(222, 1165, 'Kallanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(223, 29, 'Duaripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(224, 1700, 'Mirpur - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(225, 1166, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:43'),
(226, 30, 'Rainkhola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(227, 1701, 'Mirpur - 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(228, 1167, 'Lalkuthi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(229, 31, 'Mirpur Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(230, 1168, 'Mirpur 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(231, 32, 'Mazar Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(232, 1169, 'Tolarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(233, 33, 'Shagufta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(234, 1594, 'Arambag (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(235, 1170, 'Ahmed Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(236, 1331, 'Mirpur 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(237, 1171, 'Paikpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(238, 1172, 'Pirerbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(239, 35, 'Baigertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(240, 1173, 'Taltola (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(241, 36, 'Madina nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(242, 1174, 'MES Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(243, 1175, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(244, 275, 'Kazipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(245, 1176, 'Ajiz Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(246, 276, 'Shewrapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(247, 5, 'Kallyanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(248, 139, 'Fakirapul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(249, 152, 'Shantibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(250, 140, 'Kakrail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(251, 153, 'Baily Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(252, 154, 'Minto Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(253, 69, 'Hajipara (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(254, 141, 'Naya Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(255, 142, 'Bijoynagar (Paltan)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(256, 156, 'Eskaton Garden Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(257, 143, 'Press Club', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(258, 144, 'High Court', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(259, 157, 'Eskaton', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(260, 158, 'Moghbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(261, 288, 'Purana Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(262, 159, 'Mouchak', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(263, 334, 'Arambag (Motijheel)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(264, 160, 'Malibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(265, 161, 'Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(266, 1207, 'Buddho Mondir', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(267, 1208, 'Sipahibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(268, 1636, 'Banasree Block - A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(269, 1209, 'TT Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(270, 1637, 'Banasree Block - B', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(271, 165, 'Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(272, 1638, 'Banasree Block - C', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(273, 1132, 'Shahjahanpur (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(274, 166, 'Khilgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(275, 1639, 'Banasree Block - D', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(276, 1640, 'Banasree Block - E', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(277, 319, 'Siddweswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(278, 167, 'Middle Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(279, 1641, 'Banasree Block - F', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(280, 168, 'Goran', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(281, 1642, 'Banasree Block - G', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(282, 169, 'Madartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(283, 396, 'Nandipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(284, 1643, 'Banasree Block - H', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(285, 187, 'Malibagh Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(286, 170, 'Manik Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(287, 171, 'Shahjahanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(288, 1644, 'Banasree Block - I', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(289, 1324, 'Gulbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(290, 1137, 'Haterrjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(291, 125, 'Tikatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(292, 126, 'Motijheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(293, 172, 'Banasree (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(294, 403, 'Gopibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(295, 1645, 'Banasree Block - J', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(296, 189, 'Sabujbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(297, 1325, 'Meradiya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(298, 173, 'Meradia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(299, 1646, 'Banasree Block - K', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(300, 190, 'Shiddheswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(301, 1326, 'Mirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(302, 1647, 'Banasree Block - L', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(303, 1327, 'Modhubagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(304, 1328, 'Rampura TV center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(305, 1648, 'Banasree Block - M', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(306, 266, 'Shegunbagicha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(307, 177, 'Mughdapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(308, 1649, 'Banasree Block - N', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(309, 267, 'Rajarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(310, 1330, 'Ulan road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(311, 1223, 'Purbo Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(312, 1251, 'Chamelibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(313, 181, 'Hatirjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(314, 134, 'Kamalapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(315, 182, 'Banglamotor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(316, 1128, 'Manda(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(317, 1596, 'Nazimuddin Road (Malibag)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(318, 150, 'Ramna', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(319, 137, 'Dainik Bangla Mor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(320, 151, 'Shantinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(321, 1657, 'Uttara Sector - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(322, 324, 'Dokshingaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(323, 1686, 'Uttara Sector - 16', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(324, 1152, 'Uttara Sector 5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(325, 1687, 'Uttara Sector - 17', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(326, 1153, 'Uttara Sector 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(327, 1688, 'Uttara Sector - 18', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(328, 1154, 'Uttara Sector 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(329, 1155, 'Uttara Sector 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(330, 1156, 'Uttara Sector 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(331, 1157, 'Uttara Sector 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(332, 1158, 'Nalbhog', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(333, 1160, 'Phulbaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(334, 352, 'Kamarpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(335, 1161, 'Dhour', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(336, 1295, 'Ranavola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(337, 1162, 'Bhatuliya', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(338, 1318, 'Ahalia-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(339, 1320, 'Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(340, 1321, 'Habib Market-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(341, 1322, 'Pakuria-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(342, 1163, 'Bamnartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(343, 1164, 'Turag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(344, 1650, 'Uttara Sector - 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(345, 34, 'Bawnia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(346, 1654, 'Uttara Sector - 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(347, 1655, 'Uttara Sector - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(348, 1656, 'Uttara Sector - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(349, 1257, 'Kotwali (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(350, 113, 'Nawabgonj Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(351, 1258, 'Railway Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(352, 1259, 'Rajar Dewri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(353, 284, 'Sutrapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(354, 1261, 'Sat rowja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(355, 286, 'Kamrangichar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(356, 1262, 'Tantibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(357, 146, 'Dhaka Medical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(358, 147, 'Bongo Bondhu Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(359, 346, 'Armanitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(360, 349, 'Islambag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(361, 354, 'Mitford', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(362, 117, 'Lalbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(363, 355, 'Shakhari Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(364, 118, 'Chawkbazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(365, 356, 'Katherpol', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(366, 316, 'Bongshal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(367, 119, 'Naya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(368, 357, 'Bangla Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(369, 120, 'Tatibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(370, 358, 'Patuatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(371, 121, 'Luxmi Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(372, 123, 'Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(373, 124, 'Siddique Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(374, 397, 'Nazira Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(375, 127, 'Nawabpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(376, 128, 'Kaptan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(377, 263, 'Dolaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(378, 1248, 'Mahut Tuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(379, 129, 'Gulistan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(380, 406, 'Sadarghat (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(381, 1249, 'Alubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(382, 130, 'Bongo Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(383, 407, 'Kaltabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(384, 1250, 'Badam Toli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(385, 131, 'Chankarpul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(386, 269, 'Babubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(387, 270, 'Islampur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(388, 132, 'Palashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(389, 409, 'Gandaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(390, 1595, 'Nazimuddin Road (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(391, 271, 'Imamgonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(392, 1252, 'Dholaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(393, 272, 'Nayabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(394, 1253, 'Doyagonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(395, 1254, 'Farashgong', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(396, 135, 'Wari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(397, 136, 'Narinda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(398, 184, 'Bakshibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(399, 1395, 'Firozshah', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(400, 1396, 'GEC', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(401, 1397, 'Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(402, 1398, 'Halishshar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(403, 1458, 'Sadarghat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(404, 1366, 'Cadet College', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(405, 1367, 'Chandgaon', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(406, 1368, 'Chattogram Airport', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(407, 1369, 'Chattogram Bandar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(408, 1370, 'Chattogram Cantonment', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(409, 1371, 'Chattogram Chawkbazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(410, 1431, 'Mohard', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(411, 1372, 'Chattogram Customs Acca', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(412, 999, 'Sitakundu', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(413, 1373, 'Chattogram GPO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(414, 1433, 'Nasirabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(415, 1407, 'Jalalabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(416, 1374, 'Chattogram New Market', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(417, 1434, 'North Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(418, 1375, 'Chattogram Oxygen', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(419, 1435, 'North Kattali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(420, 1349, 'Kotwali Chattogram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(421, 1135, 'Bondor (Chittagong)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(422, 1376, 'Chattogram Politechnic Institute', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(423, 1436, 'North Katuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(424, 1437, 'Noyabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(425, 1350, 'Agrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(426, 1464, 'Sitakunda Barabkunda', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(427, 1136, 'Barahatia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(428, 1377, 'Chattogram Sailors Colony', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(429, 1438, 'Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(430, 1351, 'AK Khan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(431, 1465, 'Sitakunda Baroidhala', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(432, 1378, 'Colonel Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(433, 1379, 'Combined Military Hospital (CMH)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(434, 1439, 'Panchlaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(435, 1352, 'Al- Amin Baria Madra', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(436, 1466, 'Sitakunda Bawashbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(437, 1380, 'Court Buliding', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(438, 1440, 'Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(439, 1353, 'Al- Amin Baria Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(440, 1467, 'Sitakunda Bhatiari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(441, 1354, 'Amin Jute Mills', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(442, 1468, 'Sitakunda Fouzdarhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(443, 1122, 'Chittagong Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(444, 1382, 'Dakkshin Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(445, 1355, 'Anandabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(446, 1469, 'Sitakunda Jafrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(447, 1383, 'Double Mooring', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(448, 1443, 'Rampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(449, 1470, 'Sitakunda Kumira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(450, 1471, 'South Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(451, 1444, 'Rampura TSO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(452, 1358, 'Bayezid Bostami', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(453, 1473, 'Wazedia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(454, 1419, 'Kattuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(455, 1420, 'Khulshi', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(456, 1388, 'Export Processing', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(457, 1423, 'Middle Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(458, 1474, 'No area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(459, 448, 'CWH', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(460, 292, 'Shyampur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(461, 296, 'Dholaipar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(462, 313, 'Shonir Akhra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(463, 1246, 'Mirhazirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(464, 404, 'Shwamibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(465, 405, 'Sayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(466, 178, 'Golapbag (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(467, 408, 'Jurain', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(468, 179, 'Jatrabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(469, 411, 'RayerBag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(470, 412, 'Faridabad (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(471, 1255, 'Dholpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(472, 414, 'Donia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(473, 1597, 'Kodomtoli (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(474, 415, 'Postogola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(475, 915, 'Fenchuganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(476, 916, 'Gowainghat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(477, 917, 'Golapganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(478, 918, 'Jaintapur', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(479, 920, 'Kanaighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(480, 921, 'Amberkhana (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(481, 922, 'South Surma', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(482, 1497, 'Akhalia', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(483, 1498, 'Tilaghor', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(484, 1499, 'Shibganj(sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(485, 1494, 'Zindabazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(486, 1500, 'Uposhohor(Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(487, 1495, 'Pathantula', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(488, 1501, 'Kodomtoli', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(489, 1496, 'Subidbazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(490, 1502, 'Sheikhghat.', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(491, 1503, 'Majortila', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(492, 1504, 'Subhanighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(493, 911, 'Balaganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(494, 913, 'Biswanath', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(495, 914, 'Companyganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(496, 1284, 'Khartail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(497, 1542, 'Jinumarket', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(498, 1285, 'Majukhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(499, 1543, 'T & T(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(500, 1197, 'Ershadnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(501, 1286, 'Milgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(502, 1544, 'Shilmun', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(503, 1198, 'Sataish', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(504, 1287, 'National University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(505, 1545, 'Mudafa', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(506, 1288, 'Surtaranga', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(507, 1546, 'Khapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(508, 1289, 'Targach', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(509, 1547, 'Malakerbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(510, 1263, 'Khairtail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(511, 1290, 'Rail Station', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(512, 1548, 'Bypass Road (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(513, 1549, 'Kodda', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(514, 1264, 'Bonomala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(515, 1291, 'Boro Dewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(516, 1550, 'Duet Road', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(517, 1265, 'Morkun', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(518, 1551, 'Shibbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(519, 1552, 'Shimultoli', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(520, 647, 'Chowrasta (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(521, 1188, 'Kunia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(522, 1553, 'Jorpukur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(523, 1189, 'Gacha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(524, 1190, 'Boro Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(525, 1554, 'Salna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(526, 649, 'Kaliganj(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(527, 1191, 'Board Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(528, 1192, 'Kamarjuri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(529, 1266, 'Bhadam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(530, 1193, 'Dattapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(531, 1267, 'Boro Dewra Dakkhin Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(532, 1194, 'Auchpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(533, 1195, 'Cherag Ali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(534, 1269, 'Gopalpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(535, 1196, 'Tongi Bazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(536, 1270, 'College Gate (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(537, 1271, 'Boardbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(538, 1272, 'Gazipura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(539, 1273, 'Hossain Market (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(540, 1274, 'Signboard (Gazipur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(541, 1275, 'Joydebpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(542, 1276, 'Dhirasrom', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(543, 1277, 'Dattapara Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(544, 1536, 'Pubail', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(545, 1278, 'Badekomelosshor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(546, 1279, 'Borobari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(547, 1537, 'Mirerbazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(548, 1280, 'Choidana', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(549, 1538, 'Ulokhola', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(550, 1281, 'Deger Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(551, 1539, 'Modhumita', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(552, 1282, 'Gazcha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(553, 1540, 'Miraspara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(554, 63, 'Tongi', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(555, 1283, 'Hariken', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(556, 1541, 'Pagar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(557, 282, 'Ashulia', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:49'),
(558, 283, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:34'),
(559, 365, 'Dhamrai', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(560, 1127, 'Baipayl', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(561, 53, 'Savar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:10'),
(562, 61, 'Savar Cantonment', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:14:50'),
(563, 1178, 'Aga Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(564, 1179, 'Kathuria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(565, 1180, 'Goljarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(566, 1181, 'Nazirabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(567, 1260, 'Hasnabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(568, 1182, 'Kaliganj - Keraniganj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:35'),
(569, 1183, 'Nazarganj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(570, 1184, 'Zinzira', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(571, 305, 'Keranigonj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:28'),
(572, 1125, 'Kalatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(573, 1256, 'Kodomtoli(Keraniganj)', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:22'),
(574, 707, 'Bandar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(575, 708, 'Chashara (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(576, 1658, 'Signboard (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(577, 1659, 'Jalkuri (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(578, 710, 'Sonargaon', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(579, 1689, 'Chittagong Road (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(580, 1133, 'Shanarpar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(581, 1247, 'Bhuigarh-Narayangonj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(582, 1123, 'Siddhirganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(583, 1124, 'Fatullah', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(584, 1680, 'Shibu Market (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(585, 1000, 'Barura', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(586, 1001, 'Brahmanpara', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(587, 1002, 'Burichang', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(588, 1003, 'Chandina', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(589, 1005, 'Comilla Sadar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(590, 1007, 'Debiduar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(591, 1015, 'Comilla Sadar South', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(592, 782, 'Batiaghata', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(593, 783, 'Dacope', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(594, 784, 'Dighalia', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(595, 785, 'Dumuria', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(596, 786, 'Phultala', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(597, 789, 'Rupsa', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(598, 790, 'Khalispur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(599, 791, 'Sonadanga', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(600, 792, 'Khan jahan ali', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(601, 793, 'Doulatpur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(602, 1120, 'Khulna Sadar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(603, 794, 'Terokhada', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(604, 1528, 'Chorpara (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(605, 1529, 'Kachijhuli', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(606, 695, 'Dhubaura', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(607, 1530, 'College Road (Mymensigh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(608, 696, 'Fulbaria (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(609, 1531, 'Akua', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(610, 697, 'Fulpur', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(611, 1532, 'Agriculture University (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(612, 1533, 'Zilla School Mor (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(613, 699, 'Koltapara (Gouripur Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(614, 1534, 'Rohomotpur Bypass', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(615, 700, 'Haluaghat', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(616, 1535, 'Mashkanda', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(617, 701, 'Iswarganj', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(618, 702, 'Kacharighat (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(619, 703, 'Muktagacha', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(620, 704, 'Nandail', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(621, 932, 'Barisal Sadar', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(622, 935, 'Mehendiganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(623, 929, 'Babuganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(624, 930, 'Bakerganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(625, 931, 'Banaripara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(626, 658, 'Dewanganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(627, 659, 'Islampur(Jamalpur)', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(628, 660, 'Jamalpur Sadar', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(629, 661, 'Madarganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(630, 662, 'Melandah', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(631, 663, 'Sharishabari', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(632, 1603, 'Subidkhali', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(633, 1606, 'Bagabandar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(634, 1607, 'Kalaia', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(635, 1609, 'Birpasha', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(636, 949, 'Bauphal', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(637, 950, 'Dasmina', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(638, 951, 'Dumki', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(639, 952, 'Galachipa', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(640, 954, 'Mirjaganj', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(641, 955, 'Patuakhali Sadar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(642, 677, 'Kalkini', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(643, 678, 'Madaripur Sadar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(644, 679, 'Rajoir', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(645, 680, 'Shibchar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(646, 1716, 'Kacari (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(647, 1717, 'Super Market Mor (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(648, 1718, 'Munshir Hat (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(649, 1719, 'Mirkadim (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(650, 1720, 'Rikabibazar (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(651, 1721, 'Sipahipara (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(652, 1722, 'Muktarpur (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(653, 688, 'Gazaria', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(654, 690, 'Katakhali (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(655, 691, 'Serajdikhan', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(656, 693, 'Tangibari', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(657, 657, 'Bakshiganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(658, 738, 'Jhenaigati', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(659, 739, 'Nakla', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(660, 740, 'Nalitabari', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(661, 741, 'Sherpur Sadar', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(662, 742, 'Sribordi', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(663, 962, 'Zia Nagar (Indurkani)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(664, 956, 'Bhandaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(665, 957, 'Kaukhali (Perojpur)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(666, 958, 'Mothbaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(667, 959, 'Nesarabad (Shawrupkathi)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(668, 960, 'Nazirpur', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(669, 961, 'Pirojpur Sadar', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(670, 978, 'Chandpur Sadar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(671, 979, 'Faridganj', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(672, 980, 'Haimchar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(673, 983, 'Matlab (South)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(674, 984, 'Matlab (North)(Chengarchar)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(675, 638, 'Alfadanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(676, 639, 'Bhanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(677, 640, 'Boalmari', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(678, 641, 'Char Bhadrasan', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(679, 642, 'Faridpur Sadar', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(680, 643, 'Madhukhali', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(681, 644, 'Nagarkanda', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(682, 645, 'Sadarpur', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(683, 646, 'Saltha', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(684, 748, 'Kalihati', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(685, 749, 'Mirzapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(686, 751, 'Nagarpur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(687, 752, 'Shakhipur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(688, 753, 'Tangail Sadar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(689, 743, 'Bashail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(690, 744, 'Bhuapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(691, 745, 'Delduar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(692, 945, 'Jhalokathi Sadar', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(693, 946, 'Kathalia', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(694, 947, 'Nalchiti', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(695, 948, 'Rajapur (Jhalokathi)', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(696, 1711, 'Konokpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(697, 1712, 'Adompur Bazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(698, 1715, 'Kazir Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(699, 894, 'Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(700, 896, 'Moulvibazar Sadar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(701, 897, 'Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(702, 898, 'Sreemongal', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(703, 1702, 'Sarkar Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(704, 1703, 'Notun Bridge (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(705, 1622, 'Shamshernagar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(706, 1623, 'Sherpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(707, 1704, 'Tarapasha Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(708, 1705, 'Munshibazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(709, 1706, 'Munshibazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(710, 1707, 'Tengra Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(711, 1708, 'Mukam Bazar - Radar Unit (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(712, 1710, 'Patanushar - Shamshernagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(713, 1515, 'Chowdhury Bazar (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(714, 1516, 'Sultanmahmudpur', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(715, 889, 'Habiganj Sadar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(716, 1517, 'Gatiabazar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(717, 890, 'Lakhai', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(718, 1518, 'Mahmudabad', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(719, 1519, 'Duliakal', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(720, 892, 'Nabiganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(721, 1520, 'Mohonpur (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(722, 885, 'Ajmeriganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(723, 887, 'Baniachang', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(724, 1514, 'Rajnogor', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(725, 1107, 'Badarganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(726, 1108, 'Gangachara', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(727, 1109, 'Kaunia (Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(728, 1110, 'Mithapukur', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(729, 1111, 'Pirgacha', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(730, 1112, 'Pirganj(Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(731, 1113, 'Rangpur Sadar', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(732, 1114, 'Taraganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(733, 773, 'Keshabpur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(734, 774, 'Manirampur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(735, 775, 'Sharsha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(736, 769, 'Bagherpara', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(737, 770, 'Chowgacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(738, 1129, 'Benapole', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(739, 771, 'Jessore Sadar', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(740, 772, 'Jhikargacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(741, 1102, 'Atwari (Panchagarh)', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(742, 1103, 'Boda', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(743, 1104, 'Debiganj', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(744, 1105, 'Panchagarh Sadar', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(745, 1106, 'Tetulia', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(746, 1099, 'Kishoreganj ( Nilphamari)', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(747, 1100, 'Nilphamari Sadar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(748, 1096, 'Dimla', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(749, 1097, 'Domar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(750, 1098, 'Jaldhaka', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(751, 1021, 'Ramu', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(752, 1023, 'Ukhia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(753, 1576, 'Kalur Dokan', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(754, 1577, 'Alir Jahal Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(755, 966, 'Nakhoyngchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(756, 1578, 'Barmis Market', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(757, 1579, 'Bazar Ghata', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(758, 1580, 'Laldighir Par (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(759, 1581, 'Holiday Mor(Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(760, 1582, 'Laboni Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(761, 1583, 'Sughandha Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(762, 1584, 'Marin Drive Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(763, 1585, 'Sonar Tara', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(764, 1586, 'Jilonjha', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(765, 1587, 'Tarabaniyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(766, 1588, 'Romaliyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(767, 1589, 'Khurushkul', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(768, 1590, 'P M Khali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(769, 1591, 'Somity Para', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(770, 1017, 'Kolatoli (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(771, 938, 'Bhola Sadar', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(772, 939, 'Borhanuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(773, 941, 'Daulatkhan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(774, 944, 'Tajumuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(775, 924, 'Bamna', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(776, 925, 'Barguna Sadar', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(777, 926, 'Betagi', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(778, 927, 'Patharghata (Barguna)', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(779, 876, 'Belkuchi', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(780, 877, 'Chowhali', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(781, 878, 'Kamarkhanda', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(782, 879, 'Kazipur', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(783, 880, 'Raiganj', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(784, 881, 'Shahajadpur (Sirajganj)', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(785, 882, 'Sirajganj Sadar', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(786, 883, 'Tarash', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(787, 884, 'Ullapara', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(788, 857, 'Atgharia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(789, 858, 'Bera', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(790, 859, 'Bhangura', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(791, 860, 'Chatmohar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(792, 861, 'Faridpur ( Pabna )', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(793, 863, 'Pabna Sadar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(794, 864, 'Santhia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(795, 865, 'Sujanagar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(796, 1616, 'Banwarinagar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(797, 1617, 'Debottar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(798, 1618, 'Kashinathpur (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(799, 1619, 'Nakalia (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(800, 1621, 'Sagarkandi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(801, 855, 'Natore Sadar', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(802, 856, 'Singra', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(803, 851, 'Baghatipara', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(804, 852, 'Baraigram', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(805, 853, 'Gurudaspur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(806, 854, 'Lalpur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(807, 840, 'Atrai', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(808, 841, 'Badalgachi', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(809, 845, 'Naogaon Sadar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(810, 849, 'Raninagar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(811, 835, 'Akkelpur', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(812, 836, 'Joypurhat Sadar', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(813, 837, 'Kalai', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(814, 838, 'Khetlal', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(815, 839, 'Panchbibi', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(816, 811, 'Assasuni', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(817, 812, 'Debhata', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(818, 813, 'Kaliganj(Satkhira)', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(819, 814, 'Kolaroa', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(820, 815, 'Satkhira Sadar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(821, 816, 'Shyamnagar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(822, 817, 'Tala', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(823, 805, 'Gangni', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(824, 806, 'Meherpur Sadar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(825, 807, 'Mujibnagar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(826, 734, 'Gosairhat', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(827, 735, 'Zajira', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(828, 736, 'Naria', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(829, 737, 'Shariatpur Sadar', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(830, 732, 'Bhedarganj', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(831, 733, 'Damudiya', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(832, 727, 'Baliakandi', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(833, 728, 'Goalunda', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(834, 729, 'Pangsha', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(835, 730, 'Rajbari Sadar', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(836, 731, 'Kalukhali', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(837, 681, 'Daulatpur(Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(838, 682, 'Ghior', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(839, 683, 'Harirampur (Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(840, 684, 'Manikganj Sadar', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(841, 685, 'Saturia', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(842, 686, 'Shibalaya', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(843, 687, 'Singair', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(844, 652, 'Gopalganj Sadar', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(845, 653, 'Kasiani', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(846, 654, 'Kotalipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(847, 655, 'Maksudpur', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(848, 656, 'Tungipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(849, 1115, 'Baliadangi', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(850, 1134, 'Shibganj (Thakurgaon Sadar)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(851, 1116, 'Haripur', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(852, 1117, 'Pirganj(Thakurgaon)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(853, 1118, 'Ranishankail', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(854, 1119, 'Thakurgaon Sadar', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(855, 717, 'Atpara', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(856, 718, 'Barhatta', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(857, 719, 'Durgapur(Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(858, 720, 'Kalmakanda', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(859, 721, 'Kendua', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(860, 722, 'Khaliajuri', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(861, 723, 'Madan', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(862, 724, 'Mohanganj', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(863, 725, 'Netrokona Sadar', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(864, 726, 'Purbadhala (Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(865, 903, 'Dharmapasha', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(866, 712, 'Monohardi', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(867, 713, 'Velanogor (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(868, 714, 'Palash', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(869, 716, 'Shibpur', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(870, 1505, 'Madhabdi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(871, 1506, 'Babur Haat (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(872, 1507, 'Pachdona More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(873, 1508, 'Shaheprotab More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(874, 1509, 'West Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(875, 1510, 'East Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(876, 1511, 'Songita Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(877, 1512, 'Shatirpara', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(878, 1513, 'Hasnabad Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(879, 1024, 'Chagalnayya', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(880, 1025, 'Daganbhuiyan', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(881, 1026, 'Feni Sadar', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(882, 1027, 'Parshuram', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(883, 1028, 'Fulgazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(884, 1029, 'Sonagazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(885, 1072, 'Khanshama', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(886, 1074, 'Parbatipur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(887, 1483, 'College mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(888, 1484, 'Boromath (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(889, 1485, 'Pulhat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(890, 1486, 'Newtown (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(891, 1487, 'Lilir mor', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(892, 1488, 'Modern mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(893, 1063, 'Birganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(894, 1064, 'Birol', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(895, 1065, 'Bochaganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(896, 1066, 'Chirirbandar', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(897, 1067, 'Baluadanga (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(898, 1071, 'Kaharole', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(899, 1075, 'Fulchari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(900, 1076, 'Gaibandha Sadar', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(901, 1077, 'Gobindaganj ( Gaibandha )', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(902, 1078, 'Palashbari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(903, 1079, 'Sadullapur', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(904, 1080, 'Shaghatta', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(905, 1081, 'Sundarganj', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(906, 764, 'Alamdanga', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(907, 765, 'Chuadanga Sadar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(908, 766, 'Damurhuda', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(909, 767, 'Jibannagar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(910, 866, 'Bagha', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(911, 867, 'Bagmara (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(912, 868, 'Charghat', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(913, 869, 'Durgapur(Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(914, 870, 'Godagari', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(915, 871, 'Mohanpur (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(916, 872, 'Paba', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(917, 873, 'Putia', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(918, 874, 'Tanore', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(919, 875, 'Sadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(920, 1121, 'Rajshahi Shadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(921, 801, 'Magura Sadar', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(922, 802, 'Mohammadpur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(923, 803, 'Shalikha', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(924, 804, 'Sreepur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(925, 808, 'Kalia', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(926, 809, 'Lohagara(Narail)', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(927, 810, 'Narail Sadar', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(928, 1053, 'Barkal', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(929, 1054, 'Belaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(930, 1055, 'Jurachari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(931, 1056, 'Kaptai', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(932, 1057, 'Kawkhali (Rangamati)', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(933, 1058, 'Langadu', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(934, 1059, 'Naniarchar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(935, 1060, 'Rajasthali', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(936, 1061, 'Rangamati Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(937, 1416, 'Kaptai Kaptai Project', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(938, 1417, 'Kaptai Nuton Bazar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(939, 1418, 'Kaptai Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(940, 800, 'Mirpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(941, 795, 'Bheramara', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(942, 796, 'Daulatpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(943, 797, 'Khoksha', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(944, 798, 'Kumarkhali', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(945, 799, 'Kushtia Sadar', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(946, 830, 'Bholahat', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(947, 831, 'Gomastapur', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(948, 832, 'Nachole', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(949, 833, 'Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(950, 834, 'Shipganj ( Chapai )', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(951, 1126, 'Chapai Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(952, 776, 'Kotchandpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(953, 777, 'Harinakunda', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(954, 778, 'Jhenaidah Sadar', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(955, 779, 'Kaliganj(Jhenaidah)', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(956, 780, 'Moheshpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(957, 781, 'Shailkupa', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(958, 1045, 'Companiganj (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(959, 1046, 'Hatiya', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(960, 1047, 'Maijdee (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(961, 1048, 'Senbag', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(962, 1049, 'Sonaimuri', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(963, 1050, 'Subarnachar', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(964, 1051, 'Kabir Hat', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(965, 1043, 'Begumganj', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(966, 1044, 'Chatkhil', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(967, 1601, 'Alexandar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(968, 1038, 'Laksmipur Sadar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(969, 1039, 'Ramgati', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(970, 1040, 'Ramganj', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(971, 1041, 'Raipur (Lakshmipur)', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(972, 1042, 'Kamalnagar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(973, 1082, 'Bhurungamari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(974, 1083, 'Chilmary', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(975, 1084, 'Fulbari (Kurigram)', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(976, 1085, 'Kurigram Sadar', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(977, 1086, 'Nageswari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(978, 1087, 'Rajarhat', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(979, 1088, 'Rajibpur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(980, 1089, 'Rowmari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(981, 1090, 'Ulipur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(982, 676, 'Tarail', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(983, 668, 'Itna', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(984, 669, 'Karimganj', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(985, 670, 'Katiadi', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(986, 671, 'Kishoreganj Sadar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(987, 664, 'Austogram', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(988, 665, 'Bajitpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(989, 673, 'Mithamain', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(990, 667, 'Hosainpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(991, 674, 'Nikli', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(992, 675, 'Pakundia', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(993, 828, 'Sonatola', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(994, 829, 'Shajahanpur (Bogura)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(995, 818, 'Adamdighi (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(996, 819, 'Bogra Sadar', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(997, 820, 'Dhunot', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(998, 821, 'Dhubchanchia', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(999, 822, 'Gabtali (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1000, 823, 'Kahaloo', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1001, 824, 'Nandigram', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1002, 825, 'Sariakandi', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1003, 826, 'Sherpur (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1004, 827, 'Shibganj ( Bogra )', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1005, 768, 'Noapara (Jessore)', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1006, 1052, 'Baghaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1007, 1030, 'Dighinala', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1008, 1031, 'Khagrachari Sadar', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1009, 1032, 'Laksmichari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1010, 1033, 'Mohalchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1011, 1034, 'Manikchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1012, 1035, 'Matiranga', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1013, 1036, 'Panchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1014, 1037, 'Ramgor', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1015, 689, 'Lauhajang', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1016, 692, 'Sreenagar', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1017, 359, 'Dohar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1018, 446, 'Nawabgonj (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1019, 1629, 'Chandura (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1020, 1630, 'Singarbil (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1021, 1521, 'Kawtoly (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1022, 1631, 'Awliya Bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1023, 1522, 'T.A Road (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1024, 1632, 'Poirtola (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1025, 1523, 'Sarak bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1026, 1633, 'Ulchapara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1027, 1524, 'Moddopara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1028, 1634, 'Bhadugor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1029, 1525, 'Birashar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1030, 1635, 'Kumarshil more (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1031, 1526, 'Medda (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1032, 1527, 'Gatura- Pirbari (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1033, 970, 'Akhaura', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1034, 973, 'Paikpara (Brahmanbaria Sadar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1035, 1626, 'Bijoynagor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1036, 1627, 'Shahbajpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1037, 1628, 'Sohilpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1038, 1101, 'Saidpur', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1039, 755, 'Bagerhat Sadar', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1040, 756, 'Chitalmari', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1041, 757, 'Fakirhat (Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1042, 758, 'Kachua(Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1043, 759, 'Mollarhat', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1044, 760, 'Mongla', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1045, 761, 'Morelganj', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1046, 762, 'Rampal', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1047, 763, 'Sarankhola', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1048, 1091, 'Aditmari', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1049, 1092, 'Hatibandha (Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1050, 1093, 'Kaliganj(Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1051, 1094, 'Lalmonirhat Sadar', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1052, 1095, 'Patgram', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1053, 1489, 'Old bustand (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1054, 1490, 'Kazirpoint (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1055, 1491, 'Hason Nagar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1056, 1492, 'Moddho bazar (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1057, 1493, 'wazkhali', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1058, 900, 'Biswambharpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1059, 902, 'Derai', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1060, 905, 'Jagannathpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1061, 906, 'Jamalganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1062, 907, 'Sulla', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1063, 908, 'Traffic Point (Sunamganj Sadar)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1064, 909, 'Taherpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1065, 910, 'South Sunamganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1066, 964, 'Bandarban Sadar', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1067, 967, 'Rawanchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1068, 968, 'Ruma', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1069, 1130, 'soho area', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1070, 969, 'Thanchi', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1071, 1598, 'SDA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1072, 1391, 'Fatikchhari Harualchhari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1073, 1451, 'Raozan Fatepur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1074, 1392, 'Fatikchhari Najirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1075, 990, 'Fatikchari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1076, 1452, 'Raozan Guzra Noapara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1077, 1393, 'Fatikchhari Nanupur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1078, 991, 'Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1079, 1453, 'Raozan jagannath Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1080, 1454, 'Raozan Kundeshwari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1081, 1394, 'Fatikchhari Narayanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1082, 1455, 'Raozan Mohamuni', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1083, 1456, 'Raozan Pouroshobha', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1084, 995, 'Rangunia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1085, 1457, 'Rauzan Gahira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1086, 996, 'Raojan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1087, 1399, 'Chattogram University', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1088, 1400, 'Hathazari Fatahabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1089, 1401, 'Hathazari Gorduara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1090, 1402, 'Hathazari Katirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1091, 1403, 'Hathazari Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1092, 1404, 'Hathazari Mirzapur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1093, 1463, 'Sayad Bari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1094, 1405, 'Hathazari Nuralibari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1095, 1432, 'Muradnagar - Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1096, 1406, 'Hathazari Yunus Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1097, 1381, 'Dakkhin Ghatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1098, 1414, 'Kadeer Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1099, 1415, 'Kaptai Chandraghona', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1100, 1472, 'Uttar Gatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1101, 1445, 'Rangunia Dhamair', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1102, 1446, 'Rangunia Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1103, 1447, 'Ranir Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1104, 1448, 'Raozan B.I.T Post Office', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1105, 1389, 'Fakirkill', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1106, 1449, 'Raozan Beenajuri', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1107, 1390, 'Fatikchhari Bhandar Sharif', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1108, 1450, 'Raozan Dewanpur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1109, 1424, 'Mirsharai Abutorab', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1110, 1425, 'Mirsharai Azampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1111, 1426, 'Mirsharai Bharawazhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1112, 1427, 'Mirsharai Darrogahat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1113, 993, 'Mirsarai', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1114, 1428, 'Mirsharai Joarganj', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1115, 1429, 'Mirsharai Korerhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1116, 1430, 'Mirsharai Mohazanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1117, 1364, 'Boalkhali Sakpura', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1118, 994, 'Patiya', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1119, 1365, 'Boalkhali Saroatoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1120, 1138, 'Karnaphuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1121, 1412, 'Jaldia Marine Academy', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1122, 1413, 'Jaldia Merine Accade', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1123, 1441, 'Patiya Budhpara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1124, 1442, 'Patiya Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1125, 1356, 'Anawara Battali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1126, 1357, 'Anawara Paroikora', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1127, 1359, 'Boalkhali Charandwip', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1128, 1360, 'Boalkhali Iqbal Park', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1129, 986, 'Anwara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1130, 1361, 'Boalkhali Kadurkhal', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1131, 1362, 'Boalkhali Kanungopara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1132, 1363, 'Boalkhali Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1133, 988, 'Boalkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1134, 1018, 'Kutubdia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1135, 963, 'Ali Kadam', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1136, 1019, 'Moheshkhali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1137, 1020, 'Pekua', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1138, 965, 'Lama', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1139, 1016, 'Chakoria', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1140, 919, 'Zakiganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1141, 893, 'Barlekha', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1142, 899, 'Juri', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1143, 912, 'Beanibazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1144, 972, 'Bancharampur (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1145, 974, 'Kashba (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1146, 975, 'Nabinagar (Nabinagar Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1147, 933, 'Gournadi (Barisal)', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1148, 934, 'Hijla', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1149, 936, 'Muladi', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1150, 937, 'Wazirpur', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1151, 928, 'Agailjhara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1152, 1073, 'Nawabganj (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1153, 1062, 'Birampur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1154, 1068, 'Phulbari (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1155, 1069, 'Ghoraghat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1156, 1070, 'Hakimpur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1157, 711, 'Belabo', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1158, 715, 'Raipura (Bhairab)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1159, 971, 'Ashuganj (Bhairab)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1160, 976, 'Nasirnagar (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1161, 977, 'Sarail (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1162, 672, 'Kuliarchar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1163, 666, 'Bhairab', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1164, 1482, 'Gouripur (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1165, 1006, 'Daudkandi', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1166, 1008, 'Homna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1167, 1010, 'Meghna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1168, 1013, 'Titas', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1169, 901, 'Chattak', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1170, 904, 'Dowarabazar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1171, 709, 'Rupganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1172, 175, 'Bawaliapara (Narayangaj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1173, 706, 'Araihazar', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1174, 1478, 'Vobanipur Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1175, 1570, 'Rajabari Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1176, 1479, 'Barmi Sreepur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1177, 1480, 'Fulbaria Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1178, 650, 'Kapasia', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1179, 1555, 'Porabari Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1180, 651, 'Sreepur(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1181, 1556, 'Dhaladia Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1182, 1557, 'Hotapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1183, 1558, 'Bager bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1184, 1559, 'Member Bari Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1185, 1560, 'Gorgoria masterbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1186, 1561, 'Mc Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1187, 1562, 'Nayanpur Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1188, 1475, 'Mawna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1189, 1567, 'Joyna Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1190, 1476, 'Rajendrapur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1191, 1477, 'Bhawal Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1192, 1004, 'Chowddagram', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1193, 1009, 'Laksam', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1194, 1012, 'Nangolkot', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1195, 1014, 'Monoharganj', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1196, 787, 'Koira', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1197, 788, 'Paikgacha', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1198, 1592, 'Amadee Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1199, 1593, 'kopilmuni Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1200, 888, 'Chunarughat (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1201, 1599, 'Shayestaganj (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1202, 891, 'Madhabpur (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1203, 1614, 'Ranigaon (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1204, 1615, 'Putijuri (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1205, 886, 'Bahubal (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1206, 746, 'Ghatail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1207, 747, 'Gopalpur (Tangail)', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1208, 750, 'Modhupur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1209, 754, 'Dhanbari', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1210, 694, 'Valuka', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1211, 698, 'Goffargaon', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1212, 705, 'Trishal', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1213, 1022, 'Teknaf', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1214, 997, 'Sandwip (Guptachara)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1215, 1459, 'Sandwip Shiberhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1216, 1460, 'Sandwip Urirchar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1217, 1610, 'Sandwip (Enam Nagar)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1218, 1611, 'Sandwip (Complex)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1219, 1612, 'Sandwip (Kalapaniya)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1220, 1613, 'Sandwip (Gasua)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1221, 842, 'Dhamoirhat', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1222, 843, 'Manda(Naogaon)', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1223, 844, 'Mahadebpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1224, 846, 'Niamatpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1225, 847, 'Patnitala', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1226, 848, 'Porsha', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1227, 850, 'Shapahar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1228, 981, 'Hajiganj (Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1229, 982, 'Kachua(Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1230, 985, 'Shahrasti', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1231, 862, 'Iswardi', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1232, 1620, 'Pakshi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1233, 417, 'Konapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1234, 278, 'Demra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1235, 1723, 'Basher pull (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1236, 1724, 'Bamuail (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1237, 1725, 'Sharuliya (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1238, 1726, 'Rani mohol (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1239, 1727, 'Staffquater (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1240, 1728, 'Demra bazar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1241, 1729, 'Hajinogar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1242, 1730, 'Boxnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1243, 1731, 'Badsha mia road (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1244, 1732, 'Muslimnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1245, 413, 'Matuail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1246, 1305, 'Mollartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1247, 1150, 'Mollapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1248, 68, 'Sonali Bank Staff Quarter', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1249, 1306, 'Gawair', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1250, 1151, 'Azampur (East)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1251, 1307, 'Kosaibari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1252, 70, 'Kawla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1253, 1308, 'Prembagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1254, 71, 'Naddapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1255, 1309, 'Kachkura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1256, 1310, 'Helal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1257, 1311, 'Chamur Khan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1258, 1312, 'Society', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1259, 1313, 'Ismailkholla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1260, 1292, 'Uttarkhan Mazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1261, 1314, 'Masterpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1262, 1159, 'Azampur (West) (Uttara)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1263, 1293, 'Dakshinkhan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1264, 1315, 'Munda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1265, 1294, 'Hajipara-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1266, 1316, 'Barua', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1267, 1296, 'Joynal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1268, 1297, 'Johura Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1269, 1298, 'Habib Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1270, 1319, 'Ainusbag-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1271, 46, 'Ainusbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1272, 47, 'Uttarkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1273, 48, 'Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1274, 49, 'Fayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1275, 1299, 'BDR Market-House Building', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1276, 50, 'Ashkona', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1277, 1651, 'Uttara Sector - 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1278, 1300, 'BDR Market-Sector 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1279, 1652, 'Uttara Sector - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1280, 1301, 'Moinartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1281, 1653, 'Uttara Sector - 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1282, 1302, 'Atipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1283, 1147, 'Uttara Sector-4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1284, 1303, 'Kot Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1285, 1148, 'Goaltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1286, 1304, 'Dewan City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1287, 1149, 'Chalabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1288, 940, 'Charfession', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1289, 942, 'Lalmohan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1290, 943, 'Manpura', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1291, 1569, 'Chondra Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1292, 1738, 'Goailbari bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1293, 1739, 'Hatimara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1294, 1740, 'Sardagonj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1295, 1741, 'Ambagh (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1296, 1742, 'Fulbaria bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1297, 1743, 'Madhobpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1298, 1744, 'Kabirpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1299, 1745, 'Walton high-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1300, 1746, 'Walton micro-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1301, 1747, 'Mollapara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1302, 1748, 'Jalsukha (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1303, 1749, 'Gosatra (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1304, 648, 'Kaliakoir', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1305, 1563, 'Konabari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1306, 1564, 'Mouchak Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1307, 1734, 'Vannara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1308, 1565, 'Kashempur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1309, 1566, 'Shafipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1310, 1735, 'Sardarganj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1311, 1736, 'Sultan Market (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1312, 1568, 'Pollibiddut Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1313, 1737, 'Baroipara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1314, 1602, 'Kuakata', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1315, 1604, 'Khepupara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1316, 1605, 'Payra port', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1317, 923, 'Amtali', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1318, 1608, 'Mahipur', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1319, 953, 'Kalapara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1320, 1750, 'Companyganj (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1321, 1011, 'Muradnagar - Cumilla', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1322, 1713, 'Tilagao - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1323, 1714, 'Bhatera - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1324, 895, 'Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1325, 1624, 'Baramchal (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1326, 1625, 'Robir Bazar (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1327, 1709, 'Brahman Bazar - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1328, 989, 'Chandanaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1329, 992, 'Lohagara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1330, 1461, 'Satkania Baitul Ijjat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1331, 1462, 'Satkania Bazalia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1332, 998, 'Satkania', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1333, 1408, 'Jaldi Banigram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1334, 1409, 'Jaldi Gunagari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1335, 1410, 'Jaldi Khan Bahadur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1336, 1411, 'Jaldi Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1337, 1384, 'East Joara Barma', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1338, 1385, 'East Joara Dohazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1339, 1386, 'East Joara East Joara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1340, 1387, 'East Joara Gachbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1341, 1421, 'Lohagara Chunti', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1342, 1422, 'Lohagara Padua', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1343, 987, 'Banshkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_pixels`
--

CREATE TABLE `ecom_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_pixels`
--

INSERT INTO `ecom_pixels` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(4, '#376270471730093', 1, '2023-08-10 14:38:51', '2024-03-01 00:07:54');

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

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `white_logo` varchar(255) NOT NULL,
  `dark_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `copyright` varchar(155) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `white_logo`, `dark_logo`, `favicon`, `copyright`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'premium | Your favorite online shopping sites', 'uploads/settings/1725998963-stone-rose.webp', 'uploads/settings/1725998967-stone-rose.webp', 'uploads/settings/1725998967-stone-rose.webp', NULL, '<b>sadf</b>', 1, '2023-01-21 12:01:07', '2024-09-11 02:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `google_tag_managers`
--

CREATE TABLE `google_tag_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_tag_managers`
--

INSERT INTO `google_tag_managers` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'K29C9BKJ', 1, '2024-02-11 07:08:03', '2024-02-11 07:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `ip_blocks`
--

CREATE TABLE `ip_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_no` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_11_113936_create_permission_tables', 1),
(8, '2023_01_21_150317_create_general_settings_table', 3),
(9, '2023_01_22_140830_create_social_media_table', 4),
(10, '2023_01_22_153053_create_contacts_table', 5),
(12, '2023_01_22_171430_create_categories_table', 6),
(17, '2023_02_09_082622_create_attributes_table', 7),
(21, '2023_02_11_065126_create_brands_table', 8),
(23, '2023_02_20_022411_create_customers_table', 9),
(24, '2023_02_21_083509_create_banners_table', 8),
(25, '2023_02_21_083647_create_banner_categories_table', 8),
(28, '2023_01_11_114621_create_products_table', 10),
(29, '2023_02_09_091624_create_productimages_table', 10),
(31, '2023_02_22_095626_create_districts_table', 11),
(48, '2023_02_22_150326_create_orders_table', 12),
(49, '2023_02_22_150339_create_order_details_table', 12),
(50, '2023_02_22_150351_create_shippings_table', 12),
(51, '2023_02_22_150400_create_payments_table', 12),
(53, '2023_02_25_022224_create_create_pages_table', 13),
(56, '2023_02_27_095310_create_reviews_table', 14),
(57, '2023_02_27_104954_create_order_types_table', 15),
(58, '2023_03_06_160934_create_campaigns_table', 16),
(59, '2023_03_13_121325_create_productprices_table', 17),
(60, '2023_04_17_125517_create_flavors_table', 18),
(61, '2023_04_17_125843_create_productflavors_table', 18),
(62, '2023_08_04_101452_create_shipping_charges_table', 19),
(64, '2023_08_04_204814_create_order_statuses_table', 20),
(65, '2023_08_06_161254_create_ecom_pixels_table', 21),
(66, '2023_06_04_121934_create_colors_table', 22),
(67, '2023_06_04_122329_create_sizes_table', 22),
(68, '2023_06_04_122459_create_productsizes_table', 22),
(69, '2023_06_04_122542_create_productcolors_table', 22),
(71, '2023_08_17_151949_create_campaign_reviews_table', 23),
(72, '2023_08_21_152844_create_ip_blocks_table', 24),
(73, '2023_09_07_171103_create_subcategories_table', 25),
(74, '2023_09_07_171404_create_childcategories_table', 25),
(76, '2024_02_06_165515_create_payment_gateways_table', 26),
(77, '2024_02_07_142550_create_sms_gateways_table', 27),
(78, '2024_02_07_161302_create_courierapis_table', 28),
(79, '2024_02_11_111947_create_google_tag_managers_table', 29),
(80, '2025_01_27_231255_create_secondbanners_table', 30);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(55) NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_note` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `amount`, `discount`, `shipping_charge`, `customer_id`, `admin_note`, `order_status`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(11, '80230', 335, 0, 135, 26, NULL, 1, NULL, NULL, '2024-05-31 15:19:45', '2024-05-31 15:19:45'),
(12, '68382', 470, 0, 70, 25, NULL, 1, NULL, NULL, '2024-05-31 15:21:19', '2024-05-31 15:21:19'),
(13, '21457', 270, 0, 70, 25, NULL, 1, NULL, NULL, '2024-05-31 15:23:37', '2024-05-31 15:23:37'),
(14, '86635', 670, 0, 70, 27, NULL, 1, NULL, NULL, '2024-06-03 12:05:07', '2024-06-03 12:05:07'),
(15, '85900', 735, 0, 135, 28, NULL, 2, NULL, NULL, '2024-06-03 12:05:42', '2024-06-05 11:49:27'),
(16, '37648', 335, 0, 135, 25, NULL, 2, NULL, NULL, '2024-06-05 11:42:33', '2024-06-05 16:35:32'),
(17, '93932', 1585, 0, 135, 29, NULL, 1, NULL, NULL, '2024-06-05 16:39:11', '2024-06-05 16:39:11'),
(18, '86286', 335, 0, 135, 29, NULL, 4, NULL, NULL, '2024-06-05 16:40:24', '2024-06-05 16:50:57'),
(19, '58365', 2070, 0, 70, 1, NULL, 1, NULL, NULL, '2024-06-06 09:03:31', '2024-06-06 09:03:31'),
(20, '16907', 3085, 0, 135, 33, NULL, 1, NULL, NULL, '2024-06-25 08:44:25', '2024-06-25 08:46:05'),
(21, '93693', 1270, 0, 70, 34, NULL, 5, NULL, NULL, '2024-07-04 00:20:27', '2024-09-12 15:37:38'),
(22, '76077', 1520, 0, 70, 34, NULL, 5, NULL, NULL, '2024-07-04 00:21:23', '2024-09-12 15:37:38'),
(23, '29285', 4570, 0, 70, 35, NULL, 1, NULL, NULL, '2024-09-12 23:30:54', '2024-09-12 23:30:54'),
(24, '86013', 670, 0, 70, 35, NULL, 1, NULL, NULL, '2024-09-13 01:55:01', '2024-09-13 01:55:01'),
(25, '81420', 3040, 0, 90, 36, NULL, 1, NULL, NULL, '2024-09-16 19:01:35', '2024-09-16 19:01:35'),
(26, '23911', 3240, 0, 90, 37, NULL, 1, NULL, NULL, '2024-09-16 20:05:53', '2024-09-16 20:05:53'),
(27, '26786', 740, 0, 90, 35, NULL, 1, NULL, NULL, '2024-09-16 21:32:57', '2024-09-16 21:32:57'),
(28, '13051', 690, 0, 90, 35, NULL, 1, NULL, NULL, '2024-09-16 21:54:42', '2024-09-16 21:54:42'),
(29, '80082', 1985, 0, 135, 35, NULL, 1, NULL, NULL, '2024-09-16 22:33:54', '2024-09-16 22:33:54'),
(30, '69700', 660, 0, 60, 38, NULL, 1, NULL, NULL, '2024-09-16 22:55:02', '2024-09-16 22:55:02'),
(31, '15125', 740, 0, 90, 35, NULL, 1, NULL, NULL, '2024-09-17 00:36:28', '2024-09-17 00:36:28'),
(32, '27382', 13070, 0, 70, 35, NULL, 1, NULL, NULL, '2024-09-17 00:41:24', '2024-09-17 00:41:24'),
(33, '22307', 590, 0, 90, 37, NULL, 1, NULL, NULL, '2024-09-17 13:32:29', '2024-09-17 13:32:29'),
(34, '40699', 720, 0, 70, 39, NULL, 5, 9, NULL, '2025-01-28 10:52:11', '2025-03-06 19:07:50'),
(35, '84867', 489, 0, 90, 35, NULL, 1, NULL, NULL, '2025-03-12 17:31:03', '2025-03-12 17:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  `product_discount` int(11) DEFAULT 0,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `purchase_price`, `sale_price`, `product_discount`, `product_size`, `product_color`, `qty`, `created_at`, `updated_at`) VALUES
(16, 11, 133, 'T-Shirt (Eider Diner Kosai) for EID Special Code : 4817', 130, 200, 0, 'XL', 'White', 1, '2024-05-31 15:19:45', '2024-05-31 15:19:45'),
(17, 12, 133, 'T-Shirt (Eider Diner Kosai) for EID Special Code : 4817', 130, 200, 0, 'XL', 'White', 2, '2024-05-31 15:21:19', '2024-05-31 15:21:19'),
(18, 13, 133, 'T-Shirt (Eider Diner Kosai) for EID Special Code : 4817', 130, 200, 0, 'XL', 'White', 1, '2024-05-31 15:23:37', '2024-05-31 15:23:37'),
(19, 14, 133, 'T-Shirt (Eider Diner Kosai) for EID Special Code : 4817', 130, 200, 0, 'M', 'White', 3, '2024-06-03 12:05:07', '2024-06-03 12:05:07'),
(20, 15, 133, 'T-Shirt (Eider Diner Kosai) for EID Special Code : 4817', 130, 200, 0, 'M', 'White', 3, '2024-06-03 12:05:42', '2024-06-03 12:05:42'),
(21, 16, 133, 'T-Shirt (Eider Diner Kosai) for EID Special Code : 4817', 130, 200, 0, 'M', 'White', 1, '2024-06-05 11:42:33', '2024-06-05 11:42:33'),
(22, 17, 136, '8 pieces king size Panel Bedcover set Code : 4078', 1210, 1450, 0, NULL, NULL, 1, '2024-06-05 16:39:11', '2024-06-05 16:39:11'),
(23, 18, 133, 'T-Shirt (Eider Diner Kosai) for EID Special Code : 4817', 130, 200, 0, 'M', 'White', 1, '2024-06-05 16:40:24', '2024-06-05 16:40:24'),
(24, 19, 137, 'T900 Ultra Smart Watch Code : 4103', 750, 1000, 0, NULL, 'Orange', 2, '2024-06-06 09:03:31', '2024-06-06 09:03:31'),
(25, 20, 142, 'SSD 256 GB', 2500, 2950, 0, NULL, NULL, 1, '2024-06-25 08:44:25', '2024-06-25 08:44:25'),
(26, 21, 145, 'Five Spring Tummy Trimmer', 600, 1200, 0, NULL, NULL, 1, '2024-07-04 00:20:27', '2024-07-04 00:20:27'),
(27, 22, 136, '8 pieces king size Panel Bedcover set Code : 4078', 1210, 1450, 0, NULL, NULL, 1, '2024-07-04 00:21:23', '2024-07-04 00:21:23'),
(28, 23, 146, 'ফ্রিজ ওয়াশিং মেশিন মুভিং স্ট্যান্ড BIG SIZE', 150, 4500, 0, NULL, NULL, 1, '2024-09-12 23:30:54', '2024-09-12 23:30:54'),
(29, 24, 140, 'Hot & Useful Ladies Air Sports Bra (Color-Black)', 300, 600, 0, 'XL', 'Coral', 1, '2024-09-13 01:55:01', '2024-09-13 01:55:01'),
(30, 25, 142, 'SSD 256 GB', 2500, 2950, 0, NULL, NULL, 1, '2024-09-16 19:01:35', '2024-09-16 19:01:35'),
(31, 26, 159, 'Electronics9', 500, 650, 0, NULL, NULL, 2, '2024-09-16 20:05:53', '2024-09-16 20:05:53'),
(32, 26, 135, 'দুবাই চেরি কাপড় ১ পার্ট বোরখা এমব্রয়ডারি ওয়ার্ক Code : 4820', 1450, 1850, 0, NULL, NULL, 1, '2024-09-16 20:05:53', '2024-09-16 20:05:53'),
(33, 27, 158, 'Electronics8', 500, 650, 0, NULL, NULL, 1, '2024-09-16 21:32:57', '2024-09-16 21:32:57'),
(34, 28, 140, 'Hot & Useful Ladies Air Sports Bra (Color-Black)', 300, 600, 0, 'M', 'Coral', 1, '2024-09-16 21:54:42', '2024-09-16 21:54:42'),
(35, 29, 135, 'দুবাই চেরি কাপড় ১ পার্ট বোরখা এমব্রয়ডারি ওয়ার্ক Code : 4820', 1450, 1850, 0, NULL, NULL, 1, '2024-09-16 22:33:54', '2024-09-16 22:33:54'),
(36, 30, 140, 'Hot & Useful Ladies Air Sports Bra (Color-Black)', 300, 600, 0, 'L', 'Coral', 1, '2024-09-16 22:55:03', '2024-09-16 22:55:03'),
(37, 31, 158, 'Electronics8', 500, 650, 0, NULL, NULL, 1, '2024-09-17 00:36:28', '2024-09-17 00:36:28'),
(38, 32, 161, 'test product', 6000, 6500, 0, NULL, NULL, 2, '2024-09-17 00:41:24', '2024-09-17 00:41:24'),
(39, 33, 141, 'Relax & Spin Tone Slimming Toning & Relaxing Body Massager', 300, 500, 0, 'S', 'Aqua', 1, '2024-09-17 13:32:29', '2024-09-17 13:32:29'),
(40, 34, 156, 'Electronics6', 500, 650, 0, NULL, NULL, 1, '2025-01-28 10:52:11', '2025-01-28 10:52:11'),
(41, 35, 134, 'Mini Boost Harmonic Distortion Thunder Beat Sound Portable Wireless 10 W Bluetooth Speaker Code : 4170', 255, 399, 0, NULL, 'Black', 1, '2025-03-12 17:31:03', '2025-03-12 17:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', '1', '2023-08-15 11:28:33', '2023-08-15 11:28:33'),
(2, 'Processing', 'processing', '1', '2023-08-15 11:31:22', '2023-08-15 11:31:22'),
(3, 'On The Way', 'on-the-way', '1', '2023-08-15 11:31:34', '2023-08-15 11:31:34'),
(4, 'On Hold', 'on-hold', '1', '2023-08-15 11:31:45', '2024-09-11 22:09:17'),
(5, 'In Courier', 'in-courier', '1', '2023-08-15 11:31:56', '2023-08-21 05:45:54'),
(6, 'Completed', 'completed', '1', '2023-08-15 11:32:06', '2023-08-21 05:46:06'),
(7, 'Cancelled', 'cancelled', '1', '2023-08-21 05:46:15', '2023-08-21 05:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `payment_status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `customer_id`, `amount`, `trx_id`, `sender_number`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(11, 11, 26, 335, NULL, NULL, 'shurjopay', 'pending', '2024-05-31 15:19:45', '2024-05-31 15:19:45'),
(12, 12, 25, 470, NULL, NULL, 'bkash', 'pending', '2024-05-31 15:21:19', '2024-05-31 15:21:19'),
(13, 13, 25, 270, NULL, NULL, 'Cash On Delivery', 'pending', '2024-05-31 15:23:37', '2024-05-31 15:23:37'),
(14, 14, 27, 670, NULL, NULL, 'Cash On Delivery', 'pending', '2024-06-03 12:05:07', '2024-06-03 12:05:07'),
(15, 15, 28, 670, NULL, NULL, 'bkash', 'pending', '2024-06-03 12:05:42', '2024-06-03 12:05:42'),
(16, 16, 25, 270, NULL, NULL, 'Cash On Delivery', 'pending', '2024-06-05 11:42:33', '2024-06-05 11:42:33'),
(17, 17, 29, 1585, NULL, NULL, 'Cash On Delivery', 'pending', '2024-06-05 16:39:11', '2024-06-05 16:39:11'),
(18, 18, 29, 270, NULL, NULL, 'bkash', 'pending', '2024-06-05 16:40:24', '2024-06-05 16:40:24'),
(19, 19, 1, 2070, NULL, NULL, 'shurjopay', 'pending', '2024-06-06 09:03:31', '2024-06-06 09:03:31'),
(20, 20, 33, 3085, NULL, NULL, 'Cash On Delivery', 'pending', '2024-06-25 08:44:25', '2024-06-25 08:46:05'),
(21, 21, 34, 1270, NULL, NULL, 'shurjopay', 'pending', '2024-07-04 00:20:27', '2024-07-04 00:20:27'),
(22, 22, 34, 1520, NULL, NULL, 'bkash', 'pending', '2024-07-04 00:21:23', '2024-07-04 00:21:23'),
(23, 23, 35, 4570, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-12 23:30:54', '2024-09-12 23:30:54'),
(24, 24, 35, 670, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-13 01:55:01', '2024-09-13 01:55:01'),
(25, 25, 36, 3040, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-16 19:01:35', '2024-09-16 19:01:35'),
(26, 26, 37, 3240, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-16 20:05:53', '2024-09-16 20:05:53'),
(27, 27, 35, 740, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-16 21:32:57', '2024-09-16 21:32:57'),
(28, 28, 35, 690, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-16 21:54:42', '2024-09-16 21:54:42'),
(29, 29, 35, 1985, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-16 22:33:54', '2024-09-16 22:33:54'),
(30, 30, 38, 660, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-16 22:55:03', '2024-09-16 22:55:03'),
(31, 31, 35, 740, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-17 00:36:28', '2024-09-17 00:36:28'),
(32, 32, 35, 13070, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-17 00:41:24', '2024-09-17 00:41:24'),
(33, 33, 37, 590, NULL, NULL, 'Cash On Delivery', 'pending', '2024-09-17 13:32:29', '2024-09-17 13:32:29'),
(34, 34, 39, 720, NULL, NULL, 'Cash On Delivery', 'pending', '2025-01-28 10:52:11', '2025-01-28 10:52:11'),
(35, 35, 35, 489, NULL, NULL, 'Cash On Delivery', 'pending', '2025-03-12 17:31:03', '2025-03-12 17:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `app_key` varchar(155) DEFAULT NULL,
  `app_secret` varchar(155) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `base_url` varchar(99) DEFAULT NULL,
  `success_url` varchar(155) DEFAULT NULL,
  `return_url` varchar(155) DEFAULT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `type`, `app_key`, `app_secret`, `username`, `password`, `base_url`, `success_url`, `return_url`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash', 'C7MNfvn3jhMEFqFI4TdnYUe5tc', '1NnVYeRbCzv0FUV8gOycidcPV5ZEmyK8u8wIvM0rRztavTlIerfN', '01738154732', 'Fr);2u[5W8C', 'https://tokenized.pay.bka.sh/v1.2.0-beta', NULL, NULL, NULL, 0, '2024-02-06 11:29:46', '2024-09-11 22:13:37'),
(2, 'shurjopay', '', '', 'sp_sandbox', 'pyyk97hu&6u6', 'https://sandbox.shurjopayment.com', 'https://suvroit.online/', 'https://suvroit.online', 'NOK', 0, '2024-02-06 11:29:46', '2024-09-11 22:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-01-11 06:31:32', '2023-01-11 06:31:32'),
(2, 'role-create', 'web', '2023-01-11 06:31:33', '2023-01-11 06:31:33'),
(3, 'role-edit', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(4, 'role-delete', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(5, 'product-list', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(6, 'product-create', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(7, 'product-edit', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(8, 'product-delete', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(9, 'permission-list', 'web', NULL, NULL),
(10, 'permission-create', 'web', NULL, NULL),
(11, 'setting-delete', 'web', '2023-01-21 10:50:15', '2023-01-21 10:50:15'),
(12, 'setting-edit', 'web', '2023-01-21 10:50:35', '2023-01-21 10:50:35'),
(13, 'setting-create', 'web', '2023-01-21 10:50:50', '2023-01-21 10:50:50'),
(14, 'setting-list', 'web', '2023-01-21 10:51:01', '2023-01-21 10:51:01'),
(15, 'social-list', 'web', '2023-01-22 08:33:54', '2023-01-22 08:33:54'),
(16, 'social-create', 'web', '2023-01-22 08:34:07', '2023-01-22 08:34:07'),
(17, 'social-edit', 'web', '2023-01-22 08:34:17', '2023-01-22 08:34:17'),
(18, 'social-delete', 'web', '2023-01-22 08:34:25', '2023-01-22 08:34:25'),
(19, 'contact-list', 'web', '2023-01-22 10:25:01', '2023-01-22 10:25:01'),
(20, 'contact-create', 'web', '2023-01-22 10:25:16', '2023-01-22 10:28:19'),
(21, 'permission-edit', 'web', '2023-01-22 10:26:28', '2023-01-22 10:26:28'),
(22, 'permission-delete', 'web', '2023-01-22 10:26:39', '2023-01-22 10:26:39'),
(23, 'contact-edit', 'web', '2023-01-22 10:28:34', '2023-01-22 10:28:34'),
(24, 'contact-delete', 'web', '2023-01-22 10:28:45', '2023-01-22 10:28:45'),
(25, 'category-list', 'web', '2023-02-08 10:26:58', '2023-02-08 10:26:58'),
(26, 'category-create', 'web', '2023-02-08 10:27:19', '2023-02-08 10:27:19'),
(27, 'category-edit', 'web', '2023-02-08 10:27:28', '2023-02-08 10:27:28'),
(28, 'category-delete', 'web', '2023-02-08 10:27:38', '2023-02-08 10:27:38'),
(29, 'attribute-list', 'web', '2023-02-09 02:54:47', '2023-02-09 02:54:47'),
(30, 'attribute-create', 'web', '2023-02-09 02:55:02', '2023-02-09 02:55:02'),
(31, 'attribute-edit', 'web', '2023-02-09 02:55:14', '2023-02-09 02:55:14'),
(32, 'attribute-delete', 'web', '2023-02-09 02:55:23', '2023-02-09 02:55:23'),
(33, 'banner-category-list', 'web', '2023-02-21 03:00:08', '2023-02-21 03:00:08'),
(34, 'banner-category-create', 'web', '2023-02-21 03:00:34', '2023-02-21 03:00:34'),
(35, 'banner-category-edit', 'web', '2023-02-21 03:00:45', '2023-02-21 03:00:45'),
(36, 'banner-category-delete', 'web', '2023-02-21 03:00:53', '2023-02-21 03:00:53'),
(37, 'banner-list', 'web', '2023-02-21 03:51:27', '2023-02-21 03:51:27'),
(38, 'banner-create', 'web', '2023-02-21 03:51:50', '2023-02-21 03:51:50'),
(39, 'banner-edit', 'web', '2023-02-21 03:52:18', '2023-02-21 03:52:18'),
(40, 'banner-delete', 'web', '2023-02-21 03:52:32', '2023-02-21 03:52:32'),
(41, 'page-list', 'web', '2023-02-24 20:42:52', '2023-02-24 20:42:52'),
(42, 'page-create', 'web', '2023-02-24 20:43:01', '2023-02-24 20:43:01'),
(43, 'page-edit', 'web', '2023-02-24 20:43:08', '2023-02-24 20:43:08'),
(44, 'page-delete', 'web', '2023-02-24 20:43:15', '2023-02-24 20:43:15'),
(49, 'shipping-list', 'web', '2023-08-04 08:46:28', '2023-08-04 08:46:28'),
(50, 'shipping-create', 'web', '2023-08-04 08:47:09', '2023-08-04 08:47:09'),
(51, 'shipping-edit', 'web', '2023-08-04 08:47:23', '2023-08-04 08:47:23'),
(52, 'shipping-delete', 'web', '2023-08-04 08:47:34', '2023-08-04 08:47:34'),
(53, 'color-list', 'web', '2023-08-15 07:48:52', '2023-08-15 07:48:52'),
(54, 'color-create', 'web', '2023-08-15 07:49:01', '2023-08-15 07:49:01'),
(55, 'color-edit', 'web', '2023-08-15 07:49:12', '2023-08-15 07:49:12'),
(56, 'color-delete', 'web', '2023-08-15 07:49:20', '2023-08-15 07:49:20'),
(69, 'subcategory-list', 'web', '2024-01-31 10:49:48', '2024-01-31 10:49:48'),
(70, 'subcategory-create', 'web', '2024-01-31 10:49:56', '2024-01-31 10:49:56'),
(71, 'subcategory-edit', 'web', '2024-01-31 10:50:04', '2024-01-31 10:50:04'),
(72, 'subcategory-delete', 'web', '2024-01-31 10:50:13', '2024-01-31 10:50:13'),
(73, 'childcategory-list', 'web', '2024-01-31 10:51:33', '2024-01-31 10:51:33'),
(74, 'childcategory-create', 'web', '2024-01-31 10:51:41', '2024-01-31 10:51:41'),
(75, 'childcategory-edit', 'web', '2024-01-31 10:51:50', '2024-01-31 10:51:50'),
(76, 'childcategory-delete', 'web', '2024-01-31 10:52:00', '2024-01-31 10:52:00');

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
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 62, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 35, 44, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(4, 28, 62, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(5, 2, 65, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(6, 131, 32, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(7, 131, 36, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(8, 131, 39, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(9, 131, 40, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(10, 132, 35, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(11, 132, 52, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(12, 132, 62, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(13, 133, 62, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(14, 134, 35, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(15, 134, 52, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(16, 134, 63, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(17, 137, 35, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(18, 137, 54, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(19, 138, 35, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(20, 138, 36, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(21, 138, 39, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(22, 139, 32, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(23, 139, 36, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(24, 139, 39, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(25, 140, 35, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(26, 140, 39, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(27, 141, 32, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(28, 141, 35, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(29, 157, 32, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(30, 157, 35, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(31, 160, 32, '2024-09-13 02:03:49', '2024-09-13 02:03:49'),
(32, 160, 39, '2024-09-13 02:03:49', '2024-09-13 02:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 'uploads/product/1706962659-6.webp', 1, '2024-02-03 12:17:39', '2024-02-03 12:17:39'),
(7, 'uploads/product/1706962760-1.webp', 5, '2024-02-03 12:19:20', '2024-02-03 12:19:20'),
(8, 'uploads/product/1706962864-2.webp', 2, '2024-02-03 12:21:04', '2024-02-03 12:21:04'),
(9, 'uploads/product/1706962961-3.webp', 3, '2024-02-03 12:22:41', '2024-02-03 12:22:41'),
(10, 'uploads/product/1706963054-4.webp', 4, '2024-02-03 12:24:14', '2024-02-03 12:24:14'),
(11, 'uploads/product/1706963304-5.webp', 6, '2024-02-03 12:28:24', '2024-02-03 12:28:24'),
(13, 'uploads/product/1706963666-968d4e20278e2db6759a2d2a44231f4c.jpg_750x750.jpg_.webp', 7, '2024-02-03 12:34:26', '2024-02-03 12:34:26'),
(15, 'uploads/product/1706963947-7.webp', 9, '2024-02-03 12:39:07', '2024-02-03 12:39:07'),
(16, 'uploads/product/1706964217-6.webp', 8, '2024-02-03 12:43:37', '2024-02-03 12:43:37'),
(17, 'uploads/product/1706964324-8.webp', 10, '2024-02-03 12:45:24', '2024-02-03 12:45:24'),
(18, 'uploads/product/1706964552-9.webp', 11, '2024-02-03 12:49:12', '2024-02-03 12:49:12'),
(19, 'uploads/product/1706964708-10.webp', 12, '2024-02-03 12:51:48', '2024-02-03 12:51:48'),
(20, 'uploads/product/1706965822-11.webp', 13, '2024-02-03 13:10:22', '2024-02-03 13:10:22'),
(21, 'uploads/product/1706966045-12.webp', 14, '2024-02-03 13:14:05', '2024-02-03 13:14:05'),
(22, 'uploads/product/1707038734-13.webp', 15, '2024-02-04 09:25:34', '2024-02-04 09:25:34'),
(23, 'uploads/product/1707039090-15.webp', 16, '2024-02-04 09:31:30', '2024-02-04 09:31:30'),
(24, 'uploads/product/1707039226-16.webp', 17, '2024-02-04 09:33:46', '2024-02-04 09:33:46'),
(25, 'uploads/product/1707039619-17.webp', 18, '2024-02-04 09:40:19', '2024-02-04 09:40:19'),
(26, 'uploads/product/1707039878-18.webp', 19, '2024-02-04 09:44:38', '2024-02-04 09:44:38'),
(27, 'uploads/product/1707040029-19.webp', 20, '2024-02-04 09:47:09', '2024-02-04 09:47:09'),
(28, 'uploads/product/1707040152-20.webp', 21, '2024-02-04 09:49:12', '2024-02-04 09:49:12'),
(29, 'uploads/product/1707040552-21.webp', 22, '2024-02-04 09:55:52', '2024-02-04 09:55:52'),
(30, 'uploads/product/1707040912-22.webp', 23, '2024-02-04 10:01:52', '2024-02-04 10:01:52'),
(31, 'uploads/product/1707041003-23.webp', 24, '2024-02-04 10:03:23', '2024-02-04 10:03:23'),
(32, 'uploads/product/1707041229-24.webp', 25, '2024-02-04 10:07:09', '2024-02-04 10:07:09'),
(33, 'uploads/product/1707041724-25.webp', 26, '2024-02-04 10:15:24', '2024-02-04 10:15:24'),
(34, 'uploads/product/1707041854-26.webp', 27, '2024-02-04 10:17:34', '2024-02-04 10:17:34'),
(35, 'uploads/product/1707042066-27.webp', 28, '2024-02-04 10:21:06', '2024-02-04 10:21:06'),
(36, 'uploads/product/1707042304-28.webp', 29, '2024-02-04 10:25:04', '2024-02-04 10:25:04'),
(37, 'uploads/product/1707042443-29.webp', 30, '2024-02-04 10:27:23', '2024-02-04 10:27:23'),
(38, 'uploads/product/1707042740-30.webp', 31, '2024-02-04 10:32:20', '2024-02-04 10:32:20'),
(39, 'uploads/product/1707042930-31.webp', 32, '2024-02-04 10:35:30', '2024-02-04 10:35:30'),
(40, 'uploads/product/1707043100-32.webp', 33, '2024-02-04 10:38:20', '2024-02-04 10:38:20'),
(41, 'uploads/product/1707043310-33.webp', 34, '2024-02-04 10:41:50', '2024-02-04 10:41:50'),
(42, 'uploads/product/1707044037-34.webp', 35, '2024-02-04 10:53:57', '2024-02-04 10:53:57'),
(43, 'uploads/product/1707044326-35.webp', 36, '2024-02-04 10:58:46', '2024-02-04 10:58:46'),
(44, 'uploads/product/1707044444-36.webp', 37, '2024-02-04 11:00:44', '2024-02-04 11:00:44'),
(45, 'uploads/product/1707045047-38.webp', 38, '2024-02-04 11:10:47', '2024-02-04 11:10:47'),
(46, 'uploads/product/1707045273-39.webp', 39, '2024-02-04 11:14:33', '2024-02-04 11:14:33'),
(47, 'uploads/product/1707045380-40.webp', 40, '2024-02-04 11:16:20', '2024-02-04 11:16:20'),
(48, 'uploads/product/1707045468-41.webp', 41, '2024-02-04 11:17:48', '2024-02-04 11:17:48'),
(49, 'uploads/product/1707045572-42.webp', 42, '2024-02-04 11:19:32', '2024-02-04 11:19:32'),
(50, 'uploads/product/1707045885-43.webp', 43, '2024-02-04 11:24:45', '2024-02-04 11:24:45'),
(51, 'uploads/product/1707046613-44.webp', 44, '2024-02-04 11:36:53', '2024-02-04 11:36:53'),
(52, 'uploads/product/1707046712-45.webp', 45, '2024-02-04 11:38:32', '2024-02-04 11:38:32'),
(54, 'uploads/product/1707046820-46.webp', 46, '2024-02-04 11:40:20', '2024-02-04 11:40:20'),
(55, 'uploads/product/1707047083-47.webp', 47, '2024-02-04 11:44:43', '2024-02-04 11:44:43'),
(56, 'uploads/product/1707047786-48.webp', 48, '2024-02-04 11:56:26', '2024-02-04 11:56:26'),
(57, 'uploads/product/1707048052-49.webp', 49, '2024-02-04 12:00:52', '2024-02-04 12:00:52'),
(58, 'uploads/product/1707048207-50.webp', 50, '2024-02-04 12:03:27', '2024-02-04 12:03:27'),
(59, 'uploads/product/1707048433-51.webp', 51, '2024-02-04 12:07:13', '2024-02-04 12:07:13'),
(60, 'uploads/product/1707048546-52.webp', 52, '2024-02-04 12:09:06', '2024-02-04 12:09:06'),
(61, 'uploads/product/1707049682-53.webp', 53, '2024-02-04 12:28:02', '2024-02-04 12:28:02'),
(62, 'uploads/product/1707049786-54.webp', 54, '2024-02-04 12:29:46', '2024-02-04 12:29:46'),
(63, 'uploads/product/1707049880-55.webp', 55, '2024-02-04 12:31:20', '2024-02-04 12:31:20'),
(64, 'uploads/product/1707050041-56.webp', 56, '2024-02-04 12:34:01', '2024-02-04 12:34:01'),
(65, 'uploads/product/1707050315-57.webp', 57, '2024-02-04 12:38:35', '2024-02-04 12:38:35'),
(66, 'uploads/product/1707050396-58.webp', 58, '2024-02-04 12:39:56', '2024-02-04 12:39:56'),
(67, 'uploads/product/1707051081-59.webp', 59, '2024-02-04 12:51:21', '2024-02-04 12:51:21'),
(68, 'uploads/product/1707051138-60.webp', 60, '2024-02-04 12:52:18', '2024-02-04 12:52:18'),
(69, 'uploads/product/1707051335-61.webp', 61, '2024-02-04 12:55:35', '2024-02-04 12:55:35'),
(70, 'uploads/product/1707051439-2600.webp', 62, '2024-02-04 12:57:19', '2024-02-04 12:57:19'),
(71, 'uploads/product/1707051518-62.webp', 63, '2024-02-04 12:58:38', '2024-02-04 12:58:38'),
(72, 'uploads/product/1707051601-2600.webp', 64, '2024-02-04 13:00:01', '2024-02-04 13:00:01'),
(73, 'uploads/product/1707051745-64.webp', 65, '2024-02-04 13:02:25', '2024-02-04 13:02:25'),
(74, 'uploads/product/1707051825-65.webp', 66, '2024-02-04 13:03:45', '2024-02-04 13:03:45'),
(75, 'uploads/product/1707051903-66.webp', 67, '2024-02-04 13:05:03', '2024-02-04 13:05:03'),
(76, 'uploads/product/1707052031-67.webp', 68, '2024-02-04 13:07:11', '2024-02-04 13:07:11'),
(77, 'uploads/product/1707052255-68.webp', 69, '2024-02-04 13:10:55', '2024-02-04 13:10:55'),
(78, 'uploads/product/1707052394-69.webp', 70, '2024-02-04 13:13:14', '2024-02-04 13:13:14'),
(79, 'uploads/product/1707052463-70.webp', 71, '2024-02-04 13:14:23', '2024-02-04 13:14:23'),
(80, 'uploads/product/1707052527-71.webp', 72, '2024-02-04 13:15:27', '2024-02-04 13:15:27'),
(81, 'uploads/product/1707121724-d6569c95ead8324c63ae8bedbf74482e.jpg_750x750.jpg_.webp', 73, '2024-02-05 08:28:44', '2024-02-05 08:28:44'),
(82, 'uploads/product/1707121894-2d5383f5aa9746aa1137749da10c6264.jpg_750x750.jpg_.webp', 74, '2024-02-05 08:31:34', '2024-02-05 08:31:34'),
(83, 'uploads/product/1707122306-25266ca63761fc3f5059ab87a0d0310b.jpg_750x750.jpg_.webp', 75, '2024-02-05 08:38:26', '2024-02-05 08:38:26'),
(84, 'uploads/product/1707122812-a10cb862f1da4a430e8fbc8769ce69b3.jpg_750x750.jpg_.webp', 76, '2024-02-05 08:46:52', '2024-02-05 08:46:52'),
(85, 'uploads/product/1707122812-27955ce3c5c10b44c501b03e125e3c82.jpg_100x100.jpg_.webp', 76, '2024-02-05 08:46:52', '2024-02-05 08:46:52'),
(86, 'uploads/product/1707123191-51ba6689f5e3c9b392f7d131c6d7d702.jpg_750x750.jpg_.webp', 77, '2024-02-05 08:53:11', '2024-02-05 08:53:11'),
(87, 'uploads/product/1707123566-29761a41e32e3962864f83dfe825edea.jpg_750x750.jpg_.webp', 78, '2024-02-05 08:59:26', '2024-02-05 08:59:26'),
(88, 'uploads/product/1707123836-e519b1103c328de72f70335f758cc7cd.jpg_750x750.jpg_.webp', 79, '2024-02-05 09:03:56', '2024-02-05 09:03:56'),
(89, 'uploads/product/1707125239-b999bd7cd26d3238698ee071a6e64e40.jpg_750x750.jpg_.webp', 80, '2024-02-05 09:27:19', '2024-02-05 09:27:19'),
(90, 'uploads/product/1707126177-3fc61e6a6dda2bb78245b5573e1d1562.jpg_750x750.jpg_.webp', 81, '2024-02-05 09:42:57', '2024-02-05 09:42:57'),
(91, 'uploads/product/1707126250-cff152bdb02947791234e7f71346bf57.jpg_750x750.jpg_.webp', 82, '2024-02-05 09:44:10', '2024-02-05 09:44:10'),
(92, 'uploads/product/1707126327-d4fe1c51cab0d824c68a3c46d702e571.jpg_750x750.jpg_.webp', 83, '2024-02-05 09:45:27', '2024-02-05 09:45:27'),
(93, 'uploads/product/1707126418-05b0495ff024378b04e4a22aecb8f43c.jpg_750x750.jpg_.webp', 84, '2024-02-05 09:46:58', '2024-02-05 09:46:58'),
(94, 'uploads/product/1707126922-1.webp', 85, '2024-02-05 09:55:22', '2024-02-05 09:55:22'),
(95, 'uploads/product/1707126922-2.webp', 85, '2024-02-05 09:55:22', '2024-02-05 09:55:22'),
(96, 'uploads/product/1707127008-3.webp', 86, '2024-02-05 09:56:48', '2024-02-05 09:56:48'),
(97, 'uploads/product/1707127008-4.webp', 86, '2024-02-05 09:56:48', '2024-02-05 09:56:48'),
(98, 'uploads/product/1707127090-6.webp', 87, '2024-02-05 09:58:10', '2024-02-05 09:58:10'),
(99, 'uploads/product/1707127090-5.webp', 87, '2024-02-05 09:58:10', '2024-02-05 09:58:10'),
(100, 'uploads/product/1707127168-7.webp', 88, '2024-02-05 09:59:28', '2024-02-05 09:59:28'),
(102, 'uploads/product/1707127293-9.webp', 89, '2024-02-05 10:01:33', '2024-02-05 10:01:33'),
(103, 'uploads/product/1707127293-8.webp', 89, '2024-02-05 10:01:33', '2024-02-05 10:01:33'),
(104, 'uploads/product/1707127376-10.webp', 90, '2024-02-05 10:02:56', '2024-02-05 10:02:56'),
(105, 'uploads/product/1707127376-11.webp', 90, '2024-02-05 10:02:56', '2024-02-05 10:02:56'),
(106, 'uploads/product/1707127468-12.webp', 91, '2024-02-05 10:04:28', '2024-02-05 10:04:28'),
(107, 'uploads/product/1707127468-13.webp', 91, '2024-02-05 10:04:28', '2024-02-05 10:04:28'),
(108, 'uploads/product/1707127637-14.webp', 92, '2024-02-05 10:07:17', '2024-02-05 10:07:17'),
(109, 'uploads/product/1707127637-15.webp', 92, '2024-02-05 10:07:17', '2024-02-05 10:07:17'),
(110, 'uploads/product/1707128083-17.webp', 93, '2024-02-05 10:14:43', '2024-02-05 10:14:43'),
(111, 'uploads/product/1707128083-16.webp', 93, '2024-02-05 10:14:43', '2024-02-05 10:14:43'),
(112, 'uploads/product/1707128240-18.webp', 94, '2024-02-05 10:17:20', '2024-02-05 10:17:20'),
(113, 'uploads/product/1707128311-20.webp', 95, '2024-02-05 10:18:31', '2024-02-05 10:18:31'),
(114, 'uploads/product/1707128450-21.webp', 96, '2024-02-05 10:20:50', '2024-02-05 10:20:50'),
(115, 'uploads/product/1707128450-22.webp', 96, '2024-02-05 10:20:50', '2024-02-05 10:20:50'),
(116, 'uploads/product/1707129607-23.webp', 97, '2024-02-05 10:40:07', '2024-02-05 10:40:07'),
(117, 'uploads/product/1707129715-24.webp', 98, '2024-02-05 10:41:55', '2024-02-05 10:41:55'),
(118, 'uploads/product/1707129715-25.webp', 98, '2024-02-05 10:41:55', '2024-02-05 10:41:55'),
(119, 'uploads/product/1707129849-27.webp', 99, '2024-02-05 10:44:09', '2024-02-05 10:44:09'),
(120, 'uploads/product/1707129849-26.webp', 99, '2024-02-05 10:44:09', '2024-02-05 10:44:09'),
(121, 'uploads/product/1707129943-28.webp', 100, '2024-02-05 10:45:43', '2024-02-05 10:45:43'),
(122, 'uploads/product/1707130323-29.webp', 101, '2024-02-05 10:52:03', '2024-02-05 10:52:03'),
(123, 'uploads/product/1707130323-30.webp', 101, '2024-02-05 10:52:03', '2024-02-05 10:52:03'),
(124, 'uploads/product/1707130655-32.webp', 102, '2024-02-05 10:57:35', '2024-02-05 10:57:35'),
(125, 'uploads/product/1707130655-31.webp', 102, '2024-02-05 10:57:35', '2024-02-05 10:57:35'),
(126, 'uploads/product/1707130655-30.webp', 102, '2024-02-05 10:57:35', '2024-02-05 10:57:35'),
(129, 'uploads/product/1707130828-33.webp', 103, '2024-02-05 11:00:28', '2024-02-05 11:00:28'),
(130, 'uploads/product/1707130918-35.webp', 104, '2024-02-05 11:01:58', '2024-02-05 11:01:58'),
(131, 'uploads/product/1707130918-36.webp', 104, '2024-02-05 11:01:58', '2024-02-05 11:01:58'),
(132, 'uploads/product/1707130970-37.webp', 105, '2024-02-05 11:02:50', '2024-02-05 11:02:50'),
(133, 'uploads/product/1707131067-40.webp', 106, '2024-02-05 11:04:27', '2024-02-05 11:04:27'),
(134, 'uploads/product/1707131067-41.webp', 106, '2024-02-05 11:04:27', '2024-02-05 11:04:27'),
(135, 'uploads/product/1707131163-43.webp', 107, '2024-02-05 11:06:03', '2024-02-05 11:06:03'),
(136, 'uploads/product/1707131163-44.webp', 107, '2024-02-05 11:06:03', '2024-02-05 11:06:03'),
(137, 'uploads/product/1707131163-42.webp', 107, '2024-02-05 11:06:03', '2024-02-05 11:06:03'),
(138, 'uploads/product/1707131330-46.webp', 108, '2024-02-05 11:08:50', '2024-02-05 11:08:50'),
(139, 'uploads/product/1707131330-45.webp', 108, '2024-02-05 11:08:50', '2024-02-05 11:08:50'),
(140, 'uploads/product/1707131417-47.webp', 109, '2024-02-05 11:10:17', '2024-02-05 11:10:17'),
(141, 'uploads/product/1707131417-48.webp', 109, '2024-02-05 11:10:17', '2024-02-05 11:10:17'),
(142, 'uploads/product/1707131602-49.webp', 110, '2024-02-05 11:13:22', '2024-02-05 11:13:22'),
(143, 'uploads/product/1707131817-51.webp', 111, '2024-02-05 11:16:57', '2024-02-05 11:16:57'),
(144, 'uploads/product/1707131817-50.webp', 111, '2024-02-05 11:16:57', '2024-02-05 11:16:57'),
(145, 'uploads/product/1707131989-52.webp', 112, '2024-02-05 11:19:49', '2024-02-05 11:19:49'),
(146, 'uploads/product/1707132059-53.webp', 113, '2024-02-05 11:20:59', '2024-02-05 11:20:59'),
(147, 'uploads/product/1707132129-54.webp', 114, '2024-02-05 11:22:09', '2024-02-05 11:22:09'),
(148, 'uploads/product/1707132190-55.webp', 115, '2024-02-05 11:23:10', '2024-02-05 11:23:10'),
(149, 'uploads/product/1707132238-56.webp', 116, '2024-02-05 11:23:58', '2024-02-05 11:23:58'),
(150, 'uploads/product/1707132375-57.webp', 117, '2024-02-05 11:26:15', '2024-02-05 11:26:15'),
(151, 'uploads/product/1707132432-58.webp', 118, '2024-02-05 11:27:12', '2024-02-05 11:27:12'),
(152, 'uploads/product/1707132490-56.webp', 119, '2024-02-05 11:28:10', '2024-02-05 11:28:10'),
(153, 'uploads/product/1707132556-59.webp', 120, '2024-02-05 11:29:16', '2024-02-05 11:29:16'),
(154, 'uploads/product/1707132653-60.webp', 121, '2024-02-05 11:30:53', '2024-02-05 11:30:53'),
(155, 'uploads/product/1707132761-61.webp', 122, '2024-02-05 11:32:41', '2024-02-05 11:32:41'),
(156, 'uploads/product/1707132761-62.webp', 122, '2024-02-05 11:32:41', '2024-02-05 11:32:41'),
(157, 'uploads/product/1707132761-63.webp', 122, '2024-02-05 11:32:41', '2024-02-05 11:32:41'),
(158, 'uploads/product/1707133147-65.webp', 123, '2024-02-05 11:39:07', '2024-02-05 11:39:07'),
(159, 'uploads/product/1707133147-64.webp', 123, '2024-02-05 11:39:07', '2024-02-05 11:39:07'),
(160, 'uploads/product/1707138026-30.webp', 124, '2024-02-05 13:00:26', '2024-02-05 13:00:26'),
(161, 'uploads/product/1707138026-31.webp', 124, '2024-02-05 13:00:26', '2024-02-05 13:00:26'),
(162, 'uploads/product/1707138126-32.webp', 125, '2024-02-05 13:02:06', '2024-02-05 13:02:06'),
(163, 'uploads/product/1707138126-33.webp', 125, '2024-02-05 13:02:06', '2024-02-05 13:02:06'),
(164, 'uploads/product/1707138242-34.webp', 126, '2024-02-05 13:04:02', '2024-02-05 13:04:02'),
(165, 'uploads/product/1707138242-35.webp', 126, '2024-02-05 13:04:02', '2024-02-05 13:04:02'),
(166, 'uploads/product/1707138312-36.webp', 127, '2024-02-05 13:05:12', '2024-02-05 13:05:12'),
(167, 'uploads/product/1707138402-37.webp', 128, '2024-02-05 13:06:42', '2024-02-05 13:06:42'),
(168, 'uploads/product/1707138541-38.webp', 129, '2024-02-05 13:09:01', '2024-02-05 13:09:01'),
(169, 'uploads/product/1707138541-39.webp', 129, '2024-02-05 13:09:01', '2024-02-05 13:09:01'),
(170, 'uploads/product/1707138666-40.webp', 130, '2024-02-05 13:11:06', '2024-02-05 13:11:06'),
(171, 'uploads/product/1707138666-41.webp', 130, '2024-02-05 13:11:06', '2024-02-05 13:11:06'),
(172, 'uploads/product/1707138666-42.webp', 130, '2024-02-05 13:11:06', '2024-02-05 13:11:06'),
(173, 'uploads/product/1709230194-9b42afe8-c27f-421c-9700-0629f4eaded9.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(174, 'uploads/product/1709230194-ada5b601-ea98-4b23-b700-ed548178d053.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(175, 'uploads/product/1709230194-16f00008-489a-4a9e-bb1f-cf520def58f7.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(176, 'uploads/product/1709230194-e346f2e6-6562-4c6b-b78f-8f550b30978b.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(178, 'uploads/product/1717143634-augrbeuws7mbzzznhqeh6426dgmvdubx8nh8kbfo.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(179, 'uploads/product/1717143634-xdgl4vbpzjpyedh8ki8nfienjgq0mtjzvslpiy8b.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(180, 'uploads/product/1717143634-unjqq3ctt8zoun2mxd7axkc4ekjktkxtmxvpsqkh.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(181, 'uploads/product/1717143634-o8b7nks7yjpfxeak1dyq2etsxvp0xbs5ssktv4om.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(182, 'uploads/product/1717143634-yacjpxkyyguzyflbzhzcy8asjqymyeown2kn9dfy.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(183, 'uploads/product/1717143634-wwsw5lgvpkmbkqlnb2djmoby6lywvrr7c0wo2vb5.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(184, 'uploads/product/1717144826-mupn63ybrq0wqdxk4hwfasinrc6kdbbwn8ezmxhi.webp', 133, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(185, 'uploads/product/1717145111-0vcrati9i3yk88re1bze6cfo9eu5fanjnzrrl9nc.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(186, 'uploads/product/1717145111-tu9rmqxguc1gcaehosss7ozdyvyhbhiylloe2opf.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(187, 'uploads/product/1717145111-5xik6q1tuk60ffi7ao1mahfseyswofhkapwztfn9.webp', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(188, 'uploads/product/1717145111-buciivdqytpvh6mbvtsmayw1prpmism78o3grfx7.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(189, 'uploads/product/1717145111-s5youdbdcy7j2dde1mfdyrokees8vxc37kwvuech.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(190, 'uploads/product/1717145265-qprvisrlm0b217fp0wgalukpilbm200rw5lfwazd.jpg', 135, '2024-05-31 14:47:45', '2024-05-31 14:47:45'),
(191, 'uploads/product/1717145442-hinhzbakb2hrupbr97iacj485bribzcqkqg43jft.jpg', 136, '2024-05-31 14:50:42', '2024-05-31 14:50:42'),
(192, 'uploads/product/1717145718-xtg8zlwbyizvd9ontjm26n3ytzogqh3t04s04bms.webp', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(193, 'uploads/product/1717145718-h6kt4q5uiv4szh9gfc8xm645nyt1lz6au717r6wp.webp', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(194, 'uploads/product/1717145718-rfu8p2yly2bsiuogqvxc6aorjsbgvy5wcok6wuib.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(195, 'uploads/product/1717145718-xtg8zlwbyizvd9ontjm26n3ytzogqh3t04s04bms.webp', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(196, 'uploads/product/1717145718-zhtnqlutu1anf3vip00txwdtpvbvqs7lwx7hftmv.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(197, 'uploads/product/1717145718-xorysftrxqcpgnfyk35b1zersezacyylrahac9im.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(198, 'uploads/product/1717145718-rfu8p2yly2bsiuogqvxc6aorjsbgvy5wcok6wuib.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(199, 'uploads/product/1719154173-623a232298259_800x800.jpg', 138, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(200, 'uploads/product/1719301202-64fc1dd61301c_800x800.jpg', 139, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(201, 'uploads/product/1719301202-64fc1dd62ece3_800x800.jpg', 139, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(202, 'uploads/product/1719301736-64fc1e5b03d2c_800x800.jpg', 140, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(203, 'uploads/product/1719301736-64fc1e5ad36c4_800x800.jpg', 140, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(204, 'uploads/product/1719302457-62023d2973570_800x800.jpg', 141, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(205, 'uploads/product/1719304902-juhor-120gb-ssd-.jpg', 142, '2024-06-25 08:41:42', '2024-06-25 08:41:42'),
(206, 'uploads/product/1719471346-622132aba8a87_180x180.jpg', 143, '2024-06-27 06:55:46', '2024-06-27 06:55:46'),
(207, 'uploads/product/1719471432-62024116873f4_180x180.jpg', 144, '2024-06-27 06:57:12', '2024-06-27 06:57:12'),
(208, 'uploads/product/1719471544-62023db59b26c_180x180.jpg', 145, '2024-06-27 06:59:04', '2024-06-27 06:59:04'),
(209, 'uploads/product/1719471691-6200d104ea168_180x180.jpg', 146, '2024-06-27 07:01:31', '2024-06-27 07:01:31'),
(210, 'uploads/product/1719472418-6200c175130ca_180x180.jpg', 147, '2024-06-27 07:13:38', '2024-06-27 07:13:38'),
(211, 'uploads/product/1719472759-6200c20f4299e_180x180.jpg', 148, '2024-06-27 07:19:19', '2024-06-27 07:19:19'),
(212, 'uploads/product/1725999330-02_home.png', 152, '2024-09-11 02:15:30', '2024-09-11 02:15:30'),
(213, 'uploads/product/1725999360-3.png', 153, '2024-09-11 02:16:00', '2024-09-11 02:16:00'),
(214, 'uploads/product/1725999389-4.png', 154, '2024-09-11 02:16:29', '2024-09-11 02:16:29'),
(215, 'uploads/product/1725999415-1.png', 155, '2024-09-11 02:16:55', '2024-09-11 02:16:55'),
(216, 'uploads/product/1725999455-1.demoproduct.jpeg', 156, '2024-09-11 02:17:35', '2024-09-11 02:17:35'),
(217, 'uploads/product/1725999494-1.png', 157, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(218, 'uploads/product/1725999525-3.png', 158, '2024-09-11 02:18:45', '2024-09-11 02:18:45'),
(219, 'uploads/product/1725999694-5.png', 159, '2024-09-11 02:21:34', '2024-09-11 02:21:34'),
(220, 'uploads/product/1726171429-about-img01.png', 160, '2024-09-13 02:03:49', '2024-09-13 02:03:49'),
(221, 'uploads/product/1726511973-about-img01.png', 161, '2024-09-17 00:39:33', '2024-09-17 00:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT 0,
  `old_price` int(11) DEFAULT NULL,
  `new_price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pro_unit` varchar(191) DEFAULT NULL,
  `pro_video` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `topsale` tinyint(4) DEFAULT NULL,
  `feature_product` tinyint(4) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `feature_product`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(132, 'Bluetooth Speaker & FM Radio With Wireless Mobile Charger, LED Table Lamp Color Changing Rechargeable Desk Lights Code : 4147', 'bluetooth-speaker-&-fm-radio-with-wireless-mobile-charger,-led-table-lamp-color-changing-rechargeable-desk-lights-code-:-4147-132', 6, 0, NULL, NULL, 'P0001', 1110, 1599, 1499, 100, NULL, NULL, '<ul style=\"font-family: Lato, sans-serif; margin-bottom: 10px; color: rgb(51, 51, 51);\"><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">【Multi-functional wireless charger atmosphere lamp】This speaker with light with wireless charger is not only an atmosphere lamp, but also has 15W fast wireless charging, Bluetooth speaker, music, sleep lamp, sunrise wake-up lamp, atmosphere lamp, bedside lamp, dazzling light effect, bluetooth audio etc. You can use this bluetooth light speaker when working, studying, reading and sleeping.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">【15W fast charger】With a 15W fast wireless charger, the charging speed of this bedroom lamp is far faster than you can . You can use this led g shape bluetooth speaker in any place where you need to charge your mobile phone etc., such as the bedside, bedroom, living room, home and office. This bed lights for night for bedroom really practical.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">【Cordless Night Light】This smart led lamp with bluetooth speaker and wireless charger is equipped with a 1200Mah battery, which can be fully charged in 2-3 hours by USB. When fully charged, you can play music for 6 hours. You can pick this table lamp with wireless charger up and use it in the bedside, bedroom, living room, home and office. Note: The wireless charging function needs to be plugged in.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">【Perfect Decoration and Gift】The g lamp multi function wireless charger can help you create any mood you want, perfect for bed, bedroom, living room, home, office decoration, wireless charging lamp is an ideal gift for birthday, Christmas, New Year, Thanksgiving and more.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">【Technology Design】This intelligent atmosphere lamp bluetooth speaker wireless charger is both beautiful and functional. led night light bedroom provides aesthetic lighting for desk environment and has a speaker so you can listen to your favorite music while you work.</li></ul>', NULL, 1, 0, NULL, 1, '2024-05-31 14:20:34', '2024-05-31 14:21:20'),
(133, 'T-Shirt (Eider Diner Kosai) for EID Special Code : 4817', 't-shirt-(eider-diner-kosai)-for-eid-special-code-:-4817-133', 1, 3, 0, NULL, 'P0133', 130, 299, 200, 100, NULL, NULL, '<ul style=\"font-family: Lato, sans-serif; margin-bottom: 10px; color: rgb(51, 51, 51);\"><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">China PP Jersey Fabrics T-Shirt</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Product Title:&nbsp;Affordable Excellence.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Comfort: KEEPS YOU DRY.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Fit: Regular Fit.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Fabric GSM: 150 (+- 10).</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Yarn Materials: Taiwan fine microfiber polyester &amp; spandex.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Print &amp; Fabric wash&nbsp;guarantee.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Care instruction:&nbsp;Non-chlorine, Bleach when needed.</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Manufacturing: Bangladesh.</li></ul><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">&nbsp;</p>', NULL, 1, 0, NULL, 1, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(134, 'Mini Boost Harmonic Distortion Thunder Beat Sound Portable Wireless 10 W Bluetooth Speaker Code : 4170', 'mini-boost-harmonic-distortion-thunder-beat-sound-portable-wireless-10-w-bluetooth-speaker-code-:-4170-134', 6, 47, 0, NULL, 'P0134', 255, 499, 399, 100, NULL, NULL, '<ul style=\"font-family: Lato, sans-serif; margin-bottom: 10px; color: rgb(51, 51, 51);\"><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Power Output(RMS): 10 W</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Power Source: BATTERY</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Battery life: 8 hr | Charging time: 2 hr</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Bluetooth Version: 0.5</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Wireless range: 10 m</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Wireless music streaming via Bluetooth</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Memory Card Slot</li></ul>', NULL, 0, 0, NULL, 1, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(135, 'দুবাই চেরি কাপড় ১ পার্ট বোরখা এমব্রয়ডারি ওয়ার্ক Code : 4820', 'দুবাই-চেরি-কাপড়-১-পার্ট-বোরখা-এমব্রয়ডারি-ওয়ার্ক-code-:-4820-135', 2, 11, 0, NULL, 'P0135', 1450, 2000, 1850, 100, NULL, NULL, '<p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">100% অরজিনাল দুবাই চেরি কাপড় ১ পার্ট বোরখা এমব্রয়ডারি ওয়ার্ক এক কালার&nbsp;</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">Long size 50/52/54/56</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">Body size&nbsp;40/42/44/46</p>', NULL, 1, 0, NULL, 1, '2024-05-31 14:47:45', '2024-05-31 14:47:45'),
(136, '8 pieces king size Panel Bedcover set Code : 4078', '8-pieces-king-size-panel-bedcover-set-code-:-4078-136', 7, 48, 0, NULL, 'P0136', 1210, 1800, 1450, 100, NULL, NULL, '<p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">Cotton Design Bedsheet (8pcs Set)</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">৮ পিসের কুচি দেওয়া ও ডিজাইন করা বেড কভার</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">কিং সাইজ ডাবল বেড কাভার ।</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">মেটারিয়াল-১০০% সুতি ।</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">প্যানেল বেডশীট সেট।</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">সাইজঃ ৭.৫ ফুট X ৮ ফুট (প্রায়), ২টি বালিশ কভার (20 inches × 27 inches)</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">কালার গ্যারান্টিসহ ৮ পিসের বেডশীট সেটে যা পাচ্ছেন:</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">১ টি বিছানার চাদর, ২ টি বালিশের কাভার, ১ টি কোল বালিশের কাভার, ২ টি কুশন কাভার, ১ টি টিস্যু বক্স কাভার, ১ টি পাপোশ ।</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">যা ঘরকে করবে মোহনীয় ও সুন্দর।</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">আপনার ঘরে এনে দেবে আধুনিকতার ছোঁয়া ।</p><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\">প্রিয়জনকে দেবার মত আকর্ষণীয় উপহার।</p>', NULL, 1, 0, NULL, 1, '2024-05-31 14:50:42', '2024-05-31 14:50:42'),
(137, 'T900 Ultra Smart Watch Code : 4103', 't900-ultra-smart-watch-code-:-4103-137', 9, 0, NULL, NULL, 'P0137', 750, 1299, 1000, 100, NULL, NULL, '<h2 style=\"font-family: Lato, sans-serif; color: rgb(51, 51, 51); margin-top: 20px; font-size: 30px;\">T900 Ultra Smart Watch</h2><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\"><strong style=\"font-weight: bold;\">Feature :</strong></p><ul style=\"font-family: Lato, sans-serif; margin-bottom: 10px; color: rgb(51, 51, 51);\"><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">RAM: 196KB</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">ROM: 1MB+64MB</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Wireless charging capability</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Shows notification of Calls / Email / SMS / WhatsApp / WeChat &amp; etc</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Color: Black, Orange</li></ul><p style=\"font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 20px; color: rgb(51, 51, 51);\"><strong style=\"font-weight: bold;\">Specification :</strong></p><ul style=\"font-family: Lato, sans-serif; margin-bottom: 10px; color: rgb(51, 51, 51);\"><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">product name :T900Ultra smart watch</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Color :Multi color</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">System Requirements :android5.0+ / ios10.0+</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Charge Mode :Wireless charging</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">APP:Hiwatch Pro</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Bracelet memory :128M</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Screen display :2.02-inch IPS screen, resolution 240*286</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Battery capacity :230 MAH</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Usage time :About 10 days</li><li style=\"list-style: none; padding: 0px 0px 7px 10px;\">Button method : Full screen touch</li></ul>', NULL, 1, 0, NULL, 1, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(138, 'Mini Portable Pocket Shaver', 'mini-portable-pocket-shaver-138', 1, 0, NULL, NULL, 'P0138', 500, 900, 800, 500, NULL, NULL, '<p style=\"margin-top: inherit; margin-right: inherit; margin-bottom: 1.3em; margin-left: inherit; padding: 0px; font-family: Lato, sans-serif; font-size: medium; color: rgb(102, 102, 102); line-height: 21px;\"><span style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; font-weight: bolder;\">ওয়ারেন্টিঃ ২ বছর</span></p><p style=\"margin-top: inherit; margin-right: inherit; margin-bottom: 1.3em; margin-left: inherit; padding: 0px; font-family: Lato, sans-serif; font-size: medium; color: rgb(102, 102, 102); line-height: 21px;\">* শক্তিশালী মোটর: শক্তিশালী কাটিং, ক্লিন শেভ করা এখন হবে দ্রুত এবং শ্রম-সঞ্চয়।<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* USB চার্জিং: এই বৈদ্যুতিক হেয়ার ক্লিপার বিভিন্ন চার্জিং পদ্ধতি সমর্থন করে, এবং USB পোর্ট সহ ল্যাপটপ, পাওয়ার ব্যাঙ্ক এবং অন্যান্য ডিভাইসগুলির সাথে চার্জ করা যেতে পারে৷<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* কাটার মাথা: ধারালো ব্লেড মসৃণভাবে ও বিভিন্ন সূক্ষ্ম দাড়ি কাটে।</p><p style=\"margin-top: inherit; margin-right: inherit; margin-bottom: 1.3em; margin-left: inherit; padding: 0px; font-family: Lato, sans-serif; font-size: medium; color: rgb(102, 102, 102); line-height: 21px;\">বর্ণনা:<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">এই শেভারটি আকারে ছোট, বহন করা সহজ এবং এটি ভ্রমণের সময়ও আপনাকে একটি ভিন্ন স্টাইলিং অভিজ্ঞতা এনে দিতে পারে।</p><p style=\"margin-top: inherit; margin-right: inherit; margin-bottom: 1.3em; margin-left: inherit; padding: 0px; font-family: Lato, sans-serif; font-size: medium; color: rgb(102, 102, 102); line-height: 21px;\">স্পেসিফিকেশন:<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* উপাদান : aluminum alloy<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* চার্জিং: 2X ইউএসবি ফাস্ট চারজিং।<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* চার্জিং টাইম: 2 ঘণ্টা।<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* উজিং টাইম: 30মিনিট<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* সাইজ: 106*26 সেমি।<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* ব্যাটারি ক্ষমতা: 600mAh</p><p style=\"margin-top: inherit; margin-right: inherit; margin-bottom: 1.3em; margin-left: inherit; padding: 0px; font-family: Lato, sans-serif; font-size: medium; color: rgb(102, 102, 102); line-height: 21px;\">প্যাকেজ অন্তর্ভুক্ত:<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* 1 পিসি শেভার।<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* 1pc USB চার্জিং কেবল।<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* 1 পিসি ইংরেজি ম্যানুয়াল।<br style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif;\">* 1 পিসি কালার বক্স।</p><p style=\"margin-top: inherit; margin-right: inherit; margin-bottom: 1.3em; margin-left: inherit; padding: 0px; font-family: Lato, sans-serif; font-size: medium; color: rgb(102, 102, 102); line-height: 21px;\"><img src=\"https://i0.wp.com/cdn.shopify.com/s/files/1/0586/3718/9283/files/01_1_8b76e39f-3d6f-474c-9ab9-7730db841337_480x480.gif?w=1020&amp;ssl=1\" data-recalc-dims=\"1\" class=\"jetpack-lazy-image jetpack-lazy-image--handled\" data-lazy-loaded=\"1\" loading=\"eager\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; border: 0px; max-width: 100%; height: auto; display: inline-block; transition: opacity 1s ease 0s; opacity: 1;\"></p>', NULL, 1, 0, NULL, 1, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(139, 'Previous Next Hot & Useful Ladies Air Sports Bra (Color-Pink)', 'previous-next-hot-&-useful-ladies-air-sports-bra-(color-pink)-139', 11, 0, NULL, NULL, 'P0139', 500, 1250, 650, 500, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">সুবিধা</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">১.এই ব্রা নিয়মিত ব্যবহার করলে বডি ফিটনেস সুন্দর থাকবে।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">২.মেরুদন্ডকে সোজা রাখতে সাহায্য করে</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">৩.ঝুলে পড়া ব্রেস্টকে সুন্দর শেইপে আনবে।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">৪. পড়ার পর পিঠে ভাঁজ পরে থাকবে না, ড্রেস পড়ার পর তাই পেছন থেকে সুন্দর দেখাবে।</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">৫. পরার পর খুব রিল্যাক্স ফিল‌ করবেন।</p>', NULL, 0, 0, NULL, 1, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(140, 'Hot & Useful Ladies Air Sports Bra (Color-Black)', 'hot-&-useful-ladies-air-sports-bra-(color-black)-140', 2, 0, NULL, NULL, 'P0140', 300, 1350, 600, 500, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">সুবিধা</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">১.এই ব্রা নিয়মিত ব্যবহার করলে বডি ফিটনেস সুন্দর থাকবে।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">২.মেরুদন্ডকে সোজা রাখতে সাহায্য করে</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">৩.ঝুলে পড়া ব্রেস্টকে সুন্দর শেইপে আনবে।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">৪. পড়ার পর পিঠে ভাঁজ পরে থাকবে না, ড্রেস পড়ার পর তাই পেছন থেকে সুন্দর দেখাবে।</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-family: Inter, sans-serif; color: rgb(33, 37, 41); font-size: medium; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">৫. পরার পর খুব রিল্যাক্স ফিল‌ করবেন।</p>', NULL, 0, 0, NULL, 1, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(141, 'Relax & Spin Tone Slimming Toning & Relaxing Body Massager', 'relax-&-spin-tone-slimming-toning-&-relaxing-body-massager-141', 11, 0, NULL, NULL, 'P0141', 300, 750, 500, 500, NULL, NULL, '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 1.41575em; margin-left: 3em; padding: 0px; font-family: &quot;Source Sans Pro&quot;, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: medium; list-style-position: initial; list-style-image: initial; color: rgb(109, 109, 109);\"><li class=\"\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Suitable for use on all body parts</li><li class=\"\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Light, handy and convenient</li><li class=\"\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Streamlined design, aesthetic outer design</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.e360713ebvwSML\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Easy to use, helps relieve pain and relax muscles while having a slimming effect at the same time</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.e360713ebvwSML\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Multipurpose handheld massager comes with exchangeable heads: Wavy Attachment</li><li class=\"\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Mesh Cover Attachment</li><li class=\"\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Flat Attachment</li><li class=\"\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Micro Filler Attachment</li><li class=\"\" style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Roller Attachment</li></ul><ul style=\"margin-right: 0px; margin-bottom: 1.41575em; margin-left: 3em; padding: 0px; font-family: &quot;Source Sans Pro&quot;, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: medium; list-style-position: initial; list-style-image: initial; color: rgb(109, 109, 109);\"><li style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">High-frequency vibration dislodges fats, resulting in decomposition of fats and achieving fat reduction</li><li style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\"><span data-spm-anchor-id=\"a2a0e.pdp.product_detail.i4.e360713ebvwSML\" style=\"margin: 0px; padding: 0px;\">Length of wire: 145cm</span></li><li style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Machine dimension: 17cm x 11cm x 14cm</li><li style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Input voltage: 110V/220V, 50Hz</li><li style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Maximum watt: 25W</li><li style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Speed: 2500 RPM</li><li style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">Material:ABS/PVC</li><li style=\"margin: 0px; padding: 0px; font-family: Ubuntu-Regular, sans-serif; list-style-type: none;\">360 Degree off-centered axis design</li></ul>', NULL, 0, 0, NULL, 1, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(142, 'SSD 256 GB', 'ssd-256-gb-142', 6, 0, NULL, NULL, 'P0142', 2500, 4000, 2950, 200, NULL, NULL, '<p>Ssd 256gb</p>', NULL, 0, 0, NULL, 1, '2024-06-25 08:41:42', '2024-06-25 08:41:42'),
(143, 'Household Kitchen Washing Liquid Dish Brush', 'household-kitchen-washing-liquid-dish-brush-143', 7, 0, NULL, NULL, 'P0143', 500, 1500, 1200, 100, NULL, NULL, '<p style=\"margin-bottom: var(--wd-tags-mb); margin-right: 0px; margin-left: 0px; color: rgb(102, 102, 102); line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; overflow-wrap: break-word; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit;\">Add liquid cleaning pot brush, liquid storage design presses out liquid, PP bristles, strong cleaning power, easy to wash all kinds of materials, does not hurt the utensils</p><p style=\"margin-bottom: var(--wd-tags-mb); margin-right: 0px; margin-left: 0px; color: rgb(102, 102, 102); line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; overflow-wrap: break-word; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit;\">The liquid storage hand-held pot brush makes the boring and clean cleaning interesting</p><p style=\"margin-bottom: var(--wd-tags-mb); margin-right: 0px; margin-left: 0px; color: rgb(102, 102, 102); line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; overflow-wrap: break-word; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit;\">Gently press to flow out</p><p style=\"margin-bottom: var(--wd-tags-mb); margin-right: 0px; margin-left: 0px; color: rgb(102, 102, 102); line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; overflow-wrap: break-word; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit;\">Add a liquid cleaning brush to add the detergent to the handle</p><p style=\"margin-bottom: var(--wd-tags-mb); margin-right: 0px; margin-left: 0px; color: rgb(102, 102, 102); line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; overflow-wrap: break-word; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit;\">Intimate storage base for easy storage and let the brush drain naturally</p><p data-spm-anchor-id=\"a2g0o.detail.1000023.i0.605069a4T2kCdr\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(102, 102, 102); line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; overflow-wrap: break-word; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit;\">Round shape, touch every corner, small size, easy to clean the gap and dirty</p>', NULL, 0, 0, NULL, 1, '2024-06-27 06:55:46', '2024-06-27 06:55:46'),
(144, 'সিঙ্গেল সিম সাপোর্টেড ল্যান্ডফোন কালো কালার', 'সিঙ্গেল-সিম-সাপোর্টেড-ল্যান্ডফোন-কালো-কালার-144', 1, 0, NULL, NULL, 'P0144', 450, 1500, 1200, 500, NULL, NULL, '<p><span style=\"color: rgb(51, 51, 51); font-family: raleway, sans-serif;\">আপনার শক্তিশালী নেটওয়ার্ক প্রয়োজন ? তাই এখুনি অর্ডার করুন GSM সিম সাপোর্টেড ল্যান্ডফোন!! ১০০%নেটওয়ার্ক পায় কর্ডলেস ফোনফিচার SMS Voice Mail, ২G GSM: 900/1800MHZGSM স্টান্ডার্ড হাই কোয়ালিটি ভয়েস সার্ভিসেস (FR, EFR, HR speech coding) ইমার্জেন্সি কল সার্ভিস, সাপ্লিমেন্টারি সার্ভিস: কলার আইডি, কল ফরোয়াডিং, কল ওয়েটিং, কল হোল্ড, থ্রি-ওয়ে কলিং, শর্ট মেসেজ ও 500 এন্ট্রি ফোনবুক এটা তে আপনা যে কোন মোবাইল অপারেটর এর সিম ব্যবহার করতে পারবেন রিচার্জেবেল তাই যেকোনো জায়জায় সহজেই নিয়ে যেতে পারবেন এন্টেনা থাকায় এটা সিগন্যাল খুব ভালো পায়।</span><br></p>', NULL, 0, 0, NULL, 1, '2024-06-27 06:57:12', '2024-06-27 06:57:12'),
(145, 'Five Spring Tummy Trimmer', 'five-spring-tummy-trimmer-145', 1, 0, NULL, NULL, 'P0145', 600, 1800, 1200, 200, NULL, NULL, '<p><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Functions:</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">ABS engineering plastic carbon spring steel wire tension is full and thick buckle.</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Specification:</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Material: ABS Engineering Plastic Carbon Spring</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Color: Black Red</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Product Dimensions: (Dual-purpose tensioner) 650*110*30mm/25.6*4.3*1.2in, (Triple-purpose tensioner) 680*340*30mm/26.8*13.4*1.2in</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Net weight: (Dual-purpose tensioner) 760g, (Triple-purpose tensioner) 1100g</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Gross weight: (Dual-purpose tensioner) 760g, (Three-purpose tensioner) 1100g</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Scope of application: Fitness</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Usage: Mainly train the muscles of the upper body and forechest.</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Main efficacy: Exercise arm strength/grip strength/waist strength.</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">Notes:</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">1. Please allow 1-3cm measuring deviation due to manual measurement.</span><br open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; padding: 0px; margin: 0px;\"><span open=\"\" sans\",=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;;\">2. Due to the different monitor and light effect, the actual color of the item might be slightly different from the color showed on the pictures. Thank you!&nbsp;</span><br></p>', NULL, 0, 0, NULL, 1, '2024-06-27 06:59:04', '2024-06-27 06:59:04'),
(146, 'ফ্রিজ ওয়াশিং মেশিন মুভিং স্ট্যান্ড BIG SIZE', 'ফ্রিজ-ওয়াশিং-মেশিন-মুভিং-স্ট্যান্ড-big-size-146', 1, 0, NULL, NULL, 'P0146', 150, 550, 4500, 200, NULL, NULL, '<p><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">Handy pallet is easy to navigate with 360 degrees rotating wheels</span><br open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\"><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">No more struggling and backaches. Rearrange bulky furniture with ease or move heavy objects effortlessly with the Handy Pallet</span><br open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\"><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">Max Weight 130KG</span><br open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\"><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">Max Size: 54cm x 54cm</span><br></p>', NULL, 0, 0, NULL, 1, '2024-06-27 07:01:31', '2024-06-27 07:01:31'),
(147, 'Foot Repair Cream', 'foot-repair-cream-147', 1, 0, NULL, NULL, 'P0147', 800, 1500, 1000, 100, NULL, NULL, '<li ..=\"\" image=\"\" right-arrow.png\");=\"\" background-position:=\"\" initial;=\"\" background-size:=\"\" background-repeat:=\"\" no-repeat;=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" padding-left:=\"\" 25px;=\"\" margin-bottom:=\"\" 10px;=\"\" list-style-type:=\"\" none=\"\" !important;\"=\"\" style=\"color: rgb(51, 51, 51); font-family: raleway, sans-serif; background-image: url(&quot;&quot;);\"><font color=\"#333333\" face=\"raleway, sans-serif\"><span style=\"font-size: 16px;\">1. রুক্ষ, শুষ্ক, ফাটা এবং ফাটা পায়ের ত্বক ৩ দিনের মধ্যে কার্যকরী ফল পাওয়া যায়।</span></font></li><li ..=\"\" image=\"\" right-arrow.png\");=\"\" background-position:=\"\" initial;=\"\" background-size:=\"\" background-repeat:=\"\" no-repeat;=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" padding-left:=\"\" 25px;=\"\" margin-bottom:=\"\" 10px;=\"\" list-style-type:=\"\" none=\"\" !important;\"=\"\" style=\"color: rgb(51, 51, 51); font-family: raleway, sans-serif; background-image: url(&quot;&quot;);\"><font color=\"#333333\" face=\"raleway, sans-serif\"><span style=\"font-size: 16px;\">2. ত্বকের গভীরে, পুঙ্খানুপুঙ্খভাবে ত্বক মেরামত করে, পুরু, রুক্ষ, কালো ত্বক দূর করে।</span></font></li><li ..=\"\" image=\"\" right-arrow.png\");=\"\" background-position:=\"\" initial;=\"\" background-size:=\"\" background-repeat:=\"\" no-repeat;=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" padding-left:=\"\" 25px;=\"\" margin-bottom:=\"\" 10px;=\"\" list-style-type:=\"\" none=\"\" !important;\"=\"\" style=\"color: rgb(51, 51, 51); font-family: raleway, sans-serif; background-image: url(&quot;&quot;);\"><font color=\"#333333\" face=\"raleway, sans-serif\"><span style=\"font-size: 16px;\">3. অ্যান্টি-ফাঙ্গাল এবং অ্যান্টি-ব্যাকটেরিয়াল, অ্যাথলেটের পা অপসারণ করে এবং ত্বকে চুলকানি এবং অস্বস্তি দূর করে।</span></font></li>', NULL, 0, 0, NULL, 1, '2024-06-27 07:13:38', '2024-06-27 07:13:38'),
(148, 'Shoes Whitening Cleansing Gel, Shoe Stain Remover', 'shoes-whitening-cleansing-gel,-shoe-stain-remover-148', 2, 0, NULL, NULL, 'P0148', 500, 1400, 1200, 100, NULL, NULL, '<p><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">How to Use:</span><br open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\"><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">1.Clean generally</span><br open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\"><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">2.Stick the tape</span><br open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\"><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">3.Apply the gel about 3-5mm</span><br open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\"><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">4.Let stand for 1-3hours</span><br open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\"><span open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"font-family: &quot;Circular Std Book&quot;; color: rgb(102, 102, 102); font-size: 13px;\">5.Wipe off and clean</span><br></p>', NULL, 0, 0, NULL, 1, '2024-06-27 07:19:19', '2024-06-27 07:19:19'),
(152, 'Electronics2', 'electronics2-149', 1, 0, NULL, NULL, 'P0149', 500, 700, 650, 50, NULL, NULL, '<p>vvwfdav</p>', NULL, 0, 0, NULL, 1, '2024-09-11 02:15:30', '2024-09-11 02:15:30'),
(153, 'Electronics3', 'electronics3-153', 1, 0, NULL, NULL, 'P0153', 500, 700, 650, 50, NULL, NULL, '<p>saGVd</p>', NULL, 0, 0, NULL, 1, '2024-09-11 02:16:00', '2024-09-11 02:16:00'),
(154, 'Electronics4', 'electronics4-154', 1, 0, NULL, NULL, 'P0154', 500, 700, 650, 50, NULL, NULL, '<p>ewhg</p>', NULL, 0, 0, NULL, 1, '2024-09-11 02:16:29', '2024-09-11 02:16:29'),
(155, 'Electronics5', 'electronics5-155', 1, 0, NULL, NULL, 'P0155', 500, 700, 650, 50, NULL, NULL, '<p>qwEEEEEEEEEEEEEEEEE</p>', NULL, 0, 0, NULL, 1, '2024-09-11 02:16:55', '2024-09-11 02:16:55'),
(156, 'Electronics6', 'electronics6-156', 1, 0, NULL, NULL, 'P0156', 500, 700, 650, 50, NULL, NULL, '<p>DWFAssssssssssss</p>', NULL, 0, 0, NULL, 1, '2024-09-11 02:17:35', '2024-09-11 02:17:35'),
(157, 'Electronics7', 'electronics7-157', 1, 0, NULL, NULL, 'P0157', 500, 700, 650, 50, NULL, NULL, '<p>asdag</p>', NULL, 0, 0, NULL, 1, '2024-09-11 02:18:14', '2024-09-11 02:18:14');
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `feature_product`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(158, 'Electronics8', 'electronics8-158', 1, 0, NULL, NULL, 'P0158', 500, 700, 650, 50, NULL, NULL, '<p>SADDDDDDDDDDDDDD</p>', NULL, 0, 0, NULL, 1, '2024-09-11 02:18:45', '2024-09-11 02:18:45'),
(159, 'Electronics9', 'electronics9-159', 1, 0, NULL, NULL, 'P0159', 500, 700, 650, 50, NULL, NULL, '<p>EEEEEEEEEEEEEE</p>', NULL, 0, 0, NULL, 1, '2024-09-11 02:21:34', '2024-09-11 02:21:34'),
(160, 'foul product', 'foul-product-160', 9, 0, NULL, 2, 'P0160', 500, 700, 650, 50, NULL, '_wcWcVua2gA?si=GxJLOm4hpqGeeNK-', '<p>foul</p>', NULL, 1, 0, NULL, 1, '2024-09-13 02:03:49', '2024-09-13 02:06:10'),
(161, 'test product', 'test-product-161', 2, 0, NULL, 2, 'P0161', 6000, 7000, 6500, 50, NULL, NULL, '<p>goog product</p>', NULL, 1, 0, NULL, 1, '2024-09-17 00:39:33', '2024-09-17 00:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 13, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 1, 14, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(4, 1, 15, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(5, 35, 7, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(6, 35, 8, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(7, 35, 9, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(8, 28, 6, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(9, 28, 7, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(10, 28, 8, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(11, 28, 9, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(12, 2, 6, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(13, 2, 7, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(14, 2, 8, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(15, 131, 6, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(16, 131, 7, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(17, 131, 8, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(18, 131, 9, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(19, 131, 10, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(20, 133, 6, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(21, 133, 7, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(22, 133, 8, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(23, 133, 9, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(24, 133, 10, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(25, 139, 6, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(26, 139, 7, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(27, 139, 9, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(28, 139, 10, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(29, 140, 6, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(30, 140, 7, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(31, 140, 8, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(32, 140, 9, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(33, 141, 6, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(34, 141, 7, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(35, 141, 8, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(36, 141, 9, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(37, 152, 6, '2024-09-11 02:15:30', '2024-09-11 02:15:30'),
(38, 157, 7, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(39, 157, 9, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(40, 160, 7, '2024-09-13 02:03:49', '2024-09-13 02:03:49'),
(41, 160, 9, '2024-09-13 02:03:49', '2024-09-13 02:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `ratting` varchar(4) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `ratting`, `review`, `product_id`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Omor Faruk', 'N / A', '5', 'Nice product,,,', 75, 13, 'active', '2024-02-05 08:49:50', '2024-02-19 07:02:29'),
(2, 'Samiul Alom', 'N / A', '5', 'nice product', 123, 11, 'pending', '2024-02-10 08:00:20', '2024-02-10 08:00:20'),
(3, 'Samiul Alom', 'N / A', '5', 'nice product', 99, 11, 'pending', '2024-02-10 09:33:38', '2024-02-10 09:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-01-11 06:33:09', '2023-01-11 06:33:09'),
(3, 'Editor', 'web', '2023-01-19 06:41:33', '2023-01-19 06:41:33'),
(4, 'Salesman', 'web', '2023-01-19 06:42:28', '2023-01-19 06:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 4),
(6, 1),
(6, 4),
(7, 1),
(7, 3),
(7, 4),
(8, 1),
(8, 4),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `secondbanners`
--

CREATE TABLE `secondbanners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `secondbanners`
--

INSERT INTO `secondbanners` (`id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(4, 'https://work.suvroit.online/category/gadgets-&-electronics', '20250128020356.jpg', '2025-01-28 02:01:16', '2025-01-28 02:10:55'),
(5, 'https://work.suvroit.online/category/womens-fashion', '20250128020412.jpg', '2025-01-28 02:01:27', '2025-01-28 02:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `area` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `customer_id`, `name`, `phone`, `address`, `area`, `created_at`, `updated_at`) VALUES
(11, 11, 26, 'MD HABIBUL BASAR', '01774364115', 'House/Holding:, Village/Street: Ismailpur, Post Office: Sadopara - 6251, Bagmara, Rajshahi', 'ঢাকার বাহিরে  ১৩৫ টাকা', '2024-05-31 15:19:45', '2024-05-31 15:19:45'),
(12, 12, 25, 'MD HABIBUL BASAR', '01774364116', 'House/Holding:, Village/Street: Ismailpur, Post Office: Sadopara - 6251, Bagmara, Rajshahi', 'ঢাকার ভিতরে ৭০ টাকা', '2024-05-31 15:21:19', '2024-05-31 15:21:19'),
(13, 13, 25, 'MD HABIBUL BASAR', '01774364116', 'House/Holding:, Village/Street: Ismailpur, Post Office: Sadopara - 6251, Bagmara, Rajshahi', 'ঢাকার ভিতরে ৭০ টাকা', '2024-05-31 15:23:37', '2024-05-31 15:23:37'),
(14, 14, 27, '345', '01903845533', '0326-09 Nurul Amin Khan Road, Uttar Bazar, Gouripur', 'ঢাকার ভিতরে ৭০ টাকা', '2024-06-03 12:05:07', '2024-06-03 12:05:07'),
(15, 15, 28, '24323', '01903823423', '0326-09 Nurul Amin Khan Ro24', 'ঢাকার বাহিরে  ১৩৫ টাকা', '2024-06-03 12:05:42', '2024-06-05 11:49:27'),
(16, 16, 25, 'MD HABIBUL BASAR', '01774364116', 'House/Holding:, Village/Street: Ismailpur, Post Office: Sadopara - 6251, Bagmara, Rajshahi', 'ঢাকার বাহিরে  ১৩৫ টাকা', '2024-06-05 11:42:33', '2024-06-05 11:43:16'),
(17, 17, 29, 'Shihab Sarker', '01927101320', 'Gazipur. Dhaka. Bangladesh', 'ঢাকার বাহিরে  ১৩৫ টাকা', '2024-06-05 16:39:11', '2024-06-05 16:39:11'),
(18, 18, 29, 'Shihab Sarker', '01927101320', 'Gazipur. Dhaka. Bangladesh', 'ঢাকার বাহিরে  ১৩৫ টাকা', '2024-06-05 16:40:24', '2024-06-05 16:46:58'),
(19, 19, 1, 'MD HABIBUL BASAR', '01738154732', 'House/Holding:, Village/Street: Ismailpur, Post Office: Sadopara - 6251, Bagmara, Rajshahi', 'ঢাকার ভিতরে ৭০ টাকা', '2024-06-06 09:03:31', '2024-06-06 09:03:31'),
(20, 20, 33, 'Md Masudur Rahman', '01712554769', 'Melandah Bajar, Jamalpur', 'ঢাকার বাহিরে  ১৩৫ টাকা', '2024-06-25 08:44:25', '2024-06-25 08:46:05'),
(21, 21, 34, 'hth', '01753048343', 'gdesfdegr', 'ঢাকার ভিতরে ৭০ টাকা', '2024-07-04 00:20:27', '2024-07-04 00:20:27'),
(22, 22, 34, 'Demo', '01753048343', 'Dhks', 'ঢাকার ভিতরে ৭০ টাকা', '2024-07-04 00:21:23', '2024-07-04 00:21:23'),
(23, 23, 35, 'Sabbir Ahmed', '01751155302', 'Ishwardi', 'Pabna', '2024-09-12 23:30:54', '2024-09-12 23:30:54'),
(24, 24, 35, 'Sabbir Ahmed', '01751155302', 'Ishwardi', 'Pabna', '2024-09-13 01:55:01', '2024-09-13 01:55:01'),
(25, 25, 36, 'Test', '01875930000', 'jamalpur/1/13', 'ঢাকার ভিতরে 90 টাকা', '2024-09-16 19:01:35', '2024-09-16 19:01:35'),
(26, 26, 37, 'Md Tanvir Khan', '01828560797', 'Dhaka', 'ঢাকার ভিতরে 90 টাকা', '2024-09-16 20:05:53', '2024-09-16 20:05:53'),
(27, 27, 35, 'sabbir', '01751155302', 'shaka', 'ঢাকার ভিতরে 90 টাকা', '2024-09-16 21:32:57', '2024-09-16 21:32:57'),
(28, 28, 35, 'sabbir', '01751155302', 'dhaka', 'ঢাকার ভিতরে 90 টাকা', '2024-09-16 21:54:42', '2024-09-16 21:54:42'),
(29, 29, 35, 'sabbir', '01751155302', 'rajshahi', 'ঢাকার বাহিরে  ১৩৫ টাকা', '2024-09-16 22:33:54', '2024-09-16 22:33:54'),
(30, 30, 38, 'sabbir', '01862791298', 'dkjsdllsd;k', 'sabbir ahmed', '2024-09-16 22:55:02', '2024-09-16 22:55:02'),
(31, 31, 35, 'sabbir', '01751155302', 'dhaka', 'ঢাকার ভিতরে 90 টাকা', '2024-09-17 00:36:28', '2024-09-17 00:36:28'),
(32, 32, 35, 'sabbir', '01751155302', 'rajshahi', 'Pabna', '2024-09-17 00:41:24', '2024-09-17 00:41:24'),
(33, 33, 37, 'Tanvir khan', '01828560797', 'Hahajaj', 'ঢাকার ভিতরে 90 টাকা', '2024-09-17 13:32:29', '2024-09-17 13:32:29'),
(34, 34, 39, 'zsdf', '00000000000', 'House#9;Road#35;Sector-7;Uttara', 'Pabna', '2025-01-28 10:52:11', '2025-01-28 10:52:11'),
(35, 35, 35, 'sabbir', '01751155302', 'dhaka', 'ঢাকার ভিতরে 90 টাকা', '2025-03-12 17:31:03', '2025-03-12 17:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ঢাকার ভিতরে 90 টাকা', 90, '1', '2023-08-04 10:34:54', '2024-09-12 15:40:57'),
(2, 'ঢাকার বাহিরে  ১৩৫ টাকা', 135, '1', NULL, NULL),
(3, 'sabbir ahmed', 60, '1', '2024-09-12 16:40:05', '2024-09-12 16:40:05'),
(4, 'Pabna', 70, '1', '2024-09-12 16:57:39', '2024-09-12 16:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(6, 'S', '1', '2024-02-05 09:38:42', '2024-02-05 09:38:42'),
(7, 'M', '1', '2024-02-05 09:38:46', '2024-02-05 09:38:46'),
(8, 'L', '1', '2024-02-05 09:38:51', '2024-02-05 09:38:51'),
(9, 'XL', '1', '2024-02-05 09:38:57', '2024-02-05 09:38:57'),
(10, 'XXL', '1', '2024-02-05 09:39:03', '2024-02-05 09:39:03'),
(11, '25', '1', '2024-02-05 09:39:19', '2024-02-05 09:39:19'),
(12, '28', '1', '2024-02-05 09:39:25', '2024-02-05 09:39:25'),
(13, '30', '1', '2024-02-05 09:39:30', '2024-02-05 09:39:30'),
(14, '32', '1', '2024-02-05 09:39:34', '2024-02-05 09:39:34'),
(15, '34', '1', '2024-02-05 09:39:39', '2024-02-05 09:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(99) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `serderid` varchar(155) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `forget_pass` varchar(11) DEFAULT NULL,
  `password_g` varchar(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `url`, `api_key`, `serderid`, `order`, `forget_pass`, `password_g`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://msg.elitbuzz-bd.com/smsapi', 'C200817461dd7a25cf3924.89247796', '8809612472619', '0', '0', '0', '0', '2024-02-06 11:29:46', '2025-03-06 20:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(155) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `title`, `icon`, `link`, `color`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'fab fa-facebook-f', 'https://www.facebook.com/', '#f78345', 1, '2023-02-12 11:32:20', '2024-09-11 22:10:51'),
(3, 'Official Mail', 'fab fa-google', 'https://www.google.com/', '#f34a12', 1, '2023-02-14 03:29:41', '2024-09-16 03:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'T-Shirt', 't-shirt', 1, NULL, 'T-Shirt', '<p>T-Shirt<br></p>', 1, '2024-06-01 13:55:48', '2024-06-01 13:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'demo admin', 'demo@gmail.com', NULL, '$2y$10$NOUo6/ivmNkxULPm4WupIuQ6IR11YzniZPVEtyeMoVqqzNdBPdlRK', 'wtPKj1taoUYOqwVBSiXsCo9WHDx44pGWGVAZlAjrSlCWnI4At4roAesubCuw', 'uploads/users/1707537536-faveicon.webp', 1, '2024-02-10 03:58:57', '2024-02-23 13:17:11'),
(9, 'sabbir ahmed', 'sabbirsuvro9@gmail.com', NULL, '$2y$10$8Ckrs/NuhE2T93tjtuMD7.hqqlBAq6p7X7ICAsC41pTIEwEDycmWO', 'X3pq6HnTlRpCFy56q0CUaSrv87IE7s3xEgxvgFW0CZo8DUAbXupLOHJf8vvq', 'uploads/users/1726134952-1.demoproduct.webp', 1, '2024-09-12 15:55:58', '2024-09-12 15:55:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courierapis`
--
ALTER TABLE `courierapis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_pages`
--
ALTER TABLE `create_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `secondbanners`
--
ALTER TABLE `secondbanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `courierapis`
--
ALTER TABLE `courierapis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `create_pages`
--
ALTER TABLE `create_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `secondbanners`
--
ALTER TABLE `secondbanners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
