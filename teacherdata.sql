-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 02, 2023 at 03:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teacherdata`
--

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
(5, '2023_03_17_051814_create_teacher_table', 1),
(10, '2014_10_12_000000_create_users_table', 2),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(12, '2019_08_19_000000_create_failed_jobs_table', 2),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(15, '2023_03_23_115622_create_teacher_table', 3);

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
(1, 'App\\Models\\User', 1, 'API Token ofKenneth', '998ca585425184df24659d0c8ad0cf3841b33fbecc820839bc023da09e8f8cff', '[\"*\"]', '2023-04-02 05:06:34', NULL, '2023-03-31 03:49:43', '2023-04-02 05:06:34'),
(2, 'App\\Models\\User', 1, 'API Token ofKenneth', '806a45d6e20d4e0add775b7f628074b232f55b3306ea0446130937a2667af6aa', '[\"*\"]', NULL, NULL, '2023-03-31 03:56:09', '2023-03-31 03:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `major` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `teacher_id`, `major`) VALUES
(1, 10, 'Computer'),
(2, 7, 'Chemistry'),
(3, 1, 'English'),
(4, 8, 'MAPEH'),
(5, 4, 'English'),
(6, 9, 'Computer'),
(7, 2, 'Music'),
(8, 9, 'Mathematics'),
(9, 5, 'Mathematics'),
(10, 4, 'Economics'),
(11, 4, 'Mathematics'),
(12, 5, 'Music'),
(13, 5, 'Mathematics'),
(14, 3, 'Araling Panlipunan'),
(15, 4, 'Chemistry'),
(16, 2, 'Computer'),
(17, 4, 'Music'),
(18, 2, 'Music'),
(19, 6, 'Chemistry'),
(20, 2, 'Mathematics'),
(21, 7, 'MAPEH'),
(22, 8, 'English'),
(23, 9, 'MAPEH'),
(24, 3, 'Mathematics'),
(25, 6, 'MAPEH'),
(26, 4, 'Science'),
(27, 5, 'Economics'),
(28, 8, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `fullName` text NOT NULL DEFAULT '',
  `dateHired` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject`
--

CREATE TABLE `teacher_subject` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_subject`
--

INSERT INTO `teacher_subject` (`teacher_id`, `subject_id`) VALUES
(2, 1),
(3, 2),
(5, 1),
(2, 2),
(7, 3),
(2, 3),
(2, 1),
(1, 1),
(1, 2),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(1, 5),
(2, 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kenneth', 'kenneth.rioflorido@yahoo.com', NULL, '$2y$10$b1AOk7p5U8Cu161ZdA.h3.prYg/RY6.NYOTHMoME6fgujJjf8zgne', NULL, '2023-03-31 03:49:43', '2023-03-31 03:49:43'),
(2, 'Dawn Morissette', 'orrin.wehner@example.org', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GrmQFNI2RU', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(3, 'Dr. Unique Miller', 'crona.irma@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oUTn8MepGO', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(4, 'Amelia McDermott', 'emmalee50@example.net', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pDPzrCVXUd', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(5, 'Miss Iliana Lang III', 'fheller@example.net', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9OCFM0ifE5', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(6, 'Rene Kris', 'reed.feeney@example.org', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dm1CtE6A1h', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(7, 'Kayli McDermott', 'lrogahn@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5UsavzzskU', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(8, 'Dakota Ferry', 'kole.weissnat@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mVtobWFRTB', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(9, 'Savanna Jast', 'kirstin.halvorson@example.org', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aaAgMooBOB', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(10, 'Thomas Denesik', 'bspinka@example.org', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DZAuOnbGdC', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(11, 'Dallin Kunde Sr.', 'florencio.oconner@example.net', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hMN0tSw84T', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(12, 'Weston Jaskolski', 'pthiel@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xVrEFDTAlA', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(13, 'Stephanie Purdy', 'forrest.corwin@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lUXrcVMsYU', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(14, 'Armand Schaden', 'marty29@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1Dek3Y6qBz', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(15, 'Meghan Predovic', 'ramon77@example.net', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CDUcaMoAJa', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(16, 'Dr. Leopoldo Howell', 'bednar.asia@example.org', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'clFhs1G7fr', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(17, 'Abraham Johnston', 'elza.rogahn@example.net', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q5sbxqZ6lV', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(18, 'Kayli Vandervort', 'lavada04@example.net', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FPq0qDXodb', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(19, 'Harmony Zieme Sr.', 'nkris@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZlH3Oe5Np3', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(20, 'Prof. Dale Considine DVM', 'eileen.raynor@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N2wzYlrRJH', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(21, 'Sienna Mante', 'margot.vonrueden@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WkQyHnwzwF', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(22, 'Mia Ruecker', 'mcole@example.net', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DdNnCkBQ3J', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(23, 'Ada Kutch', 'mathew.stokes@example.org', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N4R3nqKsHI', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(24, 'Nichole Schowalter', 'theron.auer@example.org', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FQ1TDLZ99t', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(25, 'Ona Walter III', 'keeling.haven@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N3lKsKyFpT', '2023-03-31 04:16:31', '2023-03-31 04:16:31'),
(26, 'Haskell Wilkinson II', 'acole@example.com', '2023-03-31 04:16:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w23R19vymK', '2023-03-31 04:16:31', '2023-03-31 04:16:31');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
