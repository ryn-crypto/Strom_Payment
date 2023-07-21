/*
 Navicat Premium Data Transfer

 Source Server         : localconnection
 Source Server Type    : MySQL
 Source Server Version : 100421 (10.4.21-MariaDB)
 Source Host           : localhost:3307
 Source Schema         : strom_payment

 Target Server Type    : MySQL
 Target Server Version : 100421 (10.4.21-MariaDB)
 File Encoding         : 65001

 Date: 21/07/2023 10:08:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of level
-- ----------------------------
BEGIN;
INSERT INTO `level` (`id`, `level`) VALUES (1, 'Admin');
INSERT INTO `level` (`id`, `level`) VALUES (2, 'User');
COMMIT;

-- ----------------------------
-- Table structure for meter
-- ----------------------------
DROP TABLE IF EXISTS `meter`;
CREATE TABLE `meter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no_meter` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of meter
-- ----------------------------
BEGIN;
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (1, '65748483', 4);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (2, '417547324662152', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (3, '49300975971601', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (4, '725141748885426', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (5, '655464703542822', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (6, '600623606836135', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (7, '349376137222555', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (8, '788568870815320', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (9, '378292606770056', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (10, '877099444923024', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (11, '964616683986995', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (12, '751002644030837', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (13, '678061345239831', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (14, '957275574269587', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (15, '876976623162362', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (16, '56344074696522', 1);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (18, '393439535142791', 3);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (19, '133312821997706', 2);
INSERT INTO `meter` (`id`, `no_meter`, `tarif_id`) VALUES (20, '616378444994594', 2);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (21, '2023_07_19_071652_create_level_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (22, '2023_07_19_071708_create_meter_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (23, '2023_07_19_071716_create_tarif_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (24, '2023_07_19_071730_create_penggunaan_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (25, '2023_07_19_071742_create_pembayaran_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (26, '2023_07_19_071748_create_tagihan_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (27, '2023_07_19_073830_create_status_table', 2);
COMMIT;

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE `pembayaran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tagihan_id` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pembayaran
-- ----------------------------
BEGIN;
INSERT INTO `pembayaran` (`id`, `tagihan_id`, `jumlah_bayar`) VALUES (1, 1, 14455);
COMMIT;

-- ----------------------------
-- Table structure for penggunaan
-- ----------------------------
DROP TABLE IF EXISTS `penggunaan`;
CREATE TABLE `penggunaan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meter_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `meter_awal` int(11) NOT NULL,
  `meter_ahir` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of penggunaan
-- ----------------------------
BEGIN;
INSERT INTO `penggunaan` (`id`, `meter_id`, `date`, `meter_awal`, `meter_ahir`) VALUES (1, '1', '2023-07-19', 200, 400);
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of status
-- ----------------------------
BEGIN;
INSERT INTO `status` (`id`, `status`) VALUES (1, 'Lunas');
INSERT INTO `status` (`id`, `status`) VALUES (2, 'Belum Bayar');
COMMIT;

-- ----------------------------
-- Table structure for tagihan
-- ----------------------------
DROP TABLE IF EXISTS `tagihan`;
CREATE TABLE `tagihan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meter_id` int(11) NOT NULL,
  `penggunaan_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `jumlah_meter` int(11) NOT NULL,
  `status_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tagihan
-- ----------------------------
BEGIN;
INSERT INTO `tagihan` (`id`, `meter_id`, `penggunaan_id`, `date`, `jumlah_meter`, `status_id`) VALUES (1, 1, 1, '2023-07-19', 300, '2');
COMMIT;

-- ----------------------------
-- Table structure for tarif
-- ----------------------------
DROP TABLE IF EXISTS `tarif`;
CREATE TABLE `tarif` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `daya` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif_perKWH` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tarif
-- ----------------------------
BEGIN;
INSERT INTO `tarif` (`id`, `daya`, `tarif_perKWH`) VALUES (1, '900', 1352);
INSERT INTO `tarif` (`id`, `daya`, `tarif_perKWH`) VALUES (2, '1300', 1445);
INSERT INTO `tarif` (`id`, `daya`, `tarif_perKWH`) VALUES (3, '2200', 1445);
INSERT INTO `tarif` (`id`, `daya`, `tarif_perKWH`) VALUES (4, '4500', 1670);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meter_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'test', 'test', 'test@gmail.com', 'tangerang selatan', 1, 1, NULL, 'test', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (2, 'data2', 'data2', 'data2@mail.com', 'Jakarta Raya', 1, 1, NULL, 'data2', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (3, 'riyan first', 'riyan', 'riyan@mail.com', 'jalan nangka, kampung durian', 1, 2, NULL, '$2y$10$EwyZ8p5grNG8AD4mP1ByvOoZ8pgtnWVZ.WHrU1jfN3sDmtfMDL8CG', NULL, '2023-07-19 08:58:38', '2023-07-19 16:25:38');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (5, 'data', 'imagine', 'data@mail.conm', 'data alamat', 16, 1, NULL, '$2y$10$maoDVvfajNVUk2/oPsMksO/IGtYHtRipayF0Ce.om.qdqFAN7I.AK', NULL, '2023-07-19 14:43:33', '2023-07-19 14:43:33');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (7, 'dadang', 'default.png', 'dadang@gmail.com', 'dadang', 18, 2, NULL, '$2y$10$gDmT7CtALzFeD5SNsBagjeKZtX9wPUQzBqeeDf.poFVlriuhQ0Fty', NULL, '2023-07-19 15:22:46', '2023-07-19 15:22:46');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (8, 'riyan', 'default.png', 'riyandotianto2@gmail.com', 'riayn', 19, 1, NULL, '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', NULL, '2023-07-19 17:21:38', '2023-07-19 17:21:38');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (9, 'Vickie Kertzmann', 'default.png', 'rhahn@example.net', 'alamat', 1, 1, '2023-07-21 01:49:27', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '5OO45QVGq5', '2023-07-21 01:49:27', '2023-07-21 01:49:27');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (10, 'Creola Leannon', 'default.png', 'prosacco.unique@example.com', 'alamat', 1, 1, '2023-07-21 01:49:27', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '3Ev2mE2LAc', '2023-07-21 01:49:27', '2023-07-21 01:49:27');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (11, 'Dr. Christop Wehner V', 'default.png', 'aurelio61@example.com', 'alamat', 1, 1, '2023-07-21 01:49:27', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '4USZVnLEmI', '2023-07-21 01:49:27', '2023-07-21 01:49:27');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (12, 'Aracely Harber', 'default.png', 'ostamm@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'dpuDPC8AFE', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (13, 'Prof. Reed Mann', 'default.png', 'lbernhard@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'yTFJcEHc44', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (14, 'Yesenia Mraz Sr.', 'default.png', 'west.alfonzo@example.com', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'mdGyXlgFjD', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (15, 'Prof. Timmothy Thiel DVM', 'default.png', 'abbie.morissette@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '1U0ULVL7Lj', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (16, 'Ms. Kara Turner', 'default.png', 'russell59@example.com', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'qrOwyEhmr9', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (17, 'Dr. Autumn Jacobs', 'default.png', 'gulgowski.geovanni@example.com', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'Sh1KW5Tihl', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (18, 'Cheyanne Schmeler', 'default.png', 'hagenes.margarette@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'gZPm8fosGI', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (19, 'Nettie Yundt', 'default.png', 'tgoldner@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'M1BC5NMjYC', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (20, 'Finn Dare', 'default.png', 'huel.everardo@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'gEuQ6yNicd', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (21, 'Sadie Lemke', 'default.png', 'taryn35@example.com', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'cLB9ulCl9V', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (22, 'Miss Jaqueline Pagac DVM', 'default.png', 'fosinski@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'AB6QL8nt4M', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (23, 'Alexzander Pagac', 'default.png', 'aufderhar.evert@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'pREuoJXRjA', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (24, 'Robbie Fay', 'default.png', 'jakayla.wiza@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '1BgKzHYjvi', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (25, 'Mr. Adrain Connelly DDS', 'default.png', 'leuschke.tyrel@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'PGoO1f1EB6', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (26, 'Prof. Gerald Hegmann Sr.', 'default.png', 'carmen90@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'taDiIpILcC', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (27, 'Arvilla Jenkins', 'default.png', 'lisette.witting@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'vePRKRbeuU', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (28, 'Oran Reinger', 'default.png', 'monserrate01@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'woU8Jwwr6r', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (29, 'Delpha Jast MD', 'default.png', 'ibahringer@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'OxkH0QsPsx', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (30, 'Sarah Schmidt MD', 'default.png', 'casimer.hoeger@example.com', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'UfzpJAHozv', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (31, 'Rhea Wolf I', 'default.png', 'lemke.kasey@example.com', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'PbVGQQgD6g', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (32, 'Rolando Kohler', 'default.png', 'terrance29@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '99iVQfUkLX', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (33, 'Randi Witting', 'default.png', 'lola24@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'gBNLqS9kj3', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (34, 'Prof. Tristin Hickle', 'default.png', 'jana.conroy@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '4MjKCBClBR', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (35, 'Dagmar Wehner', 'default.png', 'tkuhic@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '4ss3dS3sZm', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (36, 'Steve Zulauf', 'default.png', 'conner27@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'KYq7GWxEGb', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (37, 'Eleonore Rempel', 'default.png', 'douglas.jermey@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'lDjNNo02dV', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (38, 'Cesar Hackett', 'default.png', 'rpfeffer@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'iIEFifrL9s', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (39, 'Lela Ullrich', 'default.png', 'spinka.eryn@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '0sQcVwlApu', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (40, 'Ollie Padberg', 'default.png', 'flavie72@example.org', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', '6bOXyrukBd', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (41, 'Dr. Cordelia Wyman DVM', 'default.png', 'schmidt.danyka@example.net', 'alamat', 1, 1, '2023-07-21 02:07:18', '$2y$10$balE1rP7FqpZUJrDtU12juVC7ruNMAOegZNHt0qQW4zYbNUZklP0e', 'tDXHh1bauI', '2023-07-21 02:07:18', '2023-07-21 02:07:18');
INSERT INTO `users` (`id`, `nama`, `img`, `email`, `alamat`, `meter_id`, `level_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (42, 'joko', 'default.png', 'joko@gmail.com', 'disini', 20, 1, NULL, '$2y$10$uqaEJsz9snMPO8LIJtFW2O9w0oF3b5eVBAZ4knDpmh9RdVrAhPeRK', NULL, '2023-07-21 02:17:36', '2023-07-21 02:17:36');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
