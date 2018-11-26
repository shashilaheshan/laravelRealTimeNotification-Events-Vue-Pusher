-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 06:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pusher`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_06_160719_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `added_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image_url`, `created_at`, `updated_at`, `added_by`) VALUES
(44, 'Vue.js', 'Vue with Redis', 'https://image.flaticon.com/sprites/new_packs/1166878-stationery.png', '2018-11-13 00:47:22', '2018-11-13 00:47:22', 'shashila'),
(45, 'Laravel tutorials', 'laravel summit', 'https://image.flaticon.com/sprites/new_packs/1270963-wedding.png', '2018-11-13 00:47:43', '2018-11-13 00:47:43', 'Diluke'),
(46, 'reddis', 'reddis posts', 'https://image.flaticon.com/sprites/new_packs/1167680-wildlife.png', '2018-11-13 00:48:42', '2018-11-13 00:48:42', 'shashila'),
(47, 'vue.plus', 'ss', 'https://image.flaticon.com/sprites/new_packs/145797-social-network-logo-collection.png', '2018-11-13 00:48:54', '2018-11-13 00:48:54', 'Diluke'),
(48, 'df', 'df', 'https://vuejs.org/images/logo.png', '2018-11-13 00:57:35', '2018-11-13 00:57:35', 'Diluke'),
(49, 'rer', 'ere', 'https://image.flaticon.com/sprites/new_packs/1196818-city-park.png', '2018-11-13 01:22:15', '2018-11-13 01:22:15', 'shashila'),
(50, 'Todays Work', 'Todays Work', 'https://image.flaticon.com/sprites/new_packs/145797-social-network-logo-collection.png', '2018-11-13 01:24:58', '2018-11-13 01:24:58', 'Diluka'),
(51, 'Shashila Rice mmills', 'Rice mills', 'https://www.google.lk/images/branding/googlelogo/2x/googlelogo_color_120x44dp.png', '2018-11-13 01:40:19', '2018-11-13 01:40:19', 'shashila'),
(52, 'Humming', 'humming', 'https://image.flaticon.com/sprites/new_packs/1166878-stationery.png', '2018-11-22 07:28:28', '2018-11-22 07:28:28', 'Diluka'),
(53, 'bla bla', 'jsjsj', 'jsjsj', '2018-11-22 08:51:33', '2018-11-22 08:51:33', 'Diluka'),
(54, 'edd', 'dd', 'ffdf', '2018-11-22 08:53:18', '2018-11-22 08:53:18', 'shashila'),
(55, 'edd', 'dd', 'ffdf', '2018-11-22 08:53:36', '2018-11-22 08:53:36', 'shashila'),
(56, 'fdf', 'fdf', 'fdf', '2018-11-22 08:54:22', '2018-11-22 08:54:22', 'shashila'),
(57, 'fdf', 'fdf', 'fdf', '2018-11-22 08:54:53', '2018-11-22 08:54:53', 'shashila'),
(58, 'sds', 'DSD', 'DSDS', '2018-11-22 08:57:06', '2018-11-22 08:57:06', 'shashila'),
(59, 'sdFF', 'FDF', 'FDFDF', '2018-11-22 08:59:43', '2018-11-22 08:59:43', 'shashila'),
(60, 'dd', 'dd', 'fdfdf', '2018-11-23 05:50:20', '2018-11-23 05:50:20', 'shashila'),
(61, 'hekkow', 'kdjfj', 'jfjfj', '2018-11-23 05:51:14', '2018-11-23 05:51:14', 'shashila'),
(62, 'jfjjfj', 'jfjfj', 'jfjfj', '2018-11-23 05:52:05', '2018-11-23 05:52:05', 'shashila'),
(63, 'mkvKFKK', 'M', 'jfjfj', '2018-11-23 05:53:38', '2018-11-23 05:53:38', 'shashila'),
(64, 'fdf', 'fdf', 'jfjfj', '2018-11-23 05:54:44', '2018-11-23 05:54:44', 'shashila'),
(65, 'jgjgj', 'jfjj', 'jjf', '2018-11-23 05:57:28', '2018-11-23 05:57:28', 'shashila'),
(66, 'nfnfn', 'mff', 'jfnjfn', '2018-11-23 06:02:15', '2018-11-23 06:02:15', 'shashila'),
(67, 'nmfnf', 'fj', 'kfkfk', '2018-11-23 06:02:43', '2018-11-23 06:02:43', 'shashila'),
(68, 'nvnvnnvn', 'cnnvnn', 'ncnnc', '2018-11-23 06:11:32', '2018-11-23 06:11:32', 'shashila'),
(69, 'dsd', 'sdds', 'sdd', '2018-11-23 06:17:07', '2018-11-23 06:17:07', 'shashila'),
(70, 'dndnnd', 'ndnndn', 'ndnd', '2018-11-23 06:18:02', '2018-11-23 06:18:02', 'shashila'),
(71, 'shadsd', 'fgfg', 'gfgfgfg', '2018-11-23 06:19:03', '2018-11-23 06:19:03', 'shashila'),
(72, 'nfnnfn', 'nfndnfn', 'gfgfgfg', '2018-11-23 06:35:57', '2018-11-23 06:35:57', 'shashila'),
(73, 'nnnn', 'nnn', 'jjj', '2018-11-23 06:40:09', '2018-11-23 06:40:09', 'shashila'),
(74, 'jdj', 'FJJF', 'JDJ', '2018-11-23 06:40:33', '2018-11-23 06:40:33', 'shashila'),
(75, 'KDKKDKD', 'KDKDKKD', 'JDJ', '2018-11-23 06:41:42', '2018-11-23 06:41:42', 'shashila'),
(76, 'jfjfjj', 'jfjfjjf', 'jfjfjjf', '2018-11-23 06:47:12', '2018-11-23 06:47:12', 'shashila'),
(77, 'kfjfj', 'jfjf', 'jfjfjjf', '2018-11-23 06:47:58', '2018-11-23 06:47:58', 'shashila'),
(78, 'kkkfk', 'fmnfnfn', 'jfjfjjf', '2018-11-23 06:50:54', '2018-11-23 06:50:54', 'shashila'),
(79, 'jfjjfj', 'kjjj', 'jfjfjjf', '2018-11-23 06:52:57', '2018-11-23 06:52:57', 'shashila'),
(80, 'kfkkf', 'mfmfm', 'jfjfjjf', '2018-11-23 06:54:55', '2018-11-23 06:54:55', 'shashila'),
(81, 'ff', 'jfjfj', 'jfjfjjf', '2018-11-23 06:58:34', '2018-11-23 06:58:34', 'shashila'),
(82, 'jjdfjjd', 'fjfjjf', 'fjfjjfj', '2018-11-23 07:00:19', '2018-11-23 07:00:19', 'shashila'),
(83, 'njknjn`', 'jfj', 'fjfjjfj', '2018-11-23 07:01:37', '2018-11-23 07:01:37', 'shashila'),
(84, 'jfjjf', 'jfjfj', 'fjfjjfj', '2018-11-23 07:02:31', '2018-11-23 07:02:31', 'shashila'),
(85, 'jjfj', 'jdjfj', 'fjfjjfj', '2018-11-23 07:03:25', '2018-11-23 07:03:25', 'shashila'),
(86, 'jjjkjkj', 'jnj', 'fjfjjfj', '2018-11-23 07:04:04', '2018-11-23 07:04:04', 'shashila'),
(87, 'dk;fk', 'jdj', 'fjfjjfj', '2018-11-23 07:04:45', '2018-11-23 07:04:45', 'shashila'),
(88, 'jhj', 'mfjf`', 'fjfjjfj', '2018-11-23 07:06:18', '2018-11-23 07:06:18', 'shashila'),
(89, 'kgjj', 'jfjnf', 'fjfjjfj', '2018-11-23 07:08:14', '2018-11-23 07:08:14', 'shashila'),
(90, 'jhjj', 'ghg', 'fjfjjfj', '2018-11-23 07:18:18', '2018-11-23 07:18:18', 'shashila'),
(91, 'klkj', 'kk', 'fjfjjfj', '2018-11-23 07:22:19', '2018-11-23 07:22:19', 'shashila'),
(92, 'kdjkfj', 'kfjkdj', 'fjfjjfj', '2018-11-23 07:27:24', '2018-11-23 07:27:24', 'shashila'),
(93, 'VFX', 'VFX', 'vfx', '2018-11-23 07:29:20', '2018-11-23 07:29:20', 'shashila'),
(94, 'Vue.js', 'vue', 'vue', '2018-11-23 07:55:06', '2018-11-23 07:55:06', 'shashila');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Diluka', 'diluka@gmail.com', NULL, '$2y$10$jkxpV0YL6ky.vIOjFih/Je2ZWr53SPhqjKx5v1BS.BJrHpO8fx9JW', 'wELN5FTXHeS6E10IclW8UKz1lUsIQMqYu8ZBXmq3wZk4oqxUDabkRsJIMorm', '2018-11-07 08:38:58', '2018-11-07 08:38:58'),
(2, 'shashila', 'shashila@gmail.com', NULL, '$2y$10$tkfi74btFgQKbdd1Qq1g0ekPNtAe3pu3mBMqxibnMY.NcJGGZU1o2', NULL, '2018-11-07 08:43:08', '2018-11-07 08:43:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
