-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 10, 2024 at 09:32 AM
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
-- Database: `laravel_users`
--

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
('bhushan@gmail.com|::1', 'i:1;', 1713866616),
('bhushan@gmail.com|::1:timer', 'i:1713866616;', 1713866616),
('meghana@gmail.com|::1', 'i:2;', 1711433239),
('meghana@gmail.com|::1:timer', 'i:1711433239;', 1711433239);

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2024_03_25_150344_add_fields_to_users_table', 2),
(5, '2024_03_26_065257_temp_images_table', 3),
(6, '2024_03_26_065559_images_table', 4);

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
('0iCzih2qgLrH2G5Yg8cL3ELk3XM6y5PCgcIgooOC', 70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidHVzMVdEUDV6MzBSMjlMb1pLNWtsWTFxYjhoUWF6RHM5cHdVQjVYeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbF91c2Vycy91c2VycyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjcwO30=', 1714372031);

-- --------------------------------------------------------

--
-- Table structure for table `tempimages`
--

CREATE TABLE `tempimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `last_name`, `phone`, `role`) VALUES
(26, 'Dr. Braden Mohr', 'pbernhard@example.org', '2024-03-25 13:27:51', '$2y$12$ILVhl2so/w7udqj8Sm77d.swwJ0xBJosuZwZka6zCf5XqHqXmX3Ru', '3gbgKePBru', '2024-03-25 13:27:54', '2024-03-25 13:27:54', 'Schroeder', '318-929-2520', 1),
(27, 'Weldon Shields', 'dosinski@example.net', '2024-03-25 13:27:52', '$2y$12$gEZzgPITdmZqSrvvfmBFDOeEgGkKh5/eWQC34SUzor2B5AV.rjeGG', 'OB0UAIwqtR', '2024-03-25 13:27:54', '2024-03-25 13:27:54', 'Heathcote', '+1 (936) 795-6818', 0),
(28, 'Shana Christiansen', 'dkeeling@example.net', '2024-03-25 13:27:52', '$2y$12$Ry1f0OtpKyqUozrkMUaLuugvXzK1z0ASPqdLqjxwRraOKNr5CU7JG', 'oONyYvtGyt', '2024-03-25 13:27:54', '2024-03-25 13:27:54', 'Adams', '(786) 261-1083', 0),
(29, 'Magnus Casper', 'littel.felix@example.net', '2024-03-25 13:27:53', '$2y$12$y.4C1zgB0jMtBHK5s3xHBextM52IbFsmtA1B6PfjtPJyyBdUStAmi', 'JNCOXLHsPg', '2024-03-25 13:27:54', '2024-03-25 13:27:54', 'Reynolds', '+1.346.390.4136', 0),
(30, 'Mrs. Alysa Hayes', 'wtorphy@example.com', '2024-03-25 13:27:53', '$2y$12$3sRdp1XS3MecIijFWNrwsuArZioBlbxZh.mY00zK0rIJjoNcsLp66', '1aFBT5t8C4', '2024-03-25 13:27:54', '2024-03-25 13:27:54', 'Franecki', '480-671-2284', 0),
(31, 'Julianne Reilly', 'issac.kihn@example.com', '2024-03-25 13:27:53', '$2y$12$dWi19LcpZwqZGMfASInkcOqYk5booaMkJDRnM4BRcKlSs36qjDlfC', 'qsRHUvm75C', '2024-03-25 13:27:54', '2024-03-25 13:27:54', 'Johns', '(629) 502-2258', 1),
(32, 'Dr. Ova Jones', 'pearline81@example.com', '2024-03-25 13:27:54', '$2y$12$Dfz3d7w/x.l63OHNGkTXIeHbokbjQxUWfY7kn.cO/RakldDVEVtme', 'Z3uSf1Npcb', '2024-03-25 13:27:54', '2024-03-25 13:27:54', 'Mann', '+1 (352) 913-9530', 0),
(34, 'Pattie Schinner', 'jnikolaus@example.org', '2024-03-25 13:40:33', '$2y$12$PYGD6ohRU.JhpNpYLsfa5OWnMcx0bIMxR3Q2SqTA5d4lfgxjEybn6', 'oT8O96mQWx', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Adams', '+1.757.354.6654', 0),
(35, 'Nicola Mayer', 'mrolfson@example.org', '2024-03-25 13:40:33', '$2y$12$q9/5n272UgnYSj54j3HX1OnxFUKluncLjNIIu6Q.zsPNLG91FxFoa', 'IAwaWGgWWj', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Mueller', '830.544.0150', 0),
(36, 'Dr. Demetris Barton III', 'celine80@example.net', '2024-03-25 13:40:34', '$2y$12$dKa1tcwmLLImh5GokA2Z1.B8tieJ8VU.8s5F8QBagxePlEzRXiuCq', 'sSQcAcdfRo', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Grimes', '+1-941-668-7658', 0),
(37, 'Prof. Daija McClure II', 'orlo.jacobs@example.org', '2024-03-25 13:40:34', '$2y$12$xrJdl3SRUosr3e19RnocMeba7ggZKz8i3oMzpsiEc9fAFUDg8aMle', '8a2hAvd0ce', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Kessler', '+1-219-799-1356', 1),
(38, 'Jessika Mraz', 'elva62@example.org', '2024-03-25 13:40:34', '$2y$12$m6if0Kx3VFR7cqx7c/uyBuo7IJK1ARX0aXIHfVof4/L4KHHWoirK6', 'FL7wrsPpe1', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Kihn', '+1.458.932.8299', 0),
(39, 'Sedrick O\'Kon', 'hfeil@example.net', '2024-03-25 13:40:35', '$2y$12$5dxhfldeczay5lshofexwOVg5YyUZqda64UNl3z7e5wL0UU87F5X.', 'yp0gZrXE5w', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Glover', '+1 (505) 970-5603', 0),
(40, 'Karianne Swaniawski V', 'zberge@example.org', '2024-03-25 13:40:35', '$2y$12$huFrIjigsAvurCQ2GbUgVudrI8vFMDzqQjCCny.Zw29dEwBo.B5r2', '4aQ1xPMV9G', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Klocko', '253.206.9290', 0),
(41, 'Ana Ziemann', 'trath@example.org', '2024-03-25 13:40:35', '$2y$12$0YvmkeToADQUso4nRpgb7O4UPLJOPAvXGv0eAEZhP153HJWqdBHNG', 'eAaB6k9NX7', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Brakus', '531-724-1440', 0),
(42, 'Lew Bartoletti', 'felipe.harris@example.net', '2024-03-25 13:40:36', '$2y$12$0dRKO4TNysrKuXzvWHpRaOnfD/oh1GSFf8BIGVOQ0gqKwf70F4lvu', 'dbf1RV60zo', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Schimmel', '(423) 296-4824', 1),
(43, 'Bailey Glover', 'monahan.orval@example.org', '2024-03-25 13:40:36', '$2y$12$t5LCBltDSq3Mjht5B4DoD.YZAVauc0zBgxBS5uQedg3AlTttCTuI6', 'RGw6wSLOuE', '2024-03-25 13:40:36', '2024-03-25 13:40:36', 'Veum', '(765) 745-7692', 0),
(44, 'Isai Carroll', 'bnitzsche@example.org', '2024-03-25 13:40:39', '$2y$12$xHDFZIAXIdT9diNIZ.gwgeG0uMl6We5F/RtFbWqwB1lyjyIloUMtO', 'SrZZHcnw5J', '2024-03-25 13:40:43', '2024-03-25 13:40:43', 'Grady', '(808) 678-8507', 0),
(45, 'Dr. Pablo Rohan I', 'cvolkman@example.net', '2024-03-25 13:40:39', '$2y$12$HikgsUXQ8gZ1PFWk4swLg.7MbikbI5216O9UiHTdKdTbYTjuW/bAS', 'gPH5doWnMx', '2024-03-25 13:40:43', '2024-03-25 13:40:43', 'Leuschke', '+1.508.815.6727', 1),
(46, 'Chesley Fritsch', 'predovic.arnold@example.net', '2024-03-25 13:40:40', '$2y$12$4ZHT628EhDH22hE7jN.L2eoq1FuE6Juaz/1THnJtqmnZLoj4blbxm', 'PmbQKOw5Zd', '2024-03-25 13:40:43', '2024-03-26 01:00:43', 'Sawayn', '1854576065', 1),
(47, 'Demario White III', 'hparisian@example.org', '2024-03-25 13:40:40', '$2y$12$qETS7i8suOaTIh/jLeS6v.7hNT9EQT8uuHXEVVMkxii80vcJB.hve', 'KsiYmtzcNW', '2024-03-25 13:40:43', '2024-03-25 13:40:43', 'Hessel', '+1-808-675-2662', 1),
(48, 'Mr. Grover Hills', 'cokon@example.org', '2024-03-25 13:40:40', '$2y$12$rLOYvNTcmDwMaU5CxKG.8erXZDOg7eO3dnsoKq9hUNOKqzdKvvZna', 'JwdULTKDCR', '2024-03-25 13:40:43', '2024-03-25 13:40:43', 'Jacobson', '480.331.8228', 0),
(49, 'Miss Piper Hermiston', 'brad85@example.org', '2024-03-25 13:40:41', '$2y$12$Y7rmYoFxid7y1j0zI2fMLO/MHwhH1F4kyMM7NhqV1csXnsP7Y2z2m', 'IPXATkVUc4', '2024-03-25 13:40:43', '2024-03-25 13:40:43', 'Schuster', '+1-310-291-0846', 1),
(50, 'Jaydon Wyman', 'jamel38@example.org', '2024-03-25 13:40:41', '$2y$12$HdSocbyDxFVrM3TEnqmU2.nQdABunVRiAmO8SO/bAsENszWLK0aSy', 'xK2AV50aGw', '2024-03-25 13:40:43', '2024-03-25 13:40:43', 'Torp', '1-956-834-8546', 0),
(51, 'Mrs. Alaina Luettgen', 'jeromy.stracke@example.net', '2024-03-25 13:40:42', '$2y$12$J5kCheh.fXPe7xeIDpi6muLIaKYNbCb3T1dzw17CNNBxLPsDVI9Hq', 'epjmLnnMSA', '2024-03-25 13:40:43', '2024-03-25 13:40:43', 'Wiegand', '534-721-0684', 0),
(52, 'Janick Nader DVM', 'mbrakus@example.net', '2024-03-25 13:40:42', '$2y$12$USXP.EXYQE8CBWr1b3Qfa.kAA4qDJ3gN93/BsG4VgVgF0u1mPuW4i', 'ZFkeJ6nDYV', '2024-03-25 13:40:43', '2024-03-25 13:40:43', 'Keebler', '(201) 947-4193', 1),
(53, 'Krystina Hintz', 'wendell91@example.com', '2024-03-25 13:40:42', '$2y$12$p3WJRK7CtbpNsmw2GjUAkezpHia2LE9t4kKq4JXUCZCVLvPzIINde', '3Yfn8nk2AN', '2024-03-25 13:40:43', '2024-03-25 13:40:43', 'Botsford', '+1.267.828.0125', 0),
(61, 'sadiya', 'sadiya@gmail.com', NULL, '$2y$12$6Iu9cX0yzAi/3s8GD4O6Nuc3xxeE2pZT2.WsR7ZzIs5jJDQR1kp7C', NULL, '2024-03-26 00:37:03', '2024-03-26 00:37:03', NULL, NULL, 0),
(69, 'saniya', 'saniya@gmail.com', NULL, '$2y$12$5SRV1d/Kgg62hvZpLAHlH.xw2fr7Uiy23rH.O5TwJxPxoSGihnLKK', NULL, '2024-04-29 00:55:05', '2024-04-29 00:55:05', NULL, NULL, 0),
(70, 'gayatri', 'gayatri@gmail.com', NULL, '$2y$12$JRM41MEaL7t7Lc8rbym68eUJHR.vHj8lXO2rUN5h5zN6Tb2yqDtOm', NULL, '2024-04-29 00:56:50', '2024-04-29 00:56:50', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tempimages`
--
ALTER TABLE `tempimages`
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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tempimages`
--
ALTER TABLE `tempimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
