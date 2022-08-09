-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 01:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoku`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Printer', '2022-06-22 20:43:59', '2022-06-22 20:43:59'),
(2, 'RAM', '2022-06-23 01:11:40', '2022-06-23 01:11:40'),
(3, 'SSD', '2022-06-23 01:11:47', '2022-06-23 01:11:47'),
(4, 'HDD', '2022-06-23 01:11:55', '2022-06-23 01:11:55'),
(5, 'Mouse', '2022-06-23 01:12:24', '2022-06-23 01:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, '00001', 'kapten', 'selomerto', '0828392839283', '2022-06-21 04:40:45', '2022-06-21 04:40:45');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1),
(7, '2021_03_05_195441_buat_kategori_table', 1),
(8, '2021_03_05_195949_buat_produk_table', 1),
(9, '2021_03_05_200515_buat_member_table', 1),
(10, '2021_03_05_200706_buat_supplier_table', 1),
(11, '2021_03_05_200841_buat_pembelian_table', 1),
(12, '2021_03_05_200845_buat_pembelian_detail_table', 1),
(13, '2021_03_05_200853_buat_penjualan_table', 1),
(14, '2021_03_05_200858_buat_penjualan_detail_table', 1),
(15, '2021_03_05_200904_buat_setting_table', 1),
(16, '2021_03_05_201756_buat_pengeluaran_table', 1),
(17, '2021_03_11_225128_create_sessions_table', 1),
(18, '2021_03_24_115009_tambah_foreign_key_to_produk_table', 1),
(19, '2021_03_24_131829_tambah_kode_produk_to_produk_table', 1),
(20, '2021_05_08_220315_tambah_diskon_to_setting_table', 1),
(21, '2021_05_09_124745_edit_id_member_to_penjualan_table', 1);

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
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `total_item`, `total_harga`, `diskon`, `bayar`, `created_at`, `updated_at`) VALUES
(2, 1, 20, 600000, 0, 600000, '2022-06-23 01:19:57', '2022-06-23 01:20:14'),
(3, 1, 4, 1230000, 0, 1230000, '2022-06-27 06:33:27', '2022-06-27 06:33:55'),
(4, 1, 6, 1290000, 0, 1290000, '2022-06-27 06:34:15', '2022-06-27 06:39:29'),
(5, 1, 1, 1500000, 0, 1500000, '2022-06-27 06:39:43', '2022-06-27 06:39:58'),
(6, 1, 1, 1500000, 0, 1500000, '2022-06-27 06:40:30', '2022-06-27 06:40:37'),
(7, 1, 20, 3400000, 10, 3060000, '2022-06-28 04:43:56', '2022-06-28 04:44:45'),
(8, 1, 11, 4730000, 2, 4635400, '2022-06-29 06:35:07', '2022-06-29 06:35:36'),
(9, 1, 100, 3000000, 0, 3000000, '2022-06-29 19:04:57', '2022-06-29 19:05:14'),
(10, 1, 10, 16000000, 0, 16000000, '2022-06-29 19:05:19', '2022-06-29 19:05:29'),
(11, 1, 0, 0, 0, 0, '2022-06-30 08:46:50', '2022-06-30 08:46:50'),
(12, 1, 0, 0, 0, 0, '2022-06-30 09:26:49', '2022-06-30 09:26:49'),
(13, 1, 0, 0, 0, 0, '2022-06-30 09:27:01', '2022-06-30 09:27:01'),
(14, 1, 1, 1500000, 0, 1500000, '2022-07-02 07:33:32', '2022-07-02 07:33:44'),
(15, 1, 10, 15000000, 0, 15000000, '2022-07-02 07:33:52', '2022-07-02 07:34:01'),
(16, 1, 100, 40000000, 0, 40000000, '2022-07-02 18:08:34', '2022-07-02 18:08:45'),
(17, 1, 0, 0, 0, 0, '2022-07-02 19:30:56', '2022-07-02 19:30:56'),
(18, 1, 0, 0, 0, 0, '2022-07-03 02:07:05', '2022-07-03 02:07:05'),
(19, 1, 0, 0, 0, 0, '2022-07-03 04:57:22', '2022-07-03 04:57:22'),
(20, 1, 1, 1600000, 0, 1600000, '2022-07-03 05:10:07', '2022-07-03 05:10:17'),
(21, 1, 4, 5100000, 0, 5100000, '2022-07-03 06:05:02', '2022-07-03 06:05:33'),
(22, 1, 1, 1600000, 0, 1600000, '2022-07-06 04:43:33', '2022-07-06 04:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_beli`, `jumlah`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 30000, 20, 600000, '2022-06-23 01:20:04', '2022-06-23 01:20:11'),
(2, 3, 5, 400000, 3, 1200000, '2022-06-27 06:33:32', '2022-06-27 06:33:37'),
(3, 3, 4, 30000, 1, 30000, '2022-06-27 06:33:43', '2022-06-27 06:33:43'),
(4, 4, 5, 400000, 3, 1200000, '2022-06-27 06:34:20', '2022-06-27 06:34:23'),
(5, 4, 4, 30000, 3, 90000, '2022-06-27 06:39:19', '2022-06-27 06:39:27'),
(6, 5, 1, 1500000, 2, 3000000, '2022-06-27 06:39:48', '2022-06-27 06:39:56'),
(7, 6, 1, 1500000, 1, 1500000, '2022-06-27 06:40:35', '2022-06-27 06:40:35'),
(8, 7, 3, 170000, 20, 3400000, '2022-06-28 04:44:02', '2022-06-28 04:44:07'),
(9, 8, 2, 1600000, 2, 3200000, '2022-06-29 06:35:12', '2022-06-29 06:35:16'),
(10, 8, 3, 170000, 9, 1530000, '2022-06-29 06:35:24', '2022-06-29 06:35:29'),
(11, 9, 4, 30000, 100, 3000000, '2022-06-29 19:05:02', '2022-06-29 19:05:10'),
(12, 10, 2, 1600000, 10, 16000000, '2022-06-29 19:05:24', '2022-06-29 19:05:26'),
(13, 11, 4, 30000, 1, 30000, '2022-06-30 08:46:58', '2022-06-30 08:46:58'),
(14, 14, 1, 1500000, 10, 15000000, '2022-07-02 07:33:37', '2022-07-02 07:33:41'),
(15, 15, 1, 1500000, 10, 15000000, '2022-07-02 07:33:56', '2022-07-02 07:33:59'),
(16, 16, 5, 400000, 100, 40000000, '2022-07-02 18:08:39', '2022-07-02 18:08:42'),
(17, 20, 2, 1600000, 1, 1600000, '2022-07-03 05:10:12', '2022-07-03 05:10:12'),
(18, 21, 2, 1600000, 1, 1600000, '2022-07-03 06:05:05', '2022-07-03 06:05:05'),
(19, 21, 5, 400000, 1, 400000, '2022-07-03 06:05:07', '2022-07-03 06:05:07'),
(20, 21, 2, 1600000, 1, 1600000, '2022-07-03 06:05:09', '2022-07-03 06:05:09'),
(21, 21, 1, 1500000, 1, 1500000, '2022-07-03 06:05:13', '2022-07-03 06:05:13'),
(22, 22, 2, 1600000, 10, 16000000, '2022-07-06 04:43:37', '2022-07-06 04:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `deskripsi`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 'Bulanan WiFi', 350000, '2022-06-23 01:19:50', '2022-06-23 01:19:50'),
(2, 'Gaji Karyawan', 2000000, '2022-06-28 04:45:08', '2022-06-28 04:45:08'),
(3, 'atk', 100000, '2022-06-29 06:35:58', '2022-06-29 06:35:58'),
(4, 'Bulanan WiFi', 250000, '2022-07-02 07:34:53', '2022-07-02 07:34:53'),
(5, 'Gaji Karyawan', 2500000, '2022-07-06 04:43:59', '2022-07-06 04:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 0, 0, 0, 0, 1, '2022-06-21 04:40:00', '2022-06-21 04:40:00'),
(2, NULL, 0, 0, 0, 0, 0, 1, '2022-06-21 04:40:01', '2022-06-21 04:40:01'),
(3, NULL, 0, 0, 0, 0, 0, 1, '2022-06-22 20:45:03', '2022-06-22 20:45:03'),
(4, NULL, 1, 1600000, 0, 1600000, 1600000, 1, '2022-06-22 20:45:08', '2022-06-22 20:45:29'),
(5, NULL, 1, 1600000, 0, 1600000, 1600000, 1, '2022-06-22 20:47:26', '2022-06-22 20:47:39'),
(6, NULL, 0, 0, 0, 0, 0, 1, '2022-06-22 21:13:16', '2022-06-22 21:13:16'),
(7, NULL, 0, 0, 0, 0, 0, 2, '2022-06-22 21:18:36', '2022-06-22 21:18:36'),
(8, NULL, 0, 0, 0, 0, 0, 2, '2022-06-22 21:18:45', '2022-06-22 21:18:45'),
(9, NULL, 0, 0, 0, 0, 0, 2, '2022-06-22 22:35:08', '2022-06-22 22:35:08'),
(10, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 01:00:19', '2022-06-23 01:00:19'),
(11, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 01:01:29', '2022-06-23 01:01:29'),
(12, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 01:02:45', '2022-06-23 01:02:45'),
(13, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 01:08:50', '2022-06-23 01:08:50'),
(14, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 01:08:54', '2022-06-23 01:08:54'),
(15, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 01:59:27', '2022-06-23 01:59:27'),
(16, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 01:59:33', '2022-06-23 01:59:33'),
(17, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 02:00:05', '2022-06-23 02:00:05'),
(18, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 02:00:26', '2022-06-23 02:00:26'),
(19, NULL, 1, 37000, 0, 37000, 50000, 1, '2022-06-23 02:00:33', '2022-06-23 02:00:48'),
(20, NULL, 1, 1760000, 0, 1760000, 1800000, 1, '2022-06-23 02:01:12', '2022-06-23 02:01:32'),
(21, NULL, 1, 200000, 0, 200000, 0, 1, '2022-06-23 02:01:44', '2022-06-23 02:02:06'),
(22, NULL, 2, 1637000, 0, 1637000, 1700000, 1, '2022-06-23 02:02:32', '2022-06-23 02:03:11'),
(23, NULL, 0, 0, 0, 0, 0, 1, '2022-06-23 02:04:57', '2022-06-23 02:04:57'),
(24, NULL, 1, 37000, 0, 37000, 50000, 2, '2022-06-23 20:03:55', '2022-06-23 20:04:17'),
(25, NULL, 1, 1600000, 0, 1600000, 1600000, 1, '2022-06-27 06:41:52', '2022-06-27 06:42:05'),
(26, NULL, 0, 0, 0, 0, 0, 1, '2022-06-27 20:20:37', '2022-06-27 20:20:37'),
(27, NULL, 0, 0, 0, 0, 0, 1, '2022-06-27 20:25:37', '2022-06-27 20:25:37'),
(28, NULL, 1, 1600000, 0, 1600000, 1600000, 1, '2022-06-28 02:55:47', '2022-06-28 02:56:02'),
(29, NULL, 0, 0, 0, 0, 0, 2, '2022-06-28 03:13:53', '2022-06-28 03:13:53'),
(30, NULL, 0, 0, 0, 0, 0, 2, '2022-06-28 03:14:06', '2022-06-28 03:14:06'),
(31, NULL, 10, 823000, 0, 823000, 850000, 2, '2022-06-28 04:41:28', '2022-06-28 04:42:00'),
(32, NULL, 0, 0, 0, 0, 0, 2, '2022-06-28 04:42:28', '2022-06-28 04:42:28'),
(33, NULL, 1, 1760000, 0, 1760000, 1800000, 1, '2022-06-28 04:46:18', '2022-06-28 04:46:37'),
(34, NULL, 0, 0, 0, 0, 0, 2, '2022-06-29 06:32:18', '2022-06-29 06:32:18'),
(35, NULL, 1, 1760000, 0, 1760000, 1800000, 2, '2022-06-29 06:32:37', '2022-06-29 06:33:19'),
(36, NULL, 1, 37000, 0, 37000, 50000, 2, '2022-06-29 06:33:24', '2022-06-29 06:34:51'),
(37, NULL, 0, 0, 0, 0, 0, 1, '2022-06-29 08:26:24', '2022-06-29 08:26:24'),
(38, NULL, 4, 7040000, 0, 7040000, 7100000, 2, '2022-06-29 18:36:18', '2022-06-29 18:36:57'),
(39, NULL, 1, 37000, 0, 37000, 50000, 2, '2022-06-29 18:37:13', '2022-06-29 18:37:27'),
(40, NULL, 1, 490000, 0, 490000, 500000, 2, '2022-06-29 18:37:30', '2022-06-29 18:37:44'),
(41, NULL, 1, 200000, 0, 200000, 200000, 2, '2022-06-29 18:37:49', '2022-06-29 18:38:03'),
(42, NULL, 1, 1600000, 0, 1600000, 1600000, 2, '2022-06-29 18:38:07', '2022-06-29 18:38:27'),
(43, NULL, 1, 37000, 0, 37000, 50000, 2, '2022-06-29 18:39:07', '2022-06-29 18:39:20'),
(44, NULL, 0, 0, 0, 0, 0, 1, '2022-06-29 19:04:37', '2022-06-29 19:04:37'),
(45, NULL, 1, 1760000, 0, 1760000, 0, 1, '2022-06-29 20:15:27', '2022-06-29 20:15:38'),
(46, NULL, 0, 0, 0, 0, 0, 1, '2022-06-29 20:15:51', '2022-06-29 20:15:51'),
(47, NULL, 1, 1760000, 0, 1760000, 1760000, 1, '2022-06-29 20:16:24', '2022-06-29 20:16:36'),
(48, NULL, 8, 12800000, 0, 12800000, 12800000, 1, '2022-06-29 20:16:41', '2022-06-29 20:17:04'),
(49, NULL, 1, 1760000, 0, 1760000, 1800000, 1, '2022-06-30 04:27:06', '2022-06-30 04:27:24'),
(50, NULL, 1, 37000, 0, 37000, 50000, 1, '2022-06-30 04:29:10', '2022-06-30 04:34:17'),
(51, NULL, 0, 0, 0, 0, 0, 1, '2022-07-01 02:22:34', '2022-07-01 02:22:34'),
(52, NULL, 1, 37000, 0, 37000, 1, 2, '2022-07-02 07:32:43', '2022-07-02 07:32:51'),
(53, NULL, 1, 1600000, 0, 1600000, 1600000, 1, '2022-07-02 07:34:16', '2022-07-02 07:34:29'),
(54, NULL, 0, 0, 0, 0, 0, 1, '2022-07-02 17:31:10', '2022-07-02 17:31:10'),
(55, NULL, 0, 0, 0, 0, 0, 1, '2022-07-02 17:32:28', '2022-07-02 17:32:28'),
(56, NULL, 100, 49000000, 0, 49000000, 0, 1, '2022-07-02 18:08:55', '2022-07-02 18:09:07'),
(57, NULL, 1, 37000, 0, 37000, 50000, 1, '2022-07-02 19:31:26', '2022-07-02 19:31:42'),
(58, NULL, 0, 0, 0, 0, 0, 2, '2022-07-02 23:57:01', '2022-07-02 23:57:01'),
(59, NULL, 0, 0, 0, 0, 0, 1, '2022-07-03 02:12:50', '2022-07-03 02:12:50'),
(60, NULL, 1, 200000, 0, 200000, 200000, 1, '2022-07-03 05:17:06', '2022-07-03 05:22:48'),
(61, NULL, 2, 2090000, 0, 2090000, 0, 1, '2022-07-03 06:09:32', '2022-07-03 06:11:21'),
(62, NULL, 1, 1760000, 0, 1760000, 0, 1, '2022-07-03 06:12:29', '2022-07-03 06:12:35'),
(63, NULL, 1, 1760000, 0, 1760000, 1800000, 1, '2022-07-03 18:32:32', '2022-07-03 18:32:48'),
(64, NULL, 0, 0, 0, 0, 0, 2, '2022-07-04 03:57:15', '2022-07-04 03:57:15'),
(65, NULL, 1, 37000, 0, 37000, 50000, 2, '2022-07-04 03:57:48', '2022-07-04 03:58:00'),
(66, NULL, 0, 0, 0, 0, 0, 2, '2022-07-04 04:37:25', '2022-07-04 04:37:25'),
(67, NULL, 0, 0, 0, 0, 0, 2, '2022-07-04 04:38:45', '2022-07-04 04:38:45'),
(68, NULL, 1, 1760000, 0, 1760000, 1800000, 1, '2022-07-06 04:43:01', '2022-07-06 04:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1600000, 1, 0, 1600000, '2022-06-22 20:45:14', '2022-06-22 20:45:14'),
(2, 5, 1, 1600000, 1, 0, 1600000, '2022-06-22 20:47:30', '2022-06-22 20:47:30'),
(3, 19, 4, 37000, 1, 0, 37000, '2022-06-23 02:00:41', '2022-06-23 02:00:41'),
(4, 20, 2, 1760000, 1, 0, 1760000, '2022-06-23 02:01:18', '2022-06-23 02:01:18'),
(5, 21, 3, 200000, 1, 0, 200000, '2022-06-23 02:01:59', '2022-06-23 02:01:59'),
(6, 22, 1, 1600000, 1, 0, 1600000, '2022-06-23 02:02:37', '2022-06-23 02:02:37'),
(7, 22, 4, 37000, 1, 0, 37000, '2022-06-23 02:02:40', '2022-06-23 02:02:40'),
(8, 24, 4, 37000, 1, 0, 37000, '2022-06-23 20:04:07', '2022-06-23 20:04:07'),
(9, 25, 1, 1600000, 1, 0, 1600000, '2022-06-27 06:41:57', '2022-06-27 06:41:57'),
(10, 28, 1, 1600000, 1, 0, 1600000, '2022-06-28 02:55:53', '2022-06-28 02:55:53'),
(11, 31, 4, 37000, 9, 0, 333000, '2022-06-28 04:41:33', '2022-06-28 04:41:43'),
(12, 31, 5, 490000, 1, 0, 490000, '2022-06-28 04:41:49', '2022-06-28 04:41:49'),
(13, 33, 2, 1760000, 1, 0, 1760000, '2022-06-28 04:46:27', '2022-06-28 04:46:27'),
(14, 35, 2, 1760000, 1, 0, 1760000, '2022-06-29 06:33:05', '2022-06-29 06:33:05'),
(15, 36, 4, 37000, 1, 0, 37000, '2022-06-29 06:33:32', '2022-06-29 06:33:32'),
(16, 37, 1, 1600000, 1, 0, 1600000, '2022-06-29 08:27:55', '2022-06-29 08:27:55'),
(17, 38, 2, 1760000, 4, 0, 7040000, '2022-06-29 18:36:31', '2022-06-29 18:36:39'),
(18, 39, 4, 37000, 1, 0, 37000, '2022-06-29 18:37:19', '2022-06-29 18:37:19'),
(19, 40, 5, 490000, 1, 0, 490000, '2022-06-29 18:37:36', '2022-06-29 18:37:36'),
(20, 41, 3, 200000, 1, 0, 200000, '2022-06-29 18:37:55', '2022-06-29 18:37:55'),
(21, 42, 1, 1600000, 1, 0, 1600000, '2022-06-29 18:38:19', '2022-06-29 18:38:19'),
(22, 43, 4, 37000, 1, 0, 37000, '2022-06-29 18:39:13', '2022-06-29 18:39:13'),
(23, 45, 2, 1760000, 1, 0, 1760000, '2022-06-29 20:15:35', '2022-06-29 20:15:35'),
(24, 47, 2, 1760000, 1, 0, 1760000, '2022-06-29 20:16:29', '2022-06-29 20:16:29'),
(25, 48, 1, 1600000, 8, 0, 12800000, '2022-06-29 20:16:47', '2022-06-29 20:16:53'),
(26, 49, 2, 1760000, 1, 0, 1760000, '2022-06-30 04:27:15', '2022-06-30 04:27:15'),
(27, 50, 4, 37000, 1, 0, 37000, '2022-06-30 04:29:17', '2022-06-30 04:29:17'),
(28, 52, 4, 37000, 1, 0, 37000, '2022-07-02 07:32:48', '2022-07-02 07:32:48'),
(29, 53, 1, 1600000, 1, 0, 1600000, '2022-07-02 07:34:20', '2022-07-02 07:34:20'),
(30, 55, 1, 1600000, 1, 0, 1600000, '2022-07-02 17:34:07', '2022-07-02 17:34:07'),
(31, 55, 2, 1760000, 1, 0, 1760000, '2022-07-02 17:34:09', '2022-07-02 17:34:09'),
(32, 55, 5, 490000, 1, 0, 490000, '2022-07-02 17:34:12', '2022-07-02 17:34:12'),
(33, 55, 4, 37000, 1, 0, 37000, '2022-07-02 17:34:14', '2022-07-02 17:34:14'),
(34, 56, 5, 490000, 100, 0, 49000000, '2022-07-02 18:08:59', '2022-07-02 18:09:03'),
(35, 57, 4, 37000, 1, 0, 37000, '2022-07-02 19:31:35', '2022-07-02 19:31:35'),
(37, 60, 3, 200000, 1, 0, 200000, '2022-07-03 05:22:18', '2022-07-03 05:22:18'),
(38, 61, 1, 1600000, 1, 0, 1600000, '2022-07-03 06:09:37', '2022-07-03 06:09:37'),
(39, 61, 5, 490000, 1, 0, 490000, '2022-07-03 06:09:41', '2022-07-03 06:09:41'),
(40, 62, 2, 1760000, 1, 0, 1760000, '2022-07-03 06:12:33', '2022-07-03 06:12:33'),
(41, 63, 2, 1760000, 1, 0, 1760000, '2022-07-03 18:32:38', '2022-07-03 18:32:38'),
(42, 65, 4, 37000, 1, 0, 37000, '2022-07-04 03:57:52', '2022-07-04 03:57:52'),
(43, 68, 2, 1760000, 1, 0, 1760000, '2022-07-06 04:43:05', '2022-07-06 04:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 1, 'P000001', 'Epson L311', 'Epson', 1500000, 0, 1600000, 16, '2022-06-22 20:44:55', '2022-07-03 06:11:21'),
(2, 1, 'P000002', 'HP Ink Tank 319 (Z6Z13A)', 'HP', 1600000, 0, 1760000, 23, '2022-06-23 01:14:34', '2022-07-06 04:43:46'),
(3, 3, 'P000003', 'V-Gen SSD 128GB SATA', 'V-Gen', 170000, 0, 200000, 26, '2022-06-23 01:16:00', '2022-07-03 05:22:48'),
(4, 5, 'P000004', 'HP s1000 Mouse Wireless', 'HP', 30000, 0, 37000, 114, '2022-06-23 01:17:31', '2022-07-04 03:58:00'),
(5, 4, 'P000005', 'Seagate Barracuda HDD 3.5 inch 1 TB', 'Seagate', 400000, 0, 490000, 14, '2022-06-23 01:19:21', '2022-07-03 06:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2CRzWKl0Dw54FVaPTneXtMnhOpDcG1WB4tFmQmc4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiVDFhRzNWRkFobjJhMEFoOVFMak9pbWxwUVdwZExQaVRlMXNvWm1MQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sYXBvcmFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFdVaktkWXFibGl1NWIudXFScWgvTi5tTlVyN0pvanpwZzlNcFNyaFBISTFQd3V0by5yMXdPIjtzOjEyOiJpZF9wZW5qdWFsYW4iO2k6Njg7czoxMjoiaWRfcGVtYmVsaWFuIjtpOjIyO3M6MTE6ImlkX3N1cHBsaWVyIjtzOjE6IjEiO30=', 1657107845);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'CV. NN Fajar Komputer', 'Kembaran, Rt 01/Rw 01, Kalikajar, Wonosobo', '081234779987', 1, 5, '/img/logo-20220623084327.png', '/img/member.png', NULL, '2022-06-23 01:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'Bambang', 'Mentosari, Kaliwiro, Rt 01/Rw 02, Wonosobo', '08638271929', '2022-06-23 01:10:56', '2022-06-23 01:10:56');

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
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Harjo', 'admin@gmail.com', NULL, '$2y$10$WUjKdYqbliu5b.uqRqh/N.mNUr7Jojzpg9MpSrhPHI1Pwuto.r1wO', '/img/user.jpg', 1, NULL, NULL, NULL, NULL, NULL, '2022-06-20 02:18:04', '2022-06-28 03:14:59'),
(2, 'Kasir 1', 'kasir1@gmail.com', NULL, '$2y$10$p7XvvuhIPcaSdC7OJPKzbew/.H8sXSQBOGQuP7.Z6hupD0OLYLaeu', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2022-06-20 02:18:04', '2022-06-20 02:18:04');

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
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

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
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

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
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
