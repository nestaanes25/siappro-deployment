-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2026 at 07:43 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siappro2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrasi_perjalanan_dinas`
--

CREATE TABLE `administrasi_perjalanan_dinas` (
  `id_adm_perjalanan_dinas` bigint UNSIGNED NOT NULL,
  `id_jenis_perjalanan_dinas` bigint UNSIGNED NOT NULL,
  `id_petugas` json DEFAULT NULL,
  `nama_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `waktu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pelaksana` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `is_seen_by_superadmin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrasi_perjalanan_dinas`
--

INSERT INTO `administrasi_perjalanan_dinas` (`id_adm_perjalanan_dinas`, `id_jenis_perjalanan_dinas`, `id_petugas`, `nama_kegiatan`, `tanggal_mulai`, `tanggal_selesai`, `waktu`, `tujuan`, `pelaksana`, `file_path`, `created_by`, `updated_by`, `is_seen_by_superadmin`, `created_at`, `updated_at`) VALUES
(14, 2, '[5, 10, 18, 17, 15, 3, 2, 16, 6, 12, 7, 1, 4, 11, 13, 8, 9, 14]', 'Melakukan audiensi kepada Presiden RI', '2026-03-04', '2026-03-06', '09:00', 'Malaysia', 'Agita Rindu Daddinda, S.E.; Adisti Nanda Sari, S.Tr. A.P.; Andhi Ilham Permana, S.H., M.H.', NULL, 1, 1, 1, '2026-03-04 05:15:40', '2026-03-11 02:41:52'),
(15, 2, '[10, 15]', 'apa yahh', '2026-03-06', '2026-03-07', '09:00', 'Malaysia', 'Agus Widodo, S.IP., M.Si.', NULL, 1, 1, 1, '2026-03-05 01:23:53', '2026-03-11 02:41:52'),
(16, 1, '[10]', 'Administrasi Perjalanan Dinas dalam rangka kunjungan kerja', '2023-05-03', '2023-05-03', '09:00', 'Jawa Tengah', 'Hasbullah Ahmad', NULL, 1, 1, 1, '2026-03-11 01:39:59', '2026-03-11 02:41:52'),
(17, 1, '[5]', 'Rapat Konsultasi Penyusunan Formasi dan Pengadaan ASN Tahun 2023 di lingkungan Kemensetneg', '2023-03-31', '2023-03-31', '09:00', 'Jawa Barat', 'Sekretariat', NULL, 1, 1, 1, '2026-03-11 01:41:38', '2026-03-11 02:41:52'),
(18, 1, '[10]', 'Melakukan audiensi kepada Presiden RI', '2026-03-11', '2026-03-12', '09:00', 'Bali', 'Agus Widodo, S.IP., M.Si.', 'administrasi_perjalanan_dinas/3mlIM9oGMsJyFM0cGgbpyf5ZZ2n7sd4oyAU4aZcx.png', 1, 1, 1, '2026-03-11 01:49:57', '2026-03-11 02:41:52'),
(19, 2, '[\"18\"]', 'masakkkk', '2026-03-11', '2026-03-11', '09:00', 'vietnam', 'anesta', NULL, 1, 1, 1, '2026-03-11 04:47:29', '2026-03-11 04:47:29'),
(20, 2, '[\"3\"]', 'bismillah test terakhir', '2026-03-11', '2026-03-11', '09:00', 'Korea selatan', 'Adisti Nanda Sari, S.Tr. A.P.; Adi Perdana Putra, S.I.Kom.', NULL, 4, 4, 1, '2026-03-11 06:02:20', '2026-03-11 06:02:20'),
(21, 2, '[\"18\"]', 'Perjalanan dinas ke Singapore', '2026-03-20', '2026-03-27', '09:00', 'Vietnam', 'Adisti Nanda Sari, S.Tr. A.P.; Agita Rindu Daddinda, S.E.; anesta; femas', NULL, 1, 4, 1, '2026-03-13 04:33:38', '2026-03-27 01:12:59'),
(22, 2, '[\"5\", \"17\"]', 'Melakukan audiensi kepada Presiden RI', '2026-03-13', '2026-03-19', '09:00', 'Malaysia', 'Agita Rindu Daddinda, S.E.; Andhika Beriansyah, S.Kesos.; Adisti Nanda Sari, S.Tr. A.P.', NULL, 1, 1, 1, '2026-03-13 04:44:55', '2026-03-13 04:44:55'),
(23, 2, '[]', 'Melakukan audiensi kepada Presiden RI', '2026-03-13', '2026-03-13', '09:00', 'vietnam', 'Agita Rindu Daddinda, S.E.', NULL, 2, 2, 1, '2026-03-13 07:44:12', '2026-03-13 07:44:12'),
(24, 1, '[]', 'Pelatihan AI', '2026-04-05', '2026-04-07', '09:00', 'Jawa Barat', 'Dian Kartika Putri, S.Kom., M.T.I.; Fikroh Amali Fahmi Addiani, S.T., M.T.', NULL, 2, 2, 1, '2026-03-27 02:54:24', '2026-03-27 03:03:20'),
(26, 2, '[]', 'Pertemuan persiapan sumpah pemuda', '2026-09-23', '2026-09-25', '09:00', 'Canyon', 'Adi Perdana Putra, S.I.Kom.; Agus Widodo, S.IP., M.Si.', NULL, 2, 2, 0, '2026-09-22 09:47:30', '2026-09-22 09:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'role_column_visibility', '{\"admin\": {\"file\": true, \"last_update\": true}, \"eksternal\": {\"file\": false, \"last_update\": false}, \"super_admin\": {\"file\": true, \"last_update\": true}}', '2026-02-28 16:34:30', '2026-02-28 16:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_logs`
--

CREATE TABLE `history_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `changes` json DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_logs`
--

INSERT INTO `history_logs` (`id`, `model_type`, `model_id`, `user_id`, `user_agent`, `ip_address`, `action`, `description`, `changes`, `status`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\PelayananKeprotokolan', 5, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-18 22:04:47', '2026-02-18 22:04:47'),
(2, 'App\\Models\\PelayananKeprotokolan', 6, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-18 22:07:12', '2026-02-18 22:07:12'),
(3, 'App\\Models\\PelayananKeprotokolan', 5, 1, NULL, NULL, 'updated', 'Detail kegiatan diperbarui', '{\"waktu\": \"16:30\", \"updated_by\": 1}', 'success', '2026-02-18 22:07:45', '2026-02-18 22:07:45'),
(4, 'App\\Models\\PelayananKeprotokolan', 7, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-19 18:49:05', '2026-02-19 18:49:05'),
(5, 'App\\Models\\PelayananKeprotokolan', 8, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-19 21:40:09', '2026-02-19 21:40:09'),
(6, 'App\\Models\\PelayananKeprotokolan', 8, 1, NULL, NULL, 'updated', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:50\", \"updated_by\": 1, \"nama_kegiatan\": \"Melakukan audiensi kepada Presiden RI 2\"}', 'success', '2026-02-19 22:19:45', '2026-02-19 22:19:45'),
(7, 'App\\Models\\AdministrasiPerjalananDinas', 5, 1, NULL, NULL, 'updated', 'Detail kegiatan diperbarui', '{\"pelaksana\": \"mba siska\", \"tanggal_selesai\": \"2026-02-20 00:00:00\"}', 'success', '2026-02-19 22:26:35', '2026-02-19 22:26:35'),
(8, 'App\\Models\\Persidangan', 14, 1, NULL, NULL, 'updated', 'Detail kegiatan diperbarui', '{\"waktu\": \"15:00\", \"id_anggota\": \"8\"}', 'success', '2026-02-19 22:28:13', '2026-02-19 22:28:13'),
(9, 'App\\Models\\PelayananKeprotokolan', 9, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-20 00:55:04', '2026-02-20 00:55:04'),
(10, 'App\\Models\\PelayananKeprotokolan', 10, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-20 01:18:40', '2026-02-20 01:18:40'),
(11, 'App\\Models\\Persidangan', 15, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-20 01:19:40', '2026-02-20 01:19:40'),
(12, 'App\\Models\\AdministrasiPerjalananDinas', 9, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-20 01:20:12', '2026-02-20 01:20:12'),
(13, 'App\\Models\\Persidangan', 8, 1, NULL, NULL, 'updated', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:00\", \"id_petugas\": \"10\", \"updated_by\": 1}', 'success', '2026-02-20 01:31:00', '2026-02-20 01:31:00'),
(14, 'App\\Models\\Persidangan', 8, 1, NULL, NULL, 'updated', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:00\"}', 'success', '2026-02-20 01:31:01', '2026-02-20 01:31:01'),
(15, 'App\\Models\\PelayananKeprotokolan', 9, 1, NULL, NULL, 'updated', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:45\", \"updated_by\": 1}', 'success', '2026-02-21 01:15:13', '2026-02-21 01:15:13'),
(16, 'App\\Models\\PelayananKeprotokolan', 10, 1, NULL, NULL, 'updated', 'Detail kegiatan diperbarui', '{\"waktu\": \"11:30\", \"updated_by\": 1}', 'success', '2026-02-21 01:15:51', '2026-02-21 01:15:51'),
(17, 'App\\Models\\PelayananKeprotokolan', 11, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-21 02:47:05', '2026-02-21 02:47:05'),
(18, 'App\\Models\\AdministrasiPerjalananDinas', 10, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-23 19:36:50', '2026-02-23 19:36:50'),
(19, 'App\\Models\\KunjunganKerja', 4, 1, NULL, NULL, 'updated', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:45\", \"rombongan\": \"[\\\"Agita Rindu Daddinda, S.E.\\\",\\\"Agus Widodo, S.IP., M.Si.\\\"]\", \"id_anggota\": \"6\", \"tujuan_luar_negeri\": \"Dubai\"}', 'success', '2026-02-24 08:46:41', '2026-02-24 08:46:41'),
(20, 'App\\Models\\PelayananKeprotokolan', 12, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-24 10:21:19', '2026-02-24 10:21:19'),
(21, 'App\\Models\\Persidangan', 16, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-24 10:23:55', '2026-02-24 10:23:55'),
(22, 'App\\Models\\Persidangan', 17, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-24 10:24:31', '2026-02-24 10:24:31'),
(23, 'App\\Models\\KunjunganKerja', 6, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-24 10:25:42', '2026-02-24 10:25:42'),
(24, 'App\\Models\\KunjunganKerja', 7, 1, NULL, NULL, 'created', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-24 10:26:55', '2026-02-24 10:26:55'),
(25, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-25 19:15:31', '2026-02-25 19:15:31'),
(26, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-25 19:15:46', '2026-02-25 19:15:46'),
(27, 'App\\Models\\PelayananKeprotokolan', 9, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-02-25 19:23:19', '2026-02-25 19:23:19'),
(28, 'App\\Models\\KunjunganKerja', 8, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-25 19:25:05', '2026-02-25 19:25:05'),
(29, 'App\\Models\\KunjunganKerja', 8, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:45\"}', 'success', '2026-02-25 19:26:44', '2026-02-25 19:26:44'),
(30, 'App\\Models\\PelayananKeprotokolan', 13, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-25 20:13:42', '2026-02-25 20:13:42'),
(31, 'App\\Models\\PelayananKeprotokolan', 13, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:45\", \"updated_by\": 1, \"id_jenis_pelayanan\": \"4\"}', 'success', '2026-02-25 20:17:01', '2026-02-25 20:17:01'),
(32, 'App\\Models\\PelayananKeprotokolan', 14, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-25 20:19:41', '2026-02-25 20:19:41'),
(33, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-25 20:34:47', '2026-02-25 20:34:47'),
(34, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-25 20:35:40', '2026-02-25 20:35:40'),
(35, 'App\\Models\\AdministrasiPerjalananDinas', 11, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-25 20:50:12', '2026-02-25 20:50:12'),
(36, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-25 20:55:05', '2026-02-25 20:55:05'),
(37, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-25 20:55:36', '2026-02-25 20:55:36'),
(38, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-25 21:00:07', '2026-02-25 21:00:07'),
(39, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-25 21:00:18', '2026-02-25 21:00:18'),
(40, 'App\\Models\\PelayananKeprotokolan', 14, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:45\", \"id_petugas\": null, \"updated_by\": 2}', 'success', '2026-02-25 21:01:34', '2026-02-25 21:01:34'),
(41, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-25 21:04:19', '2026-02-25 21:04:19'),
(42, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-25 21:04:36', '2026-02-25 21:04:36'),
(43, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-26 18:19:40', '2026-02-26 18:19:40'),
(44, 'App\\Models\\KunjunganKerja', 9, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-26 19:08:07', '2026-02-26 19:08:07'),
(45, 'App\\Models\\AdministrasiPerjalananDinas', 12, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-27 03:17:09', '2026-02-27 03:17:09'),
(46, 'App\\Models\\AdministrasiPerjalananDinas', 12, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"tanggal_selesai\": \"2026-02-04 00:00:00\"}', 'success', '2026-02-27 03:17:37', '2026-02-27 03:17:37'),
(47, 'App\\Models\\PelayananKeprotokolan', 12, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-02-27 03:36:55', '2026-02-27 03:36:55'),
(48, 'App\\Models\\KunjunganKerja', 5, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-02-27 03:51:20', '2026-02-27 03:51:20'),
(49, 'App\\Models\\Persidangan', 17, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-02-27 03:51:44', '2026-02-27 03:51:44'),
(50, 'App\\Models\\PelayananKeprotokolan', 6, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-02-27 03:52:04', '2026-02-27 03:52:04'),
(51, 'App\\Models\\AdministrasiPerjalananDinas', 8, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-02-27 03:52:26', '2026-02-27 03:52:26'),
(52, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 03:55:24', '2026-02-27 03:55:24'),
(53, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-27 03:55:36', '2026-02-27 03:55:36'),
(54, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 03:58:58', '2026-02-27 03:58:58'),
(55, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-27 03:59:10', '2026-02-27 03:59:10'),
(56, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 04:00:46', '2026-02-27 04:00:46'),
(57, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-27 04:00:59', '2026-02-27 04:00:59'),
(58, 'App\\Models\\PelayananKeprotokolan', 15, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-27 04:04:11', '2026-02-27 04:04:11'),
(59, 'App\\Models\\PelayananKeprotokolan', 16, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-27 04:05:06', '2026-02-27 04:05:06'),
(60, 'App\\Models\\Persidangan', 18, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-27 04:06:20', '2026-02-27 04:06:20'),
(61, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 04:07:15', '2026-02-27 04:07:15'),
(62, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-27 04:07:42', '2026-02-27 04:07:42'),
(63, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 04:08:21', '2026-02-27 04:08:21'),
(64, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-27 04:08:30', '2026-02-27 04:08:30'),
(65, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 04:15:32', '2026-02-27 04:15:32'),
(66, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-27 04:15:51', '2026-02-27 04:15:51'),
(67, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 04:21:04', '2026-02-27 04:21:04'),
(68, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-27 04:21:12', '2026-02-27 04:21:12'),
(69, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 04:23:01', '2026-02-27 04:23:01'),
(70, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-27 04:23:37', '2026-02-27 04:23:37'),
(71, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 04:23:43', '2026-02-27 04:23:43'),
(72, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-27 04:23:57', '2026-02-27 04:23:57'),
(73, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-27 07:34:51', '2026-02-27 07:34:51'),
(74, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 15:35:01', '2026-02-28 15:35:01'),
(75, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:01:42', '2026-02-28 16:01:42'),
(76, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:02:10', '2026-02-28 16:02:10'),
(77, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:08:28', '2026-02-28 16:08:28'),
(78, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:08:37', '2026-02-28 16:08:37'),
(79, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:10:34', '2026-02-28 16:10:34'),
(80, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:10:48', '2026-02-28 16:10:48'),
(81, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:26:49', '2026-02-28 16:26:49'),
(82, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:27:04', '2026-02-28 16:27:04'),
(83, NULL, NULL, 1, NULL, NULL, 'update_display_settings', NULL, NULL, 'success', '2026-02-28 16:34:30', '2026-02-28 16:34:30'),
(84, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:34:53', '2026-02-28 16:34:53'),
(85, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:35:03', '2026-02-28 16:35:03'),
(86, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:35:33', '2026-02-28 16:35:33'),
(87, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:35:50', '2026-02-28 16:35:50'),
(88, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:36:31', '2026-02-28 16:36:31'),
(89, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:36:42', '2026-02-28 16:36:42'),
(90, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:37:27', '2026-02-28 16:37:27'),
(91, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:37:45', '2026-02-28 16:37:45'),
(92, NULL, NULL, 1, NULL, NULL, 'update_display_settings', NULL, NULL, 'success', '2026-02-28 16:38:37', '2026-02-28 16:38:37'),
(93, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:49:28', '2026-02-28 16:49:28'),
(94, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:49:41', '2026-02-28 16:49:41'),
(95, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 16:54:25', '2026-02-28 16:54:25'),
(96, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 16:54:39', '2026-02-28 16:54:39'),
(97, 'App\\Models\\PelayananKeprotokolan', 17, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-02-28 17:13:22', '2026-02-28 17:13:22'),
(98, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 17:14:52', '2026-02-28 17:14:52'),
(99, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 17:15:07', '2026-02-28 17:15:07'),
(100, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-02-28 17:15:23', '2026-02-28 17:15:23'),
(101, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-02-28 17:15:39', '2026-02-28 17:15:39'),
(102, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-03 15:51:06', '2026-03-03 15:51:06'),
(103, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-03 16:10:32', '2026-03-03 16:10:32'),
(104, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-03 16:10:42', '2026-03-03 16:10:42'),
(105, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-04 01:14:11', '2026-03-04 01:14:11'),
(106, 'App\\Models\\Persidangan', 19, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 01:22:25', '2026-03-04 01:22:25'),
(107, 'App\\Models\\AdministrasiPerjalananDinas', 13, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 01:33:12', '2026-03-04 01:33:12'),
(108, 'App\\Models\\PelayananKeprotokolan', 18, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 01:35:00', '2026-03-04 01:35:00'),
(109, 'App\\Models\\PelayananKeprotokolan', 19, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 01:40:51', '2026-03-04 01:40:51'),
(110, 'App\\Models\\PelayananKeprotokolan', 20, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 01:43:31', '2026-03-04 01:43:31'),
(111, 'App\\Models\\PelayananKeprotokolan', 21, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 01:44:07', '2026-03-04 01:44:07'),
(112, 'App\\Models\\Persidangan', 20, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 01:44:42', '2026-03-04 01:44:42'),
(113, 'App\\Models\\PelayananKeprotokolan', 21, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:48:16', '2026-03-04 01:48:16'),
(114, 'App\\Models\\PelayananKeprotokolan', 20, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:48:22', '2026-03-04 01:48:22'),
(115, 'App\\Models\\PelayananKeprotokolan', 19, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:48:27', '2026-03-04 01:48:27'),
(116, 'App\\Models\\PelayananKeprotokolan', 18, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:48:39', '2026-03-04 01:48:39'),
(117, 'App\\Models\\PelayananKeprotokolan', 17, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:48:44', '2026-03-04 01:48:44'),
(118, 'App\\Models\\PelayananKeprotokolan', 16, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:48:49', '2026-03-04 01:48:49'),
(119, 'App\\Models\\PelayananKeprotokolan', 15, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:48:55', '2026-03-04 01:48:55'),
(120, 'App\\Models\\PelayananKeprotokolan', 14, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:49:00', '2026-03-04 01:49:00'),
(121, 'App\\Models\\PelayananKeprotokolan', 13, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:49:11', '2026-03-04 01:49:11'),
(122, 'App\\Models\\PelayananKeprotokolan', 11, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:49:17', '2026-03-04 01:49:17'),
(123, 'App\\Models\\Persidangan', 20, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:49:33', '2026-03-04 01:49:33'),
(124, 'App\\Models\\Persidangan', 19, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:49:40', '2026-03-04 01:49:40'),
(125, 'App\\Models\\Persidangan', 18, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:49:45', '2026-03-04 01:49:45'),
(126, 'App\\Models\\Persidangan', 16, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:49:50', '2026-03-04 01:49:50'),
(127, 'App\\Models\\Persidangan', 12, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:49:56', '2026-03-04 01:49:56'),
(128, 'App\\Models\\Persidangan', 11, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:00', '2026-03-04 01:50:00'),
(129, 'App\\Models\\Persidangan', 10, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:05', '2026-03-04 01:50:05'),
(130, 'App\\Models\\Persidangan', 9, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:10', '2026-03-04 01:50:10'),
(131, 'App\\Models\\Persidangan', 7, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:14', '2026-03-04 01:50:14'),
(132, 'App\\Models\\Persidangan', 1, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:20', '2026-03-04 01:50:20'),
(133, 'App\\Models\\KunjunganKerja', 8, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:29', '2026-03-04 01:50:29'),
(134, 'App\\Models\\KunjunganKerja', 9, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:35', '2026-03-04 01:50:35'),
(135, 'App\\Models\\KunjunganKerja', 7, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:41', '2026-03-04 01:50:41'),
(136, 'App\\Models\\KunjunganKerja', 6, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:46', '2026-03-04 01:50:46'),
(137, 'App\\Models\\KunjunganKerja', 4, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:52', '2026-03-04 01:50:52'),
(138, 'App\\Models\\KunjunganKerja', 3, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:50:57', '2026-03-04 01:50:57'),
(139, 'App\\Models\\KunjunganKerja', 2, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:51:02', '2026-03-04 01:51:02'),
(140, 'App\\Models\\PelayananKeprotokolan', 10, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:51:10', '2026-03-04 01:51:10'),
(141, 'App\\Models\\AdministrasiPerjalananDinas', 13, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:51:33', '2026-03-04 01:51:33'),
(142, 'App\\Models\\AdministrasiPerjalananDinas', 12, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:51:41', '2026-03-04 01:51:41'),
(143, 'App\\Models\\AdministrasiPerjalananDinas', 11, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:51:46', '2026-03-04 01:51:46'),
(144, 'App\\Models\\AdministrasiPerjalananDinas', 10, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:51:51', '2026-03-04 01:51:51'),
(145, 'App\\Models\\AdministrasiPerjalananDinas', 9, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:51:56', '2026-03-04 01:51:56'),
(146, 'App\\Models\\AdministrasiPerjalananDinas', 5, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:52:02', '2026-03-04 01:52:02'),
(147, 'App\\Models\\AdministrasiPerjalananDinas', 4, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:52:07', '2026-03-04 01:52:07'),
(148, 'App\\Models\\AdministrasiPerjalananDinas', 3, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:52:12', '2026-03-04 01:52:12'),
(149, 'App\\Models\\PelayananKeprotokolan', 8, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 01:52:30', '2026-03-04 01:52:30'),
(150, 'App\\Models\\PelayananKeprotokolan', 22, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:00:58', '2026-03-04 02:00:58'),
(151, 'App\\Models\\PelayananKeprotokolan', 23, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:00:58', '2026-03-04 02:00:58'),
(152, 'App\\Models\\PelayananKeprotokolan', 24, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:02:19', '2026-03-04 02:02:19'),
(153, 'App\\Models\\PelayananKeprotokolan', 25, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:02:47', '2026-03-04 02:02:47'),
(154, 'App\\Models\\PelayananKeprotokolan', 22, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"updated_by\": 1}', 'success', '2026-03-04 02:04:10', '2026-03-04 02:04:10'),
(155, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-04 02:21:49', '2026-03-04 02:21:49'),
(156, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-04 02:22:15', '2026-03-04 02:22:15'),
(157, 'App\\Models\\PelayananKeprotokolan', 26, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:24:07', '2026-03-04 02:24:07'),
(158, 'App\\Models\\PelayananKeprotokolan', 27, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:24:51', '2026-03-04 02:24:51'),
(159, 'App\\Models\\PelayananKeprotokolan', 28, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:26:06', '2026-03-04 02:26:06'),
(160, 'App\\Models\\PelayananKeprotokolan', 29, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:26:52', '2026-03-04 02:26:52'),
(161, 'App\\Models\\PelayananKeprotokolan', 28, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 02:27:34', '2026-03-04 02:27:34'),
(162, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-04 02:34:26', '2026-03-04 02:34:26'),
(163, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-04 02:34:39', '2026-03-04 02:34:39'),
(164, 'App\\Models\\PelayananKeprotokolan', 29, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"14:00\", \"id_petugas\": \"18\", \"updated_by\": 1}', 'success', '2026-03-04 02:35:19', '2026-03-04 02:35:19'),
(165, 'App\\Models\\PelayananKeprotokolan', 27, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"id_petugas\": \"17\", \"updated_by\": 1}', 'success', '2026-03-04 02:35:42', '2026-03-04 02:35:42'),
(166, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-04 02:43:30', '2026-03-04 02:43:30'),
(167, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-04 02:45:42', '2026-03-04 02:45:42'),
(168, 'App\\Models\\Persidangan', 21, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:47:07', '2026-03-04 02:47:07'),
(169, 'App\\Models\\Persidangan', 22, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:48:29', '2026-03-04 02:48:29'),
(170, 'App\\Models\\Persidangan', 23, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:49:32', '2026-03-04 02:49:32'),
(171, 'App\\Models\\Persidangan', 24, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:50:22', '2026-03-04 02:50:22'),
(172, 'App\\Models\\Persidangan', 25, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 02:51:14', '2026-03-04 02:51:14'),
(173, 'App\\Models\\Persidangan', 25, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"updated_by\": 2}', 'success', '2026-03-04 02:52:47', '2026-03-04 02:52:47'),
(174, 'App\\Models\\Persidangan', 25, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"file_path\": \"persidangan/rZX8XvjvOhNEANWzUU24VGmsCgEJNRrICqQLSQT9.pdf\"}', 'success', '2026-03-04 02:53:08', '2026-03-04 02:53:08'),
(175, 'App\\Models\\Persidangan', 24, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:50\", \"file_path\": \"persidangan/MDCP1m3D2fiuW4B6Hgtg0cxe4msMRYksqI2xscMZ.xlsx\", \"updated_by\": 2}', 'success', '2026-03-04 02:53:58', '2026-03-04 02:53:58'),
(176, 'App\\Models\\KunjunganKerja', 10, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 03:04:55', '2026-03-04 03:04:55'),
(177, 'App\\Models\\KunjunganKerja', 11, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 03:13:16', '2026-03-04 03:13:16'),
(178, 'App\\Models\\KunjunganKerja', 12, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 03:32:27', '2026-03-04 03:32:27'),
(179, 'App\\Models\\KunjunganKerja', 13, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 03:33:43', '2026-03-04 03:33:43'),
(180, 'App\\Models\\KunjunganKerja', 14, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 03:33:44', '2026-03-04 03:33:44'),
(181, 'App\\Models\\KunjunganKerja', 14, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-04 03:34:31', '2026-03-04 03:34:31'),
(182, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-04 03:38:03', '2026-03-04 03:38:03'),
(183, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-04 03:38:19', '2026-03-04 03:38:19'),
(184, 'App\\Models\\AdministrasiPerjalananDinas', 14, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-04 05:15:40', '2026-03-04 05:15:40'),
(185, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-05 01:22:23', '2026-03-05 01:22:23'),
(186, 'App\\Models\\AdministrasiPerjalananDinas', 15, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-05 01:23:53', '2026-03-05 01:23:53'),
(187, 'App\\Models\\KunjunganKerja', 15, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-05 03:56:33', '2026-03-05 03:56:33'),
(188, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-05 03:57:17', '2026-03-05 03:57:17'),
(189, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-05 03:57:27', '2026-03-05 03:57:27'),
(190, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-05 06:47:34', '2026-03-05 06:47:34'),
(191, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-05 06:48:01', '2026-03-05 06:48:01'),
(192, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-06 04:33:48', '2026-03-06 04:33:48'),
(193, 'App\\Models\\PelayananKeprotokolan', 30, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-06 06:25:58', '2026-03-06 06:25:58'),
(194, 'App\\Models\\PelayananKeprotokolan', 31, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-06 07:16:42', '2026-03-06 07:16:42'),
(195, 'App\\Models\\PelayananKeprotokolan', 32, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-06 07:23:24', '2026-03-06 07:23:24'),
(196, 'App\\Models\\PelayananKeprotokolan', 33, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-06 07:24:03', '2026-03-06 07:24:03'),
(197, 'App\\Models\\PelayananKeprotokolan', 32, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"15:02\", \"updated_by\": 1, \"tanggal_kegiatan\": \"2026-03-06 00:00:00\"}', 'success', '2026-03-06 07:24:51', '2026-03-06 07:24:51'),
(198, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-10 01:41:22', '2026-03-10 01:41:22'),
(199, 'App\\Models\\PelayananKeprotokolan', 3391, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-10 04:12:17', '2026-03-10 04:12:17'),
(200, 'App\\Models\\PelayananKeprotokolan', 3392, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-10 04:19:19', '2026-03-10 04:19:19'),
(201, 'App\\Models\\PelayananKeprotokolan', 3393, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-10 04:39:22', '2026-03-10 04:39:22'),
(202, 'App\\Models\\PelayananKeprotokolan', 3394, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-10 04:42:46', '2026-03-10 04:42:46'),
(203, 'App\\Models\\PelayananKeprotokolan', 33, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"15:00\", \"id_anggota\": \"[\\\"5\\\"]\", \"id_petugas\": \"[\\\"18\\\"]\", \"updated_by\": 1, \"tanggal_kegiatan\": \"2026-03-10 00:00:00\"}', 'success', '2026-03-10 05:36:09', '2026-03-10 05:36:09'),
(204, 'App\\Models\\PelayananKeprotokolan', 30, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:50\", \"id_anggota\": \"[\\\"2\\\"]\", \"id_petugas\": \"[\\\"3\\\"]\", \"updated_by\": 1, \"tanggal_kegiatan\": \"2026-03-10 00:00:00\"}', 'success', '2026-03-10 05:36:21', '2026-03-10 05:36:21'),
(205, 'App\\Models\\Persidangan', 25, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"id_anggota\": \"[\\\"4\\\"]\", \"id_petugas\": \"[]\", \"updated_by\": 1, \"tanggal_persidangan\": \"2026-03-10 00:00:00\"}', 'success', '2026-03-10 05:36:39', '2026-03-10 05:36:39'),
(206, 'App\\Models\\PelayananKeprotokolan', 26, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"08:00\", \"id_anggota\": \"[\\\"3\\\"]\", \"id_petugas\": \"[]\", \"updated_by\": 1, \"tanggal_kegiatan\": \"2026-03-10 00:00:00\"}', 'success', '2026-03-10 05:37:10', '2026-03-10 05:37:10'),
(207, 'App\\Models\\PelayananKeprotokolan', 27, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"id_anggota\": \"[\\\"3\\\"]\", \"id_petugas\": \"[\\\"17\\\"]\", \"tanggal_kegiatan\": \"2026-03-10 00:00:00\"}', 'success', '2026-03-10 05:37:46', '2026-03-10 05:37:46'),
(208, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 01:31:48', '2026-03-11 01:31:48'),
(209, 'App\\Models\\AdministrasiPerjalananDinas', 16, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 01:39:59', '2026-03-11 01:39:59'),
(210, 'App\\Models\\AdministrasiPerjalananDinas', 17, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 01:41:38', '2026-03-11 01:41:38'),
(211, 'App\\Models\\AdministrasiPerjalananDinas', 18, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 01:49:57', '2026-03-11 01:49:57'),
(212, 'App\\Models\\PelayananKeprotokolan', 3395, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 03:36:24', '2026-03-11 03:36:24'),
(213, 'App\\Models\\PelayananKeprotokolan', 3396, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 03:38:16', '2026-03-11 03:38:16'),
(214, 'App\\Models\\PelayananKeprotokolan', 3397, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 04:34:17', '2026-03-11 04:34:17'),
(215, 'App\\Models\\Persidangan', 570, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 04:44:23', '2026-03-11 04:44:23'),
(216, 'App\\Models\\KunjunganKerja', 202, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 04:46:07', '2026-03-11 04:46:07'),
(217, 'App\\Models\\AdministrasiPerjalananDinas', 19, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 04:47:29', '2026-03-11 04:47:29'),
(218, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-11 05:01:02', '2026-03-11 05:01:02'),
(219, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 05:03:46', '2026-03-11 05:03:46'),
(220, 'App\\Models\\User', 4, 1, NULL, NULL, 'update', 'Data user diperbarui: anestiandimeina', NULL, 'success', '2026-03-11 05:05:02', '2026-03-11 05:05:02'),
(221, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-11 05:05:08', '2026-03-11 05:05:08'),
(222, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 05:05:30', '2026-03-11 05:05:30'),
(223, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-11 05:06:10', '2026-03-11 05:06:10'),
(224, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 05:06:28', '2026-03-11 05:06:28'),
(225, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-11 05:07:22', '2026-03-11 05:07:22'),
(226, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 05:07:37', '2026-03-11 05:07:37'),
(227, 'App\\Models\\User', 4, 1, NULL, NULL, 'update', 'Data user diperbarui: anestiandimeina', NULL, 'success', '2026-03-11 05:07:57', '2026-03-11 05:07:57'),
(228, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-11 06:00:48', '2026-03-11 06:00:48'),
(229, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 06:01:04', '2026-03-11 06:01:04'),
(230, 'App\\Models\\AdministrasiPerjalananDinas', 20, 4, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-11 06:02:20', '2026-03-11 06:02:20'),
(231, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-11 06:23:38', '2026-03-11 06:23:38'),
(232, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 06:24:05', '2026-03-11 06:24:05'),
(233, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-11 06:26:05', '2026-03-11 06:26:05'),
(234, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 06:26:27', '2026-03-11 06:26:27'),
(235, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-11 06:28:13', '2026-03-11 06:28:13'),
(236, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 06:34:59', '2026-03-11 06:34:59'),
(237, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-11 06:35:00', '2026-03-11 06:35:00'),
(238, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-11 06:35:16', '2026-03-11 06:35:16'),
(239, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-12 02:19:59', '2026-03-12 02:19:59'),
(240, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-12 02:20:07', '2026-03-12 02:20:07'),
(241, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-12 02:20:37', '2026-03-12 02:20:37'),
(242, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-12 05:25:43', '2026-03-12 05:25:43'),
(243, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-13 01:58:00', '2026-03-13 01:58:00'),
(244, 'App\\Models\\PelayananKeprotokolan', 3398, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 03:59:49', '2026-03-13 03:59:49'),
(245, 'App\\Models\\PelayananKeprotokolan', 3399, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 04:00:48', '2026-03-13 04:00:48'),
(246, 'App\\Models\\Persidangan', 570, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-13 04:09:30', '2026-03-13 04:09:30'),
(247, 'App\\Models\\Persidangan', 25, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"id_anggota\": \"[\\\"4\\\"]\", \"id_petugas\": \"[\\\"18\\\",\\\"13\\\"]\"}', 'success', '2026-03-13 04:09:48', '2026-03-13 04:09:48'),
(248, 'App\\Models\\Persidangan', 571, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 04:15:00', '2026-03-13 04:15:00');
INSERT INTO `history_logs` (`id`, `model_type`, `model_id`, `user_id`, `user_agent`, `ip_address`, `action`, `description`, `changes`, `status`, `created_at`, `updated_at`) VALUES
(249, 'App\\Models\\Persidangan', 571, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:00\", \"file_path\": \"persidangan/jUBL9olETVKMwc8NiwabjOeWDYhUpH4nNPlKsuT7.pdf\", \"updated_by\": 1}', 'success', '2026-03-13 04:15:14', '2026-03-13 04:15:14'),
(250, 'App\\Models\\Persidangan', 572, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 04:15:49', '2026-03-13 04:15:49'),
(251, 'App\\Models\\KunjunganKerja', 203, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 04:25:58', '2026-03-13 04:25:58'),
(252, 'App\\Models\\KunjunganKerja', 204, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 04:27:06', '2026-03-13 04:27:06'),
(253, 'App\\Models\\AdministrasiPerjalananDinas', 21, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 04:33:38', '2026-03-13 04:33:38'),
(254, 'App\\Models\\User', 7, 1, NULL, NULL, 'create', 'User baru ditambahkan: Pramita12_', NULL, 'success', '2026-03-13 04:42:26', '2026-03-13 04:42:26'),
(255, 'App\\Models\\AdministrasiPerjalananDinas', 22, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 04:44:55', '2026-03-13 04:44:55'),
(256, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-13 04:49:27', '2026-03-13 04:49:27'),
(257, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-13 04:49:42', '2026-03-13 04:49:42'),
(258, 'App\\Models\\KunjunganKerja', 205, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 04:52:17', '2026-03-13 04:52:17'),
(259, 'App\\Models\\PelayananKeprotokolan', 3400, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 04:53:07', '2026-03-13 04:53:07'),
(260, 'App\\Models\\KunjunganKerja', 206, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 05:12:23', '2026-03-13 05:12:23'),
(261, 'App\\Models\\PelayananKeprotokolan', 3401, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 05:13:07', '2026-03-13 05:13:07'),
(262, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-13 05:15:18', '2026-03-13 05:15:18'),
(263, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-13 05:15:32', '2026-03-13 05:15:32'),
(264, 'App\\Models\\KunjunganKerja', 206, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"id_petugas\": \"[\\\"10\\\",\\\"9\\\"]\"}', 'success', '2026-03-13 05:17:24', '2026-03-13 05:17:24'),
(265, 'App\\Models\\KunjunganKerja', 207, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 05:31:20', '2026-03-13 05:31:20'),
(266, 'App\\Models\\PelayananKeprotokolan', 3402, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 05:32:05', '2026-03-13 05:32:05'),
(267, 'App\\Models\\KunjunganKerja', 208, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 05:35:53', '2026-03-13 05:35:53'),
(268, 'App\\Models\\PelayananKeprotokolan', 3403, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 05:36:28', '2026-03-13 05:36:28'),
(269, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-13 07:43:36', '2026-03-13 07:43:36'),
(270, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-13 07:43:43', '2026-03-13 07:43:43'),
(271, 'App\\Models\\AdministrasiPerjalananDinas', 23, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 07:44:12', '2026-03-13 07:44:12'),
(272, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-13 07:44:22', '2026-03-13 07:44:22'),
(273, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-13 07:44:38', '2026-03-13 07:44:38'),
(274, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-13 07:47:11', '2026-03-13 07:47:11'),
(275, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-13 07:47:22', '2026-03-13 07:47:22'),
(276, 'App\\Models\\KunjunganKerja', 209, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 07:47:47', '2026-03-13 07:47:47'),
(277, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-13 07:47:51', '2026-03-13 07:47:51'),
(278, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-13 07:48:17', '2026-03-13 07:48:17'),
(279, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-13 13:49:42', '2026-03-13 13:49:42'),
(280, 'App\\Models\\KunjunganKerja', 210, 4, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 13:59:31', '2026-03-13 13:59:31'),
(281, 'App\\Models\\KunjunganKerja', 210, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"rombongan\": \"[\\\"Adi Perdana Putra, S.I.Kom.\\\",\\\"Adisti Nanda Sari, S.Tr. A.P.\\\",\\\"Agita Rindu Daddinda, S.E.\\\",\\\"Agus Widodo, S.IP., M.Si.\\\",\\\"Andhi Ilham Permana, S.H., M.H.\\\",\\\"Andhika Beriansyah, S.Kesos.\\\",\\\"Andry Prastyawan, S.E., M.M.\\\",\\\"Andytias Dwi Adywiratama, S.T., M.T.I.\\\",\\\"Apriliana, S.Pd., M.Si.\\\",\\\"Arief Karfianto, S.ST., M.M., MICTAdv.\\\",\\\"Bangkit Permana Putra, S.H.\\\",\\\"Bernard Bonnik Manoe, S.E., MBA.\\\",\\\"Billy Muhammad Kurnia, A.Md.\\\",\\\"Bintang Verawaty, S.E., Ak.\\\",\\\"Denny Ariffriana, S.Pd.\\\",\\\"Desi Puhati Purnomo Sari, S.E., M.Si.\\\",\\\"Devi Ana Dwi Utami, A.Md.\\\",\\\"Dheyas Tri Pertiwi, S.I.Kom.\\\",\\\"Dhika Aburizal Pratomo, S.I.A.\\\",\\\"Dian Kartika Putri, S.Kom., M.T.I.\\\",\\\"Dina Mabellya, S.I.Kom.\\\",\\\"Dorothea Krishardiyani\\\",\\\"Endah Wahyuni, S.T., MMSI.\\\",\\\"Ferindra Eko Prasetyo, A.Md.Kom.\\\",\\\"Fikroh Amali Fahmi Addiani, S.T., M.T.\\\",\\\"Fransiskus Xaverius Dimas Anggoro, A.Md.\\\",\\\"Gigih Tri Yuwono, S.I.Kom.\\\",\\\"Hairy Akbar Setiawan, S.Ikom.\\\",\\\"Hanani Ninditasari, S.Tr.A.K.P.\\\",\\\"Hangga Filardikh Bachtiar, S.E., M.E.\\\",\\\"Hendi, S.M.\\\",\\\"Hendra, S.Kom., M.H.\\\",\\\"Hezti Kurniati, S.E.\\\",\\\"Hilmy Yahya, S.Sos.\\\",\\\"Ilham Dermawan, S.IP.\\\",\\\"Inas Ulfa Hapsari, S.I.Kom.\\\",\\\"Indri Putrianti, S.I.Kom.\\\",\\\"Irfan Nawawi, S.AP.\\\",\\\"Karina Megasari, S.E.\\\",\\\"Ketrin Alwan, A.Md.\\\",\\\"Kiagus Muhammad Amir, S.IP., M.Tr.A.P.\\\",\\\"Kris Biantoro, S.AP.\\\",\\\"Lestina Susetyohati, S.E.\\\",\\\"Lisa Apriliantias, S.Sos.\\\",\\\"M. Arfan Sahib Sali Kando, S.E., M.F.M.\\\",\\\"Magna Arista Rosa Rini, S.E.\\\",\\\"Maulana Febriansyah\\\",\\\"Mirza Pratama, S.Kom.\\\",\\\"Mochamad Umar Wira Asmara, S.E.\\\",\\\"Muhammad Faried, S.IP., DEA.\\\",\\\"Muhammad Rizky Arrahman, S.Kom.\\\",\\\"Muhammad Ryan Arysta, S.KM.\\\",\\\"Nina Safitri, S.E.\\\",\\\"Novial Anggoro\\\",\\\"Nurafni A Moka, S.E., MPubAdmin(Pol).\\\",\\\"Nurul Cholifah, S.I.Kom.\\\",\\\"Oktaviyani Dwi Lestari, S.Ikom.\\\",\\\"Prima Laksmitasari, S.IP., M.Si.\\\",\\\"Pristalia, A.Md.\\\",\\\"Raden Hendrikus Bambang Budi Nugroho, S.T., M.P.M.\\\",\\\"Raden Zulkifli Ridwan, A.Md.\\\",\\\"Ria Andayani, S.H.\\\",\\\"Rico Bobman, S.E.\\\",\\\"Rio Jayusman, S.E., M.E.\\\",\\\"Risna Sartika, A.Md.Li.\\\",\\\"Rusli Sumantri, S.E.\\\",\\\"Saddra Fitrilia, S.E.\\\",\\\"Sandi Sudjatmiko, S.A.B.\\\",\\\"Shelby Liriara Meisyara, S.E., M.A.\\\",\\\"Silfia Putri Sari, A.Md.A.B.\\\",\\\"Siska Pratiwi, S.I.Kom.\\\",\\\"Siti Nur Azizah Harahap, S.I.Kom.\\\",\\\"Sugeng Widodo, S.E., M.M.\\\",\\\"Tiara Asri Satria, S.E., M.P.P.M.\\\",\\\"Tiara Dwi Rizki, A.Md.\\\",\\\"Tri Murdani, S.H.\\\",\\\"Waskito, S.Kom.\\\",\\\"anesta\\\"]\", \"id_petugas\": \"[\\\"18\\\",\\\"17\\\",\\\"15\\\"]\", \"tanggal_selesai\": \"2026-03-13 00:00:00\"}', 'success', '2026-03-13 14:00:12', '2026-03-13 14:00:12'),
(282, 'App\\Models\\KunjunganKerja', 211, 4, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-13 14:23:02', '2026-03-13 14:23:02'),
(283, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-15 14:24:25', '2026-03-15 14:24:25'),
(284, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-15 22:50:44', '2026-03-15 22:50:44'),
(285, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-15 22:52:45', '2026-03-15 22:52:45'),
(286, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-15 22:58:59', '2026-03-15 22:58:59'),
(287, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-15 23:02:28', '2026-03-15 23:02:28'),
(288, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-15 23:02:45', '2026-03-15 23:02:45'),
(289, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-16 14:47:55', '2026-03-16 14:47:55'),
(290, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2404:c0:a302:62cf:31d9:c444:349f:1f50', 'login', 'User berhasil login', NULL, 'success', '2026-03-16 14:56:13', '2026-03-16 14:56:13'),
(291, 'App\\Models\\PelayananKeprotokolan', 3404, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-16 15:09:21', '2026-03-16 15:09:21'),
(292, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2404:c0:a302:62cf:31d9:c444:349f:1f50', 'login', 'User berhasil login', NULL, 'success', '2026-03-16 15:12:14', '2026-03-16 15:12:14'),
(293, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2404:c0:a302:62cf:51cc:f787:b740:e66c', 'login', 'User berhasil login', NULL, 'success', '2026-03-16 15:24:07', '2026-03-16 15:24:07'),
(294, 'App\\Models\\PelayananKeprotokolan', 3405, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-16 15:26:22', '2026-03-16 15:26:22'),
(295, 'App\\Models\\Persidangan', 573, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-16 15:27:55', '2026-03-16 15:27:55'),
(296, NULL, NULL, 4, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '2404:c0:a302:62cf:9537:137c:eac3:f4e6', 'login', 'User berhasil login', NULL, 'success', '2026-03-16 15:29:23', '2026-03-16 15:29:23'),
(297, 'App\\Models\\PelayananKeprotokolan', 3406, 4, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-16 15:31:13', '2026-03-16 15:31:13'),
(298, NULL, NULL, 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '140.213.2.114', 'login', 'User berhasil login', NULL, 'success', '2026-03-16 15:47:19', '2026-03-16 15:47:19'),
(299, 'App\\Models\\Persidangan', 573, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"15:00\", \"id_petugas\": \"[\\\"15\\\",\\\"16\\\",\\\"6\\\"]\", \"updated_by\": 4}', 'success', '2026-03-16 15:54:15', '2026-03-16 15:54:15'),
(300, NULL, NULL, 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/144.0.7559.95 Mobile/15E148 Safari/604.1', '103.166.91.61', 'login', 'User berhasil login', NULL, 'success', '2026-03-16 16:23:46', '2026-03-16 16:23:46'),
(301, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '103.166.91.61', 'login', 'User berhasil login', NULL, 'success', '2026-03-16 16:36:19', '2026-03-16 16:36:19'),
(302, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-03-16 16:39:41', '2026-03-16 16:39:41'),
(303, 'App\\Models\\PelayananKeprotokolan', 3407, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-16 16:40:46', '2026-03-16 16:40:46'),
(304, 'App\\Models\\Persidangan', 574, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-16 16:43:31', '2026-03-16 16:43:31'),
(305, 'App\\Models\\KunjunganKerja', 212, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-16 16:46:40', '2026-03-16 16:46:40'),
(306, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2404:c0:a302:62cf:79fe:5d36:81c6:1c56', 'login', 'User berhasil login', NULL, 'success', '2026-03-17 02:10:57', '2026-03-17 02:10:57'),
(307, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-17 02:13:08', '2026-03-17 02:13:08'),
(308, 'App\\Models\\KunjunganKerja', 213, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 02:24:36', '2026-03-17 02:24:36'),
(309, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-17 02:31:01', '2026-03-17 02:31:01'),
(310, 'App\\Models\\KunjunganKerja', 213, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": null}', 'success', '2026-03-17 02:31:56', '2026-03-17 02:31:56'),
(311, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-17 02:38:13', '2026-03-17 02:38:13'),
(312, 'App\\Models\\PelayananKeprotokolan', 3408, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 02:49:07', '2026-03-17 02:49:07'),
(313, 'App\\Models\\KunjunganKerja', 211, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-03-17 02:53:26', '2026-03-17 02:53:26'),
(314, 'App\\Models\\KunjunganKerja', 214, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 02:56:23', '2026-03-17 02:56:23'),
(315, 'App\\Models\\KunjunganKerja', 215, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 02:57:50', '2026-03-17 02:57:50'),
(316, 'App\\Models\\PelayananKeprotokolan', 3409, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 02:59:04', '2026-03-17 02:59:04'),
(317, 'App\\Models\\PelayananKeprotokolan', 3410, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 03:00:12', '2026-03-17 03:00:12'),
(318, 'App\\Models\\KunjunganKerja', 214, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"rombongan\": \"[\\\"Indri Putrianti, S.I.Kom.\\\",\\\"Tri Murdani, S.H.\\\"]\", \"id_anggota\": \"[\\\"5\\\",\\\"7\\\"]\", \"tanggal_selesai\": \"2026-03-20 00:00:00\"}', 'success', '2026-03-17 03:03:12', '2026-03-17 03:03:12'),
(319, 'App\\Models\\KunjunganKerja', 214, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"tanggal_selesai\": \"2026-03-22 00:00:00\"}', 'success', '2026-03-17 03:05:00', '2026-03-17 03:05:00'),
(320, 'App\\Models\\PelayananKeprotokolan', 3411, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 03:15:01', '2026-03-17 03:15:01'),
(321, 'App\\Models\\PelayananKeprotokolan', 3412, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 03:16:47', '2026-03-17 03:16:47'),
(322, 'App\\Models\\PelayananKeprotokolan', 3413, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 03:18:06', '2026-03-17 03:18:06'),
(323, 'App\\Models\\PelayananKeprotokolan', 3414, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 03:20:26', '2026-03-17 03:20:26'),
(324, 'App\\Models\\Persidangan', 575, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 03:25:34', '2026-03-17 03:25:34'),
(325, 'App\\Models\\PelayananKeprotokolan', 3415, 1, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 03:25:35', '2026-03-17 03:25:35'),
(326, 'App\\Models\\Persidangan', 575, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:00\", \"updated_by\": 2}', 'success', '2026-03-17 03:26:21', '2026-03-17 03:26:21'),
(327, 'App\\Models\\Persidangan', 576, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-17 03:31:30', '2026-03-17 03:31:30'),
(328, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '125.164.94.111', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-17 03:35:54', '2026-03-17 03:35:54'),
(329, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '125.164.94.111', 'login', 'User berhasil login', NULL, 'success', '2026-03-17 03:36:27', '2026-03-17 03:36:27'),
(330, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '125.164.94.111', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-17 03:49:19', '2026-03-17 03:49:19'),
(331, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '125.164.94.111', 'login', 'User berhasil login', NULL, 'success', '2026-03-17 03:49:59', '2026-03-17 03:49:59'),
(332, 'App\\Models\\KunjunganKerja', 215, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:52\", \"tanggal_selesai\": \"2026-03-17 00:00:00\"}', 'success', '2026-03-17 03:50:48', '2026-03-17 03:50:48'),
(333, 'App\\Models\\Persidangan', 576, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:32\", \"id_petugas\": \"[\\\"18\\\",\\\"17\\\"]\", \"updated_by\": 1}', 'success', '2026-03-17 04:12:35', '2026-03-17 04:12:35'),
(334, 'App\\Models\\Persidangan', 575, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:00\", \"id_petugas\": \"[\\\"15\\\",\\\"16\\\"]\", \"updated_by\": 1}', 'success', '2026-03-17 04:13:50', '2026-03-17 04:13:50'),
(335, 'App\\Models\\Persidangan', 575, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:00\", \"updated_by\": 2, \"nama_persidangan\": \"Menerima audiensi Asosiasi Pedagang Jamu Seluruh Indonesia (APJASI) dan perkumpulan distributor jamu dan obat herbal khas Indonesia\"}', 'success', '2026-03-17 04:14:48', '2026-03-17 04:14:48'),
(336, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '125.164.94.111', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-17 04:24:26', '2026-03-17 04:24:26'),
(337, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '125.164.94.111', 'login', 'User berhasil login', NULL, 'success', '2026-03-17 04:24:44', '2026-03-17 04:24:44'),
(338, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-17 04:57:40', '2026-03-17 04:57:40'),
(339, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-17 04:58:45', '2026-03-17 04:58:45'),
(340, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '125.164.94.111', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-17 06:05:12', '2026-03-17 06:05:12'),
(341, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-17 06:05:44', '2026-03-17 06:05:44'),
(342, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 00:44:05', '2026-03-25 00:44:05'),
(343, 'App\\Models\\KunjunganKerja', 216, 4, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-25 01:03:11', '2026-03-25 01:03:11'),
(344, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 01:06:41', '2026-03-25 01:06:41'),
(345, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 01:06:56', '2026-03-25 01:06:56'),
(346, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 01:07:51', '2026-03-25 01:07:51'),
(347, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 01:08:06', '2026-03-25 01:08:06'),
(348, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 01:08:31', '2026-03-25 01:08:31'),
(349, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 01:08:46', '2026-03-25 01:08:46'),
(350, 'App\\Models\\PelayananKeprotokolan', 3407, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"id_anggota\": \"[\\\"4\\\",\\\"8\\\"]\", \"updated_by\": 2, \"nama_kegiatan\": \"mendampingi dan menjalankan tugas dari sekretariat negara RI 1\"}', 'success', '2026-03-25 01:09:54', '2026-03-25 01:09:54'),
(351, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 01:10:07', '2026-03-25 01:10:07'),
(352, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 01:10:28', '2026-03-25 01:10:28'),
(353, 'App\\Models\\KunjunganKerja', 216, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"updated_by\": 4, \"nama_kegiatan\": \"Melakukan audiensi kepada Presiden RI svcgsecajnckacjvwvcbcnc svcyuvcuqejbcb vcuyvcjecbc vwucvhcvac vucywuecjhcbhac\"}', 'success', '2026-03-25 01:20:19', '2026-03-25 01:20:19'),
(354, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 02:13:20', '2026-03-25 02:13:20'),
(355, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 02:17:18', '2026-03-25 02:17:18'),
(356, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 02:17:30', '2026-03-25 02:17:30'),
(357, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 02:29:35', '2026-03-25 02:29:35'),
(358, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 02:30:05', '2026-03-25 02:30:05'),
(359, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 03:19:07', '2026-03-25 03:19:07'),
(360, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 03:19:18', '2026-03-25 03:19:18'),
(361, 'App\\Models\\PelayananKeprotokolan', 3407, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"id_anggota\": \"[\\\"4\\\",\\\"8\\\",\\\"7\\\"]\", \"tanggal_kegiatan\": \"2026-03-25 00:00:00\"}', 'success', '2026-03-25 03:19:58', '2026-03-25 03:19:58'),
(362, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 03:21:04', '2026-03-25 03:21:04'),
(363, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 03:21:34', '2026-03-25 03:21:34'),
(364, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 03:22:41', '2026-03-25 03:22:41'),
(365, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 03:22:54', '2026-03-25 03:22:54'),
(366, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 03:44:01', '2026-03-25 03:44:01'),
(367, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 03:44:14', '2026-03-25 03:44:14'),
(368, 'App\\Models\\Persidangan', 574, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"id_anggota\": \"[\\\"1\\\",\\\"3\\\"]\", \"updated_by\": 2}', 'success', '2026-03-25 03:44:43', '2026-03-25 03:44:43'),
(369, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 03:44:50', '2026-03-25 03:44:50'),
(370, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 03:45:10', '2026-03-25 03:45:10'),
(371, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 04:00:05', '2026-03-25 04:00:05'),
(372, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 04:00:22', '2026-03-25 04:00:22'),
(373, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 04:06:59', '2026-03-25 04:06:59'),
(374, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 04:07:16', '2026-03-25 04:07:16'),
(375, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 04:07:41', '2026-03-25 04:07:41'),
(376, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 04:07:46', '2026-03-25 04:07:46'),
(377, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 04:08:01', '2026-03-25 04:08:01'),
(378, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 04:08:12', '2026-03-25 04:08:12'),
(379, 'App\\Models\\KunjunganKerja', 212, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": null, \"rombongan\": \"[\\\"Adi Perdana Putra, S.I.Kom.\\\",\\\"Adisti Nanda Sari, S.Tr. A.P.\\\",\\\"Agita Rindu Daddinda, S.E.\\\",\\\"Agus Widodo, S.IP., M.Si.\\\",\\\"Andhi Ilham Permana, S.H., M.H.\\\",\\\"Andhika Beriansyah, S.Kesos.\\\",\\\"Andry Prastyawan, S.E., M.M.\\\",\\\"Andytias Dwi Adywiratama, S.T., M.T.I.\\\",\\\"Apriliana, S.Pd., M.Si.\\\",\\\"Arief Karfianto, S.ST., M.M., MICTAdv.\\\",\\\"Bangkit Permana Putra, S.H.\\\",\\\"Bernard Bonnik Manoe, S.E., MBA.\\\",\\\"Billy Muhammad Kurnia, A.Md.\\\",\\\"Bintang Verawaty, S.E., Ak.\\\",\\\"Denny Ariffriana, S.Pd.\\\",\\\"Desi Puhati Purnomo Sari, S.E., M.Si.\\\",\\\"Devi Ana Dwi Utami, A.Md.\\\",\\\"Dheyas Tri Pertiwi, S.I.Kom.\\\",\\\"Dhika Aburizal Pratomo, S.I.A.\\\",\\\"Dian Kartika Putri, S.Kom., M.T.I.\\\",\\\"Dina Mabellya, S.I.Kom.\\\",\\\"Dorothea Krishardiyani\\\",\\\"Endah Wahyuni, S.T., MMSI.\\\",\\\"Ferindra Eko Prasetyo, A.Md.Kom.\\\",\\\"Fikroh Amali Fahmi Addiani, S.T., M.T.\\\",\\\"Fransiskus Xaverius Dimas Anggoro, A.Md.\\\",\\\"Gigih Tri Yuwono, S.I.Kom.\\\",\\\"Hairy Akbar Setiawan, S.Ikom.\\\",\\\"Hanani Ninditasari, S.Tr.A.K.P.\\\",\\\"Hangga Filardikh Bachtiar, S.E., M.E.\\\",\\\"Hendi, S.M.\\\",\\\"Hendra, S.Kom., M.H.\\\",\\\"Hezti Kurniati, S.E.\\\",\\\"Hilmy Yahya, S.Sos.\\\",\\\"Ilham Dermawan, S.IP.\\\",\\\"Inas Ulfa Hapsari, S.I.Kom.\\\",\\\"Indri Putrianti, S.I.Kom.\\\",\\\"Irfan Nawawi, S.AP.\\\",\\\"Karina Megasari, S.E.\\\",\\\"Ketrin Alwan, A.Md.\\\",\\\"Kiagus Muhammad Amir, S.IP., M.Tr.A.P.\\\",\\\"Kris Biantoro, S.AP.\\\",\\\"Lestina Susetyohati, S.E.\\\",\\\"Lisa Apriliantias, S.Sos.\\\",\\\"M. Arfan Sahib Sali Kando, S.E., M.F.M.\\\",\\\"Magna Arista Rosa Rini, S.E.\\\",\\\"Maulana Febriansyah\\\",\\\"Mirza Pratama, S.Kom.\\\",\\\"Mochamad Umar Wira Asmara, S.E.\\\",\\\"Muhammad Faried, S.IP., DEA.\\\",\\\"Muhammad Rizky Arrahman, S.Kom.\\\",\\\"Muhammad Ryan Arysta, S.KM.\\\",\\\"Nina Safitri, S.E.\\\",\\\"Novial Anggoro\\\",\\\"Nurafni A Moka, S.E., MPubAdmin(Pol).\\\",\\\"Nurul Cholifah, S.I.Kom.\\\",\\\"Oktaviyani Dwi Lestari, S.Ikom.\\\",\\\"Prima Laksmitasari, S.IP., M.Si.\\\",\\\"Pristalia, A.Md.\\\",\\\"Raden Hendrikus Bambang Budi Nugroho, S.T., M.P.M.\\\",\\\"Raden Zulkifli Ridwan, A.Md.\\\",\\\"Ria Andayani, S.H.\\\",\\\"Rico Bobman, S.E.\\\",\\\"Rio Jayusman, S.E., M.E.\\\",\\\"Risna Sartika, A.Md.Li.\\\",\\\"Rusli Sumantri, S.E.\\\",\\\"Saddra Fitrilia, S.E.\\\",\\\"Sandi Sudjatmiko, S.A.B.\\\",\\\"Shelby Liriara Meisyara, S.E., M.A.\\\",\\\"Silfia Putri Sari, A.Md.A.B.\\\",\\\"Siska Pratiwi, S.I.Kom.\\\",\\\"Siti Nur Azizah Harahap, S.I.Kom.\\\",\\\"Sugeng Widodo, S.E., M.M.\\\",\\\"Tiara Asri Satria, S.E., M.P.P.M.\\\",\\\"Tiara Dwi Rizki, A.Md.\\\",\\\"Tri Murdani, S.H.\\\",\\\"Waskito, S.Kom.\\\"]\", \"id_anggota\": \"[\\\"2\\\",\\\"3\\\",\\\"6\\\"]\", \"updated_by\": 2, \"tanggal_selesai\": \"2026-03-19 00:00:00\", \"is_seen_by_superadmin\": false}', 'success', '2026-03-25 04:08:56', '2026-03-25 04:08:56'),
(380, 'App\\Models\\KunjunganKerja', 216, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"id_anggota\": \"[\\\"8\\\",\\\"3\\\"]\", \"updated_by\": 2, \"is_seen_by_superadmin\": false}', 'success', '2026-03-25 04:10:16', '2026-03-25 04:10:16'),
(381, 'App\\Models\\PelayananKeprotokolan', 3407, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"id_anggota\": \"[\\\"4\\\"]\"}', 'success', '2026-03-25 04:19:11', '2026-03-25 04:19:11'),
(382, 'App\\Models\\PelayananKeprotokolan', 3410, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"16:45\", \"id_anggota\": \"[\\\"5\\\"]\", \"updated_by\": 2}', 'success', '2026-03-25 04:20:05', '2026-03-25 04:20:05'),
(383, 'App\\Models\\Persidangan', 574, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"id_anggota\": \"[\\\"3\\\"]\"}', 'success', '2026-03-25 04:21:28', '2026-03-25 04:21:28'),
(384, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 07:12:09', '2026-03-25 07:12:09'),
(385, 'App\\Models\\PelayananKeprotokolan', 3407, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"id_anggota\": \"[\\\"4\\\",\\\"8\\\"]\", \"nama_kegiatan\": \"penugasan mendampingi dan menjalankan tugas dari sekretariat negara RI 1\", \"is_seen_by_superadmin\": false}', 'success', '2026-03-25 07:15:40', '2026-03-25 07:15:40'),
(386, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 07:15:48', '2026-03-25 07:15:48'),
(387, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 07:16:05', '2026-03-25 07:16:05'),
(388, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 07:16:52', '2026-03-25 07:16:52'),
(389, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 07:17:05', '2026-03-25 07:17:05'),
(390, 'App\\Models\\Persidangan', 574, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"id_anggota\": \"[\\\"3\\\",\\\"7\\\"]\", \"nama_persidangan\": \"Pembahasan rapat penerbitan buku erlangga\", \"is_seen_by_superadmin\": false}', 'success', '2026-03-25 07:17:35', '2026-03-25 07:17:35'),
(391, 'App\\Models\\KunjunganKerja', 216, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"id_provinsi\": \"14\", \"is_seen_by_superadmin\": false}', 'success', '2026-03-25 07:18:12', '2026-03-25 07:18:12'),
(392, 'App\\Models\\AdministrasiPerjalananDinas', 21, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"updated_by\": 2, \"nama_kegiatan\": \"Perjalanan dinas ke Singapore\", \"is_seen_by_superadmin\": false}', 'success', '2026-03-25 07:18:55', '2026-03-25 07:18:55'),
(393, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 07:19:03', '2026-03-25 07:19:03'),
(394, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 07:19:19', '2026-03-25 07:19:19'),
(395, 'App\\Models\\Persidangan', 574, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-25 07:21:23', '2026-03-25 07:21:23'),
(396, 'App\\Models\\KunjunganKerja', 216, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-25 07:21:50', '2026-03-25 07:21:50'),
(397, 'App\\Models\\KunjunganKerja', 212, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-25 07:22:06', '2026-03-25 07:22:06'),
(398, 'App\\Models\\AdministrasiPerjalananDinas', 21, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-25 07:22:33', '2026-03-25 07:22:33'),
(399, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 07:24:23', '2026-03-25 07:24:23'),
(400, 'App\\Models\\Persidangan', 574, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"id_anggota\": \"[\\\"7\\\",\\\"3\\\"]\", \"id_petugas\": \"[\\\"18\\\",\\\"7\\\",\\\"13\\\"]\", \"updated_by\": 4, \"tanggal_persidangan\": \"2026-03-25 00:00:00\"}', 'success', '2026-03-25 08:02:05', '2026-03-25 08:02:05'),
(401, 'App\\Models\\Persidangan', 576, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:32\", \"updated_by\": 4, \"tanggal_persidangan\": \"2026-03-25 00:00:00\"}', 'success', '2026-03-25 08:02:22', '2026-03-25 08:02:22'),
(402, 'App\\Models\\KunjunganKerja', 214, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"updated_by\": 4, \"tanggal_selesai\": \"2026-03-25 00:00:00\"}', 'success', '2026-03-25 08:03:13', '2026-03-25 08:03:13'),
(403, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 08:35:53', '2026-03-25 08:35:53'),
(404, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 08:36:05', '2026-03-25 08:36:05'),
(405, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 08:36:20', '2026-03-25 08:36:20'),
(406, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 08:36:36', '2026-03-25 08:36:36'),
(407, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 08:37:53', '2026-03-25 08:37:53'),
(408, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 08:38:05', '2026-03-25 08:38:05'),
(409, 'App\\Models\\PelayananKeprotokolan', 3407, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"is_seen_by_superadmin\": false}', 'success', '2026-03-25 08:38:31', '2026-03-25 08:38:31'),
(410, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 08:38:42', '2026-03-25 08:38:42'),
(411, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 08:38:58', '2026-03-25 08:38:58'),
(412, 'App\\Models\\PelayananKeprotokolan', 3407, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-25 08:39:20', '2026-03-25 08:39:20'),
(413, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 08:39:49', '2026-03-25 08:39:49'),
(414, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 08:40:03', '2026-03-25 08:40:03'),
(415, 'App\\Models\\PelayananKeprotokolan', 3407, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:00\", \"is_seen_by_superadmin\": false}', 'success', '2026-03-25 08:40:25', '2026-03-25 08:40:25'),
(416, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-25 08:40:33', '2026-03-25 08:40:33'),
(417, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-25 08:40:46', '2026-03-25 08:40:46'),
(418, 'App\\Models\\PelayananKeprotokolan', 3407, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:00\", \"id_petugas\": \"[\\\"14\\\"]\", \"updated_by\": 4}', 'success', '2026-03-25 08:41:09', '2026-03-25 08:41:09'),
(419, 'App\\Models\\PelayananKeprotokolan', 3416, 4, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-25 08:46:06', '2026-03-25 08:46:06'),
(420, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 01:05:01', '2026-03-27 01:05:01'),
(421, 'App\\Models\\PelayananKeprotokolan', 3416, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:50\", \"id_anggota\": \"[\\\"9\\\",\\\"4\\\",\\\"1\\\"]\", \"tanggal_kegiatan\": \"2026-03-27 00:00:00\"}', 'success', '2026-03-27 01:07:44', '2026-03-27 01:07:44'),
(422, 'App\\Models\\Persidangan', 574, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"nama_persidangan\": \"Pembahasan rapat penerbitan buku erlangga avebbcmyugihdjabcn vuedbjab fuwgdjab\", \"tanggal_persidangan\": \"2026-03-28 00:00:00\"}', 'success', '2026-03-27 01:10:22', '2026-03-27 01:10:22'),
(423, 'App\\Models\\Persidangan', 575, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:00\", \"updated_by\": 4, \"tanggal_persidangan\": \"2026-03-27 00:00:00\"}', 'success', '2026-03-27 01:11:54', '2026-03-27 01:11:54'),
(424, 'App\\Models\\KunjunganKerja', 214, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"tanggal_selesai\": \"2026-03-27 00:00:00\", \"tanggal_kunjungan\": \"2026-03-27 00:00:00\"}', 'success', '2026-03-27 01:12:27', '2026-03-27 01:12:27'),
(425, 'App\\Models\\AdministrasiPerjalananDinas', 21, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"updated_by\": 4, \"tanggal_mulai\": \"2026-03-20 00:00:00\", \"tanggal_selesai\": \"2026-03-27 00:00:00\"}', 'success', '2026-03-27 01:12:59', '2026-03-27 01:12:59'),
(426, 'App\\Models\\PelayananKeprotokolan', 3407, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:00\", \"tanggal_kegiatan\": \"2026-03-27 00:00:00\"}', 'success', '2026-03-27 01:13:35', '2026-03-27 01:13:35'),
(427, NULL, NULL, 4, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 01:56:14', '2026-03-27 01:56:14'),
(428, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 02:21:29', '2026-03-27 02:21:29'),
(429, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 02:41:48', '2026-03-27 02:41:48'),
(430, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 02:43:16', '2026-03-27 02:43:16'),
(431, 'App\\Models\\KunjunganKerja', 217, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-27 02:45:57', '2026-03-27 02:45:57'),
(432, 'App\\Models\\KunjunganKerja', 217, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"tanggal_selesai\": \"2026-03-30 00:00:00\", \"tanggal_kunjungan\": \"2026-03-30 00:00:00\", \"is_seen_by_superadmin\": false}', 'success', '2026-03-27 02:47:10', '2026-03-27 02:47:10'),
(433, 'App\\Models\\KunjunganKerja', 217, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"tanggal_selesai\": \"2026-03-29 00:00:00\", \"tanggal_kunjungan\": \"2026-03-27 00:00:00\", \"is_seen_by_superadmin\": false}', 'success', '2026-03-27 02:48:25', '2026-03-27 02:48:25'),
(434, 'App\\Models\\PelayananKeprotokolan', 3417, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-27 02:49:40', '2026-03-27 02:49:40'),
(435, 'App\\Models\\Persidangan', 577, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-27 02:50:51', '2026-03-27 02:50:51'),
(436, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-27 02:52:19', '2026-03-27 02:52:19'),
(437, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 02:52:48', '2026-03-27 02:52:48'),
(438, 'App\\Models\\KunjunganKerja', 218, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-27 02:53:12', '2026-03-27 02:53:12'),
(439, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-27 02:53:27', '2026-03-27 02:53:27'),
(440, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 02:53:44', '2026-03-27 02:53:44');
INSERT INTO `history_logs` (`id`, `model_type`, `model_id`, `user_id`, `user_agent`, `ip_address`, `action`, `description`, `changes`, `status`, `created_at`, `updated_at`) VALUES
(441, 'App\\Models\\AdministrasiPerjalananDinas', 24, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-27 02:54:24', '2026-03-27 02:54:24'),
(442, 'App\\Models\\PelayananKeprotokolan', 3417, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-27 02:55:10', '2026-03-27 02:55:10'),
(443, 'App\\Models\\Persidangan', 577, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"id_anggota\": \"[\\\"9\\\",\\\"4\\\",\\\"7\\\",\\\"1\\\"]\", \"id_petugas\": \"[\\\"3\\\",\\\"6\\\"]\", \"updated_by\": 1}', 'success', '2026-03-27 02:56:38', '2026-03-27 02:56:38'),
(444, 'App\\Models\\KunjunganKerja', 217, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-27 03:00:08', '2026-03-27 03:00:08'),
(445, NULL, NULL, 1, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 03:02:32', '2026-03-27 03:02:32'),
(446, 'App\\Models\\AdministrasiPerjalananDinas', 24, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-27 03:03:20', '2026-03-27 03:03:20'),
(447, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-27 03:07:28', '2026-03-27 03:07:28'),
(448, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 03:08:15', '2026-03-27 03:08:15'),
(449, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 03:08:19', '2026-03-27 03:08:19'),
(450, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 03:08:55', '2026-03-27 03:08:55'),
(451, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 03:09:47', '2026-03-27 03:09:47'),
(452, 'App\\Models\\PelayananKeprotokolan', 3418, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-27 03:11:27', '2026-03-27 03:11:27'),
(453, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-27 03:14:30', '2026-03-27 03:14:30'),
(454, 'App\\Models\\Persidangan', 578, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-27 03:16:23', '2026-03-27 03:16:23'),
(455, 'App\\Models\\Persidangan', 579, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-27 03:31:42', '2026-03-27 03:31:42'),
(456, 'App\\Models\\KunjunganKerja', 219, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-03-27 03:36:11', '2026-03-27 03:36:11'),
(457, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 03:51:54', '2026-03-27 03:51:54'),
(458, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-27 04:01:25', '2026-03-27 04:01:25'),
(459, 'App\\Models\\KunjunganKerja', 219, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-27 04:13:44', '2026-03-27 04:13:44'),
(460, 'App\\Models\\PelayananKeprotokolan', 3416, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-27 04:15:37', '2026-03-27 04:15:37'),
(461, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 08:50:13', '2026-03-27 08:50:13'),
(462, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-27 09:06:14', '2026-03-27 09:06:14'),
(463, 'App\\Models\\PelayananKeprotokolan', 3407, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-27 09:13:14', '2026-03-27 09:13:14'),
(464, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-03-27 09:19:29', '2026-03-27 09:19:29'),
(465, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-30 07:45:30', '2026-03-30 07:45:30'),
(466, 'App\\Models\\Persidangan', 579, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-03-30 07:46:56', '2026-03-30 07:46:56'),
(467, 'App\\Models\\Persidangan', 579, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"id_petugas\": \"[\\\"5\\\",\\\"10\\\"]\", \"updated_by\": 1}', 'success', '2026-03-30 07:47:42', '2026-03-30 07:47:42'),
(468, 'App\\Models\\PelayananKeprotokolan', 3417, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"12:30\", \"updated_by\": 1, \"tanggal_kegiatan\": \"2026-03-30 00:00:00\"}', 'success', '2026-03-30 07:52:38', '2026-03-30 07:52:38'),
(469, 'App\\Models\\PelayananKeprotokolan', 3416, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"14:50\", \"updated_by\": 1, \"tanggal_kegiatan\": \"2026-03-30 00:00:00\"}', 'success', '2026-03-30 07:54:33', '2026-03-30 07:54:33'),
(470, 'App\\Models\\PelayananKeprotokolan', 3416, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"15:00\"}', 'success', '2026-03-30 07:55:00', '2026-03-30 07:55:00'),
(471, NULL, NULL, 4, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-03-30 08:03:34', '2026-03-30 08:03:34'),
(472, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-01 02:32:22', '2026-04-01 02:32:22'),
(473, 'App\\Models\\Persidangan', 577, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-04-01 02:32:42', '2026-04-01 02:32:42'),
(474, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-01 04:34:32', '2026-04-01 04:34:32'),
(475, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-01 04:48:45', '2026-04-01 04:48:45'),
(476, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-01 04:52:14', '2026-04-01 04:52:14'),
(477, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-01 04:52:52', '2026-04-01 04:52:52'),
(478, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-01 07:02:22', '2026-04-01 07:02:22'),
(479, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-01 07:02:28', '2026-04-01 07:02:28'),
(480, 'App\\Models\\KunjunganKerja', 220, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:09:15', '2026-04-01 07:09:15'),
(481, 'App\\Models\\KunjunganKerja', 221, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:10:21', '2026-04-01 07:10:21'),
(482, 'App\\Models\\KunjunganKerja', 222, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:11:43', '2026-04-01 07:11:43'),
(483, 'App\\Models\\KunjunganKerja', 220, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"rombongan\": \"[\\\"Saddra Fitrilia, S.E.\\\"]\", \"nama_kegiatan\": \"Keberangkatan ke Cirebon, Provinsi Jawa Barat dalam rangka kunjungan kerja\", \"is_seen_by_superadmin\": false}', 'success', '2026-04-01 07:13:24', '2026-04-01 07:13:24'),
(484, 'App\\Models\\KunjunganKerja', 223, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:15:13', '2026-04-01 07:15:13'),
(485, 'App\\Models\\PelayananKeprotokolan', 3419, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:16:58', '2026-04-01 07:16:58'),
(486, 'App\\Models\\PelayananKeprotokolan', 3420, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:17:51', '2026-04-01 07:17:51'),
(487, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-01 07:27:13', '2026-04-01 07:27:13'),
(488, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-01 07:27:30', '2026-04-01 07:27:30'),
(489, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.110', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-01 07:35:56', '2026-04-01 07:35:56'),
(490, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.110', 'login', 'User berhasil login', NULL, 'success', '2026-04-01 07:36:25', '2026-04-01 07:36:25'),
(491, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.110', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-01 07:39:56', '2026-04-01 07:39:56'),
(492, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.110', 'login', 'User berhasil login', NULL, 'success', '2026-04-01 07:40:18', '2026-04-01 07:40:18'),
(493, 'App\\Models\\KunjunganKerja', 224, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:42:30', '2026-04-01 07:42:30'),
(494, 'App\\Models\\KunjunganKerja', 225, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:45:14', '2026-04-01 07:45:14'),
(495, 'App\\Models\\KunjunganKerja', 226, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:46:13', '2026-04-01 07:46:13'),
(496, 'App\\Models\\KunjunganKerja', 227, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 07:46:50', '2026-04-01 07:46:50'),
(497, 'App\\Models\\KunjunganKerja', 219, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:00:16', '2026-04-01 08:00:16'),
(498, 'App\\Models\\KunjunganKerja', 222, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:07:00', '2026-04-01 08:07:00'),
(499, 'App\\Models\\KunjunganKerja', 227, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:07:09', '2026-04-01 08:07:09'),
(500, 'App\\Models\\KunjunganKerja', 218, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:07:19', '2026-04-01 08:07:19'),
(501, 'App\\Models\\KunjunganKerja', 221, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:07:57', '2026-04-01 08:07:57'),
(502, 'App\\Models\\KunjunganKerja', 225, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:08:10', '2026-04-01 08:08:10'),
(503, 'App\\Models\\KunjunganKerja', 224, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:08:21', '2026-04-01 08:08:21'),
(504, 'App\\Models\\KunjunganKerja', 220, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:09:40', '2026-04-01 08:09:40'),
(505, 'App\\Models\\KunjunganKerja', 223, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:09:49', '2026-04-01 08:09:49'),
(506, 'App\\Models\\KunjunganKerja', 226, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:09:58', '2026-04-01 08:09:58'),
(507, 'App\\Models\\KunjunganKerja', 228, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 08:10:47', '2026-04-01 08:10:47'),
(508, 'App\\Models\\PelayananKeprotokolan', 3420, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:11:06', '2026-04-01 08:11:06'),
(509, 'App\\Models\\PelayananKeprotokolan', 3419, 2, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-01 08:11:15', '2026-04-01 08:11:15'),
(510, 'App\\Models\\PelayananKeprotokolan', 3421, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 08:12:07', '2026-04-01 08:12:07'),
(511, 'App\\Models\\KunjunganKerja', 228, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"tanggal_selesai\": \"2026-04-01 00:00:00\", \"is_seen_by_superadmin\": false}', 'success', '2026-04-01 08:12:29', '2026-04-01 08:12:29'),
(512, 'App\\Models\\PelayananKeprotokolan', 3422, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 08:13:08', '2026-04-01 08:13:08'),
(513, 'App\\Models\\KunjunganKerja', 228, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"id_jenis_kunjungan\": \"1\", \"is_seen_by_superadmin\": false}', 'success', '2026-04-01 08:14:21', '2026-04-01 08:14:21'),
(514, 'App\\Models\\KunjunganKerja', 229, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 08:15:34', '2026-04-01 08:15:34'),
(515, 'App\\Models\\PelayananKeprotokolan', 3423, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 08:18:12', '2026-04-01 08:18:12'),
(516, 'App\\Models\\PelayananKeprotokolan', 3424, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-01 08:19:07', '2026-04-01 08:19:07'),
(517, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-01 08:20:25', '2026-04-01 08:20:25'),
(518, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-01 08:20:54', '2026-04-01 08:20:54'),
(519, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 01:14:31', '2026-04-02 01:14:31'),
(520, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-02 02:10:18', '2026-04-02 02:10:18'),
(521, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 02:10:44', '2026-04-02 02:10:44'),
(522, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-02 02:11:43', '2026-04-02 02:11:43'),
(523, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 02:11:59', '2026-04-02 02:11:59'),
(524, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-02 02:20:44', '2026-04-02 02:20:44'),
(525, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 02:20:58', '2026-04-02 02:20:58'),
(526, 'App\\Models\\User', 7, 1, NULL, NULL, 'update', 'Data user diperbarui: PrimaLaksmitasari', NULL, 'success', '2026-04-02 02:23:55', '2026-04-02 02:23:55'),
(527, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-02 02:29:57', '2026-04-02 02:29:57'),
(528, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 02:47:16', '2026-04-02 02:47:16'),
(529, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-02 02:48:07', '2026-04-02 02:48:07'),
(530, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 02:52:24', '2026-04-02 02:52:24'),
(531, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-02 02:53:43', '2026-04-02 02:53:43'),
(532, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 02:54:11', '2026-04-02 02:54:11'),
(533, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 03:00:00', '2026-04-02 03:00:00'),
(534, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-02 03:11:27', '2026-04-02 03:11:27'),
(535, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 03:12:57', '2026-04-02 03:12:57'),
(536, 'App\\Models\\PelayananKeprotokolan', 3425, 7, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-04-02 03:51:02', '2026-04-02 03:51:02'),
(537, 'App\\Models\\PelayananKeprotokolan', 3424, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"14:00\", \"id_anggota\": \"[\\\"1\\\",\\\"3\\\"]\", \"id_petugas\": \"[\\\"5\\\"]\", \"updated_by\": 7}', 'success', '2026-04-02 03:53:52', '2026-04-02 03:53:52'),
(538, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.200', 'login', 'User berhasil login', NULL, 'success', '2026-04-02 07:45:09', '2026-04-02 07:45:09'),
(539, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.89', 'login', 'User berhasil login', NULL, 'success', '2026-04-07 01:35:55', '2026-04-07 01:35:55'),
(540, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.89', 'login', 'User berhasil login', NULL, 'success', '2026-04-07 01:40:58', '2026-04-07 01:40:58'),
(541, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.89', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-07 01:41:46', '2026-04-07 01:41:46'),
(542, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.89', 'login', 'User berhasil login', NULL, 'success', '2026-04-07 01:42:45', '2026-04-07 01:42:45'),
(543, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.89', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-07 01:43:10', '2026-04-07 01:43:10'),
(544, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.89', 'login', 'User berhasil login', NULL, 'success', '2026-04-07 01:43:24', '2026-04-07 01:43:24'),
(545, 'App\\Models\\PelayananKeprotokolan', 3424, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"14:00\", \"id_anggota\": \"[\\\"3\\\",\\\"1\\\"]\", \"tanggal_kegiatan\": \"2026-04-07 00:00:00\"}', 'success', '2026-04-07 01:44:38', '2026-04-07 01:44:38'),
(546, 'App\\Models\\PelayananKeprotokolan', 3422, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"19:00\", \"updated_by\": 7, \"tanggal_kegiatan\": \"2026-04-07 00:00:00\"}', 'success', '2026-04-07 01:45:06', '2026-04-07 01:45:06'),
(547, 'App\\Models\\PelayananKeprotokolan', 3418, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"10:00\", \"updated_by\": 7, \"tanggal_kegiatan\": \"2026-04-07 00:00:00\"}', 'success', '2026-04-07 01:45:29', '2026-04-07 01:45:29'),
(548, 'App\\Models\\Persidangan', 579, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"updated_by\": 7, \"tanggal_persidangan\": \"2026-04-08 00:00:00\"}', 'success', '2026-04-07 01:46:05', '2026-04-07 01:46:05'),
(549, 'App\\Models\\KunjunganKerja', 228, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"updated_by\": 7, \"tanggal_selesai\": \"2026-04-08 00:00:00\", \"tanggal_kunjungan\": \"2026-04-07 00:00:00\"}', 'success', '2026-04-07 01:46:40', '2026-04-07 01:46:40'),
(550, 'App\\Models\\PelayananKeprotokolan', 3424, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-04-07 02:48:59', '2026-04-07 02:48:59'),
(551, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '125.164.94.89', 'login', 'User berhasil login', NULL, 'success', '2026-04-07 05:50:06', '2026-04-07 05:50:06'),
(552, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '114.8.207.75', 'login', 'User berhasil login', NULL, 'success', '2026-04-07 12:11:56', '2026-04-07 12:11:56'),
(553, 'App\\Models\\KunjunganKerja', 228, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-04-07 12:12:31', '2026-04-07 12:12:31'),
(554, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-08 01:56:55', '2026-04-08 01:56:55'),
(555, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '125.164.94.109', 'login', 'User berhasil login', NULL, 'success', '2026-04-15 01:11:39', '2026-04-15 01:11:39'),
(556, 'App\\Models\\User', 5, 4, NULL, NULL, 'update', 'Data user diperbarui: Sandimas', NULL, 'success', '2026-04-15 03:38:50', '2026-04-15 03:38:50'),
(557, 'App\\Models\\PelayananKeprotokolan', 3422, 4, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-04-15 04:01:26', '2026-04-15 04:01:26'),
(558, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '125.164.94.109', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-15 04:10:30', '2026-04-15 04:10:30'),
(559, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '114.10.42.167', 'login', 'User berhasil login', NULL, 'success', '2026-04-20 13:16:15', '2026-04-20 13:16:15'),
(560, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '114.10.42.167', 'login', 'User berhasil login', NULL, 'success', '2026-04-22 14:24:34', '2026-04-22 14:24:34'),
(561, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-23 03:11:48', '2026-04-23 03:11:48'),
(562, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '203.130.231.26', 'login', 'User berhasil login', NULL, 'success', '2026-04-23 06:44:35', '2026-04-23 06:44:35'),
(563, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '114.10.42.167', 'login', 'User berhasil login', NULL, 'success', '2026-04-23 16:24:57', '2026-04-23 16:24:57'),
(564, 'App\\Models\\User', 6, 7, NULL, NULL, 'update', 'Data user diperbarui: Femas123', NULL, 'success', '2026-04-23 16:41:08', '2026-04-23 16:41:08'),
(565, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2404:c0:a302:f705:898:cf40:6a5f:f72d', 'login', 'User berhasil login', NULL, 'success', '2026-04-24 10:30:04', '2026-04-24 10:30:04'),
(566, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2404:c0:a302:f705:ece4:e9eb:2250:6cfa', 'login', 'User berhasil login', NULL, 'success', '2026-04-26 04:54:21', '2026-04-26 04:54:21'),
(567, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '125.164.94.163', 'login', 'User berhasil login', NULL, 'success', '2026-04-27 03:50:16', '2026-04-27 03:50:16'),
(568, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '125.164.94.163', 'logout', 'User berhasil logout', NULL, 'success', '2026-04-27 03:51:22', '2026-04-27 03:51:22'),
(569, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '125.164.94.163', 'login', 'User berhasil login', NULL, 'success', '2026-04-27 03:51:40', '2026-04-27 03:51:40'),
(570, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-04-29 01:43:33', '2026-04-29 01:43:33'),
(571, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '125.164.94.36', 'login', 'User berhasil login', NULL, 'success', '2026-04-29 02:21:45', '2026-04-29 02:21:45'),
(572, 'App\\Models\\Persidangan', 579, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"13:00\", \"tanggal_persidangan\": \"2026-04-29 00:00:00\"}', 'success', '2026-04-29 02:23:17', '2026-04-29 02:23:17'),
(573, 'App\\Models\\Persidangan', 577, 7, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"09:00\", \"updated_by\": 7, \"tanggal_persidangan\": \"2026-04-30 00:00:00\"}', 'success', '2026-04-29 02:23:42', '2026-04-29 02:23:42'),
(574, 'App\\Models\\Persidangan', 573, 7, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-29 02:23:59', '2026-04-29 02:23:59'),
(575, 'App\\Models\\Persidangan', 576, 7, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-04-29 02:24:42', '2026-04-29 02:24:42'),
(576, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2404:c0:a701:b30:d480:c06:1043:88ce', 'login', 'User berhasil login', NULL, 'success', '2026-06-11 04:22:52', '2026-06-11 04:22:52'),
(577, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2404:c0:a702:54a3:ec62:41d8:6a4d:de82', 'login', 'User berhasil login', NULL, 'success', '2026-07-01 04:57:12', '2026-07-01 04:57:12'),
(578, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '127.0.0.1', 'login', 'User berhasil login', NULL, 'success', '2026-09-21 12:40:29', '2026-09-21 12:40:29'),
(579, NULL, NULL, 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.7.7 Mobile/15E148 Safari/604.1', '2404:c0:a303:8734:6499:b0be:81e6:766', 'login', 'User berhasil login', NULL, 'success', '2026-09-21 12:48:09', '2026-09-21 12:48:09'),
(580, NULL, NULL, 1, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.7.7 Mobile/15E148 Safari/604.1', '2404:c0:a303:8734:6499:b0be:81e6:766', 'logout', 'User berhasil logout', NULL, 'success', '2026-09-21 12:50:04', '2026-09-21 12:50:04'),
(581, NULL, NULL, 2, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.7.7 Mobile/15E148 Safari/604.1', '2404:c0:a303:8734:6499:b0be:81e6:766', 'login', 'User berhasil login', NULL, 'success', '2026-09-21 12:50:41', '2026-09-21 12:50:41'),
(582, 'App\\Models\\PelayananKeprotokolan', 3426, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-09-21 12:52:18', '2026-09-21 12:52:18'),
(583, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '2404:c0:a303:8734:a4a2:2563:aa5b:d1c1', 'login', 'User berhasil login', NULL, 'success', '2026-09-21 12:53:37', '2026-09-21 12:53:37'),
(584, 'App\\Models\\PelayananKeprotokolan', 3426, 2, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"19:51\", \"tanggal_kegiatan\": \"2026-09-22 00:00:00\", \"is_seen_by_superadmin\": false}', 'success', '2026-09-21 12:53:44', '2026-09-21 12:53:44'),
(585, 'App\\Models\\PelayananKeprotokolan', 3426, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"is_seen_by_superadmin\": true}', 'success', '2026-09-21 12:54:34', '2026-09-21 12:54:34'),
(586, 'App\\Models\\PelayananKeprotokolan', 3426, 1, NULL, NULL, 'update', 'Detail kegiatan diperbarui', '{\"waktu\": \"19:51\", \"id_petugas\": \"[\\\"10\\\",\\\"6\\\"]\", \"updated_by\": 1}', 'success', '2026-09-21 12:55:09', '2026-09-21 12:55:09'),
(587, 'App\\Models\\PelayananKeprotokolan', 3427, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-09-21 14:46:59', '2026-09-21 14:46:59'),
(588, 'App\\Models\\Persidangan', 580, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-09-21 14:48:43', '2026-09-21 14:48:43'),
(589, 'App\\Models\\Persidangan', 580, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-09-21 15:00:47', '2026-09-21 15:00:47'),
(590, 'App\\Models\\PelayananKeprotokolan', 3427, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-09-21 15:01:20', '2026-09-21 15:01:20'),
(591, 'App\\Models\\KunjunganKerja', 230, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-09-21 15:02:43', '2026-09-21 15:02:43'),
(592, 'App\\Models\\KunjunganKerja', 230, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-09-21 15:03:29', '2026-09-21 15:03:29'),
(593, 'App\\Models\\AdministrasiPerjalananDinas', 25, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-09-21 15:05:21', '2026-09-21 15:05:21'),
(594, 'App\\Models\\AdministrasiPerjalananDinas', 25, 1, NULL, NULL, 'delete', 'Kegiatan dihapus', NULL, 'success', '2026-09-21 15:05:51', '2026-09-21 15:05:51'),
(595, NULL, NULL, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '2404:c0:a303:8734:156a:23d2:1030:91db', 'login', 'User berhasil login', NULL, 'success', '2026-09-22 09:38:10', '2026-09-22 09:38:10'),
(596, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', '2404:c0:a303:8734:156a:23d2:1030:91db', 'login', 'User berhasil login', NULL, 'success', '2026-09-22 09:42:14', '2026-09-22 09:42:14'),
(597, 'App\\Models\\PelayananKeprotokolan', 3428, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-09-22 09:44:18', '2026-09-22 09:44:18'),
(598, 'App\\Models\\Persidangan', 581, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-09-22 09:46:27', '2026-09-22 09:46:27'),
(599, 'App\\Models\\AdministrasiPerjalananDinas', 26, 2, NULL, NULL, 'create', 'Kegiatan baru ditambahkan', NULL, 'success', '2026-09-22 09:47:30', '2026-09-22 09:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan_kerja`
--

CREATE TABLE `kunjungan_kerja` (
  `id_kunjungan` bigint NOT NULL,
  `id_jenis_kunjungan` int NOT NULL,
  `id_petugas` json DEFAULT NULL,
  `id_anggota` json DEFAULT NULL,
  `nama_kegiatan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_kunjungan` date NOT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `tipe_tujuan` enum('dalam_negeri','luar_negeri') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rombongan` text COLLATE utf8mb4_unicode_ci,
  `file_path` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_provinsi` int DEFAULT NULL,
  `tujuan_luar_negeri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `is_seen_by_superadmin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kunjungan_kerja`
--

INSERT INTO `kunjungan_kerja` (`id_kunjungan`, `id_jenis_kunjungan`, `id_petugas`, `id_anggota`, `nama_kegiatan`, `tanggal_kunjungan`, `tanggal_selesai`, `waktu`, `tipe_tujuan`, `rombongan`, `file_path`, `id_provinsi`, `tujuan_luar_negeri`, `created_by`, `updated_by`, `is_seen_by_superadmin`, `created_at`, `updated_at`) VALUES
(10, 3, '[3, 16, 18, 15]', '[8]', 'Kunjungan Kerja ke Surabaya, Provinsi Jawa Timur', '2026-03-06', '2026-03-06', '12:00:00', 'dalam_negeri', '[\"Adi Perdana Putra, S.I.Kom.\",\"Hendi, S.M.\",\"Fransiskus Xaverius Dimas Anggoro, A.Md.\",\"Bramanda Wiratama\"]', 'kunjungan-kerja/TNVCPG8LdaHPkbNsTqxoTnm1z4uomOazKiifrJ7H.pdf', 15, NULL, 2, NULL, 1, '2026-03-04 03:04:55', '2026-03-25 03:17:45'),
(11, 3, '[2, 17]', '[9, 2, 6]', 'Kunjungan Kerja ke Banten', '2026-03-03', '2026-03-03', '09:00:00', 'dalam_negeri', '[\"Gigih Tri Yuwono, S.I.Kom.\",\"Dwi Kusumo Hanindito\"]', NULL, 16, NULL, 2, NULL, 1, '2026-03-04 03:13:16', '2026-03-25 03:17:45'),
(12, 3, '[3]', '[2]', 'Keberangkatan dalam rangka kunjungan kerja ke Malang, Jawa Timur', '2026-03-04', '2026-03-04', '12:00:00', 'dalam_negeri', '[\"Adisti Nanda Sari, S.Tr. A.P.\",\"Adi Perdana Putra, S.I.Kom.\"]', NULL, 15, NULL, 2, NULL, 1, '2026-03-04 03:32:27', '2026-03-25 03:17:45'),
(13, 3, '[3]', '[2]', 'Kepulangan dalam rangka kunjungan kerja di Malang, Jawa Timur', '2026-03-07', '2026-03-07', '13:00:00', 'dalam_negeri', '[\"Adi Perdana Putra, S.I.Kom.\",\"Adisti Nanda Sari, S.Tr. A.P.\"]', NULL, 15, NULL, 2, NULL, 1, '2026-03-04 03:33:43', '2026-03-25 03:17:45'),
(15, 2, '[5]', '[6]', 'Kunjungan kerja untuk ASEAN summit', '2026-03-05', '2026-03-05', '15:00:00', 'luar_negeri', '[\"Agita Rindu Daddinda, S.E.\"]', NULL, NULL, 'Laos', 1, NULL, 1, '2026-03-05 03:56:33', '2026-03-25 03:17:45'),
(109, 3, '[4]', '[6]', 'Kunjungan Kerja ke Cirebon, Provinsi Jawa Barat', '2023-01-06', '2023-01-06', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(110, 1, '[9]', '[6]', 'Kunjungan Kerja ke Provinsi Sumatera Utarat', '2023-01-13', '2023-01-13', NULL, 'dalam_negeri', '[]', NULL, 2, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(111, 3, '[13]', '[7]', 'Kunjungan Kerja ke Provinsi Bali', '2023-01-14', '2023-01-14', NULL, 'dalam_negeri', '[]', NULL, 17, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(112, 3, '[3, 8]', '[7]', 'Kunjungan Kerja ke Bogor, Jawa Barat', '2023-01-18', '2023-01-18', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(113, 3, '[18]', '[5]', 'Kunjungan Kerja ke Surakarta, Provinsi Jawa Tengah', '2023-01-20', '2023-01-20', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(114, 3, '[5]', '[7]', 'Kunjungan Kerja ke Provinsi Banten', '2023-01-21', '2023-01-21', NULL, 'dalam_negeri', '[]', NULL, 16, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(115, 1, '[3]', '[6]', 'Kunjungan Kerja ke Manado, Sulawesi Utara', '2023-01-27', '2023-01-27', NULL, 'dalam_negeri', '[]', NULL, 25, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(116, 1, '[4]', '[6]', 'Kunjungan Kerja ke Provinsi Bali', '2023-02-03', '2023-02-03', NULL, 'dalam_negeri', '[]', NULL, 17, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(117, 3, '[17]', '[7]', 'Kunjungan Kerja ke Surabaya, Provinsi Jawa Timur', '2023-02-06', '2023-02-06', NULL, 'dalam_negeri', '[]', NULL, 15, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(118, 3, '[3]', '[7]', 'Kunjungan Kerja ke Bekasi, Provinsi Jawa Barat', '2023-02-12', '2023-02-12', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(119, 1, '[18]', '[4]', 'Kunjungan Kerja ke Tasikmalaya, Provinsi Jawa Bara', '2023-02-13', '2023-02-13', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(120, 1, '[9]', '[6]', 'Kunjungan Kerja ke Provinsi Nusa Tenggara Barat dan Bali', '2023-02-17', '2023-02-17', NULL, 'dalam_negeri', '[]', NULL, 18, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(121, 1, '[4]', '[4]', 'Kunjungan Kerja ke Provinsi Jambi dan Provinsi Lampung', '2023-02-22', '2023-02-22', NULL, 'dalam_negeri', '[]', NULL, 5, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(122, 3, '[9]', '[7]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-03-07', '2023-03-07', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(123, 3, '[17]', '[7]', 'Kunjungan Kerja ke Banten', '2023-03-11', '2023-03-11', NULL, 'dalam_negeri', '[]', NULL, 16, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(124, 4, '[2]', '[6]', 'Kunjungan Kerja ke Kerajaan Kamboja', '2023-03-27', '2023-03-27', NULL, 'luar_negeri', '[]', NULL, NULL, 'Kamboja', 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(125, 3, '[18]', '[7]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-03-28', '2023-03-28', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(126, 3, '[13]', '[6]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-03-31', '2023-03-31', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(127, 2, '[7]', '[7]', 'Kunjungan Kerja ke Jepang dan Hong Kong', '2023-04-10', '2023-04-10', NULL, 'luar_negeri', '[]', NULL, NULL, 'Jepang', 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(128, 3, '[3]', '[7]', 'Kunjungan Kerja ke D.I. Yogyakarta', '2023-04-24', '2023-04-24', NULL, 'dalam_negeri', '[]', NULL, 14, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(129, 3, '[18]', '[7]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-04-23', '2023-04-23', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(130, 3, '[8, 7]', '[7]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-05-05', '2023-05-05', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(131, 1, '[18]', '[6]', 'Kunjungan Kerja ke Cirebon, Provinsi Jawa Barat', '2023-05-06', '2023-05-06', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(132, 3, '[6]', '[7]', 'Kunjungan Kerja ke Depok, Povinsi Jawa Barat', '2023-05-14', '2023-05-14', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(133, 2, '[2]', '[6]', 'Kunjungan Kerja ke Republik Rakyat Tiongkok', '2023-05-15', '2023-05-15', NULL, 'luar_negeri', '[]', NULL, NULL, 'Tiongkok', 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(134, 3, '[13]', '[7]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-05-17', '2023-05-17', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(135, 1, '[6]', '[4]', 'Kunjungan Kerja ke Kota Pekalongan dan Kota Semarang, Provinsi Jawa Tengah', '2023-05-18', '2023-05-18', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(136, 3, '[9]', '[1]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-05-19', '2023-05-19', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(137, 1, '[9]', '[1]', 'Kunjungan Kerja ke Tangerang, Provinsi Banten', '2023-05-24', '2023-05-24', NULL, 'dalam_negeri', '[]', NULL, 16, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(138, 3, '[4]', '[7]', 'Kunjungan Kerja ke Bogor, Jawa Barat', '2023-05-24', '2023-05-24', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(139, 3, '[3]', '[7]', 'Kunjungan Kerja ke Bogor, Provinsi Jawa Barat', '2023-05-30', '2023-05-30', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(140, 3, '[10, 17]', '[7]', 'Kunjungan Kerja ke Magelang, Provinsi Jawa Tengah', '2023-06-02', '2023-06-02', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(141, 3, '[17]', '[7]', 'Kunjungan Kerja ke Yogyakarta', '2023-06-18', '2023-06-18', NULL, 'dalam_negeri', '[]', NULL, 14, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(142, 3, '[18]', '[7]', 'Kunjungan Kerja ke Denpasar, Provinsi Bali', '2023-06-20', '2023-06-20', NULL, 'dalam_negeri', '[]', NULL, 17, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(143, 3, '[8]', '[7]', 'Kunjungan Kerja ke Depok, Jawa Barat', '2023-06-22', '2023-06-22', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(144, 2, '[7, 2]', '[7]', 'Kunjungan Kerja ke Spanyol, Italia dan Yunani', '2023-06-25', '2023-06-25', NULL, 'luar_negeri', '[]', NULL, NULL, 'Spanyol', 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(145, 3, '[4, 5, 6, 13, 7]', '[1, 5, 6, 8]', 'Kunjungan Kerja ke Malang, Provinsi Jawa Timur', '2023-06-26', '2023-06-26', NULL, 'dalam_negeri', '[]', NULL, 15, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(146, 1, '[9]', '[6]', 'Kunjungan Kerja ke Provinsi Bali', '2023-07-04', '2023-07-04', NULL, 'dalam_negeri', '[]', NULL, 17, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(147, 3, '[10, 9]', '[7]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-07-13', '2023-07-13', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(148, 1, '[6]', '[4]', 'Kunjungan Kerja ke Pekalongan, Provinsi Jawa Tengah', '2023-07-17', '2023-07-17', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(149, 3, '[18]', '[7]', 'Kunjungan Kerja ke Karawang, Provinsi Jawa Barat', '2023-07-20', '2023-07-20', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(150, 3, '[17]', '[7]', 'Kunjungan Kerja ke Bogor, Provinsi Jawa Barat', '2023-07-21', '2023-07-21', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(151, 3, '[4]', '[7]', 'Kunjungan Kerja ke Semarang, Provinsi Jawa Tengah', '2023-07-22', '2023-07-22', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(152, 1, '[10]', '[4]', 'Kunjungan Kerja ke Pekalongan, Provinsi Jawa Tengah', '2023-07-27', '2023-07-27', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(153, 3, '[4]', '[6]', 'Kunjungan Kerja ke Provinsi Sumatera Barat', '2023-08-01', '2023-08-01', NULL, 'dalam_negeri', '[]', NULL, 3, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(154, 3, '[2, 6, 3]', '[8]', 'Kunjungan Kerja ke Kab. Ngawi, Provinsi Jawa Timur', '2023-08-01', '2023-08-01', NULL, 'dalam_negeri', '[]', NULL, 15, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(155, 3, '[8, 10]', '[7]', 'Kunjungan Kerja ke Cisarua, Bogor, Provinsi Jawa Barat', '2023-08-04', '2023-08-04', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(156, 3, '[9, 7, 8, 3, 4]', '[1, 3, 4, 5, 6, 7, 8]', 'Kunjungan Kerja ke Bogor, Provinsi Jawa Barat', '2023-08-14', '2023-08-14', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(157, 3, '[18]', '[7]', 'Kunjungan Kerja ke Provinsi D.I.Yogyakarta', '2023-08-19', '2023-08-19', NULL, 'dalam_negeri', '[]', NULL, 14, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(158, 1, '[4]', '[6]', 'Kunjungan Kerja ke Provinsi Lampung', '2023-08-22', '2023-08-22', NULL, 'dalam_negeri', '[]', NULL, 8, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(159, 3, '[13]', '[7]', 'Kunjungan Kerja ke Kab. Sukabumi, Provinsi Jawa Barat', '2023-08-24', '2023-08-24', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(160, 1, '[10]', '[4]', 'Kunjungan Kerja ke Tasikmalaya, Provinsi Jawa Barat', '2023-08-24', '2023-08-24', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(161, 3, '[2, 4, 8]', '[1]', 'Kunjungan Kerja ke Provinsi Jawa Tengah', '2023-08-28', '2023-08-28', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(162, 1, '[10]', '[4]', 'Kunjungan Kerja ke Pekalongan, Provinsi Jawa Tengah', '2023-08-28', '2023-08-28', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(163, 3, '[10]', '[7]', 'Kunjungan Kerja ke Ciawi, Jawa Barat', '2023-08-29', '2023-08-29', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(164, 3, '[9, 13]', '[7]', 'Kunjungan Kerja ke Boyolali, Provinsi Jawa Tengah', '2023-08-31', '2023-08-31', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(165, 3, '[7, 17]', '[8]', 'Kunjungan Kerja ke Kab. Sidoarjo dan Kab. Tuban, Provinsi Jawa Timur', '2023-09-03', '2023-09-03', NULL, 'dalam_negeri', '[]', NULL, 15, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(166, 3, '[13, 18]', '[6]', 'Kunjungan Kerja ke Provinsi Jawa Barat', '2023-09-08', '2023-09-08', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(167, 1, '[9]', '[4]', 'Kunjungan Kerja ke Indramayu, Provinsi Jawa Barat', '2023-09-08', '2023-09-08', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(168, 3, '[17]', '[7]', 'Kunjungan Kerja ke Provinsi Lampung', '2023-09-15', '2023-09-15', NULL, 'dalam_negeri', '[]', NULL, 8, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(169, 3, '[18]', '[5]', 'Kunjungan Kerja ke Bogor, Provinsi Jawa Barat', '2023-09-16', '2023-09-16', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(170, 3, '[5, 6]', '[7]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-09-16', '2023-09-16', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(171, 3, '[13]', '[1]', 'Kunjungan Kerja ke Hambalang, Bogor, Provinsi Jawa Barat', '2023-09-17', '2023-09-17', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(172, 3, '[10, 9]', '[7]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-09-23', '2023-09-23', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(173, 3, '[17]', '[6]', 'Kunjungan Kerja ke Provinsi Kepulauan Riau', '2023-09-27', '2023-09-27', NULL, 'dalam_negeri', '[]', NULL, 10, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(174, 3, '[2, 6]', '[7]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-09-28', '2023-09-28', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(175, 1, '[8]', '[4]', 'Kunjungan Kerja ke Cirebon, Provinsi Jawa Barat', '2023-09-30', '2023-09-30', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(176, 3, '[2]', '[7]', 'Kunjungan Kerja ke Bogor, Provinsi Jawa Barat', '2023-10-02', '2023-10-02', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(177, 3, '[13]', '[1]', 'Kunjungan Kerja ke Sentul, Bogor, Jawa Barat', '2023-10-11', '2023-10-11', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(178, 3, '[6]', '[1]', 'Kunjungan Kerja ke Bekasi, Provinsi Jawa Barat', '2023-10-15', '2023-10-15', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(179, 3, '[4]', '[7]', 'Kunjungan Kerja ke Purwakarta, Provinsi Jawa Barat', '2023-10-15', '2023-10-15', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(180, 3, '[18]', '[6]', 'Kunjungan Kerja ke Bandung, Provinsi Jawa Barat', '2023-10-15', '2023-10-15', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(181, 3, '[18, 5]', '[5]', 'Kunjungan Kerja ke Tangerang, Banten', '2023-10-19', '2023-10-19', NULL, 'dalam_negeri', '[]', NULL, 16, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(182, 1, '[10]', '[4]', 'Kunjungan Kerja ke Pekalongan, Provinsi Jawa Tengah', '2023-10-19', '2023-10-19', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(183, 3, '[13, 17]', '[6]', 'Kunjungan Kerja ke Provinsi Jawa Tengah dan Provinsi Jawa Barat', '2023-10-21', '2023-10-21', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(184, 3, '[2, 4, 7, 3, 9, 8]', '[1, 5, 6, 7, 8]', 'Kunjungan Kerja ke Provinsi Kalimantan Timur', '2023-10-31', '2023-10-31', NULL, 'dalam_negeri', '[]', NULL, 23, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(185, 1, '[6]', '[1]', 'Kunjungan Kerja ke Manado, Provinsi Sulawesi Utara', '2023-11-04', '2023-11-04', NULL, 'dalam_negeri', '[]', NULL, 25, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(186, 1, '[10]', '[4]', 'Kunjungan Kerja ke Surakarta, Provinsi Jawa Tengah', '2023-11-04', '2023-11-04', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(187, 1, '[7]', '[4]', 'Kunjungan Kerja ke Pekalongan, Provinsi Jawa Tengah', '2023-11-09', '2023-11-09', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(188, 3, '[13]', '[7]', 'Kunjungan Kerja ke Depok, Provinsi Jawa Barat', '2023-11-16', '2023-11-16', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(189, 3, '[7]', '[5]', 'Kunjungan Kerja ke Bogor. Provinsi Jawa Barat', '2023-11-18', '2023-11-18', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(190, 3, '[10]', '[1]', 'Kunjungan Kerja ke Aula Sarbini, Jl Pusdika Raya No.6B, Harjamukti, Kec. Cimanggis, Kota Depok, Jawa Barat', '2023-11-19', '2023-11-19', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(191, 3, '[18]', '[7]', 'Kunjungan Kerja ke Balikpapan, Kalimantan Timur', '2023-11-21', '2023-11-21', NULL, 'dalam_negeri', '[]', NULL, 23, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(192, 1, '[7]', '[2]', 'Kunjungan Kerja ke Shanghai, Republik Rakyat Tiongkok', '2023-11-26', '2023-11-26', NULL, 'luar_negeri', '[]', NULL, NULL, 'Tiongkok', 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(193, 3, '[4]', '[7]', 'Kunjungan Kerja ke Depok, Provinsi Jawa Barat', '2023-12-02', '2023-12-02', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(194, 1, '[7]', '[6]', 'Kunjungan Kerja ke Medan, Provinsi Sumatera Utara', '2023-12-02', '2023-12-02', NULL, 'dalam_negeri', '[]', NULL, 2, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(195, 3, '[13]', '[7]', 'Kunjungan Kerja ke Bandung, Jawa Barat', '2023-12-06', '2023-12-06', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(196, 3, '[5, 17, 3]', '[8]', 'Kunjungan Kerja ke Kabupaten Lamongan, Provinsi Jawa Timur', '2023-12-10', '2023-12-10', NULL, 'dalam_negeri', '[]', NULL, 15, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(197, 1, '[6]', '[4]', 'Kunjungan Kerja ke Kota Pekalongan, Provinsi Jawa Tengah', '2023-12-12', '2023-12-12', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(198, 2, '[7]', '[2]', 'Kunjungan Kerja ke Republik Korea', '2023-12-12', '2023-12-12', NULL, 'luar_negeri', '[]', NULL, NULL, 'Korea Selatan', 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(199, 3, '[18]', '[7]', 'Kunjungan Kerja ke Bogor, Provinsi Jawa Barat', '2023-12-15', '2023-12-15', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(200, 2, '[7]', '[6]', 'Kunjungan Kerja ke Hong Kong', '2023-12-15', '2023-12-15', NULL, 'luar_negeri', '[]', NULL, NULL, 'Hong Kong', 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(201, 3, '[17]', '[5]', 'Kunjungan Kerja ke Tangerang, Banten', '2023-12-16', '2023-12-16', NULL, 'dalam_negeri', '[]', NULL, 16, NULL, 1, NULL, 1, '2026-03-10 07:58:41', '2026-03-25 03:17:45'),
(202, 3, '[\"10\"]', '[\"6\"]', 'masakkkk', '2026-03-11', '2026-03-11', '12:45:00', 'dalam_negeri', '[\"anesta\"]', NULL, 12, NULL, 1, NULL, 1, '2026-03-11 04:46:07', '2026-03-25 03:17:45'),
(203, 3, '[\"5\", \"17\", \"2\", \"16\"]', '[\"9\", \"2\"]', 'Melakukan audiensi kepada Presiden RI', '2026-03-06', '2026-03-06', '12:30:00', 'dalam_negeri', '[\"Apriliana, S.Pd., M.Si.\",\"Bintang Verawaty, S.E., Ak.\",\"Hanani Ninditasari, S.Tr.A.K.P.\"]', NULL, 17, NULL, 1, NULL, 1, '2026-03-13 04:25:58', '2026-03-25 03:17:45'),
(204, 2, '[\"18\", \"17\", \"15\", \"16\", \"12\"]', '[\"8\"]', 'Melakukan audiensi kepada Presiden RI', '2026-03-13', '2026-03-13', '12:50:00', 'luar_negeri', '[\"Agita Rindu Daddinda, S.E.\"]', NULL, NULL, 'Jepang', 1, NULL, 1, '2026-03-13 04:27:06', '2026-03-25 03:17:45'),
(205, 1, '[]', '[\"5\"]', 'Kunjungan kerja ke Bandung, Provinsi Jawa Barat', '2026-03-13', '2026-03-13', '12:00:00', 'dalam_negeri', '[\"Adi Perdana Putra, S.I.Kom.\",\"Andhi Ilham Permana, S.H., M.H.\",\"Andhika Beriansyah, S.Kesos.\",\"Ketrin Alwan, A.Md.\",\"Kris Biantoro, S.AP.\"]', NULL, 12, NULL, 2, NULL, 1, '2026-03-13 04:52:17', '2026-03-25 03:17:45'),
(206, 1, '[\"10\", \"9\"]', '[\"7\"]', 'Kunjungan Kerja ke DI Yogyakarta', '2026-03-13', '2026-03-13', '13:00:00', 'dalam_negeri', '[\"Agita Rindu Daddinda, S.E.\",\"Desi Puhati Purnomo Sari, S.E., M.Si.\",\"Fikroh Amali Fahmi Addiani, S.T., M.T.\"]', NULL, 14, NULL, 2, NULL, 1, '2026-03-13 05:12:23', '2026-03-25 03:17:45'),
(207, 2, '[\"9\"]', '[\"3\"]', 'Kunjungan Kerja ke Hong Kong', '2024-03-13', '2024-03-13', '12:00:00', 'luar_negeri', '[]', NULL, NULL, 'Hong Kong', 1, NULL, 1, '2026-03-13 05:31:20', '2026-03-25 03:17:45'),
(208, 3, '[\"8\"]', '[\"7\"]', 'Kunjungan Kerja ke DI Yogyakarta', '2024-03-13', '2024-03-13', '13:00:00', 'dalam_negeri', '[]', NULL, 14, NULL, 1, NULL, 1, '2026-03-13 05:35:53', '2026-03-25 03:17:45'),
(209, 2, '[]', '[\"2\"]', 'Masak masak', '2026-03-13', '2026-03-13', '12:50:00', 'luar_negeri', '[\"Adisti Nanda Sari, S.Tr. A.P.\"]', NULL, NULL, 'laos', 2, NULL, 1, '2026-03-13 07:47:47', '2026-03-25 03:17:45'),
(210, 2, '[\"18\", \"17\", \"15\"]', '[\"4\"]', 'Melakukan audiensi kepada Presiden RI', '2026-03-13', '2026-03-13', NULL, 'luar_negeri', '[\"Adi Perdana Putra, S.I.Kom.\",\"Adisti Nanda Sari, S.Tr. A.P.\",\"Agita Rindu Daddinda, S.E.\",\"Agus Widodo, S.IP., M.Si.\",\"Andhi Ilham Permana, S.H., M.H.\",\"Andhika Beriansyah, S.Kesos.\",\"Andry Prastyawan, S.E., M.M.\",\"Andytias Dwi Adywiratama, S.T., M.T.I.\",\"Apriliana, S.Pd., M.Si.\",\"Arief Karfianto, S.ST., M.M., MICTAdv.\",\"Bangkit Permana Putra, S.H.\",\"Bernard Bonnik Manoe, S.E., MBA.\",\"Billy Muhammad Kurnia, A.Md.\",\"Bintang Verawaty, S.E., Ak.\",\"Denny Ariffriana, S.Pd.\",\"Desi Puhati Purnomo Sari, S.E., M.Si.\",\"Devi Ana Dwi Utami, A.Md.\",\"Dheyas Tri Pertiwi, S.I.Kom.\",\"Dhika Aburizal Pratomo, S.I.A.\",\"Dian Kartika Putri, S.Kom., M.T.I.\",\"Dina Mabellya, S.I.Kom.\",\"Dorothea Krishardiyani\",\"Endah Wahyuni, S.T., MMSI.\",\"Ferindra Eko Prasetyo, A.Md.Kom.\",\"Fikroh Amali Fahmi Addiani, S.T., M.T.\",\"Fransiskus Xaverius Dimas Anggoro, A.Md.\",\"Gigih Tri Yuwono, S.I.Kom.\",\"Hairy Akbar Setiawan, S.Ikom.\",\"Hanani Ninditasari, S.Tr.A.K.P.\",\"Hangga Filardikh Bachtiar, S.E., M.E.\",\"Hendi, S.M.\",\"Hendra, S.Kom., M.H.\",\"Hezti Kurniati, S.E.\",\"Hilmy Yahya, S.Sos.\",\"Ilham Dermawan, S.IP.\",\"Inas Ulfa Hapsari, S.I.Kom.\",\"Indri Putrianti, S.I.Kom.\",\"Irfan Nawawi, S.AP.\",\"Karina Megasari, S.E.\",\"Ketrin Alwan, A.Md.\",\"Kiagus Muhammad Amir, S.IP., M.Tr.A.P.\",\"Kris Biantoro, S.AP.\",\"Lestina Susetyohati, S.E.\",\"Lisa Apriliantias, S.Sos.\",\"M. Arfan Sahib Sali Kando, S.E., M.F.M.\",\"Magna Arista Rosa Rini, S.E.\",\"Maulana Febriansyah\",\"Mirza Pratama, S.Kom.\",\"Mochamad Umar Wira Asmara, S.E.\",\"Muhammad Faried, S.IP., DEA.\",\"Muhammad Rizky Arrahman, S.Kom.\",\"Muhammad Ryan Arysta, S.KM.\",\"Nina Safitri, S.E.\",\"Novial Anggoro\",\"Nurafni A Moka, S.E., MPubAdmin(Pol).\",\"Nurul Cholifah, S.I.Kom.\",\"Oktaviyani Dwi Lestari, S.Ikom.\",\"Prima Laksmitasari, S.IP., M.Si.\",\"Pristalia, A.Md.\",\"Raden Hendrikus Bambang Budi Nugroho, S.T., M.P.M.\",\"Raden Zulkifli Ridwan, A.Md.\",\"Ria Andayani, S.H.\",\"Rico Bobman, S.E.\",\"Rio Jayusman, S.E., M.E.\",\"Risna Sartika, A.Md.Li.\",\"Rusli Sumantri, S.E.\",\"Saddra Fitrilia, S.E.\",\"Sandi Sudjatmiko, S.A.B.\",\"Shelby Liriara Meisyara, S.E., M.A.\",\"Silfia Putri Sari, A.Md.A.B.\",\"Siska Pratiwi, S.I.Kom.\",\"Siti Nur Azizah Harahap, S.I.Kom.\",\"Sugeng Widodo, S.E., M.M.\",\"Tiara Asri Satria, S.E., M.P.P.M.\",\"Tiara Dwi Rizki, A.Md.\",\"Tri Murdani, S.H.\",\"Waskito, S.Kom.\",\"anesta\"]', NULL, NULL, 'Vietnam', 4, NULL, 1, '2026-03-13 13:59:31', '2026-03-25 03:17:45'),
(212, 1, '[\"16\", \"14\", \"5\"]', '[\"2\", \"3\", \"6\"]', 'Pelatihan keanggotaan di gunung kidul', '2026-03-19', '2026-03-19', NULL, 'dalam_negeri', '[\"Adi Perdana Putra, S.I.Kom.\",\"Adisti Nanda Sari, S.Tr. A.P.\",\"Agita Rindu Daddinda, S.E.\",\"Agus Widodo, S.IP., M.Si.\",\"Andhi Ilham Permana, S.H., M.H.\",\"Andhika Beriansyah, S.Kesos.\",\"Andry Prastyawan, S.E., M.M.\",\"Andytias Dwi Adywiratama, S.T., M.T.I.\",\"Apriliana, S.Pd., M.Si.\",\"Arief Karfianto, S.ST., M.M., MICTAdv.\",\"Bangkit Permana Putra, S.H.\",\"Bernard Bonnik Manoe, S.E., MBA.\",\"Billy Muhammad Kurnia, A.Md.\",\"Bintang Verawaty, S.E., Ak.\",\"Denny Ariffriana, S.Pd.\",\"Desi Puhati Purnomo Sari, S.E., M.Si.\",\"Devi Ana Dwi Utami, A.Md.\",\"Dheyas Tri Pertiwi, S.I.Kom.\",\"Dhika Aburizal Pratomo, S.I.A.\",\"Dian Kartika Putri, S.Kom., M.T.I.\",\"Dina Mabellya, S.I.Kom.\",\"Dorothea Krishardiyani\",\"Endah Wahyuni, S.T., MMSI.\",\"Ferindra Eko Prasetyo, A.Md.Kom.\",\"Fikroh Amali Fahmi Addiani, S.T., M.T.\",\"Fransiskus Xaverius Dimas Anggoro, A.Md.\",\"Gigih Tri Yuwono, S.I.Kom.\",\"Hairy Akbar Setiawan, S.Ikom.\",\"Hanani Ninditasari, S.Tr.A.K.P.\",\"Hangga Filardikh Bachtiar, S.E., M.E.\",\"Hendi, S.M.\",\"Hendra, S.Kom., M.H.\",\"Hezti Kurniati, S.E.\",\"Hilmy Yahya, S.Sos.\",\"Ilham Dermawan, S.IP.\",\"Inas Ulfa Hapsari, S.I.Kom.\",\"Indri Putrianti, S.I.Kom.\",\"Irfan Nawawi, S.AP.\",\"Karina Megasari, S.E.\",\"Ketrin Alwan, A.Md.\",\"Kiagus Muhammad Amir, S.IP., M.Tr.A.P.\",\"Kris Biantoro, S.AP.\",\"Lestina Susetyohati, S.E.\",\"Lisa Apriliantias, S.Sos.\",\"M. Arfan Sahib Sali Kando, S.E., M.F.M.\",\"Magna Arista Rosa Rini, S.E.\",\"Maulana Febriansyah\",\"Mirza Pratama, S.Kom.\",\"Mochamad Umar Wira Asmara, S.E.\",\"Muhammad Faried, S.IP., DEA.\",\"Muhammad Rizky Arrahman, S.Kom.\",\"Muhammad Ryan Arysta, S.KM.\",\"Nina Safitri, S.E.\",\"Novial Anggoro\",\"Nurafni A Moka, S.E., MPubAdmin(Pol).\",\"Nurul Cholifah, S.I.Kom.\",\"Oktaviyani Dwi Lestari, S.Ikom.\",\"Prima Laksmitasari, S.IP., M.Si.\",\"Pristalia, A.Md.\",\"Raden Hendrikus Bambang Budi Nugroho, S.T., M.P.M.\",\"Raden Zulkifli Ridwan, A.Md.\",\"Ria Andayani, S.H.\",\"Rico Bobman, S.E.\",\"Rio Jayusman, S.E., M.E.\",\"Risna Sartika, A.Md.Li.\",\"Rusli Sumantri, S.E.\",\"Saddra Fitrilia, S.E.\",\"Sandi Sudjatmiko, S.A.B.\",\"Shelby Liriara Meisyara, S.E., M.A.\",\"Silfia Putri Sari, A.Md.A.B.\",\"Siska Pratiwi, S.I.Kom.\",\"Siti Nur Azizah Harahap, S.I.Kom.\",\"Sugeng Widodo, S.E., M.M.\",\"Tiara Asri Satria, S.E., M.P.P.M.\",\"Tiara Dwi Rizki, A.Md.\",\"Tri Murdani, S.H.\",\"Waskito, S.Kom.\"]', 'kunjungan-kerja/yQPXHIln2M8WNUvsItsIKc63ldXGfHidgOWlB93P.pdf', 14, NULL, 1, 2, 1, '2026-03-16 16:46:40', '2026-03-25 07:22:06'),
(213, 3, '[]', '[\"9\"]', 'Kunjungan Kerja ke DI, Yogyakarta', '2026-03-17', '2026-03-19', NULL, 'dalam_negeri', '[\"Andhika Beriansyah, S.Kesos.\",\"Gigih Tri Yuwono, S.I.Kom.\"]', NULL, 14, NULL, 2, NULL, 1, '2026-03-17 02:24:36', '2026-03-25 03:17:45'),
(214, 1, '[]', '[\"5\", \"7\"]', 'Menghadiri Undangan dari Keraton Surakarta', '2026-03-27', '2026-03-27', NULL, 'dalam_negeri', '[\"Indri Putrianti, S.I.Kom.\",\"Tri Murdani, S.H.\"]', NULL, 13, NULL, 1, 4, 1, '2026-03-17 02:56:23', '2026-03-27 01:12:27'),
(215, 1, '[]', '[\"7\"]', 'Kunjungan Kerja ke DI, Yogyakarta', '2026-03-17', '2026-03-17', '10:52:00', 'dalam_negeri', '[\"Tri Murdani, S.H.\"]', NULL, 14, NULL, 2, NULL, 1, '2026-03-17 02:57:50', '2026-03-25 03:17:45'),
(216, 3, '[\"3\"]', '[\"8\", \"3\"]', 'Melakukan audiensi kepada Presiden RI svcgsecajnckacjvwvcbcnc svcyuvcuqejbcb vcuyvcjecbc vwucvhcvac vucywuecjhcbhac', '2026-03-25', '2026-03-25', NULL, 'dalam_negeri', '[\"Adisti Nanda Sari, S.Tr. A.P.\"]', NULL, 14, NULL, 4, 2, 1, '2026-03-25 01:03:11', '2026-03-25 07:21:50'),
(217, 1, '[]', '[\"3\"]', 'Kunjungan Kerja ke Solo, Provinsi Jawa Tengah', '2026-03-27', '2026-03-29', NULL, 'dalam_negeri', '[]', NULL, 13, NULL, 2, 2, 1, '2026-03-27 02:45:57', '2026-03-27 03:00:08'),
(228, 1, '[]', '[\"7\"]', 'Kunjungan kerja ke Tangerang, Provinsi Banten', '2026-04-07', '2026-04-08', NULL, 'dalam_negeri', '[]', NULL, 16, NULL, 2, 7, 1, '2026-04-01 08:10:46', '2026-04-07 12:12:31'),
(229, 3, '[]', '[\"1\"]', 'Kunjungan kerja ke Bandung, Provinsi Jawa Barat', '2026-04-01', '2026-04-02', NULL, 'dalam_negeri', '[]', NULL, 12, NULL, 2, 2, 0, '2026-04-01 08:15:34', '2026-04-01 08:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `master_anggota_dewan`
--

CREATE TABLE `master_anggota_dewan` (
  `id_anggota` int NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'Link to tb_user if they have login',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_anggota_dewan`
--

INSERT INTO `master_anggota_dewan` (`id_anggota`, `nama`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Wiranto', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(2, 'Gandi Sulistiyanto', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(3, 'Tahir', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(4, 'M. Luthfi Ali Yahya', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(5, 'Putri Kus Wisnu Wardani', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(6, 'H.R. Agung Laksono', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(7, 'Sidarto Danusubroto', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(8, 'Soekarwo', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(9, 'Djan Faridz', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `master_jenis_kunjungan`
--

CREATE TABLE `master_jenis_kunjungan` (
  `id_jenis_kunjungan` int NOT NULL,
  `nama_jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('dalam_negeri','luar_negeri') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_jenis_kunjungan`
--

INSERT INTO `master_jenis_kunjungan` (`id_jenis_kunjungan`, `nama_jenis`, `tipe`, `deskripsi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Administrasi Kunjungan Kerja Dalam Negeri', 'dalam_negeri', 'Administrasi untuk kunjungan kerja domestik', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(2, 'Administrasi Kunjungan Kerja Luar Negeri', 'luar_negeri', 'Administrasi untuk kunjungan kerja internasional', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(3, 'Pendampingan Kunjungan Kerja Dalam Negeri', 'dalam_negeri', 'Pendampingan kunjungan kerja domestik', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(4, 'Pendampingan Kunjungan Kerja Luar Negeri', 'luar_negeri', 'Pendampingan kunjungan kerja internasional', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_jenis_pelayanan`
--

CREATE TABLE `master_jenis_pelayanan` (
  `id_jenis_pelayanan` int NOT NULL,
  `nama_jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_jenis_pelayanan`
--

INSERT INTO `master_jenis_pelayanan` (`id_jenis_pelayanan`, `nama_jenis`, `deskripsi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Pelayanan Keprotokolan Bandara', 'Layanan protokol di bandara untuk kedatangan/keberangkatan', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(2, 'Pelayanan Keprotokolan Acara Dalam Kota', 'Layanan protokol untuk acara-acara di dalam kota', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(3, 'Audiensi Kepada RI 1', 'Audiensi dengan Presiden RI', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(4, 'Audiensi Kepada RI 2', 'Audiensi dengan Wakil Presiden RI', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(5, 'Sidang Kabinet', 'Pelayanan protokol pada sidang kabinet', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_jenis_perjalanan_dinas`
--

CREATE TABLE `master_jenis_perjalanan_dinas` (
  `id_jenis_perjalanan` int NOT NULL,
  `nama_jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('dalam_negeri','luar_negeri') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_jenis_perjalanan_dinas`
--

INSERT INTO `master_jenis_perjalanan_dinas` (`id_jenis_perjalanan`, `nama_jenis`, `tipe`, `deskripsi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Administrasi Perjalanan Dinas Dalam Negeri', 'dalam_negeri', 'Administrasi perjalanan dinas domestik', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(2, 'Administrasi Perjalanan Dinas Luar Negeri', 'luar_negeri', 'Administrasi perjalanan dinas internasional', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_jenis_persidangan`
--

CREATE TABLE `master_jenis_persidangan` (
  `id_jenis_persidangan` int NOT NULL,
  `nama_jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_jenis_persidangan`
--

INSERT INTO `master_jenis_persidangan` (`id_jenis_persidangan`, `nama_jenis`, `deskripsi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Audiensi', 'Pertemuan dengan pihak tertentu', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(2, 'Diskusi Terbatas', 'Diskusi dengan peserta terbatas', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(3, 'Pertemuan Terbatas', 'Pertemuan dengan agenda khusus', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(4, 'Rapat Tim Kajian', 'Rapat tim kajian internal', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(5, 'Sidang Pleno', 'Sidang pleno dewan', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(6, 'Rapat Internal', 'Rapat internal divisi/unit', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_pegawai`
--

CREATE TABLE `master_pegawai` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_kerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_pegawai`
--

INSERT INTO `master_pegawai` (`id`, `nama_lengkap`, `jabatan`, `unit_kerja`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Agus Widodo, S.IP., M.Si.', 'Sekretaris Dewan Pertimbangan Presiden, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(2, 'M. Arfan Sahib Sali Kando, S.E., M.F.M.', 'Kepala Biro Data dan Informasi, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(3, 'Raden Hendrikus Bambang Budi Nugroho, S.T., M.P.M.', 'Kepala Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(4, 'Muhammad Faried, S.IP., DEA.', 'Analis Kebijakan Madya, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(5, 'Apriliana, S.Pd., M.Si.', 'Analis Kebijakan Madya, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(6, 'Fikroh Amali Fahmi Addiani, S.T., M.T.', 'Analis Kebijakan Madya, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(7, 'Dian Kartika Putri, S.Kom., M.T.I.', 'Analis Kebijakan Madya, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(8, 'Arief Karfianto, S.ST., M.M., MICTAdv.', 'Pranata Komputer Ahli Madya, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(9, 'Endah Wahyuni, S.T., MMSI.', 'Analis Kebijakan Muda, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(10, 'Bernard Bonnik Manoe, S.E., MBA.', 'Analis Kebijakan Muda, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(11, 'Andhi Ilham Permana, S.H., M.H.', 'Analis Kebijakan Muda, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(12, 'Agita Rindu Daddinda, S.E.', 'Analis Kebijakan Ahli Muda pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(13, 'Rio Jayusman, S.E., M.E.', 'Analis Kebijakan Muda, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(14, 'Nurafni A Moka, S.E., MPubAdmin(Pol).', 'Analis Kebijakan Ahli Muda pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(15, 'Ria Andayani, S.H.', 'Analis Kebijakan Muda pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(16, 'Saddra Fitrilia, S.E.', 'Analis Kebijakan Ahli Muda pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(17, 'Andytias Dwi Adywiratama, S.T., M.T.I.', 'Pranata Komputer Ahli Muda, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(18, 'Tri Murdani, S.H.', 'Analis Kebijakan Ahli Pertama pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(19, 'Andhika Beriansyah, S.Kesos.', 'Analis Kebijakan Ahli Pertama pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(20, 'Karina Megasari, S.E.', 'Analis Kebijakan Ahli Pertama pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(21, 'Muhammad Ryan Arysta, S.KM.', 'Analis Kebijakan Ahli Pertama pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(22, 'Indri Putrianti, S.I.Kom.', 'Pranata Humas Ahli Pertama pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(23, 'Oktaviyani Dwi Lestari, S.Ikom.', 'Pranata Humas Ahli Pertama pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(24, 'Mirza Pratama, S.Kom.', 'Penata Kelola Sistem Dan Teknologi Informasi pada Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(25, 'Ferindra Eko Prasetyo, A.Md.Kom.', 'Pranata Komputer Terampil, Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(26, 'Bangkit Permana Putra, S.H.', 'Penata Layanan Operasional Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(27, 'Denny Ariffriana, S.Pd.', 'Penata Layanan Operasional Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(28, 'Lisa Apriliantias, S.Sos.', 'Penata Layanan Operasional Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(29, 'Muhammad Rizky Arrahman, S.Kom.', 'Penata Layanan Operasional Biro Data dan Informasi, Sekretariat Dewan Pertimbangan Presiden', 'Biro Data dan Informasi', 1, NULL, NULL),
(30, 'Hangga Filardikh Bachtiar, S.E., M.E.', 'Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(31, 'Kris Biantoro, S.AP.', 'Analis Anggaran Ahli Madya, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(32, 'Hendra, S.Kom., M.H.', 'Arsiparis Ahli Madya, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(33, 'Prima Laksmitasari, S.IP., M.Si.', 'Kepala Subbagian Protokol, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(34, 'Tiara Asri Satria, S.E., M.P.P.M.', 'Kepala Subbagian Rumah Tangga dan Perlengkapan, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(35, 'Bintang Verawaty, S.E., Ak.', 'Analis Pengelolaan Keuangan APBN Ahli Muda, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(36, 'Desi Puhati Purnomo Sari, S.E., M.Si.', 'Analis Pengelolaan Keuangan APBN Ahli Muda, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(37, 'Andry Prastyawan, S.E., M.M.', 'Analis Sumber Daya Manusia Aparatur Ahli Muda pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(38, 'Irfan Nawawi, S.AP.', 'Analis Sumber Daya Manusia Aparatur Ahli Muda pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(39, 'Ilham Dermawan, S.IP.', 'Analis Anggaran Ahli Pertama pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(40, 'Lestina Susetyohati, S.E.', 'Analis Anggaran Ahli Pertama pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(41, 'Hezti Kurniati, S.E.', 'Analis Keuangan APBN Ahli Pertama, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(42, 'Magna Arista Rosa Rini, S.E.', 'Analis Keuangan APBN Ahli Pertama, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(43, 'Adisti Nanda Sari, S.Tr. A.P.', 'Arsiparis Ahli Pertama pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(44, 'Sugeng Widodo, S.E., M.M.', 'Pranata Keuangan APBN Penyelia, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(45, 'Kiagus Muhammad Amir, S.IP., M.Tr.A.P.', 'Analis Tata Usaha pada Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(46, 'Shelby Liriara Meisyara, S.E., M.A.', 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan pada Subbagian Rumah Tangga dan Perlengkapan, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(47, 'Rico Bobman, S.E.', 'Analis Aset Negara pada Subbagian Rumah Tangga dan Perlengkapan, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(48, 'Mochamad Umar Wira Asmara, S.E.', 'Analis Keuangan pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(49, 'Dhika Aburizal Pratomo, S.I.A.', 'Analis Monitoring, Evaluasi, dan Pelaporan pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(50, 'Gigih Tri Yuwono, S.I.Kom.', 'Analis Protokol pada Subbagian Protokol, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(51, 'Inas Ulfa Hapsari, S.I.Kom.', 'Analis Protokol pada Subbagian Protokol, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(52, 'Nurul Cholifah, S.I.Kom.', 'Analis Protokol pada Subbagian Protokol, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(53, 'Adi Perdana Putra, S.I.Kom.', 'Analis Protokol pada Subbagian Protokol, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(54, 'Dheyas Tri Pertiwi, S.I.Kom.', 'Analis Protokol pada Subbagian Protokol, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(55, 'Siska Pratiwi, S.I.Kom.', 'Analis Protokol pada Subbagian Protokol, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(56, 'Dina Mabellya, S.I.Kom.', 'Analis Protokol pada Subbagian Protokol, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(57, 'Raden Zulkifli Ridwan, A.Md.', 'Pranata Acara pada Subbagian Protokol, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(58, 'Siti Nur Azizah Harahap, S.I.Kom.', 'Analis Protokol pada Subbagian Protokol, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(59, 'Pristalia, A.Md.', 'Arsiparis Mahir pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(60, 'Dorothea Krishardiyani', 'Pengadministrasi Umum pada Subbagian Rumah Tangga dan Perlengkapan, Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(61, 'Sandi Sudjatmiko, S.A.B.', 'Calon Analis Anggaran Ahli Pertama pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(62, 'Nina Safitri, S.E.', 'Calon Analis Pengelolaan Keuangan APBN Ahli Pertama pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(63, 'Hanani Ninditasari, S.Tr.A.K.P.', 'Calon Analis Sumber Daya Manusia Aparatur Ahli Pertama pada Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(64, 'Hilmy Yahya, S.Sos.', 'Calon Analis Sumber Daya Manusia Aparatur Ahli Pertama pada Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(65, 'Tiara Dwi Rizki, A.Md.', 'Calon Arsiparis Terampil pada Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(66, 'Billy Muhammad Kurnia, A.Md.', 'Calon Pranata Keuangan APBN Terampil pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(67, 'Silfia Putri Sari, A.Md.A.B.', 'Calon Pranata Keuangan APBN Terampil pada Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(68, 'Ketrin Alwan, A.Md.', 'Pengelola Keprotokolan pada Kepala Subbagian Protokol, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(69, 'Risna Sartika, A.Md.Li.', 'Pengelola Keprotokolan pada Kepala Subbagian Protokol, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(70, 'Hairy Akbar Setiawan, S.Ikom.', 'Penata Layanan Operasional pada Kepala Subbagian Rumah Tangga dan Perlengkapan, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(71, 'Hendi, S.M.', 'Penata Layanan Operasional pada Kepala Subbagian Rumah Tangga dan Perlengkapan, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(72, 'Rusli Sumantri, S.E.', 'Penata Layanan Operasional pada Kepala Subbagian Rumah Tangga dan Perlengkapan, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(73, 'Waskito, S.Kom.', 'Penata Layanan Operasional pada Kepala Subbagian Rumah Tangga dan Perlengkapan, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(74, 'Fransiskus Xaverius Dimas Anggoro, A.Md.', 'Pengelola Layanan Operasional pada Kepala Subbagian Protokol, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(75, 'Devi Ana Dwi Utami, A.Md.', 'Pranata Sumber Daya Manusia Aparatur Terampil pada Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(76, 'Maulana Febriansyah', 'Pengadministrasi Perkantoran pada Kepala Subbagian Rumah Tangga dan Perlengkapan, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL),
(77, 'Novial Anggoro', 'Pengadministrasi Perkantoran pada Kepala Subbagian Rumah Tangga dan Perlengkapan, Kepala Bagian Tata Usaha, Rumah Tangga, dan Protokol, Biro Umum, Sekretariat Dewan Pertimbangan Presiden', 'Biro Umum', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_petugas_protokol`
--

CREATE TABLE `master_petugas_protokol` (
  `id_petugas` int NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'Link to tb_user if they have login',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_petugas_protokol`
--

INSERT INTO `master_petugas_protokol` (`id_petugas`, `nama`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Prima Laksmitasari', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(2, 'Gigih Tri Yuwono', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(3, 'Adi Perdana Putra', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(4, 'Raden Zulkifli Ridwan', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(5, 'Dheyas Tri Pertiwi', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(6, 'Inas Ulfa Hapsari', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(7, 'Nurul Cholifah', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(8, 'Siska Pratiwi', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(9, 'Siti Nur Azizah Harahap', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(10, 'Dina Mabellya', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(11, 'Risna Sartika', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(12, 'Ketrin Alwan', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(13, 'Rusli Sumantri', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(14, 'Waskito', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(15, 'F.X. Dimas Anggoro', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(16, 'Hendi', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(17, 'Dwi Kusumo Hanindito', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50'),
(18, 'Bramanda Wiratama', NULL, 1, '2026-02-11 03:18:50', '2026-02-11 03:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `master_provinsi`
--

CREATE TABLE `master_provinsi` (
  `id_provinsi` int NOT NULL,
  `nama_provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_provinsi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_provinsi`
--

INSERT INTO `master_provinsi` (`id_provinsi`, `nama_provinsi`, `kode_provinsi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', '11', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(2, 'Sumatera Utara', '12', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(3, 'Sumatera Barat', '13', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(4, 'Riau', '14', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(5, 'Jambi', '15', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(6, 'Sumatera Selatan', '16', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(7, 'Bengkulu', '17', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(8, 'Lampung', '18', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(9, 'Kepulauan Bangka Belitung', '19', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(10, 'Kepulauan Riau', '21', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(11, 'DKI Jakarta', '31', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(12, 'Jawa Barat', '32', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(13, 'Jawa Tengah', '33', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(14, 'DI Yogyakarta', '34', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(15, 'Jawa Timur', '35', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(16, 'Banten', '36', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(17, 'Bali', '51', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(18, 'Nusa Tenggara Barat', '52', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(19, 'Nusa Tenggara Timur', '53', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(20, 'Kalimantan Barat', '61', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(21, 'Kalimantan Tengah', '62', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(22, 'Kalimantan Selatan', '63', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(23, 'Kalimantan Timur', '64', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(24, 'Kalimantan Utara', '65', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(25, 'Sulawesi Utara', '71', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(26, 'Sulawesi Tengah', '72', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(27, 'Sulawesi Selatan', '73', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(28, 'Sulawesi Tenggara', '74', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(29, 'Gorontalo', '75', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(30, 'Sulawesi Barat', '76', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(31, 'Maluku', '81', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(32, 'Maluku Utara', '82', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(33, 'Papua Barat', '91', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(34, 'Papua', '94', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(35, 'Papua Selatan', '95', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(36, 'Papua Tengah', '96', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(37, 'Papua Pegunungan', '97', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(38, 'Papua Barat Daya', '92', 1, '2026-02-11 03:22:02', '2026-02-11 03:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2026_02_19_034054_create_administrasi_perjalanan_dinas_petugas_table', 1),
(2, '2026_02_19_075359_add_id_petugas_to_pelayanan_keprotokolan_table', 1),
(3, '2026_02_19_155139_add_id_petugas_to_persidangan_table', 1),
(4, '2026_02_19_155208_modify_columns_in_administrasi_perjalanan_dinas_table', 1),
(5, '2026_02_20_022048_create_pelayanan_anggota_dewan_table', 2),
(6, '2026_02_24_014114_create_master_pegawai_table', 3),
(7, '2026_02_24_041931_update_kunjungan_kerja_table_structure', 4),
(8, '2026_02_24_045641_add_tujuan_luar_negeri_to_kunjungan_kerja_table', 5),
(9, '2026_02_24_052739_fix_pivot_timestamps_kunjungan_kerja', 6),
(10, '2026_02_24_053222_ensure_waktu_columns_kunjungan_kerja', 7),
(11, '2026_02_24_062710_fix_kunjungan_nullable', 8),
(12, '2026_02_25_055856_add_jenis_kelamin_to_tb_user_table', 9),
(13, '2026_02_25_072759_add_extra_columns_to_history_logs_table', 10),
(14, '2026_02_26_021351_make_model_type_nullable_in_history_logs', 11),
(15, '2026_02_28_232447_create_app_settings_table', 12),
(16, '2026_03_11_140556_create_sessions_table', 13),
(17, '2026_03_11_140825_create_cache_table', 13),
(18, '2026_03_13_120000_expand_participant_columns_for_high_volume_input', 13),
(19, '2026_03_13_130000_add_tanggal_selesai_to_kunjungan_kerja_table', 13),
(20, '2026_03_13_142935_create_module_reads_table', 14),
(21, '2026_03_25_095914_add_is_seen_by_superadmin_to_kegiatan_tables', 15);

-- --------------------------------------------------------

--
-- Table structure for table `module_reads`
--

CREATE TABLE `module_reads` (
  `id` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_reads`
--

INSERT INTO `module_reads` (`id`, `id_user`, `module_name`, `last_read_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'pelayanan-keprotokolan', '2026-09-22 09:44:52', '2026-03-13 07:43:11', '2026-09-22 09:44:52'),
(2, 1, 'persidangan', '2026-09-22 09:47:49', '2026-03-13 07:43:15', '2026-09-22 09:47:49'),
(3, 1, 'kunjungan-kerja', '2026-09-22 09:47:58', '2026-03-13 07:43:19', '2026-09-22 09:47:58'),
(4, 1, 'administrasi-perjalanan-dinas', '2026-09-22 10:02:11', '2026-03-13 07:43:29', '2026-09-22 10:02:11'),
(5, 4, 'pelayanan-keprotokolan', '2026-04-20 13:18:31', '2026-03-13 13:58:10', '2026-04-20 13:18:31'),
(6, 4, 'kunjungan-kerja', '2026-04-20 13:44:51', '2026-03-13 13:58:13', '2026-04-20 13:44:51'),
(7, 4, 'administrasi-perjalanan-dinas', '2026-04-20 13:44:14', '2026-03-13 14:08:46', '2026-04-20 13:44:14'),
(8, 4, 'persidangan', '2026-04-20 13:18:22', '2026-03-13 14:10:26', '2026-04-20 13:18:22'),
(9, 7, 'pelayanan-keprotokolan', '2026-07-01 04:57:52', '2026-04-02 02:47:34', '2026-07-01 04:57:52'),
(10, 7, 'persidangan', '2026-07-01 04:58:01', '2026-04-02 07:47:04', '2026-07-01 04:58:01'),
(11, 7, 'kunjungan-kerja', '2026-07-01 05:01:25', '2026-04-07 01:36:08', '2026-07-01 05:01:25'),
(12, 7, 'administrasi-perjalanan-dinas', '2026-06-11 04:34:03', '2026-04-07 01:36:50', '2026-06-11 04:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `pelayanan_keprotokolan`
--

CREATE TABLE `pelayanan_keprotokolan` (
  `id_pelayanan` bigint NOT NULL,
  `id_anggota` json DEFAULT NULL,
  `id_petugas` json DEFAULT NULL,
  `id_jenis_pelayanan` int NOT NULL,
  `nama_kegiatan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `waktu` time NOT NULL,
  `tempat` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `is_seen_by_superadmin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelayanan_keprotokolan`
--

INSERT INTO `pelayanan_keprotokolan` (`id_pelayanan`, `id_anggota`, `id_petugas`, `id_jenis_pelayanan`, `nama_kegiatan`, `tanggal_kegiatan`, `waktu`, `tempat`, `file_path`, `created_by`, `updated_by`, `is_seen_by_superadmin`, `created_at`, `updated_at`) VALUES
(22, '[2]', '[5]', 4, 'Melakukan audiensi kepada Presiden RI', '2026-03-05', '09:00:00', 'petamburan', 'pelayanan-keprotokolan/Aq6XLM5vVoPPMVLBTwG5ie5MxivF01GkQRxGmLQp.xlsx', 1, 1, 1, '2026-03-04 02:00:58', '2026-03-25 03:17:45'),
(23, '[2]', '[5]', 4, 'Melakukan audiensi kepada Presiden RI', '2026-03-05', '12:45:00', 'petamburan', 'pelayanan-keprotokolan/lGhNlRve3tQ7Ml8P4DX6PliHASxMaIEI9POIQAoO.xlsx', 1, NULL, 1, '2026-03-04 02:00:58', '2026-03-25 03:17:45'),
(24, '[6]', '[3]', 1, 'ASEAN Summit', '2026-03-04', '12:30:00', 'Wantimpres', 'pelayanan-keprotokolan/7JasTKbJMCGVqJ8F4NWOfPqykbBMdjOEh0KT2kML.pdf', 1, NULL, 1, '2026-03-04 02:02:19', '2026-03-25 03:17:45'),
(25, '[9]', '[18]', 1, 'masakkkk', '2026-03-02', '12:50:00', 'Wantimpres', 'pelayanan-keprotokolan/HK2bFkf4lXrZWSkmMT5cq2nuvBPaxiShN9q3iGEx.png', 1, NULL, 1, '2026-03-04 02:02:47', '2026-03-25 03:17:45'),
(26, '[3]', '[]', 1, 'Keberangkatan ke Kuala Lumpur', '2026-03-10', '08:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 2, 1, 1, '2026-03-04 02:24:07', '2026-03-25 03:17:45'),
(27, '[3]', '[17, 15]', 1, 'Ketibaan dari Kuala Lumpur', '2026-03-10', '13:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 2, 1, 1, '2026-03-04 02:24:51', '2026-03-25 03:17:45'),
(29, '[3]', '[18, 10]', 1, 'Ketibaan dari Singapura', '2026-03-06', '14:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 2, 1, 1, '2026-03-04 02:26:52', '2026-03-25 03:17:45'),
(30, '[2]', '[3]', 2, 'MASAK MASAK NASI LEMANG', '2026-03-10', '12:50:00', 'Ruang Rapat Kresna, Lt.2', NULL, 1, 1, 1, '2026-03-06 06:25:58', '2026-03-25 03:17:45'),
(31, '[2]', '[3]', 4, 'ASEAN Summit', '2026-03-06', '15:00:00', 'Wantimpres', NULL, 1, NULL, 1, '2026-03-06 07:16:42', '2026-03-25 03:17:45'),
(32, '[2]', '[18]', 2, 'ASEAN Summit', '2026-03-06', '15:02:00', 'Ruang Rapat Kresna, Lt.2', NULL, 1, 1, 1, '2026-03-06 07:23:24', '2026-03-25 03:17:45'),
(33, '[5]', '[18]', 5, 'MASAK MASAK NASI LEMANG', '2026-03-10', '15:00:00', 'petamburan', NULL, 1, 1, 1, '2026-03-06 07:24:03', '2026-03-25 03:17:45'),
(329, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2002-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-08 08:43:50', '2026-03-25 03:17:45'),
(330, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2002-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-08 08:43:50', '2026-03-25 03:17:45'),
(579, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2002-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-08 08:44:53', '2026-03-25 03:17:45'),
(580, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2002-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-08 08:44:53', '2026-03-25 03:17:45'),
(829, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2002-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 01:58:07', '2026-03-25 03:17:45'),
(830, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2002-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 01:58:07', '2026-03-25 03:17:45'),
(1109, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2002-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 02:42:00', '2026-03-25 03:17:45'),
(1110, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2002-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 02:42:00', '2026-03-25 03:17:45'),
(1389, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2002-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 02:42:26', '2026-03-25 03:17:45'),
(1390, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2002-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 02:42:26', '2026-03-25 03:17:45'),
(1669, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2002-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 02:44:07', '2026-03-25 03:17:45'),
(1670, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2002-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 02:44:07', '2026-03-25 03:17:45'),
(1949, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2002-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 02:50:27', '2026-03-25 03:17:45'),
(1950, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2002-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 02:50:27', '2026-03-25 03:17:45'),
(2368, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2002-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 02:50:58', '2026-03-25 03:17:45'),
(2369, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2002-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 02:50:58', '2026-03-25 03:17:45'),
(2972, '[\"3\"]', '[\"2\"]', 1, 'Ketibaan dari Singapura', '2023-01-02', '08:30:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2973, '[\"6\"]', '[\"18\", \"7\"]', 1, 'Ketibaan dari Surabaya, Jawa Timur', '2023-01-02', '12:20:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2974, '[\"3\"]', '[\"2\"]', 1, 'Keberangkatan ke Singapura', '2023-01-02', '14:01:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2975, '[\"8\"]', '[\"4\"]', 1, 'Ketibaan dari Surabaya, Provinsi Jawa Timur', '2023-01-05', '09:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2976, '[\"8\"]', '[\"17\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-01-05', '19:00:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2977, '[\"3\"]', '[\"18\", \"8\"]', 1, 'Ketibaan dari Singapura', '2023-01-08', '12:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2978, '[\"6\"]', '[\"17\", \"5\"]', 2, 'Menghadiri acara \"CT Corp Leadership Forum\" bersama Yab Dato\' Seri Anwar Ibrahim Perdana Menteri Malaysia', '2023-01-09', '14:30:00', 'Auditorium Menara Bank Mega, Jl. Kapten Tendean Kav. 12-14A. Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2979, '[\"5\", \"7\"]', '[\"4\", \"6\", \"18\"]', 2, 'Menghadiri acara HUT 50 Tahun PDI Perjuangan dengan tema \"Genggam Tangan Persatuan dan Semangat Api Perjuangan Nan Tak Kunjung Padam, Persatuan Indonesia untuk Indonesia Raya, 1973-2023\"', '2023-01-10', '09:00:00', 'Hall A, JIExpo, Kemayoran, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2980, '[\"8\"]', '[\"13\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-01-11', '19:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2981, '[\"3\"]', '[\"18\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-01-12', '08:00:00', 'Bandara Halim Perdana Kusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2982, '[\"3\"]', '[\"3\"]', 1, 'Ketibaan dari Surabaya, Provinsi Jawa Timur', '2023-01-12', '15:00:00', 'Bandara Halim Perdana Kusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2983, '[\"6\"]', '[\"2\", \"8\"]', 1, 'Keberangkatan ke Medan, Provinsi Sumatera Utara dalam rangka kunjungan kerja', '2023-01-13', '11:20:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2984, '[\"6\"]', '[\"17\"]', 1, 'Ketibaan dari Medan, Provinsi Sumatera Utara dalam rangka kunjungan kerja', '2023-01-14', '16:45:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2985, '[\"1\"]', '[\"7\"]', 5, 'Menghadiri Undangan Sidang Kabinet Paripurna', '2023-01-16', '13:30:00', 'Istana Negara', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2986, '[\"6\"]', '[\"2\", \"17\", \"4\"]', 1, 'Keberangkatan ke Kuala Lumpur Malaysia dalam rangka kunjungan kerja', '2023-01-17', '11:10:00', 'Bandara Soekarno Hatta, Tangerang Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2987, '[\"5\"]', '[\"13\", \"5\"]', 2, 'Menghadiri acara \"Melestarikan Kebaya sebagai Identitas Bangsa Indonesia\"', '2023-01-19', '13:30:00', 'Gedung Nusantara IV, DPR RI (Pustakaloka), Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2988, '[\"5\"]', '[\"4\"]', 1, 'Keberangkatan ke Surakarta, Provinsi Jawa Tengah dalam rangka Kunjungan Kerja', '2023-01-20', '13:50:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2989, '[\"6\"]', '[\"4\", \"13\", \"10\"]', 1, 'Ketibaan dari Kuala Lumpur Malaysia', '2023-01-20', '15:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2990, '[\"1\"]', '[\"9\"]', 2, 'Menghadiri Pembukaan Rakernas III IKAL - Lemhanas 2023', '2023-01-21', '08:00:00', 'Gedung Gajah Mada, Lantai 3, Lemhanas RI Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2991, '[\"5\"]', '[\"13\"]', 1, 'Ketibaan dari Surakarta, Provinsi Jawa Tengah dalam rangka Kunjungan Kerja', '2023-01-21', '12:20:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2992, '[\"1\"]', '[\"3\"]', 2, 'Menghadiri acara pelantikan Pengawas & Pengurus Paguyuban Jawa Tengah', '2023-01-21', '19:00:00', 'Ruang Sidang V - Gedung MPR RI', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2993, '[\"8\"]', '[\"17\"]', 1, 'Ketibaan dari Surabaya, Provinsi Jawa Timur', '2023-01-24', '08:40:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2994, '[\"7\"]', '[\"10\"]', 3, 'Audiensi kepada Presiden RI', '2023-01-24', '11:30:00', 'Istana Merdeka, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2995, '[\"8\"]', '[\"18\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-01-24', '19:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2996, '[\"3\"]', '[\"13\", \"6\"]', 1, 'Keberangkatan ke Surakarta, Provinsi Jawa Tengah', '2023-01-25', '08:00:00', 'Bandara Halim Perdana Kusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2997, '[\"3\"]', '[\"4\", \"10\"]', 1, 'Ketibaan dari Surakarta, Provinsi Jawa Tengah', '2023-01-25', '12:00:00', 'Bandara Halim Perdana Kusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2998, '[\"3\"]', '[\"18\", \"8\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-01-27', '09:30:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(2999, '[\"3\"]', '[\"3\", \"2\"]', 1, 'Ketibaan dari Surabaya, Provinsi Jawa Timur', '2023-01-27', '20:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3000, '[\"5\"]', '[\"2\", \"9\"]', 2, 'Menghadiri acara \"Pengucapan Syukur Kadin Indonesia Membuka Tahun 2023\"', '2023-02-03', '17:00:00', 'GPIB Immanuel Jakarta, Jl. Merdeka Timur, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3001, '[\"3\"]', '[\"4\", \"13\"]', 1, 'Keberangkatan ke Bandung', '2023-02-03', '08:30:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3002, '[\"3\"]', '[\"4\", \"13\"]', 1, 'Ketibaan dari Bandung', '2023-02-03', '12:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3003, '[\"7\"]', '[\"17\"]', 2, 'Menghadiri acara Gelar Budaya Pegelaran Wayang Kulit \"Wahyu Makutharama\"', '2023-02-03', '20:00:00', 'Lapangan Bhayangkara Mabes Polri, Jalan Trunojoyo Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3004, '[\"6\"]', '[\"18\"]', 1, 'Ketibaan dari Denpasar, Provinsi Bali', '2023-02-03', '21:45:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3005, '[\"7\"]', '[\"3\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur dalam rangka kunjungan kerja', '2023-02-06', '15:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3006, '[\"7\"]', '[\"18\"]', 1, 'Ketibaan dari Surabaya dalam rangka kunjungan kerja', '2023-02-07', '15:05:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3007, '[\"5\", \"7\"]', '[\"3\", \"7\", \"8\"]', 2, 'Menghadiri acara \"Collaborating to Safeguard the Kebaya of ASEAN\"', '2023-02-07', '15:30:00', 'Pullman Central Park', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3008, '[\"8\"]', '[\"18\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-02-09', '19:00:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3009, '[]', '[\"4\", \"6\", \"10\"]', 2, 'Menghadiri undangan sebagai Narasumber dalam acara Diskusi Kebangsaan dengan tema \"Strategi Mempertahankan Konsensus Kebangsaan\"', '2023-02-13', '13:00:00', 'Rumah Wijaya, Jl. Wijaya V No.6, Melawai-Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3010, '[\"7\"]', '[\"7\", \"18\", \"13\"]', 2, 'Menghadiri acara \"Unjuk Kinerja dan Apresiasi BPOM RI di Masa Pandemi Covid-19, Persembahan Simfoni Untuk-Mu Indonesiaku\"', '2023-02-15', '14:00:00', 'Ciputra Artpreneur Theater, \nJl. Prof. Dr. Satrio, Kuningan,\nJakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3011, '[\"8\"]', '[\"4\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-02-15', '16:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3012, '[\"3\"]', '[\"17\", \"6\"]', 1, 'Keberangkatan ke Singapura', '2023-02-16', '11:30:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3013, '[\"7\"]', '[\"5\"]', 2, 'Menghadiri undangan resepsi pernikahan dr. Andi Nizar Nazarudin dengan Amanda Fortuna Arum', '2023-02-19', '10:00:00', 'Gedung Dhanapala, Jl. Senen Raya, No.1, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3014, '[\"7\"]', '[\"8\"]', 2, 'Menghadiri Undangan Pembukaan Graha Pena 98, Persatuan Nasional Aktivis 98', '2023-02-19', '10:00:00', 'Jalan Hos Cokroaminoto 115, Menteng, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3015, '[\"3\"]', '[\"13\"]', 1, 'Ketibaan dari Singapura', '2023-02-19', '11:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3016, '[\"6\"]', '[\"17\", \"10\"]', 2, 'Menghadiri Undangan Pelantikan Fungsionaris Badan Pengurus Pusat Himpunan Pengusaha Muda Indonesia (BPP HIPMI) Masa Bakti 2022 - 2025.', '2023-02-20', '15:00:00', 'Kempinski Grand Ballroom, Lobby Amarta West Mall Grand Indonesia, \nJl. Kebon Kacang Raya Blok D6, Kb. Kacang Kec. Tanah Abang, Kota Jakarta Pusat, 10230', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3017, '[\"6\"]', '[\"5\"]', 2, 'Pertemuan dengan Plt. Dirjen Sengketa, Badan Pertanahan Nasional (BPN)', '2023-02-21', '10:00:00', 'Kantor Plt. Dirjen', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3018, '[\"7\"]', '[\"3\"]', 2, 'Pertemuan (Tertutup) dengan Dr. ST. Burhanuddin, S.T., M.H., Jaksa Agung RI', '2023-02-21', '10:00:00', 'Kantor Jaksa Agung RI, Jl. Sultan Hasanuddin No.1, Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3019, '[\"3\"]', '[\"18\"]', 1, 'Keberangkatan ke Bandung, Provinsi Jawa Barat', '2023-02-22', '09:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3020, '[\"3\"]', '[\"17\"]', 1, 'Ketibaan dari Bandung, Provinsi Jawa Barat', '2023-02-22', '12:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3021, '[\"5\"]', '[\"2\", \"7\"]', 2, 'Menghadiri Pembukaan Indonesia Fashion Week 2023', '2023-02-22', '10:00:00', 'Plenary Hall Jakarta Convention Centre, Senayan, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3022, '[\"7\"]', '[\"9\"]', 2, 'Pertemuan dengan Menteri Energi Sumber Daya Mineral (Tertutup)', '2023-02-24', '11:00:00', 'Kantor Menteri ESDM RI, Gedung Heritage Lantai 1, Kementerian ESDM, Jalan Merdeka Selatan No. 18, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3023, '[\"7\"]', '[\"4\", \"7\"]', 2, 'Menghadiri Resepsi Pernikahan Nisrina Noor Rabi\'ah dan Muhammad Andreza', '2023-02-26', '00:00:00', 'Gedung Sasono Utomo TMII, Taman Mini, Jl. Malaka, Ceger, Kec. Cipayung, Kota Jakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3024, '[\"6\"]', '[\"4\", \"18\"]', 1, 'Keberangkatan ke Beijing, Republik Rakyat Tiongkok dalam rangka kunjungan kerja', '2023-03-01', '00:15:00', 'Bandara Soekarno-Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3025, '[\"1\"]', '[\"10\"]', 5, 'Menghadiri Undangan Sidang Kabinet Paripurna', '2023-03-02', '13:30:00', 'Istana Negara', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3026, '[\"7\"]', '[\"13\"]', 2, 'Pertemuan dengan Sekretaris Kabinet RI', '2023-03-03', '10:00:00', 'Kantor Sekretariat Kabinet, Gedung III Lantai 2, Komplek Perkantoran Sekretariat Negara RI', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3027, '[\"3\"]', '[\"17\"]', 1, 'Keberangkatan ke Bandung, Provinsi Jawa Barat', '2023-03-05', '12:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3028, '[\"1\"]', '[\"4\", \"8\"]', 2, 'Menghadiri syukuran HUT Kostrad ke-62', '2023-03-06', '09:00:00', 'Makostrad, Jl. Medan Merdeka Timur No. 3, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3029, '[\"3\"]', '[\"2\"]', 1, 'Ketibaan dari Bandung, Provinsi Jawa Barat', '2023-03-06', '11:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3030, '[\"5\"]', '[\"17\", \"6\"]', 2, 'Menghadiri Acara \"Jagantara 2.0\" Yayasan Warisan Budaya Indonesia', '2023-03-09', '18:00:00', 'Hutan Kota Plataran, Senayan, Jl. Jenderal Sudirman No. 54-55, GBK, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3031, '[\"1\"]', '[\"5\"]', 2, 'Menghadiri Akad Nikah Lanny Devista dengan Aulia Rahman Ardan', '2023-03-11', '08:00:00', 'Golden Ballroom, The Sultan Hotel & Residence, Tanah Abang, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3032, '[\"5\"]', '[\"3\"]', 2, 'Menghadiri acara Festival Sanggul Nusantara 2023', '2023-03-11', '11:00:00', 'Cakrawala III, Lt. 5 Sarinah Thamrin Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3033, '[\"7\"]', '[\"8\"]', 2, 'Menghadiri Acara Penyerahan Rekor MURI sebagai Insan Menteri Termuda dalam Kabinet Republik Indonesia', '2023-03-11', '10:30:00', 'Ruang Audiotorium, Gedung Museum Nasional, Jalan Merdeka Barat No.12, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3034, '[\"5\", \"7\"]', '[\"3\"]', 2, 'Menghadiri Resepsi Pernikahan Lanny Devista dengan Aulia Rahman Ardan', '2023-03-11', '19:00:00', 'Golden Ballroom, The Sultan Hotel & Residence, Tanah Abang, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3035, '[\"5\"]', '[\"13\"]', 2, 'Menghadiri Resepsi Pernikahan Divesnara Airlangga Hartato dan Isaura Tjhiater', '2023-03-11', '20:00:00', 'The Dharmawangsa Jakarta, Jalan Brawijaya Raya No. 26, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3036, '[\"6\"]', '[\"13\"]', 1, 'Ketibaan dari Republik Rakyat Tiongkok dalam rangka kunjungan kerja', '2023-03-12', '12:45:00', 'Bandara Soekarno Hatta,\nTangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3037, '[\"3\"]', '[\"18\", \"17\"]', 1, 'Keberangkatan ke Tokyo, Jepang', '2023-03-16', '06:20:00', 'Bandara Soekarno Hatta,\nTangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3038, '[\"1\", \"5\"]', '[\"5\", \"13\"]', 2, 'Menghadiri perayaan Syukuran HUT ke-74 Tahun Bapak H.R. Agung Laksono', '2023-03-25', '18:30:00', 'Jl. Cipinang Cempedak II No.23, Polonia, Jakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3039, '[\"3\"]', '[\"18\"]', 1, 'Ketibaan dari Tokyo, Jepang', '2023-03-26', '10:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3040, '[\"6\"]', '[\"4\"]', 1, 'Keberangkatan ke Phnom Penh, Kamboja dalam rangka kunjungan kerja', '2023-03-27', '11:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3041, '[\"6\"]', '[\"3\"]', 1, 'Ketibaan dari Phnom Penh, Kamboja dalam rangka kunjungan kerja', '2023-03-28', '14:30:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3042, '[\"1\"]', '[\"8\", \"10\"]', 2, 'Menghadiri acara Pelantikan Kepengurusan Asosiasi BP PTS Indonesia Pusat Masa Bakti 2022 - 2026', '2023-03-30', '14:30:00', 'Auditorium Lantai 3 Gedung Pusat\nYayasan Universitas Tarumanegara', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3043, '[\"6\"]', '[\"4\"]', 1, 'Keberangkatan ke Kuala Lumpur, Malaysia', '2023-04-02', '12:10:00', 'Bandara Soekarno-Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3044, '[\"3\"]', '[\"2\"]', 1, 'Keberangkatan ke Singapura', '2023-04-04', '07:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3045, '[\"1\"]', '[\"18\", \"17\"]', 1, 'Keberangkatan ke Surakarta, Provinsi Jawa Tengah', '2023-04-04', '09:10:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3046, '[\"6\"]', '[\"4\"]', 1, 'Ketibaan dari Kuala Lumpur', '2023-04-04', '15:05:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3047, '[\"3\"]', '[\"3\"]', 1, 'Ketibaan dari Singapura', '2023-04-04', '16:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3048, '[\"1\"]', '[\"13\"]', 1, 'Ketibaan dari Surakarta, Provinisi Jawa Tengah', '2023-04-05', '12:20:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3049, '[]', '[\"2\", \"17\"]', 1, 'Ketibaan dari Surakarta, Provinisi Jawa Tengah', '2023-04-06', '12:20:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3050, '[\"7\"]', '[\"18\"]', 1, 'Keberangkatan ke Tokyo dalam rangka kunjungan kerja', '2023-04-10', '06:35:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3051, '[\"5\"]', '[\"13\"]', 2, 'Menghadiri Undangan Deklarasi Partai Solidaritas Indonesia', '2023-04-11', '16:00:00', 'Partai Solidaritas Indonesia,\nJl. Wahid Hasyim No. 194, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3052, '[\"5\"]', '[\"5\", \"10\"]', 2, 'Menghadiri Acara Buka Puasa Bersama GIPI - PHRI dan Peringatan HUT GIPI ke-12', '2023-04-11', '16:30:00', 'Puri Agung Hotel Grand Sahid Jaya', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3053, '[\"5\"]', '[\"2\"]', 2, 'Menghadiri undangan acara \"Nonton Bareng Buya Hamka\"', '2023-04-12', '14:45:00', 'XXI Plaza Senayan, Lt.5, Jl. Asia Afrika, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3054, '[\"5\"]', '[\"7\", \"6\"]', 2, 'Menghadiri undangan acara Public Expose PT. Tripar Multivision Plus TBK', '2023-04-12', '16:00:00', 'West Java Ballroom, The Westin, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3055, '[\"8\"]', '[\"17\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-04-13', '15:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3056, '[\"3\"]', '[\"17\"]', 1, 'Keberangkatan ke Singapura', '2023-04-16', '10:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3057, '[\"3\"]', '[\"3\"]', 1, 'Ketibaan dari Singapura', '2023-04-16', '18:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3058, '[]', '[\"18\", \"13\"]', 1, 'Keberangkatan ke Gorontalo', '2023-04-17', '07:05:00', 'Bandara Soekarno-Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3059, '[\"1\"]', '[\"17\"]', 1, 'Keberangkatan ke Gorontalo', '2023-04-18', '07:45:00', 'Bandara Soekarno-Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3060, '[\"3\"]', '[\"13\"]', 1, 'Keberangkatan ke Seoul, Korea Selatan', '2023-04-18', '09:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3061, '[\"5\"]', '[\"3\", \"7\"]', 2, 'Menghadiri acara Indonesia - Czech Business Forum', '2023-04-18', '17:00:00', 'Bali Room - Kempinski Hotel Indonesia,\nJl. MH Thamrin No.1, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3062, '[\"7\"]', '[\"4\"]', 1, 'Ketibaan dari Hong Kong, Republik Rakyat Tiongkok dalam rangka kunjungan kerja', '2023-04-19', '13:10:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3063, '[\"1\"]', '[\"18\"]', 1, 'Ketibaan dari Gorontalo, Provinsi Gorontalo', '2023-04-19', '13:50:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3064, '[\"6\"]', '[\"3\"]', 1, 'Keberangkatan ke Tokyo, Jepang', '2023-04-20', '06:35:00', 'Bandara Soekarno-Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3065, '[\"3\"]', '[\"2\"]', 1, 'Ketibaan dari Seoul', '2023-04-25', '11:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3066, '[\"6\"]', '[\"17\"]', 1, 'Ketibaan dari Tokyo, Jepang', '2023-04-25', '23:50:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3067, '[\"7\"]', '[\"13\"]', 1, 'Keberangkatan ke Yogyakarta, Provinsi D.I.Yogyakarta dalam rangka kunjungan kerja', '2023-04-25', '14:45:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3068, '[\"3\"]', '[\"4\"]', 1, 'Keberangkatan ke Singapura', '2023-04-26', '13:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3069, '[\"7\"]', '[\"18\"]', 1, 'Ketibaan dari Yogyakarta, Provinsi D.I.Yogyakarta, dalam rangka kunjungan kerja', '2023-04-26', '16:50:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3070, '[\"3\"]', '[\"13\"]', 1, 'Ketibaan dari Singapura', '2023-05-01', '13:00:00', 'Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3071, '[\"1\", \"5\", \"6\", \"7\", \"8\"]', '[\"2\", \"18\", \"5\", \"10\"]', 2, 'Halalbihalal Hari Raya Idul Fitri 1444 H/ 2023 M di Lingkungan Dewan Pertimbangan Presiden', '2023-05-02', '10:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3072, '[\"8\"]', '[\"17\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-05-02', '19:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3073, '[\"1\"]', '[\"13\"]', 1, 'Keberangkatan ke Yogyakarta, Provinsi D.I. Yogyakarta', '2023-05-03', '09:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3074, '[\"1\"]', '[\"4\"]', 1, 'Ketibaan dari Yogyakarta, Provinsi D.I. Yogyakarta', '2023-05-03', '18:20:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3075, '[]', '[\"18\", \"17\"]', 1, 'Keberangkatan ke Gorontalo, Provinsi Gorontalo', '2023-05-05', '07:05:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3076, '[\"6\"]', '[\"5\", \"2\"]', 2, 'Menghadiri undangan acara Multivision Plus 50 Years Celebration', '2023-05-06', '19:30:00', 'ST.Regis Hotel, Astor Ballroom\nJl. HR. Rasuna Said Kav B/4, Setiabudi Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3077, '[\"1\"]', '[\"8\"]', 2, 'Menghadiri acara halalbihalal 1444 H / 2023 M bersama Masyarakat Cinta Masjid Indonesia', '2023-05-07', '12:30:00', 'Hotel Des Indies, Jl. Hos Cokroaminoto No.84 Menteng, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3078, '[]', '[\"3\"]', 1, 'Ketibaan dari Gorontalo, Provinsi Gorontalo', '2023-05-07', '13:50:00', 'Bandara Soekarno Hatta, Tangerang Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3079, '[\"3\"]', '[\"6\", \"17\"]', 2, 'Pertemuan dengan Bapak Ario Bimo Nandito Ariotedjo, Menteri Pemuda dan Olahraga', '2023-05-10', '11:00:00', 'Kantor Menteri Pemuda dan Olahraga, Jalan Gerbang Pemuda No. 3, RT.1/RW.3, Gelora, Kecamatan Tanah Abang, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3080, '[\"5\"]', '[\"13\", \"10\"]', 2, 'Menghadiri acara Pembekalan Puteri Indonesia dengan BPOM\ndan Press Conference Puteri Indonesia', '2023-05-12', '10:00:00', 'Jatun Room - The Westin Hotel, \nJl. H.R. Rasuna Said No.Kav. C-22A, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3081, '[\"1\"]', '[\"2\"]', 2, 'Menghadiri acara Halal Bihalal Ikatan Cendekiawan Muslim Se-Indonesia (ICMI)\ndan Silaturahmi Tokoh Bangsa', '2023-05-12', '18:00:00', 'Ballroom Hotel Borobudur,\nJl. Lapangan Banteng No. 1, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3082, '[]', '[\"4\", \"13\"]', 1, 'Keberangkatan ke Surakarta, Provinsi Jawa Tengah', '2023-05-13', '09:10:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3083, '[\"1\", \"5\", \"7\"]', '[\"7\", \"4\"]', 2, 'Menghadiri undangan acara Puncak Musyawarah Rakyat (Musra)', '2023-05-14', '13:00:00', 'Istora Senayan, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3084, '[\"5\"]', '[\"4\", \"10\"]', 2, 'Menghadiri acara \"Talent Show, Traditionalm Costume dan Pre Eliminary Puteri Indonesia 2023\"', '2023-05-14', '15:00:00', 'The Dome, Senayan Park, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3085, '[]', '[\"13\"]', 1, 'Ketibaan dari Surakarta, Provinsi Jawa Tengah', '2023-05-14', '12:15:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3086, '[\"6\"]', '[\"18\", \"17\"]', 1, 'Keberangkatan ke Republik Rakyat Tiongkok', '2023-04-15', '01:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3087, '[\"3\"]', '[\"2\"]', 1, 'Keberangkatan ke Hong Kong', '2023-05-16', '09:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3088, '[\"3\"]', '[\"18\"]', 1, 'Ketibaan dari Taipei', '2023-05-19', '13:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3089, '[]', '[\"6\", \"17\", \"5\"]', 2, 'Menghadiri Grand Final Puteri Indonesia 2023', '2023-05-19', '18:30:00', 'Jakarta Convention Center, Plenary Hall', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3090, '[\"5\"]', '[\"18\", \"4\"]', 3, 'Audiensi kepada Presiden RI', '2023-05-22', '15:00:00', 'Istana Merdeka, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3091, '[\"3\"]', '[\"13\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah', '2023-05-24', '08:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3092, '[\"3\"]', '[\"2\"]', 1, 'Ketibaan dari Solo, Provinsi Jawa Tengah', '2023-05-24', '13:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3093, '[\"6\"]', '[\"3\", \"17\"]', 1, 'Ketibaan dari Republik Rakyat Tiongkok', '2023-05-24', '21:15:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3094, '[\"1\"]', '[\"4\"]', 2, 'Menghadiri Resepsi Pernikahan Nadira dan Haekal', '2023-05-27', '19:00:00', 'Balai Sudirman, Ballroom Prajurit, Jl. Dr. Saharjo No. 268, Tebet, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3095, '[\"3\"]', '[\"13\"]', 1, 'Keberangkatan ke Manila, Filipina', '2023-05-30', '07:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3096, '[\"3\"]', '[\"17\"]', 1, 'Ketibaan dari Manila, Filipina', '2023-05-30', '19:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3097, '[\"3\"]', '[\"4\"]', 1, 'Keberangkatan ke Singapura', '2023-05-31', '14:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3098, '[\"1\"]', '[\"7\"]', 2, 'Upacara Peringatan Hari Lahir Pancasila Tahun 2023', '2023-06-01', '07:30:00', 'Lapangan Monumen Nasional (MONAS)', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3099, '[\"7\"]', '[\"2\"]', 1, 'Keberangkatan ke Yogyakarta, Provinsi D.I Yogyakarta dalam rangka kunjungan kerja', '2023-06-02', '11:30:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3100, '[\"1\", \"5\", \"6\"]', '[\"18\", \"9\", \"13\"]', 2, 'Menghadiri 50th Wedding Anniversary Sylvia Amelia Wenas & H.R. Agung Laksono', '2023-06-02', '19:00:00', 'Studio Sepat 72, Jl. Sepat No.72 Kebagusan, Pasar Minggu - Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3101, '[\"7\"]', '[\"2\"]', 1, 'Ketibaan dari Yogyakarta, Provinsi D.I Yogyakarta dalam rangka kunjungan kerja', '2023-06-03', '11:15:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3102, '[\"3\"]', '[\"2\"]', 1, 'Ketibaan dari Singapura', '2023-06-05', '14:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3103, '[\"6\"]', '[\"8\", \"13\"]', 1, 'Keberangkatan ke Hong Kong, Republik Rakyat Tiongkok', '2023-06-05', '14:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3104, '[\"8\"]', '[\"18\"]', 1, 'Keberangkatan ke Surabaya', '2023-06-07', '09:00:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3105, '[]', '[\"13\"]', 1, 'Keberangkatan ke Shanghai', '2023-06-09', '00:05:00', 'Bandara Soekarno-Hatta,Tangerang,Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3106, '[\"7\"]', '[\"3\", \"10\"]', 2, 'Syukuran Hari Ulang Tahun Bapak Sidarto Danusubroto ke-87', '2023-06-11', '14:30:00', 'Gedung Auditorium Kementerian PUPR, Jl. Raden Patah No.11, Keb. Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3107, '[\"3\"]', '[\"18\", \"17\"]', 1, 'Keberangkatan ke Dubai', '2023-06-12', '00:40:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3108, '[\"5\"]', '[\"8\", \"18\"]', 2, 'Menghadiri acara \"Pembukaan Jakarta Fair 2023\"', '2023-06-14', '19:00:00', 'Panggung Utama Jakarta Fair, Arena Utama JIEXPO Kemayoran,\nJakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3109, '[\"6\"]', '[\"2\", \"18\"]', 1, 'Ketibaan dari Republik Rakyat China', '2023-06-16', '19:35:00', 'Bandara Internasional Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3110, '[\"1\"]', '[\"7\"]', 2, 'Menghadiri Undangan Perayaan Pesta Rakyat dalam rangka Dies Natalis ke - 59 UNJ', '2023-06-17', '08:00:00', 'GOR UNJ\nKampus B Universitas Negeri Jakarta\nJl. Pemuda No 10, Rawamangun, Jakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3111, '[\"5\"]', '[\"4\"]', 2, 'Menghadiri acara pernikahan Abraham Sridjaja dan Janice Tanujaya', '2023-06-17', '18:00:00', 'Raffles Hotel, Jl. Prof. Dr Satrio, Kuningan, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3112, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Yogyakarta', '2023-06-18', '10:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3113, '[\"7\"]', '[\"7\"]', 2, 'Menghadiri acara Grha Putih Parade Budaya Bhineka Tunggal Ika', '2023-06-18', '07:00:00', 'Car Free Day Jakarta (Mall Ratu Plaza - Pintu 7 Kompleks Gelora Bung Karno)', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3114, '[\"5\"]', '[\"9\"]', 2, 'Menghadiri acara pernikahan Yasinta Sekarwangi Mega dan Muhammad Raihan D.', '2023-06-18', '18:30:00', 'Nusantara Ballroom, The Dharmawangsa, Jl. Brawijaya Raya, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3115, '[\"7\"]', '[\"18\"]', 1, 'Ketibaan dari Yogyakarta', '2023-06-18', '18:10:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3116, '[\"5\"]', '[\"2\"]', 2, 'Melakukan pengambilan data biometrik', '2023-06-23', '10:00:00', 'Embassy of Austria, Jl. Pangeran Diponegoro No. 44, Menteng, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3117, '[\"7\"]', '[\"9\"]', 2, 'Menghadiri acara Peringatan Bulan Bung Karno', '2023-06-24', '12:30:00', 'Tribun Timur Stadion Utama Gelora Bung Karno, \nJl. Pintu Satu Senayan, Gelora, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3118, '[\"5\"]', '[\"7\"]', 2, 'Menghadiri Resepsi Pernikahan Kenneth Margo Ghozali dan Cynthia Sumadi', '2023-06-24', '18:00:00', 'Astor Ballroom, The St. Regis Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3119, '[\"5\"]', '[\"10\", \"17\"]', 2, 'Menghadiri Resepsi Pernikahan Valencia Tanoe Sudibyo dan Kevin Sanjaya', '2023-06-24', '19:00:00', 'Hotel Park Hyatt, Jln. Kebon Sirih No. 17-19, Kec Menteng, Kota Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3120, '[\"7\"]', '[\"17\"]', 1, 'Keberangkatan ke Barcelona dalam rangka kunjungan kerja', '2023-06-24', '18:45:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3121, '[\"7\"]', '[\"17\"]', 1, 'Keberangkatan ke Barcelona dalam rangka kunjungan kerja', '2023-06-25', '18:45:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3122, '[\"1\", \"5\", \"6\"]', '[\"2\"]', 1, 'Keberangkatan ke Malang, Provinsi Jawa Timur dalam rangka kunjungan kerja', '2023-06-26', '07:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3123, '[\"5\"]', '[\"18\"]', 1, 'Ketibaan dari Surabaya, Provinsi Jawa Timur dalam rangka kunjungan kerja', '2023-06-26', '21:00:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3124, '[\"1\", \"6\"]', '[\"18\"]', 1, 'Ketibaan dari Malang, Provinsi Jawa Timur dalam rangka kunjungan kerja', '2023-06-27', '10:40:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3125, '[\"3\"]', '[\"2\", \"17\"]', 1, 'Ketibaan dari Dubai, Uni Emirat Arab', '2023-06-27', '15:40:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3126, '[\"3\"]', '[\"2\", \"3\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-06-28', '08:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3127, '[\"3\"]', '[]', 1, 'Ketibaan dari Surabaya, Provinsi Jawa Timur', '2023-06-28', '14:00:00', '', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3128, '[\"3\"]', '[\"18\"]', 1, 'Keberangkatan ke Singapura', '2023-06-30', '09:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3129, '[\"5\", \"6\"]', '[\"5\", \"13\"]', 2, 'Menghadiri acara Upacara dan Syukuran Hari Bhayangkara ke-77', '2023-07-01', '15:30:00', 'Stadion Utama Gelora Bung Karno, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3130, '[\"1\", \"5\", \"6\"]', '[\"7\", \"17\"]', 2, 'Menghadiri acara pernikahan Debby Pramestya Putri & Nurul Farouq Fadillah', '2023-07-02', '18:00:00', 'The Grand Ballroom, Hotel Mulia Senayan, Jl. Asia Afrika, Senayan, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3131, '[\"3\"]', '[\"13\"]', 1, 'Ketibaan dari Singapura', '2023-07-03', '14:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3132, '[\"1\"]', '[\"4\"]', 2, 'Menghadiri Sidang Kabinet Paripurna', '2023-07-03', '09:00:00', 'Istana Kepresidenan Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3133, '[\"8\"]', '[\"18\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-07-03', '19:00:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3134, '[\"6\"]', '[\"2\"]', 1, 'Keberangkatan ke Provinsi Bali dalam rangka kunjungan kerja', '2023-07-04', '09:20:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3135, '[\"6\"]', '[\"13\"]', 1, 'Ketibaan dari Provinsi Bali dalam rangka kunjungan kerja', '2023-07-07', '14:30:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3136, '[\"1\"]', '[\"7\"]', 2, 'Menghadiri Resepsi Pernikahan dr. Salshabila La Rose Puspita dan dr. Mohammad Kasyful Haq', '2023-07-09', '19:00:00', 'Birawa Assembly Hall, Hotel Bidakara Jakarta, Jl. Gatot Subroto No. Kav. 71-73, Menteng Dalam, Tebet, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3137, '[\"7\"]', '[\"3\"]', 1, 'Ketibaaan dari Athena, Yunani dalam rangka kunjungan kerja', '2023-07-09', '21:30:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3138, '[\"3\"]', '[\"18\"]', 1, 'Keberangkatan ke Bandung, Provinsi Jawa Barat', '2023-07-11', '08:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3139, '[\"3\"]', '[\"3\"]', 1, 'Ketibaan dari Bandung, Provinsi Jawa Barat', '2023-07-11', '16:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3140, '[\"6\"]', '[\"2\", \"13\"]', 1, 'Keberangkatan ke Shanghai Republik Rakyat Tiongkok dalam rangka kunjungan kerja', '2023-07-11', '19:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3141, '[\"1\"]', '[\"3\", \"8\"]', 2, 'Menghadiri Pelantikan Menteri dan Wakil Menteri Kabinet Indonesia Maju Sisa Masa Jabatan Tahun 2019- 2-24 dan Anggota Dewan Pertimbangan Presiden oleh Presiden Republik Indonesia', '2023-07-17', '09:00:00', 'Istana Negara, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3142, '[\"3\"]', '[\"4\"]', 1, 'Keberangkatan ke Bandung, Provinsi Jawa Barat', '2023-07-17', '09:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3143, '[\"3\"]', '[\"13\"]', 1, 'Ketibaan dari Bandung, Provinsi Jawa Barat', '2023-07-17', '12:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3144, '[\"3\"]', '[\"13\"]', 1, 'Keberangkatan ke Singapura', '2023-07-17', '15:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3145, '[\"8\"]', '[\"18\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Barat', '2023-07-19', '10:00:00', 'Bandara Soekarno-Hatta, Tangerang Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3146, '[\"2\"]', '[\"17\"]', 1, 'Keberangkatan ke Surakarta, Provinsi Jawa Tengah', '2023-07-19', '10:30:00', 'Bandara Soekarno-Hatta, Tangerang Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3147, '[\"3\"]', '[\"13\"]', 1, 'Ketibaan dari Singapura', '2023-07-19', '16:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3148, '[\"7\"]', '[\"13\"]', 1, 'Keberangkatan ke Semarang, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2023-07-22', '15:05:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3149, '[\"7\"]', '[\"13\"]', 1, 'Ketibaan dari Semarang, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2023-07-23', '16:50:00', 'Bandara Soekarno - Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3150, '[\"2\"]', '[\"17\"]', 1, 'Keberangkatan ke Seoul, Korea', '2023-07-23', '21:30:00', 'Bandara Soekarno - Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3151, '[\"6\"]', '[\"2\", \"3\"]', 1, 'Ketibaan dari Kamboja', '2023-07-24', '17:35:00', 'Bandara Soekarno - Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3152, '[\"6\"]', '[\"2\"]', 1, 'Keberangkatan ke Palembang, Provinsi Sumatera Selatan', '2023-07-28', '15:40:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3153, '[\"6\"]', '[\"3\"]', 1, 'Ketibaan dari Palembang, Provinsi Sumatera Selatan', '2023-07-29', '10:35:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3154, '[\"8\"]', '[\"2\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-07-29', '10:00:00', 'Bandara Soekarno-Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3155, '[\"3\"]', '[\"2\"]', 1, 'Keberangkatan ke Singapura', '2023-07-30', '11:15:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3156, '[\"1\", \"5\"]', '[\"9\", \"17\"]', 2, 'Menghadiri Pengukuhan Apindo Masa Bhakti 2023 s.d. 2028', '2023-07-31', '15:00:00', 'Grand Ballroom, Hotel Kempinski, Jl. M.H. Thamrin No.1 Menteng, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3157, '[\"6\"]', '[\"17\", \"9\"]', 1, 'Keberangkatan ke Padang, Provinsi Sumatera Barat dalam rangka kunjungan kerja', '2023-08-01', '12:50:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3158, '[\"2\"]', '[\"13\", \"5\"]', 1, 'Ketibaan dari Seoul, Korea Selatan', '2023-08-01', '15:35:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3159, '[]', '[\"17\"]', 2, 'Menghadiri acara Zikir dan Doa Kebangsaan', '2023-08-01', '19:00:00', 'Istana Merdeka, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3160, '[\"5\"]', '[\"7\", \"13\"]', 2, 'Menghadiri Acara Gelar Batik Nusantara 2023', '2023-08-02', '10:00:00', 'Area Pulau Satu, SPARK Senayan Park, Jl. Gerbang Pemuda No.3, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45');
INSERT INTO `pelayanan_keprotokolan` (`id_pelayanan`, `id_anggota`, `id_petugas`, `id_jenis_pelayanan`, `nama_kegiatan`, `tanggal_kegiatan`, `waktu`, `tempat`, `file_path`, `created_by`, `updated_by`, `is_seen_by_superadmin`, `created_at`, `updated_at`) VALUES
(3161, '[\"5\"]', '[\"18\"]', 2, 'Menghadiri Gladi Bersih acara Istana Berkebaya', '2023-08-05', '15:00:00', 'Depan Istana Merdeka, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3162, '[\"5\"]', '[\"7\"]', 2, 'Menghadiri Resepsi Pernikahan Raznan Malik dan Cindy P. Hutagaol', '2023-08-05', '18:30:00', 'Hotel Mulia Senayan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3163, '[\"5\"]', '[\"18\"]', 2, 'Menghadiri acara Istana Berkebaya', '2023-08-06', '15:30:00', 'Depan Istana Merdeka, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3164, '[\"6\"]', '[\"7\", \"4\"]', 1, 'Ketibaan dari Kuala Lumpur, Malaysia', '2023-08-07', '15:05:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3165, '[\"5\", \"7\"]', '[\"5\", \"13\"]', 2, 'Menghadiri acara 58th National Day of The Republic of Singapore', '2023-08-07', '19:00:00', 'Grand Ballroom, Shangri-La Hotel,\nJl. Jenderal Sudirman No. Kav. 1, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3166, '[\"7\"]', '[\"6\"]', 2, 'Pertemuan dengan Bapak Budi Karya Sumadi, Menteri Perhubungan Republik Indonesia', '2023-08-08', '10:00:00', 'Kementerian Perhubungan RI, Jalan Medan Merdeka Barat No. 8, Jakarta Pusat 10110', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3167, '[\"7\"]', '[\"8\"]', 2, 'Pertemuan dengan Prof. Yasonna Hamonangan Laoly, Menteri Hukum dan Hak Asasi Manusia Indonesia', '2023-08-08', '11:00:00', 'Kementerian Hukum dan Hak Asasi Manusia, Jalan Rasuna Said Kav 6-7 Kuningan, Jakarta Selatan,\nDKI Jakarta 12940', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3168, '[\"7\"]', '[\"18\"]', 2, 'Pertemuan dengan Dr. H. Erick Thohir, B.A., M.B.A., Menteri BUMN Republik Indonesia', '2023-08-08', '15:00:00', 'Kementerian BUMN RI, Jalan Medan Merdeka Selatan No.13, RT.11/RW.2, Gambir, Kecamatan Gambir, Jakarta Pusat 10110', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3169, '[\"1\"]', '[\"13\"]', 5, 'Menghadiri Sidang Kabinet Paripurna dengan topik \"Nota Keuangan dan Rancangan Anggaran Pendapatan dan Belanja Negara (RAPBN) Thaun Anggaran 2024\"', '2023-08-09', '03:00:00', 'Istana Negara', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3170, '[\"3\"]', '[\"18\"]', 1, 'Ketibaan dari Singapura', '2023-08-11', '09:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3171, '[\"8\"]', '[\"17\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-08-11', '19:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3172, '[\"9\"]', '[\"17\"]', 2, 'Menghadiri acara pernikahan Raihan Pradhana & Fiandra Azzahra', '2023-08-13', '18:30:00', 'Hutan Kota Plataran Senayan, Jl. Jendral Sudirman No. 54-55, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3173, '[\"5\"]', '[\"10\"]', 2, 'Menghadiri acara pernikahan Austin Wanandi & Brenda Ongko', '2023-08-13', '19:30:00', 'Grand, Ballroom, Hotel Raffles Lt. 11, Jl. Prof. Dr Satrio, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3174, '[\"2\"]', '[\"2\"]', 3, 'Audiensi kepada Presiden RI', '2023-08-14', '15:30:00', 'Istana Merdeka', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3175, '[\"2\"]', '[\"18\"]', 2, 'Audiensi dengan Menko Polhukam RI', '2023-08-14', '18:00:00', 'Jl. Denpasar Raya No. C3/9, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3176, '[\"8\"]', '[\"13\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-08-14', '19:00:00', 'Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3177, '[\"2\"]', '[\"18\", \"17\"]', 1, 'Keberangkatan ke Seoul, Korea Selatan', '2023-08-15', '23:15:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3178, '[\"3\"]', '[\"3\"]', 1, 'Keberangkatan ke Singapura', '2023-08-16', '09:00:00', 'Bandara Soekarno-Hatta, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3179, '[\"1\", \"6\", \"7\"]', '[\"13\", \"8\", \"7\"]', 2, 'Menghadiri acara Pidato Presiden RI dalam Sidang Tahunan MPR RI Tahun 2023 tentang Penyampaian Laporan Kinerja Lembaga-Lembaga Negara dan Pidato Kenegaraan Presiden RI dalam Sidang Bersama DPR RI DAN DPD RI dalam Rangka HUT ke-78 Kemerdekaan RI Tahun 2023', '2023-08-16', '09:30:00', 'Ruang Rapat Paripurna, Gedung Nusantara MPR/DPR/DPD RI,\nJl. Jend. Gatot Subroto No.6,\nJakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3180, '[\"8\"]', '[\"4\"]', 1, 'Ketibaan dari Surabaya, Provinsi Jawa Timur', '2023-08-16', '11:35:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3181, '[]', '[\"13\", \"8\", \"7\"]', 2, 'Menghadiri acara Laporan Ketua DPR RI dalam rangka Pembukaan Masa Persidangan I, Tahun Sidang 2023-2024 dan Pidato Kenegaraan Presiden RI dalam rangka Penyampaian RUU tentang APBN Tahun Anggaran 2024 disertai Nota Keuangan dan Dokumen Pendukungnya', '2023-08-16', '13:30:00', 'Ruang Rapat Paripurna, Gedung Nusantara MPR/DPR/DPD RI,\nJl. Jend. Gatot Subroto No.6,\nJakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3182, '[\"1\", \"5\", \"6\", \"7\", \"8\", \"9\"]', '[]', 2, 'Menghadiri Upacara Peringatan Ke-78 Detik-Detik Proklamasi Kemerdekaan Republik Indonesia', '2023-08-17', '10:00:00', 'Halaman Istana Merdeka', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3183, '[\"1\"]', '[]', 2, 'Menghadiri Upacara Penurunan Bendera Sang Merah Putih', '2023-08-17', '17:00:00', 'Halaman Istana Merdeka', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3184, '[\"8\"]', '[\"2\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-08-18', '17:10:00', 'Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3185, '[\"5\", \"7\"]', '[\"2\", \"5\"]', 2, 'Menghadiri Undangan Pernikahan Rani Saputri dengan Figur Humani', '2023-08-19', '11:00:00', 'Panti Prajurit, Balai Sudirman, Jalan Saharjo No.268, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3186, '[\"6\"]', '[\"6\"]', 2, 'Pertemuan dengan Menteri Perdagangan Kanada', '2023-08-19', '12:00:00', 'Ruang Pertemuan di Kediaman Bapak H.R. Agung Laksono,\nJl. Cipinang Cempedak II No. 23,\nJakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3187, '[\"7\"]', '[\"3\"]', 1, 'Keberangkatan ke Yogyakarta, Provinsi DI Yogyakarta dalam rangka kunjungan kerja', '2023-08-19', '12:45:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3188, '[\"9\"]', '[\"3\"]', 2, 'Menghadiri Undangan Pernikahan Muhammad Luthfi Djalil & Quetina Meilina Agata', '2023-08-19', '18:30:00', 'Hotel Bidakara, Birawa Assembly Hall, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3189, '[\"3\"]', '[\"2\"]', 1, 'Ketibaan dari Singapura', '2023-08-20', '14:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3190, '[\"1\"]', '[\"5\"]', 2, 'Menghadiri Undangan Pernikahan Azzahra Almadelia Rinaldi & Lusty Maulana', '2023-08-20', '19:00:00', 'Birawa Assembly Hall, Hotel Bidakara, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3191, '[\"7\"]', '[\"17\"]', 1, 'Ketibaan dari Yogyakarta, Provinsi DI Yogyakarta dalam rangka kunjungan kerja', '2023-08-21', '11:50:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3192, '[\"1\"]', '[\"4\"]', 2, 'Melakukan Taping Konten Video Siniar (Podcast)', '2023-08-21', '13:00:00', 'Loox Studio, Grand Slipi Tower Lt. 5, Jl. S. Parman Kav. 22 - 24 Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3193, '[\"6\"]', '[\"2\"]', 1, 'Keberangkatan ke Bandar Lampung, Provinsi Lampung dalam rangka kunjungan kerja', '2023-08-22', '15:40:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3194, '[\"6\"]', '[\"4\"]', 1, 'Ketibaan dari Bandar Lampung, Provinsi Lampung dalam rangka kunjungan kerja', '2023-08-23', '14:35:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3195, '[\"5\"]', '[\"7\", \"6\"]', 2, 'Menghadiri acara \"Dialog Ekonomi Dewan Penasihat Kadin Indonesia mengenai Situasi dan Perkembangan Ekonomi Global dan Domestik 2023\"', '2023-08-23', '15:00:00', 'Menara Kadin Indonesia, lt.29', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3196, '[\"7\"]', '[\"9\"]', 2, 'Menghadiri acara Seminar Ekonomi Syariah dengan tema \"Penguatan Pengembangan Ekosistem Digital Ekonomi Syariah Indonesia\"', '2023-08-23', '15:00:00', 'Pos Bloc Jakarta, Jl. Pos No. 2,\nPasar Baru Kecamatan Sawah Besar, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3197, '[\"3\"]', '[\"3\"]', 1, 'Ketibaan dari Singapura', '2023-08-23', '17:10:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3198, '[\"3\"]', '[\"17\"]', 1, 'Keberangkatan ke Singapura', '2023-08-25', '09:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3199, '[\"3\"]', '[\"13\"]', 1, 'Ketibaan dari Singapura', '2023-08-28', '09:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3200, '[\"1\"]', '[\"17\"]', 1, 'Keberangkatan ke Semarang, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2023-08-28', '17:25:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3201, '[\"1\"]', '[]', 1, 'Ketibaan dari Semarang, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2023-08-29', '16:40:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3202, '[\"1\"]', '[\"17\"]', 1, 'Keberangkatan ke Singapura', '2023-08-30', '05:25:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3203, '[\"5\"]', '[\"6\", \"7\"]', 2, 'Menghadiri Upacara Penandatanganan Mitra Usaha Konservasi Green Mangrove dengan Program Adaptasi dan Mitigasi Perubahan Iklim di Pemalang, Jawa Tengah', '2023-08-30', '15:30:00', 'Ruang Tulip 123 Lt. 3, Hotel Swiss-Bel Residences, Rasuna Epicentrum, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3204, '[\"8\"]', '[\"17\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-08-30', '17:00:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3205, '[]', '[\"18\"]', 2, 'Menghadiri Bineka Fest 2023 \"Katalisator Perekat Kebinekaan\"', '2023-08-30', '19:30:00', 'Pos Bloc, Jl. Pos No. 2, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3206, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2002-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3207, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2002-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3208, '[\"7\"]', '[\"6\", \"8\"]', 1, 'Ketibaan dari Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2023-09-01', '12:00:00', 'Bandara Halim Perdana Kusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3209, '[\"6\"]', '[\"2\"]', 2, 'Pertemuan Tertutup dengan Menteri Pertahanan', '2023-09-01', '13:00:00', 'Kediaman Menteri Pertahanan, Hambalang, Kabupaten Bogor.', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3210, '[\"1\"]', '[\"17\"]', 1, 'Ketibaan dari Singapura', '2023-09-01', '13:10:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3211, '[\"6\"]', '[\"7\"]', 2, 'Pertemuan dengan beberapa pihak', '2023-09-01', '19:00:00', 'Kediaman Bapak Agung Laksono, Jl. Cipinang Cempedak I No. 23, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3212, '[\"2\"]', '[\"3\", \"4\"]', 1, 'Ketibaan dari Seoul, Korea Selatan', '2023-09-01', '20:04:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3213, '[\"5\"]', '[\"10\"]', 2, 'Menghadiri resepsi pernikahan Emir Adiputra Purbo dan Dhinda Tatyana Suherto', '2023-09-02', '13:00:00', 'Plataran Dharmawangsa, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3214, '[\"5\"]', '[\"4\"]', 2, 'Menghadiri Gala Dinner Penganugerahan AWEN Award 2023', '2023-09-02', '18:30:00', 'JW Marriot Hotel, Mega Kuningan, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3215, '[\"3\"]', '[\"13\"]', 1, 'Keberangkatan ke Singapura', '2023-09-04', '08:00:00', 'Bandara Halim Perdana Kusuma Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3216, '[\"2\"]', '[\"2\", \"6\"]', 2, 'Menghadiri ASEAN Business & Investment Summit 2023 ', '2023-09-04', '15:00:00', 'The Sultan Hotel, Jl. Gatot Subroto, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3217, '[\"2\"]', '[\"9\", \"10\"]', 2, 'Menghadiri ASEAN Business Award & Gala Dinner 2023 ', '2023-09-04', '19:15:00', 'Hotel Ritz Carlton, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3218, '[\"2\"]', '[\"8\"]', 2, 'Menghadiri ASEAN Summit Opening Ceremony', '2023-09-05', '08:00:00', 'Jakarta Convention Center,\nJl. Gatot Subroto No.1, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3219, '[\"2\"]', '[\"13\"]', 2, 'Menghadiri Opening of ASEAN-Indo-Pacific Forum', '2023-09-05', '12:00:00', 'Ballroom 2 and 3, Hotel Mulia Senayan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3220, '[\"2\"]', '[\"18\"]', 2, 'Penyambutan Presiden Korea Selatan Yoon Suk-Yeol ke Indonesia', '2023-09-05', '15:00:00', 'VIP Room Bandara Soekarno Hatta,\nTangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3221, '[\"2\"]', '[\"2\"]', 3, 'Audiensi kepada Presiden RI', '2023-09-05', '19:00:00', 'Istana Merdeka', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3222, '[\"2\"]', '[\"13\"]', 2, 'Menghadiri ASEAN Indo Pacific Forum', '2023-09-06', '00:00:00', 'Hotel Mulia', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3223, '[\"2\"]', '[]', 2, 'Pertemuan dengan Korea Zinc', '2023-09-06', '10:30:00', '', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3224, '[\"2\"]', '[]', 2, 'Pertemuan dengan KT&G', '2023-09-06', '13:30:00', '', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3225, '[\"2\"]', '[\"10\"]', 2, 'Menghadiri Korea - ASEAN Artificial intelligence Youth Festa', '2023-09-06', '16:00:00', 'Telkom Landmark', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3226, '[\"2\"]', '[\"4\"]', 2, 'Menghadiri Gala Dinner ASEAN', '2023-09-06', '19:00:00', 'Hutan Kota by Plataran', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3227, '[\"2\"]', '[\"4\"]', 2, 'Menghadiri Korea Business Roundtable', '2023-09-07', '16:30:00', 'The Langham, Sudirman Central Business District 8 , Senayan, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3228, '[\"2\"]', '[\"17\"]', 2, 'Penyambutan Kunjungan Kenegaraan Presiden Korea Selatan Yoon Suk Yeol', '2023-07-08', '07:30:00', 'Istana Merdeka, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3229, '[\"2\"]', '[\"2\"]', 2, 'Pelepasan Kepulangan Presiden Korea Selatan Yoon Suk Yeol', '2023-07-08', '11:00:00', 'VIP Room Bandara Soekarno Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3230, '[\"2\"]', '[\"5\"]', 2, 'Pertemuan dengan Menteri Investasi/Kepala BKPM dan LG International', '2023-07-08', '15:00:00', 'Kantor Kementerian Investasi,\nJl. Jend. Gatot Subroto, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3231, '[\"5\"]', '[\"9\"]', 2, 'Menghadiri Peringatan Hari Olahraga Nasional XL Tahun 2023', '2023-09-09', '19:30:00', 'GOR Velodrome Rawamangun, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3232, '[\"2\"]', '[\"3\"]', 1, 'Keberangkatan Seoul, Korea Selatan', '2023-09-09', '21:45:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3233, '[\"5\"]', '[\"17\"]', 2, 'Menghadiri acara Syukuran 14 Tahun Perempuan Untuk Negeri', '2023-09-10', '16:00:00', 'Tugu Kuntskring Palais, Jl. Teuku Umar No. 1, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3234, '[\"7\"]', '[\"5\"]', 2, 'Menghadiri \"A Charity Concert a Special Evening With Tantowi Yahya\"', '2023-09-10', '19:00:00', 'Ballroom Djakarta Theatre', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3235, '[\"3\"]', '[\"4\"]', 1, 'Keberangkatang ke Hong Kong, Tiongkok', '2023-09-11', '08:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3236, '[\"6\"]', '[\"2\"]', 1, 'Keberangkatan ke Denpasar, Provinsi Bali, dalam rangka kunjungan kerja', '2023-09-11', '09:20:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3237, '[\"5\"]', '[\"18\"]', 2, 'Melakukan Pengumpulan Data dan Informasi', '2023-09-11', '15:00:00', 'Taman Mini Indonesia Indah', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3238, '[\"1\"]', '[\"8\"]', 2, 'Menghadiri Syukuran Peringatan Ulang Tahun ke -63 PEPABRI tahun 2023', '2023-09-12', '10:00:00', 'Wisma Elang Laut, Jl. Diponegoro No.48, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3239, '[\"7\"]', '[\"6\", \"7\"]', 2, 'Menghadiri acara \"Indonesia Energy & Engineering Charity Golf Tournament dan Pameran Internasional Indonesia Energy & Engineering Series 2023\'', '2023-09-13', '09:30:00', 'Jakarta International Expo, Kemayoran, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3240, '[\"6\"]', '[\"3\"]', 1, 'Ketibaan dari Denpasar, Provinsi Bali dalam rangka kunjungan kerja', '2023-09-13', '14:30:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3241, '[\"3\"]', '[\"3\"]', 1, 'Ketibaan dari Hongkong, Republik Rakyat Tiongkok', '2023-09-13', '15:30:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3242, '[\"5\"]', '[\"18\"]', 2, 'Menghadiri acara Launching dan Sponsor Gathering \"Pesparani Katolik Tingkat Nasional III Tahun 2023 - DKI Jakarta\"', '2023-09-13', '18:00:00', 'Ballroom JS Luwansa, Jl. H.R. Rasuna Said, No. 22, Kuningan, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3243, '[]', '[\"17\"]', 1, 'Keberangkatan ke Provinsi Lampung dalam rangka kunjungan kerja', '2023-09-15', '06:30:00', 'Bandara Soekarno Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3244, '[]', '[\"17\"]', 1, 'Ketibaan dari Provinsi Lampung dalam rangka kunjungan kerja', '2023-09-15', '15:00:00', 'Bandara Soekarno Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3245, '[\"7\"]', '[\"3\"]', 2, 'Menghadiri pertemuan dengan beberapa pihak', '2023-09-16', '09:30:00', 'Hotel Salak The Heritage, Bogor', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3246, '[\"1\"]', '[\"8\", \"10\"]', 2, 'Menghadiri resepsi pernikahan Rani dan Haykal', '2023-09-17', '13:00:00', 'Hotel Royal Kuningan,\nJl. Kuningan Persada Kav. 2 Guntur,\nJakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3247, '[\"7\"]', '[\"18\"]', 1, 'Keberangkatan ke Singapura', '2023-09-19', '11:45:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3248, '[\"6\"]', '[\"8\"]', 2, 'Rapat Internal Tim Kajian TKDN', '2023-09-19', '15:30:00', 'Kantor Bapak H.R. Agung Laksono, Jl. Hang Lekui, Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3249, '[\"8\"]', '[\"17\"]', 1, 'Keberangkatan ke Surabaya', '2023-09-19', '19:00:00', 'Bandara Soekarno', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3250, '[\"3\"]', '[\"17\"]', 1, 'Keberangkatan ke Singapura', '2023-09-21', '12:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3251, '[\"7\"]', '[\"13\"]', 1, 'Ketibaan dari Singapura', '2023-09-21', '13:20:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3252, '[\"1\"]', '[\"8\"]', 2, 'Menghadiri resepsi pernikahan Prabhinder Singh dan Riftiven Kaur', '2023-09-24', '11:30:00', 'Le Méridien Jakarta,\nJl. Jenderal Sudirman No.Kav 18 - 20,\nJakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3253, '[\"3\"]', '[\"4\"]', 1, 'Ketibaan dari Singapura', '2023-09-24', '14:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3254, '[\"6\"]', '[\"17\"]', 2, 'Menghadiri undangan acara Pernikahan Yedi dan Nauli', '2023-09-24', '18:30:00', 'Jakarta Convention Center (JCC), Senayan, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3255, '[\"1\"]', '[\"7\"]', 2, 'Menghadiri Undangan Upacara Peringatan Hari Kesaktian Pancasila', '2023-10-01', '08:00:00', 'Monumen Pancasila Sakti, Jl. Raya Pondok Gede, Lubang Buaya,\nJakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3256, '[\"5\"]', '[\"18\"]', 2, 'Menghadiri acara Istana Berbatik', '2023-10-01', '19:10:00', 'Area Depan Istana Merdeka, Jl. Medan Merdeka Utara, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3257, '[\"1\", \"5\", \"6\", \"7\"]', '[\"3\", \"5\", \"17\", \"8\"]', 2, 'Menghadiri Peresmian Kereta Cepat Jakarta-Bandung', '2023-10-02', '08:00:00', 'Stasiun Kereta Cepat Halim, Halim Perdanakusuma, Jakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3258, '[\"3\"]', '[\"4\"]', 1, 'Keberangkatan ke Balikpapan, Provinsi Kalimantan Timur', '2023-10-03', '08:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3259, '[\"3\"]', '[\"13\"]', 1, 'Ketibaan dari Balikpapan, Provinsi Kalimantan Timur', '2023-10-03', '17:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3260, '[\"6\"]', '[\"2\"]', 1, 'Keberangkatan ke Bandar Lampung, Provinsi Lampung', '2023-10-03', '14:30:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3261, '[\"1\"]', '[\"17\"]', 2, 'Menghadiri Komsos Eksekutif dan Gala Dinner dalam rangka Peringatan HUT ke-78 TNI Tahun 2023', '2023-10-03', '19:00:00', 'Gd. Balai Sudirman (Panti Prajurit), Jl. Dr. Saharjo, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3262, '[\"6\"]', '[\"18\"]', 1, 'Ketibaan dari Bandar Lampung, Provinsi Lampung', '2023-10-04', '14:55:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3263, '[\"1\"]', '[\"8\", \"13\"]', 2, 'Menghadiri Upacara Parade dan Defile dalam rangka Peringatan HUT ke-78 TNI Tahun 2023', '2023-10-05', '08:00:00', 'Lapangan Monas, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3264, '[\"8\"]', '[\"18\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-10-05', '19:00:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3265, '[\"3\"]', '[\"13\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-10-07', '14:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3266, '[\"3\"]', '[\"4\"]', 1, 'Ketibaan dari Surabaya, Provinsi Jawa Timur', '2023-10-08', '14:00:00', 'Bandara Halim Perdana Kusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3267, '[\"1\"]', '[\"3\", \"9\"]', 2, 'Menghadiri Upacara Parade Senja dan Gala Dinner dalam rangka HUT TNI ke-78 Tahun 2023', '2023-10-09', '18:00:00', 'Lapangan Bhinneka Tunggal Ika, Kementerian Pertahanan RI', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3268, '[\"1\"]', '[\"13\"]', 2, 'Menghadiri acara Wisuda Universitas Negeri Jakarta Program Diploma, Sarjana, Magister dan Doktor Tahun Akademik 2022 / 2023', '2023-10-11', '08:00:00', 'Sentul International Convention Center (SICC), Sentul City, Bogor', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3269, '[\"5\"]', '[\"5\"]', 2, 'Melakukan pertemuan dengan Loox Intermedia Visual', '2023-10-11', '15:00:00', 'Grand Slipi Tower Lt.5, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3270, '[\"6\"]', '[\"4\"]', 1, 'Keberangkatan ke Singapura', '2023-10-12', '11:45:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3271, '[\"9\"]', '[\"3\"]', 1, 'Keberangkatan ke Palembang, Provinsi Sumatera Selatan', '2023-10-12', '18:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3272, '[\"5\"]', '[\"8\", \"7\"]', 2, 'Menghadir acara Farewell to H.E. Mr. Sung Y. Kim', '2023-10-12', '18:30:00', 'The Residence ONFIVE, Grand Hyatt, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3273, '[\"3\"]', '[\"18\"]', 1, 'Keberangkatan ke Singapura', '2023-10-13', '07:55:00', 'Bandara Soekarno Hatta, Tangerang Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3274, '[\"8\"]', '[\"2\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-10-13', '19:00:00', 'Bandara Soekarno Hatta, Tangerang Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3275, '[\"6\"]', '[\"17\", \"13\"]', 1, 'Ketibaan dari Singapura', '2023-10-14', '16:45:00', 'Bandara Soekarno-Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3276, '[\"1\"]', '[\"6\"]', 2, 'Menghadiri acara Ibadah Pengucapan Syukur Hari Ulang Tahun ke-79 Brigjen (Purn.) Pt.Em. Djadiate Ginting Munthe dan Peresmian Gedung \"Rudang Convention Hall\"', '2023-10-15', '09:00:00', 'Gedung Rudang Convention Hall, Jatisampurna, Bekasi, Jawa Barat', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3277, '[\"9\"]', '[\"3\"]', 1, 'Ketibaan dari Palembang, Provinsi Sumatera Selatan', '2023-10-15', '10:50:00', 'Bandara Soekarno Hatta, Tangerang Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3278, '[\"3\"]', '[\"17\"]', 1, 'Ketibaan dari Singapura', '2023-10-15', '13:15:00', 'Bandara Soekarno Hatta, Tangerang Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3279, '[\"7\"]', '[\"7\"]', 2, 'Menghadiri acara Rakernas Perempuan Indonesia Maju, Seminar Nasional, dan Pameran UMKM', '2023-10-17', '10:00:00', 'Swissotel Jakarta PIK Avenue,\nJl. Pantai Indah Kapuk,\nJakarta Utara 14470', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3280, '[\"3\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah', '2023-10-17', '08:00:00', 'Bandara Halim Perdankusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3281, '[]', '[\"13\"]', 1, 'Ketibaan dari Solo, Provinsi Jawa Tengan', '2023-10-17', '12:00:00', 'Bandara Halim Perdankusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3282, '[\"3\"]', '[\"13\"]', 1, 'Keberangkatan ke Singapura', '2023-10-20', '09:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3283, '[\"7\"]', '[\"3\"]', 1, 'Keberangkatan ke Singapura', '2023-10-20', '12:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3284, '[\"9\"]', '[\"17\"]', 1, 'Keberangkatan ke Jeddah, Arab Saudi', '2023-10-20', '10:40:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3285, '[\"8\"]', '[\"2\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-10-21', '17:00:00', 'Bandara Soekarno Hatta, Tangerang Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3286, '[\"3\"]', '[\"2\"]', 1, 'Ketibaan dari Singapura', '2023-10-22', '16:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3287, '[\"7\"]', '[\"18\"]', 1, 'Ketibaan dari Singapura', '2023-10-22', '18:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3288, '[\"1\"]', '[\"8\"]', 2, 'Menghadiri resepsi pernikahan Puteri & Wiko', '2023-10-22', '19:00:00', 'Four Seasons Hotel, Jakarta\nJl. Gatot Subroto, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3289, '[\"9\"]', '[\"4\"]', 1, 'Ketibaan dari Jeddah, Arab Saudi', '2023-10-23', '09:00:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3290, '[\"1\"]', '[\"18\"]', 2, 'Menghadiri opening ceremony \"BNI Investor Daily Summit 2023\"', '2023-10-24', '08:00:00', 'Hutan Kota by Plataran Senayan Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:14', '2026-03-25 03:17:45'),
(3291, '[\"7\"]', '[\"3\"]', 2, 'Menghadiri acara pembukaan ASEAN Confederation of Women Organization Forum & Expo bersama 1000 Organisasi Wanita se-Indonesia', '2023-10-24', '09:00:00', 'Exhibition Hall, SMESCO, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3292, '[\"5\"]', '[\"7\", \"9\"]', 2, 'Menghadiri acara Ojo Rungkad', '2023-10-24', '18:30:00', 'Djakarta Theater, Jl. M.H. Thamrin No. 9, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3293, '[\"1\"]', '[\"17\"]', 2, 'Menghadiri acara Serah Terima Jabatan Kasad TA 2023', '2023-10-27', '07:30:00', 'Markas Besar Angkatan Darat,\nJl. Veteran 5, Gambir, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3294, '[\"3\"]', '[\"18\"]', 1, 'Keberangkatan ke Yogyakarta, Provinsi D.I. Yogyakarta', '2023-10-27', '13:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3295, '[\"3\"]', '[\"13\"]', 1, 'Ketibaan dari Yogyakarta, Provinsi D.I. Yogyakarta', '2023-10-27', '17:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3296, '[\"5\"]', '[\"5\", \"6\"]', 2, 'Menghadiri undangan National Day Celebration Of Czech Republic', '2023-10-27', '19:00:00', 'Hotel Kempinski Indonesia, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3297, '[\"6\"]', '[\"13\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-10-28', '12:45:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3298, '[\"5\"]', '[\"10\"]', 2, 'Menghadiri Puncak Acara Peringatan Hari Sumpah Pemuda (HSP) Ke-95 Tahun 2023', '2023-10-28', '19:30:00', 'Monumen Nasional,\nLapangan Medan Merdeka,\nJakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3299, '[\"7\"]', '[\"6\"]', 2, 'Menghadiri acara deklarasi \"Maluku Voor Ganjar\"', '2023-10-29', '14:00:00', 'Basket Hall, Senayan, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3300, '[\"6\"]', '[\"17\"]', 1, 'Ketibaan dari Surabaya, Provinsi Jawa Timur', '2023-10-29', '17:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3301, '[\"8\"]', '[\"18\"]', 2, 'Melakukan pengambilan video siniar (Podcast) Ruang Wantimpres', '2023-10-30', '13:00:00', 'Loox Studio, Grand Slipi Tower Lt. 5, \nJl. S. Parman Kav. 22-24, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3302, '[]', '[\"13\", \"17\", \"10\"]', 1, 'Keberangkatan ke Balikpapan, Provinsi Kalimantan Timur dalam rangka kunjungan kerja', '2023-10-31', '14:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3303, '[\"3\"]', '[\"17\", \"18\", \"6\"]', 1, 'Ketibaan dari Balikpapan, Provinsi Kalimantan Timur dalam rangka kunjungan kerja', '2023-11-01', '14:30:00', 'Bandara Halim Perdana Kusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3304, '[\"1\", \"5\", \"6\", \"7\", \"8\", \"9\"]', '[]', 1, 'Ketibaan dari Balikpapan, Provinsi Kalimantan Timur dalam rangka kunjungan kerja', '2023-11-01', '15:00:00', '', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3305, '[\"8\"]', '[\"18\"]', 1, 'Keberangkatan ke Surabaya', '2023-11-02', '08:55:00', 'Bandara Soekarno Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3306, '[\"1\"]', '[\"13\"]', 2, 'Menghadiri acara Symposium Geopolitik dan Geostrategis Global Serta Pengaruhnya Terhadap Indonesia Tahun 2023', '2023-11-02', '08:00:00', 'Lapangan Bhinneka Tunggal Ika Kementerian Pertahanan Republik Indonesia', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3307, '[]', '[\"13\"]', 2, 'Menghadiri acara Soekarno Cup Lihat Kampung U17', '2023-11-03', '18:45:00', 'Stadion Utama Gelora Bung Karno, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3308, '[\"1\"]', '[\"17\"]', 1, 'Keberangkatan ke Manado, Provinsi Sulawesi Utara', '2023-11-04', '09:20:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3309, '[\"1\"]', '[\"13\"]', 1, 'Ketibaan dari Manado, Provinsi Sulawesi Utara', '2023-11-05', '10:10:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3310, '[\"6\"]', '[\"3\"]', 1, 'Keberangkatan ke Banjarmasin, Provinsi Kalimantan Selatan', '2023-11-05', '10:30:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3311, '[\"5\"]', '[\"10\", \"9\"]', 2, 'Menghadiri acara resepsi pernikahan M. Rachmat Gobel dan Yasmine Naomi', '2023-11-05', '19:00:00', 'Dian Ballroom, Hotel Raffles,\nJl. Prof. Dr. Satrio, Kav.3\nJakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3312, '[\"6\"]', '[\"18\"]', 1, 'Ketibaan dari Banjarmasin, Provinsi Kalimatan Selatan', '2023-11-06', '10:30:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3313, '[\"8\"]', '[\"17\"]', 1, 'Keberangkatan ke Surabaya', '2023-11-07', '08:55:00', 'Bandara Soekarno Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3314, '[\"9\"]', '[\"3\", \"5\", \"13\", \"18\"]', 2, 'Menghadiri acara Technical Meeting', '2023-11-07', '13:00:00', 'Hotel St. Regis, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3315, '[\"2\"]', '[\"4\"]', 2, 'Melakukan pengambilan video siniar (podcast) Ruang Wantimpes', '2023-11-08', '13:00:00', 'Loox Studio, Gand Slipi Tower 5, Jln. S. Parman, Kav. 22-24 Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3316, '[\"6\"]', '[\"2\"]', 1, 'Keberangkatan ke Surakarta, Provinsi Jawa Tengah', '2023-11-11', '15:15:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3317, '[\"1\"]', '[\"5\"]', 2, 'Menghadiri Resepsi Pernikahan Andri dan Sanny', '2023-11-11', '18:30:00', 'The Langham Jakarta, District 8, SCBD, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3318, '[\"5\"]', '[\"18\"]', 2, 'Menghadiri Resepsi Pernikahan Khalya & Vidi', '2023-11-11', '18:30:00', 'Four Season Jakarta, Jl. Gatot Subroto, Mampang, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3319, '[\"5\"]', '[\"8\"]', 2, 'Menghadiri Acara Temu Kangen Anne Avantie', '2023-11-12', '16:00:00', 'Sarinah Dept. Store, Lantai GF, Jl. M.H Thamrin, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3320, '[\"6\"]', '[\"13\"]', 1, 'Ketibaan dari Surakarta, Provinsi Jawa Tengah', '2023-11-13', '11:55:00', 'Bandara Halim Perdanakusuma Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3321, '[\"1\"]', '[\"9\"]', 2, 'Menghadiri undangan penganugerahan Soedirman Awards bagi Prajurit TNI Teladan Tahun 2023', '2023-11-13', '19:00:00', 'Balai Samudera, Kelapa Gading', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3322, '[\"7\"]', '[\"6\"]', 2, 'Melakukan pertemuan tertutup dengan Laksana Tri Handoko, Kepala BRIN', '2023-11-15', '11:30:00', 'Gedung BPPT II Lantai 24,\nJl. M.H. Thamrin No. 8,\nJakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3323, '[\"7\"]', '[\"18\"]', 2, 'Melakukan pertemuan tertutup dengan Bapak Teten Masduki, Menteri Koperasi dan UKM', '2023-11-15', '13:30:00', 'Jl. H. R. Rasuna Said No.Kav. 3-4, RT.6/RW.7, Kuningan, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3324, '[\"1\", \"5\", \"6\", \"7\", \"9\"]', '[\"2\", \"4\", \"17\", \"9\", \"10\", \"8\"]', 2, 'Menghadiri acara Pisah Sambut bagi Bapak Muhammad Mardiono, Bapak Djan Faridz dan Bapak Gandi Sulistyanto', '2023-11-16', '11:00:00', 'Gedung Priamanaya Djan International, Jl. Talang No.3, Menteng, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3325, '[\"5\"]', '[\"18\", \"17\"]', 2, 'Menghadiri acara Pesta MilenialZ', '2023-11-17', '18:00:00', 'Hall B Jakarta Covention Center, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3326, '[\"9\"]', '[\"13\"]', 1, 'Keberangkatan ke Medan, Provinsi Sumatera Utara dalam rangka kunjungan kerja', '2023-11-18', '07:05:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3327, '[\"5\"]', '[\"7\"]', 2, 'Menghadiri undangan pernikahan Isma Headiyani Fadhil dan Tito Haris Prasetyo', '2023-11-18', '11:30:00', 'Gede Pangrango Main Ballroom, Novotel Bogor Golf Resort dan Convention Center', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3328, '[\"9\"]', '[\"4\"]', 1, 'Ketibaan dari Medan, Provinsi Sumatera Utara dalam rangka kunjungan kerja', '2023-11-19', '12:55:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3329, '[\"9\"]', '[\"3\", \"13\", \"6\"]', 2, 'Menghadiri Gladi Resik acara Pernikahan Pernikahan Rasyad dan Shanna', '2023-11-20', '13:00:00', 'Hotel St. Regis, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3330, '[\"9\"]', '[\"13\"]', 3, 'Audiensi kepada Presiden RI', '2023-11-21', '14:00:00', 'Istana Merdeka, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3331, '[\"1\", \"2\"]', '[\"4\", \"13\"]', 2, 'Menghadiri pelantikan Panglima TNI', '2023-11-22', '08:00:00', 'Istana Negara, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3332, '[\"1\"]', '[\"8\"]', 2, 'Menghadiri Upacara Serah Terima Jabatan Panglima TNI', '2023-11-22', '13:30:00', 'Plaza Mabes TNI, Cilangkap, Jakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3333, '[\"7\"]', '[\"2\"]', 2, 'Menghadiri undangan sebagai Keynote Speaker dalam acara The China Homelife Indonesia Exhibition', '2023-11-23', '09:30:00', 'JIExpo Kemayoran, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3334, '[\"5\"]', '[\"3\"]', 2, 'Menghadiri Acara Pernikahan Paramita Listyasari dan Narendra Archie', '2023-11-25', '11:30:00', 'Silk Bistro, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3335, '[\"1\", \"5\"]', '[\"8\", \"17\"]', 2, 'Menghadiri Resepsi Pernikahan Sheila dan Azmi (Putri dari Bapak Anwar Usman dan Almh Ibu Suhada)', '2023-11-25', '18:30:00', 'Grand Ballroom Shangri - La Hotel Jakarta, Jl. Jend. Sudirman Kav.1 Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3336, '[\"2\"]', '[\"10\"]', 2, 'Menghadiri Resepsi Pernikahan Yosua Ricky Ekajaya dan Claudia Desinta Budiman', '2023-11-25', '19:00:00', 'Grand Ballroom Hotel Ritz Carlton Pacific Place SCBD, Jl. Jend. Sudirman Kav. 52-53, Senayan, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3337, '[\"1\", \"5\", \"6\", \"7\"]', '[\"3\", \"5\", \"13\", \"18\", \"6\"]', 2, 'Menghadiri Resepsi Pernikahan Rasyad dan Shanna (Putri dari Bapak Djan Faridz dan Nini W Faridz)', '2023-11-26', '14:30:00', 'Astor Ballroom, The ST. Regis Hotel Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3338, '[\"2\"]', '[\"17\"]', 1, 'Keberangkatan ke Shanghai, Republik Rakyat Tiongkok dalam rangka kunjungan kerja', '2023-11-26', '23:45:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3339, '[\"5\"]', '[\"9\"]', 2, 'Menghadiri Rapat Pleno Dewan Penasihat menjelang Rapimnas Kadin 2023', '2023-11-27', '14:00:00', 'R. Rapat Mochtar Riady, Menara Kadin Indonesia, Lt. 29 Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3340, '[\"7\"]', '[\"2\"]', 1, 'Ketibaan dari Singapura', '2023-11-27', '16:15:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3341, '[\"6\"]', '[\"4\"]', 1, 'Keberangkatan ke Banjarmasin, Provinsi Kalimantan Selatan', '2023-11-28', '14:25:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3342, '[\"2\"]', '[\"13\"]', 1, 'Ketibaan dari Shanghai, Republik Rakyat Tiongkok dalam rangka kunjungan kerja', '2023-11-28', '22:45:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3343, '[\"7\"]', '[\"2\"]', 2, 'Melakukan pertemuan dengan Loox Intermedia Visual', '2023-11-29', '13:00:00', 'Grand Slipi Tower Lantai 5, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3344, '[\"1\", \"2\"]', '[\"17\"]', 2, 'Menghadiri Pelantikan Kepala Staf Angkatan Darat', '2023-11-29', '14:00:00', 'Istana Negara, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3345, '[\"6\"]', '[\"18\"]', 1, 'Ketibaan dari Banjarmasin, Provinsi Kalimantan Selatan', '2023-11-29', '09:50:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3346, '[\"2\"]', '[\"18\"]', 2, 'Menghadiri dan memberikan sambutan dalam acara \"50th Anniversary of Diplomatic Relations, Korea-Indonesia Economic Cooperation Forum\"', '2023-11-30', '13:00:00', 'Hotel Mulia Senayan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3347, '[\"5\"]', '[\"8\"]', 2, 'Menghadiri RAKERNAS ASITA Tahun 2023 dengan tema \"Kolaborasi dan Sinergi Potensi ASITA Pariwisata Untuk Penguatan dan Pemberdayaan Industri Yang Berkelanjutan\"', '2023-11-30', '14:30:00', 'Wisma Maktour, Jl. Otista Raya No.80, Jakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3348, '[\"1\"]', '[\"4\"]', 2, 'Menghadiri upacara serah terima jabatan Kepala Staf Angkatan Darat', '2023-12-01', '08:00:00', 'Lapangan Mabesad,\nJl. Veteran No. 5, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3349, '[\"8\"]', '[\"13\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-12-02', '05:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3350, '[\"6\"]', '[\"2\"]', 1, 'Keberangkatan ke Medan, Provinsi Sumatera Utara', '2023-12-02', '12:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3351, '[\"1\"]', '[\"5\"]', 2, 'Menghadiri Resepsi Pernikahan Fachri dan Syarifah', '2023-12-02', '19:00:00', 'Puri Ardhiya Garini, Halim Perdana Kusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3352, '[\"2\"]', '[\"9\"]', 2, 'Menghadiri acara Inauguration Night iSWAM (International Seminar & Workshop in Aesthetic Medicine)', '2023-12-02', '19:00:00', 'ICE BSD, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3353, '[\"6\"]', '[\"13\"]', 1, 'Ketibaan dari Medan, Provinsi Sumatera Utara', '2023-12-03', '17:35:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3354, '[\"5\"]', '[\"9\"]', 2, 'Menghadiri acara pernikahan Nitya Paramita Suwandi dan Lettu inf Agung Prasetyo', '2023-12-03', '18:30:00', 'Grand Ballroom, Hotel Mulia, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3355, '[\"1\"]', '[\"6\", \"7\"]', 2, 'Menghadiri Upacara Persemayaman Alm. Letjen TNI (Purn.) Doni Monardo', '2023-12-04', '09:00:00', 'Markas Komando Kopassus Cijantung, Jakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3356, '[\"2\"]', '[\"4\"]', 2, 'Menghadiri Upacara Pemakaman Alm. Letjen TNI (Purn.) Doni Monardo', '2023-12-04', '11:00:00', 'TMP Kalibata, Jl. Raya Kalibata No. 14,\nJakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3357, '[\"2\"]', '[\"18\"]', 2, 'Menghadiri acara Wisuda Prasetiya Mulya', '2023-12-05', '07:55:00', 'Nusantara Hall, ICE BSD City', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3358, '[\"9\"]', '[\"4\"]', 1, 'Keberangkatan ke Beijing, Republik Rakyat Tiongkok', '2023-12-06', '00:15:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3359, '[\"3\"]', '[\"2\"]', 1, 'Keberangkatan ke Singapura', '2023-12-07', '09:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3360, '[\"3\"]', '[\"3\"]', 1, 'Ketibaan dari Singapura', '2023-12-07', '21:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3361, '[\"1\"]', '[\"6\"]', 2, 'Menghadiri Reuni 55 th Andalan Pusziad', '2023-12-10', '10:00:00', 'Jalan, Kesatria II Matraman Raya,\nJakarta Timur', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3362, '[\"1\"]', '[\"7\"]', 2, 'Menghadiri Resepsi Pernikahan Juana & Osa', '2023-12-10', '12:00:00', 'Cerita Rasa Kemang, Jalan Ampera Raya No.9, Cilandak Timur, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3363, '[\"2\"]', '[\"4\"]', 1, 'Keberangkatan ke Semarang, Provinsi Jawa Tengah', '2023-12-10', '11:15:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3364, '[\"1\"]', '[\"8\"]', 5, 'Menghadiri Sidang Kabinet Paripurna dengan topik \"Persiapan Natal Tahun 2023 dan Tahun Baru 2024, Kondisi Perekonomian Terkini, Evaluasi Program dan Kegiatan Tahun 2023\"', '2023-12-11', '14:00:00', 'Istana Negara, Jakarta Pusat', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3365, '[\"2\"]', '[\"2\"]', 1, 'Ketibaan dari Semarang, Provinsi Jawa Tengah', '2023-12-11', '12:40:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3366, '[\"9\"]', '[\"18\"]', 1, 'Ketibaan dari Beijing, Republik Rakyat Tiongkok', '2023-12-11', '22:55:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3367, '[]', '[\"4\"]', 1, 'Ketibaan dari Vietnam', '2023-12-11', '23:25:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3368, '[\"5\"]', '[\"10\", \"18\"]', 2, 'Menghadiri Konferensi Pers dengan tema \"Jamu Menjamu Dunia\"', '2023-12-12', '14:00:00', 'Kedai Jamu Acaraki,\nGrand Indonesia East Mall lt. LG unit 03', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3369, '[]', '[\"13\"]', 1, 'Keberangkatan ke Seoul, Republik Korea dalam rangka kunjungan kerja', '2023-12-12', '23:25:00', 'Bandara Soekarno-Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3370, '[\"6\"]', '[\"4\"]', 2, 'Menghadiri undangan sebagai Keynote Speaker pada acara Deklarasi Persatuan Apoteker Sejahtera Indonesia', '2023-12-14', '09:00:00', 'R. Catalina, Gedung Klub Eksekutif Persada Purnawira Halim', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3371, '[\"6\"]', '[\"13\"]', 1, 'Keberangkatan ke Hong Kong dalam rangka kunjungan kerja', '2023-12-15', '07:25:00', 'Bandara Soekarno Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45');
INSERT INTO `pelayanan_keprotokolan` (`id_pelayanan`, `id_anggota`, `id_petugas`, `id_jenis_pelayanan`, `nama_kegiatan`, `tanggal_kegiatan`, `waktu`, `tempat`, `file_path`, `created_by`, `updated_by`, `is_seen_by_superadmin`, `created_at`, `updated_at`) VALUES
(3372, '[\"7\"]', '[\"17\"]', 2, 'Menghadiri pernikahan IPTU. Prima Andre Rinaldo Azhar, S.Tr.K., dengan Asyifa Dewi, S.E.', '2023-12-16', '18:30:00', 'Nusantara Hall, Indonesia Convention Exhibition (ICE BSD City), Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3373, '[\"7\"]', '[\"3\"]', 2, 'Menghadiri peringatan ke-14 wafatnya K.H. Abdurrahman Wahid', '2023-12-16', '19:00:00', 'Jl. Warung Silah No. 10, Ciganjur,\nJakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3374, '[\"1\"]', '[\"9\"]', 2, 'Menghadiri acara Rapimnas ke-2 Masyarakat Cinta Masjid Indonesia', '2023-12-16', '20:00:00', 'Hotel Atlet Century Park,\nJl. Pintu Satu Senayan, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3375, '[\"1\"]', '[\"6\"]', 2, 'Menghadiri acara HUT Jenderal TNI (Purn.) Agum Gumelar', '2023-12-17', '11:00:00', 'XXI Lounge Plaza Senayan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3376, '[\"6\"]', '[\"2\"]', 1, 'Ketibaan dari Hong Kong dalam rangka kunjungan kerja', '2023-12-18', '22:55:00', 'Bandara Soekarno Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3377, '[\"3\"]', '[\"5\", \"7\"]', 1, 'Keberangkatan ke Singapura', '2023-12-19', '10:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3378, '[]', '[\"3\"]', 1, 'Ketibaan dari Singapura', '2023-12-19', '16:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3379, '[\"2\"]', '[\"17\"]', 1, 'Ketibaan dari Seoul, Republik Korea dalam rangka kunjungan kerja', '2023-12-19', '15:55:00', 'Bandara Soekarno-Hatta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3380, '[\"2\"]', '[\"9\", \"18\"]', 2, 'Menghadiri acara Asia Golf Leaders Forum, Pro-Am Tournament', '2023-12-20', '07:55:00', 'Pondok Indah Golf Course, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3381, '[\"2\"]', '[\"13\"]', 2, 'Menghadiri acara Gala Dinner Asia Golf Leaders Forum', '2023-12-20', '17:00:00', 'Grand Ballroom,\nInterconentinental Pondok Indah, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3382, '[\"9\"]', '[\"17\"]', 1, 'Keberangkatan ke Palembang, Provinsi Sumatera Selatan dalam rangka kunjungan kerja', '2023-12-20', '13:50:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3383, '[\"1\"]', '[\"4\"]', 2, 'Menghadiri acara Reuni KSA-V', '2023-12-21', '12:00:00', 'Resto Padang Sederhana, Jl. Prof. Dr. Satrio, Kuningan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3384, '[\"3\"]', '[\"3\", \"18\"]', 1, 'Keberangkatan ke Tokyo', '2023-12-22', '06:20:00', 'Bandara Soekarno-Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3385, '[]', '[\"13\", \"17\"]', 1, 'Keberangkatan ke Tanjung Pinang, Provinsi Kepualuan Riau', '2023-12-23', '09:20:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3386, '[\"9\"]', '[\"3\"]', 1, 'Ketibaan dari Palembang, Provinsi Sumatera Selatan dalam rangka kunjungan kerja', '2023-12-23', '10:45:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3387, '[\"8\"]', '[\"18\"]', 1, 'Keberangkatan ke Surabaya, Provinsi Jawa Timur', '2023-12-23', '07:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3388, '[\"6\"]', '[\"17\"]', 1, 'Keberangkatan ke Denpasar, Provinsi Bali', '2023-12-28', '09:20:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3389, '[\"3\"]', '[\"2\", \"18\"]', 1, 'Ketibaan dari Tokyo, Jepang', '2023-12-29', '13:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3390, '[\"2\"]', '[]', 1, 'Ketibaan dari Singapura', '2023-12-30', '18:05:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(3391, '\"2\"', '\"4\"', 1, 'Ketibaan dari Seoul, Korea Selatan', '2023-11-04', '15:55:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 04:12:17', '2026-03-25 03:17:45'),
(3392, '[\"2\"]', '[\"4\"]', 1, 'Ketibaan dari Seoul, Korea Selatan', '2023-11-04', '15:55:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-10 04:19:19', '2026-03-25 03:17:45'),
(3393, '[\"9\"]', '[\"18\"]', 2, 'Menghadiri Malam Puncak Hari Perumahan Nasional Tahun 2023', '2023-08-31', '18:00:00', 'Gedung Auditorium Kementerian PUPR, Jl. Pattimura No. 20 Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 04:39:22', '2026-03-25 03:17:45'),
(3394, '[\"7\"]', '[\"4\"]', 1, 'Keberangkatan ke Solo, Provinsi Jawa Tengah dalam rangka kunjungan kerja', '2023-08-31', '09:20:00', 'Bandara Soekarno Hatta, Tangerang', NULL, 1, NULL, 1, '2026-03-10 04:42:46', '2026-03-25 03:17:45'),
(3395, '[\"2\"]', '[\"5\"]', 4, 'MASAK MASAK NASI LEMANG', '2026-03-11', '14:02:00', 'Ruang Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-11 03:36:24', '2026-03-25 03:17:45'),
(3396, '[\"4\"]', '[\"10\"]', 3, 'Masak masak', '2026-03-11', '12:00:00', 'Wantimpres', NULL, 1, NULL, 1, '2026-03-11 03:38:16', '2026-03-25 03:17:45'),
(3397, '[\"6\"]', '[\"18\"]', 4, 'apa aja deh', '2026-03-11', '13:00:00', 'Ruang Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-11 04:34:17', '2026-03-25 03:17:45'),
(3398, '[\"6\", \"2\"]', '[\"18\", \"10\"]', 2, 'Menghadiri bedah buku', '2026-03-13', '13:00:00', 'Hotel kempinski', 'pelayanan-keprotokolan/0G0MsBQP3ffNvJo3NUu1tR6EOZJnSfdUIy1UJQTo.xlsx', 1, NULL, 1, '2026-03-13 03:59:49', '2026-03-25 03:17:45'),
(3399, '[\"5\"]', '[\"5\", \"15\", \"2\", \"6\", \"16\"]', 4, 'Melakukan audiensi kepada Presiden RI', '2026-03-14', '15:00:00', 'Hotel Mercure', NULL, 1, NULL, 1, '2026-03-13 04:00:48', '2026-03-25 03:17:45'),
(3400, '[\"5\"]', '[]', 1, 'Keberangkatan ke Bandung, Provinsi Jawa Barat', '2026-03-13', '12:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 2, NULL, 1, '2026-03-13 04:53:07', '2026-03-25 03:17:45'),
(3401, '[\"7\"]', '[]', 1, 'Keberangkatan ke DI Yogyakarta dalam rangka Kunjungan Kerja', '2026-03-13', '13:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 2, NULL, 1, '2026-03-13 05:13:07', '2026-03-25 03:17:45'),
(3402, '[\"3\"]', '[\"3\", \"15\"]', 1, 'Keberangkatan ke Hong Kong dalam rangka Kunjungan Kerja', '2024-03-13', '12:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-13 05:32:05', '2026-03-25 03:17:45'),
(3403, '[\"7\"]', '[\"8\"]', 1, 'Keberangkatan ke DI Yogyakarta dalam rangka Kunjungan Kerja', '2024-03-13', '13:00:00', 'Bandara Soekarno Hatta, Tangerang, Banten', NULL, 1, NULL, 1, '2026-03-13 05:36:28', '2026-03-25 03:17:45'),
(3404, '[\"1\"]', '[]', 2, 'ASEAN Summit', '2026-03-16', '14:02:00', 'Wantimpres', NULL, 2, NULL, 1, '2026-03-16 15:09:21', '2026-03-25 03:17:45'),
(3405, '[\"6\"]', '[\"5\", \"10\"]', 2, 'TESTTTTT BISMILLAH', '2026-03-16', '13:45:00', 'TEST', NULL, 1, NULL, 1, '2026-03-16 15:26:22', '2026-03-25 03:17:45'),
(3406, '[\"4\"]', '[\"10\"]', 4, 'jalan jalan', '2026-03-16', '22:30:00', 'sukabumi', NULL, 4, NULL, 1, '2026-03-16 15:31:13', '2026-03-25 03:17:45'),
(3407, '[\"4\", \"8\"]', '[\"14\"]', 5, 'penugasan mendampingi dan menjalankan tugas dari sekretariat negara RI 1', '2026-03-27', '10:00:00', 'Istana Negara', NULL, 1, 4, 1, '2026-03-16 16:40:46', '2026-03-27 09:13:14'),
(3408, '[\"8\"]', '[\"3\", \"6\"]', 2, 'Menghadiri Bedah Buku tentang Pertanian', '2026-03-17', '13:00:00', 'Hotel Kempinski', NULL, 1, NULL, 1, '2026-03-17 02:49:07', '2026-03-25 03:17:45'),
(3409, '[\"7\", \"5\"]', '[\"18\", \"5\"]', 1, 'Keberangkatan dalam rangka kunjungan kerja ke Surakarta, Jawa Tengah', '2026-03-20', '11:10:00', 'Bandara Soekarno Hatta, Banten', NULL, 1, NULL, 1, '2026-03-17 02:59:04', '2026-03-25 03:17:45'),
(3410, '[\"5\"]', '[\"17\", \"10\"]', 1, 'Ketibaan dalam rangka kunjungan kerja dari Surakarta, Jawa Tengah', '2026-03-22', '16:45:00', 'Bandara Soekarno Hatta, Banten', NULL, 1, 2, 1, '2026-03-17 03:00:12', '2026-03-25 04:20:05'),
(3411, '[\"1\"]', '[]', 2, 'Menghadiri acara Buka Puasa Bersama', '2026-03-17', '17:00:00', 'Hotel Fairmont, Jakarta', NULL, 2, NULL, 1, '2026-03-17 03:15:01', '2026-03-25 03:17:45'),
(3412, '[\"4\"]', '[]', 2, 'Menghadiri acara Buka Puasa Bersama', '2026-03-17', '17:00:00', 'Masjid Istiqlal Jakarta', NULL, 2, NULL, 1, '2026-03-17 03:16:47', '2026-03-25 03:17:45'),
(3413, '[\"1\"]', '[]', 5, 'Menghadiri Sidang Kabinet Paripurna', '2026-03-17', '14:00:00', 'Istana Negara, Jakarta', NULL, 2, NULL, 1, '2026-03-17 03:18:06', '2026-03-25 03:17:45'),
(3414, '[\"6\"]', '[]', 2, 'Menghadiri acara Pelepasan Mudik Bersama Tahun 2026', '2026-03-17', '06:00:00', 'Area GBK, Senayan, Jakarta', NULL, 2, NULL, 1, '2026-03-17 03:20:26', '2026-03-25 03:17:45'),
(3415, '[\"3\"]', '[\"16\", \"4\"]', 1, 'Keberangkatan ke Singapura', '2026-03-18', '07:00:00', 'Bandara Halim Perdanakusuma', NULL, 1, NULL, 1, '2026-03-17 03:25:35', '2026-03-25 03:17:45'),
(3416, '[\"9\", \"4\", \"1\"]', '[\"5\", \"17\"]', 2, 'Melakukan audiensi kepada Presiden RI', '2026-03-30', '15:00:00', 'Wantimpres', NULL, 4, 1, 1, '2026-03-25 08:46:06', '2026-03-30 07:55:00'),
(3417, '[\"3\"]', '[]', 1, 'Ketibaan dari Singapura', '2026-03-30', '12:30:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 2, 1, 1, '2026-03-27 02:49:40', '2026-03-30 07:52:38'),
(3418, '[\"3\"]', '[]', 2, 'Ketibaan dari Singapura', '2026-04-07', '10:00:00', 'Bandara Halim Perdanakusuma, Jakarta', NULL, 2, 7, 0, '2026-03-27 03:11:27', '2026-04-07 01:45:29'),
(3421, '[\"7\"]', '[]', 2, 'Keberangkatan ke Tangerang, Provinsi Banten', '2026-04-01', '09:00:00', 'Kediaman', NULL, 2, 2, 0, '2026-04-01 08:12:07', '2026-04-01 08:12:07'),
(3422, '[\"7\"]', '[]', 2, 'Ketibaan dari Tangerang, Provinsi Banten', '2026-04-07', '19:00:00', 'Kediaman', NULL, 2, 7, 1, '2026-04-01 08:13:08', '2026-04-15 04:01:26'),
(3423, '[\"1\"]', '[]', 2, 'Keberangkatan ke Bandung, Provinsi Jawa Barat', '2026-04-01', '10:00:00', 'Jakarta', NULL, 2, 2, 0, '2026-04-01 08:18:12', '2026-04-01 08:18:12'),
(3424, '[\"3\", \"1\"]', '[\"5\"]', 2, 'Ketibaan dari Bandung, Provinsi Jawa Barat', '2026-04-07', '14:00:00', 'Jakarta', NULL, 2, 7, 1, '2026-04-01 08:19:07', '2026-04-07 02:48:59'),
(3425, '[\"2\", \"3\", \"6\"]', '[\"8\"]', 2, 'agugaehakdak', '2026-04-02', '12:30:00', 'Lampiran', 'pelayanan-keprotokolan/0B9rvmfS4ZEqrorU2lVscNggQ4jLQukich7NP2ZU.png', 7, 7, 0, '2026-04-02 03:51:02', '2026-04-02 03:51:02'),
(3426, '[\"2\"]', '[\"10\", \"6\"]', 4, 'Pertemuan Asian Games', '2026-09-22', '19:51:00', 'DKI Jakarta', NULL, 2, 1, 1, '2026-09-21 12:52:17', '2026-09-21 12:55:09'),
(3428, '[\"8\"]', '[]', 2, 'Pertemuan persiapan sumpah pemuda', '2026-09-23', '15:00:00', 'Istana Kepresidenan RI', NULL, 2, 2, 0, '2026-09-22 09:44:18', '2026-09-22 09:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `perjalanan_dinas`
--

CREATE TABLE `perjalanan_dinas` (
  `id_perjalanan` bigint NOT NULL,
  `id_jenis_perjalanan` int NOT NULL,
  `nama_kegiatan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_keberangkatan` date NOT NULL,
  `tanggal_kepulangan` date NOT NULL,
  `tipe_tujuan` enum('dalam_negeri','luar_negeri') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_provinsi` int DEFAULT NULL,
  `tujuan_luar_negeri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan_detail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keperluan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persidangan`
--

CREATE TABLE `persidangan` (
  `id_persidangan` bigint NOT NULL,
  `id_anggota` json DEFAULT NULL,
  `id_petugas` json DEFAULT NULL,
  `id_jenis_persidangan` int NOT NULL,
  `nama_persidangan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_persidangan` date NOT NULL,
  `waktu` time NOT NULL,
  `tempat` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `is_seen_by_superadmin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persidangan`
--

INSERT INTO `persidangan` (`id_persidangan`, `id_anggota`, `id_petugas`, `id_jenis_persidangan`, `nama_persidangan`, `tanggal_persidangan`, `waktu`, `tempat`, `file_path`, `created_by`, `updated_by`, `is_seen_by_superadmin`, `created_at`, `updated_at`) VALUES
(21, '[1, 6, 2, 4]', NULL, 5, 'Sidang Pleno ke 1', '2026-03-05', '13:00:00', 'Ruang Rapat Kresna, Lt.2', NULL, 2, NULL, 1, '2026-03-04 02:47:07', '2026-03-25 03:17:45'),
(22, '[5]', NULL, 6, 'Menerima Audiensi PT. Nestle Indonesia', '2026-03-04', '08:15:00', 'Ruang Rapat Arjuna, Lt.3', NULL, 2, NULL, 1, '2026-03-04 02:48:29', '2026-03-25 03:17:45'),
(23, '[8]', NULL, 1, 'Menerima audiensi Mustika Ratu', '2026-03-03', '08:15:00', 'Plataran, Jakarta', NULL, 2, NULL, 1, '2026-03-04 02:49:32', '2026-03-25 03:17:45'),
(24, '[7]', NULL, 2, 'Diskusi Terbatas dengan tema MBG', '2026-03-04', '12:50:00', 'Ruang Rapat Kresna, Lt.2', 'persidangan/MDCP1m3D2fiuW4B6Hgtg0cxe4msMRYksqI2xscMZ.xlsx', 2, 2, 1, '2026-03-04 02:50:22', '2026-03-25 03:17:45'),
(25, '[\"4\"]', '[\"18\", \"13\"]', 3, 'Pertemuan Terbatas dengan Mayapada Foundation', '2026-03-10', '13:00:00', 'Ruang Rapat Kresna, Lt.2', 'persidangan/rZX8XvjvOhNEANWzUU24VGmsCgEJNRrICqQLSQT9.pdf', 2, 1, 1, '2026-03-04 02:51:14', '2026-03-25 03:17:45'),
(434, '[\"1\"]', '[\"8\"]', 6, 'Rapat internal dengan Smart Team', '2023-01-03', '13:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(435, '[\"1\", \"5\", \"6\", \"7\", \"8\"]', '[\"5\", \"6\"]', 5, 'Sidang Pleno ke-1', '2023-01-05', '14:00:00', 'R. Rapat Kresna Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(436, '[\"1\"]', '[\"5\"]', 1, 'Pertemuan dengan beberapa pihak', '2023-01-10', '12:00:00', 'R. Kerja Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(437, '[\"1\"]', '[\"13\"]', 6, 'Rapat internal dengan Smart Team', '2023-01-10', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(438, '[\"8\"]', '[\"7\", \"5\"]', 1, 'Menerima audiensi PT. Rejoso Manis Indo', '2023-01-11', '10:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(439, '[\"6\"]', '[\"7\"]', 6, 'Rapat internal dengan Smart Team', '2023-01-13', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(440, '[\"5\"]', '[\"3\"]', 1, 'Menerima audiensi Anggota Kompolnas RI', '2023-01-16', '15:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(441, '[\"1\", \"5\", \"6\", \"7\", \"8\"]', '[\"4\", \"5\"]', 3, 'Pertemuan Terbatas dengan Wakil Kepala Kepolisian RI (Wakapolri) dengan tema \"Reformasi Polri: Tantangan. Hambatan dan Solusi Mengatasinya\"', '2023-01-24', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(442, '[\"1\", \"5\", \"6\", \"7\", \"8\"]', '[\"4\", \"5\"]', 5, 'Sidang Pleno', '2023-01-24', '15:30:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(443, '[\"5\"]', '[\"7\", \"9\"]', 1, 'Menerima Audiensi Sobat Cyber Indonesia', '2023-01-27', '14:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(444, '[\"1\"]', '[\"8\"]', 6, 'Rapat internal dengan Smart Team', '2023-01-31', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(445, '[\"6\"]', '[\"18\"]', 6, 'Rapat internal dengan Smart Team', '2023-02-01', '10:00:00', 'R. Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(446, '[\"1\"]', '[\"10\"]', 1, 'Pertemuan dengan Direktur Utama PT Pertamina Patra Niaga dengan smart team\n(Dipimpin oleh Sekretaris Ketua Wantimpres)', '2023-02-03', '14:00:00', 'Daring / Online', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(447, '[\"1\"]', '[\"5\"]', 1, 'Menerima tamu beberapa pihak', '2023-02-07', '12:30:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(448, '[\"1\"]', '[\"6\"]', 6, 'Rapat internal dengan Smart Team', '2023-02-07', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(449, '[\"1\", \"5\", \"6\", \"7\", \"8\"]', '[\"4\", \"6\"]', 3, 'Pertemuan Terbatas dengan Menteri Perdagangan', '2023-02-09', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(450, '[\"1\", \"5\", \"7\", \"8\"]', '[\"5\", \"17\"]', 3, 'Pertemuan Terbatas dengan Apindo dan Kadin', '2023-02-14', '14:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(451, '[\"5\"]', '[\"8\"]', 1, 'Menerima audiensi Bapak Heru Nugroho, organisasi PANDI', '2023-02-14', '16:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(452, '[\"6\"]', '[\"5\"]', 1, 'Pertemuan dengan beberapa pihak', '2023-02-15', '09:00:00', 'R. Kerja, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(453, '[\"1\", \"5\", \"6\", \"7\", \"8\"]', '[\"2\", \"10\"]', 3, 'Pertemuan Terbatas dengan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi RI', '2023-02-15', '10:30:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(454, '[\"6\"]', '[\"10\"]', 1, 'Pertemuan dengan beberapa pihak', '2023-02-16', '13:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(455, '[\"7\"]', '[\"18\"]', 1, 'Pertemuan Tertutup dengan Kepala Kepolisian Negara RI', '2023-02-16', '17:00:00', 'R. Kerja Kapolri, Mabes Polri, Jl. Trunojoyo No.3, kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(456, '[\"6\"]', '[\"8\"]', 1, 'Menerima audiensi Himpunan Mahasiswa (dipimpin oleh Sekretaris Anggota)', '2023-02-17', '13:00:00', 'R. Rapat Arjuna Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(457, '[\"1\"]', '[\"4\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-02-21', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(458, '[\"6\", \"5\", \"7\"]', '[\"3\", \"6\"]', 1, 'Menerima audiensi Policy Innovation Center Indonesia', '2023-02-28', '11:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(459, '[\"1\"]', '[\"8\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-02-28', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(460, '[\"1\"]', '[\"2\", \"7\"]', 1, 'Menerima audiensi dengan Senior Minister and Coordinating Minister For National Security, Teo Chee Hean', '2023-03-01', '10:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(461, '[\"3\"]', '[\"5\", \"13\"]', 1, 'Menerima audiensi dengan Trade Representation of The Russian Federation in The Republic of Indonesia', '2023-03-01', '14:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(462, '[\"6\"]', '[\"3\"]', 1, 'Pertemuan dengan FKPPI\n(dipimpin oleh Sekretaris Anggota )', '2023-03-02', '13:00:00', 'R. Arjuna Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(463, '[\"1\"]', '[\"3\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-03-07', '13:00:00', 'R. Rapat Kresna,Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(464, '[\"6\"]', '[\"10\"]', 1, 'Audiensi dengan Beberapa Pihak', '2023-03-17', '10:30:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(465, '[\"1\", \"5\", \"6\", \"7\"]', '[\"6\", \"13\"]', 5, 'Sidang Pleno ke-2', '2023-03-20', '10:00:00', 'R. Rapat Kresna Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(466, '[\"5\"]', '[\"3\"]', 1, 'Pertemuan dengan beberapa pihak', '2023-03-20', '12:00:00', 'R. Kerja, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(467, '[\"1\"]', '[\"5\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-03-28', '11:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(468, '[\"1\"]', '[\"8\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-04-11', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(469, '[\"6\"]', '[\"4\", \"8\"]', 6, 'Rapat Internal Tim Kajian Dampak Perilaku LGBT', '2023-04-17', '15:00:00', 'R.Rapat Kresna, L.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(470, '[\"5\"]', '[\"6\"]', 1, 'Menerima Audiensi dengan Ibu Herni', '2023-04-18', '13:30:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(471, '[\"1\"]', '[\"4\", \"8\"]', 1, 'Menerima audiensi Wakil Walikota Blitar, Dipimpin oleh Sekretaris Ketua Wantimpres', '2023-05-02', '11:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(472, '[\"1\"]', '[\"8\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-05-02', '13:00:00', 'R. Kerja, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(473, '[\"6\"]', '[]', 1, 'Menerima Audiensi dengan TNI AL (dipimpin oleh Sekretaris Anggota)', '2023-05-03', '13:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(474, '[\"6\"]', '[]', 1, 'Menerima audiensi beberapa pihak (dipimpin oleh Sekretaris Anggota)', '2023-05-04', '10:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(475, '[\"1\"]', '[\"3\"]', 1, 'Menerima audiensi beberapa pihak', '2023-05-04', '13:00:00', 'R. Kerja, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(476, '[\"1\"]', '[\"3\"]', 1, 'Menerima audiensi beberapa pihak', '2023-05-04', '14:00:00', 'R. Kerja, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(477, '[\"1\"]', '[\"18\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-05-09', '11:00:00', 'R. Rapat Kresna, lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(478, '[\"1\"]', '[\"8\", \"17\"]', 1, 'Menerima audiensi Ketua Umum LAMAHU (Organisasi Masyarakat Gorontalo Rantau)', '2023-05-16', '12:00:00', 'R. Rapat Kresna, lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(479, '[\"1\"]', '[\"6\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-05-16', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(480, '[\"1\"]', '[\"10\"]', 1, 'Menerima audiensi Bapak Priyanto', '2023-05-23', '12:30:00', 'R. Kerja, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(481, '[\"1\"]', '[\"7\"]', 6, 'Pertemuan Internal dengan Smart team', '2023-05-23', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(482, '[\"1\"]', '[\"5\", \"7\"]', 3, 'Pertemuan terbatas Tim Kajian Ketua Wantimpres yang di pimpin oleh Sekretaris Ketua Wantimpres (dipimpin oleh Sekretaris Anggota)', '2023-05-24', '10:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(483, '[\"1\"]', '[\"6\", \"10\"]', 3, 'Pertemuan Terbatas Tim Kajian Ketua Wantimpres sesi 2 dengan tema \"Penegakan Hukum Tindak Pidana Terorisme\" (dipimpin oleh Sekretaris Anggota)', '2023-05-24', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(484, '[\"1\"]', '[\"5\", \"6\"]', 1, 'Menerima audiensi Maritim Muda Nusantara', '2023-05-30', '11:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(485, '[\"1\"]', '[\"5\", \"6\"]', 1, 'Menerima Audiensi Himpunan Mahasiswa Ilmu Politik Indonesia', '2023-05-30', '12:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(486, '[\"1\"]', '[\"5\", \"6\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-05-30', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(487, '[\"1\"]', '[\"5\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-06-06', '13:00:00', 'R. Rapat Kresna', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(488, '[\"5\"]', '[\"4\", \"6\"]', 1, 'Menerima audiensi dengan NEGERIKU', '2023-06-07', '14:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(489, '[\"1\", \"5\", \"7\"]', '[\"10\", \"18\"]', 1, 'Menerima audiensi AIPKI (Asosiasi Institusi Pendidikan Kedokteran Indonesia)', '2023-06-08', '13:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(490, '[\"1\", \"5\", \"7\"]', '[\"2\", \"3\"]', 1, 'Menerima audiensi IDI (Ikatan Dokter Indonesia)', '2023-06-09', '13:30:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(491, '[]', '[\"5\", \"7\"]', 1, 'Menerima audiensi Kepala BPIP', '2023-06-12', '14:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(492, '[\"1\"]', '[\"17\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-06-13', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(493, '[\"5\"]', '[\"7\", \"10\"]', 1, 'Menerima audiensi Asosiasi Kosmetik dan Gabungan Pengusaha Jamu', '2023-06-14', '15:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(494, '[\"5\"]', '[\"5\"]', 6, 'Pertemuan Internal Tim Pendukung dan Tim Ahli Anggota Wantimpres', '2023-06-20', '12:00:00', 'R. Kerja, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(495, '[\"1\"]', '[\"6\"]', 6, 'Pertemuan Interal dengan Smart Team', '2023-06-20', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(496, '[\"6\"]', '[\"9\", \"10\"]', 1, 'Menerima audiensi beberapa pihak', '2023-06-27', '11:30:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(497, '[\"1\"]', '[\"5\"]', 6, 'Pertemuan Internal dengan Smart team', '2023-07-05', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(498, '[\"1\"]', '[\"10\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-07-11', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(499, '[\"1\", \"7\", \"8\", \"2\", \"9\"]', '[\"7\", \"13\"]', 5, 'Sidang Pleno ke-3', '2023-07-18', '10:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(500, '[\"1\"]', '[\"6\"]', 6, 'Rapat Internal dengan Smart Team', '2023-07-25', '13:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(501, '[\"6\"]', '[\"7\"]', 6, 'Pertemuan Tim Pendukung dan Tim Ahli Anggota Wantimpres dengan Sekretariat Wantimpres dipimpin oleh Sekretaris Anggota (dipimpin oleh Ses Anggota)', '2023-07-26', '10:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(502, '[\"5\"]', '[\"18\"]', 1, 'Menerima audiensi Bapak Dhika Yudistira Staf Khusus Wakil Presiden', '2023-07-26', '14:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(503, '[\"7\"]', '[\"6\"]', 1, 'Menerima Audiensi dengan META', '2023-07-31', '12:30:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(504, '[\"1\"]', '[\"10\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-07-31', '13:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(505, '[\"1\"]', '[\"10\"]', 1, 'Menerima audiensi beberapa pihak', '2023-08-01', '11:00:00', 'R. Kerja, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(506, '[\"7\"]', '[\"3\"]', 1, 'Menerima audiensi Bapak Lasro Simbolon, Deputi Bidang Penempatan dan Perlindungan Kawasan Amerika dan Pasifik, BNP2TKI (dipimpin oleh Sekretaris Anggota)', '2023-08-07', '11:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(507, '[\"2\"]', '[\"3\", \"17\"]', 1, 'Menerima audiensi dengan FAST ( Forum Advocat Spesialist Tipikor )', '2023-08-08', '11:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(508, '[\"1\"]', '[\"2\"]', 1, 'Menerima audiensi beberapa pihak', '2023-08-08', '11:30:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(509, '[\"1\"]', '[\"2\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-08-08', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(510, '[\"2\"]', '[\"7\"]', 1, 'Menerima audiensi Dubes RI untuk Portugal', '2023-08-09', '10:30:00', 'R. Rapat Arjuna Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(511, '[\"8\"]', '[\"10\", \"2\"]', 1, 'Pertemuan dengan Para Sekretaris Anggota Dewan Pertimbangan Presiden', '2023-08-11', '13:30:00', 'R. Arjuna Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(512, '[\"9\"]', '[\"4\", \"8\"]', 1, 'Pertemuan dengan beberapa pihak', '2023-08-11', '15:00:00', 'R. Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(513, '[\"1\"]', '[\"5\"]', 1, 'Menerima audiensi beberapa pihak', '2023-08-15', '12:30:00', 'R. Kerja, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(514, '[\"1\"]', '[\"10\"]', 6, 'Rapat Internal dengan Smart Team', '2023-08-15', '13:30:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(515, '[\"9\"]', '[\"2\", \"5\"]', 1, 'Menerima audiensi Asosiasi Panasbumi Indonesia (API)', '2023-08-16', '10:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(516, '[\"5\", \"9\"]', '[\"6\", \"3\"]', 1, 'Menerima audiensi Miss Universe Indonesia 2023', '2023-08-16', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(517, '[\"1\"]', '[\"10\"]', 1, 'Menerima audiensi beberapa pihak (dipimpin oleh Sekretaris Ketua)', '2023-08-22', '09:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(518, '[\"1\"]', '[\"8\", \"17\"]', 1, 'Menerima audiensi Forkominhan (Forum Komunikasi Industri Pertahanan)', '2023-08-22', '11:30:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(519, '[\"1\"]', '[\"5\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-08-22', '13:30:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(520, '[\"1\"]', '[\"2\", \"5\"]', 1, 'Menerima audiensi PT. Daehyun DNC', '2023-08-24', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(521, '[\"9\"]', '[]', 6, 'Pertemuan Internal dengan Forum CSR Indonesia (dipimpin Sdr. Julie Trisnadewani)', '2023-08-28', '13:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(522, '[\"9\"]', '[]', 6, 'Pertemuan Internal dengan Forum CSR Indonesia (dipimpin Sdr. Julie Trisnadewani)', '2023-08-29', '13:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(523, '[]', '[]', 1, 'Pertemuan beberapa pihak Sekretaris Ketua Wantimpres', '2023-08-31', '13:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(524, '[\"1\"]', '[\"9\"]', 1, 'Menerima audiensi beberapa pihak', '2023-09-05', '13:00:00', 'R. Kerja, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(525, '[\"5\"]', '[\"6\"]', 1, 'Menerima audiensi Asosiasi Pengusaha Jasa internet Indonesia', '2023-09-06', '14:00:00', 'R. Rapat Arjuna Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(526, '[\"6\"]', '[\"8\"]', 6, 'Rapat Internal Tim Kajian Pengutan Sistem Monitoring TKDN', '2023-09-07', '10:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(527, '[\"1\"]', '[\"10\"]', 1, 'Menerima audiensi beberapa pihak', '2023-09-11', '12:00:00', 'R. Kerja, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(528, '[\"1\"]', '[\"7\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-09-12', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(529, '[\"1\"]', '[\"8\", \"17\"]', 1, 'Menerima audiensi Asosiasi Pengajar Hukum Adat (APHA)', '2023-09-13', '11:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(530, '[\"4\"]', '[\"6\"]', 1, 'Pertemuan dengan beberapa pihak (dipimpin oleh Ses Anggota)', '2023-09-18', '10:00:00', 'R. Rapat Arjuna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(531, '[\"6\"]', '[\"5\", \"10\"]', 4, 'Rapat Internal Tim Kajian TKDN (dipimpin oleh Ses Anggota)', '2023-09-18', '10:00:00', 'R. Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(532, '[\"1\", \"3\", \"5\", \"6\", \"8\", \"9\"]', '[\"2\", \"6\"]', 5, 'Sidang Pleno Ke-4', '2023-09-19', '13:00:00', 'R. Kresna Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(533, '[\"5\"]', '[\"5\"]', 1, 'Pertemuan dengan Beberapa Pihak', '2023-09-25', '13:00:00', 'R. Arjuna Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(534, '[\"1\"]', '[]', 6, 'Pertemuan Internal dengan Smart Team', '2023-09-26', '13:00:00', 'R.Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(535, '[\"9\"]', '[\"10\"]', 1, 'Menerima audiensi beberapa media nasional', '2023-10-03', '15:00:00', 'R. Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(536, '[\"1\"]', '[\"6\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-10-03', '13:00:00', 'R. Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(537, '[\"9\"]', '[\"10\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-10-03', '16:00:00', 'R. Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(538, '[\"1\"]', '[\"8\"]', 6, 'Rapat Internal dengan Smart Team (Tertutup)', '2023-10-10', '13:00:00', 'R. Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(539, '[\"1\"]', '[\"5\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-10-17', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(540, '[\"8\"]', '[\"2\"]', 1, 'Pertemuan dengan beberapa pihak', '2023-10-18', '10:00:00', 'R. Rapat Arjuna Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(541, '[\"3\"]', '[\"10\"]', 1, 'Menerima audiensi Indonesia Chamber of Commerce in Hong Kong', '2023-10-18', '16:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(542, '[\"6\"]', '[\"9\"]', 6, 'Pertemuan Tim Ahli dan Tim Pendukung Anggota Wantimpres dengan Sekretariat Wantimpres (dipimpin Sekretaris Anggota)', '2023-10-19', '10:30:00', 'R. Rapat Arjuna Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(543, '[\"6\"]', '[\"9\"]', 6, 'Rapat Internal dengan Tim Ahli Anggota Wantimpres dan Sekretariat Wantimpres', '2023-10-19', '13:00:00', 'R. Rapat Arjuna Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(544, '[\"5\"]', '[\"2\"]', 1, 'Pertemuan dengan Bapak Bebeb Abdul Kurnia Nugraha Djundjunan, Dubes LBBP RI untuk Yunani', '2023-10-19', '15:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(545, '[\"1\"]', '[]', 1, 'Menerima audiensi dengan WR Film & entertainment', '2023-10-20', '13:30:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(546, '[\"2\"]', '[\"8\", \"6\"]', 1, 'Menerima audiensi Paguyuban Sosial Marga Tionghoa Indonesia (PSMTI)', '2023-11-06', '10:30:00', 'R. Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(547, '[\"2\"]', '[\"10\"]', 1, 'Menerima audiensi beberapa pihak', '2023-11-07', '12:00:00', 'R. Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(548, '[\"1\"]', '[\"8\", \"6\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-11-07', '13:00:00', 'R. Rapat Kresna, lt 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(549, '[\"1\"]', '[\"10\"]', 6, 'Pertemuan internal dengan Smart Team', '2023-11-14', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(550, '[\"2\"]', '[\"5\"]', 1, 'Menerima audiensi perwakilan Hana Bank', '2023-11-15', '10:30:00', 'Holding Room, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(551, '[\"2\"]', '[\"7\"]', 1, 'Menerima Audiensi perwakilan Hyundai Indonesia', '2023-11-17', '10:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(552, '[]', '[]', 1, 'Menerima Audiensi Bapak Marsetio', '2023-11-17', '11:00:00', '', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(553, '[\"1\"]', '[]', 1, 'Menerima audiensi dengan China North Industries Corporation (Norinco)', '2023-11-17', '15:00:00', 'Ruci, Jl. Suryo, Kebayoran Baru, Jakarta Selatan', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(554, '[\"2\"]', '[\"6\"]', 1, 'Menerima audiensi Bapak Andy Rachmianto', '2023-11-20', '10:30:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(555, '[\"5\"]', '[\"10\"]', 1, 'Menerima audiensi Dr. Lucky Bayu Purnomo', '2023-11-20', '14:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(556, '[]', '[]', 1, 'Menerima audiensi Sdr. Rhuqby Adeana S.', '2023-11-20', '15:00:00', '', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(557, '[\"2\"]', '[\"2\"]', 1, 'Menerima audiensi perwakilan PT Sinar Mas', '2023-11-21', '10:30:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(558, '[]', '[\"2\"]', 1, 'Menerima audiensi Korea Muslim Federation', '2023-11-21', '13:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(559, '[\"1\"]', '[\"4\"]', 1, 'Pertemuan Internal dengan Smart Team', '2023-11-21', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(560, '[\"2\"]', '[\"10\"]', 1, 'Menerima audiensi beberapa pihak', '2023-11-22', '10:30:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(561, '[\"1\"]', '[\"5\", \"7\"]', 6, 'Pertemuan Internal dengan Smart Team', '2023-11-28', '13:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(562, '[\"2\"]', '[]', 1, 'Menerima audiensi beberapa pihak', '2023-11-29', '10:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(563, '[\"1\"]', '[\"18\"]', 1, 'Menerima audiensi beberapa pihak', '2023-11-29', '12:00:00', 'R. Kerja, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(564, '[]', '[\"18\"]', 1, 'Menerima audiensi Pengurus Wilayah NU (PWNU) Jawa Barat', '2023-11-29', '12:30:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(565, '[\"5\"]', '[\"4\"]', 1, 'Menerima audiensi Media Nawacita Indonesia', '2023-11-29', '14:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(566, '[\"1\"]', '[\"5\", \"10\"]', 1, 'Menerima audiensi panitia natal bersama umat kristiani di Lingkungan Kantor Lembaga Kepresidenan Tahun 2023', '2023-11-30', '12:00:00', 'R. Rapat Kresna, Lt. 2', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(567, '[\"5\"]', '[\"8\"]', 1, 'Menerima audiensi dengan Asosiasi Pedagang Pasar Seluruh Indonesia (APPSI)', '2023-12-04', '13:00:00', 'R. Rapat Arjuna, Lt.3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(568, '[\"2\"]', '[\"6\"]', 1, 'Menerima audiensi beberapa pihak', '2023-12-08', '11:30:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(569, '[\"1\"]', '[]', 1, 'Menerima audiensi beberapa pihak\n(dipimpin oleh Sekretaris Ketua Wantimpres)', '2023-12-19', '10:00:00', 'R. Rapat Arjuna, Lt. 3', NULL, 1, NULL, 1, '2026-03-10 03:54:15', '2026-03-25 03:17:45'),
(571, '[\"6\"]', '[\"10\", \"2\", \"6\"]', 3, 'Pertemuan Terbatas dengan Mayapada Foundation', '2026-03-13', '12:00:00', 'Ruang Rapat Kresna, Lt.2', 'persidangan/jUBL9olETVKMwc8NiwabjOeWDYhUpH4nNPlKsuT7.pdf', 1, 1, 1, '2026-03-13 04:15:00', '2026-03-25 03:17:45'),
(572, '[\"2\"]', '[\"5\", \"17\", \"15\"]', 6, 'Pertemuan Terbatas dengan tema Ketahanan Pangan', '2026-03-14', '13:00:00', 'Ruang Rapat Kresna, Lt.2', NULL, 1, NULL, 1, '2026-03-13 04:15:49', '2026-03-25 03:17:45'),
(574, '[\"7\", \"3\"]', '[\"18\", \"7\", \"13\"]', 6, 'Pembahasan rapat penerbitan buku erlangga avebbcmyugihdjabcn vuedbjab fuwgdjab', '2026-03-28', '09:00:00', 'Graha Mutia', 'persidangan/5X1p9cjvdlMy4eZZsabYlpF4ZBQebKG3sbOmozJE.pdf', 1, 4, 1, '2026-03-16 16:43:31', '2026-03-27 01:10:22'),
(575, '[\"5\"]', '[\"15\", \"16\"]', 1, 'Menerima audiensi Asosiasi Pedagang Jamu Seluruh Indonesia (APJASI) dan perkumpulan distributor jamu dan obat herbal khas Indonesia', '2026-03-27', '10:00:00', 'R. Kresna, Lantai 2', NULL, 2, 4, 1, '2026-03-17 03:25:34', '2026-03-27 01:11:54'),
(577, '[\"9\", \"4\", \"7\", \"1\"]', '[\"3\", \"6\"]', 3, 'Pertemuan terbatas dengan PERTAMINA', '2026-04-30', '09:00:00', 'R. Kresna, Lantai 2', NULL, 2, 7, 1, '2026-03-27 02:50:51', '2026-04-29 02:23:42'),
(578, '[\"9\"]', '[]', 2, 'Melakukan Diskusi Terbatas dengan tema\".......\"', '2026-03-03', '19:00:00', 'Hotel Borobudur, Jakarta Pusat', NULL, 2, 2, 0, '2026-03-27 03:16:23', '2026-03-27 03:16:23'),
(579, '[\"6\"]', '[\"5\", \"10\"]', 1, 'Menerima Audiensi Petani', '2026-04-29', '13:00:00', 'R. Kresna, Lantai 2', 'persidangan/uNSA1OcFA2rP5fRsbgC5sDuCoq50Ix6mtEJ7acup.docx', 2, 7, 1, '2026-03-27 03:31:42', '2026-04-29 02:23:17'),
(581, '[\"5\"]', '[]', 3, 'Pertemuan persiapan sumpah pemuda', '2026-09-23', '18:45:00', 'Dewan Pertimbangan Presiden', NULL, 2, 2, 0, '2026-09-22 09:46:27', '2026-09-22 09:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int NOT NULL,
  `setting_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `setting_key`, `setting_value`, `description`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'SIAPRO', 'Nama aplikasi', NULL, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(2, 'app_version', '1.0.0', 'Versi aplikasi', NULL, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(3, 'institution_name', 'Sekretariat Dewan Pertimbangan Presiden', 'Nama institusi', NULL, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(4, 'institution_short', 'Setwantimpres', 'Nama singkat institusi', NULL, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(5, 'timezone', 'Asia/Jakarta', 'Timezone sistem', NULL, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(6, 'date_format', 'd-m-Y', 'Format tanggal', NULL, '2026-02-11 03:22:02', '2026-02-11 03:22:02'),
(7, 'records_per_page', '25', 'Jumlah record per halaman', NULL, '2026-02-11 03:22:02', '2026-02-11 03:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('super_admin','admin','eksternal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'eksternal',
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_lengkap`, `role`, `jenis_kelamin`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '$2y$12$QepdUmx.YvfgzGJK3rhRn.UrR6.o/HCWjxbh1ybMsYVLAYbeq2JJ2', 'Super Administrator', 'super_admin', NULL, 1, '2026-02-11 03:03:18', '2026-02-17 05:29:34'),
(2, 'admin', '$2y$12$au6DqnJadUHulsIxvBvnZ.Htp2vfoLsZ0sxVnqx3Igzk1LRPUWXby', 'Administrator', 'admin', NULL, 1, '2026-02-11 03:03:18', '2026-02-17 05:30:56'),
(3, 'eksternal', '$2y$12$ihPcERCwumUlMRi0ad0lZueLM4R1X9qBo6I3Zvry61lJmJBPP1wIK', 'User Eksternal', 'eksternal', NULL, 1, '2026-02-24 09:52:07', '2026-02-24 09:52:07'),
(4, 'anestiandimeina', '$2y$12$ask4ArEBiWOYTaTckcQ.rekn7feNG4U1kdu7mq0kXPDa8YYVvVS2a', 'Anesta Meina Nestiandi', 'super_admin', 'P', 1, '2026-02-24 23:19:14', '2026-03-11 05:07:57'),
(5, 'Sandimas', '$2y$12$w1zixv.s35L5s1WTsj9CtuHLEByGg.dH6/0lc/k1VUMdnKSpis2Qy', 'Dimas Sandi', 'eksternal', 'L', 1, '2026-02-24 23:27:57', '2026-04-15 03:38:50'),
(6, 'Femas123', '$2y$12$QNf0p3PeTKD/Mjt.scjUzehYiypDBWcuUOSZD7PQHo7PUGLDAjsAW', 'Femas Alfaridzy', 'super_admin', 'L', 1, '2026-02-25 00:01:53', '2026-04-23 16:41:08'),
(7, 'PrimaLaksmitasari', '$2y$12$2N5vPRwHuse11KeykJ6kzOW0nblACDhEI8CXhyqPmp7tDE0TYRAXO', 'Prima Laksmitasari', 'super_admin', 'P', 1, '2026-03-13 04:42:26', '2026-04-02 02:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `pangkat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rank/Position level',
  `tmt_pangkat` date DEFAULT NULL COMMENT 'Effective date of rank',
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Position title',
  `tmt_jabatan` date DEFAULT NULL COMMENT 'Effective date of position',
  `tanggal_lahir` date DEFAULT NULL COMMENT 'Date of birth',
  `nomor_telepon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_kerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Work unit',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `pangkat`, `tmt_pangkat`, `jabatan`, `tmt_jabatan`, `tanggal_lahir`, `nomor_telepon`, `unit_kerja`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'Super Administrator', NULL, NULL, NULL, 'Divisi Protokol', NULL, NULL),
(2, 2, NULL, NULL, 'Administrator', NULL, NULL, NULL, 'Divisi Protokol', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrasi_perjalanan_dinas`
--
ALTER TABLE `administrasi_perjalanan_dinas`
  ADD PRIMARY KEY (`id_adm_perjalanan_dinas`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_settings_key_unique` (`key`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `history_logs`
--
ALTER TABLE `history_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kunjungan_kerja`
--
ALTER TABLE `kunjungan_kerja`
  ADD PRIMARY KEY (`id_kunjungan`),
  ADD KEY `fk_kunjungan_created` (`created_by`),
  ADD KEY `fk_kunjungan_updated` (`updated_by`),
  ADD KEY `idx_tanggal` (`tanggal_kunjungan`),
  ADD KEY `idx_jenis` (`id_jenis_kunjungan`),
  ADD KEY `idx_provinsi` (`id_provinsi`),
  ADD KEY `idx_tanggal_selesai` (`tanggal_selesai`);

--
-- Indexes for table `master_anggota_dewan`
--
ALTER TABLE `master_anggota_dewan`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `unique_nama_anggota` (`nama`),
  ADD KEY `fk_anggota_user` (`user_id`);

--
-- Indexes for table `master_jenis_kunjungan`
--
ALTER TABLE `master_jenis_kunjungan`
  ADD PRIMARY KEY (`id_jenis_kunjungan`);

--
-- Indexes for table `master_jenis_pelayanan`
--
ALTER TABLE `master_jenis_pelayanan`
  ADD PRIMARY KEY (`id_jenis_pelayanan`);

--
-- Indexes for table `master_jenis_perjalanan_dinas`
--
ALTER TABLE `master_jenis_perjalanan_dinas`
  ADD PRIMARY KEY (`id_jenis_perjalanan`);

--
-- Indexes for table `master_jenis_persidangan`
--
ALTER TABLE `master_jenis_persidangan`
  ADD PRIMARY KEY (`id_jenis_persidangan`);

--
-- Indexes for table `master_pegawai`
--
ALTER TABLE `master_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_petugas_protokol`
--
ALTER TABLE `master_petugas_protokol`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `unique_nama_petugas` (`nama`),
  ADD KEY `fk_petugas_user` (`user_id`),
  ADD KEY `idx_nama` (`nama`);

--
-- Indexes for table `master_provinsi`
--
ALTER TABLE `master_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD KEY `idx_nama_provinsi` (`nama_provinsi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_reads`
--
ALTER TABLE `module_reads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelayanan_keprotokolan`
--
ALTER TABLE `pelayanan_keprotokolan`
  ADD PRIMARY KEY (`id_pelayanan`),
  ADD KEY `fk_pelayanan_created` (`created_by`),
  ADD KEY `fk_pelayanan_updated` (`updated_by`),
  ADD KEY `idx_tanggal` (`tanggal_kegiatan`),
  ADD KEY `idx_jenis` (`id_jenis_pelayanan`);

--
-- Indexes for table `perjalanan_dinas`
--
ALTER TABLE `perjalanan_dinas`
  ADD PRIMARY KEY (`id_perjalanan`),
  ADD KEY `fk_perjalanan_created` (`created_by`),
  ADD KEY `fk_perjalanan_updated` (`updated_by`),
  ADD KEY `idx_tanggal_berangkat` (`tanggal_keberangkatan`),
  ADD KEY `idx_tanggal_pulang` (`tanggal_kepulangan`),
  ADD KEY `idx_jenis` (`id_jenis_perjalanan`),
  ADD KEY `idx_provinsi` (`id_provinsi`);

--
-- Indexes for table `persidangan`
--
ALTER TABLE `persidangan`
  ADD PRIMARY KEY (`id_persidangan`),
  ADD KEY `fk_persidangan_created` (`created_by`),
  ADD KEY `fk_persidangan_updated` (`updated_by`),
  ADD KEY `idx_tanggal` (`tanggal_persidangan`),
  ADD KEY `idx_jenis` (`id_jenis_persidangan`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`),
  ADD KEY `fk_settings_user` (`updated_by`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_role` (`role`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrasi_perjalanan_dinas`
--
ALTER TABLE `administrasi_perjalanan_dinas`
  MODIFY `id_adm_perjalanan_dinas` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history_logs`
--
ALTER TABLE `history_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;

--
-- AUTO_INCREMENT for table `kunjungan_kerja`
--
ALTER TABLE `kunjungan_kerja`
  MODIFY `id_kunjungan` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `master_anggota_dewan`
--
ALTER TABLE `master_anggota_dewan`
  MODIFY `id_anggota` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_jenis_kunjungan`
--
ALTER TABLE `master_jenis_kunjungan`
  MODIFY `id_jenis_kunjungan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_jenis_pelayanan`
--
ALTER TABLE `master_jenis_pelayanan`
  MODIFY `id_jenis_pelayanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_jenis_perjalanan_dinas`
--
ALTER TABLE `master_jenis_perjalanan_dinas`
  MODIFY `id_jenis_perjalanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_jenis_persidangan`
--
ALTER TABLE `master_jenis_persidangan`
  MODIFY `id_jenis_persidangan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_pegawai`
--
ALTER TABLE `master_pegawai`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `master_petugas_protokol`
--
ALTER TABLE `master_petugas_protokol`
  MODIFY `id_petugas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `master_provinsi`
--
ALTER TABLE `master_provinsi`
  MODIFY `id_provinsi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `module_reads`
--
ALTER TABLE `module_reads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pelayanan_keprotokolan`
--
ALTER TABLE `pelayanan_keprotokolan`
  MODIFY `id_pelayanan` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3429;

--
-- AUTO_INCREMENT for table `perjalanan_dinas`
--
ALTER TABLE `perjalanan_dinas`
  MODIFY `id_perjalanan` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persidangan`
--
ALTER TABLE `persidangan`
  MODIFY `id_persidangan` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kunjungan_kerja`
--
ALTER TABLE `kunjungan_kerja`
  ADD CONSTRAINT `fk_kunjungan_created` FOREIGN KEY (`created_by`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_kunjungan_jenis` FOREIGN KEY (`id_jenis_kunjungan`) REFERENCES `master_jenis_kunjungan` (`id_jenis_kunjungan`),
  ADD CONSTRAINT `fk_kunjungan_provinsi` FOREIGN KEY (`id_provinsi`) REFERENCES `master_provinsi` (`id_provinsi`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_kunjungan_updated` FOREIGN KEY (`updated_by`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `master_anggota_dewan`
--
ALTER TABLE `master_anggota_dewan`
  ADD CONSTRAINT `fk_anggota_user` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `master_petugas_protokol`
--
ALTER TABLE `master_petugas_protokol`
  ADD CONSTRAINT `fk_petugas_user` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `pelayanan_keprotokolan`
--
ALTER TABLE `pelayanan_keprotokolan`
  ADD CONSTRAINT `fk_pelayanan_created` FOREIGN KEY (`created_by`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_pelayanan_jenis` FOREIGN KEY (`id_jenis_pelayanan`) REFERENCES `master_jenis_pelayanan` (`id_jenis_pelayanan`),
  ADD CONSTRAINT `fk_pelayanan_updated` FOREIGN KEY (`updated_by`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `perjalanan_dinas`
--
ALTER TABLE `perjalanan_dinas`
  ADD CONSTRAINT `fk_perjalanan_created` FOREIGN KEY (`created_by`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_perjalanan_jenis` FOREIGN KEY (`id_jenis_perjalanan`) REFERENCES `master_jenis_perjalanan_dinas` (`id_jenis_perjalanan`),
  ADD CONSTRAINT `fk_perjalanan_provinsi` FOREIGN KEY (`id_provinsi`) REFERENCES `master_provinsi` (`id_provinsi`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_perjalanan_updated` FOREIGN KEY (`updated_by`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `persidangan`
--
ALTER TABLE `persidangan`
  ADD CONSTRAINT `fk_persidangan_created` FOREIGN KEY (`created_by`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_persidangan_jenis` FOREIGN KEY (`id_jenis_persidangan`) REFERENCES `master_jenis_persidangan` (`id_jenis_persidangan`),
  ADD CONSTRAINT `fk_persidangan_updated` FOREIGN KEY (`updated_by`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD CONSTRAINT `fk_settings_user` FOREIGN KEY (`updated_by`) REFERENCES `tb_user` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
