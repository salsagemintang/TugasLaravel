-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2019 at 05:35 PM
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
-- Database: `data_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `nama_guru` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8_unicode_ci NOT NULL,
  `fotoGuru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama_guru`, `tanggal_lahir`, `jenis_kelamin`, `fotoGuru`, `created_at`, `updated_at`) VALUES
('1113', 'Samsul Basori', '1964-03-31', 'L', '', '2019-08-05 17:00:00', '2019-09-05 19:28:36'),
('12', 'Whyna Agustin', '2019-09-04', 'P', NULL, '2019-09-16 21:12:03', '2019-09-16 21:12:03'),
('2454', 'Yuni', '2019-09-02', 'P', NULL, '2019-09-16 21:06:20', '2019-09-16 21:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(30) NOT NULL,
  `nama_kelas` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(1, 'XI-RPL6', NULL, NULL),
(2, 'XI IPA', NULL, NULL),
(3, 'XI KPR 2', '2019-09-09 20:12:32', '2019-09-09 20:12:32'),
(12, 'XI MM', '2019-09-12 18:26:18', '2019-09-12 18:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_06_005915_create_table_siswa', 1),
(4, '2019_08_23_003044_create_table_guru', 2),
(5, '2019_08_30_004959_create_table_kelas', 3),
(6, '2019_08_30_005819_create_table_kelas', 4),
(7, '2019_08_30_010522_create_table_kelas', 5),
(8, '2019_09_06_011948_create_table_walikelas', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) NOT NULL,
  `nisn` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nama_siswa` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_kelas` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `nama_siswa`, `tanggal_lahir`, `jenis_kelamin`, `avatar`, `created_at`, `updated_at`, `id_kelas`) VALUES
(34, '1000', 'Tiara', '2002-03-03', 'L', 'background-powerpoint-warna-lembut-8.jpg', '2019-07-15 02:00:00', '2019-09-09 20:01:02', 2),
(35, '1006', 'Fina', '2000-06-06', 'L', 'animated_birdwing_butterfly.gif', '2019-07-15 02:00:00', '2019-09-12 18:28:47', 12),
(36, '1', 'Anggi', '2019-09-05', 'P', NULL, '2019-09-16 21:11:06', '2019-09-16 21:11:06', NULL),
(37, '1002', 'Aza', '2019-09-03', 'L', NULL, '2019-09-16 22:18:47', '2019-09-16 22:18:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(30) NOT NULL,
  `nama_user` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Salsaaa', 'salsa@gmail.com', NULL, '$2y$10$Tziktp69lXj43IvWyhm7xu0y24KKDyiKQmP7tUiFUIO2XPl.4Xv2e', NULL, '2019-08-19 17:01:09', '2019-08-19 17:01:09'),
(2, 'salsa', 'putri_puspita_27rpl@student.smktelkom-mlg.sch.id', NULL, '$2y$10$BWWFjRBtI2zZKV6zXG5k5eNWkcwKdNRA6tJ615yU.qfDxZanj/wLm', NULL, '2019-08-19 17:03:31', '2019-08-19 17:03:31'),
(4, 'Salsa Gemintang', 'salsabila_gemintang_27rpl@student.smktelkom-mlg.sch.id', NULL, '$2y$10$c7hDmz.d4nDniPxaw23bqegshzm7LmLCj8B5VjQH2zhvI/kYxPQea', NULL, '2019-08-19 18:11:08', '2019-08-19 18:11:08'),
(5, 'sa', 'salsa123@gmail.com', NULL, '$2y$10$750wOPHvy7Azf3nFYo6xZ..Hw8hqVIYKslHH9GWeUFrPUDHS5Xx7a', NULL, '2019-08-19 18:12:00', '2019-08-19 18:12:00'),
(6, 'Akhtar', 'akhtar_muzaqie_27rpl@student.smktelkom-mlg.sch.id', NULL, '$2y$10$lZvUaoLFP/TCcdjWSLLMhO17NPXswa0K9gwzx4.Wvi2bu3avR9YNG', NULL, '2019-08-19 18:12:39', '2019-08-19 18:12:39'),
(7, 'salsa', 'salsabila.gemintang08@gmail.com', NULL, '$2y$10$9jNOFypWWKeyIQiq3ADFp.IL5QYMOc7rfTmHlk..dyh1rutpuw39K', NULL, '2019-08-22 17:24:25', '2019-08-22 17:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_guru` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_kelas` int(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`id`, `id_guru`, `id_kelas`, `created_at`, `updated_at`) VALUES
(1, '1113', 1, '2019-09-01 17:00:00', '2019-09-01 17:00:00'),
(3, '1113', 2, '2019-09-16 22:19:36', '2019-09-16 22:19:36'),
(12, '2454', 2, '2019-09-16 22:19:07', '2019-09-16 22:19:07'),
(44, '12', 2, '2019-09-16 21:30:09', '2019-09-16 21:30:09'),
(77, '12', 2, '2019-09-16 23:20:04', '2019-09-16 23:20:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `walikelas`
--
ALTER TABLE `walikelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`);

--
-- Constraints for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD CONSTRAINT `walikelas_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `walikelas_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
