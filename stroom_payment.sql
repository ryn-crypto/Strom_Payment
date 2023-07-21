/*
 Navicat Premium Data Transfer

 Source Server         : db_cmd
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : stroom_payment

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 18/07/2023 20:21:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `id_level` int NOT NULL,
  `nama_level` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nomor_kwh` varchar(10) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `id_tarif` int DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE `pembayaran` (
  `id_pembayaran` int NOT NULL,
  `id_tagihan` int NOT NULL,
  `id_pelanggan` int NOT NULL,
  `tanggal_pembayaran` date DEFAULT NULL,
  `bulan_bayar` date DEFAULT NULL,
  `biaya_admin` int DEFAULT NULL,
  `total_bayar` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for penggunaan
-- ----------------------------
DROP TABLE IF EXISTS `penggunaan`;
CREATE TABLE `penggunaan` (
  `id_penggunaan` int NOT NULL,
  `id_pelanggan` int NOT NULL,
  `bulan` date DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `meter_awal` int DEFAULT NULL,
  `meter_ahir` int DEFAULT NULL,
  PRIMARY KEY (`id_penggunaan`),
  KEY `id_pelanggan` (`id_pelanggan`),
  CONSTRAINT `penggunaan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for tagihan
-- ----------------------------
DROP TABLE IF EXISTS `tagihan`;
CREATE TABLE `tagihan` (
  `id_tagihan` int NOT NULL,
  `id_pelanggan` int NOT NULL,
  `id_penggunaan` int NOT NULL,
  `bulan` date DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `jumlah_meter` int DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_tagihan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for tarif
-- ----------------------------
DROP TABLE IF EXISTS `tarif`;
CREATE TABLE `tarif` (
  `id_tarif` int NOT NULL,
  `daya` varchar(15) NOT NULL,
  `tarifperkwh` int NOT NULL,
  PRIMARY KEY (`id_tarif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_admin` varchar(50) DEFAULT NULL,
  `id_level` int DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
