-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 13, 2025 at 09:32 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cash_books`
--

CREATE TABLE `cash_books` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(13,2) NOT NULL DEFAULT '0.00',
  `registration_cost_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `syahriah_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_books`
--

INSERT INTO `cash_books` (`id`, `date`, `note`, `debit`, `credit`, `registration_cost_id`, `syahriah_id`, `created_at`, `updated_at`) VALUES
('4f89fe04-9923-4468-82ec-5b4669b50aec', '2024-11-06', 'Pembayaran Syahriah/SPP Adi Gumilang', '1000000.00', '0.00', NULL, 'b7ec6a8e-0f65-48e9-a559-63faa9514e6b', '2024-11-06 09:46:12', '2024-11-06 09:46:12'),
('94624b46-4634-48a7-b788-664ad675abae', '2024-11-06', 'Pembayaran Syahriah/SPP Adi Gumilang', '1000000.00', '0.00', NULL, 'e1fe803b-a58d-4f90-ab52-fe9783f9f8e4', '2024-11-06 09:45:55', '2024-11-06 09:45:55'),
('cc7c4405-1a7a-49a7-8138-d89ca834d5b1', '2024-11-14', 'Pembayaran Syahriah/SPP Adi Gumilang', '1000000.00', '0.00', NULL, 'b8c10832-aeb9-4e17-ba62-37cd61779213', '2024-11-14 09:34:40', '2024-11-14 09:34:40'),
('d69b668c-c767-4043-a06d-ea6082d7128b', '2024-10-29', 'Pembayaran Pendaftaran Santri Budi Santoso', '3000000.00', '0.00', '7c7294d1-7945-4e3a-bfb4-5f1b8e4f4057', NULL, '2024-10-29 07:46:29', '2024-10-29 07:46:29'),
('e17e1849-2fcd-47d1-a850-bb24c98d797a', '2024-11-05', 'Konsumsi Kyai', '0.00', '1200000.00', NULL, NULL, '2024-11-06 10:01:25', '2024-11-06 10:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE `costs` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spp` bigint UNSIGNED NOT NULL DEFAULT '0',
  `construction` bigint UNSIGNED NOT NULL DEFAULT '0',
  `facilities` bigint UNSIGNED NOT NULL DEFAULT '0',
  `wardrobe` bigint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`id`, `spp`, `construction`, `facilities`, `wardrobe`, `created_at`, `updated_at`) VALUES
('da997457-8abb-4cc0-aa07-87b56ce747f5', 1000000, 1000000, 1000000, 1000000, '2024-10-29 07:45:27', '2024-10-29 07:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `in_mails`
--

CREATE TABLE `in_mails` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_date` date NOT NULL,
  `file_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_mails`
--

INSERT INTO `in_mails` (`id`, `mail_number`, `mail_date`, `note`, `sender`, `recipient`, `record_date`, `file_in`, `created_at`, `updated_at`) VALUES
('8634cf89-daae-491e-9315-e720d2bc1993', '011/KOMPLEK-TENGAH/XI/1974', '1995-11-06', 'Quia quis enim aliquid pariatur.', 'Jati Maulana', 'Hasna Mardhiyah', '1979-05-05', NULL, '2024-10-29 07:45:28', '2024-10-29 07:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `user_id`, `created_at`, `updated_at`) VALUES
('00517115-2db0-4d3d-a7bf-20d38d46b28d', 'Edit Data Santri', 'http://127.0.0.1:8000/santri/fa201ed9-6016-4d90-b3aa-f3858c5260d7', '2de48dfc-10cb-43e1-93f1-473efac13c19', '2025-01-21 07:50:23', '2025-01-21 07:50:23'),
('0cf17699-f72a-493a-89a5-8b5737d4624c', 'User Login', 'http://localhost:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-12-27 03:41:11', '2024-12-27 03:41:11'),
('12ffa0a7-1145-48b3-9f9d-419f04a243b6', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2025-01-21 08:59:09', '2025-01-21 08:59:09'),
('15223239-c956-464b-a63c-24a2f8b45d3f', 'Edit Data Santri', 'http://127.0.0.1:8000/santri/fa201ed9-6016-4d90-b3aa-f3858c5260d7', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2025-01-22 10:06:11', '2025-01-22 10:06:11'),
('2092a124-6f26-45db-8c26-c9a5e82e22e1', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-11-14 09:16:19', '2024-11-14 09:16:19'),
('2a467b21-1211-46bd-b728-52e2ccf5168d', 'User Logout', 'http://127.0.0.1:8000/logout', '2de48dfc-10cb-43e1-93f1-473efac13c19', '2025-01-21 08:33:47', '2025-01-21 08:33:47'),
('2c28f0df-a225-474f-97f1-b8e1e7140e65', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-11-06 09:25:10', '2024-11-06 09:25:10'),
('2cc4bb36-407c-49a2-bf17-a6e6cd8d77f3', 'Edit Biaya Pembayaran', 'http://127.0.0.1:8000/biaya/edit', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-10-29 07:46:11', '2024-10-29 07:46:11'),
('2d4e07ea-f6e4-4032-82c4-a1e9acd89a5d', 'Bayar Syahriah (SPP) Adi Gumilang (Jan 2024)', 'http://127.0.0.1:8000/syahriah', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-11-06 09:45:55', '2024-11-06 09:45:55'),
('32533de6-2309-4f9b-b1b7-2a7a4276544f', 'Tambah Pengeluaran Kas', 'http://127.0.0.1:8000/buku-kas/credit', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-11-06 10:01:25', '2024-11-06 10:01:25'),
('73923f47-2146-416f-9087-6154448b0727', 'User Login', 'http://127.0.0.1:8000/login', '2de48dfc-10cb-43e1-93f1-473efac13c19', '2025-06-13 08:23:08', '2025-06-13 08:23:08'),
('80d56ffe-aecd-40ca-ace2-79aa245ae489', 'Edit Data Santri', 'http://127.0.0.1:8000/santri/fa201ed9-6016-4d90-b3aa-f3858c5260d7', '2de48dfc-10cb-43e1-93f1-473efac13c19', '2025-01-21 07:49:48', '2025-01-21 07:49:48'),
('841d187f-2515-4975-9225-8562f657d274', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2025-01-24 01:50:02', '2025-01-24 01:50:02'),
('886b078c-b517-42f4-aea5-65058a45bbf7', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-10-29 07:45:47', '2024-10-29 07:45:47'),
('a58cedc5-f0d6-46f8-8098-0a15c9ed45a4', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2025-01-22 07:20:44', '2025-01-22 07:20:44'),
('a6f36558-76dd-4062-80c7-0eaefea93d00', 'Bayar Pendaftaran Budi Santoso', 'http://127.0.0.1:8000/pembayaran-pendaftaran', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-10-29 07:46:29', '2024-10-29 07:46:29'),
('a7e4f98f-8b06-48d6-8888-05762047ace5', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2025-01-22 10:05:15', '2025-01-22 10:05:15'),
('b4d33e40-3b8b-466e-8c3a-8f6ddf18648e', 'User Login', 'http://127.0.0.1:8000/login', '2de48dfc-10cb-43e1-93f1-473efac13c19', '2024-11-08 02:38:53', '2024-11-08 02:38:53'),
('b9ac8220-5c6a-4025-ba67-142946f8ec32', 'User Login', 'http://127.0.0.1:8000/login', '2de48dfc-10cb-43e1-93f1-473efac13c19', '2025-01-21 08:38:19', '2025-01-21 08:38:19'),
('ba44aef5-0be1-4d66-931d-92d7f67f36e4', 'Bayar Syahriah (SPP) Adi Gumilang (Feb 2024)', 'http://127.0.0.1:8000/syahriah', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-11-14 09:34:40', '2024-11-14 09:34:40'),
('bb18a172-d0df-4fb9-9ea1-69583579bd1a', 'User Logout', 'http://127.0.0.1:8000/logout', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-11-06 09:18:33', '2024-11-06 09:18:33'),
('be8e8960-034a-4604-bb41-cb78da7933ca', 'Edit Data Santri', 'http://127.0.0.1:8000/santri/fa201ed9-6016-4d90-b3aa-f4858c5260d6', '2de48dfc-10cb-43e1-93f1-473efac13c19', '2025-01-21 07:48:45', '2025-01-21 07:48:45'),
('c7aca119-97ac-4440-8682-26e05bc3b76d', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-11-06 09:13:05', '2024-11-06 09:13:05'),
('d34c946b-2b9b-4b85-9f81-bf91c098b6ea', 'Bayar Syahriah (SPP) Adi Gumilang (May 2024)', 'http://127.0.0.1:8000/syahriah', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-11-06 09:46:12', '2024-11-06 09:46:12'),
('dff31dfd-fe45-477d-b590-7048a98fe0fb', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2024-11-08 07:13:49', '2024-11-08 07:13:49'),
('e5f372df-e554-4062-89e3-4eaea8924fa3', 'User Login', 'http://127.0.0.1:8000/login', 'b153be7b-9f99-4b69-958d-b9ab5e2aebcd', '2025-01-21 02:50:57', '2025-01-21 02:50:57'),
('f3c130d5-0a2d-4b32-b319-c33e1a119dee', 'User Logout', 'http://127.0.0.1:8000/logout', '2de48dfc-10cb-43e1-93f1-473efac13c19', '2025-01-21 08:58:55', '2025-01-21 08:58:55'),
('f5c13e24-b8f3-40cc-938b-b803f031a129', 'User Login', 'http://127.0.0.1:8000/login', '2de48dfc-10cb-43e1-93f1-473efac13c19', '2025-01-21 07:48:07', '2025-01-21 07:48:07');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_08_09_220817_create_santris_table', 1),
(4, '2021_08_10_000000_create_users_table', 1),
(5, '2021_08_10_024302_create_log_activities_table', 1),
(6, '2021_08_10_111951_create_costs_table', 1),
(7, '2021_08_10_120222_create_registration_costs_table', 1),
(8, '2021_08_10_130637_create_syahriahs_table', 1),
(9, '2021_08_10_134720_create_cash_books_table', 1),
(10, '2021_08_10_152534_create_in_mails_table', 1),
(11, '2021_08_10_154339_create_out_mails_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `out_mails`
--

CREATE TABLE `out_mails` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_date` date NOT NULL,
  `file_out` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `out_mails`
--

INSERT INTO `out_mails` (`id`, `mail_number`, `mail_date`, `note`, `sender`, `recipient`, `record_date`, `file_out`, `created_at`, `updated_at`) VALUES
('af9c0fdf-c00e-475b-9b00-4ae7e2732446', '27/LLDJ/X/1989', '1983-05-03', 'Et aut et aut nihil harum delectus sunt.', 'Ian Hutapea S.H.', 'Yulia Widiastuti', '2018-12-10', NULL, '2024-10-29 07:45:28', '2024-10-29 07:45:28');

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
-- Table structure for table `registration_costs`
--

CREATE TABLE `registration_costs` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `construction` bigint UNSIGNED NOT NULL,
  `facilities` bigint UNSIGNED NOT NULL,
  `wardrobe` bigint UNSIGNED NOT NULL,
  `santri_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_costs`
--

INSERT INTO `registration_costs` (`id`, `construction`, `facilities`, `wardrobe`, `santri_id`, `created_at`, `updated_at`) VALUES
('7c7294d1-7945-4e3a-bfb4-5f1b8e4f4057', 1000000, 1000000, 1000000, 'fa201ed9-6016-4d90-b3aa-f4858c5160d8', '2024-10-29 07:46:29', '2024-10-29 07:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `santris`
--

CREATE TABLE `santris` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_old` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_address_old` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_current` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_address_current` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_year` year NOT NULL,
  `year_out` year DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `santris`
--

INSERT INTO `santris` (`id`, `name`, `address`, `birth_place`, `birth_date`, `phone`, `school_old`, `school_address_old`, `school_current`, `school_address_current`, `father_name`, `mother_name`, `father_job`, `mother_job`, `parent_phone`, `entry_year`, `year_out`, `photo`, `created_at`, `updated_at`) VALUES
('fa201ed9-6016-4d90-b3aa-f3858c5260d7', 'Adi Gumilang', 'Jalan Raya Pattimura No. 30, Kel. Ronggolmulyo, Kec. Tuban, Kab. Tuban', 'Tubanten', '1998-10-02', '089684353982', 'SMPN 1 Tuban', 'Jl. Panglima Sudirman No.46, Tuban', 'SMKN 1 Daendels', 'Jl. Mastap No.2, Sidorejo, Kec. Tuban, Kabupaten Tuban', 'Sumarno', 'Finda Gumilang', 'Pengusaha', 'Ibu Rumah Tangga', '0857842253902', 2017, NULL, 'santri-1737445823.png', '2024-10-29 07:45:27', '2025-01-22 10:06:11'),
('fa201ed9-6016-4d90-b3aa-f4858c5160d8', 'Budi Santoso', 'Jalan Raya Bojongsewu No. 88, Des. Sewu, Kec. Bojongsewu, Kab. Tegal', 'Tegal', '1995-10-10', '089682353004', 'SMPN 1 Bojongsewu', 'Jl. Bojongsewu No.46, Bojongsewu, Tegal', 'SMKN 1 Tuban', 'Jl. Mastrip No.2, Sidorejo, Kec. Tuban, Kabupaten Tuban', 'Saman Tosojo', 'Sri Minah', 'Pegawai Negeri Sipil', 'Ibu Rumah Tangga', '0837842244004', 2017, NULL, NULL, '2024-10-29 07:45:27', '2024-10-29 07:45:27'),
('fa201ed9-6016-4d90-b3aa-f4858c5260d6', 'Ahmad Dasiman', 'Jalan Raya Daendels No. 123, Kel. Kasiman, Kec. Tuban, Kab. Tuban', 'Tuban', '1991-07-09', '089684353004', 'SMPN 1 Daendels', 'Jl. Dasdes No.46, Dusun Purboyo Mayang, Daendels, Tuban', 'SMKN 1 Daendels', 'Jl. Mastap No.2, Sidorejo, Kec. Tuban, Kabupaten Tuban', 'Bagung Prasojo', 'Siti Fatimah', 'Wiraswasta', 'Ibu Rumah Tangga', '0857842253004', 2017, 2021, 'santri-1737445725.png', '2024-10-29 07:45:27', '2025-01-21 07:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `syahriahs`
--

CREATE TABLE `syahriahs` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `month` enum('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec') COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year NOT NULL,
  `spp` bigint NOT NULL,
  `santri_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syahriahs`
--

INSERT INTO `syahriahs` (`id`, `date`, `month`, `year`, `spp`, `santri_id`, `created_at`, `updated_at`) VALUES
('b7ec6a8e-0f65-48e9-a559-63faa9514e6b', '2024-11-06', 'May', 2024, 1000000, 'fa201ed9-6016-4d90-b3aa-f3858c5260d7', '2024-11-06 09:46:12', '2024-11-06 09:46:12'),
('b8c10832-aeb9-4e17-ba62-37cd61779213', '2024-11-14', 'Feb', 2024, 1000000, 'fa201ed9-6016-4d90-b3aa-f3858c5260d7', '2024-11-14 09:34:40', '2024-11-14 09:34:40'),
('e1fe803b-a58d-4f90-ab52-fe9783f9f8e4', '2024-11-06', 'Jan', 2024, 1000000, 'fa201ed9-6016-4d90-b3aa-f3858c5260d7', '2024-11-06 09:45:55', '2024-11-06 09:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Administrator','Pengurus','Santri') COLLATE utf8mb4_unicode_ci NOT NULL,
  `santri_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `santri_id`, `created_at`, `updated_at`) VALUES
('2de48dfc-10cb-43e1-93f1-473efac13c19', 'pengurus@ponpes.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pengurus', 'fa201ed9-6016-4d90-b3aa-f3858c5260d7', '2024-10-29 07:45:27', '2024-10-29 07:45:27'),
('6fa12166-f8b6-4f1f-8af8-f8387b2bc18b', 'santri@ponpes.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Santri', 'fa201ed9-6016-4d90-b3aa-f4858c5160d8', '2024-10-29 07:45:27', '2024-10-29 07:45:27'),
('b153be7b-9f99-4b69-958d-b9ab5e2aebcd', 'admin@ponpes.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Administrator', 'fa201ed9-6016-4d90-b3aa-f4858c5260d6', '2024-10-29 07:45:27', '2024-10-29 07:45:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cash_books`
--
ALTER TABLE `cash_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_books_registration_cost_id_foreign` (`registration_cost_id`),
  ADD KEY `cash_books_syahriah_id_foreign` (`syahriah_id`);

--
-- Indexes for table `costs`
--
ALTER TABLE `costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `in_mails`
--
ALTER TABLE `in_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `out_mails`
--
ALTER TABLE `out_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `registration_costs`
--
ALTER TABLE `registration_costs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_costs_santri_id_foreign` (`santri_id`);

--
-- Indexes for table `santris`
--
ALTER TABLE `santris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syahriahs`
--
ALTER TABLE `syahriahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `syahriahs_santri_id_foreign` (`santri_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_santri_id_foreign` (`santri_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cash_books`
--
ALTER TABLE `cash_books`
  ADD CONSTRAINT `cash_books_registration_cost_id_foreign` FOREIGN KEY (`registration_cost_id`) REFERENCES `registration_costs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_books_syahriah_id_foreign` FOREIGN KEY (`syahriah_id`) REFERENCES `syahriahs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registration_costs`
--
ALTER TABLE `registration_costs`
  ADD CONSTRAINT `registration_costs_santri_id_foreign` FOREIGN KEY (`santri_id`) REFERENCES `santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `syahriahs`
--
ALTER TABLE `syahriahs`
  ADD CONSTRAINT `syahriahs_santri_id_foreign` FOREIGN KEY (`santri_id`) REFERENCES `santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_santri_id_foreign` FOREIGN KEY (`santri_id`) REFERENCES `santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
