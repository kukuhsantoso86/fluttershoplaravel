-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 12:05 AM
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
-- Database: `fluttershoplaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sport', 'Optio alias similique aut cupiditate rerum. Tempore in sed accusantium. Cum perferendis quasi rerum sunt.', 'https://via.placeholder.com/640x480.png/007744?text=soluta', '2024-01-12 19:20:58', '2024-01-14 02:27:33'),
(2, 'electronic', 'Rem hic aut id esse cupiditate et nobis. Enim temporibus assumenda et laborum. Eveniet exercitationem corrupti ut omnis sit repellat vero.', 'https://via.placeholder.com/640x480.png/009944?text=et', '2024-01-12 19:20:58', '2024-01-14 02:27:50'),
(3, 'men', 'Atque dolores et suscipit deleniti omnis. Nesciunt ut omnis necessitatibus magnam. Quia optio quae fugit. Repellat voluptatem doloremque facere suscipit totam.', 'https://via.placeholder.com/640x480.png/00eebb?text=et', '2024-01-12 19:20:58', '2024-01-14 02:30:34'),
(4, 'women', 'Quasi voluptas beatae repellendus voluptates. Officia et sequi dolorum pariatur. Sapiente dolore necessitatibus aut voluptatem facere laboriosam deleniti.', 'https://via.placeholder.com/640x480.png/003344?text=eos', '2024-01-12 19:20:58', '2024-01-14 02:30:44'),
(5, 'kids', 'Repellat ipsam enim qui expedita omnis. Deserunt unde consequatur quaerat est quam in quod. Tenetur ad deserunt harum et quas dolorum alias. Voluptates accusamus quos aut voluptates ut.', 'https://via.placeholder.com/640x480.png/0022ee?text=fugit', '2024-01-12 19:20:58', '2024-01-14 02:30:53'),
(6, 'fashion', NULL, NULL, '2024-01-14 02:12:34', '2024-01-14 02:12:34');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_01_12_090036_add_phone_roles_at_users', 1),
(7, '2024_01_13_015553_create_categories_table', 1),
(8, '2024_01_13_015608_create_products_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 11, 'auth_token', 'c38b1c77ae1830122dfbf258cea139c220d37074f58d8085118844ef72a483a6', '[\"*\"]', NULL, NULL, '2024-01-13 18:56:58', '2024-01-13 18:56:58'),
(3, 'App\\Models\\User', 12, 'auth_token', '4582ca9a022ff333bf1a0905a51a128650f4f0aa1b094e49fd026b23fda43dd7', '[\"*\"]', NULL, NULL, '2024-01-13 19:25:59', '2024-01-13 19:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `image`, `price`, `stock`, `is_available`, `created_at`, `updated_at`) VALUES
(22, 2, 'laptop macbook air m2', NULL, '1705282554.jpg', 15000000, 20, 1, '2024-01-14 18:35:55', '2024-01-14 18:35:55'),
(23, 3, 'men tshirt', NULL, '1705282616.webp', 200000, 20, 1, '2024-01-14 18:36:56', '2024-01-14 18:36:56'),
(24, 4, 'women tshirt', NULL, '1705282682.webp', 150000, 18, 1, '2024-01-14 18:38:02', '2024-01-14 18:38:02'),
(25, 5, 'kid tshirt', NULL, '1705282748.jpg', 100000, 30, 1, '2024-01-14 18:39:08', '2024-01-14 18:39:08'),
(26, 2, 'pc gaming', NULL, '1705282840.jpg', 20000000, 20, 1, '2024-01-14 18:40:40', '2024-01-14 18:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Everette Fritsch', 'nrutherford@example.com', '959-637-9064', 'USER', '2024-01-12 19:20:58', '$2y$12$A30sL9/qqWFbquLDFXB0jOQ1TS8JhAg9vc88euluw9B.WblKZ9TDG', NULL, NULL, NULL, 'RoEO6U8sm7', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(2, 'Stone Langosh', 'zakary28@example.com', '864-416-2260', 'USER', '2024-01-12 19:20:58', '$2y$12$A30sL9/qqWFbquLDFXB0jOQ1TS8JhAg9vc88euluw9B.WblKZ9TDG', NULL, NULL, NULL, 'FD4fnSFLlP', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(3, 'Fermin Kuvalis', 'betty.monahan@example.net', '+1 (380) 709-6326', 'USER', '2024-01-12 19:20:58', '$2y$12$A30sL9/qqWFbquLDFXB0jOQ1TS8JhAg9vc88euluw9B.WblKZ9TDG', NULL, NULL, NULL, 'uu10d0EkLs', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(4, 'Dr. Felipe Harris', 'jamey97@example.net', '512.831.7970', 'USER', '2024-01-12 19:20:58', '$2y$12$A30sL9/qqWFbquLDFXB0jOQ1TS8JhAg9vc88euluw9B.WblKZ9TDG', NULL, NULL, NULL, 'CfqmBSwysd', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(5, 'Lilla Labadie', 'esteban.johns@example.com', '213-602-3257', 'USER', '2024-01-12 19:20:58', '$2y$12$A30sL9/qqWFbquLDFXB0jOQ1TS8JhAg9vc88euluw9B.WblKZ9TDG', NULL, NULL, NULL, 'bz3KTYyvt7', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(6, 'Caden McGlynn', 'jdare@example.com', '+1-380-340-8054', 'USER', '2024-01-12 19:20:58', '$2y$12$A30sL9/qqWFbquLDFXB0jOQ1TS8JhAg9vc88euluw9B.WblKZ9TDG', NULL, NULL, NULL, '2k68zZos5I', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(7, 'Omer Dickens', 'conn.alena@example.net', '+1-667-678-8522', 'USER', '2024-01-12 19:20:58', '$2y$12$A30sL9/qqWFbquLDFXB0jOQ1TS8JhAg9vc88euluw9B.WblKZ9TDG', NULL, NULL, NULL, 'VhV1GmBxkI', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(8, 'Daisha Okuneva', 'jkassulke@example.net', '480-477-1829', 'USER', '2024-01-12 19:20:58', '$2y$12$A30sL9/qqWFbquLDFXB0jOQ1TS8JhAg9vc88euluw9B.WblKZ9TDG', NULL, NULL, NULL, 'FlCd32HqRr', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(9, 'Elmira Barton V', 'ned.halvorson@example.org', '848-952-4956', 'USER', '2024-01-12 19:20:58', '$2y$12$A30sL9/qqWFbquLDFXB0jOQ1TS8JhAg9vc88euluw9B.WblKZ9TDG', NULL, NULL, NULL, '1K0FFMusT6', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(10, 'Admin', 'admin123@gmail.com', '081232345677', 'ADMIN', '2024-01-12 19:20:58', '$2y$12$j0J807gcdAN8LBNHN9JMn.TqpOqjad2U/v4lkFi/z7YxhGIDIz0qW', NULL, NULL, NULL, 'XcJw5IwAmRBAWNZVF4vABObX8pWJapGeDZWj1Ie1UcpBwxJ8ysOAZGkUYYFo', '2024-01-12 19:20:58', '2024-01-12 19:20:58'),
(11, 'user123', 'user123@gmail.com', NULL, NULL, NULL, '$2y$12$mUYoiM3VO0uXHVCeuxUKCewzgeUQqJsAaqiHve6S9dnvGbCLgmM2G', NULL, NULL, NULL, NULL, '2024-01-13 18:56:58', '2024-01-13 18:56:58'),
(12, 'user1234', 'user1234@gmail.com', '0812345678', 'USER', NULL, '$2y$12$maH3k2.SSbeiFD0Tg1qX.uvX60BiI4tQvBp18lBDYVpie9VYt9.Ee', NULL, NULL, NULL, NULL, '2024-01-13 19:01:14', '2024-01-13 19:01:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
