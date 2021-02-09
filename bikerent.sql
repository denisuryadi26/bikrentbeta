-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Feb 2021 pada 07.26
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikerent`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `forms`
--

CREATE TABLE `forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `forms`
--

INSERT INTO `forms` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(1, '[\"Deni Mentah2.png\",\"20210125_084955.jpg\"]', '2021-02-08 22:43:23', '2021-02-08 22:43:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_14_085727_create_pemasukans_table', 2),
(5, '2021_01_27_132758_create_sepedas_table', 3),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(9, '2016_06_01_000004_create_oauth_clients_table', 4),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(11, '2021_02_09_052143_multipleproducts', 5),
(12, '2018_02_02_121732_create_forms_table', 6),
(13, '2021_02_09_054828_create_multiple_product', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `multipleproduct`
--

CREATE TABLE `multipleproduct` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'rRQ7I7iBI2DzjcqtKKuS49gvMqOirujKVhtW9Eak', NULL, 'http://localhost', 1, 0, 0, '2021-02-08 04:17:09', '2021-02-08 04:17:09'),
(2, NULL, 'Laravel Password Grant Client', 's3KMD8TdGcsfUWDbiWfOpRpo4YXvdtxUshlT9s8V', 'users', 'http://localhost', 0, 1, 0, '2021-02-08 04:17:09', '2021-02-08 04:17:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-08 04:17:09', '2021-02-08 04:17:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `sumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `omset` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modal` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `tanggal`, `sumber`, `produk`, `omset`, `modal`, `profit`, `created_at`, `updated_at`) VALUES
(1, '2018-10-10', 'Ahmad Rifa\'i', 'Hardcase 3D', '85000', '50000', '35000', '2020-10-14 04:32:33', '2020-10-14 04:32:33'),
(2, '2018-10-11', 'Zahra Maulida', 'Hardcase 3D', '85000', '50000', '35000', '2020-10-14 04:37:30', '2020-10-14 04:37:30'),
(3, '2018-11-02', 'Taufiqu Rahman', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 04:41:41', '2020-10-14 04:41:41'),
(4, '2018-11-05', 'Suyanti', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 04:45:25', '2020-10-14 04:45:25'),
(5, '2018-11-12', 'Indra', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 04:46:11', '2020-10-14 04:46:11'),
(6, '2018-11-30', 'Rudy Hermanto', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 04:46:37', '2020-10-14 04:46:37'),
(7, '2018-12-05', 'Ganes', 'Hardcase 3D', '95000', '45000', '50000', '2020-10-14 04:54:34', '2020-10-14 04:54:34'),
(8, '2018-12-05', 'Arifin', 'Hardcase 3D', '95000', '45000', '50000', '2020-10-14 04:55:14', '2020-10-14 04:55:14'),
(9, '2018-12-09', 'Eko Yulianto', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 04:55:56', '2020-10-14 04:55:56'),
(10, '2018-12-10', 'Jaluk', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 04:56:37', '2020-10-14 04:56:37'),
(11, '2018-12-11', 'Nurul Luthfiani', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 05:04:43', '2020-10-14 05:04:43'),
(12, '2018-12-12', 'MoMo', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 05:05:45', '2020-10-14 05:05:45'),
(13, '2019-01-03', 'Nena', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 05:06:26', '2020-10-14 05:06:26'),
(14, '2019-01-21', 'Arifin', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 05:08:43', '2020-10-14 05:08:43'),
(15, '2019-01-25', 'Caca', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 05:09:13', '2020-10-14 05:09:13'),
(16, '2019-02-21', 'Halde / ibu Aida', 'Hardcase 3D', '95000', '45000', '50000', '2020-10-14 05:09:55', '2020-10-14 05:09:55'),
(17, '2019-03-15', 'Bp Hemud', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:51:24', '2020-10-14 18:51:24'),
(18, '2019-03-19', 'Andrey Roosevelt', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 18:52:17', '2020-10-14 18:52:17'),
(19, '2019-04-04', 'Deni Suryadi', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:52:59', '2020-10-14 18:52:59'),
(20, '2019-04-18', 'Aditya Razu', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 18:53:41', '2020-10-14 18:53:41'),
(21, '2019-05-01', 'Ivha', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:54:14', '2020-10-14 18:54:14'),
(22, '2019-05-14', 'Silvia Idamatun', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 18:54:47', '2020-10-14 18:54:47'),
(23, '2019-05-23', 'Rully Rubiansyah', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:56:16', '2020-10-14 18:56:16'),
(24, '2019-06-21', 'Putri', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:57:18', '2020-10-14 18:57:18'),
(25, '2019-07-03', 'Deni Suryadi', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:57:51', '2020-10-14 18:57:51'),
(26, '2019-07-03', 'Fika Nadiya', 'Hardcase 3D', '132000', '50000', '82000', '2020-10-14 18:59:07', '2020-10-14 18:59:07'),
(27, '2019-07-15', 'Nidaulhaq Nurul Syifa', 'Hardcase 3D', '204000', '100000', '104000', '2020-10-14 18:59:33', '2020-10-14 18:59:33'),
(28, '2019-07-16', 'Dwi Ardiansyah S', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 19:01:10', '2020-10-14 19:01:10'),
(29, '2019-07-22', 'Isni Fauziah Arby', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 19:01:54', '2020-10-14 19:01:54'),
(30, '2019-07-22', 'Cust Temen Nena', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 19:15:51', '2020-10-14 19:15:51'),
(31, '2019-07-26', 'Sri Prihatiningsih', 'Hardcase 3D', '182000', '90000', '92000', '2020-10-14 19:17:13', '2020-10-14 19:17:13'),
(32, '2019-07-31', 'Jimmy Depari', 'Hardcase 3D', '132000', '62000', '70000', '2020-10-14 19:18:53', '2020-10-14 19:18:53'),
(33, '2019-08-01', 'Deta Ramadhani', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 19:19:51', '2020-10-14 19:19:51'),
(34, '2019-08-02', 'Amry', 'Hardcase 3D', '136000', '76000', '60000', '2020-10-14 19:20:23', '2020-10-14 19:20:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukans`
--

CREATE TABLE `pemasukans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `sumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `omset` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modal` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemasukans`
--

INSERT INTO `pemasukans` (`id`, `tanggal`, `sumber`, `produk`, `omset`, `modal`, `profit`, `created_at`, `updated_at`) VALUES
(1, '2018-10-10', 'Ahmad Rifa\'i', 'Hardcase 3D', '85000', '50000', '35000', '2020-10-14 04:32:33', '2020-10-14 04:32:33'),
(2, '2018-10-11', 'Zahra Maulida', 'Hardcase 3D', '85000', '50000', '35000', '2020-10-14 04:37:30', '2020-10-14 04:37:30'),
(3, '2018-11-02', 'Taufiqu Rahman', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 04:41:41', '2020-10-14 04:41:41'),
(4, '2018-11-05', 'Suyanti', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 04:45:25', '2020-10-14 04:45:25'),
(5, '2018-11-12', 'Indra', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 04:46:11', '2020-10-14 04:46:11'),
(6, '2018-11-30', 'Rudy Hermanto', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 04:46:37', '2020-10-14 04:46:37'),
(7, '2018-12-05', 'Ganes', 'Hardcase 3D', '95000', '45000', '50000', '2020-10-14 04:54:34', '2020-10-14 04:54:34'),
(8, '2018-12-05', 'Arifin', 'Hardcase 3D', '95000', '45000', '50000', '2020-10-14 04:55:14', '2020-10-14 04:55:14'),
(9, '2018-12-09', 'Eko Yulianto', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 04:55:56', '2020-10-14 04:55:56'),
(10, '2018-12-10', 'Jaluk', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 04:56:37', '2020-10-14 04:56:37'),
(11, '2018-12-11', 'Nurul Luthfiani', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 05:04:43', '2020-10-14 05:04:43'),
(12, '2018-12-12', 'MoMo', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 05:05:45', '2020-10-14 05:05:45'),
(13, '2019-01-03', 'Nena', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 05:06:26', '2020-10-14 05:06:26'),
(14, '2019-01-21', 'Arifin', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 05:08:43', '2020-10-14 05:08:43'),
(15, '2019-01-25', 'Caca', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 05:09:13', '2020-10-14 05:09:13'),
(16, '2019-02-21', 'Halde / ibu Aida', 'Hardcase 3D', '95000', '45000', '50000', '2020-10-14 05:09:55', '2020-10-14 05:09:55'),
(17, '2019-03-15', 'Bp Hemud', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:51:24', '2020-10-14 18:51:24'),
(18, '2019-03-19', 'Andrey Roosevelt', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 18:52:17', '2020-10-14 18:52:17'),
(19, '2019-04-04', 'Deni Suryadi', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:52:59', '2020-10-14 18:52:59'),
(20, '2019-04-18', 'Aditya Razu', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 18:53:41', '2020-10-14 18:53:41'),
(21, '2019-05-01', 'Ivha', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:54:14', '2020-10-14 18:54:14'),
(22, '2019-05-14', 'Silvia Idamatun', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 18:54:47', '2020-10-14 18:54:47'),
(23, '2019-05-23', 'Rully Rubiansyah', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:56:16', '2020-10-14 18:56:16'),
(24, '2019-06-21', 'Putri', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:57:18', '2020-10-14 18:57:18'),
(25, '2019-07-03', 'Deni Suryadi', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 18:57:51', '2020-10-14 18:57:51'),
(26, '2019-07-03', 'Fika Nadiya', 'Hardcase 3D', '132000', '50000', '82000', '2020-10-14 18:59:07', '2020-10-14 18:59:07'),
(27, '2019-07-15', 'Nidaulhaq Nurul Syifa', 'Hardcase 3D', '204000', '100000', '104000', '2020-10-14 18:59:33', '2020-10-14 18:59:33'),
(28, '2019-07-16', 'Dwi Ardiansyah S', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 19:01:10', '2020-10-14 19:01:10'),
(29, '2019-07-22', 'Isni Fauziah Arby', 'Hardcase 3D', '180000', '100000', '80000', '2020-10-14 19:01:54', '2020-10-14 19:01:54'),
(30, '2019-07-22', 'Cust Temen Nena', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 19:15:51', '2020-10-14 19:15:51'),
(31, '2019-07-26', 'Sri Prihatiningsih', 'Hardcase 3D', '182000', '90000', '92000', '2020-10-14 19:17:13', '2020-10-14 19:17:13'),
(32, '2019-07-31', 'Jimmy Depari', 'Hardcase 3D', '132000', '62000', '70000', '2020-10-14 19:18:53', '2020-10-14 19:18:53'),
(33, '2019-08-01', 'Deta Ramadhani', 'Hardcase 3D', '95000', '50000', '45000', '2020-10-14 19:19:51', '2020-10-14 19:19:51'),
(34, '2019-08-02', 'Amry', 'Hardcase 3D', '136000', '76000', '60000', '2020-10-14 19:20:23', '2020-10-14 19:20:23'),
(35, '2019-08-03', 'Roni', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-18 04:10:53', '2020-10-18 04:10:53'),
(36, '2019-08-05', 'Faiz', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-18 04:12:09', '2020-10-18 04:12:09'),
(37, '2019-08-05', 'Mega Putri Candr', 'Hardcase 3D', '119000', '50000', '69000', '2020-10-18 04:13:06', '2020-10-18 04:13:06'),
(38, '2019-08-05', 'Rifki Wibowo', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-18 04:13:35', '2020-10-18 04:13:35'),
(39, '2019-08-05', 'Ramses Bima', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-18 04:14:01', '2020-10-18 04:14:01'),
(40, '2019-08-08', 'Rahmawati Sholeha', 'Hardcase 3D', '190000', '100000', '90000', '2020-10-18 04:16:28', '2020-10-18 04:16:28'),
(41, '2019-08-09', 'Fila Delfia', 'Hardcase 3D', '100000', '65000', '35000', '2020-10-18 04:16:56', '2020-10-18 04:16:56'),
(42, '2019-08-10', 'Yoga/Mbim', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-18 04:18:49', '2020-10-18 04:18:49'),
(43, '2019-08-11', 'Raka Pradana', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-18 04:19:12', '2020-10-18 04:19:12'),
(44, '2019-08-12', 'Chris Wahyudi', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-18 04:19:56', '2020-10-18 04:19:56'),
(45, '2019-08-13', 'Yoga/Mbim', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-18 04:20:27', '2020-10-18 04:20:27'),
(46, '2019-08-14', 'Irfan Rahman Aji', 'Hardcase 3D', '138000', '50000', '88000', '2020-10-18 04:20:52', '2020-10-18 04:20:52'),
(47, '2019-08-15', 'Chris Wahyudi', 'Hardcase 3D', '270000', '150000', '120000', '2020-10-18 04:21:27', '2020-10-18 04:21:27'),
(48, '2019-08-15', 'Dimas Galih Satria', 'Hardcase 3D', '169000', '79000', '90000', '2020-10-18 04:21:58', '2020-10-18 04:21:58'),
(49, '2019-08-19', 'Ardi Rahmawan', 'Hardcase 3D', '187000', '97000', '90000', '2020-10-18 04:22:21', '2020-10-18 04:22:21'),
(50, '2019-08-20', 'Dimas Galih Satria', 'Hardcase 3D', '169000', '79000', '90000', '2020-10-18 04:24:03', '2020-10-18 04:24:03'),
(51, '2019-08-20', 'Husin Zamzami', 'Hardcase 3D', '140000', '78000', '62000', '2020-10-18 04:24:27', '2020-10-18 04:24:27'),
(52, '2019-08-21', 'Fransesco', 'Hardcase 3D', '150000', '65000', '85000', '2020-10-18 04:24:51', '2020-10-18 04:24:51'),
(53, '2019-08-22', 'Muhammad Firdaus', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-18 04:25:33', '2020-10-18 04:25:33'),
(54, '2019-08-22', 'Nanda Sri Widya Ningsih', 'Hardcase 3D', '155000', '65000', '90000', '2020-10-18 04:25:54', '2020-10-18 04:25:54'),
(55, '2019-08-23', 'Ivando Shahab', 'Hardcase 3D', '110000', '50000', '60000', '2020-10-18 05:57:56', '2020-10-18 05:57:56'),
(56, '2019-08-25', 'Rizky Dwiguna', 'Hardcase 3D', '135000', '65000', '70000', '2020-10-18 05:58:19', '2020-10-18 05:58:19'),
(57, '2019-08-27', 'Lutfi Pramudya', 'Hardcase 3D', '120000', '50000', '70000', '2020-10-18 07:37:41', '2020-10-18 07:37:41'),
(58, '2019-08-28', 'Abdul Muis', 'Hardcase 3D', '285000', '118000', '167000', '2020-10-18 07:38:03', '2020-10-18 07:38:03'),
(59, '2019-08-28', 'Kayla', 'Hardcase 3D', '120000', '103000', '17000', '2020-10-18 07:38:24', '2020-10-18 07:38:24'),
(60, '2019-08-28', 'Muh. Nurhidayat A.M.', 'Hardcase 3D', '150000', '50000', '100000', '2020-10-18 07:38:44', '2020-10-18 07:38:44'),
(61, '2019-08-29', 'Ayu S', 'Hardcase 3D', '210000', '100000', '110000', '2020-10-18 07:39:05', '2020-10-18 07:39:05'),
(62, '2019-08-29', 'Fransesco', 'Hardcase 3D', '150000', '65000', '85000', '2020-10-18 07:45:57', '2020-10-18 07:45:57'),
(63, '2019-08-30', 'Audy Arfa', 'Hardcase 3D', '120000', '50000', '70000', '2020-10-18 07:46:25', '2020-10-18 07:46:25'),
(64, '2019-09-01', 'Maskur', 'Hardcase 3D', '167000', '77000', '90000', '2020-10-18 07:46:46', '2020-10-18 07:46:46'),
(65, '2019-09-03', 'Dyonaldi Arief', 'Hardcase 3D', '198000', '93000', '105000', '2020-10-18 07:47:30', '2020-10-18 07:47:30'),
(66, '2019-09-04', 'Ade Putri Nurhayati', 'Hardcase 3D', '120000', '45000', '75000', '2020-10-18 07:48:03', '2020-10-18 07:48:03'),
(67, '2019-09-05', 'Abd Halim Mawaqib', 'Hardcase 3D', '163000', '73000', '90000', '2020-10-18 18:01:14', '2020-10-18 18:01:14'),
(68, '2019-09-06', 'Habib Akbar Ramdhani', 'Hardcase 3D', '120000', '50000', '70000', '2020-10-18 18:01:40', '2020-10-18 18:01:40'),
(69, '2019-09-07', 'Ahmad Fauzan', 'Hardcase 3D', '150000', '68000', '82000', '2020-10-18 18:02:05', '2020-10-18 18:02:05'),
(70, '2019-09-09', 'Naiyo', 'Hardcase 3D', '188000', '85000', '103000', '2020-10-18 18:02:28', '2020-10-18 18:02:28'),
(71, '2019-09-10', 'Rizki Andika Triandy', 'Hardcase 3D', '150000', '68000', '82000', '2020-10-18 18:02:53', '2020-10-18 18:02:53'),
(72, '2019-09-11', 'Reza Gunawan', 'Hardcase 3D', '120000', '50000', '70000', '2020-10-18 18:03:22', '2020-10-18 18:03:22'),
(73, '2019-09-29', 'FARIZAL ELKA P', 'Hardcase 3D', '150000', '73000', '77000', '2020-10-18 18:03:49', '2020-10-18 18:03:49'),
(74, '2019-10-02', 'Ahmad Baihaqi', 'Hardcase 3D', '150000', '105000', '45000', '2020-10-18 18:04:15', '2020-10-18 18:04:15'),
(75, '2019-10-06', 'Eka Saputra', 'Hardcase 3D', '136000', '63000', '73000', '2020-10-18 18:04:44', '2020-10-18 18:04:44'),
(76, '2019-10-07', 'Muhammad Asnawi Ahmad', 'Hardcase 3D', '163000', '86000', '77000', '2020-10-18 18:05:07', '2020-10-18 18:05:07'),
(77, '2019-10-08', 'Yuniar Permata', 'Hardcase 3D', '232000', '110000', '122000', '2020-10-18 18:05:33', '2020-10-18 18:05:33'),
(78, '2019-10-09', 'Muh. Ragyl Baihaqi', 'Hardcase 3D', '120000', '63000', '57000', '2020-10-18 18:05:58', '2020-10-18 18:05:58'),
(79, '2019-10-14', 'Ilman Zikri', 'Hardcase 3D', '210000', '127000', '83000', '2020-10-18 18:06:24', '2020-10-18 18:06:24'),
(80, '2019-10-16', 'Fania Azzahroh Nurul Falah', 'Hardcase 3D', '230000', '145000', '85000', '2020-10-18 18:06:53', '2020-10-18 18:06:53'),
(81, '2019-10-18', 'Kevin Lorensyah', 'Hardcase 3D', '120000', '50000', '70000', '2020-10-18 18:07:21', '2020-10-18 18:07:21'),
(82, '2019-10-18', 'Roynaldi Wahyu I', 'Hardcase 3D', '120000', '50000', '70000', '2020-10-18 18:07:45', '2020-10-18 18:07:45'),
(83, '2019-10-19', 'Iwan Kurniawan', 'Hardcase 3D', '210000', '110000', '100000', '2020-10-18 23:37:45', '2020-10-18 23:37:45'),
(84, '2019-10-20', 'Khayati Umu Zulfa', 'Hardcase 3D', '150000', '80000', '70000', '2020-10-18 23:38:12', '2020-10-18 23:38:12'),
(85, '2019-10-20', 'Micheal', 'Hardcase 3D', '150000', '57000', '93000', '2020-10-18 23:38:59', '2020-10-18 23:38:59'),
(86, '2019-10-23', 'Dede Slamet M', 'Hardcase 3D', '140000', '78000', '62000', '2020-10-18 23:39:22', '2020-10-18 23:39:22'),
(87, '2019-10-25', 'Mohammad Atha Nabil', 'Hardcase 3D', '157000', '90000', '67000', '2020-10-18 23:39:48', '2020-10-18 23:39:48'),
(88, '2019-10-26', 'Roin', 'Hardcase 3D', '148000', '75000', '73000', '2020-10-18 23:40:08', '2020-10-18 23:40:08'),
(89, '2019-10-27', 'Syahrul Mulyana', 'Hardcase 3D', '140000', '63000', '77000', '2020-10-20 19:07:11', '2020-10-20 19:07:11'),
(90, '2019-10-29', 'Ari Prajanata (Mang Yok)', 'Hardcase 3D', '250000', '124000', '126000', '2020-10-20 19:07:36', '2020-10-20 19:07:36'),
(91, '2019-11-02', 'Dicki Baskoro', 'Hardcase 3D', '150000', '56000', '94000', '2020-10-20 19:08:03', '2020-10-20 19:08:03'),
(92, '2019-11-02', 'Ilham Rapid Syawaldi', 'Hardcase 3D', '100000', '45000', '55000', '2020-10-20 19:29:16', '2020-10-20 19:29:16'),
(93, '2019-11-16', 'Khayati Umu Zulfa', 'Hardcase 3D', '80000', '50000', '30000', '2020-10-20 19:30:24', '2020-10-20 19:30:24'),
(94, '2019-11-17', 'Hasyir Masykuri', 'Hardcase 3D', '142000', '62000', '80000', '2020-10-20 19:34:16', '2020-10-20 19:34:16'),
(95, '2019-12-13', 'Dalaal Mahmudah', 'Hardcase 3D', '300000', '150000', '150000', '2020-10-20 19:34:48', '2020-10-20 19:34:48'),
(96, '2019-12-16', 'Faturrahman Azmi', 'Hardcase 3D', '120000', '77000', '43000', '2020-10-20 19:35:14', '2020-10-20 19:35:14'),
(97, '2019-12-17', 'Thalita', 'Hardcase 3D', '169000', '89000', '80000', '2020-10-20 19:35:44', '2020-10-20 19:35:44'),
(98, '2019-12-22', 'Angga Bambang Pratama', 'Hardcase 3D', '180000', '107000', '73000', '2020-10-20 19:36:06', '2020-10-20 19:36:06'),
(99, '2019-12-23', 'Lucky Alvian', 'Hardcase 3D', '195000', '85000', '110000', '2020-10-20 19:36:31', '2020-10-20 19:36:31'),
(100, '2019-12-24', 'Kelvin Ambrose', 'Hardcase 3D', '228000', '118000', '110000', '2020-10-20 19:39:21', '2020-10-20 19:39:21'),
(101, '2019-12-24', 'Evi Toeviah', 'Hardcase 3D', '120000', '59000', '61000', '2020-10-20 19:39:47', '2020-10-20 19:39:47'),
(102, '2019-12-24', 'Willie Septianus', 'Hardcase 3D', '210000', '109000', '101000', '2020-10-20 19:40:18', '2020-10-20 19:40:18'),
(103, '2020-01-05', 'Jonathan Gunawan', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-20 19:40:40', '2020-10-20 19:40:40'),
(104, '2020-01-05', 'Yogi Wahyu W', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-20 19:42:04', '2020-10-20 19:42:04'),
(105, '2020-01-06', 'Arik Siswanto', 'Hardcase 3D', '119000', '50000', '69000', '2020-10-20 19:45:08', '2020-10-20 19:45:08'),
(106, '2020-01-06', 'Oom Komala', 'Hardcase 3D', '110000', '50000', '60000', '2020-10-20 19:47:45', '2020-10-20 19:47:45'),
(107, '2020-01-10', 'Arif Kur', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-20 19:48:29', '2020-10-20 19:48:29'),
(108, '2020-01-10', 'H. Yayat & Hj. Iyum', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-20 19:49:02', '2020-10-20 19:49:02'),
(109, '2020-01-11', 'Eza Ferdian', 'Hardcase 3D', '135000', '50000', '85000', '2020-10-20 19:49:41', '2020-10-20 19:49:41'),
(110, '2020-01-11', 'Henny Melisa', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-20 19:50:35', '2020-10-20 19:50:35'),
(111, '2020-01-14', 'BERNADETA BELA', 'Hardcase 3D', '80000', '50000', '30000', '2020-10-20 19:52:51', '2020-10-20 19:52:51'),
(112, '2020-01-18', 'Jhon Putra', 'Hardcase 3D', '165000', '50000', '115000', '2020-10-20 19:53:15', '2020-10-20 19:53:15'),
(113, '2020-01-20', 'Moh. Zidni', 'Hardcase 3D', '142000', '82000', '60000', '2020-10-20 19:53:48', '2020-10-20 19:53:48'),
(114, '2020-01-24', 'Riyan Kurniawan', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-20 19:54:15', '2020-10-20 19:54:15'),
(115, '2020-01-25', 'Fandi Setya Budi', 'Hardcase 3D', '119000', '50000', '69000', '2020-10-20 19:55:04', '2020-10-20 19:55:04'),
(116, '2020-01-28', 'Fauza Habibie', 'Hardcase 3D', '120000', '50000', '70000', '2020-10-20 19:55:39', '2020-10-20 19:55:39'),
(117, '2020-02-02', 'Pak Subur (Isa Fadli)', 'Hardcase 3D', '110000', '50000', '60000', '2020-10-20 19:56:01', '2020-10-20 19:56:01'),
(118, '2020-02-07', 'Denny Irvan Sinuhaji', 'Hardcase 3D', '131000', '60000', '71000', '2020-10-20 19:56:42', '2020-10-20 19:56:42'),
(119, '2020-02-08', 'Ade Noer K.D', 'Hardcase 3D', '110000', '50000', '60000', '2020-10-20 20:39:32', '2020-10-20 20:39:32'),
(120, '2020-02-11', 'Anggie', 'Hardcase 3D', '100000', '50000', '50000', '2020-10-20 20:39:57', '2020-10-20 20:39:57'),
(121, '2020-02-12', 'Suraimansyah', 'Hardcase 3D', '145000', '75000', '70000', '2020-10-20 20:40:20', '2020-10-20 20:40:20'),
(122, '2020-04-03', 'Prasetyo', 'Hardcase 3D', '100000', '55000', '45000', '2020-10-20 20:41:01', '2020-10-20 20:41:01'),
(123, '2020-04-03', 'Adha', 'Hardcase 3D', '135000', '55000', '80000', '2020-10-20 20:41:27', '2020-10-20 20:41:27'),
(124, '2020-04-08', 'Didid Hendro Sutrisno', 'Hardcase 3D', '220000', '110000', '110000', '2020-10-20 20:41:51', '2020-10-20 20:41:51'),
(125, '2020-04-24', 'Willy Noorasheed', 'Hardcase 3D', '100000', '55000', '45000', '2020-10-20 20:56:10', '2020-10-20 20:56:10'),
(126, '2020-05-08', 'Irwan', 'Hardcase 3D', '155000', '80000', '75000', '2020-10-20 20:56:34', '2020-10-20 20:56:34'),
(127, '2020-05-08', 'Danang Setia Budi', 'Hardcase 3D', '110000', '75000', '35000', '2020-10-20 20:56:59', '2020-10-20 20:56:59'),
(128, '2020-05-09', 'Imam Ahmad Sayfullah', 'Hardcase 3D', '100000', '55000', '45000', '2020-10-20 20:57:24', '2020-10-20 20:57:24'),
(129, '2020-05-10', 'M Faisal Febriansyah', 'Hardcase 3D', '120000', '80000', '40000', '2020-10-20 20:58:29', '2020-10-20 20:58:29'),
(130, '2020-05-15', 'Elvan Nurvian', 'Hardcase 3D', '143000', '80000', '63000', '2020-10-20 23:20:35', '2020-10-20 23:20:35'),
(131, '2020-05-17', 'Yuan Dwi Kurniawan', 'Hardcase 3D', '120000', '80000', '40000', '2020-10-20 23:21:11', '2020-10-20 23:21:11'),
(132, '2020-05-18', 'Ny Edwin', 'Hardcase 3D', '240000', '136000', '104000', '2020-10-20 23:21:37', '2020-10-20 23:21:37'),
(133, '2020-05-27', 'Reza Gunawan', 'Hardcase 3D', '100000', '54998', '45002', '2020-10-20 23:21:59', '2020-10-20 23:21:59'),
(134, '2020-05-27', 'Muhammad Rasyid Asy\'ari', 'Hardcase 3D', '135000', '54998', '80002', '2020-10-20 23:22:29', '2020-10-20 23:22:29'),
(135, '2020-05-30', 'Ali Ibrahim (Ohim)', 'Hardcase 3D', '200000', '109998', '90002', '2020-10-20 23:22:59', '2020-10-20 23:22:59'),
(136, '2020-05-30', 'Alinda', 'Hardcase 3D', '100000', '55000', '45000', '2020-10-20 23:23:19', '2020-10-20 23:23:19'),
(137, '2020-05-31', 'Dion Rudiono', 'Hardcase 3D', '100000', '55000', '45000', '2020-10-20 23:23:43', '2020-10-20 23:23:43'),
(138, '2020-05-31', 'Muhammad Ali Subchan', 'Hardcase 3D', '227000', '110000', '117000', '2020-10-20 23:24:04', '2020-10-20 23:24:04'),
(139, '2020-06-01', 'Ilham Fajar Setiawan', 'Hardcase 3D', '122000', '55000', '67000', '2020-10-20 23:24:28', '2020-10-20 23:24:28'),
(140, '2020-06-02', 'Indah/Ibu Lala', 'Hardcase 3D', '100000', '55000', '45000', '2020-10-20 23:24:55', '2020-10-20 23:24:55'),
(141, '2020-06-06', 'Rachmad Dwi Pramudiyanto', 'Hardcase 3D', '167000', '125000', '42000', '2020-10-20 23:25:20', '2020-10-20 23:25:20'),
(142, '2020-06-23', 'Fauziah Rahmi', 'Hardcase 3D', '180000', '110000', '70000', '2020-10-20 23:25:41', '2020-10-20 23:25:41'),
(143, '2020-07-17', 'Muhammad Rifqi', 'Hardcase 3D', '100000', '55000', '45000', '2020-10-20 23:26:07', '2020-10-20 23:26:07'),
(144, '2020-08-04', 'Syarif Zulfikar', 'Hardcase 3D', '240000', '150000', '90000', '2020-10-20 23:26:28', '2020-10-20 23:26:28'),
(145, '2020-10-12', 'Debora Yola', 'Hardcase 3D', '126000', '57000', '69000', '2020-10-20 23:26:52', '2020-10-20 23:26:52'),
(146, '2020-10-29', 'Mulnawati', 'Mug Bunglon', '141000', '115000', '26000', '2020-10-29 05:37:34', '2020-10-30 00:52:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `image`, `content`, `created_at`, `updated_at`) VALUES
(8, 'testedit', '30000000', 'jqo2C4STvuHyCbodRKSQeataWKQ57KR1ROzZuPjv.jpg', '<p>testedit</p>', '2021-02-06 08:35:03', '2021-02-06 09:47:51'),
(10, 'Sepeda Abal Abal', '2400000', 'RDqzCHcANVulicR4erS2ZBJRzt4Zm9Xb88bWSKsu.jpg', 'Tes Masuk', '2021-02-08 19:58:26', '2021-02-08 19:58:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `producttype`
--

CREATE TABLE `producttype` (
  `product_type_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `modified_by` varbinary(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `producttype`
--

INSERT INTO `producttype` (`product_type_id`, `name`, `created_date`, `modified_date`, `created_by`, `modified_by`) VALUES
(1, 'Mountain', '2020-12-08 14:40:38', '2020-12-08 14:40:39', '1', 0x31),
(2, 'Fixie', '2020-12-08 14:41:06', '2020-12-08 14:41:08', '1', 0x31),
(3, 'BMX', '2020-12-08 14:41:39', '2020-12-08 14:41:42', '1', 0x31),
(4, 'Brompton', '2020-12-08 15:02:36', '2020-12-08 15:02:38', '1', 0x31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_`
--

CREATE TABLE `product_` (
  `product_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `modified_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_`
--

INSERT INTO `product_` (`product_id`, `product_type_id`, `code`, `name`, `created_date`, `modified_date`, `created_by`, `modified_by`) VALUES
(22, 2, 'cobalagi', 'cobalagi', '2020-12-10 15:21:06', '2020-12-10 16:00:39', '1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$77huC/CewgNLhcSd1P0Fx.8T1eEjcq5KBn8VinMfZTdOM1UqBvxj.', NULL, '2021-01-24 09:26:51', '2021-01-24 09:26:51'),
(2, 'jay', 'revanggan@gmail.com', NULL, '$2y$10$MBlPSjIXVz.pAshI2jEHI.BMcXk3FqP5MfGZULHePXlilNttLlFbC', NULL, '2021-02-02 07:28:04', '2021-02-02 07:28:04'),
(3, 'jay', 'jay@gmail.com', NULL, '$2y$10$rDZIygKj35ACBilFEy/UieBKD5rNWgdweOZhosI.ThgrzPX1hqEaG', NULL, '2021-02-06 07:15:09', '2021-02-06 07:15:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_`
--

CREATE TABLE `users_` (
  `users_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `hak_akses` varchar(200) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users_`
--

INSERT INTO `users_` (`users_id`, `username`, `full_name`, `password`, `hak_akses`, `created_date`, `modified_date`, `created_by`, `modified_by`) VALUES
(1, 'ajay', 'Revangga Nugraha', 'qwe123', 'Admin', '2020-12-02 22:56:17', '2020-12-02 22:56:20', 1, 1),
(2, 'boni', 'Boni', 'qweasd', 'Admin', '2020-12-02 22:56:24', '2020-12-02 22:56:26', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `multipleproduct`
--
ALTER TABLE `multipleproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pemasukans`
--
ALTER TABLE `pemasukans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indeks untuk tabel `product_`
--
ALTER TABLE `product_`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_`
--
ALTER TABLE `users_`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `multipleproduct`
--
ALTER TABLE `multipleproduct`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `pemasukans`
--
ALTER TABLE `pemasukans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `producttype`
--
ALTER TABLE `producttype`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product_`
--
ALTER TABLE `product_`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users_`
--
ALTER TABLE `users_`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
