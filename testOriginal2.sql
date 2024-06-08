-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3310
-- Generation Time: Jun 08, 2024 at 05:19 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `designio`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint UNSIGNED NOT NULL,
  `user1_id` bigint UNSIGNED NOT NULL,
  `user2_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user1_id`, `user2_id`, `created_at`, `updated_at`) VALUES
(1, 5, 8, '2023-11-01 12:19:16', '2023-11-01 12:19:16'),
(2, 5, 9, '2023-11-01 12:19:38', '2023-11-01 12:19:38'),
(3, 4, 5, '2023-11-02 10:20:20', '2023-11-02 10:20:20'),
(5, 5, 14, '2023-11-02 12:29:11', '2023-11-02 12:29:11'),
(6, 4, 15, '2023-11-13 07:15:07', '2023-11-13 07:15:07'),
(7, 4, 16, '2023-11-13 07:15:16', '2023-11-13 07:15:16'),
(8, 15, 14, '2023-11-13 08:22:53', '2023-11-13 08:22:53'),
(9, 14, 17, '2023-11-13 08:25:21', '2023-11-13 08:25:21'),
(10, 15, 6, '2023-11-14 12:01:14', '2023-11-14 12:01:14'),
(11, 15, 8, '2023-11-14 12:01:24', '2023-11-14 12:01:24'),
(12, 15, 5, '2023-11-14 12:03:15', '2023-11-14 12:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `followed_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `followed_user_id`, `created_at`, `updated_at`) VALUES
(33, 5, 8, '2023-10-11 10:40:36', '2023-10-11 10:40:36'),
(34, 5, 9, '2023-10-11 10:54:57', '2023-10-11 10:54:57'),
(37, 5, 15, '2023-10-11 12:18:23', '2023-10-11 12:18:23'),
(44, 10, 7, '2023-10-14 10:36:36', '2023-10-14 10:36:36'),
(45, 10, 6, '2023-10-14 10:36:38', '2023-10-14 10:36:38'),
(46, 5, 10, '2023-10-14 10:37:03', '2023-10-14 10:37:03'),
(48, 15, 10, '2023-10-14 10:45:44', '2023-10-14 10:45:44'),
(49, 4, 15, '2023-10-17 10:52:35', '2023-10-17 10:52:35'),
(55, 8, 5, '2023-10-17 12:03:36', '2023-10-17 12:03:36'),
(57, 9, 8, '2023-10-19 10:29:49', '2023-10-19 10:29:49'),
(58, 4, 16, '2023-10-19 10:45:35', '2023-10-19 10:45:35'),
(59, 16, 8, '2023-10-19 10:46:10', '2023-10-19 10:46:10'),
(60, 16, 9, '2023-10-19 10:46:13', '2023-10-19 10:46:13'),
(61, 5, 16, '2023-10-19 10:55:48', '2023-10-19 10:55:48'),
(62, 17, 16, '2023-10-19 11:40:55', '2023-10-19 11:40:55'),
(63, 17, 9, '2023-10-19 11:41:03', '2023-10-19 11:41:03'),
(64, 17, 8, '2023-10-19 11:41:05', '2023-10-19 11:41:05'),
(65, 5, 17, '2023-10-19 11:43:29', '2023-10-19 11:43:29'),
(66, 5, 14, '2023-10-19 11:43:30', '2023-10-19 11:43:30'),
(67, 5, 13, '2023-10-19 11:43:31', '2023-10-19 11:43:31'),
(68, 5, 12, '2023-10-19 11:43:32', '2023-10-19 11:43:32'),
(69, 5, 11, '2023-10-19 11:43:32', '2023-10-19 11:43:32'),
(70, 5, 7, '2023-10-19 11:43:33', '2023-10-19 11:43:33'),
(71, 5, 6, '2023-10-19 11:43:34', '2023-10-19 11:43:34'),
(72, 5, 4, '2023-10-19 11:43:35', '2023-10-19 11:43:35'),
(73, 14, 17, '2023-10-19 11:44:19', '2023-10-19 11:44:19'),
(74, 14, 16, '2023-10-19 11:44:19', '2023-10-19 11:44:19'),
(75, 14, 15, '2023-10-19 11:44:20', '2023-10-19 11:44:20'),
(76, 14, 13, '2023-10-19 11:44:21', '2023-10-19 11:44:21'),
(77, 14, 12, '2023-10-19 11:44:21', '2023-10-19 11:44:21'),
(78, 14, 11, '2023-10-19 11:44:22', '2023-10-19 11:44:22'),
(79, 14, 10, '2023-10-19 11:44:24', '2023-10-19 11:44:24'),
(80, 14, 9, '2023-10-19 11:44:24', '2023-10-19 11:44:24'),
(81, 14, 8, '2023-10-19 11:44:26', '2023-10-19 11:44:26'),
(82, 14, 7, '2023-10-19 11:44:26', '2023-10-19 11:44:26'),
(83, 14, 6, '2023-10-19 11:44:27', '2023-10-19 11:44:27'),
(84, 14, 5, '2023-10-19 11:44:28', '2023-10-19 11:44:28'),
(85, 14, 4, '2023-10-19 11:44:29', '2023-10-19 11:44:29'),
(86, 10, 17, '2023-10-22 10:03:15', '2023-10-22 10:03:15'),
(87, 10, 9, '2023-10-22 10:03:24', '2023-10-22 10:03:24'),
(88, 15, 17, '2023-10-22 10:05:44', '2023-10-22 10:05:44'),
(89, 15, 16, '2023-10-22 10:05:45', '2023-10-22 10:05:45'),
(90, 15, 14, '2023-10-22 10:05:46', '2023-10-22 10:05:46'),
(91, 15, 13, '2023-10-22 10:05:47', '2023-10-22 10:05:47'),
(92, 15, 12, '2023-10-22 10:05:47', '2023-10-22 10:05:47'),
(93, 15, 11, '2023-10-22 10:05:48', '2023-10-22 10:05:48'),
(94, 15, 9, '2023-10-22 10:05:49', '2023-10-22 10:05:49'),
(95, 15, 8, '2023-10-22 10:05:51', '2023-10-22 10:05:51'),
(96, 15, 7, '2023-10-22 10:05:51', '2023-10-22 10:05:51'),
(97, 15, 6, '2023-10-22 10:05:53', '2023-10-22 10:05:53'),
(98, 15, 5, '2023-10-22 10:05:53', '2023-10-22 10:05:53'),
(99, 15, 4, '2023-10-22 10:05:54', '2023-10-22 10:05:54'),
(103, 4, 5, '2023-10-30 10:23:04', '2023-10-30 10:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(19, 5, 9, '2023-10-17 10:47:58', '2023-10-17 10:47:58'),
(21, 5, 4, '2023-10-17 10:48:02', '2023-10-17 10:48:02'),
(22, 5, 7, '2023-10-17 10:51:52', '2023-10-17 10:51:52'),
(26, 4, 7, '2023-10-17 10:52:51', '2023-10-17 10:52:51'),
(30, 9, 10, '2023-10-19 10:29:59', '2023-10-19 10:29:59'),
(31, 9, 11, '2023-10-19 10:30:02', '2023-10-19 10:30:02'),
(32, 5, 18, '2023-10-19 10:56:24', '2023-10-19 10:56:24'),
(33, 5, 17, '2023-10-19 10:56:26', '2023-10-19 10:56:26'),
(34, 5, 15, '2023-10-19 10:56:32', '2023-10-19 10:56:32'),
(35, 5, 12, '2023-10-19 10:56:36', '2023-10-19 10:56:36'),
(36, 5, 10, '2023-10-19 10:56:40', '2023-10-19 10:56:40'),
(37, 14, 18, '2023-10-19 11:44:31', '2023-10-19 11:44:31'),
(38, 14, 17, '2023-10-19 11:44:33', '2023-10-19 11:44:33'),
(39, 14, 16, '2023-10-19 11:44:38', '2023-10-19 11:44:38'),
(40, 14, 15, '2023-10-19 11:44:40', '2023-10-19 11:44:40'),
(41, 14, 13, '2023-10-19 11:44:45', '2023-10-19 11:44:45'),
(42, 14, 12, '2023-10-19 11:44:48', '2023-10-19 11:44:48'),
(43, 14, 11, '2023-10-19 11:44:50', '2023-10-19 11:44:50'),
(44, 14, 10, '2023-10-19 11:44:53', '2023-10-19 11:44:53'),
(45, 14, 7, '2023-10-19 11:44:55', '2023-10-19 11:44:55'),
(46, 14, 6, '2023-10-19 11:44:58', '2023-10-19 11:44:58'),
(47, 14, 5, '2023-10-19 11:45:00', '2023-10-19 11:45:00'),
(48, 14, 3, '2023-10-19 11:45:02', '2023-10-19 11:45:02'),
(49, 14, 2, '2023-10-19 11:45:10', '2023-10-19 11:45:10'),
(50, 14, 1, '2023-10-19 11:45:12', '2023-10-19 11:45:12'),
(51, 4, 18, '2023-10-22 09:48:19', '2023-10-22 09:48:19'),
(52, 4, 17, '2023-10-22 09:48:29', '2023-10-22 09:48:29'),
(53, 14, 19, '2023-10-22 09:53:51', '2023-10-22 09:53:51'),
(54, 10, 15, '2023-10-22 10:03:29', '2023-10-22 10:03:29'),
(55, 10, 14, '2023-10-22 10:03:31', '2023-10-22 10:03:31'),
(56, 10, 13, '2023-10-22 10:03:33', '2023-10-22 10:03:33'),
(57, 10, 12, '2023-10-22 10:03:35', '2023-10-22 10:03:35'),
(58, 15, 6, '2023-10-22 10:05:36', '2023-10-22 10:05:36'),
(59, 15, 19, '2023-10-22 10:06:01', '2023-10-22 10:06:01'),
(60, 15, 18, '2023-10-22 10:06:02', '2023-10-22 10:06:02'),
(61, 15, 11, '2023-10-22 10:06:13', '2023-10-22 10:06:13'),
(62, 15, 2, '2023-10-22 10:06:23', '2023-10-22 10:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `chat_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `chat_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 'Hello', '2023-11-02 10:49:39', '2023-11-02 10:49:39'),
(2, 3, 4, 'hii', '2023-11-02 11:46:46', '2023-11-02 11:46:46'),
(3, 3, 5, 'Hey, Whatsapp', '2023-11-02 11:51:34', '2023-11-02 11:51:34'),
(4, 3, 4, 'We are planning for a movie', '2023-11-02 11:51:58', '2023-11-02 11:51:58'),
(5, 3, 4, 'will you join us?', '2023-11-02 11:52:02', '2023-11-02 11:52:02'),
(6, 3, 5, 'When', '2023-11-02 11:52:17', '2023-11-02 11:52:17'),
(7, 3, 4, 'may be on sunday or saturday nigh', '2023-11-02 11:52:30', '2023-11-02 11:52:30'),
(8, 3, 5, 'i am in', '2023-11-02 11:52:40', '2023-11-02 11:52:40'),
(9, 3, 4, 'nice', '2023-11-02 11:52:48', '2023-11-02 11:52:48'),
(10, 3, 5, 'who are in party then?', '2023-11-02 12:15:32', '2023-11-02 12:15:32'),
(11, 3, 4, 'you me chand,chinmay,joel,yash,karthik', '2023-11-02 12:16:08', '2023-11-02 12:16:08'),
(12, 3, 4, 'yash', '2023-11-02 12:16:13', '2023-11-02 12:16:13'),
(13, 3, 4, 'sagar', '2023-11-02 12:16:14', '2023-11-02 12:16:14'),
(14, 3, 4, 'aryan', '2023-11-02 12:16:26', '2023-11-02 12:16:26'),
(15, 3, 5, 'okk', '2023-11-02 12:16:31', '2023-11-02 12:16:31'),
(16, 3, 5, 'bythe way which movie 😅', '2023-11-02 12:17:04', '2023-11-02 12:17:04'),
(17, 3, 4, 'film red', '2023-11-02 12:17:21', '2023-11-02 12:17:21'),
(18, 3, 5, 'yup', '2023-11-02 12:17:25', '2023-11-02 12:17:25'),
(19, 3, 5, '✌️✌️', '2023-11-02 12:18:16', '2023-11-02 12:18:16'),
(20, 3, 4, '2000 per head', '2023-11-02 12:18:39', '2023-11-02 12:18:39'),
(21, 3, 5, 'ok', '2023-11-02 12:18:43', '2023-11-02 12:18:43'),
(22, 3, 4, 'what do you think', '2023-11-02 12:19:09', '2023-11-02 12:19:09'),
(23, 3, 5, '?', '2023-11-02 12:19:21', '2023-11-02 12:19:21'),
(24, 3, 4, 'about cinema hall', '2023-11-02 12:19:31', '2023-11-02 12:19:31'),
(25, 3, 5, 'i think pvr is best', '2023-11-02 12:20:01', '2023-11-02 12:20:01'),
(26, 3, 5, 'xperia', '2023-11-02 12:20:09', '2023-11-02 12:20:09'),
(27, 3, 5, 'but its costly', '2023-11-02 12:20:23', '2023-11-02 12:20:23'),
(28, 3, 4, 'ok', '2023-11-02 12:20:29', '2023-11-02 12:20:29'),
(29, 3, 5, 'good night', '2023-11-02 12:21:28', '2023-11-02 12:21:28'),
(30, 3, 4, 'Gn', '2023-11-02 12:21:37', '2023-11-02 12:21:37'),
(31, 2, 5, 'hey', '2023-11-02 12:24:57', '2023-11-02 12:24:57'),
(32, 2, 5, 'we are planning for film red', '2023-11-02 12:25:07', '2023-11-02 12:25:07'),
(33, 2, 5, 'are you inrested?', '2023-11-02 12:25:13', '2023-11-02 12:25:13'),
(34, 3, 4, 'hey', '2023-11-03 10:19:27', '2023-11-03 10:19:27'),
(35, 3, 4, 'we are planning for tommorow', '2023-11-03 10:19:34', '2023-11-03 10:19:34'),
(36, 3, 5, 'ok', '2023-11-03 10:20:52', '2023-11-03 10:20:52'),
(37, 6, 4, 'hey luffy', '2023-11-13 08:09:22', '2023-11-13 08:09:22'),
(38, 6, 4, 'can you give a msg to robin chan', '2023-11-13 08:09:44', '2023-11-13 08:09:44'),
(39, 6, 15, 'yes', '2023-11-13 08:11:09', '2023-11-13 08:11:09'),
(40, 6, 15, 'wahts your msg', '2023-11-13 08:11:13', '2023-11-13 08:11:13'),
(41, 6, 4, 'ask her for date', '2023-11-13 08:11:37', '2023-11-13 08:11:37'),
(42, 6, 15, 'what?', '2023-11-13 08:11:42', '2023-11-13 08:11:42'),
(43, 6, 4, 'ohh i mean', '2023-11-13 08:11:53', '2023-11-13 08:11:53'),
(44, 6, 4, 'we decided to meet at godvaley', '2023-11-13 08:12:09', '2023-11-13 08:12:09'),
(45, 6, 4, 'so just ask her for date😅😅😅😅', '2023-11-13 08:12:27', '2023-11-13 08:12:27'),
(46, 6, 15, 'ohh ok', '2023-11-13 08:12:34', '2023-11-13 08:12:34'),
(47, 6, 15, '😅😅😅✌️✌️✌️✌️', '2023-11-13 08:12:42', '2023-11-13 08:12:42'),
(48, 6, 4, 'thank you', '2023-11-13 08:12:58', '2023-11-13 08:12:58'),
(49, 6, 15, 'by the way where are you right now?', '2023-11-13 08:13:18', '2023-11-13 08:13:18'),
(50, 6, 4, 'i am right now on god valley', '2023-11-13 08:14:17', '2023-11-13 08:14:17'),
(51, 6, 15, 'ohh nice i will let you know <b>?</b>', '2023-11-13 08:14:59', '2023-11-13 08:14:59'),
(52, 6, 4, 'ok', '2023-11-13 08:15:34', '2023-11-13 08:15:34'),
(53, 8, 15, 'Hey naruto', '2023-11-13 08:23:42', '2023-11-13 08:23:42'),
(54, 8, 14, 'hello', '2023-11-13 08:25:34', '2023-11-13 08:25:34'),
(55, 8, 14, 'are you ready luffy?', '2023-11-13 08:25:45', '2023-11-13 08:25:45'),
(56, 8, 15, 'lets do it', '2023-11-13 08:26:01', '2023-11-13 08:26:01'),
(57, 8, 14, '🔥🔥🔥🔥🔥', '2023-11-13 08:30:51', '2023-11-13 08:30:51'),
(58, 8, 15, 'thank you for your support naruto', '2023-11-13 08:31:39', '2023-11-13 08:31:39'),
(59, 6, 15, 'she will meat you on 31st', '2023-11-14 10:31:36', '2023-11-14 10:31:36'),
(60, 6, 15, 'after war', '2023-11-14 10:31:41', '2023-11-14 10:31:41'),
(61, 8, 15, 'hey we are planning on 2 days after', '2023-11-14 10:34:05', '2023-11-14 10:34:05'),
(62, 8, 15, 'at god valley', '2023-11-14 10:34:12', '2023-11-14 10:34:12'),
(63, 8, 14, 'ok', '2023-11-14 11:21:04', '2023-11-14 11:21:04'),
(64, 8, 14, 'i will be there with sasuke and kakashi', '2023-11-14 11:21:22', '2023-11-14 11:21:22'),
(65, 6, 4, 'ok', '2023-11-14 11:22:18', '2023-11-14 11:22:18'),
(66, 12, 15, 'hey johny listen', '2023-11-14 12:03:26', '2023-11-14 12:03:26'),
(67, 12, 15, 'we are heading to god valley', '2023-11-14 12:03:38', '2023-11-14 12:03:38'),
(68, 12, 15, 'will you join us?', '2023-11-14 12:03:44', '2023-11-14 12:03:44'),
(69, 6, 4, 'hey luffy', '2023-11-16 10:39:25', '2023-11-16 10:39:25'),
(70, 6, 4, 'dragon wants to join war', '2023-11-16 10:39:45', '2023-11-16 10:39:45'),
(71, 6, 4, 'he will be with garp and others', '2023-11-16 10:39:54', '2023-11-16 10:39:54'),
(72, 6, 4, 'from west side', '2023-11-16 10:39:59', '2023-11-16 10:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2023_09_27_172133_create_users_table', 2),
(10, '2023_09_27_175711_add_email_to_users_table', 3),
(11, '2023_09_28_154045_create_profiles_table', 4),
(12, '2023_09_28_172150_add_user_id_to_profiles', 5),
(13, '2023_10_04_172602_create_posts_table', 6),
(14, '2023_10_08_115923_create_followers_table', 7),
(15, '2023_10_14_173248_create_likes_table', 8),
(16, '2023_10_25_154057_create_chats_table', 9),
(17, '2023_10_25_154230_create_messages_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 5, 'auth-token', '7f8b810697378d1bd5b1c62d959330287179d4fbd7917c80c929578b8cbe8207', '[\"*\"]', NULL, NULL, '2023-10-06 12:08:17', '2023-10-06 12:08:17'),
(2, 'App\\Models\\User', 5, 'auth-token', '1d3dd8d33e4abb53d141696262dcc07c396f75a9c05d06b9534a886982fba486', '[\"*\"]', NULL, NULL, '2023-10-06 12:20:48', '2023-10-06 12:20:48'),
(3, 'App\\Models\\User', 4, 'auth-token', '6c90f677ccf8afc343c0d23a5b6003b13b6c7bd4d5d77b32ffe5839e944ee727', '[\"*\"]', NULL, NULL, '2023-10-06 12:24:48', '2023-10-06 12:24:48'),
(4, 'App\\Models\\User', 4, 'auth-token', 'b0212ce9fe62256bb2c1aa77348fd43aefe9d1ce55fef8e9e9c74ec72650de5b', '[\"*\"]', NULL, NULL, '2023-10-06 12:37:07', '2023-10-06 12:37:07'),
(5, 'App\\Models\\User', 4, 'auth-token', 'e845d3149e61327fe0b3b4400b8ec42723f54ff523f33bf7d618dbf1f4c8d6d6', '[\"*\"]', NULL, NULL, '2023-10-07 12:10:13', '2023-10-07 12:10:13'),
(6, 'App\\Models\\User', 4, 'auth-token', '787e985f101a4fe1ba1eda486e1fcd9ad9663cd039987cecf42914ef11aa730c', '[\"*\"]', '2023-10-08 06:14:39', NULL, '2023-10-08 06:02:43', '2023-10-08 06:14:39'),
(7, 'App\\Models\\User', 4, 'auth-token', '26dd9ecd425abbbc47b4c8bc9a327110c0527ae746adece80d6cd89d4268594c', '[\"*\"]', NULL, NULL, '2023-10-08 06:16:17', '2023-10-08 06:16:17'),
(8, 'App\\Models\\User', 4, 'auth-token', 'e54f670fb6a9f758766c9e385707afd2bd765f0afe1a98ef2311b34d0c2ce6dd', '[\"*\"]', '2023-10-08 07:15:23', NULL, '2023-10-08 06:22:58', '2023-10-08 07:15:23'),
(9, 'App\\Models\\User', 4, 'auth-token', 'd17c013904cb661d168feb91228704af9b335a41da928e33afe5d47c73858fc2', '[\"*\"]', '2023-10-08 07:31:37', NULL, '2023-10-08 07:15:35', '2023-10-08 07:31:37'),
(10, 'App\\Models\\User', 14, 'auth-token', '3161b0254dcb9fc95763e8d642fa5356a5adc693cc13276f996762602f33ae46', '[\"*\"]', '2023-10-10 12:56:12', NULL, '2023-10-10 12:46:48', '2023-10-10 12:56:12'),
(11, 'App\\Models\\User', 5, 'auth-token', '0a08ec5734a6f0937c6010fffdd55d620d1d888342bd81932811f55a523135c1', '[\"*\"]', '2023-10-11 12:42:30', NULL, '2023-10-11 10:13:06', '2023-10-11 12:42:30'),
(12, 'App\\Models\\User', 5, 'auth-token', '1e3912bd96c4534db2219b3471e83bce0cdcf3955c76df51c9540e80d05465b5', '[\"*\"]', NULL, NULL, '2023-10-12 10:35:47', '2023-10-12 10:35:47'),
(13, 'App\\Models\\User', 14, 'auth-token', 'e5ca2f351675965b7a4327ec00f36e4167db34f0a6fe614c2d3da5bc7c0730bc', '[\"*\"]', NULL, NULL, '2023-10-12 11:38:10', '2023-10-12 11:38:10'),
(14, 'App\\Models\\User', 15, 'auth-token', '7b28b1158d6b063ee09b848e10e82372529a5f9d41b55474bb38e6efc92eac22', '[\"*\"]', NULL, NULL, '2023-10-12 12:16:50', '2023-10-12 12:16:50'),
(15, 'App\\Models\\User', 4, 'auth-token', '8c91308b3dd8b31201ec9db52ddbb7ba1d406553c1d08f29d5ed3204fbd1d2c5', '[\"*\"]', NULL, NULL, '2023-10-14 10:14:57', '2023-10-14 10:14:57'),
(16, 'App\\Models\\User', 5, 'auth-token', 'bd5ee1cf97e8fad5ccd6d87b56c66d303e5ba9370aa409467c58361453037373', '[\"*\"]', '2023-10-14 12:28:38', NULL, '2023-10-14 10:17:22', '2023-10-14 12:28:38'),
(17, 'App\\Models\\User', 10, 'auth-token', '87110f2ab2ef09a6494161253a81d02b66e6249cd52ab5c279240a4862c6419b', '[\"*\"]', NULL, NULL, '2023-10-14 10:20:05', '2023-10-14 10:20:05'),
(18, 'App\\Models\\User', 10, 'auth-token', '8967973a3dcfce0d86e33a00d63bc65996be3b3f0dbbf2dcea952c1a370d7b9d', '[\"*\"]', '2023-10-14 10:36:38', NULL, '2023-10-14 10:26:41', '2023-10-14 10:36:38'),
(19, 'App\\Models\\User', 15, 'auth-token', 'a5c3c42bf5ba15129d374d40b06bdb69a8b64ba98d5af98967a01818f815606b', '[\"*\"]', '2023-10-14 10:45:55', NULL, '2023-10-14 10:44:47', '2023-10-14 10:45:55'),
(20, 'App\\Models\\User', 14, 'auth-token', '3f1fd927e5275a82eb3d5ff26331b428b79478cff1b0df9d5abb3c6e387889f2', '[\"*\"]', NULL, NULL, '2023-10-14 10:48:17', '2023-10-14 10:48:17'),
(21, 'App\\Models\\User', 5, 'auth-token', '07ee7432083ada52a1336e9d1d408e7ffd2f8460da7d62dbad81e2b664ade514', '[\"*\"]', '2023-10-16 11:26:25', NULL, '2023-10-16 10:05:00', '2023-10-16 11:26:25'),
(22, 'App\\Models\\User', 5, 'auth-token', 'f781e9e2fce6f7c2dd75ae23e23f1d34475567ebd23f541441108a65119e02e3', '[\"*\"]', '2023-10-17 11:45:07', NULL, '2023-10-17 10:01:48', '2023-10-17 11:45:07'),
(23, 'App\\Models\\User', 4, 'auth-token', '9812ccc2a0df19e59d1f1684b38022960a59f596f9939ef76b4a2f6bfd1cae56', '[\"*\"]', '2023-10-17 10:52:51', NULL, '2023-10-17 10:52:22', '2023-10-17 10:52:51'),
(24, 'App\\Models\\User', 14, 'auth-token', '9ac933cb3ae7a1240a77ee55c5bfc8b5af355bb21b5aeeeccd3fbe0b455f9c5f', '[\"*\"]', '2023-10-17 11:53:38', NULL, '2023-10-17 11:52:31', '2023-10-17 11:53:38'),
(25, 'App\\Models\\User', 10, 'auth-token', '77ced1de3c2c00a6f3b3747af0b1571a78eb2e2f38239c7f4b1786a69328125d', '[\"*\"]', NULL, NULL, '2023-10-17 11:53:54', '2023-10-17 11:53:54'),
(26, 'App\\Models\\User', 8, 'auth-token', '91b8528ba3e1398ec705b721d586bd66060d196fb83fc4dec9b9d5bda7b6bc8c', '[\"*\"]', '2023-10-17 12:03:36', NULL, '2023-10-17 11:54:43', '2023-10-17 12:03:36'),
(27, 'App\\Models\\User', 5, 'auth-token', '85af2ca4b9d3ce144bb9e26c27e77b361d826f5e5a2534520f2c9f8add755125', '[\"*\"]', '2023-10-18 10:50:09', NULL, '2023-10-18 10:18:55', '2023-10-18 10:50:09'),
(28, 'App\\Models\\User', 5, 'auth-token', '82dea3f2cc64cc13593cd57c4a643569cf5187e90a9edc0086a9c5b36fabc3fa', '[\"*\"]', NULL, NULL, '2023-10-19 09:57:22', '2023-10-19 09:57:22'),
(29, 'App\\Models\\User', 5, 'auth-token', '7313b37daa3609aad0646f3091ce35e1cf9eccad90576ecbc9a8763e2e91f562', '[\"*\"]', NULL, NULL, '2023-10-19 09:57:37', '2023-10-19 09:57:37'),
(30, 'App\\Models\\User', 8, 'auth-token', '08632b13ea4a6ad16f2b18c168ab3e9471dd2023f0664180053028eb55603c41', '[\"*\"]', NULL, NULL, '2023-10-19 10:20:16', '2023-10-19 10:20:16'),
(31, 'App\\Models\\User', 9, 'auth-token', 'f6c366a2f0f4a5d993097f420232d0d7505612bcb7f01b8f709368f5e2a5c472', '[\"*\"]', '2023-10-19 10:30:02', NULL, '2023-10-19 10:29:39', '2023-10-19 10:30:02'),
(32, 'App\\Models\\User', 4, 'auth-token', 'cc17e1c4be35727658b17b5864d4d2eb9a5f89077a29d8f6a57c26e6264dca06', '[\"*\"]', '2023-10-19 10:45:35', NULL, '2023-10-19 10:45:29', '2023-10-19 10:45:35'),
(33, 'App\\Models\\User', 16, 'auth-token', '87eb7a295ccf8bf5e901c04891295834be7aa4ec2cbac1b2dafdcd419f7f6e34', '[\"*\"]', '2023-10-19 10:46:13', NULL, '2023-10-19 10:46:03', '2023-10-19 10:46:13'),
(34, 'App\\Models\\User', 5, 'auth-token', 'e51e060ccf2c61b0139ecb9a8dc2e6873fe57136f82dffa35e852455fdc01ce1', '[\"*\"]', '2023-10-19 10:56:40', NULL, '2023-10-19 10:55:27', '2023-10-19 10:56:40'),
(35, 'App\\Models\\User', 17, 'auth-token', 'ddfda38d0fe41e75667417882618ed0aa7e5529e4be6b339f6f2d1c845126343', '[\"*\"]', '2023-10-19 11:41:05', NULL, '2023-10-19 11:40:50', '2023-10-19 11:41:05'),
(36, 'App\\Models\\User', 5, 'auth-token', 'af65b0920078df04a5060e6fafa85eebe25a42c6d23c9001d3c690496ea97745', '[\"*\"]', '2023-10-19 11:43:35', NULL, '2023-10-19 11:43:24', '2023-10-19 11:43:35'),
(37, 'App\\Models\\User', 14, 'auth-token', '4f508ffd82df221a0fbd946fc8b8f426c143be931deb6d55f9a205acd14e2cc1', '[\"*\"]', '2023-10-19 11:45:12', NULL, '2023-10-19 11:44:13', '2023-10-19 11:45:12'),
(38, 'App\\Models\\User', 5, 'auth-token', '03991cad391fd11e1fcd38c1fa3558716791b709ef1f1446ba94b58f9fd24bba', '[\"*\"]', NULL, NULL, '2023-10-20 10:05:02', '2023-10-20 10:05:02'),
(39, 'App\\Models\\User', 5, 'auth-token', 'b384a92bc2e3c88753700981114259dc794100eb6ccd0beccadb20f1e7899ace', '[\"*\"]', NULL, NULL, '2023-10-22 09:47:58', '2023-10-22 09:47:58'),
(40, 'App\\Models\\User', 4, 'auth-token', '3c414723d71d3c8cc31d91ca1d0ab1c75a1c73f4a3e44c85ef2b7dab1483f066', '[\"*\"]', '2023-10-22 09:48:29', NULL, '2023-10-22 09:48:15', '2023-10-22 09:48:29'),
(41, 'App\\Models\\User', 14, 'auth-token', 'f6cfe353d79f81f40c7a9e8220400cc164227e1e05e5ca828dc534be47d88e95', '[\"*\"]', '2023-10-22 09:53:51', NULL, '2023-10-22 09:53:46', '2023-10-22 09:53:51'),
(42, 'App\\Models\\User', 10, 'auth-token', '55e9c3a3daeecd61208caf8b24dd44e121f8406dce290e1808c0d8f9d8b49804', '[\"*\"]', '2023-10-22 10:03:35', NULL, '2023-10-22 10:02:58', '2023-10-22 10:03:35'),
(43, 'App\\Models\\User', 15, 'auth-token', '3d224e115254ace9e439fff13e1a5b89a09e7f098bada1492c0ff4a91617d796', '[\"*\"]', '2023-10-22 10:06:23', NULL, '2023-10-22 10:05:33', '2023-10-22 10:06:23'),
(44, 'App\\Models\\User', 4, 'auth-token', '4d553cbff8fc7ee7af034b55d3f8169171e79d91fca5c50cbb9db238a010bf89', '[\"*\"]', NULL, NULL, '2023-10-23 10:32:52', '2023-10-23 10:32:52'),
(45, 'App\\Models\\User', 4, 'auth-token', '79cf3a3425f5b209a1ce64ada4d93e6275d29cfabb3a6fa3b6075fa632eb2805', '[\"*\"]', NULL, NULL, '2023-10-24 06:55:16', '2023-10-24 06:55:16'),
(46, 'App\\Models\\User', 5, 'auth-token', '3b92248f714d88ac7f338dcafb10b9b456ffc50a461fc93b125bd7f87c121e2d', '[\"*\"]', NULL, NULL, '2023-10-25 09:48:30', '2023-10-25 09:48:30'),
(47, 'App\\Models\\User', 4, 'auth-token', 'd477ca231433e5168041fabc4d42645e3844cc39efc2ad69cb81dbc93797abd4', '[\"*\"]', NULL, NULL, '2023-10-26 09:55:07', '2023-10-26 09:55:07'),
(48, 'App\\Models\\User', 5, 'auth-token', '499fd1b55008e32108499ba1058c8242317f5e2be7a100d33cdc762a4a070341', '[\"*\"]', NULL, NULL, '2023-10-26 10:11:01', '2023-10-26 10:11:01'),
(49, 'App\\Models\\User', 5, 'auth-token', '509480b1a0c4601ed360c7c56dab00b2ca05352426e07a25289d7378cc87f090', '[\"*\"]', '2023-10-30 12:24:55', NULL, '2023-10-30 10:15:23', '2023-10-30 12:24:55'),
(50, 'App\\Models\\User', 4, 'auth-token', '1deab2f555d890a9f64a4f6405b5b73bd4784438e7667da13b7aa14f92106b4e', '[\"*\"]', '2023-10-30 10:23:04', NULL, '2023-10-30 10:21:14', '2023-10-30 10:23:04'),
(51, 'App\\Models\\User', 4, 'auth-token', 'c53bb082276b3ba1bc1bf1d9d574de537e2107bb996111cefdfef774afb5eca8', '[\"*\"]', '2023-11-01 11:16:08', NULL, '2023-11-01 11:06:55', '2023-11-01 11:16:08'),
(52, 'App\\Models\\User', 5, 'auth-token', '8dbd761ad050228761275c8549063a14f90d321de669ce6b3ad5063c19775af2', '[\"*\"]', NULL, NULL, '2023-11-01 11:11:01', '2023-11-01 11:11:01'),
(53, 'App\\Models\\User', 4, 'auth-token', '6ee63eebf8ef0b23be182512b2a85c6562e735db9f4c1d39cf1647bf8dbe67ff', '[\"*\"]', '2023-11-02 12:21:37', NULL, '2023-11-02 10:19:25', '2023-11-02 12:21:37'),
(54, 'App\\Models\\User', 5, 'auth-token', '6a90239b52cc4a00dc85e2ce786f4cf9a3413f261b324461b159ebc8fd9085fe', '[\"*\"]', '2023-11-02 12:25:12', NULL, '2023-11-02 11:47:11', '2023-11-02 12:25:12'),
(55, 'App\\Models\\User', 9, 'auth-token', '2e8fc03854c1bee315d1109b3f28cefd3b76961f13c6e980431b4004b1e6862b', '[\"*\"]', NULL, NULL, '2023-11-02 12:25:39', '2023-11-02 12:25:39'),
(56, 'App\\Models\\User', 4, 'auth-token', 'a06cec2bc42d429ade6fb1bc7e4f5ae705c1e295ceef5c382a7c9542ec61b1b9', '[\"*\"]', '2023-11-03 10:19:34', NULL, '2023-11-03 10:17:25', '2023-11-03 10:19:34'),
(57, 'App\\Models\\User', 5, 'auth-token', 'cd7b514121518eacacc9c56532305420534739eb64e235d5d95ce88e2a903614', '[\"*\"]', '2023-11-03 10:20:52', NULL, '2023-11-03 10:19:57', '2023-11-03 10:20:52'),
(58, 'App\\Models\\User', 4, 'auth-token', '9308429f6b8c888d6a6f3d55f8aa3946520e2aec2c77e351804e54aefc946b8d', '[\"*\"]', '2023-11-13 08:15:34', NULL, '2023-11-13 07:07:17', '2023-11-13 08:15:34'),
(59, 'App\\Models\\User', 15, 'auth-token', '2aa18ca36e82e750675b5960b88b1bda9fba419f2d79a9da89ba6d0951268732', '[\"*\"]', '2023-11-13 08:31:39', NULL, '2023-11-13 08:10:48', '2023-11-13 08:31:39'),
(60, 'App\\Models\\User', 14, 'auth-token', 'bdb3fe9089ba33c2b3776e07576e61aef2d7d88d28a605c98c2166c165f9d60a', '[\"*\"]', '2023-11-13 08:30:51', NULL, '2023-11-13 08:24:27', '2023-11-13 08:30:51'),
(61, 'App\\Models\\User', 15, 'auth-token', '49fe066d6bbdb710a0fdfa0a3f9757482f6f60327996db3ed71bc81bfff065e2', '[\"*\"]', '2023-11-14 12:03:44', NULL, '2023-11-14 10:25:06', '2023-11-14 12:03:44'),
(62, 'App\\Models\\User', 14, 'auth-token', '65cf70f0c285b675b5f38fb208d0a5d6bcf2fde15f0b11b64c5fbfeccd29c9cb', '[\"*\"]', '2023-11-14 11:21:22', NULL, '2023-11-14 10:25:27', '2023-11-14 11:21:22'),
(63, 'App\\Models\\User', 4, 'auth-token', 'c3c47a12d15c928e011138b82c23ffeed31eca3b8e0ab7f14550576f83d3dbb9', '[\"*\"]', '2023-11-14 11:22:18', NULL, '2023-11-14 11:22:06', '2023-11-14 11:22:18'),
(64, 'App\\Models\\User', 4, 'auth-token', '6b64969ac764ff4580c2d95112f2717274bdb2eb5e20b739a65e3023549193ad', '[\"*\"]', '2023-11-16 10:39:59', NULL, '2023-11-16 10:32:21', '2023-11-16 10:39:59'),
(65, 'App\\Models\\User', 4, 'auth-token', '4a0247b315f41ebdc789b72f152c7f463dc4cf16879bc832f0528a717d310738', '[\"*\"]', NULL, NULL, '2023-12-01 10:05:51', '2023-12-01 10:05:51'),
(66, 'App\\Models\\User', 5, 'auth-token', '13c3b24c9b51cac3adacda57985ad4cc8005c190202a38d24a768f69a3f20d5f', '[\"*\"]', NULL, NULL, '2023-12-01 10:06:10', '2023-12-01 10:06:10'),
(67, 'App\\Models\\User', 14, 'auth-token', '5e60f85092f1c30286c18cff80b10712cacdf03a36c8ffbf75760660b49415a7', '[\"*\"]', NULL, NULL, '2023-12-01 10:06:29', '2023-12-01 10:06:29'),
(68, 'App\\Models\\User', 5, 'auth-token', '9f7f0ad83f1b85cdde4081e7f05ec1b3f2207c8dc8e2ddaaad0dd9b8a64da603', '[\"*\"]', NULL, NULL, '2023-12-01 10:06:56', '2023-12-01 10:06:56'),
(69, 'App\\Models\\User', 10, 'auth-token', '6602081d2c293085229726b644cc249a4de502fb97da3a3f9fb31dded1c62f17', '[\"*\"]', NULL, NULL, '2023-12-01 10:08:46', '2023-12-01 10:08:46'),
(70, 'App\\Models\\User', 4, 'auth-token', '5e244d528f7df33ec29e467971cbbc1919dde5b35ff1d8532059c25d98f60a4e', '[\"*\"]', NULL, NULL, '2023-12-07 11:39:09', '2023-12-07 11:39:09'),
(71, 'App\\Models\\User', 4, 'auth-token', '771f0ae312abb63b81048af27167fe49a63536db6857411123d3de01354e6669', '[\"*\"]', NULL, NULL, '2023-12-29 10:23:23', '2023-12-29 10:23:23'),
(72, 'App\\Models\\User', 4, 'auth-token', 'a7c35a341fe3d64df0421d0180d967975d213f27acd62b306ea7720495031131', '[\"*\"]', NULL, NULL, '2023-12-29 10:28:32', '2023-12-29 10:28:32'),
(73, 'App\\Models\\User', 4, 'auth-token', 'b77f755c1b16744c8ebb2719b4f544591b930bc9019efcb93345f194d492a02e', '[\"*\"]', NULL, NULL, '2024-01-02 11:18:12', '2024-01-02 11:18:12'),
(74, 'App\\Models\\User', 4, 'auth-token', '08c37b5f194d65250789fe580790a357bea187c17de58c8d3f9d6cd24c29705d', '[\"*\"]', NULL, NULL, '2024-01-03 10:18:21', '2024-01-03 10:18:21'),
(75, 'App\\Models\\User', 4, 'auth-token', 'c65537aa7010737768e22fb4ae171b65dda0fec31985a35db983013dc96ecb26', '[\"*\"]', NULL, NULL, '2024-01-04 12:18:48', '2024-01-04 12:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` bigint UNSIGNED NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `uid`, `img1`, `img2`, `img3`, `img4`, `description`, `tags`, `created_at`, `updated_at`) VALUES
(1, 4, 'posts/lFMWHVAbpFvKi0mn1SppdP9IjZphW7WDmKuPtpcW.jpeg', NULL, NULL, NULL, NULL, '#painting, #anime painting, #painting, #cherry blossom, #flower blossom', '2023-10-04 12:59:05', '2023-10-04 12:59:05'),
(2, 4, 'posts/yVYR2DTIFt5AAsLU6ao4POhqxnoIQMIZ6AOwJpM2.png', NULL, NULL, NULL, NULL, '', '2023-10-04 13:04:56', '2023-10-04 13:04:56'),
(3, 4, 'posts/aBNsPuoLntS3INt2xQilFp40Gcff7o8F9ddcTqTg.jpg', NULL, NULL, NULL, NULL, 'going merry, obnepiece, thousand sunny', '2023-10-06 10:01:00', '2023-10-06 10:01:00'),
(4, 14, 'posts/5YiFQJfZvHfL7yjMuZWmnBtBOYVVYkQxzhGkg5RB.jpeg', NULL, NULL, NULL, NULL, 'training, hokage, wind style', '2023-10-12 12:08:24', '2023-10-12 12:08:24'),
(5, 15, NULL, NULL, NULL, NULL, NULL, 'onepiece, joyboy, kingofpirates', '2023-10-12 12:18:06', '2023-10-12 12:18:06'),
(6, 10, 'posts/TyzkwfdVcUbbih6mxCFk3HwKNiD4OMtF2HmZLOJb.jpeg', NULL, NULL, NULL, NULL, '', '2023-10-14 10:40:17', '2023-10-14 10:40:17'),
(7, 15, 'posts/K3TrAIdG9ECQgWCl0Z9NEvK5W4bK9aT3J9nV2Mvg.png', NULL, NULL, NULL, 'Ohayo Everyone,\nthis is blooper of thousand sunny 🤣😂', '', '2023-10-14 10:47:52', '2023-10-14 10:47:52'),
(9, 14, 'posts/fbjw6nysmM3HKS6VflWacehOllF5Yg4WfNJDBJLI.jpg', NULL, NULL, NULL, 'After winning match me and my Friend', '#naruto, #sasuke, #war, #ninja, #ninja war, #siblings', '2023-10-14 11:02:12', '2023-10-14 11:02:12'),
(10, 8, 'posts/eb4pHUD22zuoMPwwv0BEdy4rTcIBUrekWzrhL1YJ.webp', NULL, NULL, NULL, 'Its red, Filling redish todays', 'Fashion Design, celebrity, red, lakeme, redish, dress, aliabhatt, alia bhatt', '2023-10-19 10:26:10', '2023-10-19 10:26:10'),
(11, 8, 'posts/4SYx1CivyNNu0j9FqOPE4qQWUGzElcJ4vHW6dnzN.jpeg', NULL, NULL, NULL, 'My new look', 'look, white, fress, top, crop-top, alia bhatt, Fashion Design', '2023-10-19 10:27:04', '2023-10-19 10:27:04'),
(12, 9, 'posts/BWO4kk9pTlxol7kDcl70pHzRAQEu314HgqIkmhzi.webp', NULL, NULL, NULL, 'Its purple, My new coat with matching wall', 'bbk, bhuvan bam, coat, Fashion Design, look, purple', '2023-10-19 10:34:17', '2023-10-19 10:34:17'),
(13, 9, 'posts/GqrHbcWrfZQbTWVfZLdMwPDbgJn9g4wKY9zNuE7e.jpeg', NULL, NULL, NULL, 'During Fashion event of RollingStone.', 'RollingStone, rolling stone, Fashion Design, bbk, bhuvan bam', '2023-10-19 10:35:57', '2023-10-19 10:35:57'),
(14, 9, 'posts/StHLVSKlmi8PU6BkqlOIEvotRgrTgtuHpkaxjy9A.jpeg', NULL, NULL, NULL, 'Me rolling my father', 'Father, Acting, bbk, bhuvan bam, Fashion Design', '2023-10-19 10:37:24', '2023-10-19 10:37:24'),
(15, 9, 'posts/PTfXAn5WczL4CToBC1O9rZiOKPyNagcsSmtQ9nUq.jpg', NULL, NULL, NULL, 'new look', 'bbk, bhuvan bam, acting, fashion designer', '2023-10-19 10:38:01', '2023-10-19 10:38:01'),
(16, 16, 'posts/QhCNYEo29oJ7Rp1T4f5x4jElzLTQrLcjKfHdKYHZ.jpg', NULL, NULL, NULL, 'Its red, My new art work at london art gallary. valuation more than 1 million.', 'red, art, art work, art work, anish kapoor, london, london art gallary, art gallary', '2023-10-19 10:52:10', '2023-10-19 10:52:10'),
(17, 16, 'posts/p2jn3tHkZF9DWExxutLiQjmbmowv3go7vffqAad5.jpg', NULL, NULL, NULL, 'I dident decided name for this art work yet.\r\n😅😅\r\nPlease Comment your opinion.', 'circle, colorfull, art, anish kapoor', '2023-10-19 10:53:51', '2023-10-19 10:53:51'),
(18, 16, 'posts/VbyPo2UqSDHrI3xQFeUFt406cdknxvWGKewkcnQ3.jpg', NULL, NULL, NULL, 'My new painting sold at 1.34 million.\r\n\r\nIts a great start for my new type of painting its a abstract paining.', 'abstract painting, red, art, anish kapoor', '2023-10-19 10:55:15', '2023-10-19 10:55:15'),
(19, 5, 'posts/Hq6Lb3iVl9xzZCrEyPIij0ljhaitnGv5iKYWkPfe.jpg', NULL, NULL, NULL, 'Its Music time 🎶🎶🎤🎤🎙️🎙️🎼🎵🎧🎧🎷🎷🪗🪗🎺🎺🎸🎸🪕🪕🎻🎻', 'music, johny depp, piratesofthecarebian', '2023-10-20 12:21:07', '2023-10-20 12:21:07'),
(20, 4, 'posts/xdLRpNIbrHTu1sEo6JNC0o9EIsVBXwfYEDGKMM7H.jfif', NULL, NULL, NULL, 'Time Passed but i remain same', 'Me, pendharkar, old', '2023-11-13 07:14:41', '2023-11-13 07:14:41'),
(21, 10, 'posts/R4tXIrdmKK06gaP3bntBlwo4WJ2IDOJkwd4EILBf.jpg', NULL, NULL, NULL, 'hello', 'mumbia, cst, csmt, bombay', '2023-12-01 11:37:41', '2023-12-01 11:37:41'),
(22, 10, 'posts/yjyVry72rwQhRpySR3Z4K72LAHUK1zEYiXDJHgeB.jpg', NULL, NULL, NULL, 'hello', 'mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay', '2023-12-01 11:37:41', '2023-12-01 11:37:41'),
(23, 10, 'posts/AWrlCodRNoMJqJm9ZOW5jZGchNQelm0hpeZZrZb6.jpg', NULL, NULL, NULL, 'hello', 'mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay', '2023-12-01 11:37:41', '2023-12-01 11:37:41'),
(24, 10, 'posts/Rm60AO8wC2BHrqXzR4k66ejYA6v15FbiJKqdYBDF.jpg', NULL, NULL, NULL, 'hello', 'mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay', '2023-12-01 11:37:42', '2023-12-01 11:37:42'),
(25, 10, 'posts/cdb6zZ0onzYcxJc876M3bDvD1qrmJWi9rt59abe7.jpg', NULL, NULL, NULL, 'hello', 'mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay', '2023-12-01 11:37:42', '2023-12-01 11:37:42'),
(26, 10, 'posts/IhyfyC3TMekTRupoHjkE9qAI2mNVXZJSSY8jxpSH.jpg', NULL, NULL, NULL, 'hello', 'mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay, mumbia, cst, csmt, bombay', '2023-12-01 11:37:42', '2023-12-01 11:37:42'),
(27, 10, NULL, NULL, NULL, NULL, 'hllo', 'fgcg, jhvh', '2023-12-01 11:50:12', '2023-12-01 11:50:12'),
(28, 10, NULL, NULL, NULL, NULL, 'ghv', 'hgcv, gbv', '2023-12-01 11:50:49', '2023-12-01 11:50:49'),
(29, 10, NULL, NULL, NULL, NULL, 'rftdrt', 'gfcfg, gvgh, ghv', '2023-12-01 11:52:19', '2023-12-01 11:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci,
  `skills` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `username`, `bio`, `profession`, `experience`, `skills`, `location`, `presence`, `profile`, `gender`, `created_at`, `updated_at`) VALUES
(1, 4, 'sarwya_not_available', 'Hello There, I am a inthusias Fashion designer.', 'Fashion Designer', NULL, 'Fashion Designing, Makeup artist', 'Dombivli', 'www.sarwya.com', NULL, 'male', '2023-09-29 12:28:21', '2023-09-29 12:28:21'),
(2, 5, 'iamjohny', 'I am a profetional hollywood actor, With pirates of carrabian i got infamous actor known as lootera', 'Actor and fashion designer', NULL, 'Acting, Dancing, Designing', 'Los angelas', 'iamjohny.com', NULL, 'male', '2023-10-01 00:03:37', '2023-10-01 00:03:37'),
(3, 6, 'iamshahrukh', 'Hello there, I am a bollywood actor famous as king khan', 'Actor,Designer,Fashion Designer,Influencer', NULL, NULL, 'Mumbai', 'shahrukh.com', NULL, 'male', '2023-10-08 07:42:05', '2023-10-08 07:42:05'),
(4, 7, 'KumarAkshay@123', 'I am Indian actor akshay kumar, Citizen Of canada', 'Actor,Fashion Designer, Stunt man', NULL, NULL, 'Mumbai', 'kumaraskhay.com', NULL, 'male', '2023-10-08 07:47:40', '2023-10-08 07:47:40'),
(5, 8, 'alia@bhatt', 'Hey, I am an indian actress', 'actor, Fashin Designer', NULL, NULL, 'Mumbai', NULL, NULL, 'female', '2023-10-08 08:26:14', '2023-10-08 08:26:14'),
(6, 9, 'bbk@bhuvan', 'I am solo actor & influancer', 'Designer, Influancer', NULL, NULL, 'Mumbai', NULL, NULL, 'male', '2023-10-08 09:21:19', '2023-10-08 09:21:19'),
(7, 10, 'khan_sir', 'I am a Passianate Teacher', 'Teacher, Influancer', NULL, NULL, 'Patna', NULL, NULL, 'male', '2023-10-08 09:37:19', '2023-10-08 09:37:19'),
(8, 11, 'vada@pav', 'I am Indian Street Food', 'Food', NULL, NULL, 'Mumbai', NULL, NULL, 'male', '2023-10-08 09:42:01', '2023-10-08 09:42:01'),
(9, 12, 'samosa@123', 'I am Indian Street food', 'Food', NULL, NULL, 'Mumbai', NULL, NULL, 'female', '2023-10-08 09:44:47', '2023-10-08 09:44:47'),
(10, 13, 'godsama', 'hello i am god creater of world and this world full of joy and happiness i am your godfather', 'Designer', NULL, NULL, 'Patallok', 'god.com', NULL, 'male', '2023-10-10 10:55:10', '2023-10-10 10:55:10'),
(11, 14, 'dattebayo', 'I am 7nth hokage of konoha, Worlds strongest shinobi', 'Ninja, Fashion Ninja,', NULL, 'top notch jutsu', 'leaf village', 'naruto.uzumaki.com', 'profiles/Po2zSO38R7BYO1Ro1aDmoVUsId2pMf25NyqxOy8J.jpg', 'male', '2023-10-10 12:12:53', '2023-10-10 12:12:53'),
(13, 15, 'joyboy', 'I am a pirate who carries will of joyboy and roger', 'Pirate', NULL, NULL, 'New world', NULL, 'profiles/H35ZeBoXMc0nF4CuZ6eLX71KoYe3AQ1NNJ4dY4Yh.jpg', 'male', '2023-10-10 12:15:50', '2023-10-10 12:15:50'),
(14, 16, 'anish@kapoor', 'Hey there, I am Proffesional.', 'Painter by proffesion', '50', 'Painting, Drawing', 'london', 'painting.anish.com', 'profiles/wAYh3ced8jNfAZWbE8BSNIK4maB4HEa612GbpvII.jpg', 'male', '2023-10-19 10:44:11', '2023-10-19 10:44:11'),
(15, 17, 'andreas123', 'I am a professional photographer', 'Photographer', NULL, 'photography', 'germany', NULL, 'profiles/Kb8Tb8ANYiLkqEmJh42OD8nWiaqBS8hPQJuwotUV.jpg', 'male', '2023-10-19 11:40:21', '2023-10-19 11:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `created_at`, `updated_at`) VALUES
(4, 'sarveshgandhere2002@gmail.com', '$2y$10$.wu4DexYWlhcNZr4bDD6POEIZKIXWwhvZ6POg7UOsDXsem2s/cvzW', 'Sarvesh gandhere', '2023-09-29 12:20:26', '2023-09-29 12:20:26'),
(5, 'johny@gmail.com', '$2y$10$Va0Ghz.ZG9FBd.5wgjhcROJFMkrFpSPvv9/FeT3KDzT3se/GWyQEm', 'Johny Dept', '2023-10-01 00:01:20', '2023-10-01 00:01:20'),
(6, 'shahrukh@gmail.com', '$2y$10$plf7MdvK03S8CFhAtO8DlehsZT/G1X25xx7z5txSBDUp87cL0.c7i', 'Shah Rukh Khan', '2023-10-08 07:38:33', '2023-10-08 07:38:33'),
(7, 'akshaykumar@gmail.com', '$2y$10$YyhZBEaXu6h5YM.orWQItu4yf4fKA1Zo1KZ7rM5ZXIqd6WDABUFjO', 'Akhay Kumar', '2023-10-08 07:44:57', '2023-10-08 07:44:57'),
(8, 'alia@gmail.com', '$2y$10$rYPDEOD0Y8a1FIryh8/7/uzlNRuadqSv/9q7iABV19aLDlVKMIuxm', 'Alia Bhatt', '2023-10-08 07:52:32', '2023-10-08 07:52:32'),
(9, 'bbk@gmail.com', '$2y$10$Tfrn4oLbzYD48DvXYCp89ux8vicguIcuHNHJTVF98iiQm5p5hllkW', 'Bhuvan Bam', '2023-10-08 09:16:14', '2023-10-08 09:16:14'),
(10, 'khan@gmail.com', '$2y$10$0bH29iuKTu4xZ2IiaO989OH/Ngc.5ZtSvNzKSm/xAQq0GBbr2ldge', 'Khan Sir', '2023-10-08 09:36:36', '2023-10-08 09:36:36'),
(11, 'vadapav@gmail.com', '$2y$10$XSzu7GK3a6DWwVPcf8Pg6.U3LxzXksLGYr/x9VLfzutLQqM2.CsJu', 'vadapav', '2023-10-08 09:38:47', '2023-10-08 09:38:47'),
(12, 'samosa@gmail.com', '$2y$10$BXNCOj21u2pg8AACXul6fOoiVSuzMdkJtNAnF5TjxozuHiSMVbt0G', 'samosa', '2023-10-08 09:44:17', '2023-10-08 09:44:17'),
(13, 'godsama@gmail.com', '$2y$10$asoBfgtAil7Q9pay2fXQz.jwubFikGLt9mpM4zSGFgaPdhQeML3AG', 'Godsama', '2023-10-10 10:52:47', '2023-10-10 10:52:47'),
(14, 'naruto@gmail.com', '$2y$10$Fz1LNvQuOj0HpFjaRCU5QukwHKwLI1GJ2IHHpP79v7aCYPPKakKKO', 'Naruto', '2023-10-10 11:43:49', '2023-10-10 11:43:49'),
(15, 'kingofpirates@onepiece.com', '$2y$10$fLFbgyXQvzNJLIFYZ1BCWe/fBz5zVh/7xf/G4VFVfe5Fqz7yu2h8G', 'Mokey D. Luffy', '2023-10-10 12:14:11', '2023-10-10 12:14:11'),
(16, 'anishkapur@gmail.com', '$2y$10$ZIyEKhO108iwzJjQZBsn6e7KahcRPg/Ct0Z9Ay/cd3BlRtTKDc8eC', 'Anish kapoor', '2023-10-19 10:40:51', '2023-10-19 10:40:51'),
(17, 'andreas@gmail.com', '$2y$10$bp2UXBPmcAART0iO2nzh1OLViz1ZJVzsFtwe9p.3ozqLF/152bmAa', 'Andreas Gursky', '2023-10-19 11:37:13', '2023-10-19 11:37:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user1_id_foreign` (`user1_id`),
  ADD KEY `chats_user2_id_foreign` (`user2_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_user_id_foreign` (`user_id`),
  ADD KEY `followers_followed_user_id_foreign` (`followed_user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_chat_id_foreign` (`chat_id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_uid_foreign` (`uid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_username_unique` (`username`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_user1_id_foreign` FOREIGN KEY (`user1_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `chats_user2_id_foreign` FOREIGN KEY (`user2_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_followed_user_id_foreign` FOREIGN KEY (`followed_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_chat_id_foreign` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_uid_foreign` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
