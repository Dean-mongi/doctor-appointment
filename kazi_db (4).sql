-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 27, 2024 at 07:05 PM
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
-- Database: `kazi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `custom_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `doctor_id`, `patient_id`, `date`, `time`, `reason`, `custom_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 11, NULL, '2024-07-24', '21:31:00', 'NOma', 'APP004', 'pending', '2024-07-23 10:31:22', '2024-07-24 08:50:58'),
(5, 10, 4, '2024-07-31', '20:06:00', 'Wote saww', 'APP005', 'pending', '2024-07-23 11:07:03', '2024-07-23 11:07:03'),
(15, 17, 2, '2024-08-07', '21:04:00', 'Naumwa Moyo', 'APP015', 'pending', '2024-07-24 09:04:46', '2024-07-24 09:04:46'),
(16, 16, 8, '2024-07-25', '16:20:00', 'Holla', 'APP016', 'pending', '2024-07-24 10:18:18', '2024-07-24 10:18:18'),
(17, 7, 15, '2024-08-01', '15:58:00', 'Homa kali', 'APP017', 'pending', '2024-07-24 17:56:50', '2024-07-24 17:56:50'),
(18, 10, 14, '2024-07-27', '03:24:00', 'Hello', 'APP018', 'pending', '2024-07-24 18:19:47', '2024-07-24 18:19:47'),
(19, 16, 15, '2024-08-02', '07:20:00', 'Tell me anythig', 'APP019', 'pending', '2024-07-25 01:14:43', '2024-07-25 01:14:43'),
(20, 16, 19, '2024-07-25', '09:38:00', 'head pain', 'APP020', 'pending', '2024-07-25 03:36:17', '2024-07-25 03:36:17'),
(21, 16, 19, '2024-07-25', '09:40:00', 'head pain', 'APP021', 'pending', '2024-07-25 03:36:45', '2024-07-25 03:36:45'),
(22, 28, 19, '2024-07-06', '23:48:00', 'kichwa kinauma', 'APP022', 'pending', '2024-07-25 03:49:03', '2024-07-25 03:49:03'),
(23, 16, 8, '2024-07-11', '00:48:00', 'kichwa kinama', 'APP023', 'pending', '2024-07-25 06:46:12', '2024-07-25 06:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('20000942de999ef0ec03404c9cd3d07d', 'i:1;', 1721890052),
('20000942de999ef0ec03404c9cd3d07d:timer', 'i:1721890052;', 1721890052),
('6f9dcd3c31455ec7b94bdb0f55a9a519', 'i:1;', 1721920274),
('6f9dcd3c31455ec7b94bdb0f55a9a519:timer', 'i:1721920274;', 1721920274),
('abf1d0f2f43fb0118e0a96966cc069b9', 'i:1;', 1721919523),
('abf1d0f2f43fb0118e0a96966cc069b9:timer', 'i:1721919522;', 1721919522),
('d59419dd8fb915af4063d590fa4448b8', 'i:1;', 1721890355),
('d59419dd8fb915af4063d590fa4448b8:timer', 'i:1721890355;', 1721890355),
('da0243a79283099368da256968b744da', 'i:1;', 1721939028),
('da0243a79283099368da256968b744da:timer', 'i:1721939028;', 1721939028),
('f8cf56b812c7ac201b94efc303a3ded5', 'i:1;', 1721891204),
('f8cf56b812c7ac201b94efc303a3ded5:timer', 'i:1721891204;', 1721891204),
('pharmacist@doctorapp.com|127.0.0.1', 'i:1;', 1721891204),
('pharmacist@doctorapp.com|127.0.0.1:timer', 'i:1721891204;', 1721891204),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:18:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:17:\"view appointments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:19:\"create appointments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:17:\"edit appointments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:19:\"delete appointments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"view doctors\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:14:\"create doctors\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:12:\"edit doctors\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:14:\"delete doctors\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:13:\"view pharmacy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"create pharmacy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"edit pharmacy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:15:\"delete pharmacy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"view patients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:15:\"create patients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:13:\"edit patients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"delete patients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:12:\"view reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:13:\"view settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"doctor\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:7:\"patient\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:10:\"pharmacist\";s:1:\"c\";s:3:\"web\";}}}', 1721978325);

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
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `specialty` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `contact`, `email`, `address`, `specialty`, `qualification`, `status`, `avatar`, `role`, `user_id`, `password`, `created_at`, `updated_at`) VALUES
(7, 'John Mkosamali', '+255 628 765 760', 'ranklaweezttrbeth13@gmail.com', 'Dar es Salaam', 'drtghj', 'PhD', 'active', 'avatars/MG7nSyWkG5NIX1WdUIhjIFgyAFGvz8bSHHW6fglC.jpg', NULL, NULL, NULL, '2024-07-20 14:23:29', '2024-07-20 18:07:16'),
(10, 'Frank Lawrent', '+255 628 765 766', 'frenklawrentfds12@gmail.com', 'Dar es Salaam', 'Mouth', 'cgdd', 'active', 'avatars/FlKmDBP0WKoc21pJkCfAZ8HuNhBPsE0QOUMwlUtv.png', NULL, NULL, NULL, '2024-07-20 14:47:36', '2024-07-20 14:47:36'),
(11, 'Frank Lawrent', '+255 628 765 709', 'superadmigfn@gmail.com', 'Dar es Salaam', 'Teeth', 'Walete', 'active', 'avatars/737PCLbg0gKOU1DHXbXW2dI0KUrTNVgCLW6rz5zy.png', NULL, NULL, NULL, '2024-07-20 14:51:50', '2024-07-20 18:07:34'),
(16, 'Roma', '0766566711', 'roma@gmail.com', 'Dar es Salaam', 'Teeth', 'PhD', 'active', 'avatars/Q4caJiPFvK17ZYr08Sv32jH9WDXy4cAeqOzMvQar.jpg', NULL, NULL, NULL, '2024-07-23 15:19:49', '2024-07-23 15:19:49'),
(17, 'maria', '0745454545', 'mar@yahoo.com', 'Dar es Salaam', 'Teeth', 'Diploma', 'active', 'avatars/mhF7Mx19ztLzdkAjhCDRS6DvXQ2AXVPSs771ElXy.jpg', NULL, NULL, NULL, '2024-07-23 15:37:28', '2024-07-23 15:37:28'),
(28, 'issa hassan', '+255 628298267', 'issahassan@gmail.com', 'Dar es Salaam', 'Teeth', 'PhD', 'active', NULL, NULL, NULL, NULL, '2024-07-25 03:44:40', '2024-07-25 03:44:40');

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
(6, '2024_03_25_214114_create_doctors_table', 1),
(7, '2024_04_11_183434_create_appointments_table', 1),
(8, '2024_05_12_222856_create_patients_table', 1),
(9, '2024_05_13_131715_create_pharmacies_table', 1),
(10, '2024_05_14_004700_create_recent_activities_table', 1),
(11, '2024_05_17_130150_create_sessions_table', 1),
(12, '2024_06_18_143522_add_amount_to_pharmacies_table', 1),
(14, '2024_07_04_152600_add_avatar_to_doctors_table', 2),
(15, '2024_07_05_133748_create_cache_table', 3),
(16, '2024_07_07_194352_add_avatar_to_patients_table', 4),
(17, '2024_07_19_121517_add_status_to_appointments_table', 5),
(18, '2024_07_19_152237_create_permission_tables', 6),
(19, '2024_07_20_212812_add_custom_id_to_appointments_table', 7),
(20, '2024_07_22_115757_add_email_to_appointments_table', 8),
(24, '2024_07_23_122526_create_appointments_table', 9),
(25, '2024_07_19_154344_create_roles_table', 10),
(26, '2024_07_19_155954_create_role_user_table', 10),
(27, '2024_07_22_171606_create_jobs_table', 10),
(28, '2024_07_23_212127_create_permission_tables', 11);

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
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('doctor@doctorapp.com', '$2y$12$qxcPj44.4CwE.isgWRyxF.8ntlblzPaygwnw8WZyI2YqM41If4UuC', '2024-07-24 06:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `contact`, `email`, `address`, `contact_person`, `status`, `created_at`, `updated_at`, `avatar`, `role`, `user_id`, `password`) VALUES
(2, 'Frank Lawrent', '+25562876579', 'frenklbhgawrent12@gmail.com', 'Dar es Salaam', 'Frank Lawrent', 'active', '2024-07-07 17:24:52', '2024-07-07 17:24:52', 'avatars/3xKtNN5fHjH7MSCDqdKoMbmv8GJ0QrVJtnW8DShJ.png', NULL, NULL, NULL),
(4, 'Frank Lawrent', '+255 628 765 723', 'chiefdogan19@gmail.com', 'Dar es Salaam', 'Frank Lawrent', 'active', '2024-07-20 14:41:30', '2024-07-20 14:41:30', 'avatars/vdlguoWkG7rQg1RFPrc0GipCwWnvUSkBluUZFwWl.png', NULL, NULL, NULL),
(6, 'graciella Paul Nyingi', '+255 628 765 763', 'grace12@gmail.com', 'Dar es Salaam', 'Frank Lawrent', 'active', '2024-07-23 16:38:21', '2024-07-23 16:38:21', NULL, NULL, NULL, NULL),
(8, 'Najim Z Ahmad', '+255-787-654 676', 'patient@doctorapp.com', 'Dar es salaam', 'Contact Person', 'active', '2024-07-23 19:34:50', '2024-07-23 19:34:50', NULL, NULL, 4, NULL),
(9, 'Samwel Steven NEW', '+255 628 765 766', 'sam@doctorapp.com', 'Dar es Salaam', 'Frank Lawrent', 'active', '2024-07-23 20:39:55', '2024-07-23 20:53:13', NULL, NULL, 5, NULL),
(13, 'rafael m', '+255 628 765 766', 'rafael@doctorapp.com', 'Dar es Salaam', 'Frank Lawrent', 'active', '2024-07-23 22:20:02', '2024-07-23 22:20:02', NULL, NULL, 12, NULL),
(14, 'hussen hassaniwe', '0764318748', 'patient1@gmail.com', 'Dar es Salaam', 'kasomo', 'active', '2024-07-24 03:41:15', '2024-07-24 07:58:53', NULL, NULL, 17, NULL),
(15, 'Thabit Hasan', '+255 628 765 047', 'patient02@doctorapp.com', 'Bagamoyo', 'Juma Furahisha', 'active', '2024-07-24 17:55:19', '2024-07-24 17:55:19', NULL, NULL, 22, NULL),
(19, 'mwayaona isssa', '+255 62874060', 'mwayaona@gmail.com', 'Dar es Salaam', 'fatma', 'active', '2024-07-25 03:34:33', '2024-07-25 03:34:33', NULL, NULL, 26, NULL),
(20, 'hasssan thabit', '+255 628 765 744', 'patient1@doctorapp.com', 'Dar es Salaam', 'thabit', 'active', '2024-07-25 06:34:03', '2024-07-25 06:34:03', NULL, NULL, 28, NULL);

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
(1, 'view appointments', 'web', '2024-07-23 19:34:47', '2024-07-23 19:34:47'),
(2, 'create appointments', 'web', '2024-07-23 19:34:47', '2024-07-23 19:34:47'),
(3, 'edit appointments', 'web', '2024-07-23 19:34:47', '2024-07-23 19:34:47'),
(4, 'delete appointments', 'web', '2024-07-23 19:34:47', '2024-07-23 19:34:47'),
(5, 'view doctors', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(6, 'create doctors', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(7, 'edit doctors', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(8, 'delete doctors', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(9, 'view pharmacy', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(10, 'create pharmacy', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(11, 'edit pharmacy', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(12, 'delete pharmacy', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(13, 'view patients', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(14, 'create patients', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(15, 'edit patients', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(16, 'delete patients', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(17, 'view reports', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(18, 'view settings', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48');

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
-- Table structure for table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `contact` varchar(255) NOT NULL,
  `medicine` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `patient_id`, `contact`, `medicine`, `description`, `doctor_id`, `created_at`, `updated_at`, `amount`) VALUES
(8, 9, '+255 628 765 765', 'Mpera', 'Kunywa', 17, '2024-07-24 17:49:50', '2024-07-24 17:49:50', 30000.00),
(9, 15, '+255 628 765 766', 'Panadol', 'anaumwa kichwa', 16, '2024-07-25 04:03:28', '2024-07-25 04:03:28', 10000.00),
(10, 20, '+255 628 765 707', 'Dicloper', 'cool', 10, '2024-07-25 06:49:34', '2024-07-25 06:49:34', 40000.00);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacists`
--

CREATE TABLE `pharmacists` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recent_activities`
--

CREATE TABLE `recent_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `activity_description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'super_admin', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(2, 'doctor', 'web', '2024-07-23 19:34:48', '2024-07-23 19:34:48'),
(3, 'patient', 'web', '2024-07-23 19:34:49', '2024-07-23 19:34:49'),
(4, 'pharmacist', 'web', '2024-07-23 19:34:49', '2024-07-23 19:34:49');

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
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 2),
(10, 4),
(11, 1),
(11, 2),
(11, 4),
(12, 1),
(13, 1),
(13, 2),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(17, 4),
(18, 1);

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
('3Np0pN6kh8XMlX31DMWCpyi4JPZsjksxKmeubaqs', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0phQXphN1hNMWRJMGFEZnV5YVdHS2JHV1l3b0N1QWRPQ2ptS1JmVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1721920883),
('Rc2Iw5uLQyHjNdaH8kBsKZD5nfbD5D1MbtrKGZ3u', 2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibnpaSXdjSEM3WWRzb2twRjR0c2UxSkRVVU5kOTJXR3lYaUw0Y2t6ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBwb2ludG1lbnRzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiQ5a3htRElaS2dtYnJlcDluU0g0TDZ1eWF2eG9vLlZCbU1Ra1U3SnFtckZVTTZOZHB2Ym1OMiI7fQ==', 1721939489);

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
  `role` varchar(11) DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `specialty` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `role`, `profile_photo_path`, `created_at`, `updated_at`, `contact`, `address`, `status`, `specialty`, `qualification`) VALUES
(1, 'Frank Jensen', 'frenklawrent12@gmail.com', NULL, '$2y$12$dnQnzeF2llbYmxtJpRNEXOJipv.q.EXoyIvtcrAnWUccjlbHbxtDe', NULL, NULL, NULL, NULL, NULL, 'super_admin', NULL, '2024-07-04 11:15:41', '2024-07-20 13:33:15', NULL, NULL, 'active', NULL, NULL),
(2, 'Thabit H kasomo', 'admin@doctorapp.com', NULL, '$2y$12$9kxmDIZKgmbrep9nSH4L6uyavxoo.VBmMQkU7JqmrFUM6NdpvbmN2', NULL, NULL, NULL, 'Zn82KdGjdPLD68b9RBmD2Ab0UFi9KTbPjzgYNWD5s31Qt7zCRboUAvyFrd92', NULL, NULL, NULL, '2024-07-23 19:34:49', '2024-07-23 19:34:49', NULL, NULL, 'active', NULL, NULL),
(3, 'Michael K Zuberi', 'doctor@doctorapp.com', NULL, '$2y$12$lwtwCdRvurT3HsExgb8w/OXqM1jNYgdjEcg7nQmk5DuZvQWY.ySpK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 19:34:50', '2024-07-23 19:34:50', NULL, NULL, 'active', NULL, NULL),
(4, 'Najim Z Ahmad', 'patient@doctorapp.com', NULL, '$2y$12$70Xd8aIc0hqNt4KVv3pEmO7U6TVrRg6FTlsQ6QYQKF0xeHhR2N1ua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 19:34:50', '2024-07-23 19:34:50', NULL, NULL, 'active', NULL, NULL),
(5, 'Samwel Steven', 'sam@doctorapp.com', NULL, '$2y$12$/2mPV2Bb8flpSFUJA9OnsObU9oj4VpJ7NjE0JfyI2k3z074dUG4hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 20:39:55', '2024-07-23 20:39:55', NULL, NULL, 'active', NULL, NULL),
(6, 'SAHARA JUMA', 'sahara@doctorapp.com', NULL, '$2y$12$3Q8e5jRfkHUSm0thMIAl0.VV2hq0APQ6wQAwTybwu50ELgYTz2QEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 21:12:50', '2024-07-23 21:12:50', NULL, NULL, 'active', NULL, NULL),
(7, 'magayane', 'mack@doctorapp.com', NULL, '$2y$12$1R0cSYdFymBh2bIOeeglmOEV2QbgvJvY9LM/rFr8/ZYMhF/Ii2YLi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 21:16:01', '2024-07-23 21:16:01', NULL, NULL, 'active', NULL, NULL),
(8, 'Fredy Juman', 'doctor12@doctorapp.com', NULL, '$2y$12$SnE.pAm1c0Gj1ccJLLfZpO.Nf36p4JclR1jCkV/GwopPBze/r0Jzu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 21:27:30', '2024-07-23 21:27:30', NULL, NULL, 'active', NULL, NULL),
(9, 'juma awesu', 'juma@doctorapp.com', NULL, '$2y$12$lNGvnmZm0DC70Z5dbOdWkO6kPNF6Twa2R.zSA6Ml34hJoNgoZROmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 21:53:33', '2024-07-23 21:53:33', NULL, NULL, 'active', NULL, NULL),
(10, 'fred', 'fred@doctorapp.com', NULL, '$2y$12$OjZQsKDkd7F95sQx4p/7Wezo1GK2y5u3lSvKSO6ZwuGPp6BuOwTye', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:02:47', '2024-07-23 22:02:47', NULL, NULL, 'active', NULL, NULL),
(11, 'Dogan Robert', 'dogan@doctorapp.com', NULL, '$2y$12$65qqUKMooPkxG9Jrovo22Ov4Tot02P0fEARQiUbaJCFP5cWvH8k4e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:12:42', '2024-07-23 22:12:42', NULL, NULL, 'active', NULL, NULL),
(12, 'Frank Lawrent', 'rafael@doctorapp.com', NULL, '$2y$12$bzUXUkYln9mnV370YORLyeeQiE7.Y.4/5TbW1m7B/hZiT4wzw4yC2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:20:02', '2024-07-24 02:18:44', NULL, NULL, 'active', NULL, NULL),
(13, 'Frank Lawrent', 'pharmacist@doctorapp.com', NULL, '$2y$12$nFVDy0lClCUkh09VhZzO6.luyAntlbf96.DlOSZJCB0cNQW4Rz6Z6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-24 02:23:31', '2024-07-24 02:23:31', NULL, NULL, 'active', NULL, NULL),
(17, 'hussen hassani', 'patient1@gmail.com', NULL, '$2y$12$XIA/abh5ZToi.BPX7rqmAOVl6V6YtECa767aO6yTyoCwZl66gCwzW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-24 03:41:15', '2024-07-24 03:41:15', NULL, NULL, 'active', NULL, NULL),
(18, 'Frank Lawrent', 'chiefdogiiuan19@gmail.com', NULL, '$2y$12$sfPCODBcZi.XvYTYPkFM3OTtsAy7qP5JzdFsHM0611PGEYwCgJHVW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-24 06:47:42', '2024-07-24 06:47:42', NULL, NULL, 'active', NULL, NULL),
(19, 'Frank Lawrent', 'chiefdogan19@gmail.com', NULL, '$2y$12$S8DfceTYHQp3nsvKY2/Ev.FaHwSdtEDw1XPAOkosbAH5uiF6wMyda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-24 06:52:31', '2024-07-24 06:52:31', NULL, NULL, 'active', NULL, NULL),
(20, 'Frank Majalia', 'chiefdogagfdn19@gmail.com', NULL, '$2y$12$AqdX5G4Jdz6WeZxuDDEh.OjXa2X7UQI0Rrh52PxZ/TXhwwRjNe.Ty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-24 06:55:17', '2024-07-24 06:55:17', NULL, NULL, 'active', NULL, NULL),
(21, 'Mwanahidi Mwaijuke Moneka', 'mwanahidi@gmail.com', NULL, '$2y$12$oCYcfvnxR9q6Ksfy./0hiu5Kw4Vpw6r4Bxcg72V1imWu642iSZ2i2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-24 07:27:02', '2024-07-24 07:27:02', NULL, NULL, 'active', NULL, NULL),
(22, 'Thabit Hasan', 'patient02@doctorapp.com', NULL, '$2y$12$DKmLOm6eukdXzja.swJphu0ANwJ9bHXNiDslaMla3Hz1GcpDw.oDa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-24 17:55:19', '2024-07-24 17:55:19', NULL, NULL, 'active', NULL, NULL),
(23, 'Joyce Gaga', 'patient05@doctorapp.com', NULL, '$2y$12$Gf60evQCxlQrSs.L4eFeDOs99VwGXj28hGmF4p0f0It5zk3iOALb2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-24 21:41:14', '2024-07-24 21:41:14', NULL, NULL, 'active', NULL, NULL),
(24, 'Frank Lawrent', 'chiefdogan08@gmail.com', NULL, '$2y$12$vGW2KJ9I/MRBA965IT4nMuXxwZoVqmex4onS1hoQeqFJLeBrq.NGu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-25 02:09:05', '2024-07-25 02:09:05', NULL, NULL, 'active', NULL, NULL),
(25, 'Abdallah Juma', 'patient10@doctorapp.com', NULL, '$2y$12$6hfWxaRXO6yiDhiPU6C9LuH7pBp9P6gj92X/lF3S4KZH6FaItTHnK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-25 02:10:28', '2024-07-25 02:10:28', NULL, NULL, 'active', NULL, NULL),
(26, 'mwayaona isssa', 'mwayaona@gmail.com', NULL, '$2y$12$eKm7jJbbd.6ugloAO5ngdOWmMnipVdqYTYINOhClXvfCJVfbk2bIe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-25 03:34:32', '2024-07-25 03:34:32', NULL, NULL, 'active', NULL, NULL),
(27, 'issa hassan', 'issahassan@gmail.com', NULL, '$2y$12$6OpoflaVrymfYiAY20.mE.7REnqgVEcFcE220Yh6Fbk5ZQbt57H5.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-25 03:44:40', '2024-07-25 03:44:40', NULL, NULL, 'active', NULL, NULL),
(28, 'hasssan thabit', 'patient1@doctorapp.com', NULL, '$2y$12$5LGMvROilVGubIYZyDJOc.XZmcQiOyRzzLF8Z.JmVxUfx75KRvK7O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-25 06:34:03', '2024-07-25 06:34:03', NULL, NULL, 'active', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appointments_custom_id_unique` (`custom_id`),
  ADD KEY `appointments_doctor_id_foreign` (`doctor_id`),
  ADD KEY `appointments_ibfk_1` (`patient_id`);

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
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- Indexes for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacies_patient_id_foreign` (`patient_id`),
  ADD KEY `pharmacies_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `pharmacists`
--
ALTER TABLE `pharmacists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `recent_activities`
--
ALTER TABLE `recent_activities`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pharmacists`
--
ALTER TABLE `pharmacists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recent_activities`
--
ALTER TABLE `recent_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD CONSTRAINT `pharmacies_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pharmacies_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pharmacists`
--
ALTER TABLE `pharmacists`
  ADD CONSTRAINT `pharmacists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
