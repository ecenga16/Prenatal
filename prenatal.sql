-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 03:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prenatal`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `delivery_address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `delivery_charge` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_time` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `invoice_no`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `created_at`, `updated_at`) VALUES
(9, 'Prenatal1681725000020', 'T-shirt gialla maniche lunghe bimba con stampa', '41235125123', 'Size: M', 'Color: Red', '08', '2.99', '23.92', 'luci1@gmail.com', 'luci', 'Cash On Delivery', 'stwesateq', 'Shkoder', '00', '17-04-2023', '11:50:00am', 'Pending', NULL, NULL),
(10, 'Prenatal1681725000020', 'Pigiama 2 pezzi estivo bambino t-rex', '5343153434632', 'Size: S', 'Color: Red', '05', '5.59', '27.95', 'luci1@gmail.com', 'luci', 'Cash On Delivery', 'stwesateq', 'Shkoder', '00', '17-04-2023', '11:50:00am', 'Pending', NULL, NULL),
(12, 'Prenatal1681725000020', 'Abito per neonata in tessuto devoré a fiori', '453151363', 'Size: M', 'Color: Red', '03', '34.99', '104.97', 'luci1@gmail.com', 'luci', 'Cash On Delivery', 'stwesateq', 'Shkoder', '00', '17-04-2023', '11:50:00am', 'Pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Offerte', NULL, '2023-04-16 13:25:42'),
(4, 'Bambina', NULL, '2023-04-16 13:27:16'),
(9, 'Baby Food', NULL, NULL),
(21, 'Mamma', NULL, NULL),
(22, 'Bambino', NULL, '2023-04-16 13:28:57'),
(23, 'Casa', NULL, NULL),
(24, 'Passeggio', NULL, NULL),
(25, 'Auto e viaggio', NULL, NULL),
(26, 'Gioco', NULL, NULL),
(27, 'Pappa', NULL, NULL),
(28, 'Allattamento', NULL, NULL),
(29, 'Igiene', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `contact_date` varchar(255) NOT NULL,
  `contact_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'Aldo', 'aldo@gmail.com', 'Test Message', '27-03-2023', '10:03:44am', NULL, NULL),
(3, 'aldo', 'aldo@gmail.com', 'ckemi kur do vish ?', '27-03-2023', '01:43:29pm', NULL, NULL),
(4, 'aldo', 'aldo@gmail.com', 'ckemi kur do vish ?', '27-03-2023', '01:43:29pm', NULL, NULL),
(5, 'aldo', 'aldo@gmail.com', 'ckemi kur do vish ?', '27-03-2023', '01:43:29pm', NULL, NULL),
(6, 'aldo', 'aldo@gmail.com', 'ckemi kur do vish ?', '27-03-2023', '01:43:29pm', NULL, NULL),
(8, 'aldo', 'aldo@gmail.com', 'ckemi kur do vish ?', '27-03-2023', '01:43:30pm', NULL, NULL),
(9, 'aldo', 'aldo@gmail.com', 'ckemi kur do vish ?', '27-03-2023', '01:43:30pm', NULL, NULL);

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
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_name`, `image`, `product_code`, `email`, `created_at`, `updated_at`) VALUES
(2, 'Maternity jogger in pink fleece\r\n', 'https://storage.googleapis.com/prenatal-italy/2023/03/4d1b9e72-xz_711250.avif', '435643356', 'undefined', NULL, NULL),
(5, 'Blusa premaman allattamento in broderie anglaise', 'http://127.0.0.1:8000/upload/product/1763346408646904.png', '4531341235', 'tit@gmail.com', NULL, NULL),
(6, 'T-shirt premaman a righe bianche e nere', 'http://127.0.0.1:8000/upload/product/1763346631399398.png', '4151345145', 'luci1@gmail.com', NULL, NULL),
(7, 'Abito per neonata in tessuto devoré a fiori', 'http://127.0.0.1:8000/upload/product/1763348586027544.png', '453151363', 'undefined', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'http://127.0.0.1:8000/upload/slider/1763346025501237.jpg', NULL, '2023-04-16 13:10:15'),
(2, 'http://127.0.0.1:8000/upload/slider/1763346053176623.jpg', NULL, '2023-04-16 13:10:42'),
(4, 'http://127.0.0.1:8000/upload/slider/1762352291958237.jpg', NULL, NULL);

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_23_091444_create_sessions_table', 1),
(7, '2023_03_23_092615_create_visitors_table', 2),
(8, '2023_03_23_113350_create_contacts_table', 3),
(9, '2023_03_28_072016_create_site_infos_table', 4),
(10, '2023_03_28_093252_create_categories_table', 5),
(11, '2023_03_28_094745_create_subcategories_table', 6),
(12, '2023_03_28_100710_create_categories_table', 7),
(13, '2023_03_28_124058_create_product_lists_table', 8),
(14, '2023_03_29_114247_create_home_sliders_table', 9),
(15, '2023_03_30_065632_create_product_details_table', 10),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 11),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 11),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 11),
(19, '2016_06_01_000004_create_oauth_clients_table', 11),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 11),
(21, '2023_04_04_080255_create_product_reviews_table', 12),
(22, '2023_04_12_160755_create_cart_orders_table', 13),
(23, '2023_04_14_124359_create_product_carts_table', 13),
(24, '2023_04_14_130452_create_favourites_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('008ef70492c71c57248498b0cd2bd50890d391aedcfe5cfb15d59460c35c533730531890cafcc205', 16, 3, 'app', '[]', 0, '2023-04-15 19:46:12', '2023-04-15 19:46:12', '2024-04-15 21:46:12'),
('00d3ecb5da93c2e09f7e1a7159d4d35dadde99c84643fc014cf6ab3f46d15e23ba4a2f7555d4f743', 16, 3, 'app', '[]', 0, '2023-04-15 19:46:13', '2023-04-15 19:46:13', '2024-04-15 21:46:13'),
('0448148f1ec6c9f23995bb802f4f0ed7ae074fdf5265943387aa39a0fc12ddb089b0917b6cef12e8', 12, 3, 'app', '[]', 0, '2023-04-03 10:09:21', '2023-04-03 10:09:21', '2024-04-03 12:09:21'),
('04a75fc1d935139c131ca98efb225bea065dc257fb01f20af63be6ae84292884dd5a2fac2e4e11a0', 16, 3, 'app', '[]', 0, '2023-04-15 19:42:40', '2023-04-15 19:42:40', '2024-04-15 21:42:40'),
('05f0723590445fcb487bcb76a0362dfbcb4569330399fb47ea6a44f6a161bb1c05144c752f6bcf76', 8, 3, 'app', '[]', 0, '2023-04-06 06:24:41', '2023-04-06 06:24:41', '2024-04-06 08:24:41'),
('06c8453c96afc1e90772c4b84036eadd80a4d5e7cb9af132cd33c35d6703167f93b8cfbc2080f803', 6, 3, 'app', '[]', 0, '2023-04-03 10:54:38', '2023-04-03 10:54:38', '2024-04-03 12:54:38'),
('074c7d9405e5187f488c6899bc89431111f48bebe436cfe92356ee3f5ab1f6243b98a649774853aa', 6, 3, 'app', '[]', 0, '2023-04-03 08:08:51', '2023-04-03 08:08:51', '2024-04-03 10:08:51'),
('12c8d98cc677ac7c2bc340086dc12045ad5132077073db702c9aa0181d5b34c51dd8e21081005bb0', 6, 3, 'app', '[]', 0, '2023-04-03 08:09:12', '2023-04-03 08:09:12', '2024-04-03 10:09:12'),
('1557432721ebf7ddf6047f16253acf67872ce2d3ffd428a9c4b95f5e13589f8461536a7d2a6a57cd', 8, 3, 'app', '[]', 0, '2023-04-03 10:00:16', '2023-04-03 10:00:16', '2024-04-03 12:00:16'),
('248780e3ebf5986f1e375574fad4cc84d0a3c17315786216c4c336772f4b8333380ccd34312390ce', 18, 3, 'app', '[]', 0, '2023-04-16 18:33:18', '2023-04-16 18:33:18', '2024-04-16 20:33:18'),
('312b3c54a66e44359056dace8742a7b807fa38df93724c583c82acdcae3864d0162ab9adb25e9f7f', 6, 3, 'app', '[]', 0, '2023-04-03 08:58:58', '2023-04-03 08:58:58', '2024-04-03 10:58:58'),
('324e828f81c1a58b95e35a71d0f27b7e49d11e82d24fc75f811541babc4914be69968060ba91a48c', 16, 3, 'app', '[]', 0, '2023-04-16 14:24:42', '2023-04-16 14:24:42', '2024-04-16 16:24:42'),
('32d6fc211e059e5af3b46561aec4371881ec0617f4c4904e1c805e22c18d81fcca5f9350db7f0f0c', 16, 3, 'app', '[]', 0, '2023-04-15 10:59:55', '2023-04-15 10:59:55', '2024-04-15 12:59:55'),
('3303ba570142e6435146a64fc5b0e84883187b05728717b81124f237eacdd375621cf6ea2c074e8a', 16, 3, 'app', '[]', 0, '2023-04-15 08:08:56', '2023-04-15 08:08:56', '2024-04-15 10:08:56'),
('34053591cc7632ce1c4ed7aefbcd8dc495f29da0b6f2cedc5e174033374a2634775952a73301a7d5', 18, 3, 'app', '[]', 0, '2023-04-17 09:51:18', '2023-04-17 09:51:18', '2024-04-17 11:51:18'),
('34e89fac2d70fa5f67a89d2602bbb2aaa1eeae87e5c4fc0f2308e175fd32f68752622b6f45c39cbc', 6, 3, 'app', '[]', 0, '2023-04-03 08:25:57', '2023-04-03 08:25:57', '2024-04-03 10:25:57'),
('354def2cac87b14ea87fc2245c7fafa89a61e6443d5b326f43e9c5b02329df8a16e047788a0ab5af', 13, 3, 'app', '[]', 0, '2023-04-03 10:13:05', '2023-04-03 10:13:05', '2024-04-03 12:13:05'),
('379d80993f458e310ff07f3e5ac8995102abbbfdf04b3ac7bd8c290a26e7fe449b49e11318ebd9c4', 10, 3, 'app', '[]', 0, '2023-04-03 10:04:28', '2023-04-03 10:04:28', '2024-04-03 12:04:28'),
('393917ca51f9b8bbb689d7f9dad23abc1c8467ed0036b6163bbea9fa48858dae36772abb306c4d3b', 11, 3, 'app', '[]', 0, '2023-04-03 10:07:40', '2023-04-03 10:07:40', '2024-04-03 12:07:40'),
('3e7a18238780e6e01c56e9fb9a20e2002a33291162ea55d22c83c3dddecf1f504917a8518e1d5b82', 16, 3, 'app', '[]', 0, '2023-04-15 12:38:35', '2023-04-15 12:38:35', '2024-04-15 14:38:35'),
('4a6290677f513e2f3a234aab77be57a1ca6acab62837c8c0ab9daa605dcae83ddd3b105383ede769', 16, 3, 'app', '[]', 0, '2023-04-15 19:51:14', '2023-04-15 19:51:14', '2024-04-15 21:51:14'),
('56354fdd44ae7def1fb2027cb3a3c14c27ee03e5893853602fc9c9e6b7837b14f906a92aea8500c8', 18, 3, 'app', '[]', 0, '2023-04-16 21:21:51', '2023-04-16 21:21:51', '2024-04-16 23:21:51'),
('5661842b006bc28de46a8d146f33f8068ad79c0f0cfd67276b4810cabaa5bca5ec94b0f8a8ebcc29', 7, 3, 'app', '[]', 0, '2023-04-03 09:59:04', '2023-04-03 09:59:04', '2024-04-03 11:59:04'),
('6007ed9a5e2ce5249e210b02a2c7fb784a447703d9238ccf2ea012534d2cefe4a75a48a5eea0fff8', 18, 3, 'app', '[]', 0, '2023-04-17 08:37:41', '2023-04-17 08:37:41', '2024-04-17 10:37:41'),
('62d21961a026bd5350f204f2a5722235c26be130f8a4a1d8371695981b23caae01e27bac4bc696a2', 16, 3, 'app', '[]', 0, '2023-04-15 19:19:40', '2023-04-15 19:19:41', '2024-04-15 21:19:40'),
('6721e220989e83f99db2d69ee0983948cbc4f53d833a8a0ea8bdab06baba409e4978a9b236cd018f', 18, 3, 'app', '[]', 0, '2023-04-17 08:37:43', '2023-04-17 08:37:43', '2024-04-17 10:37:43'),
('74aafe8490421ee8322779398fb78c5b804e310a6d69a456a5e9b2f1e36de5af3621973d90c3bc26', 6, 3, 'app', '[]', 0, '2023-04-03 08:16:17', '2023-04-03 08:16:17', '2024-04-03 10:16:17'),
('757879bf07cac045a70bbef86b9b9ada04c116dc13653919d5da4d08442938182432de4f990b28df', 18, 3, 'app', '[]', 0, '2023-04-16 23:12:15', '2023-04-16 23:12:15', '2024-04-17 01:12:15'),
('79e5f3667927b584f9acb33cc36123d946dde48d0c3c2d8311d88f01fd3558777a4cef01a14d637b', 16, 3, 'app', '[]', 0, '2023-04-15 12:38:27', '2023-04-15 12:38:27', '2024-04-15 14:38:27'),
('7f60d18644f107b7cf033ea6c479fd4cdd3f7ba21bc11d8705983060c0bd84947375861454e389fc', 16, 3, 'app', '[]', 0, '2023-04-15 12:38:32', '2023-04-15 12:38:32', '2024-04-15 14:38:32'),
('8171a0a13e24eb11e38d70ec26e328ac22f8ecd25a95ac3fc828a1f27978757251ae528c681961da', 19, 3, 'app', '[]', 0, '2023-04-17 11:32:12', '2023-04-17 11:32:12', '2024-04-17 13:32:12'),
('870da020ce7d3466d6d8b86e2fc3b1498ff8acb3f44c2d117d5a65a100e53f7e8a5881d1c2f42f43', 8, 3, 'app', '[]', 0, '2023-04-05 04:53:33', '2023-04-05 04:53:33', '2024-04-05 06:53:33'),
('983bce9aa89e36e194abe667b373dbfa59fbb491cede6aca9a5d6e3b1e7fce38b60206a2ac4f3ec7', 11, 3, 'app', '[]', 0, '2023-04-14 14:37:24', '2023-04-14 14:37:24', '2024-04-14 16:37:24'),
('99b1202c7a829c06b1797d8eece8f676838d22e828b89d5779bd770a920e18d94522582ad2ed4501', 6, 3, 'app', '[]', 0, '2023-04-03 09:22:05', '2023-04-03 09:22:05', '2024-04-03 11:22:05'),
('99e54e12aa6273bca776edf6a5ad602c3d823cc380db2fc53782ef59c27eb5a4add5d3c0f542750c', 16, 3, 'app', '[]', 0, '2023-04-15 19:46:15', '2023-04-15 19:46:15', '2024-04-15 21:46:15'),
('9f7cd200e287d9c82a93b3049159d2e8f81727ecc348cfcf935b660fb3d03c7c8e7e6278a3611125', 18, 3, 'app', '[]', 0, '2023-04-17 08:59:00', '2023-04-17 08:59:00', '2024-04-17 10:59:00'),
('a1fcf88133a36c4198d638b19f7717b232411e54703378bea3620d08448d11553833609097d5562c', 16, 3, 'app', '[]', 0, '2023-04-15 12:38:31', '2023-04-15 12:38:31', '2024-04-15 14:38:31'),
('a34f2508de74f4dea0360dc04042f1b9f69e1c0bfc1ee043d85a5f51eb2c5552279816cb85d12aeb', 9, 3, 'app', '[]', 0, '2023-04-03 10:02:53', '2023-04-03 10:02:53', '2024-04-03 12:02:53'),
('a674698de10c99f0cbf4807790173c4e416b0e1185b1a76d41a8bc8e1123a3092245a20d3261c8ee', 16, 3, 'app', '[]', 0, '2023-04-16 08:59:35', '2023-04-16 08:59:35', '2024-04-16 10:59:35'),
('aca3029a0fbe4704eab6f8de2b3202c1c954d4eb2c8b937f9d52f4c3202b1c9c2e27ae83514373c0', 16, 3, 'app', '[]', 0, '2023-04-15 12:38:28', '2023-04-15 12:38:28', '2024-04-15 14:38:28'),
('ad1739dd14c1795c9b06099b9971f8ab14b5b44492b37b3993ad546bb24afd688d640d67c389490b', 8, 3, 'app', '[]', 0, '2023-04-04 13:12:22', '2023-04-04 13:12:22', '2024-04-04 15:12:22'),
('b1595c9b9e0f2d54510ddd03078292a676f3093d2976ccb9ca2b6aa950bb2603b1e54bcaa36b32f1', 11, 3, 'app', '[]', 0, '2023-04-14 14:23:41', '2023-04-14 14:23:41', '2024-04-14 16:23:41'),
('b2fe883ddc8642b4b9d1e131cf6e33cf4b696d88da9596c0f11446324416e896132c139431c82c0c', 18, 3, 'app', '[]', 0, '2023-04-16 18:24:35', '2023-04-16 18:24:35', '2024-04-16 20:24:35'),
('b9d635fd111dea6293b9cf8dd5d58a43b4bb30cb3be91cda6de4e399d0d803199e17e900d065b3cd', 6, 3, 'app', '[]', 0, '2023-04-03 09:22:03', '2023-04-03 09:22:03', '2024-04-03 11:22:03'),
('be51f967b86c094eb7d97ca98e8551c175221c173214c29ef43c44c7f24ff59955a032e33f94a8d2', 16, 3, 'app', '[]', 0, '2023-04-15 19:46:15', '2023-04-15 19:46:15', '2024-04-15 21:46:15'),
('c24de3222875ba00fbe015d25b9f4abb7fb8919dfcabc5ee8fef45fbce544e24ee3806eaaa9b5eaf', 6, 3, 'app', '[]', 0, '2023-04-03 09:22:07', '2023-04-03 09:22:07', '2024-04-03 11:22:07'),
('cb15b935f98d6cf9a6a759dda7a73894e511c4ba4c342329194c0d3ed8619ead8322062d65b3c5c2', 16, 3, 'app', '[]', 0, '2023-04-15 12:38:26', '2023-04-15 12:38:26', '2024-04-15 14:38:26'),
('cb97a3754fb64a5cf0f91639e01ca1b3271cc66ee17e039aeba6a4ba1218211beb1545113173fdd6', 16, 3, 'app', '[]', 0, '2023-04-15 12:38:32', '2023-04-15 12:38:32', '2024-04-15 14:38:32'),
('d5207d2f58733b86a2a70be2128fd0e2576e1498b491471d78f8104360f81f281bcbef665a1bab90', 16, 3, 'app', '[]', 0, '2023-04-16 09:00:23', '2023-04-16 09:00:23', '2024-04-16 11:00:23'),
('dc706ff01ed0ca81408460467cc12b81d8f624c0afa31d9ca95be16f04d8e3820d81b85d47c9bb42', 16, 3, 'app', '[]', 0, '2023-04-15 12:38:35', '2023-04-15 12:38:35', '2024-04-15 14:38:35'),
('de207429e91c0c88206e185e888e818429f015c7a53c3327084ad6ebdd6996c61486aef0d63c8b20', 6, 3, 'app', '[]', 0, '2023-04-03 08:15:04', '2023-04-03 08:15:04', '2024-04-03 10:15:04'),
('e0dd40ed34d0c42dc5ee8b762f9f7cdcbb41b1f9587be36b3ef20eaa75759f9779602ee79558473c', 19, 3, 'app', '[]', 0, '2023-04-17 11:36:27', '2023-04-17 11:36:27', '2024-04-17 13:36:27'),
('e773c87347b3bb8246ad5deecdce7dd1069ef3b5aca04958a69c05ef3784a40e263561e6f6fa4d58', 18, 3, 'app', '[]', 0, '2023-04-17 10:40:04', '2023-04-17 10:40:04', '2024-04-17 12:40:04'),
('ed9c5e284148b3b8b74fac0e497ec89619291967a78f1692e2d776d8d449196f91318e36010fc081', 16, 3, 'app', '[]', 0, '2023-04-15 19:50:07', '2023-04-15 19:50:07', '2024-04-15 21:50:07'),
('ee53548f75e5786ff96bf0eba64e01c1e09bcc427f4105ae52675bc90ac98dd4c463cbe3fd70d3ce', 16, 3, 'app', '[]', 0, '2023-04-15 19:23:20', '2023-04-15 19:23:20', '2024-04-15 21:23:20'),
('f26949052f82f35ccc9dd60dd960b2bb29f67518e658b05a1366fd770f0820baa21e397f788d2e47', 8, 3, 'app', '[]', 0, '2023-04-03 10:01:49', '2023-04-03 10:01:49', '2024-04-03 12:01:49'),
('fcd0f4bbc6d9042b61ba8d42ae1799d2a7365e3f2af2382cf4430558092a731d3ead361037e91022', 18, 3, 'app', '[]', 0, '2023-04-16 21:21:52', '2023-04-16 21:21:52', '2024-04-16 23:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'EaNu6OpOkrpHP3VN4vZUeSgSrzmzJLtmdfb93lta', NULL, 'http://localhost', 1, 0, 0, '2023-04-01 10:37:54', '2023-04-01 10:37:54'),
(2, NULL, 'Laravel Password Grant Client', 'BzRCxAQgOpvTsy5mkpTW127w7xkzKnZoFndM8LRJ', 'users', 'http://localhost', 0, 1, 0, '2023-04-01 10:37:54', '2023-04-01 10:37:54'),
(3, NULL, 'Laravel Personal Access Client', 'SD694RUwyc2KJ4RrJjvzTKf0eB898j2SLREy0JWq', NULL, 'http://localhost', 1, 0, 0, '2023-04-03 08:07:39', '2023-04-03 08:07:39'),
(4, NULL, 'Laravel Password Grant Client', 'YLLUzksQObQGOqOtcn0RuUSPaxlaqviYlBriB1jU', 'users', 'http://localhost', 0, 1, 0, '2023-04-03 08:07:39', '2023-04-03 08:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-04-01 10:37:54', '2023-04-01 10:37:54'),
(2, 3, '2023-04-03 08:07:39', '2023-04-03 08:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(2, 'aldo1@gmail.com', '46404', NULL),
(4, 'b@gmail.com', '39048', NULL),
(5, 'b@gmail.com', '1623', NULL),
(6, 'b@gmail.com', '42236', NULL);

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
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `image`, `email`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(18, 'http://127.0.0.1:8000/upload/product/1763346631399398.png', 'luci1@gmail.com', 'T-shirt premaman a righe bianche e nere', '4151345145', 'Size: M', 'Color: Red', '03', '17.49', '52.47', NULL, NULL),
(19, 'http://127.0.0.1:8000/upload/product/1763348586027544.png', 'luci1@gmail.com', 'Abito per neonata in tessuto devoré a fiori', '453151363', 'Size: S', 'Color: Red', '06', '34.99', '209.94', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` varchar(255) NOT NULL,
  `image_two` varchar(255) NOT NULL,
  `image_three` varchar(255) NOT NULL,
  `image_four` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `long_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `image_four`, `short_description`, `color`, `size`, `long_description`, `created_at`, `updated_at`) VALUES
(3, 10, 'http://127.0.0.1:8000/upload/productdetails/1763346409166015.png', 'http://127.0.0.1:8000/upload/productdetails/1763346409602211.png', 'http://127.0.0.1:8000/upload/productdetails/1763346410115014.png', 'http://127.0.0.1:8000/upload/productdetails/1763346410621479.png', 'Romantica blusa bianca premaman in broderie anglaise dal delicato motivo circolare.', 'Red,White,Black', 'S,M,L,XL', 'La linea ampia e svasata rende il modello perfetto da indossare durante la gravidanza. La pratica zip frontale permette di allattare in totale comfort.\r\n\r\n– Blusa per allattamento e gravidanza\r\n– Tessuto fresco\r\n– Scollo tondo\r\n– Maniche a tre quarti dalla linea svasata', NULL, NULL),
(4, 11, 'http://127.0.0.1:8000/upload/productdetails/1763346631937777.png', 'http://127.0.0.1:8000/upload/productdetails/1763346632458585.png', 'http://127.0.0.1:8000/upload/productdetails/1763346632974773.png', 'http://127.0.0.1:8000/upload/productdetails/1763346633517157.png', 'T-shirt senza maniche premaman in jersey di cotone con stampa righe bianche e nere.', 'Red,White,Black', 'S,M,L,XL', 'La vestibilità è ampia e comoda, grazie anche alla qualità elastica del tessuto. Doppie ruches sul giromanica aggiungono un tocco romantico e molto femminile al capo.\r\n\r\n– T-shirt per gravidanza\r\n– Stampa righe bicolor\r\n– Scollo tondo', NULL, NULL),
(5, 12, 'http://127.0.0.1:8000/upload/productdetails/1763348586428837.png', 'http://127.0.0.1:8000/upload/productdetails/1763348586840231.png', 'http://127.0.0.1:8000/upload/productdetails/1763348587214025.png', 'http://127.0.0.1:8000/upload/productdetails/1763348587590441.png', 'Cerchi un abito romantico per la tua bimba? Ti presentiamo l’abito realizzato per la nuova Linea Premium Prénatal dedicata ai neonati.', 'Red,White,Black', 'S,M,L,XL', 'Il tessuto devoré floreale, con le sue righe e i suoi fiori simili a pennellate di un artista, crea un effetto unico di volumi e texture, che trasporta in un’atmosfera magica dove ogni capo sembra un dipinto. Perfetto per occasioni speciali o cerimonie.\r\n\r\n– Colletto in cotone bianco\r\n– Stampa fantasia floreale\r\n– Maniche corte\r\n– Gonna dalla linea voluminosa e svasata\r\n– Chiusura con zip a scomparsa sul dietro\r\n– Fodera in cotone per un maggiore comfort', NULL, NULL),
(6, 13, 'http://127.0.0.1:8000/upload/productdetails/1763348720312820.png', 'http://127.0.0.1:8000/upload/productdetails/1763348720684566.png', 'http://127.0.0.1:8000/upload/productdetails/1763348721206898.png', 'http://127.0.0.1:8000/upload/productdetails/1763348721591044.png', 'Prénatal presenta la Linea Premium dedicata ai neonati: eleganza, qualità e sostenibilità Made in Italy.', 'Red,White,Black', 'S,M,L,XL', 'Questo completo corto è la scelta perfetta per occasioni eleganti o calde giornate di sole. Realizzato in lino certificato OEKO-TEX, si compone di una camicia bianca con chiusura parziale sul davanti e di un pantalone corto blu e bianco con taschina nella parte frontale. L’elastico in vita rende lo short per neonati molto pratico e comodo da indossare.\r\n\r\n– Completo camicia e pantalone corto per neonato\r\n– Camicia neonato con maniche corte con risvolto e bottoni sul davanti\r\n– Pattina decorativa in lino blu e bianco\r\n– Short neonato con elastico in vita e bottone decorativo\r\n– Tasca sul pantalone\r\n– Short con risvolto cucito sul fondo', NULL, NULL),
(7, 17, 'http://127.0.0.1:8000/upload/productdetails/1763349047440016.png', 'http://127.0.0.1:8000/upload/productdetails/1763349047665844.png', 'http://127.0.0.1:8000/upload/productdetails/1763349047939678.png', 'http://127.0.0.1:8000/upload/productdetails/1763349048206658.png', 'Set Foppapedretti comprendente Lettino+bagnetto+piumone Happytour.', 'Red,White,Black', 'S,M,L,XL', 'Il lettino in legno Happytour di Foppapedretti ha una sponda regolabile a due altezze, per facilitare il riordino del lettino, e rete a doghe. La testata è decorata con un simpatico trenino con animaletti a bordo. Il lettino ha un ampio cassetto inferiore, suddiviso in due scomparti, e ruote piroettanti, con sistema frenante, per facilitare gli spostamenti. La struttura solida e durevole nel tempo è verniciata con vernici atossiche ed è 100% made in Italy.\r\n\r\nIl bagnetto fasciatoio in legno Happytour di Foppapedretti è trasformabile in comoda cassettiera. È dotato di vaschetta estraibile per il bagnetto, tre ampi cassetti, piano ribaltabile con sistema di sicurezza ammortizzato e pratico materassino. Il cassetto superiore è decorato con un simpatico trenino e animaletti a bordo. Ha tre ampi cassetti e ruote piroettanti, con sistema frenante per facilitare gli spostamenti. La struttura solida e durevole nel tempo è 100% made in Italy.\r\n\r\nIl completo piumone è caratterizzato da un simpatico trenino con animaletti a bordo. Il set tessile è composto da paracolpi, sacco sfoderabile e federa per cuscino.', NULL, NULL),
(8, 18, 'http://127.0.0.1:8000/upload/productdetails/1763349323538167.png', 'http://127.0.0.1:8000/upload/productdetails/1763349323905637.png', 'http://127.0.0.1:8000/upload/productdetails/1763349324333510.png', 'http://127.0.0.1:8000/upload/productdetails/1763349324667897.png', 'Completo estivo da bambina perfetto per la bella stagione. La maglia a maniche corte presenta una coloratissima stampa frontale su sfondo bianco.', 'Red,White,Black', 'S,M,L,XL', 'Modello girocollo. Vestibilità morbida e confortevole. Shorts fucsa tinta unita elasticati in vita per assicurare praticità. Accessori non in vendita. La confezione contiene solo il capo di abbigliamento.', NULL, NULL),
(15, 26, 'http://127.0.0.1:8000/upload/productdetails/1763378994220767.png', 'http://127.0.0.1:8000/upload/productdetails/1763378994584950.png', 'http://127.0.0.1:8000/upload/productdetails/1763378995196377.png', 'http://127.0.0.1:8000/upload/productdetails/1763378995633273.png', 'Maglietta a maniche lunghe da bambina giallo acceso perfetta per la bella stagione.', 'Red,White,Black', 'S,M,L,XL', 'La t-shirt è arricchita da una stampa primaverile frontale. Modello girocollo. Vestibilità morbida e confortevole. Chiusura con pratici bottoncini a pressione sul retro. Accessori non in vendita. La confezione contiene solo il capo di abbigliamento.', NULL, NULL),
(16, 27, 'http://127.0.0.1:8000/upload/productdetails/1763379164685130.png', 'http://127.0.0.1:8000/upload/productdetails/1763379165135710.png', 'http://127.0.0.1:8000/upload/productdetails/1763379165881132.png', 'http://127.0.0.1:8000/upload/productdetails/1763379166407564.png', 'Pigiama estivo da bambino composto da due pezzi.', 'Red,White,Black', 'S,M,L,XL', 'La maglia a maniche corte si sviluppa in azzurro tinta unita ed è arricchita da una stampa frontale a tema T-Rex. Girocollo in verde acceso a contrasto. Gli shorts tinta unita verde sono pratici e confortevoli grazie alla vita elasticata. Accessori non in vendita. La confezione contiene solo il capo di abbigliamento.', NULL, NULL),
(20, 32, 'http://127.0.0.1:8000/upload/productdetails/1763379777143599.png', 'http://127.0.0.1:8000/upload/productdetails/1763379777907475.png', 'http://127.0.0.1:8000/upload/productdetails/1763379778471491.png', 'http://127.0.0.1:8000/upload/productdetails/1763379779090110.png', 'SMOBY CASA AMICA E CUCINA, completa di cucina, ampia e spaziosa, offre ai tuoi bambini tante possibilità di gioco!', 'Red,White,Black', 'S,M,L,XL', 'Possono invitare i loro amici a condividere tanti bei momenti!\r\nQuesti ultimi dovranno solo utilizzare il campanello elettronico per segnalare il loro arrivo!\r\nAltezza 1,72 mt.\r\nTrattamento anti-UV per garantire la durata dei colori nel tempo.\r\nMade in France', NULL, NULL),
(21, 33, 'http://127.0.0.1:8000/upload/productdetails/1763380433823931.png', 'http://127.0.0.1:8000/upload/productdetails/1763380434470044.png', 'http://127.0.0.1:8000/upload/productdetails/1763380435358316.png', 'http://127.0.0.1:8000/upload/productdetails/1763380436146240.png', 'Abito chemisier premaman lungo dal colore blu scuro con stampa che richiama l’arte delle maioliche.', 'Red,White,Black', 'S,M,L,XL', 'La fusciacca in vita aggiunge un tocco femminile e si adatta all’evoluzione della pancia durante la gravidanza. La chiusura con bottoni permette di allattare in tutta comodità.\r\n\r\n– Abito lungo per allattamento e gravidanza\r\n– Tessuto fresco e leggero\r\n– Colletto camicia\r\n– Maniche corte\r\n– Chiusura con bottoni sul davanti\r\n– Cintura in vita removibile', NULL, NULL),
(22, 34, 'http://127.0.0.1:8000/upload/productdetails/1763380559822319.png', 'http://127.0.0.1:8000/upload/productdetails/1763380560508709.png', 'http://127.0.0.1:8000/upload/productdetails/1763380561313438.png', 'http://127.0.0.1:8000/upload/productdetails/1763380562255427.png', 'Pantalone premaman di colore fucsia con fusciacca annodata in vita. Il capo presenta una fascia alta in vita in jersey stretch con elastico interno, per adattarsi alla naturale evoluzione della pancia e garantire un migliore comfort durante tutta la gravidanza.', 'Red,White,Black', 'S,M,L,XL', 'La fascia in vita può essere scucita per indossare il pantalone anche dopo la gravidanza.\r\n\r\n– Pantalone per gravidanza\r\n– Tessuto fresco e morbido\r\n– Inserto elastico in vita\r\n– Fascia in vita elasticizzata facile da scucire dopo la gravidanza\r\n– Due tasche alla francese\r\n– Due tasche sul dietro', NULL, NULL),
(23, 35, 'http://127.0.0.1:8000/upload/productdetails/1763380681663237.png', 'http://127.0.0.1:8000/upload/productdetails/1763380682378626.png', 'http://127.0.0.1:8000/upload/productdetails/1763380683207722.png', 'http://127.0.0.1:8000/upload/productdetails/1763380684105003.png', 'Pack 5 calze corte da bimbo perfette per le sue giornate estive. Le calzine si sviluppano su basi rigate ne toni dell’arancione del gigio e del blu.', 'Red,White,Black', 'S,M,L,XL', 'Vestibilità pratica e confortevole. Accessori non in vendita. La confezione contiene solo il capo di abbigliamento.', NULL, NULL),
(24, 36, 'http://127.0.0.1:8000/upload/productdetails/1763380922168662.png', 'http://127.0.0.1:8000/upload/productdetails/1763380922768019.png', 'http://127.0.0.1:8000/upload/productdetails/1763380923264223.png', 'http://127.0.0.1:8000/upload/productdetails/1763380924144814.png', 'Pigiama estivo due pezzi da bambina. La maglia a maniche corte si sviluppa su sfondo fucsia tinta unita e presenta una stampa big size frontale a tema Minnie Mouse.', 'Red,White,Black', 'S,M,L,XL', 'Modello girocollo. Gli shorts sono bianco tinta unita e sono decorati da una stampa allover a pois fucsia a contrasto. Vita elasticata. Vestibilità morbida e confortevole. Questo pigiama fa parte della capsule Festa della Mamma, una linea che comprende pigiami a tema per la mamma e i suoi bambini. Accessori non in vendita. La confezione contiene solo il capo di abbigliamento.', NULL, NULL),
(25, 37, 'http://127.0.0.1:8000/upload/productdetails/1763381064723712.png', 'http://127.0.0.1:8000/upload/productdetails/1763381065107185.png', 'http://127.0.0.1:8000/upload/productdetails/1763381065517798.png', 'http://127.0.0.1:8000/upload/productdetails/1763381065913258.png', 'Pigiama estivo due pezzi da bambino. La maglia a maniche corte si sviluppa su sfondo bianco e presenta una stampa big size frontale a tema Mickey Mouse.', 'Red,White,Black', 'S,M,L,XL', 'Girocollo grigio chiaro. Chiusura alla spalla con pratici bottoncini a pressione. Gli shorts sono grigio chiaro tinta unita e sono decorati da una stampa allover Disney Topolino. Vita elasticata. Vestibilità morbida e confortevole. Questo pigiama fa parte della capsule Festa della Mamma, una linea che comprende pigiami a tema per la mamma e i suoi bambini. Accessori non in vendita. La confezione contiene solo il capo di abbigliamento.', NULL, NULL),
(26, 38, 'http://127.0.0.1:8000/upload/productdetails/1763381511509108.png', 'http://127.0.0.1:8000/upload/productdetails/1763381511801843.png', 'http://127.0.0.1:8000/upload/productdetails/1763381512263842.png', 'http://127.0.0.1:8000/upload/productdetails/1763381512609255.png', 'Il nuovo passeggino Best Friend Pro è la combinazione di caratteristiche comode ed eleganti che lo rendono unico nel suo genere.', 'Red,White,Black', 'S,M,L,XL', 'Per prima cosa il passeggino è omologato dalla nascita e, grazie allo schienale completamente reclinabile e alla seduta reversibile.Presenta una capotta allungata con un segmento nascosto da una zip e una finestra a rete. Ideale per qualsiasi condizioni meteo e impermeabile all’acqua, è anche pratico e facile da guidare grazie alle nuovissime ruote, tutte dotate di ammortizzatori (su quelle posteriori ci sono anche dei cuscinetti a sfera).Il fascino del passeggino è sicuramente dovuto al telaio metallico colorato e alle finiture raffinate, curate fin nei minimi dettagli, a ciò si aggiungono inserti in eco-pelle. La navicella LIGHT è estremamente funzionale e adatta ai genitori per i quali leggerezza e compattezza sono delle priorità. Grazie al peso ridotto (di soli 3,8 Kg) è infatti facile da usare e da trasportare. Queste caratteristiche inoltre non pregiudicano il comfort del bambino, grazie alla presenza di uno spesso materassino rimovibile.Grazie al trattamento di impermeabilizzazione all’acqua e alla protezione UV50+, la capotta è perfetta con ogni clima.Il seggiolino auto Kaily è omologato per il trasporto di bambini di peso fino a 13 Kg (Gruppo 0+) in conformità con lo standard ECE R44/04;dotato di capotta impermeabile all’acqua e resistente ai raggi solari (UV50+). MISURE PASSEGGINO APERTO: 95X60XH106 cm CHIUSO:60 x 24,5 x 76,5 cm PESO:11,2KG/ NAVCELLA: 77X45XH55 PESO:3,6KG', NULL, NULL),
(27, 39, 'http://127.0.0.1:8000/upload/productdetails/1763381675478546.png', 'http://127.0.0.1:8000/upload/productdetails/1763381675854299.png', 'http://127.0.0.1:8000/upload/productdetails/1763381676118258.png', 'http://127.0.0.1:8000/upload/productdetails/1763381676451487.png', 'Che bello muoversi con agilità esplorando la città insieme. Il trio Vivace Lounge modular special edition è il perfetto alleato. Leggerezza, comodità e made in Italy. Così scattante per muoverti liberamente e con stile. Così versatile e compatto, solo 51 cm di larghezza, per sfidare anche gli ascensori più stretti. Spaziosa navicella Culla Gran Pagoda. Seggiolino auto neonato i-Size Primo Viaggio SLK.', 'Red,White,Black', 'S,M,L,XL', 'Il riposo del neonato è fondamentale per il suo benessere. La navicella Culla Gran Pagoda accompagna la crescita del tuo bebè con tanto spazio per rispettare le sue esigenze. Lo schienale e il poggiagambe regolabili indipendentemente, mantengono il bebè nella posizione ergonomica ottimale da sveglio o durante la nanna. Il materassino comfort è la coccola extra! Capottina Gran Pagoda con visiera. Grazie all’innovativo maniglione di trasporto, la capottina si estende in avanti di ulteriori 40° per la massima protezione da sole e vento. Finestra Panorama per una migliore circolazione dell’aria. Vista Belvedere. Una finestra in più per una vista privilegiata sul bebè; saprà che gli sei sempre accanto e potrete scambiarvi dolci sguardi. Copertina sartoriale dedicata. In casa la navicella è un’ottima soluzione per dolci riposini agganciata all’accessorio Home Stand.\r\nCon il passeggino Vivace ti muovi liberamente con stile e leggerezza. Omologato dalla nascita, spaziosa seduta reversibile e solo 9,4 kg di peso. 51 cm di larghezza, supera anche la prova ascensore. Ruote top quality, agile anche su tutti i terreni.\r\nL’ingombro da chiuso è minimo con la seduta agganciata in entrambe le posizioni. Sta in piedi da solo e la seduta del passeggino rimane sempre compatta e protetta per un’igiene ottimale. Ampia capottina estensibile UPF 50+. Capiente cestello rinforzato con rifiniture rifrangenti.', NULL, NULL),
(28, 40, 'http://127.0.0.1:8000/upload/productdetails/1763381809543136.png', 'http://127.0.0.1:8000/upload/productdetails/1763381809843445.png', 'http://127.0.0.1:8000/upload/productdetails/1763381810074880.png', 'http://127.0.0.1:8000/upload/productdetails/1763381810336773.png', 'PENSATO PER GIOCARE.', 'Red,White,Black', 'S,M,L,XL', 'Diamo priorità al comfort, specialmente per i nostri piccoli atleti in crescita. Realizzata con il 20% di contenuto riciclato sul peso, questa sneaker leggera e traspirante è perfetta per tutto il giorno e può essere abbinata a qualsiasi outfit.', NULL, NULL),
(29, 41, 'http://127.0.0.1:8000/upload/productdetails/1763381948295178.png', 'http://127.0.0.1:8000/upload/productdetails/1763381948798529.png', 'http://127.0.0.1:8000/upload/productdetails/1763381949357329.png', 'http://127.0.0.1:8000/upload/productdetails/1763381949844684.png', 'Set salopette nera e t-shirt allattamento bianca in jersey di cotone. La t-shirt girocollo con maniche corte presenta due aperture laterali all’altezza del seno, per allattare in tutta comodità.', 'Red,White,Black', 'S,M,L,XL', 'La salopette con bretelle regolabili ed elastico in vita con laccio regolatore, permette di indossare il capo anche durante la gravidanza, seguendo la naturale evoluzione della pancia.\r\n\r\n– Salopette per gravidanza e allattamento\r\n– Tasca sulla pettorina\r\n– Coulisse in vita\r\n– Due tasche laterali\r\n– T-shirt per allattamento', NULL, NULL),
(30, 43, 'http://127.0.0.1:8000/upload/productdetails/1763382182540471.png', 'http://127.0.0.1:8000/upload/productdetails/1763382182857935.png', 'http://127.0.0.1:8000/upload/productdetails/1763382183216669.png', 'http://127.0.0.1:8000/upload/productdetails/1763382183520923.png', 'T-shirt premaman manica lunga in morbido jersey dalla qualità elastica e confortevole.', 'Red,White,Black', 'S,M,L,XL', 'Sul davanti, è caratterizzata dalla stampa Minnie con dettagli dorati dall’effetto laminato. Il capo presenta due zip frontali sul giromanica che permettono di allattare in tutta comodità.\r\n\r\n– T-shirt per allattamento e per gravidanza\r\n– Stampa Minnie con dettagli oro\r\n– Scollo tondo\r\n– Maniche lunghe', NULL, NULL),
(31, 44, 'http://127.0.0.1:8000/upload/productdetails/1763382312955354.png', 'http://127.0.0.1:8000/upload/productdetails/1763382313421920.png', 'http://127.0.0.1:8000/upload/productdetails/1763382313939571.png', 'http://127.0.0.1:8000/upload/productdetails/1763382314419961.png', 'Set da bambino composto da maglia e salopette- La t-shirt a maniche corte si sviluppa in colore bianco tinta unita. Modello girocollo. Chiusura con pratici bottoncini a pressione.', 'Red,White,Black', 'S,M,L,XL', 'La salopette in denim presenta una scritta decorativa frontale. Modlelo con tasche. Vestibilità ampia e confortevole. Apertura con bottoni a pressione. Accessori non in vendita. La confezione contiene solo il capo di abbigliamento.', NULL, NULL),
(32, 45, 'http://127.0.0.1:8000/upload/productdetails/1763382442461145.png', 'http://127.0.0.1:8000/upload/productdetails/1763382442788228.png', 'http://127.0.0.1:8000/upload/productdetails/1763382443413510.png', 'http://127.0.0.1:8000/upload/productdetails/1763382443737768.png', 'Casual camicia chambray da bambino. Il capo si presenta a maniche corte in total blu denim light con doppio taschino a toppa. Ulteriore dettaglio è rappresentato da colletto alla coreana.', 'Red,White,Black', 'S,M,L,XL', 'La vestizione è morbida e pratica grazie a bottoni automatici sul fronte e sulle maniche in tinta argentata. La camicia chambray da bambino è adatta per occasioni casual e facilmente abbinabile. Accessori non in vendita. La confezione contiene solo il capo d’abbigliamento', NULL, NULL),
(33, 46, 'http://127.0.0.1:8000/upload/productdetails/1763382564447914.png', 'http://127.0.0.1:8000/upload/productdetails/1763382565224637.png', 'http://127.0.0.1:8000/upload/productdetails/1763382566129691.png', 'http://127.0.0.1:8000/upload/productdetails/1763382566729755.png', 'T-shirt a maniche corte rossa da bambino. Modello basico tinta unita. Girocollo.', 'Red,White,Black', 'S,M,L,XL', 'Finto taschino chambray in alto a sinistra. Vestizione morbida e confortevole. Accessori non in vendita. La confezione contiene solo il capo di abbigliamento.', NULL, NULL),
(34, 47, 'http://127.0.0.1:8000/upload/productdetails/1763382706124923.png', 'http://127.0.0.1:8000/upload/productdetails/1763382706553911.png', 'http://127.0.0.1:8000/upload/productdetails/1763382707153996.png', 'http://127.0.0.1:8000/upload/productdetails/1763382707646029.png', 'Casual shorts modello bermuda da bambino in 100% cotone. Il capo si sviluppa in total blu denim light, presenta risvoltino, tasche sagomate sul fronte e tasche a toppa sul retro.', 'Red,White,Black', 'S,M,L,XL', 'La vestizione è morbida e pratica grazie a bottone automatico. I bermuda blu denim light da bambino sono adatti per occasioni casual e facilmente abbinabili. Accessori non in vendita. La confezione contiene solo il capo d’abbigliamento.', NULL, NULL),
(35, 48, 'http://127.0.0.1:8000/upload/productdetails/1763382827349653.png', 'http://127.0.0.1:8000/upload/productdetails/1763382827725530.png', 'http://127.0.0.1:8000/upload/productdetails/1763382828383526.png', 'http://127.0.0.1:8000/upload/productdetails/1763382828826539.png', 'Bermuda da bambino in stile tie dye. Il capo si articola nei colori blu e bianco.', 'Red,White,Black', 'S,M,L,XL', 'Vita elasticata con nastro regolatore rosso a contrasto. Modello morbido e confortevole. Accessori non in vendita. La confezione contiene solo il capo di abbigliamento.', NULL, NULL),
(36, 49, 'http://127.0.0.1:8000/upload/productdetails/1763382971771121.png', 'http://127.0.0.1:8000/upload/productdetails/1763382972497445.png', 'http://127.0.0.1:8000/upload/productdetails/1763382973339632.png', 'http://127.0.0.1:8000/upload/productdetails/1763382974075763.png', 'Casual t-shirt jersey a maniche lunghe da bambino in 100% cotone. Il capo si sviluppa su sfondo giallo limone con stampa allover “Hero” in tinta bianco.', 'Red,White,Black', 'S,M,L,XL', 'La vestizione è morbida e pratica grazie a bottoni automatici sul retro. La t-shirt è adatta per occasioni casual. Accessori non in vendita. La confezione contiene solo il capo d’abbigliamento', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `special_price` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `star` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `tittle`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(10, 'Blusa premaman allattamento in broderie anglaise', '34.99', '24.49', 'http://127.0.0.1:8000/upload/product/1763346408646904.png', 'Mamma', 'ABBIGLIAMENTO', 'FEATURED', 'Prenatal', NULL, '4531341235', NULL, NULL),
(11, 'T-shirt premaman a righe bianche e nere', '24.99', '17.49', 'http://127.0.0.1:8000/upload/product/1763346631399398.png', 'Mamma', 'ABBIGLIAMENTO', 'FEATURED', 'Prenatal', NULL, '4151345145', NULL, NULL),
(12, 'Abito per neonata in tessuto devoré a fiori', '49.99', '34.99', 'http://127.0.0.1:8000/upload/product/1763348586027544.png', 'Bambina', 'NEONATA 0-9 MESI', 'FEATURED', 'Prenatal', NULL, '453151363', NULL, NULL),
(13, 'Completo per neonato in lino', '44.99', '31.49', 'http://127.0.0.1:8000/upload/product/1763348719920045.png', 'Bambino', 'NEONATO 0-9 MESI', 'FEATURED', 'Prenatal', NULL, '41324512512', NULL, NULL),
(17, 'Set lettino+bagnetto+piumone happytour – foppapedretti', '689.00', 'na', 'http://127.0.0.1:8000/upload/product/1763349047136647.png', 'Casa', 'NANNA', 'FEATURED', 'Prenatal', NULL, '41252352134', NULL, NULL),
(18, 'Completo estivo bambina t-shirt + shorts', '14.99', 'na', 'http://127.0.0.1:8000/upload/product/1763349323144377.png', 'Bambina', 'BAMBINA 2-10 ANNI', 'NEW', 'Prenatal', NULL, '51346346', NULL, NULL),
(26, 'T-shirt gialla maniche lunghe bimba con stampa', '5.99', '2.99', 'http://127.0.0.1:8000/upload/product/1763378993881160.png', 'Bambina', 'BIMBA 3-36 MESI', 'FEATURED', 'Prenatal', NULL, '41235125123', NULL, NULL),
(27, 'Pigiama 2 pezzi estivo bambino t-rex', '7.99', '5.59', 'http://127.0.0.1:8000/upload/product/1763379164164028.png', 'Bambino', 'BAMBINO 2-10 ANNI', 'NEW', 'Prenatal', NULL, '5343153434632', NULL, NULL),
(32, 'Smoby – casetta amica e cucina new', '369.95', 'na', 'http://127.0.0.1:8000/upload/product/1763379776785323.png', 'Gioco', 'GIOCHI PER NEONATI', 'FEATURED', 'chicco', NULL, '51353152', NULL, NULL),
(33, 'Abito premaman allattamento con stampa maiolica', '39.99', '27.99', 'http://127.0.0.1:8000/upload/product/1763380433099439.png', 'Mamma', 'ABBIGLIAMENTO', 'FEATURED', 'Prenatal', NULL, '5136345125', NULL, NULL),
(34, 'Pantalone premaman con fusciacca fucsia', '39.99', '27.99', 'http://127.0.0.1:8000/upload/product/1763380559160312.png', 'Mamma', 'ABBIGLIAMENTO', 'COLLECTION', 'Prenatal', NULL, '513451346', NULL, NULL),
(35, 'Pack 5 calze bambino sport', '10.99', 'na', 'http://127.0.0.1:8000/upload/product/1763380680993314.png', 'Bambino', 'NEONATO 0-9 MESI', 'COLLECTION', 'Prenatal', NULL, '5314552351', NULL, NULL),
(36, 'Pigiama corto bambina 2 pezzi disney minnie', '14.99', '10.99', 'http://127.0.0.1:8000/upload/product/1763380921512087.png', 'Bambina', 'BAMBINA 2-10 ANNI', 'NEW', 'Prenatal', NULL, '25123512351', NULL, NULL),
(37, 'Pigiama corto bimbo 2 pezzi disney topolino', '14,99', '10.99', 'http://127.0.0.1:8000/upload/product/1763381064029169.png', 'Bambino', 'BAMBINO 2-10 ANNI', 'NEW', 'Prenatal', NULL, '2513451345', NULL, NULL),
(38, 'Trio best friend pro light desert taupe', '506.95', 'na', 'http://127.0.0.1:8000/upload/product/1763381511149456.png', 'Auto e viaggio', 'ANTI-ABBANDONO E ACCESSORI', 'FEATURED', 'chicco', NULL, '351251235', NULL, NULL),
(39, 'Trio vivace gran pag. blue shine lounge', '1149.00', 'na', 'http://127.0.0.1:8000/upload/product/1763381675147959.png', 'Passeggio', 'TRIO AND ACCESSORIES', 'COLLECTION', 'chicco', NULL, '5123523151', NULL, NULL),
(40, 'Scarpe nike revolution 6 nn (tdv)', '34.99', '29.99', 'http://127.0.0.1:8000/upload/product/1763381809253660.png', 'Bambino', 'BIMBO 3-36 MESI', 'NEW', 'Prenatal', NULL, '51251235123', NULL, NULL),
(41, 'Set salopette e t-shirt allattamento in jersey di cotone', '39.99', '19.99', 'http://127.0.0.1:8000/upload/product/1763381947683892.png', 'Offerte', 'CRAZY DAYS', 'NEW', 'Prenatal', NULL, '531453261316', NULL, NULL),
(43, 'T-shirt premaman allattamento con stampa minnie', '22.99', '11.99', 'http://127.0.0.1:8000/upload/product/1763382182162035.png', 'Offerte', 'CRAZY DAYS', 'NEW', 'Prenatal', NULL, '5152353125', NULL, NULL),
(44, 'Set t-shirt + salopette bimbo denim', '24.9', '17.99', 'http://127.0.0.1:8000/upload/product/1763382312587185.png', 'Offerte', 'FAMILY DAYS', 'FEATURED', 'Prenatal', NULL, '412351235', NULL, NULL),
(45, 'Camicia chambry bimbo blu denim', '15.99', '11.99', 'http://127.0.0.1:8000/upload/product/1763382442114663.png', 'Bambino', 'BIMBO 3-36 MESI', 'FEATURED', 'Prenatal', NULL, '151235123512', NULL, NULL),
(46, 'T-shirt bambino maniche corte taschino chambray', '5.99', '4.99', 'http://127.0.0.1:8000/upload/product/1763382563812228.png', 'Bambino', 'BAMBINO 2-10 ANNI', 'FEATURED', 'Select Brand', NULL, '5152351245', NULL, NULL),
(47, 'Shorts bimbo blu denim light', '12.99', '10.99', 'http://127.0.0.1:8000/upload/product/1763382705750943.png', 'Bambina', 'BAMBINA 2-10 ANNI', 'COLLECTION', 'Prenatal', NULL, '41235213', NULL, NULL),
(48, 'Bermuda bambino tie-dye french terry', '13.99', '10.99', 'http://127.0.0.1:8000/upload/product/1763382826953633.png', 'Bambino', 'BAMBINO 2-10 ANNI', 'COLLECTION', 'Prenatal', NULL, '23415312351235', NULL, NULL),
(49, 'T-shirt bimbo “hero”', '5.99', '2.99', 'http://127.0.0.1:8000/upload/product/1763382970912761.png', 'Offerte', 'CRAZY DAYS', 'COLLECTION', 'Prenatal', NULL, '34515235', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `reviewer_name` varchar(255) NOT NULL,
  `reviewer_photo` varchar(255) DEFAULT NULL,
  `reviewer_rating` varchar(255) NOT NULL,
  `reviewer_comments` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_code`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(13, '41235125123', 'T-shirt gialla maniche lunghe bimba con stampa', 'luci', NULL, '3', 'Not good.', NULL, NULL);

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
('AEVupObKM1F5VshjQktW8fdptgQOC75bRmpA5Q3T', 20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ012MHoxR0xGcUJMSjFVTGl5NVR3RXNreGNvR2xFelpwR0lEYnlpdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMDt9', 1681738363);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `refund` text NOT NULL,
  `purchase_guide` text NOT NULL,
  `privacy` text NOT NULL,
  `address` text NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `copyright_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `purchase_guide`, `privacy`, `address`, `facebook_link`, `twitter_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'Prenatal.com is a website or company that provides resources, products, or services related to prenatal care or parenting', 'Cancellation &amp; Refund Policies : It&rsquo;s our honor to support you in this important time of your life. As a small nonprofit working hard to support the many needs of many families in the community, we have found that we need to maintain Cancellation Policies and clear communication of expectations around cancellations. Whether you are joining us for an appointment, a class, a group, or a special event, please check your calendar carefully for conflicts prior to registering.', 'Online Shopping Guide From concert tickets to washing machines, groceries to holidays, there&rsquo;s bound to be a website that sells just what you want. If there&rsquo;s a particular brand or store you like, you can go straight to their website or you can visit a shopping website such as eBay or Amazon, which carry broad ranges of new and second-hand items. If you&rsquo;re a bargain hunter, you can use a price comparison site such as moneysupermarket.com, which lists the websites that sell your product according to price. In this guide, we&rsquo;re going to show you how to find a product online and make a transaction. You&rsquo;ll need: a computer with an internet connection a credit or debit card', 'INFORMATIVA SUL TRATTAMENTO DEI DATI PERSONALI Art. 13 Regolamento (UE) 2016/679 del Parlamento Europeo e del Consiglio Europeo Pr&eacute;natal S.p.A., con sede legale in Milano, via Bertani 6, Partita IVA n. 00857680151 (di seguito la &ldquo;Societ&agrave;&rdquo; o il &ldquo;Titolare&rdquo;), titolare del trattamento dei dati personali, fornisce qui di seguito l informativa privacy ai sensi dell art. 13 del Regolamento (UE) 2016/679 (di seguito &ldquo;GDPR&rdquo;), agli interessati (di seguito gli &ldquo;Interessati&rdquo;). La Societ&agrave;, in qualit&agrave; di titolare del trattamento si impegna a tutelare la riservatezza e i diritti dell Interessato e, secondo i principi dettati dalle norme citate, il trattamento dei dati forniti sar&agrave; improntato ai principi di correttezza, liceit&agrave; e trasparenza. 1. Fonte e categorie di dati trattati I dati personali che il Titolare potr&agrave; acquisire saranno di norma direttamente forniti dall Interessato. Tali dati potranno essere, a titolo esemplificativo, dati identificativi, dati di contatto e dati anagrafici (ad es. nome, cognome, email, ecc.). Nell ambito dei servizi offerti potrebbero essere raccolti dati personali presso soggetti terzi, ad esempio nel caso in cui l Interessato dovesse iscriversi o accedere ai nostri servizi utilizzando partner di autenticazione (per esempio Facebook, Google, Amazon, etc.), importeremo i dati da tali parti terze per creare laccount. 2. Finalit&agrave; del trattamento I dati personali degli Interessati saranno trattati dalla Societ&agrave; per le seguenti finalit&agrave; di trattamento: adempiere gli obblighi relativi al rilascio della carta fedelt&agrave; e alla concessione dei vantaggi e delle iniziative speciali riservate ai titolari della carta, quali a titolo esemplificativo, punti sulla spesa e sconti per l acquisto di determinati prodotti, nonch&eacute; adempiere agli obblighi precontrattuali e contrattuali necessari per offrire il servizio di vendita all Interessato qualora ques ultimo abbia proceduto ad un acquisto o per offrire ulteriori eventuali servizi richiesti dall Interessato stesso, inclusa la partecipazione a concorsi a premi; svolgere tutte le attivit&agrave; amministrative, contabili e fiscali correlate alla finalit&agrave; di cui alla lettera...', 'Rruga Teodor Keko, Tirane, Albania : Email: info@prenatal.com', 'https://www.facebook.com/prenatalitalia/', 'https://twitter.com/Prenatal', 'https://www.instagram.com/prenatal/', '© 2023 Prenatal S.p.A. All rights reserved. Via Bertani 6 20154 Milano (MI) - P.I. 00857680151', NULL, '2023-04-05 14:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(2, 'Offerte', 'CRAZY DAYS', NULL, '2023-04-16 13:26:05'),
(3, 'Offerte', 'FAMILY DAYS', NULL, '2023-04-16 13:26:19'),
(11, 'Bambina', 'NEONATA 0-9 MESI', NULL, '2023-04-16 13:27:38'),
(12, 'Bambina', 'BIMBA 3-36 MESI', NULL, '2023-04-16 13:27:55'),
(13, 'Bambina', 'BAMBINA 2-10 ANNI', NULL, '2023-04-16 13:28:08'),
(17, 'I Walk', 'TRIO AND ACCESSORIES', NULL, NULL),
(18, 'I Walk', 'STROLLERS AND ACCESSORIES', NULL, NULL),
(19, 'I Walk', 'FANNY PACKS AND BIKES', NULL, NULL),
(25, 'Baby Food', 'LATTE BAMBINI', NULL, '2023-04-16 13:33:46'),
(26, 'Baby Food', 'OMOGENEIZZATI BAMBINI', NULL, '2023-04-16 13:34:37'),
(27, 'Baby Food', 'PAPPE E SVEZZAMENTO', NULL, '2023-04-16 13:34:33'),
(41, 'Mamma', 'ABBIGLIAMENTO', NULL, NULL),
(42, 'Offerte', 'BEST SELLER', NULL, NULL),
(43, 'Bambino', 'NEONATO 0-9 MESI', NULL, NULL),
(44, 'Bambino', 'BIMBO 3-36 MESI', NULL, NULL),
(45, 'Bambino', 'BAMBINO 2-10 ANNI', NULL, NULL),
(46, 'Casa', 'NANNA', NULL, NULL),
(47, 'Casa', 'RELAX', NULL, NULL),
(48, 'Casa', 'SICUREZZA', NULL, NULL),
(49, 'Passeggio', 'TRIO E ACCESSORI', NULL, NULL),
(50, 'Passeggio', 'PASSEGGINI E ACCESSORI', NULL, NULL),
(51, 'Passeggio', 'MARSUPI E BICI', NULL, NULL),
(52, 'Auto e viaggio', 'SEGGIOLINI AUTO', NULL, NULL),
(53, 'Auto e viaggio', 'ANTI-ABBANDONO E ACCESSORI', NULL, NULL),
(54, 'Gioco', 'GIOCHI PER NEONATI', NULL, NULL),
(55, 'Gioco', 'GIOCHI EDUCATIVI E CREATIVI', NULL, NULL),
(56, 'Gioco', 'PRIMI PASSI E GIOCHI ALL\'ARIA APERTA', NULL, NULL),
(57, 'Pappa', 'SEGGIOLONI', NULL, NULL),
(58, 'Pappa', 'PREPARAZIONE PAPPA E ACCESSORI', NULL, NULL),
(60, 'Allattamento', 'ALLATTAMENTO NATURALE', NULL, NULL),
(61, 'Allattamento', 'BIBERON E SUCCHIETTI', NULL, NULL),
(62, 'Igiene', 'PANNOLINI', NULL, NULL),
(63, 'Igiene', 'BAGNETTO E ACCESSORI', NULL, NULL),
(64, 'Igiene', 'COSMESI BIMBO', NULL, NULL);

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(19, 'user', 'user@gmail.com', NULL, '$2y$10$WSgBkLVCmBWTh9qAaY0mOukm0hSkZyijiox0ybbIkM8nHoJB/Ynte', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-17 11:32:12', '2023-04-17 11:32:12'),
(20, 'admin', 'admin@gmail.com', NULL, '$2y$10$DsRQtUR3PMMd2nOuWYRbzeT1zEGvxiLmx.hy2.3VjskPmLhWlDrpi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-17 11:32:43', '2023-04-17 11:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `visit_time` varchar(255) NOT NULL,
  `visit_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '10:48:44am', '23-03-2023', NULL, NULL),
(2, '127.0.0.1', '11:06:15am', '23-03-2023', NULL, NULL),
(3, '127.0.0.1', '11:06:16am', '23-03-2023', NULL, NULL),
(4, '127.0.0.1', '11:06:17am', '23-03-2023', NULL, NULL),
(5, '127.0.0.1', '11:06:18am', '23-03-2023', NULL, NULL),
(6, '127.0.0.1', '11:06:19am', '23-03-2023', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
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
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
