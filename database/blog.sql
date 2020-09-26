-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2020 at 07:56 PM
-- Server version: 10.3.22-MariaDB-1ubuntu1
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_name`, `comment`, `created_at`, `updated_at`) VALUES
(1, '2', 'Biswajit Pradhan', 'nice to see you', '2020-09-23 22:30:24', '2020-09-23 22:30:24'),
(2, '4', 'Biswajit Pradhan', 'injected humour, or randomised', '2020-09-23 22:45:06', '2020-09-23 22:45:06'),
(3, '1', 'Amresh', 'eee', '2020-09-24 05:17:48', '2020-09-24 05:17:48'),
(4, '1', 'Biswajit Pradhan', 'eee', '2020-09-24 05:30:13', '2020-09-24 05:30:13'),
(5, '2', 'Biswajit Pradhan', 'eefdsf', '2020-09-24 05:34:20', '2020-09-24 05:34:20'),
(6, '3', 'Biswajit Pradhan', 'all details', '2020-09-24 05:55:35', '2020-09-24 05:55:35'),
(7, '3', 'Biswajit Pradhan', 'all details', '2020-09-24 05:58:26', '2020-09-24 05:58:26'),
(8, '3', 'Biswajit Pradhan', 're', '2020-09-24 06:06:36', '2020-09-24 06:06:36'),
(9, '3', 'Biswajit Pradhan', 'asdsad', '2020-09-24 06:07:04', '2020-09-24 06:07:04'),
(10, '3', 'Amresh', 'asdfdsf', '2020-09-24 06:08:24', '2020-09-24 06:08:24'),
(11, '1', 'Amresh', 'dzffd', '2020-09-24 06:13:06', '2020-09-24 06:13:06'),
(12, '2', 'Amresh', 'dfsf', '2020-09-24 06:19:44', '2020-09-24 06:19:44'),
(13, '2', 'Amresh', 'fggffg', '2020-09-24 06:21:23', '2020-09-24 06:21:23'),
(14, '2', 'Amresh', 'fggffg', '2020-09-24 06:24:04', '2020-09-24 06:24:04'),
(15, '2', 'Amresh', 'fggffg', '2020-09-24 06:25:00', '2020-09-24 06:25:00'),
(16, '1', 'Amresh', 'sdfsdfs', '2020-09-24 06:26:26', '2020-09-24 06:26:26'),
(17, '2', 'Amresh', 'sdfsf', '2020-09-24 06:37:44', '2020-09-24 06:37:44'),
(18, '2', 'Amresh', 'sdfsdf', '2020-09-24 06:39:01', '2020-09-24 06:39:01'),
(19, '1', 'Amresh', 'asdsfds', '2020-09-24 06:41:04', '2020-09-24 06:41:04'),
(20, '4', 'Amresh', 'sda', '2020-09-24 06:43:47', '2020-09-24 06:43:47'),
(21, '3', 'Amresh', 'xcsdcs', '2020-09-24 06:45:44', '2020-09-24 06:45:44'),
(22, '3', 'Amresh', 'sadsfsfd', '2020-09-24 06:50:33', '2020-09-24 06:50:33'),
(23, '3', 'Amresh', 'sdsf', '2020-09-24 06:51:44', '2020-09-24 06:51:44'),
(24, '2', 'Amresh', 'xdvgdf', '2020-09-24 06:55:30', '2020-09-24 06:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`id`, `name`, `email`, `mobile`, `age`, `created_at`, `updated_at`) VALUES
(1, 'name', 'email', 'mobile', 'age', '2020-09-24 04:03:21', '2020-09-24 04:03:21'),
(2, 'sdsdw', 'dsfsd@gmail.com', '9927828', '22', '2020-09-24 04:03:21', '2020-09-24 04:03:21'),
(3, 'sdsd', 'dd@gmail.com', '65373637', '32', '2020-09-24 04:03:21', '2020-09-24 04:03:21'),
(4, 'ddsd', 'fdd@gmail.com', '6338738', '22', '2020-09-24 04:03:21', '2020-09-24 04:03:21'),
(5, 'name', 'email', 'mobile', 'age', '2020-09-24 04:13:02', '2020-09-24 04:13:02'),
(6, 'sdsdw', 'dsfsd@gmail.com', '9927828', '22', '2020-09-24 04:13:02', '2020-09-24 04:13:02'),
(7, 'sdsd', 'dd@gmail.com', '65373637', '32', '2020-09-24 04:13:02', '2020-09-24 04:13:02'),
(8, 'ddsd', 'fdd@gmail.com', '6338738', '22', '2020-09-24 04:13:02', '2020-09-24 04:13:02'),
(9, 'name', 'email', 'mobile', 'age', '2020-09-24 04:16:03', '2020-09-24 04:16:03'),
(10, 'name', 'email', 'mobile', 'age', '2020-09-24 05:18:53', '2020-09-24 05:18:53'),
(11, 'sdsdw', 'dsfsd@gmail.com', '9927828', '22', '2020-09-24 05:18:53', '2020-09-24 05:18:53'),
(12, 'sdsd', 'dd@gmail.com', '65373637', '32', '2020-09-24 05:18:53', '2020-09-24 05:18:53'),
(13, 'ddsd', 'fdd@gmail.com', '6338738', '22', '2020-09-24 05:18:53', '2020-09-24 05:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_22_051546_create_tags_table', 1),
(5, '2020_09_22_064057_create_posts_table', 1),
(6, '2020_09_22_115645_create_comments_table', 2),
(7, '2020_09_23_092651_create_notifications_table', 3),
(8, '2020_09_24_092911_create_imports_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1d1ea3b2-65fe-4942-ac18-49a0ea6d82a2', 'App\\Notifications\\Comment', 'App\\User', 2, '{\"data\":\"Where can I get some\"}', NULL, '2020-09-23 22:45:10', '2020-09-23 22:45:10'),
('6c6e0d78-69b4-4949-afb4-625872145c30', 'App\\Notifications\\Comment', 'App\\User', 1, '{\"data\":\"What is Lorem Ipsum\"}', NULL, '2020-09-24 06:08:28', '2020-09-24 06:08:28'),
('805f7202-fd6d-4b0d-b46b-b9ebddfecb37', 'App\\Notifications\\Comment', 'App\\User', 2, '{\"data\":\"Where can I get some\"}', NULL, '2020-09-23 22:45:14', '2020-09-23 22:45:14'),
('880ee5da-b41c-475d-967a-b887b343830c', 'App\\Notifications\\Comment', 'App\\User', 2, '{\"data\":\"Ready\"}', NULL, '2020-09-24 05:34:23', '2020-09-24 05:34:23'),
('8ce9f6cb-0e85-4dd1-9c0f-c4a630021923', 'App\\Notifications\\Comment', 'App\\User', 1, '{\"data\":\"Demo\"}', NULL, '2020-09-24 05:17:52', '2020-09-24 05:17:52'),
('a7318296-9e9d-4163-8a64-dde2d64e6101', 'App\\Notifications\\Comment', 'App\\User', 2, '{\"data\":\"Ready\"}', NULL, '2020-09-24 06:55:35', '2020-09-24 06:55:35'),
('cb69613a-d7bb-4cf7-ae30-bb5bc8ae4ddf', 'App\\Notifications\\Comment', 'App\\User', 1, '{\"data\":\"Demo\"}', NULL, '2020-09-24 05:30:17', '2020-09-24 05:30:17'),
('d32ca8e0-f8d0-4eb1-b8d9-37f7ac1bcb8b', 'App\\Notifications\\Comment', 'App\\User', 1, '{\"data\":\"Demo\"}', NULL, '2020-09-24 06:13:10', '2020-09-24 06:13:10'),
('dad44e8f-cf89-409b-a941-3387bf85c46d', 'App\\Notifications\\Comment', 'App\\User', 2, '{\"data\":\"Ready\"}', NULL, '2020-09-23 22:30:24', '2020-09-23 22:30:24'),
('e3154ebe-a471-4c0b-b913-7472ab902015', 'App\\Notifications\\Comment', 'App\\User', 1, '{\"data\":\"Demo\"}', NULL, '2020-09-24 06:26:30', '2020-09-24 06:26:30'),
('ef0a0859-8b94-4a7a-be67-e73ed692b359', 'App\\Notifications\\Comment', 'App\\User', 1, '{\"data\":\"What is Lorem Ipsum\"}', NULL, '2020-09-24 06:45:47', '2020-09-24 06:45:47'),
('f2f35042-18d5-4a6e-8d4e-7815bce7d308', 'App\\Notifications\\Comment', 'App\\User', 2, '{\"data\":\"Ready\"}', NULL, '2020-09-23 22:30:28', '2020-09-23 22:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `description`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'Demo', 'qqq', '2', '2020-09-22 04:31:39', '2020-09-22 04:31:39'),
(2, '2', 'Ready', 'goooood', '2', '2020-09-22 05:21:00', '2020-09-22 05:21:00'),
(3, '1', 'What is Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '4', '2020-09-22 06:12:31', '2020-09-22 06:12:31'),
(4, '2', 'Where can I get some', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', '3', '2020-09-23 22:44:12', '2020-09-23 22:44:12'),
(5, '2', '1914 translation by H. Rackham', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '2 3 4', '2020-09-23 23:34:18', '2020-09-23 23:34:18'),
(6, '2', 'Section 1.10.32 of', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2 4', '2020-09-24 00:46:49', '2020-09-24 00:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tagname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tagname`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2020-09-22 04:11:54', '2020-09-22 04:11:54'),
(2, 'Jobs', '2020-09-22 04:11:58', '2020-09-22 04:11:58'),
(3, 'Web dev', '2020-09-22 04:12:02', '2020-09-22 04:12:02'),
(4, 'News', '2020-09-22 04:12:09', '2020-09-22 04:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Biswajit Pradhan', 'biswajitpradhan120@gmail.com', NULL, '$2y$10$A2m1RuzGsFLylwDWbpndeuJuzcr9apQ/fHdY.F2pTP0AbN/D/Ohmi', 'DL56D2lXpfIR9i4DVmhs3BeNpnwEsL45JcC9XAFStc7X3sryJVcNZ78YEv0k', '2020-09-22 04:11:43', '2020-09-22 04:11:43'),
(2, 'Amresh', 'biswajitpradhan.pcsglobal@gmail.com', NULL, '$2y$10$.N1fFjN.p6s5y13DncDPiuK4IgvxhOempLfZ7BJZYFHdjY509XnBa', 'nRcbaVYyn3lMgJYl8d2gXalsvBoVTF2vnkpYeUtBbj7Mgqx3dnn6WpanoWaU', '2020-09-22 05:20:30', '2020-09-22 05:20:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
