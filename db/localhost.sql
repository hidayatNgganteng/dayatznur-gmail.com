-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2020 at 03:58 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bordercell`
--
CREATE DATABASE IF NOT EXISTS `bordercell` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bordercell`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `laba` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `setok` int(11) NOT NULL,
  `mulai_promo` date NOT NULL,
  `ahir_promo` date NOT NULL,
  `jenis_promo` varchar(50) NOT NULL,
  `potongan` int(11) NOT NULL,
  `harga_ahir` int(11) NOT NULL,
  `setatus_promo` int(1) NOT NULL,
  `setatus_barang` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_beli`, `harga_jual`, `laba`, `satuan`, `setok`, `mulai_promo`, `ahir_promo`, `jenis_promo`, `potongan`, `harga_ahir`, `setatus_promo`, `setatus_barang`) VALUES
(10, 'CHARGER XIAOMI ORIGINIAL 100% QUALCOMM 3.0 Fast Charging MDY-08-EI', 27500, 40000, 12500, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(11, 'VOUCHER INDOSAT UNLIMITED Youtube 2 hari + 500mb', 5700, 8000, 2300, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(12, 'PERDANA SMARTFREN 2GB KUOTA 2GB', 8700, 11000, 2300, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(13, 'PERDANA SMARTFREN GSM PULSA 0K', 2500, 5000, 2500, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(14, 'VOUCHER INDOSAT FREEDOM INTERNET 2GB (15 HR) NASIONAL', 15000, 17000, 2000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(15, 'VOUCHER TRI DATA AMI 4GB bonus unlimited youtube  - Indy cell', 27250, 32000, 4750, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(16, 'VOUCHER INDOSAT FREEDOM 14GB', 47200, 55000, 7800, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(17, 'VOUCHER INDOSAT FREEDOM 8GB', 33300, 36000, 2700, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(18, 'VOUCHER INDOSAT FREEDOM 4GB', 23800, 27000, 3200, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(19, 'PERDANA SMARTFREN DATA TOTAL KUOTA 5GB', 12050, 15000, 2950, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(20, 'VOUCHER SMARTFREN 16GB ( 8gb 24 jam + 8 GB malam)', 35000, 37000, 2000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(21, 'VOUCHER SMARTFREN 10GB ( 5gb 24 jam + 5 GB malam )', 27000, 28000, 1000, 'pcs', 6, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(22, 'VOUCHER INDOSAT YOUTUBE 7 HARI UNLIMITED+ 1GB', 15600, 18000, 2400, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(23, 'VOUCHER TRI GM 2GB + 2GB NASIONAL  - Indy cell', 18500, 22000, 3500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(25, 'PERDANA AXIS PULSA NOL / PERDANA AXIS 0 K- Cahyo Sales', 1000, 3000, 2000, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(26, 'VOUCHER INDOSAT 1GB (7 HARI)', 10000, 12000, 2000, 'pcs', 6, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(27, 'VOUCHER SMARTFREN 4GB 2GB24Jam_2GBmalam (30 HR)', 9550, 12000, 2450, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(28, 'VOUCHER SMARTFREN UNLIMITED _1GB/HR_(28 HR) - ricky glorie', 71000, 73000, 2000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(29, 'PERDANA INDOSAT 0K', 2300, 5000, 2700, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(30, 'PERDANA INDOSAT 1GB UNLIMITED', 22700, 25000, 2300, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(31, 'SOFTCASE POLOS SAMSUNG A20S,Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(32, 'SOFTCASE POLOS SAMSUNG, Y1 -  missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(33, 'SOFTCASE POLOS SAMSUNG A10S, Y9 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(34, 'SOFTCASE POLOS SAMSUNG A 10S, Y8 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(35, 'SOFTCASE POLOS SAMSUNG A70, Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(36, 'SOFTCASE POLOS SAMSUNG A50/A50S/A30S, Y8 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(37, 'SOFTCASE POLOS SAMSUNG A10/M10, Y1 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(38, 'SOFTCASE POLOS SAMSUNG M20, Y8 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(39, 'SOFTCASE POLOS SAMSUNG M20, Y9 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(40, 'SOFTCASE POLOS SAMSUNG A30/A20,Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(41, 'SOFTCASE POLOS SAMSUNG J7PRIME, Y1 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(42, 'SOFTCASE POLOS SAMSUNG J2PRIME, Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(43, 'SOFTCASE POLOS SAMSUNG A70, Y1 -missconnie.id', 11286, 25000, 13714, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(44, 'SOFTCASE POLOS SAMSUNG A7 2018/ A750, Y8 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(45, 'SOFTCASE POLOS SAMSUNG A50/A50S/A30S, Y9 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(46, 'SOFTCASE POLOS SAMSUNG A30/A20, Y1 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(47, 'SOFTCASE POLOS SAMSUNG A10/ M10, Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(48, 'SOFTCASE POLOS SAMSUNG J7PRIME, Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(49, 'SOFTCASE POLOS SAMSUNG A7 2018/ A750, Y9 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(50, 'SOFTCASE POLOS SAMSUNG J2PRIME, Y1- missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(52, '3D Diamond Softcase IPHONE 6 PLUS -moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(53, '3D Diamond Softcase IPHONE 6 -moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(54, '3D Diamond Softcase REDMI 5 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(55, '3D Diamond Softcase NOTE 5A PRIME -moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(57, '3D Diamond Softcase REDMI NOTE 7 PRO -moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(58, '3D Diamond Softcase REDMI NOTE 5 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(59, '3D Diamond Softcase REDMI GO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(60, '3D Diamond Softcase REDMI 7 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(61, '3D Diamond Softcase REDMI 6 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(62, '3D Diamond Softcase REDMI 6A - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(63, 'SLIM BLACKMATTE SOFTCASE SAMSUNG NOTE 8 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(64, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG M30S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(65, 'SLIM BLACKMATTE SOFTCASE SAMSUNG A20S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(66, 'SLIM BLACKMATTE SOFTCASE SAMSUNG A10S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(67, 'SLIM BLACKMATTE SOFTCASE SAMSUNG NOTE 10 PLUS - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(68, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG NOTE 10 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(69, 'SLIM BLACKMATTE SOFTCASE SAMSUNG A20/A30 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(70, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG M30 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(71, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG A6 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(72, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG A9 / A9S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(73, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG A70 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(74, 'SLIM BLACKMATTE SOFTCASE SAMSUNG A50/A50S/A30S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(75, 'SLIM BLACKMATTE SOFTCASE SAMSUNG M20 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(76, 'SLIM BLACKMATTE SOFTCASE SAMSUNG M10/ A10 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(77, 'SLIM BLACKMATTE SOFTCASE VIVO Y19 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(78, 'SLIM BLACKMATTE SOFTCASE VIVO Y91C/ Y93 NO FINGER - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(79, 'SLIM BLACKMATTE SOFTCASE  VIVO Z1 PRO - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(80, 'SLIM BLACKMATTE SOFTCASE VIVO S1 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(81, 'SLIM BLACKMATTE SOFTCASE VIVO Y53 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(82, 'SLIM BLACKMATTE SOFTCASE VIVO Y17/ Y15/ Y12 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(83, 'SLIM BLACKMATTE SOFTCASE VIVO Y91/ Y95 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(84, 'SLIM BLACKMATTE SOFTCASE VIVO Y83 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(85, 'SLIM BLACKMATTE SOFTCASE VIVO Y81 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(86, 'SLIM BLACKMATTE SOFTCASE  VIVO Y71 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(87, 'SLIM BLACKMATTE SOFTCASE VIVO Y21 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(88, '3D Diamond Softcase SAMSUNG J6 PLUS - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(89, '3D Diamond Softcase SAMSUNG J4 PLUS - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(90, '3D Diamond Softcase SAMSUNG J7 PRIME - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(91, '3D Diamond Softcase SAMSUNG J5 PRIME - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(92, '3D Diamond Softcase SAMSUNG A7 TRIPLE CAM - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(93, '3D Diamond Softcase SAMSUNG M30 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(94, '3D Diamond Softcase SAMSUNG M20 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(95, '3D Diamond Softcase SAMSUNG A70 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(96, '3D Diamond Softcase SAMSUNG A50 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(97, '3D Diamond Softcase SAMSUNG A20/ A30 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(98, '3D Diamond Softcase SAMSUNG A10/ M10 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(99, '3D Diamond Softcase REDMI 5A - moniqueen.com', 7470, 20000, 12530, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(100, '3D Diamond Softcase VIVO Y83 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(101, '3D Diamond Softcase VIVO Y81 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(102, '3D Diamond Softcase VIVO V7 PLUS/ Y79 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(103, '3D Diamond Softcase VIVO S1 - moniqueen.com', 7470, 20000, 12530, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(104, '3D Diamond Softcase VIVO V15 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(105, '3D Diamond Softcase VIVO V9 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(106, '3D Diamond Softcase VIVO V7 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(107, '3D Diamond Softcase VIVO V5 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(108, '3D Diamond Softcase VIVO Y53 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(109, '3D Diamond Softcase VIVO Y91/ Y95 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(110, '3D Diamond Softcase VIVO Y17/ Y15/ Y12 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(111, '3D Diamond Softcase REALME 2 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(113, '3D Diamond Softcase REALME 3 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(114, '3D Diamond Softcase REALME C2/ A1K - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(115, '3D Diamond Softcase OPPO F11 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(116, '3D Diamond Softcase OPPO F11- moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(117, '3D Diamond Softcase OPPO F9 - moniqueen.com', 7470, 20000, 12530, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(118, '3D Diamond Softcase OPPO F7 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(119, '3D Diamond Softcase OPPO F5 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(120, '3D Diamond Softcase OPPO F3 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(121, '3D Diamond Softcase OPPO F1S - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(122, '3D Diamond Softcase OPPO A83 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(123, '3D Diamond Softcase OPPO71 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(124, '3D Diamond Softcase OPPO A39/ A57 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(125, '3D Diamond Softcase OPPO A37 - moniqueen.com', 7470, 20000, 12530, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(126, '3D Diamond Softcase OPPO A33 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(127, '3D Diamond Softcase OPPO A7/A5S -moniqueen.com ', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(128, '3D Diamond Softcase OPPO A3S - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(129, 'POWERBANK VEGER 10000Mah V41 Slim ORIGINAL BIRU', 55000, 75000, 20000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(130, 'POWERBANK VEGER 10000Mah V41 Slim ORIGINAL MERAH', 55000, 75000, 20000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(131, 'POWERBANK V16 VEGER 25000Mah Original WHITE', 117000, 135000, 18000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(132, 'KABEL DATA SPRING K2 K2-C09 IPHONE ', 13000, 25000, 12000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(133, 'KABEL DATA SPRING K2 K2-C09 MICRO USB', 13000, 25000, 12000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(134, 'KABEL DATA TOPLES K2 PUTIH - rgaksesoris -  (typec/type-c/type c)', 5999, 15000, 9001, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(135, 'KABEL DATA TOPLES K2 HITAM - rgaksesoris - (typec/type-c/type c)', 5999, 15000, 9001, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(136, 'KABEL DATA SAMSUNG ORIGINAL USB CABLE PUTIH - (typec/type-c/type c)', 15000, 25000, 10000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(137, 'KABEL DATA SAMSUNG ORIGINAL USB CABLE HITAM - (typec/type-c/type c)', 15000, 25000, 10000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(138, 'CHARGER NOKIA ORIGINAL 99% LUBANG KECIL', 10000, 20000, 10000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(139, 'POPSOCKET POLOS ', 645, 2000, 1355, 'pcs', 10, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(140, 'TEMPELAN HP/ GURITA', 750, 2000, 1250, 'pcs', 10, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(141, 'HEADSET XIAOMI PISTON 2', 10499, 25000, 14501, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(142, 'KABEL DATA QTOP TOPLES IPHONE', 5000, 15000, 10000, 'pcs', 50, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(143, 'HANDSFREE / HEADSET / EARPHONE SAMSUNG HS330', 5000, 20000, 15000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(144, 'CHARGER SAMSUNG NOTE 4 ORIGINAL', 16000, 25000, 9000, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(145, 'CHARGER SAMSUNG i9000/ GALAXY MINI PACK DUS ', 4299, 15000, 10701, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(146, 'KABEL DATA VIVAN 1 TOPLES - micro usb', 6000, 15000, 9000, 'pcs', 31, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(147, '3D Diamond Softcase VIVO iQOO NEO', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(148, '3D Diamond Softcase REALME A5/ A3S/ AX5/ REALME C1', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(149, 'PERDANA INDOSAT FREEDOM 8GB (30 HR)', 30000, 35000, 5000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 7800, 10000, 2200, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(152, 'VOUCHER XL 4,5 GB (30 HR)- Cahyo Sales', 26500, 30000, 3500, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(153, 'VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 12500, 15000, 2500, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(154, 'VOUCHER TRI 6 GB (1 TH) - Indy cell', 33500, 36000, 2500, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(155, 'VOUCHER TRI 2 GB (1  TH)  - Indy cell', 17800, 20000, 2200, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(156, 'VOUCHER TRI 3 GB AON (1 TH)  - Indy cell', 24000, 26000, 2000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(157, 'VOUCHER TRI 1 GB (5 HR)  - Indy cell', 8500, 10000, 1500, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(158, 'PERDANA + VOUCHER XL 4,5 GB (30 HR)- Cahyo Sales', 27500, 30000, 2500, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(159, 'PERDANA AS/ TELKOMSEL 5K ', 10000, 11500, 1500, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(160, 'PERDANA XL 0K (GRATIS NELPON & SMS KE AXIS/XL)- Cahyo Sales', 3000, 5000, 2000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(161, 'VOUCHER XL 8GB (30 HR)- Cahyo Sales', 37750, 40000, 2250, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(162, 'VOUCHER AXIS 2GB + 1 GB LOKAL (30 HR)- Cahyo Sales', 22000, 25000, 3000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(163, 'VOUCHER AXIS 1 GB (30 HARI)', 13000, 15000, 2000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(164, 'VOUCHER AXIS 3 GB (15 HARI)', 19000, 21000, 2000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(165, 'VOUCHER INDOSAT 3 GB + ULT YOUTUBE (30 HARI)', 57000, 60000, 3000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(166, 'VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 25000, 27000, 2000, 'pcs', 8, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(167, 'VOUCHER TELKOMSEL 8 GB (30 HARI)', 58000, 60000, 2000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(170, 'VOUCHER SMARTFREN UNLIMITED LITE _500MB/HR_(28 HR) - ricky glorie', 46950, 50000, 3050, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(171, 'VOUCHER SMARTFREN UNLIMITED _1GB/HR_(5 HR) - ricky glorie', 18150, 21000, 2850, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(172, 'VOUCHER SMARTFREN 10N+ 1,5GB_24JAM_(7 HR) - ricky glorie', 10000, 12000, 2000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(173, 'VOUCHER SMARTFREN 10N+ 1GB_24JAM_(7 HR) - ricky glorie', 7500, 10000, 2500, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(174, 'PERDANA SMARTFREN UNLIMITED 30 HR', 72000, 75000, 3000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(175, 'VOUCHER TELKOMSEL 4 GB OMG 30 HR', 36500, 39000, 2500, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(176, 'PERDANA TELKOMSEL 6,5 GB 30 HARI', 24000, 26000, 2000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(177, 'PERDANA AXIS 1 GB 30 HR', 11000, 14000, 3000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(178, 'PERDANA AXIS 2GB 30 HARI ', 19000, 22000, 3000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(179, 'PERDANA TRI 1 GB ', 6000, 10000, 4000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(180, 'VOUCHER 6 GB + UNLIMITED YOUTUBE (30 HR)', 49000, 52000, 3000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `barang_elektrik`
--

CREATE TABLE `barang_elektrik` (
  `id` int(5) NOT NULL,
  `saldo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_elektrik`
--

INSERT INTO `barang_elektrik` (`id`, `saldo`) VALUES
(0, '118407');

-- --------------------------------------------------------

--
-- Table structure for table `cookie`
--

CREATE TABLE `cookie` (
  `id_cookie` int(11) NOT NULL,
  `id_user_cookie` int(11) NOT NULL,
  `cookie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cookie`
--

INSERT INTO `cookie` (`id_cookie`, `id_user_cookie`, `cookie`) VALUES
(1, 1, '0ge2vwm2f428783kngpw11e58xcrapm1'),
(2, 4, 'hto5baj1cr9mmupn3ifoo6he7shwo465uwfex16a4kh6xgnk9oq3qy7ajzmg5378bzo2l8kbmgyfvzckkc1lqngcaeosi8fyh4nohbz27nnbeoknbelav7ic0wqquhhz');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `browser_version` varchar(200) NOT NULL,
  `os` varchar(200) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `online` int(11) NOT NULL,
  `waktu_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `id_user`, `browser`, `browser_version`, `os`, `ip_address`, `online`, `waktu_login`) VALUES
(33, 4, 'Chrome', '73.0.3683.75', 'Linux', '120.188.87.24', 1, '2019-07-07 01:24:37'),
(34, 4, 'Chrome', '73.0.3683.75', 'Linux', '120.188.86.163', 0, '2019-07-07 03:38:40'),
(35, 4, 'Chrome', '73.0.3683.75', 'Linux', '114.4.216.141', 0, '2019-07-07 03:46:21'),
(36, 4, 'Chrome', '73.0.3683.75', 'Linux', '120.188.78.101', 0, '2019-07-07 04:58:58'),
(37, 4, 'Chrome', '73.0.3683.75', 'Linux', '182.1.114.170', 0, '2019-07-07 02:49:16'),
(38, 4, 'Chrome', '66.0.3359.158', 'Android', '182.1.125.205', 1, '2019-07-07 04:34:28'),
(39, 4, 'Chrome', '73.0.3683.75', 'Linux', '120.188.75.109', 1, '2019-07-07 07:29:28'),
(40, 4, 'Chrome', '66.0.3359.158', 'Android', '120.188.75.109', 1, '2019-07-07 07:34:58'),
(41, 4, 'Chrome', '73.0.3683.75', 'Linux', '114.4.82.119', 1, '2019-08-08 09:37:07'),
(42, 4, 'Chrome', '66.0.3359.158', 'Android', '182.0.232.95', 1, '2019-09-09 12:56:17'),
(43, 4, 'Chrome', '73.0.3683.75', 'Linux', '118.136.114.19', 1, '2019-09-09 05:41:51'),
(44, 4, 'Chrome', '73.0.3683.75', 'Linux', '118.136.114.19', 1, '2019-09-09 08:04:13'),
(45, 4, 'Chrome', '73.0.3683.75', 'Linux', '118.136.114.19', 1, '2019-09-09 02:14:06'),
(46, 4, 'Chrome', '73.0.3683.75', 'Linux', '118.136.114.19', 1, '2019-09-09 06:23:47'),
(47, 4, 'Chrome', '73.0.3683.75', 'Linux', '118.136.114.19', 1, '2019-09-09 05:19:13'),
(48, 1, 'Chrome', '76.0.3809.100', 'Linux', '118.136.114.19', 1, '2019-09-09 01:46:33'),
(49, 4, 'Chrome', '76.0.3809.100', 'Linux', '118.136.114.19', 1, '2019-09-09 01:53:42'),
(50, 1, 'Chrome', '76.0.3809.100', 'Linux', '118.136.114.19', 1, '2019-09-09 01:54:56'),
(51, 4, 'Chrome', '76.0.3809.100', 'Linux', '118.136.114.19', 1, '2019-09-09 02:01:01'),
(52, 1, 'Chrome', '76.0.3809.100', 'Linux', '118.136.114.19', 1, '2019-09-09 02:06:44'),
(53, 4, 'Chrome', '44.0.2403.119', 'Android', '202.67.32.26', 1, '2019-09-09 01:44:44'),
(54, 4, 'Chrome', '76.0.3809.132', 'Windows 10', '36.82.252.7', 1, '2019-09-09 01:49:52'),
(55, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 12:07:28'),
(56, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 12:11:23'),
(57, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 12:28:43'),
(58, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 12:29:11'),
(59, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 12:32:44'),
(60, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 12:44:10'),
(61, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 12:55:24'),
(62, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 12:58:19'),
(63, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 07:25:55'),
(64, 1, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 08:50:24'),
(65, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 09:25:56'),
(66, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 09:46:52'),
(67, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 06:51:38'),
(68, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 07:50:19'),
(69, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 10:23:31'),
(70, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 03:38:57'),
(71, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 09:00:37'),
(72, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 07:48:07'),
(73, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 06:44:57'),
(74, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 07:27:01'),
(75, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 10:34:37'),
(76, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 10:34:37'),
(77, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 01:06:17'),
(78, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 08:46:25'),
(79, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 02:15:43'),
(80, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 09:07:19'),
(81, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 08:33:19'),
(82, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 01:33:23'),
(83, 4, 'Chrome', '80.0.3987.132', 'Windows 7', '::1', 0, '2020-03-03 04:23:02'),
(84, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 08:58:35'),
(85, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 11:26:15'),
(86, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 02:58:11'),
(87, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 10:09:35'),
(88, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 01:49:52'),
(89, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 10:14:34'),
(90, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 08:43:06'),
(91, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 03:53:01'),
(92, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 08:52:30'),
(93, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 08:39:06'),
(94, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 03:47:44'),
(95, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 09:29:27'),
(96, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 10:01:06'),
(97, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 03:40:00'),
(98, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 11:34:00'),
(99, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 03:02:29'),
(100, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 07:46:25'),
(101, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 09:02:31'),
(102, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-03-03 05:52:43'),
(103, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 11:16:14'),
(104, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 03:48:30'),
(105, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 03:50:17'),
(106, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 07:04:58'),
(107, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 09:29:17'),
(108, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 12:04:25'),
(109, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 04:03:13'),
(110, 1, 'Chrome', '80.0.3987.149', 'Mac OS X', '::1', 0, '2020-04-04 05:14:26'),
(111, 4, 'Chrome', '80.0.3987.149', 'Mac OS X', '::1', 0, '2020-04-04 05:14:53'),
(112, 4, 'Chrome', '80.0.3987.149', 'Mac OS X', '::1', 0, '2020-04-04 05:16:54'),
(113, 4, 'Chrome', '80.0.3987.149', 'Mac OS X', '::1', 0, '2020-04-04 10:03:03'),
(114, 4, 'Chrome', '80.0.3987.149', 'Mac OS X', '::1', 0, '2020-04-04 09:21:07'),
(115, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 09:04:36'),
(116, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 12:13:58'),
(117, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 10:32:16'),
(118, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 04:28:42'),
(119, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 08:55:27'),
(120, 4, 'Chrome', '80.0.3987.149', 'Windows 7', '::1', 0, '2020-04-04 11:08:55'),
(121, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 09:14:04'),
(122, 4, 'Chrome', '80.0.3987.149', 'Mac OS X', '::1', 0, '2020-04-04 05:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `kasir` int(11) NOT NULL,
  `kode_brg` int(11) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `harga_beli_elektrik` int(11) NOT NULL,
  `harga_brg` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `waktu` time NOT NULL,
  `type_product` varchar(100) NOT NULL DEFAULT 'non-elektrik'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `kasir`, `kode_brg`, `nama_brg`, `harga_beli_elektrik`, `harga_brg`, `jumlah`, `total_harga`, `tgl_transaksi`, `waktu`, `type_product`) VALUES
(40, 0, 42, 'CASING SAMSUNG J2PRIME_ Y5 _ missconnie_id', 0, 25000, 1, 25000, '2020-03-10', '11:11:00', 'non-elektrik'),
(41, 0, 146, 'DATA CABLE VIVAN 1 TOPLES ', 0, 15000, 4, 60000, '2020-03-10', '12:57:00', 'non-elektrik'),
(42, 0, 103, '3D Diamond Softcase VIVO S1 _ moniqueen_com', 0, 20000, 1, 20000, '2020-03-10', '13:36:00', 'non-elektrik'),
(43, 0, 111, '3D Diamond Softcase REALME 2 PRO _ moniqueen_com', 0, 20000, 1, 20000, '2020-03-10', '13:36:00', 'non-elektrik'),
(44, 0, 26, ' voucher data indosat 1GB 7 HARI', 0, 12000, 1, 12000, '2020-03-10', '15:00:00', 'non-elektrik'),
(45, 0, 23, 'VOUCHER TRI GM 2GB _ 2GB NASIONAL', 0, 22000, 1, 22000, '2020-03-10', '15:50:00', 'non-elektrik'),
(53, 0, 144, 'charger SAMSUNG NOTE 4 ORIGINAL', 0, 25000, 1, 25000, '2020-03-11', '19:24:00', 'non-elektrik'),
(54, 0, 21, 'VOUCHER SMARTFREN 10GB _ 5gb 24 jam _ 5 GB malam _', 0, 30000, 1, 30000, '2020-03-12', '07:59:00', 'non-elektrik'),
(55, 0, 144, 'charger SAMSUNG NOTE 4 ORIGINAL', 0, 25000, 1, 25000, '2020-03-12', '11:54:00', 'non-elektrik'),
(56, 0, 28, 'VOUCHER SMARTFREN UNLIMITED_30GB_', 0, 75000, 1, 75000, '2020-03-12', '12:57:00', 'non-elektrik'),
(57, 0, 21, 'VOUCHER SMARTFREN 10GB _ 5gb 24 jam _ 5 GB malam _', 0, 30000, 1, 30000, '2020-03-12', '15:39:00', 'non-elektrik'),
(58, 0, 154, 'VOUCHER TRI 6 GB ', 0, 38000, 1, 38000, '2020-03-12', '21:01:00', 'non-elektrik'),
(59, 0, 18, 'VOUCHER INDOSAT FREEDOM 4GB', 0, 27000, 1, 27000, '2020-03-14', '10:35:00', 'non-elektrik'),
(60, 0, 133, 'Kabel Data SPRING K2 K2_C09 MICRO USB', 0, 25000, 1, 25000, '2020-03-17', '10:35:00', 'non-elektrik'),
(61, 0, 26, 'VOUCHER data indosat 1GB 7 HARI', 0, 12000, 1, 12000, '2020-03-17', '11:11:00', 'non-elektrik'),
(62, 0, 146, 'DATA CABLE VIVAN 1 TOPLES ', 0, 15000, 1, 15000, '2020-03-17', '15:49:00', 'non-elektrik'),
(63, 0, 144, 'charger SAMSUNG NOTE 4 ORIGINAL', 0, 25000, 1, 25000, '2020-03-17', '15:50:00', 'non-elektrik'),
(64, 0, 146, 'DATA CABLE VIVAN 1 TOPLES ', 0, 15000, 1, 15000, '2020-03-17', '21:08:00', 'non-elektrik'),
(65, 0, 21, 'VOUCHER SMARTFREN 10GB _ 5gb 24 jam _ 5 GB malam _', 0, 28000, 1, 28000, '2020-03-18', '10:13:00', 'non-elektrik'),
(66, 0, 27, 'VOUCHER SMARTFREN SMART 4GB', 0, 12000, 1, 12000, '2020-03-18', '10:14:00', 'non-elektrik'),
(68, 0, 144, 'CHARGER SAMSUNG NOTE 4 ORIGINAL', 0, 25000, 1, 25000, '2020-03-18', '18:50:00', 'non-elektrik'),
(69, 0, 162, 'VOUCHER AXIS 2GB _ 1 GB LOKAL _30 HR_', 0, 25000, 1, 25000, '2020-03-18', '19:29:00', 'non-elektrik'),
(70, 0, 154, 'VOUCHER TRI 6 GB _1 TH_', 0, 38000, 1, 38000, '2020-03-19', '09:06:00', 'non-elektrik'),
(71, 0, 155, 'VOUCHER TRI 2 GB _1  TH_', 0, 20000, 1, 20000, '2020-03-19', '11:26:00', 'non-elektrik'),
(72, 0, 146, 'KABEL DATA VIVAN 1 TOPLES ', 0, 15000, 1, 15000, '2020-03-19', '14:58:00', 'non-elektrik'),
(73, 0, 153, 'VOUCHER TRI 1_5 GB _1 TH_', 0, 15000, 1, 15000, '2020-03-20', '10:10:00', 'non-elektrik'),
(74, 0, 15, 'VOUCHER TRI DATA AMI 4GB bonus unlimited youtube', 0, 32000, 1, 32000, '2020-03-20', '10:11:00', 'non-elektrik'),
(75, 0, 14, 'VOUCHER INDOSAT FREEDOM INTERNET 2GB _15 HR_ NASIONAL', 0, 17000, 1, 17000, '2020-03-20', '14:46:00', 'non-elektrik'),
(76, 0, 22, 'VOUCHER INDOSAT YOUTUBE 7 HARI UNLIMITED_ 1GB', 0, 18000, 1, 18000, '2020-03-21', '10:14:00', 'non-elektrik'),
(77, 0, 158, 'PERDANA _ VOUCHER XL 4_5 GB _30 HR_', 0, 30000, 1, 30000, '2020-03-21', '12:30:00', 'non-elektrik'),
(78, 0, 153, 'VOUCHER TRI 1_5 GB _1 TH_', 0, 15000, 1, 15000, '2020-03-23', '08:52:00', 'non-elektrik'),
(79, 0, 18, 'VOUCHER INDOSAT FREEDOM 4GB', 0, 27000, 1, 27000, '2020-03-23', '09:09:00', 'non-elektrik'),
(80, 0, 150, 'VOUCHER AXIS 1 GB _5 HR_ ', 0, 10000, 1, 11000, '2020-03-23', '12:17:00', 'non-elektrik'),
(81, 0, 30, 'PERDANA INDOSAT 1GB UNLIMITED', 0, 25000, 1, 25000, '2020-03-23', '12:37:00', 'non-elektrik'),
(82, 0, 150, 'VOUCHER AXIS 1 GB _5 HR_ ', 0, 10000, 1, 10000, '2020-03-24', '10:26:00', 'non-elektrik'),
(83, 0, 144, 'CHARGER SAMSUNG NOTE 4 ORIGINAL', 0, 25000, 1, 25000, '2020-03-24', '17:15:00', 'non-elektrik'),
(84, 0, 146, 'KABEL DATA VIVAN 1 TOPLES ', 0, 15000, 1, 15000, '2020-03-24', '17:15:00', 'non-elektrik'),
(85, 0, 30, 'PERDANA INDOSAT 1GB UNLIMITED', 0, 25000, 1, 25000, '2020-03-26', '10:01:00', 'non-elektrik'),
(86, 0, 99, '3D Diamond Softcase REDMI 5A _ moniqueen_com', 0, 20000, 1, 20000, '2020-03-26', '10:02:00', 'non-elektrik'),
(87, 0, 15, 'VOUCHER TRI DATA AMI 4GB bonus unlimited youtube  _ Indy cell', 0, 32000, 1, 32000, '2020-03-26', '15:40:00', 'non-elektrik'),
(88, 0, 153, 'VOUCHER TRI 1_5 GB _1 TH_  _ Indy cell', 0, 15000, 1, 15000, '2020-03-30', '11:34:00', 'non-elektrik'),
(89, 0, 14, 'VOUCHER INDOSAT FREEDOM INTERNET 2GB _15 HR_ NASIONAL', 0, 17000, 1, 17000, '2020-03-30', '11:39:00', 'non-elektrik'),
(90, 0, 146, 'KABEL DATA VIVAN 1 TOPLES ', 0, 15000, 1, 15000, '2020-03-30', '19:47:00', 'non-elektrik'),
(91, 0, 162, 'VOUCHER AXIS 2GB _ 1 GB LOKAL _30 HR__ Cahyo Sales', 0, 25000, 1, 25000, '2020-03-31', '12:21:00', 'non-elektrik'),
(92, 0, 156, 'VOUCHER TRI 3 GB AON _1 TH_  _ Indy cell', 0, 26000, 1, 26000, '2020-03-31', '12:49:00', 'non-elektrik'),
(93, 0, 163, 'VOUCHER AXIS 1 GB _30 HARI_', 0, 15000, 1, 15000, '2020-04-01', '11:16:00', 'non-elektrik'),
(94, 0, 153, 'VOUCHER TRI 1_5 GB _1 TH_  _ Indy cell', 0, 15000, 1, 15000, '2020-04-01', '11:16:00', 'non-elektrik'),
(95, 0, 154, 'VOUCHER TRI 6 GB _1 TH_ _ Indy cell', 0, 37000, 1, 37000, '2020-04-01', '14:33:00', 'non-elektrik'),
(96, 0, 163, 'VOUCHER AXIS 1 GB _30 HARI_', 0, 15000, 1, 15000, '2020-04-01', '15:17:00', 'non-elektrik'),
(99, 0, 141, 'HEADSET XIAOMI PISTON 2', 0, 25000, 1, 25000, '2020-04-01', '19:09:00', 'non-elektrik'),
(100, 0, 164, 'VOUCHER AXIS 3 GB _15 HARI_', 0, 21000, 1, 21000, '2020-04-01', '19:10:00', 'non-elektrik'),
(101, 0, 165, 'VOUCHER INDOSAT 3 GB _ ULT YOUTUBE _30 HARI_', 0, 60000, 1, 60000, '2020-04-02', '09:47:00', 'non-elektrik'),
(103, 0, 160, 'PERDANA XL 0K _GRATIS NELPON _ SMS KE AXIS_XL__ Cahyo Sales', 0, 5000, 1, 5000, '2020-04-02', '16:07:00', 'non-elektrik'),
(104, 0, 25, 'PERDANA AXIS PULSA NOL _ PERDANA AXIS 0 K_ Cahyo Sales', 0, 3000, 1, 3000, '2020-04-02', '19:35:00', 'non-elektrik'),
(105, 0, 154, 'VOUCHER TRI 6 GB _1 TH_ _ Indy cell', 0, 37000, 1, 37000, '2020-04-02', '19:55:00', 'non-elektrik'),
(106, 0, 150, 'VOUCHER AXIS 1 GB _5 HR__ Cahyo Sales', 0, 10000, 1, 10000, '2020-04-02', '19:55:00', 'non-elektrik'),
(107, 0, 154, 'VOUCHER TRI 6 GB _1 TH_ _ Indy cell', 0, 37000, 1, 37000, '2020-04-04', '09:21:00', 'non-elektrik'),
(108, 0, 163, 'VOUCHER AXIS 1 GB _30 HARI_', 0, 15000, 1, 15000, '2020-04-04', '10:26:00', 'non-elektrik'),
(109, 0, 27, 'VOUCHER SMARTFREN 4GB 2GB24Jam_2GBmalam _30 HR_', 0, 12000, 1, 12000, '2020-04-04', '14:54:00', 'non-elektrik'),
(111, 0, 0, 'Pulsa XL 10K', 10750, 12000, 1, 12000, '2020-04-04', '16:22:00', 'elektrik'),
(112, 0, 0, 'Token Listrik 20k', 20500, 22000, 1, 22000, '2020-04-04', '16:23:00', 'elektrik'),
(113, 0, 0, 'Pulsa telkomsel 5k', 5750, 7000, 1, 7000, '2020-04-04', '16:23:00', 'elektrik'),
(114, 0, 0, 'Pulsa telkomsel 20k', 19900, 22000, 1, 22000, '2020-04-04', '16:24:00', 'elektrik'),
(115, 0, 0, 'Pulsa Indosat 5k', 5950, 7000, 1, 7000, '2020-04-04', '18:34:00', 'elektrik'),
(116, 0, 0, 'Paket Yellow Indosat 1GB 7 Hari', 9750, 12000, 1, 12000, '2020-04-04', '18:34:00', 'elektrik'),
(117, 0, 0, 'pulsa xl 10k', 10750, 12000, 1, 12000, '2020-04-05', '13:15:00', 'elektrik'),
(118, 0, 156, 'VOUCHER TRI 3 GB AON _1 TH_  _ Indy cell', 0, 26000, 1, 26000, '2020-04-05', '13:15:00', 'non-elektrik'),
(119, 0, 0, 'Token Listrik 20k', 20500, 22000, 1, 22000, '2020-04-06', '10:33:00', 'elektrik'),
(120, 0, 154, 'VOUCHER TRI 6 GB _1 TH_ _ Indy cell', 0, 37000, 1, 37000, '2020-04-06', '10:33:00', 'non-elektrik'),
(121, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-06', '10:35:00', 'elektrik'),
(122, 0, 0, 'Pulsa Tri 50k ', 49200, 52000, 1, 52000, '2020-04-06', '10:50:00', 'elektrik'),
(123, 0, 21, 'VOUCHER SMARTFREN 10GB _ 5gb 24 jam _ 5 GB malam _', 0, 28000, 1, 28000, '2020-04-06', '11:00:00', 'non-elektrik'),
(124, 0, 167, 'VOUCHER TELKOMSEL 8 GB _30 HARI_', 0, 60000, 1, 60000, '2020-04-06', '13:49:00', 'non-elektrik'),
(126, 0, 136, 'KABEL DATA SAMSUNG ORIGINAL USB CABLE PUTIH _ _typec_type_c_type c_', 0, 25000, 1, 25000, '2020-04-06', '18:17:00', 'non-elektrik'),
(127, 0, 0, 'pulsa tsel 10k', 10475, 12000, 1, 12000, '2020-04-06', '18:44:00', 'elektrik'),
(128, 0, 164, 'VOUCHER AXIS 3 GB _15 HARI_', 0, 21000, 1, 21000, '2020-04-06', '18:45:00', 'non-elektrik'),
(129, 0, 25, 'PERDANA AXIS PULSA NOL _ PERDANA AXIS 0 K_ Cahyo Sales', 0, 3000, 1, 3000, '2020-04-06', '19:26:00', 'non-elektrik'),
(130, 0, 154, 'VOUCHER TRI 6 GB _1 TH_ _ Indy cell', 0, 37000, 1, 37000, '2020-04-06', '19:26:00', 'non-elektrik'),
(131, 0, 13, 'PERDANA SMARTFREN GSM PULSA 0K', 0, 5000, 1, 5000, '2020-04-07', '11:09:00', 'non-elektrik'),
(132, 0, 28, 'VOUCHER SMARTFREN UNLIMITED _1GB_HR__28 HR_ _ ricky glorie', 0, 73000, 1, 73000, '2020-04-07', '11:09:00', 'non-elektrik'),
(133, 0, 170, 'VOUCHER SMARTFREN UNLIMITED LITE _500MB_HR__28 HR_ _ ricky glorie', 0, 50000, 1, 50000, '2020-04-07', '11:52:00', 'non-elektrik'),
(134, 0, 0, 'Token listrik 1 JUTA ', 1001000, 1010000, 1, 1010000, '2020-04-07', '12:33:00', 'elektrik'),
(135, 0, 0, 'Tagihan Listrik PLN', 149983, 151000, 1, 151000, '2020-04-07', '12:48:00', 'elektrik'),
(136, 0, 125, '3D Diamond Softcase OPPO A37 _ moniqueen_com', 0, 20000, 1, 20000, '2020-04-07', '12:49:00', 'non-elektrik'),
(137, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-07', '13:04:00', 'elektrik'),
(138, 0, 163, 'VOUCHER AXIS 1 GB _30 HARI_', 0, 15000, 1, 15000, '2020-04-07', '14:57:00', 'non-elektrik'),
(139, 0, 10, 'CHARGER XIAOMI ORIGINIAL 100_ QUALCOMM 3_0 Fast Charging MDY_08_EI', 0, 40000, 1, 40000, '2020-04-07', '15:23:00', 'non-elektrik'),
(140, 0, 0, 'pulsa 3 10k', 10190, 12000, 1, 12000, '2020-04-07', '15:36:00', 'elektrik'),
(141, 0, 29, 'PERDANA INDOSAT 0K', 0, 5000, 1, 5000, '2020-04-07', '16:43:00', 'non-elektrik'),
(142, 0, 166, 'VOUCHER INDOSAT 1 GB _ UNLIMITED APP _30 HARI_', 0, 27000, 1, 27000, '2020-04-08', '09:16:00', 'non-elektrik'),
(143, 0, 153, 'VOUCHER TRI 1_5 GB _1 TH_  _ Indy cell', 0, 15000, 1, 15000, '2020-04-08', '09:16:00', 'non-elektrik'),
(144, 0, 0, 'Pulsa Telkomsel 75k', 73900, 77000, 1, 77000, '2020-04-08', '09:17:00', 'elektrik'),
(145, 0, 0, 'Pulsa indosat 5k', 5950, 7000, 1, 7000, '2020-04-08', '14:05:00', 'elektrik'),
(146, 0, 162, 'VOUCHER AXIS 2GB _ 1 GB LOKAL _30 HR__ Cahyo Sales', 0, 25000, 1, 25000, '2020-04-08', '16:42:00', 'non-elektrik'),
(147, 0, 164, 'VOUCHER AXIS 3 GB _15 HARI_', 0, 21000, 1, 21000, '2020-04-08', '16:49:00', 'non-elektrik'),
(148, 0, 0, 'Pulsa Telkomsel 10k', 10475, 12000, 1, 12000, '2020-04-08', '16:50:00', 'elektrik'),
(149, 0, 0, 'pulsa xl 10k', 10750, 12000, 1, 12000, '2020-04-08', '19:15:00', 'elektrik'),
(150, 0, 0, 'pulsa xl 25k', 24690, 27000, 1, 27000, '2020-04-08', '19:15:00', 'elektrik'),
(151, 0, 0, 'Pulsa Indosat 5k', 5950, 7000, 1, 7000, '2020-04-08', '20:02:00', 'elektrik'),
(152, 0, 0, 'paket data smartfren 10 rb', 9990, 12000, 1, 12000, '2020-04-08', '20:02:00', 'elektrik'),
(153, 0, 28, 'VOUCHER SMARTFREN UNLIMITED _1GB_HR__28 HR_ _ ricky glorie', 0, 73000, 1, 73000, '2020-04-08', '20:12:00', 'non-elektrik'),
(154, 0, 0, 'token listrik 50k', 50500, 52000, 1, 52000, '2020-04-08', '20:13:00', 'elektrik');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id_token`, `email`, `token`, `waktu`) VALUES
(5, 'dngrifai@gmail.com', 'Fbn1MR%2Fp977n12ano60xPfad0uiHkcyXn0i02Lt2S1A%3D', 1562894788),
(6, 'dngrifai@gmail.com', '8LeiXFAdupTeQzMT%2BbdSWb%2FNwUNvuEEOBCJEMZvOWSQ%3D', 1562895722);

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `telephon_toko` int(11) NOT NULL,
  `alamat_toko` varchar(100) NOT NULL,
  `moto_toko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `telephon_toko`, `alamat_toko`, `moto_toko`) VALUES
(54, 'BORDER CELL', 2147483647, 'jl kutoarjo no 17', 'Mencari keberkahan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `aktif` int(1) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `jenis_kelamin`, `telephone`, `foto`, `aktif`, `level`) VALUES
(1, 'danang', 'karyawan@bordercell.com', '$2y$10$wiJxB3Kd3vkF6/AJ9p1.Qe/bwp/mZ30J1dkPHxUECWm2LOzRdMrUy', '', '', '', 1, 0),
(4, 'Melinda', 'admin@bordercell.com', '$2y$10$NUBAXrkjkZSlXUW0y.ePduizp1glmG0eO4nMUTCqQ/JER87JPiYHq', '', '', '', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_elektrik`
--
ALTER TABLE `barang_elektrik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie`
--
ALTER TABLE `cookie`
  ADD PRIMARY KEY (`id_cookie`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `barang_elektrik`
--
ALTER TABLE `barang_elektrik`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie`
--
ALTER TABLE `cookie`
  MODIFY `id_cookie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `desa_wisata`
--
CREATE DATABASE IF NOT EXISTS `desa_wisata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `desa_wisata`;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` text NOT NULL,
  `harga_tiket` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id`, `nama`, `deskripsi`, `foto`, `harga_tiket`) VALUES
(7, 'Argo Wilis', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '5.jpg', '232323'),
(8, 'towjo park', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', 'download_(2).jpeg', '5000'),
(9, 'sriver tubing', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'download.jpeg', '80000'),
(10, 'Argo Dwipangga', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '3.jpg', '26000'),
(11, 'Argo Anggrek', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable</p>\r\n', '2.jpg', '26000');
INSERT INTO `destinasi` (`id`, `nama`, `deskripsi`, `foto`, `harga_tiket`) VALUES
(12, 'Argo Bromo', '<p></p><p><img src=\"data:image/jpeg;base64,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', '51.jpg', '28000');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id_event` int(10) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(200) NOT NULL,
  `tgl_acara` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id_event`, `nama`, `deskripsi`, `foto`, `tgl_acara`) VALUES
(4, 'pasar rayang', 'gunung rayang adalah bukit batu besar di tengah desa sendangdalem ,gunung rayang dihuni ratusan monyet liar', 'gunung-rayang.jpg', '2019-11-13'),
(5, 'aaaaaa', 'festival kali sat adalah event tahunan yang diselenggarakan oleh pkdarwis sendal explore , festival ini dilaksanakan setiap tanggal 1 agustus dan biasa dikunjungi ribuan pengunjung dari berbagai daerah sekitar.', 'fks_besar.png', '2019-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `ruang_info`
--

CREATE TABLE `ruang_info` (
  `id_ruang_info` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruang_info`
--

INSERT INTO `ruang_info` (`id_ruang_info`, `nama`, `deskripsi`) VALUES
(1, 'Wisata Sekitar', 'bla bla'),
(2, 'Tiket Masuk', 'bla bla'),
(3, 'Kuliner', 'bla bla'),
(4, 'Home Stay', '<p>bla bla</p>\r\n'),
(5, 'Hubungi Kami', '<p>bla</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 77.0.3865.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Mac OS X', '2019-10-30 00:22:20'),
(2, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 77.0.3865.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Mac OS X', '2019-10-30 00:24:20'),
(3, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 77.0.3865.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Mac OS X', '2019-10-30 00:26:18'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-17 06:32:19'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-17 14:07:27'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-17 17:02:33'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-17 17:16:07'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-18 09:10:46'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-18 15:51:32'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-22 05:12:50'),
(11, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Nur Amin\"}', '::1', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-27 11:41:14'),
(12, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Nur Amin\"}', '::1', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-28 11:10:01'),
(13, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Nur Amin\"}', '::1', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-11-29 18:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', '$2y$10$6NOKhXKiR2SAgpFF2WpCkuRgYKlSqFJaqM0NgIM3PT1gKHEM5/SM6', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28'),
(9, 'nuramin@gmail.com', '$2y$10$12uhkgalK91pLsvZuoS7/ub0htuCBVzE6dE2ixJRsiOFmb/WMI95e', 'Nur Amin', '0818888888', 1, 0, 1, '2019-11-21 23:14:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(20) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `ulasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `nama`, `ulasan`) VALUES
(2, 'Hidayat Nur', 'WOw bagus sekali bro keren sekali'),
(3, 'Nur Amin', 'mantap sekali yakin brooo,,, josh diluar nalar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `ruang_info`
--
ALTER TABLE `ruang_info`
  ADD PRIMARY KEY (`id_ruang_info`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id_event` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ruang_info`
--
ALTER TABLE `ruang_info`
  MODIFY `id_ruang_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `malasngoding_kios`
--
CREATE DATABASE IF NOT EXISTS `malasngoding_kios` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `malasngoding_kios`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`) VALUES
(8, 'malasngoding', '069c546d1d97fd9648d8142b3e0fd3a3', 'text.png');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `suplier`, `modal`, `harga`, `jumlah`, `sisa`) VALUES
(14, 'roti unibis', 'makanan', 'pt.makamur jaya', 5000, 6500, 350, 20),
(17, 'tim tam', 'makanan ringan', 'pt surga', 2000, 6000, 792, 10),
(19, 'tic tac', 'makanan ringan', 'pt sido multp', 2000, 4000, 2, 24),
(20, 'aqua sedang', 'minuman ringan', 'pt jamaika', 1000, 3000, 990, 1000),
(21, 'makkkanan', 'makanan ringan', 'pt surya', 2000, 4000, 894, 900),
(22, 'makkkanan', 'makanan ringan', 'pt surya', 2000, 4000, 894, 900),
(23, 'magnum', 'rokok', 'pt surga', 12000, 13000, 997, 1000),
(24, 'santri mie', 'makanan ringan', 'pt sido mulyo', 2000, 4000, 784, 800),
(25, 'rambut palsu', 'accesories', 'pt ptan', 3000, 5000, 496, 500),
(26, 'rambut palsu', 'accesories', 'pt ptan', 3000, 5000, 496, 500),
(27, 'sea foog', 'makanan ringan', 'pt surga', 4000, 60000, 598, 600),
(28, 'mild', 'rokok', 'pt sampoerna', 15000, 17000, 192, 200),
(29, 'dji sam soe', 'rokok', 'pt ptan', 14000, 15000, 145, 150),
(30, 'nu mild', 'rokok', 'pt ptan', 14000, 15000, 144, 150),
(31, 'nu mild', 'rokok', 'pt ptan', 14000, 15000, 144, 150),
(32, 'roti', 'makanan', 'hdhnhnhh', 2000, 5000, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `barang_laku`
--

CREATE TABLE `barang_laku` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `laba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_laku`
--

INSERT INTO `barang_laku` (`id`, `tanggal`, `nama`, `jumlah`, `harga`, `total_harga`, `laba`) VALUES
(46, '2015-02-01', 'roti unibis', 2, 6000, 12000, 2000),
(47, '2015-02-02', 'makkkanan', 7, 12000, 84000, 70000),
(48, '2015-02-02', 'dji sam soe', 2, 15000, 30000, 2000),
(49, '2015-02-03', 'makkkanan', 1, 12000, 12000, 10000),
(50, '2015-02-01', 'tim tam', 2, 4000, 8000, 4000),
(51, '2015-02-02', 'mild', 2, 17000, 34000, 4000),
(52, '2015-02-03', 'magnum', 1, 18000, 18000, 6000),
(53, '2015-02-06', 'dji sam soe', 2, 19000, 38000, 10000),
(54, '2015-02-15', 'nu mild', 2, 19100, 38200, 10200),
(55, '2015-02-27', 'roti unibis', 2, 8000, 16000, 6000),
(56, '2015-02-19', 'roti unibis', 1, 7000, 7000, 2000),
(57, '2015-01-14', 'roti unibis', 1, 7000, 7000, 2000),
(58, '2015-02-01', 'pulpen', 1, 3000, 3000, 2000),
(59, '2015-02-02', 'roti', 2, 3000, 6000, 2000),
(63, '2016-01-22', 'tic tac', 8, 4000, 32000, 16000);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keperluan` text NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `tanggal`, `keperluan`, `nama`, `jumlah`) VALUES
(1, '2015-02-06', 'de', 'diki', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_laku`
--
ALTER TABLE `barang_laku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `barang_laku`
--
ALTER TABLE `barang_laku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bordercell\",\"table\":\"penjualan\"},{\"db\":\"bordercell\",\"table\":\"barang\"},{\"db\":\"bordercell\",\"table\":\"penjualan_elektrik\"},{\"db\":\"bordercell\",\"table\":\"barang_elektrik\"},{\"db\":\"bordercell\",\"table\":\"token\"},{\"db\":\"bordercell\",\"table\":\"user\"},{\"db\":\"malasngoding_kios\",\"table\":\"admin\"},{\"db\":\"sia_integrasi_coba_eka\",\"table\":\"jabatan\"},{\"db\":\"sia_integrasi_coba_eka\",\"table\":\"akun\"},{\"db\":\"sia_integrasi_coba_eka\",\"table\":\"pegawai\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'bordercell', 'barang', '{\"sorted_col\":\"`barang`.`setok`  DESC\"}', '2020-04-02 10:25:47'),
('root', 'sia_integrasi_coba_4', 'hari_rentang', '{\"sorted_col\":\"`hari_rentang`.`jam_mulai` DESC\"}', '2019-12-13 02:43:38'),
('root', 'sia_integrasi_coba_4', 'jam_mengajar', '{\"sorted_col\":\"`jam_mengajar`.`id_namamapel` ASC\"}', '2019-11-10 15:55:03'),
('root', 'sia_integrasi_coba_4', 'kelas_reguler', '{\"sorted_col\":\"`kelas_reguler`.`nama_kelas`  ASC\"}', '2019-11-07 01:35:42'),
('root', 'sia_integrasi_coba_4', 'tahunajaran', '{\"sorted_col\":\"`tahunajaran`.`id_tahun_ajaran` ASC\"}', '2019-11-26 08:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-04-09 01:57:46', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":366}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sia_integrasi_coba_eka`
--
CREATE DATABASE IF NOT EXISTS `sia_integrasi_coba_eka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sia_integrasi_coba_eka`;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_harian`
--

CREATE TABLE `absensi_harian` (
  `id_absen_harian` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `keterangan` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi_harian`
--

INSERT INTO `absensi_harian` (`id_absen_harian`, `nisn`, `tgl_mulai`, `tgl_selesai`, `keterangan`) VALUES
(1, '1234567888', '2018-09-13', '2018-09-14', 'Health Check'),
(2, '1234568090', '2018-10-22', '2018-10-26', 'Lomba Cerdas Cermat');

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(5) NOT NULL,
  `password` varchar(50) NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `id_jabatan` int(5) DEFAULT NULL,
  `nisn` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `password`, `NIP`, `id_jabatan`, `nisn`) VALUES
(1, 'kepsek', '14523001', 1, NULL),
(2, 'admin', '145232677', 2, NULL),
(3, 'pegawai', '14523299', 3, NULL),
(4, 'guru', '14523271', 4, NULL),
(5, 'konseling', '13523143', 5, NULL),
(6, 'kesiswaan', '13523062', 6, NULL),
(7, 'kurikulum', '13523096', 7, NULL),
(8, 'siswa', NULL, 8, '1234567816'),
(9, 'pembimbing', '13523134', 9, NULL),
(10, 'karyawan', '13523555', 10, NULL),
(11, 'gurupiket', '13523267', 11, NULL),
(12, '55555550', NULL, 8, '55555550'),
(13, 'siswa', NULL, 8, '1234567900'),
(15, 'ekskul', '1221129', 12, NULL),
(16, 'presensi', '13523120', 13, '');

-- --------------------------------------------------------

--
-- Table structure for table `akun_siswa`
--

CREATE TABLE `akun_siswa` (
  `id_akun_siswa` int(3) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_siswa`
--

INSERT INTO `akun_siswa` (`id_akun_siswa`, `nisn`, `password`) VALUES
(1, '123', 22),
(5, '565', 565),
(7, '787', 787);

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `tgl_bayar` date NOT NULL,
  `jmlh_bayar` int(10) NOT NULL,
  `tgl_habis_bayar` date NOT NULL,
  `status_bayar` enum('sudah bayar','belum bayar') NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `id_kelas_tambahan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daftar_ulang`
--

CREATE TABLE `daftar_ulang` (
  `id_daftar_ulang` int(3) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nomor_pendaftar_ujian` int(10) NOT NULL,
  `no_pendaftar` int(10) NOT NULL,
  `surat_pernyataan` tinyint(1) NOT NULL,
  `rapor` tinyint(1) NOT NULL,
  `formulir_pendataan` tinyint(1) NOT NULL,
  `tanda_pembayaran` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `danamandiri`
--

CREATE TABLE `danamandiri` (
  `id_danamandiri` int(3) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `keterangan` varchar(25) NOT NULL,
  `nominal` int(20) NOT NULL,
  `jenis_tagihan` varchar(50) NOT NULL,
  `batas_akhir_pembayaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deskripsi_nilai`
--

CREATE TABLE `deskripsi_nilai` (
  `id_deskripsi` int(3) NOT NULL,
  `NIlai_atas` int(3) NOT NULL,
  `Nilai_bawah` int(3) NOT NULL,
  `predikat` varchar(40) NOT NULL,
  `deskripsi` text NOT NULL,
  `mapel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `id` int(1) NOT NULL,
  `nama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`id`, `nama`) VALUES
(1, 'nadya');

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id_ekstrakurikuler` int(5) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `id_jenis_kls_tambahan` int(5) NOT NULL,
  `id_jadwal_ekskul` int(5) NOT NULL,
  `request_ekskul` varchar(20) NOT NULL,
  `thn_ajaran` varchar(15) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`id_ekstrakurikuler`, `nisn`, `id_jenis_kls_tambahan`, `id_jadwal_ekskul`, `request_ekskul`, `thn_ajaran`, `semester`, `id_tahun_ajaran`) VALUES
(14, '0031211478', 3, 5, '', '2016 - 2017', 'Genap', 1),
(15, '0031211478', 2, 4, '', '2013 - 2014', 'Genap', 1),
(26, '5130114039', 2, 4, '', '2016 - 2017', 'Genap', 1),
(27, '5130114039', 3, 5, '', '2016 - 2017', 'Genap', 1),
(28, '0159521452', 1, 2, '', '2016 - 2017', 'Genap', 1),
(29, '0159521452', 3, 5, '', '2016 - 2017', 'Genap', 1),
(34, '0188526521', 1, 1, '', '2016 - 2017', 'Genap', 1),
(35, '0188526521', 2, 4, '', '2016 - 2017', 'Genap', 1),
(36, '0188526521', 3, 5, '', '2016 - 2017', 'Genap', 1),
(41, '0001254879', 1, 2, '', '2016 - 2017', 'Genap', 1),
(42, '0001254879', 2, 4, '', '2016 - 2017', 'Genap', 1),
(43, '0001254879', 3, 5, '', '2016 - 2017', 'Genap', 1),
(44, '0001254879', 4, 6, '', '2016 - 2017', 'Genap', 1),
(45, '0059512014', 1, 1, '', '2016 - 2017', 'Genap', 1),
(46, '0059512014', 2, 4, '', '2016 - 2017', 'Genap', 1),
(47, '0059512014', 3, 5, '', '2016 - 2017', 'Genap', 1),
(49, '0084746890', 1, 2, '', '2016 - 2017', 'Genap', 1),
(51, '0172013964', 6, 7, '', '2016 - 2017', 'Genap', 1),
(54, '0147100123', 6, 7, '', '2016 - 2017', 'Genap', 1),
(55, '0162145632', 1, 1, '', '2016 - 2017', 'Genap', 1),
(56, '0162145632', 2, 4, '', '2016 - 2017', 'Genap', 1),
(57, '0162145632', 5, 3, '', '2016 - 2017', 'Genap', 1),
(58, '0162145632', 6, 7, '', '2016 - 2017', 'Genap', 1),
(59, '0023314997', 5, 3, '', '2016 - 2017', 'Genap', 1),
(60, '0023314997', 6, 7, '', '2016 - 2017', 'Genap', 1),
(61, '0101245125', 1, 2, '', '2016 - 2017', 'Genap', 1),
(62, '0101245125', 2, 4, '', '2016 - 2017', 'Genap', 1),
(63, '0118544745', 1, 1, '', '2016 - 2017', 'Genap', 1),
(64, '0118544745', 3, 5, '', '2016 - 2017', 'Genap', 1),
(65, '0059512014', 2, 4, '', '2017 - 2018', 'Ganjil', 1),
(66, '0059512014', 5, 3, '', '2017 - 2018', 'Ganjil', 1),
(67, '0126652145', 4, 6, '', '2014 - 2015', 'Ganjil', 1),
(68, '1234567833', 1, 0, '', '2016 - 2017', 'Ganjil', 1),
(69, '1234567833', 2, 0, '', '2016 - 2017', 'Ganjil', 1),
(70, '1234567816', 1, 5, '', '2010 - 2011', 'Ganjil', 2),
(72, '1234567816', 1, 5, '', '2016 - 2017', 'Ganjil', 2);

-- --------------------------------------------------------

--
-- Table structure for table `form_daftarulang_kenaikan`
--

CREATE TABLE `form_daftarulang_kenaikan` (
  `id_form_daftarulang_kenaikan` int(2) NOT NULL,
  `nama_kolom` varchar(50) NOT NULL,
  `atribut` varchar(100) DEFAULT NULL,
  `nilai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `form_daftarulang_kenaikan`
--

INSERT INTO `form_daftarulang_kenaikan` (`id_form_daftarulang_kenaikan`, `nama_kolom`, `atribut`, `nilai`) VALUES
(1, 'surat_pernyataan', 'Surat Pernyataan', 0),
(2, 'rapor', 'Rapor', 1),
(3, 'formulir_pendataan', 'Formulir Pendataan', 0),
(4, 'tanda_pembayaran', 'Tanda Pembayaran', 0),
(5, 'berkas_1', '', 0),
(6, 'berkas_2', '', 0),
(7, 'berkas_3', '', 0),
(8, 'berkas_4', '', 0),
(9, 'berkas_5', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `form_daftarulang_ppdb`
--

CREATE TABLE `form_daftarulang_ppdb` (
  `id_form_daftarulang_ppdb` int(10) NOT NULL,
  `nama_kolom` varchar(50) NOT NULL,
  `atribut` varchar(50) DEFAULT NULL,
  `nilai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_daftarulang_ppdb`
--

INSERT INTO `form_daftarulang_ppdb` (`id_form_daftarulang_ppdb`, `nama_kolom`, `atribut`, `nilai`) VALUES
(1, 'nomor_pendaftar', 'Nomor Pendaftaran', 1),
(2, 'surat_pernyataan', 'Surat Pernyataan', 0),
(3, 'form_pendataan', 'Formulir Pendataan', 0),
(4, 'tanda_pembayaran', 'Tanda Bukti Pembayaran', 0),
(5, 'berkas_1', '', 0),
(6, 'berkas_2', '', 0),
(7, 'berkas_3', '', 0),
(8, 'berkas_4', '', 0),
(9, 'berkas_5', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `form_pendaftaran_mutasi_masuk`
--

CREATE TABLE `form_pendaftaran_mutasi_masuk` (
  `id_form_pendaftaran_mutasi_masuk` int(2) NOT NULL,
  `nama_kolom` varchar(30) NOT NULL,
  `atribut` varchar(50) NOT NULL,
  `nilai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_pendaftaran_mutasi_masuk`
--

INSERT INTO `form_pendaftaran_mutasi_masuk` (`id_form_pendaftaran_mutasi_masuk`, `nama_kolom`, `atribut`, `nilai`) VALUES
(1, 'nisn', 'NISN', 1),
(2, 'nama_pendaftar_mutasi', 'Nama', 1),
(3, 'tempat_lahir', 'Tempat Lahir', 1),
(4, 'tanggal_lahir', 'Tanggal Lahir', 1),
(5, 'jenis_kelamin', 'Jenis Kelamin', 0),
(6, 'agama', 'Agama', 0),
(7, 'alamat', 'Alamat', 0),
(8, 'no_telepon', 'Nomor Telepon', 0),
(9, 'sekolah_asal', 'Asal Sekolah', 0),
(10, 'tahun_kelulusan', 'Tahun Kelulusan', 0),
(11, 'nilai_un_bahasaindonesia', 'Nilai UN Bahasa Indonesia', 0),
(12, 'nilai_un_matematika', 'Nilai UN Matematika', 0),
(13, 'nilai_un_ipa', 'Nilai UN IPA', 0),
(14, 'jumlah_nilai_un', 'Total Nilai UN', 0),
(15, 'surat_ket_nisn', 'Surat Keterangan NISN', 0),
(16, 'fc_buku_rapor', 'Fotokopi Buku Rapor', 0),
(17, 'fc_skhun', 'Fotokopi SKHUN', 0),
(18, 'surat_ket_bangku', 'Surat Keterangan Bangku Kosong', 0),
(19, 'surat_ket_pindah', 'Surat Keterangan Pindah', 0),
(20, 'skck_kepsek', 'SKCK Kepala Sekolah', 0),
(21, 'berkas_1', '', 0),
(22, 'berkas_2', '', 0),
(23, 'berkas_3', '', 0),
(24, 'berkas_4', '', 0),
(25, 'berkas_5', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `form_ppdb`
--

CREATE TABLE `form_ppdb` (
  `id_form_ppdb` int(2) NOT NULL,
  `nama_kolom` varchar(30) NOT NULL,
  `atribut` varchar(100) DEFAULT NULL,
  `nilai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `form_ppdb`
--

INSERT INTO `form_ppdb` (`id_form_ppdb`, `nama_kolom`, `atribut`, `nilai`) VALUES
(1, 'nomor_pendaftaran', 'Nomor Pendaftaran', 0),
(2, 'no_usbn', 'Nomor USBN', 0),
(3, 'nisn_pendaftar', 'NISN', 1),
(4, 'nama', 'Nama Lengkap', 1),
(5, 'jenis_kelamin', 'Jenis Kelamin', 1),
(6, 'tempat_lahir', 'Tempat Lahir', 0),
(7, 'tanggal_lahir', 'Tanggal Lahir', 0),
(8, 'alamat', 'Alamat', 0),
(9, 'asal_sekolah', 'Asal Sekolah', 0),
(10, 'tahun_lulus', 'Tahun Lulus', 0),
(11, 'nilai_un_ind', 'Nilai UN B. Indonesia', 0),
(12, 'nilai_un_mat', 'Nilai UN Matematika', 0),
(13, 'nilai_un_ipa', 'Nilai UN IPA', 0),
(14, 'nilai_prestasi', 'Nilai Prestasi', 0),
(15, 'nilai_un_nun', 'Total Nilai', 0),
(16, 'domisili', 'Domisili', 0),
(17, 'bukti_pengajuan_daftar', 'Berkas yang dilampirkan: Bukti Pengajuan Daftar', 0),
(18, 'surat_ket_penambah_nilai', 'Berkas yang dilampirkan: Surat Keterangan Penambah Nilai', 0),
(19, 'surat_ket_nisn', 'Berkas yang dilampirkan: Surat Keterangan NISN', 0),
(20, 'fc_ijazah', 'Berkas yang dilampirkan: Fotocopy Ijazah', 0),
(21, 'fc_rapor', 'Berkas yang dilampirkan: Fotocopy Rapor', 0),
(22, 'skhun', 'Berkas yang dilampirkan: SKHUN', 0),
(23, 'fc_skhun', 'Berkas yang dilampirkan: Fotocopy SKHUN', 0),
(24, 'skck_kepsek', 'Berkas yang dilampirkan: Surat Keterangan Berkelakuan Baik Kepala Sekolah', 0),
(25, 'fc_kk', 'Berkas yang dilampirkan: Fotocopy Kartu Keluarga', 0),
(26, 'fc_akta_lahir', 'Berkas yang dilampirkan: Fotocopy Akta Lahir', 0),
(27, 'surat_ket_rt', 'Berkas yang dilampirkan: Surat Keterangan RT', 0),
(28, 'surat_keterangan_napza', 'Berkas yang dilampirkan: Surat Keterangan Napza', 0),
(29, 'berkas_1', '', 0),
(30, 'berkas_2', '', 0),
(31, 'berkas_3', '', 0),
(32, 'berkas_4', '', 0),
(33, 'berkas_5', '', 0),
(34, 'pilihan_sekolah_1', 'Pilihan Sekolah 1', 0),
(35, 'pilihan_sekolah_2', 'Pilihan Sekolah 2', 0),
(36, 'pilihan_sekolah_3', 'Pilihan Sekolah 3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `form_ujian`
--

CREATE TABLE `form_ujian` (
  `id_form_ujian` int(2) NOT NULL,
  `nama_kolom` varchar(50) NOT NULL,
  `atribut` varchar(100) DEFAULT NULL,
  `nilai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_ujian`
--

INSERT INTO `form_ujian` (`id_form_ujian`, `nama_kolom`, `atribut`, `nilai`) VALUES
(1, 'ujian_1', 'Tes Administrasi', 1),
(2, 'ujian_2', 'Tes Kesehatan', 1),
(3, 'ujian_3', 'Tes Ujian Tertulis', 1),
(4, 'ujian_4', 'Tes Psikotes', 1),
(5, 'ujian_5', 'Tes Hafalan Al Quran', 1),
(6, 'ujian_6', 'Tes Wawancara', 1),
(7, 'ujian_7', '', 0),
(8, 'ujian_8', '', 0),
(9, 'ujian_9', '', 0),
(10, 'ujian_10', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hari_rentang`
--

CREATE TABLE `hari_rentang` (
  `id_rentang_jam` int(10) NOT NULL,
  `jam_ke` varchar(2) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `durasi` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hari_rentang`
--

INSERT INTO `hari_rentang` (`id_rentang_jam`, `jam_ke`, `jam_mulai`, `jam_selesai`, `hari`, `id_tahun_ajaran`, `durasi`) VALUES
(161, '2', '09:00:00', '10:00:00', 'Selasa', 5, '00:00:00'),
(162, '1', '07:07:00', '08:08:00', 'Rabu', 1, '00:00:00'),
(163, '2', '08:08:00', '09:09:00', 'Rabu', 1, '00:00:00'),
(164, '1', '11:11:00', '12:12:00', 'Kamis', 1, '00:00:00'),
(165, '2', '14:02:00', '03:04:00', 'Kamis', 1, '00:00:00'),
(167, '1', '08:00:00', '09:00:00', 'Senin', 5, '00:00:00'),
(168, '2', '09:00:00', '10:00:00', 'Senin', 5, '00:00:00'),
(169, '3', '11:00:00', '13:00:00', 'Senin', 5, '00:00:00'),
(170, '1', '08:00:00', '09:00:00', 'Selasa', 5, '00:00:00'),
(171, '3', '10:00:00', '00:00:00', 'Selasa', 5, '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(5) NOT NULL,
  `nama_jabatan` varchar(15) NOT NULL,
  `url` varchar(255) NOT NULL,
  `menuakses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `url`, `menuakses`) VALUES
(1, 'Kepala Sekolah', 'kepsek', '1,2,3,4,5,6,7'),
(2, 'Superadmin', 'superadmin', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49'),
(3, 'Pegawai', 'pegawai', '35,36,37'),
(4, 'Guru', 'Guru', '16,17,22,23,24,26,27,28,29,40,42'),
(5, 'Konseling', 'konseling', '38,39,46,47,48,49,50'),
(6, 'Kesiswaan', 'kesiswaan', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15'),
(7, 'Kurikulum', 'kurikulum', '16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35'),
(8, 'Siswa', 'siswa', '0'),
(9, 'Pembimbing', 'nonakademik', '38,39,40,41,42,43,44'),
(10, 'Karyawan', 'karyawan', '35,36,37,38,39,40'),
(11, 'Guru Piket', 'gurupiket', '16,17,21,23'),
(12, 'Ekskul', 'ekstrakurikuler', '16,17,25'),
(13, 'Admin Presensi', 'kurikulum', '16,26,29');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_has_tugas`
--

CREATE TABLE `jabatan_has_tugas` (
  `jabatan_id_jabatan` int(5) NOT NULL,
  `tugas_id_tugas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_ekskul`
--

CREATE TABLE `jadwal_ekskul` (
  `id_jadwal_ekskul` int(5) NOT NULL,
  `id_jenis_kls_tambahan` int(5) DEFAULT NULL,
  `id_pembimbing` int(5) DEFAULT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') DEFAULT NULL,
  `jumlah_peserta` int(5) DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `tempat` varchar(20) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_ekskul`
--

INSERT INTO `jadwal_ekskul` (`id_jadwal_ekskul`, `id_jenis_kls_tambahan`, `id_pembimbing`, `hari`, `jumlah_peserta`, `jam_mulai`, `jam_selesai`, `tempat`, `keterangan`) VALUES
(4, 2, 2, 'Selasa', 0, '10:00:00', '12:30:00', 'sekolah', ''),
(5, 1, 1, 'Sabtu', 0, '08:00:00', '12:00:00', 'Sekolah', ''),
(6, 1, NULL, 'Senin', NULL, '02:02:00', '03:03:00', NULL, NULL),
(7, 2, NULL, 'Rabu', NULL, '14:02:00', '15:03:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_mapel`
--

CREATE TABLE `jadwal_mapel` (
  `NIP` varchar(20) NOT NULL,
  `id_namamapel` int(10) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `id_kelas_reguler_berjalan` int(10) NOT NULL,
  `id_jadwal_mapel` int(10) NOT NULL,
  `id_rentang_jam` int(10) NOT NULL,
  `id_kelas_reguler` int(10) NOT NULL,
  `id_prkh` int(10) NOT NULL,
  `id_jam_mgjr` int(10) NOT NULL,
  `jam_ke` varchar(2) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_mapel`
--

INSERT INTO `jadwal_mapel` (`NIP`, `id_namamapel`, `id_tahun_ajaran`, `id_kelas_reguler_berjalan`, `id_jadwal_mapel`, `id_rentang_jam`, `id_kelas_reguler`, `id_prkh`, `id_jam_mgjr`, `jam_ke`, `hari`) VALUES
('989234', 45, 5, 0, 7, 158, 1, 0, 0, '1', 'Senin'),
('989234', 45, 5, 0, 8, 158, 2, 0, 0, '1', 'Senin');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_piket_guru`
--

CREATE TABLE `jadwal_piket_guru` (
  `id_jdwl_piket_guru` int(10) NOT NULL,
  `NIP` varchar(20) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_piket_guru`
--

INSERT INTO `jadwal_piket_guru` (`id_jdwl_piket_guru`, `NIP`, `id_tahun_ajaran`, `hari`) VALUES
(13, '14523267', 2, 'Senin'),
(14, '87283282', 2, 'Selasa'),
(15, '13523099', 2, 'Senin'),
(143, '12345', 1, 'Senin'),
(144, '13523179', 1, 'Selasa'),
(145, '13523069', 1, 'Rabu'),
(146, '135231399', 1, 'Kamis'),
(147, '13523135', 1, 'Senin'),
(148, '123', 1, 'Selasa'),
(149, '989234', 1, 'Rabu'),
(150, '13523138', 1, 'Kamis'),
(151, '12523001', 1, 'Senin'),
(152, '13523555', 1, 'Selasa'),
(153, '13523069', 1, 'Rabu'),
(154, '13523136', 1, 'Kamis'),
(155, '13523069', 1, 'Senin'),
(156, '13523135', 1, 'Selasa'),
(157, '13523111', 1, 'Rabu'),
(158, '13523000', 1, 'Kamis');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_tambahan`
--

CREATE TABLE `jadwal_tambahan` (
  `NIP` varchar(20) NOT NULL,
  `id_kelas_tambahan` int(10) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `tgl_tambahan` date NOT NULL,
  `id_jadwal_tambahan` int(10) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `id_namamapel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_tambahan`
--

INSERT INTO `jadwal_tambahan` (`NIP`, `id_kelas_tambahan`, `jam_mulai`, `jam_selesai`, `tgl_tambahan`, `id_jadwal_tambahan`, `id_tahun_ajaran`, `id_namamapel`) VALUES
('14523267', 2, '08:00:00', '10:00:00', '2018-09-27', 8, 1, 42),
('13523138', 1, '01:59:00', '02:00:00', '2019-12-08', 9, 1, 42),
('13523138', 1, '01:10:00', '01:10:00', '2019-12-02', 10, 1, 42),
('13523138', 3, '14:22:00', '15:33:00', '2019-12-16', 11, 1, 42),
('13523138', 2, '12:12:00', '13:13:00', '2019-12-30', 12, 5, 46);

-- --------------------------------------------------------

--
-- Table structure for table `jam_mengajar`
--

CREATE TABLE `jam_mengajar` (
  `id_jam_mgjr` int(10) NOT NULL,
  `NIP` varchar(20) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `id_namamapel` int(10) NOT NULL,
  `jml_jam_mgjr` int(10) NOT NULL,
  `jatah_minim_mgjr` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam_mengajar`
--

INSERT INTO `jam_mengajar` (`id_jam_mgjr`, `NIP`, `id_tahun_ajaran`, `id_namamapel`, `jml_jam_mgjr`, `jatah_minim_mgjr`) VALUES
(8, '14523271', 1, 42, 0, 24),
(9, '14523267', 1, 45, 0, 24),
(10, '14523267', 1, 42, 0, 24),
(12, '12345', 1, 4, 0, 24),
(13, '13523138', 1, 6, 0, 24),
(15, '989234', 1, 13, 0, 24),
(16, '135231399', 1, 12, 0, 24),
(17, '13523138', 1, 11, 0, 24),
(18, '13523069', 1, 6, 0, 24),
(19, '13523136', 1, 4, 0, 24),
(20, '1231233412', 1, 5, 0, 24),
(22, '123456', 1, 31, 0, 20),
(23, '123', 1, 42, 0, 5),
(24, '123', 5, 42, 0, 5),
(25, '989234', 5, 45, 0, 5),
(26, '989234', 5, 47, 0, 10),
(27, '13523135', 5, 48, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kls_tambahan`
--

CREATE TABLE `jenis_kls_tambahan` (
  `id_jenis_kls_tambahan` int(5) NOT NULL,
  `jenis_kls_tambahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kls_tambahan`
--

INSERT INTO `jenis_kls_tambahan` (`id_jenis_kls_tambahan`, `jenis_kls_tambahan`) VALUES
(1, 'Marching Band'),
(2, 'Badmintonui'),
(4, 'contoh'),
(6, 'bhgj');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_nilai_akhir`
--

CREATE TABLE `jenis_nilai_akhir` (
  `id_jenis_na` int(11) NOT NULL,
  `Jenis_na` varchar(20) NOT NULL,
  `kode_na` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_nilai_akhir`
--

INSERT INTO `jenis_nilai_akhir` (`id_jenis_na`, `Jenis_na`, `kode_na`) VALUES
(2, 'Pengetahuan', 1),
(3, 'Keterampilan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pelanggaran`
--

CREATE TABLE `jenis_pelanggaran` (
  `id_jenis_pelanggaran` int(20) NOT NULL,
  `tgl_kejadian` date NOT NULL,
  `bentuk_pelanggaran` varchar(50) NOT NULL,
  `sanksi` varchar(50) NOT NULL,
  `no_pasal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kaldik`
--

CREATE TABLE `kaldik` (
  `id_kaldik` int(4) NOT NULL,
  `nama_kaldik` varchar(30) NOT NULL,
  `simbol_kaldik` text NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaldik`
--

INSERT INTO `kaldik` (`id_kaldik`, `nama_kaldik`, `simbol_kaldik`, `tgl_awal`, `tgl_akhir`) VALUES
(1, 'Ujian Akhir Semester', '', '2018-08-05', '2018-08-19'),
(2, 'Ujian Akhir Semester', '', '2018-08-05', '2018-08-19'),
(3, 'Ujian Akhir Semester', '', '2018-08-05', '2018-08-19'),
(4, 'AA', '', '2018-11-04', '2018-11-03'),
(5, 'Ujian Akhir Semester', '', '2018-08-31', '2018-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_nilai`
--

CREATE TABLE `kategori_nilai` (
  `id_kategorinilai` int(2) NOT NULL,
  `kategori_nilai` varchar(20) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_nilai`
--

INSERT INTO `kategori_nilai` (`id_kategorinilai`, `kategori_nilai`, `bobot`) VALUES
(2, 'Ulangan Harian', 20),
(3, 'UTS', 30),
(4, 'Ujian Akhir Semester', 30),
(7, 'Tugas', 20);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_berjalan`
--

CREATE TABLE `kelas_berjalan` (
  `id_kelas_kerjalan` int(10) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `wali_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas_reguler`
--

CREATE TABLE `kelas_reguler` (
  `id_kelas_reguler` int(10) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `jenjang` enum('7','8','9') NOT NULL,
  `kuota_kelas_reguler` int(5) NOT NULL,
  `jumlah_kelas_reguler` int(5) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_reguler`
--

INSERT INTO `kelas_reguler` (`id_kelas_reguler`, `nama_kelas`, `jenjang`, `kuota_kelas_reguler`, `jumlah_kelas_reguler`, `id_tahun_ajaran`) VALUES
(1, '7-A', '7', 0, 2, 1),
(2, '7-B', '7', 0, 2, 1),
(5, '9-A', '9', 0, 2, 1),
(6, '9-B', '9', 0, 2, 1),
(7, '8-A', '8', 0, 5, 0),
(8, '8-B', '8', 0, 5, 0),
(9, '8-C', '8', 0, 5, 0),
(10, '8-D', '8', 0, 5, 0),
(11, '8-E', '8', 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_reguler_berjalan`
--

CREATE TABLE `kelas_reguler_berjalan` (
  `id_kelas_reguler_berjalan` int(10) NOT NULL,
  `wali_kelas` varchar(50) NOT NULL,
  `id_kelas_reguler` int(10) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_reguler_berjalan`
--

INSERT INTO `kelas_reguler_berjalan` (`id_kelas_reguler_berjalan`, `wali_kelas`, `id_kelas_reguler`, `id_tahun_ajaran`) VALUES
(1, '', 1, 1),
(2, '', 2, 1),
(3, '', 1, 5),
(4, '', 2, 5),
(5, '', 5, 5),
(6, '', 6, 5),
(7, '', 7, 5),
(8, '', 8, 5),
(9, '', 9, 5),
(10, '', 10, 5),
(11, '', 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_tambahan`
--

CREATE TABLE `kelas_tambahan` (
  `id_kelas_tambahan` int(10) NOT NULL,
  `nama_kelas_tambahan` varchar(10) NOT NULL,
  `jenjang_kls_tambahan` enum('7','8','9') NOT NULL,
  `kuota_kelas` int(10) NOT NULL,
  `jumlah_kelas_tambahan` int(5) NOT NULL,
  `id_jenis_kls_tambahan` int(5) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `hasil_tpm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas_tambahan_berjalan`
--

CREATE TABLE `kelas_tambahan_berjalan` (
  `id_kelas_tambahan_berjalan` int(10) NOT NULL,
  `id_kelas_tambahan` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ketentuan_ppdb`
--

CREATE TABLE `ketentuan_ppdb` (
  `id_ketentuan` int(10) NOT NULL,
  `nama_ketentuan` varchar(100) NOT NULL,
  `isi_ketentuan` text NOT NULL,
  `tgl_berlaku` date NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ketentuan_ppdb`
--

INSERT INTO `ketentuan_ppdb` (`id_ketentuan`, `nama_ketentuan`, `isi_ketentuan`, `tgl_berlaku`, `id_tahun_ajaran`) VALUES
(20, 'Ketentuan Penerimaan Peserta Didik Baru Tahun Ajaran 2015/ 2016', '02-IP_Address.pdf', '2015-09-26', 1),
(22, 'Ketentuan Penerimaan Peserta Didik Baru Tahun 2016/ 2017', '04-Model_OSI_vs_TCP_IP.pdf', '2016-09-27', 2),
(23, 'Ketentuan Daftar Ulang Penerimaan Peserta Didik Baru Tahun 2016/ 2017 Bagian 4', '04-Model_OSI_vs_TCP_IP_(ekstra).pdf', '2017-09-13', 2),
(24, 'Ketentuan Pendaftaran Penerimaan Peserta Didik Baru Tahun Ajaran 2017/ 2018', '8-NetworkLayer-Extras2.pdf', '2017-10-04', 1),
(25, 'coba ketentuan', '7stepspublic-110220190942-phpapp01.pdf', '2019-07-15', 1),
(27, 'ketentuan baru coba', '', '2018-02-02', 1),
(29, 'ketentuan ppdb ujian nasional', '01-SistemBasisDataTerdistribusi1.pdf', '2018-08-31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `keterlambatan`
--

CREATE TABLE `keterlambatan` (
  `id_keterlambatan` int(15) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_terlambat` date NOT NULL,
  `jmlh_terlambat` int(20) NOT NULL,
  `keterangan` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keterlambatan`
--

INSERT INTO `keterlambatan` (`id_keterlambatan`, `nisn`, `tgl_terlambat`, `jmlh_terlambat`, `keterangan`) VALUES
(1, '1234567898', '2018-09-13', 0, 'macet'),
(2, '1234567898', '2018-09-14', 0, 'ban bocor'),
(3, '1234567900', '2018-10-19', 0, 'macet');

-- --------------------------------------------------------

--
-- Table structure for table `klinik_un`
--

CREATE TABLE `klinik_un` (
  `id_klinik_un` int(10) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `req_materi` text NOT NULL,
  `jumlah_peserta` int(5) NOT NULL,
  `status_req` enum('Belum Direspon','Sudah Direspon') NOT NULL,
  `tanggal` date DEFAULT NULL,
  `respon` text NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `id_tahun_ajaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klinik_un`
--

INSERT INTO `klinik_un` (`id_klinik_un`, `nama_siswa`, `kelas`, `req_materi`, `jumlah_peserta`, `status_req`, `tanggal`, `respon`, `nisn`, `NIP`, `id_tahun_ajaran`) VALUES
(1, 'Budi Haryanto', '7-A', 'matematika', 15, 'Belum Direspon', NULL, '', '1234567900', NULL, 1),
(2, 'Budi Haryanto', '7-A', 'apaan', 15, 'Belum Direspon', NULL, '', '1234567900', NULL, 1),
(3, 'Budi Haryanto', '7-A', 'apaan', 15, 'Belum Direspon', NULL, '', '1234567900', NULL, 1),
(4, 'Budi Haryanto', '7-A', 'materi dong', 8, 'Belum Direspon', NULL, '', '1234567900', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` int(3) NOT NULL,
  `nama_kurikulum` varchar(20) NOT NULL,
  `nama_filekur` varchar(50) NOT NULL,
  `tahunajaran_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_dasar`
--

CREATE TABLE `k_dasar` (
  `id_kd` int(10) NOT NULL,
  `kode_kd` varchar(75) NOT NULL,
  `deskripsi_kd` varchar(255) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_jenis_na` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_backend`
--

CREATE TABLE `login_backend` (
  `id_user` int(11) NOT NULL,
  `username` int(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_backend`
--

INSERT INTO `login_backend` (`id_user`, `username`, `password`) VALUES
(1, 123456, 'qwerty123'),
(2, 123, '111'),
(3, 1234567, 'qwerty1234');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(10) NOT NULL,
  `id_namamapel` int(10) NOT NULL,
  `nama_mapel2` varchar(50) NOT NULL,
  `kkm` int(3) NOT NULL,
  `jam_belajar` int(2) NOT NULL,
  `id_kelas_reguler` int(10) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `id_namamapel`, `nama_mapel2`, `kkm`, `jam_belajar`, `id_kelas_reguler`, `id_tahun_ajaran`) VALUES
(1, 42, '', 65, 24, 1, 0),
(2, 42, '', 65, 24, 2, 0),
(3, 46, '', 70, 24, 1, 0),
(4, 46, '', 70, 24, 2, 0),
(17, 42, '', 70, 24, 3, 0),
(18, 42, '', 70, 24, 4, 0),
(19, 42, '', 65, 24, 3, 0),
(20, 42, '', 65, 24, 4, 0),
(25, 42, '', 78, 24, 5, 0),
(26, 42, '', 78, 24, 6, 0),
(27, 47, '', 70, 24, 5, 0),
(28, 47, '', 70, 24, 6, 0),
(30, 42, '', 72, 24, 6, 0),
(51, 42, '', 0, 2, 1, 0),
(52, 42, '', 0, 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mapel_default`
--

CREATE TABLE `mapel_default` (
  `id_mapel` int(30) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel_default`
--

INSERT INTO `mapel_default` (`id_mapel`, `nama_mapel`) VALUES
(1, 'Matematika'),
(2, 'Bahasa Indonesia'),
(3, 'Biologi'),
(4, 'Fisika'),
(5, 'Bahasa Inggris'),
(6, 'Bahasa Jawa'),
(7, 'Seni Budaya'),
(8, 'Olahraga'),
(9, 'IPS'),
(10, 'Prakarya'),
(11, 'PKN'),
(12, 'Bahasa Pluto'),
(13, 'Bahasa Mars');

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `id_mutasi` int(10) NOT NULL,
  `tgl_mutasi` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `sekolah_asal_tujuan` varchar(100) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `id_siswa_mutasi_keluar` int(10) NOT NULL,
  `id_pendaftar_mutasi` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `namamapel`
--

CREATE TABLE `namamapel` (
  `id_namamapel` int(10) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `warna` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `namamapel`
--

INSERT INTO `namamapel` (`id_namamapel`, `nama_mapel`, `warna`) VALUES
(42, 'Matematika', '#ffff00'),
(45, 'Bahasa Indonesia', '#ff0000'),
(46, 'Biologi', '#ffff00'),
(47, 'Fisika', '#008040'),
(48, 'Bahasa Inggris', '#ff0000');

-- --------------------------------------------------------

--
-- Table structure for table `nilaiekskul`
--

CREATE TABLE `nilaiekskul` (
  `id_nilaiekskul` int(5) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `id_jenis_kls_tambahan` int(5) NOT NULL,
  `nilai_ekskul` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_akhir`
--

CREATE TABLE `nilai_akhir` (
  `id_nilai_akhir` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_kelas_reguler_berjalan` int(10) NOT NULL,
  `nilai_akhir` int(3) NOT NULL,
  `total_nilai_akhir` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_siswa`
--

CREATE TABLE `nilai_siswa` (
  `id_nilai_siswa` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `kategori_nilai_id` int(11) NOT NULL,
  `jenis_na_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `Nilai_siswa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_siswa`
--

INSERT INTO `nilai_siswa` (`id_nilai_siswa`, `nisn`, `kategori_nilai_id`, `jenis_na_id`, `mapel_id`, `Nilai_siswa`) VALUES
(1, '1234567816', 3, 2, 25, 60),
(2, '1477', 3, 2, 25, 70),
(3, '5001', 3, 2, 25, 65),
(4, '5002', 3, 2, 25, 55),
(6, '7001', 3, 2, 25, 75),
(7, '8001', 3, 2, 25, 50),
(8, '1234567816', 2, 2, 25, 88),
(9, '1477', 2, 2, 25, 70),
(10, '5001', 2, 2, 25, 64),
(11, '5002', 2, 2, 25, 58),
(12, '6001', 2, 2, 25, 89);

-- --------------------------------------------------------

--
-- Table structure for table `orangtua_wali`
--

CREATE TABLE `orangtua_wali` (
  `id_orangtua` int(4) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `gelar_depan_ayah` varchar(10) DEFAULT NULL,
  `gelar_belakang_ayah` varchar(10) DEFAULT NULL,
  `tempat_lahir_ayah` varchar(15) NOT NULL,
  `tanggal_lahir_ayah` date DEFAULT NULL,
  `kewarganegaraan_ayah` varchar(30) DEFAULT NULL,
  `agama_ayah` enum('Islam','Kristen','Katholik','Hindu','Budha','Lainnya') NOT NULL,
  `pendidikan_ayah` enum('Tidak Sekolah','Sekolah Dasar','Sekolah Menengah Pertama','Sekolah Menengah Atas','D1','D2','D3','D4','S1','S2','S3') NOT NULL,
  `pekerjaan_ayah` enum('Tidak Bekerja','Nelayan','Petani','Peternak','PNS/ TNI/ POLRI','Karyawan Swasta','Pedagang Kecil','Pedagang Besar','Wiraswasta','Wirausaha','Buruh','Pensiunan') NOT NULL,
  `penghasilan_ayah` enum('Kurang dari Rp. 499.999','Rp. 500.000 sd Rp. 999.999','Rp. 1.000.000 sd Rp. 1.999.999','Rp. 2.000.000 sd Rp. 3.999.999','Rp. 4.000.000 sd Rp. 9.999.999','Lebih dari Rp. 10.000.000','Tidak Ada') NOT NULL,
  `ayah_berkebutuhan_khusus` enum('Tidak','Netra','Rungu','Grahita Ringan','Grahita Sedang','Daksa Ringan','Daksa Sedang','Laras','Wicara','Tuna Ganda','Hiperaktif','Cerdas Istimewa','Kesulitan Belajar','Narkoba','Indigo','Down Syndrome','Autis','Terbelakang','Bencana Alam/ Sosial','Tidak Mampu Ekonomi','Lainnya') DEFAULT NULL,
  `no_telepon_hp_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `gelar_depan_ibu` varchar(10) DEFAULT NULL,
  `gelar_belakang_ibu` varchar(10) DEFAULT NULL,
  `tempat_lahir_ibu` varchar(15) NOT NULL,
  `tanggal_lahir_ibu` date DEFAULT NULL,
  `kewarganegaraan_ibu` varchar(30) DEFAULT NULL,
  `agama_ibu` enum('Islam','Kristen','Katholik','Hindu','Budha','Lainnya') NOT NULL,
  `pendidikan_ibu` enum('Tidak Sekolah','Sekolah Dasar','Sekolah Menengah Pertama','Sekolah Menengah Atas','D1','D2','D3','D4','SI','S2','S3') NOT NULL,
  `pekerjaan_ibu` enum('Tidak Bekerja','Nelayan','Petani','Peternak','PNS/ TNI/ POLRI','Karyawan Swasta','Pedagang Kecil','Pedagang Besar','Wiraswasta','Wirausaha','Buruh','Pensiunan') NOT NULL,
  `penghasilan_ibu` enum('Kurang dari Rp. 499.999','Rp. 500.000 sd Rp. 999.999','Rp. 1.000.000 sd Rp. 1.999.999','Rp. 2.000.000 sd Rp. 3.999.999','Rp. 4.000.000 sd Rp. 9.999.999','Lebih dari Rp. 10.000.000','Tidak Ada') NOT NULL,
  `ibu_berkebutuhan_khusus` enum('Tidak','Netra','Rungu','Grahita Ringan','Grahita Sedang','Daksa Ringan','Daksa Sedang','Laras','Wicara','Tuna Ganda','Hiperaktif','Cerdas Istimewa','Bakat Istimewa','Kesulitan Belajar','Narkoba','Indigo','Down Syndrome','Autis','Terbelakang','Bencana Alam/ Sosial','Tidak Mampu Ekonomi','Lainnya') DEFAULT NULL,
  `nomor_telepon_ibu` varchar(15) NOT NULL,
  `nama_wali` varchar(30) DEFAULT NULL,
  `tempat_lahir_wali` varchar(15) DEFAULT NULL,
  `tanggal_lahir_wali` date DEFAULT NULL,
  `pendidikan_wali` enum('Tidak Sekola','Sekolah Dasar','Sekolah Menengah Pertama','Sekolah Menengah Atas','D1','D2','D3','D4','S1','S2','S3') DEFAULT NULL,
  `kewarganegaraan_wali` varchar(30) DEFAULT NULL,
  `agama_wali` enum('Islam','Kristen','Katholik','Hindu','Budha','Lainnya') DEFAULT NULL,
  `pekerjaan_wali` enum('Tidak Bekerja','Nelayan','Petani','Peternak','PNS/ TNI/ POLRI','Karyawan Swasta','Pedagang Kecil','Pedagang Besar','Wiraswasta','Wirausaha','Buruh','Pensiunan') DEFAULT NULL,
  `penghasilan_wali` enum('Kurang dari Rp. 499.999','Rp. 500.000 sd Rp. 999.999','Rp. 1.000.000 sd Rp. 1.999.999','Rp. 2.000.000 sd 3.999.999','Rp. 4.000.000 sd Rp. 9.999.999','Lebih dari Rp 10.000.000','Tidak Ada') DEFAULT NULL,
  `alamat_wali` varchar(150) NOT NULL,
  `no_telepon_hp_wali` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orangtua_wali`
--

INSERT INTO `orangtua_wali` (`id_orangtua`, `nama_ayah`, `gelar_depan_ayah`, `gelar_belakang_ayah`, `tempat_lahir_ayah`, `tanggal_lahir_ayah`, `kewarganegaraan_ayah`, `agama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `ayah_berkebutuhan_khusus`, `no_telepon_hp_ayah`, `nama_ibu`, `gelar_depan_ibu`, `gelar_belakang_ibu`, `tempat_lahir_ibu`, `tanggal_lahir_ibu`, `kewarganegaraan_ibu`, `agama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `ibu_berkebutuhan_khusus`, `nomor_telepon_ibu`, `nama_wali`, `tempat_lahir_wali`, `tanggal_lahir_wali`, `pendidikan_wali`, `kewarganegaraan_wali`, `agama_wali`, `pekerjaan_wali`, `penghasilan_wali`, `alamat_wali`, `no_telepon_hp_wali`) VALUES
(1, 'hehe', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(2, 'taufik', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(3, 'gunawan', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(4, 'rudi', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(5, 'budiarto', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(6, 'ridwan', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(7, 'pranata', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(8, 'sulayakin', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(9, 'iqbal', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(10, 'hendrawan', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '0', '', '', '0000-00-00', '', '', '', '', '', '', '0'),
(11, 'dodi', '<div style', '<div style', '<div style=', '0000-00-00', '<div style=', 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', 'Tidak', '<div style=', '<div style=', '<div style', '<div style', '<div style=', '0000-00-00', '<div style=', 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', 'Tidak', '<div style=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(12, 'lutfi', '<div style', '<div style', '<div style=', '0000-00-00', '<div style=', 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', 'Tidak', '<div style=', '<div style=', '<div style', '<div style', '<div style=', '0000-00-00', '<div style=', 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', 'Tidak', '<div style=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(13, 'ridwan kamil', 'doktor', '', 'bumiayu', '0000-00-00', '', 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', 'Tidak', '087878909', 'rosita', '', '', 'jogja', '2018-01-25', '', 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', 'Tidak', '087898', '', '', '0000-00-00', 'D1', '', 'Islam', 'Peternak', 'Kurang dari Rp. 499.999', '', ''),
(14, 'revi bapak', 'doktor', '', 'sragen', '2018-01-10', 'indonesia', 'Kristen', 'D1', 'Pedagang Besar', 'Rp. 500.000 sd Rp. 999.999', 'Tidak', '08789098789', '', '', '', '', '0000-00-00', '', 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', 'Tidak', '', '', '', '0000-00-00', 'D1', '', 'Islam', 'Peternak', 'Kurang dari Rp. 499.999', '', ''),
(15, 'rudi hartanto', '', '', '', '0000-00-00', '', 'Islam', 'D2', 'PNS/ TNI/ POLRI', 'Rp. 500.000 sd Rp. 999.999', 'Tidak', '08122342527', 'Melly', '', '', '', '0000-00-00', '', 'Islam', 'Sekolah Menengah Atas', 'Pedagang Kecil', 'Rp. 500.000 sd Rp. 999.999', 'Tidak', '0876789', '', '', '0000-00-00', 'Sekolah Menengah Pertama', '', 'Islam', 'Wirausaha', 'Kurang dari Rp. 499.999', '', ''),
(16, 'reyhan ', '', '', 'bumiayu', '2018-02-20', '', 'Islam', 'D3', 'PNS/ TNI/ POLRI', 'Rp. 500.000 sd Rp. 999.999', 'Tidak', '', 'wendah', '', '', 'solo', '2018-02-15', '', 'Islam', 'D1', 'Tidak Bekerja', 'Tidak Ada', 'Tidak', '', '', '', '0000-00-00', 'D1', '', 'Islam', 'Karyawan Swasta', 'Rp. 1.000.000 sd Rp. 1.999.999', '', ''),
(17, 'dendi', '', '', 'tangerang', '2018-02-22', '', 'Islam', 'S1', 'Wiraswasta', 'Rp. 2.000.000 sd Rp. 3.999.999', 'Tidak', '', 'bella', '', '', '', '0000-00-00', '', 'Islam', 'D2', 'PNS/ TNI/ POLRI', 'Rp. 500.000 sd Rp. 999.999', 'Tidak', '', 'wahyu', '', '0000-00-00', 'D2', '', 'Islam', 'Pedagang Kecil', '', '', ''),
(18, 'Jason Pearce', '', '', 'SRAGEN', '0000-00-00', '', 'Kristen', 'S3', 'PNS/ TNI/ POLRI', 'Rp. 2.000.000 sd Rp. 3.999.999', 'Tidak', '08789098789', 'Resita', '', '', 'BUMIAYU', '2018-02-07', '', 'Kristen', 'D2', 'PNS/ TNI/ POLRI', 'Rp. 1.000.000 sd Rp. 1.999.999', 'Indigo', '080989999', 'Siregar', '', '0000-00-00', 'Sekolah Menengah Atas', '', 'Islam', 'Wirausaha', 'Rp. 1.000.000 sd Rp. 1.999.999', 'JAKAL KM 12,5', ''),
(19, 'siregar', '', '', '', '0000-00-00', '', 'Kristen', 'Sekolah Menengah Pertama', 'PNS/ TNI/ POLRI', 'Rp. 1.000.000 sd Rp. 1.999.999', 'Tidak', '', 'merry', '', '', '', '0000-00-00', '', 'Islam', 'D3', 'Pedagang Kecil', 'Rp. 1.000.000 sd Rp. 1.999.999', 'Tidak', '', 'reymond', '', '0000-00-00', 'S1', '', 'Islam', 'Karyawan Swasta', '', '', ''),
(20, 'yudi', '', '', 'Bumiayu', '0000-00-00', '', 'Islam', 'S1', 'PNS/ TNI/ POLRI', 'Rp. 4.000.000 sd Rp. 9.999.999', NULL, '08789098789', 'Wezi', '', '', 'Solo', '0000-00-00', '', 'Islam', 'D3', 'Karyawan Swasta', 'Rp. 2.000.000 sd Rp. 3.999.999', NULL, '08888767988', 'Rendra', '', '0000-00-00', NULL, '', NULL, NULL, NULL, 'JAKAL KM 19', '08187654321'),
(21, 'Darmawangsa', '', '', 'Bumiayu', '2018-02-22', '', 'Islam', 'D3', 'PNS/ TNI/ POLRI', 'Rp. 4.000.000 sd Rp. 9.999.999', NULL, '09876536678', 'Qiqi', '', '', 'sragen', '0000-00-00', '', 'Budha', 'D3', 'Pedagang Besar', 'Rp. 1.000.000 sd Rp. 1.999.999', NULL, '0987675443', 'Noer', '', '0000-00-00', NULL, '', NULL, NULL, NULL, 'Bantul', '098776544'),
(22, 'dwi priyatno', NULL, NULL, 'balikpapan', NULL, NULL, 'Islam', 'S1', 'Karyawan Swasta', 'Lebih dari Rp. 10.000.000', 'Tidak', '00', 'wien', NULL, NULL, 'nunukan', NULL, NULL, 'Islam', 'D3', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'j', 'k'),
(23, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(24, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(25, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(26, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(27, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(28, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(29, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(30, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(31, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(32, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(33, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(34, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(35, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(36, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(37, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(38, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(39, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(40, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(41, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(42, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(43, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(44, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(45, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(46, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(47, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(48, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(49, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(50, 'ayah gita moli', NULL, NULL, 'yogyakarta', NULL, NULL, 'Islam', 'S1', 'Wirausaha', 'Lebih dari Rp. 10.000.000', NULL, '08', 'ibu gita moli', NULL, NULL, 'yogyakarta', NULL, NULL, 'Islam', 'D4', 'Wirausaha', 'Rp. 2.000.000 sd Rp. 3.999.999', NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'as', '12'),
(51, 'ayah gita moli', '', '', 'yogyakarta', NULL, 'indonesia', 'Islam', 'S1', 'Wirausaha', 'Lebih dari Rp. 10.000.000', 'Tidak', '08', 'ibu gita moli', '', NULL, 'yogyakarta', '0000-00-00', '', 'Islam', 'D4', 'Wirausaha', 'Rp. 2.000.000 sd Rp. 3.999.999', 'Tidak', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(52, 'ayah gita moli', '', '', 'yogyakarta', NULL, 'indonesia', 'Islam', 'S1', 'Wirausaha', 'Lebih dari Rp. 10.000.000', 'Tidak', '08', 'ibu gita moli', '', NULL, 'yogyakarta', '0000-00-00', '', 'Islam', 'D4', 'Wirausaha', 'Rp. 2.000.000 sd Rp. 3.999.999', 'Tidak', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(53, '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', 'wali', '', NULL, '', '', 'Islam', 'Tidak Bekerja', NULL, '', ''),
(54, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(55, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(56, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(57, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(58, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(59, 'ayah gita moli', '', '', 'yogyakarta', NULL, '', 'Islam', 'S1', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', 'Tidak', '08121212122', 'ibu gita moli', '', NULL, 'jakarta', '1982-08-05', '', 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', 'Tidak', '0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(60, 'Orang Tua Siswa Baru', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', '', NULL, NULL, '', NULL, NULL, 'Islam', 'Tidak Sekolah', 'Tidak Bekerja', 'Kurang dari Rp. 499.999', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `passing_grade`
--

CREATE TABLE `passing_grade` (
  `id_grade` int(10) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `kategori` enum('Dalam Kota','Luar Kota') NOT NULL,
  `nilai` float NOT NULL,
  `tgl_berlaku` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passing_grade`
--

INSERT INTO `passing_grade` (`id_grade`, `id_tahun_ajaran`, `kategori`, `nilai`, `tgl_berlaku`) VALUES
(1, 1, 'Luar Kota', 280, '2017-08-11'),
(2, 2, 'Dalam Kota', 100, '2017-08-22'),
(4, 2, 'Dalam Kota', 280.3, '2017-08-09'),
(5, 2, 'Dalam Kota', 190, '2017-08-20'),
(7, 2, 'Dalam Kota', 288.5, '2017-09-02'),
(8, 2, 'Luar Kota', 250.8, '2017-09-05'),
(9, 2, 'Dalam Kota', 200.9, '2017-09-27'),
(10, 2, 'Luar Kota', 280, '2017-11-06'),
(11, 3, 'Dalam Kota', 230.9, '2017-11-26'),
(12, 3, 'Luar Kota', 250.9, '2017-11-29'),
(13, 1, 'Dalam Kota', 80, '2018-03-03'),
(14, 2, 'Luar Kota', 80, '2018-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `NIP` varchar(20) NOT NULL,
  `nuptk` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No_SK` varchar(20) NOT NULL,
  `Jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `Golongan` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `kompetensi` varchar(10) NOT NULL,
  `Agama` enum('Islam','Kristen','Khatolik','Budha','Hindu','Lainnya') NOT NULL,
  `tempatlahir` varchar(255) NOT NULL,
  `TTL` date NOT NULL,
  `kode_guru` int(3) NOT NULL,
  `foto` text NOT NULL,
  `TMT_capeg` date NOT NULL,
  `Pendidikan` enum('D1','D2','D3','D4','S1','S2','S3') NOT NULL,
  `Status` enum('Pegawai','Guru','','') NOT NULL,
  `Status_pensiun` varchar(255) NOT NULL,
  `nama_panggilan` varchar(255) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `matapelajaran` varchar(255) DEFAULT NULL,
  `namaayah` varchar(50) DEFAULT NULL,
  `tempatlahirayah` varchar(255) DEFAULT NULL,
  `tanggallahirayah` date DEFAULT NULL,
  `agamaayah` enum('Islam','Kristen','Katholik','Budha','Hindu','Lainnya') DEFAULT NULL,
  `nomorayah` varchar(20) DEFAULT NULL,
  `pekerjaanayah` varchar(255) DEFAULT NULL,
  `alamatayah` text DEFAULT NULL,
  `namaibu` varchar(50) DEFAULT NULL,
  `tempatlahiribu` varchar(255) DEFAULT NULL,
  `tanggallahiribu` date DEFAULT NULL,
  `agamaibu` date DEFAULT NULL,
  `nomoribu` varchar(20) DEFAULT NULL,
  `pekerjaanibu` varchar(255) DEFAULT NULL,
  `alamatibu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`NIP`, `nuptk`, `Nama`, `No_SK`, `Jenis_kelamin`, `Golongan`, `alamat`, `kontak`, `kompetensi`, `Agama`, `tempatlahir`, `TTL`, `kode_guru`, `foto`, `TMT_capeg`, `Pendidikan`, `Status`, `Status_pensiun`, `nama_panggilan`, `pangkat`, `matapelajaran`, `namaayah`, `tempatlahirayah`, `tanggallahirayah`, `agamaayah`, `nomorayah`, `pekerjaanayah`, `alamatayah`, `namaibu`, `tempatlahiribu`, `tanggallahiribu`, `agamaibu`, `nomoribu`, `pekerjaanibu`, `alamatibu`) VALUES
('110222337', '', 'Rohmatullah Alamin', '89239129399', '', 'III/A', 'Jalan gajah mada', '08524511555', '', 'Islam', '', '1956-01-30', 9998, '', '2019-01-30', 'D3', 'Guru', 'pensiun', 'Roh', 'Guru Muda', 'Bahasa Indonesia', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('1111', '923842934823498', 'Sumbawa Mukaido', '218371238', '', 'II/A', 'jakdas', '08080002020', '', 'Islam', 'Padang', '1969-11-09', 1, '', '2017-11-10', 'D3', '', '', 'Sum', 'Guru Madya', 'Bahasa Inggris', 'Rahmat ', 'kalimantan', '2018-02-07', 'Islam', '08656536373647', 'Petani', 'Jalan Kaliurang', 'harmini', 'sleman', '2018-02-07', '0000-00-00', '92938123812', 'Ibu Rumah Tangga', 'Jalan Lintas Melawai'),
('11111', '', 'Ini Kurikulum', '123123123', '', 'IV/A', 'Jl. Kaliurang 14,5', '085244424242', '', 'Islam', '', '1967-12-21', 9, 'potrait99.jpg', '2017-12-08', 'S1', 'Guru', '', 'Kurikulum', 'Guru Madya', 'Penjaskes', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('111222333', '', 'Rohmatullah', '89239129399', '', 'III/A', 'Jalan gajah mada', '08524511555', '', 'Islam', '', '1950-01-30', 999, '', '2019-01-30', 'D3', 'Guru', 'pensiun', 'Roh', 'Guru Muda', 'Bahasa Inggris', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('1221129', '', 'Rusida ', '9888988899', '', 'IV/A', 'asdasd', '12312312', '', 'Islam', '', '1959-01-30', 6559, '', '2018-01-30', 'S3', 'Guru', '', 'Rus', 'Guru Muda', 'IPA', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('12222', '21312222', 'Munawaroh', '1231231', '', 'III/B', 'Jalan Oevang Oeray', '1213123123', '', 'Islam', 'Kalimantan', '1959-12-18', 2, '11.jpg', '1993-09-10', 'S1', '', 'pensiun', 'Muna', 'Guru Madya', 'Bahasa Indonesia', 'Aayah', 'kalimantan', '1951-02-14', 'Kristen', '085726262626', 'Petani aja', 'Jalan Lintas Melawi', 'ibu goro', 'sleman', '2018-02-03', '0000-00-00', '085724242424', 'Aapa aja', 'Jalan Kaliurang'),
('123', '', 'ACAH RIANTO, S,Pd', '123123', '', 'III/B', '32131', '21323', '', '', 'Sintang', '1987-11-11', 1231231, '2.jpg', '2017-12-02', 'D3', 'Guru', '', '123123', 'Guru  Muda', 'Matematika', 'asdasd', 'asdasd', '2018-01-09', 'Islam', '21312', '123aseqw', 'asdasd', '13213', 'asdsda', '2018-01-17', '0000-00-00', '085724242424', 'buruh', 'asdasdasd'),
('1231233412', '123123736473', 'Ridho Akbar Dermawan', '18237238137837', '', 'IV/A', 'Jalan Lintas Utara', '092837823', '', 'Islam', 'Sintang', '1989-11-09', 887788, '', '2017-11-09', 'S2', 'Guru', '', 'Ridho', 'Guru Madya', 'SKI', 'Ridho', 'Sintang', '2017-11-09', 'Islam', '082323728378', 'BUMN', 'Jalan Kaliurang', 'Ida', 'Kalimantan', '2017-11-09', '0000-00-00', '129831238', 'Ibu Rumah Tangga', 'Jalan Kaliurang'),
('12312334121', '12312373647378', 'Ridho Akbar Mulawaraman', '18237238137837', '', 'IV/A', 'Jalan Lintas Utara', '092837823', '', 'Islam', 'Sintang', '1958-11-01', 88778899, '', '2017-11-09', 'S2', 'Guru', 'pensiun', 'Ridho', 'Guru Madya', 'SKI', 'Ridho', 'Sintang', '2017-11-09', 'Islam', '082323728378', 'BUMN', 'Jalan Kaliurang', 'Ida', 'Kalimantan', '2017-11-09', '0000-00-00', '129831238', 'Ibu Rumah Tangga', 'Jalan Kaliurang'),
('12345', '', 'akmal joshua', '12312 1763172 18923 ', '', 'III/A', 'jl kaliurang km 7,8 sinduharjo', '085726241111', '', 'Islam', 'sleman', '1958-01-02', 2, '', '2012-06-01', 'S1', 'Guru', 'pensiun', 'akmal', 'pranata madya', 'IPA', 'paijo', 'sleman', '1958-01-01', 'Islam', '085726262626', 'Petani', 'sleman', 'harmini', 'sleman', '1965-01-05', '0000-00-00', '085724242424', 'buruh', 'sleman'),
('123456', '', 'paijo', 'A5576767', '', 'IIIB', 'jl kaliurang', '085723232323', '', 'Islam', '', '1994-12-05', 3, '', '2004-12-01', 'S1', 'Guru', '', 'paijo', 'Guru Muda', 'IPA', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('12523001', '', 'Joko ', '111', '', '1', '', '', '', 'Islam', '', '1980-08-28', 0, '', '0000-00-00', 'S3', 'Guru', '', 'joko', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13313131', '', 'Muhammad Baharudin', '21982198288121', '', 'II/A', 'Jalan Kaliurang 14,5', '08080002020', '', 'Islam', '', '1995-04-04', 15, 'potrait.jpg', '2017-04-04', 'D3', 'Guru', '', 'Udin', 'Pranata Muda', 'Kesenian', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('13523000', '0', 'gery', '0', '', '1', 'w', 'k', 'k', 'Islam', 'jkt', '2018-08-02', 2, '', '2018-08-16', 'D3', 'Guru', 'blm', 'geri', 'as', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13523062', '', 'Nadya Indi Rahesti', '567890', '', 'jajaja', 'jakal', '08292929', 'jajaja', 'Islam', '', '2017-12-13', 1, '4.jpg', '2017-12-05', 'S1', 'Pegawai', 'jajajaja', 'Bu Aya', 'jajajaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13523069', '', 'Drs. Dodi Ahmad Shahrudin', '12831231', '', 'III/A', 'asdasd asd asdasd', '12323', '', 'Kristen', '', '1967-12-22', 11, '3.jpg', '2017-11-22', '', 'Guru', '', 'Dodi', 'Guru  Muda', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('13523096', '123', 'Mia Puspa Pertiwi', '567891', 'Perempuan', 'uauauaua', 'jakal', '789789', 'uuuuu', 'Islam', 'jogja', '0000-00-00', 2, 'brigitte-tohm-351795-unsplash.jpg', '0000-00-00', 'S1', 'Guru', '', 'Bu Mia', 'yyyyy', NULL, 'AA', 'jogja', '0000-00-00', 'Islam', '98765', 'hj', 'kjh', 'dgj', 'jhn', '0000-00-00', '0000-00-00', '680', 'hkn', 'jogja'),
('13523099', '', 'Annisa Dian Pertiwi', '67890', '', 'uauaua', 'jakal', '896886', 'jaja', 'Islam', '', '2017-12-19', 3, '', '2017-12-06', 'S1', 'Guru', 'uauaua', 'Bu Dian', 'uiaiaia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13523111', '', 'Anggraeni Dias Saputri', '6276312371', '', 'IV/B', 'Jl. Bibis Raya, Tamantirto, Kasihan, Bantul, Daerah Istimewa Yogyakarta 55183, Indonesia', '0897464736', '', 'Kristen', '', '1958-09-07', 5, 'potrait2.jpg', '2018-02-08', 'D3', 'Guru', 'pensiun', 'anggrek', 'Guru  Muda', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13523120', '', 'Ridwan Mulawarman', '988736746847', '', 'II/A', 'JLn. MT.Haryono', '12313123123', '', 'Kristen', 'Padang', '1975-12-13', 23, '4.jpg', '2000-10-14', '', '', '', 'Ridwan', 'Guru Muda', 'IPA', 'Rahmat ', 'Yogyakarta', '1951-12-18', 'Kristen', '08656536373647', 'Petani', 'Jalan Kaliurang km 14.5', 'Sutinah', 'Solo', '1955-12-15', '0000-00-00', '0862532632635', 'Ibu Rumah Tangga', 'Jalan Kaliurang km 14.5'),
('13523134', '', 'Luthfi Anggy Kurniawan', '887878', '', 'III/A', 'jksdhaksjdas das das das', '123123', '', 'Hindu', '', '1987-09-01', 55, '3.jpg', '2017-09-16', 'D3', 'Guru', '', 'Luthfi', '', '', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('13523135', '123123123', 'Dr. Aulia Ahmad Urfan, S.Pd., M.Pd.', '12345678', '', 'IV/A', 'Jl. Stadion, Maguwoharjo, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281, Indonesia', '087646374847', '', 'Islam', 'Kalimantan', '1976-10-05', 1, '41.jpg', '1998-10-05', 'S3', 'Guru', '', 'Urfan', 'Penata Muda', 'Matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1352313599', '', 'MoMon', '123123', '', 'II/A', 'kljijoij', '123123', '', 'Hindu', '', '1995-09-08', 98, '3.jpg', '2017-09-09', 'S1', 'Guru', '', '12312', '', '', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('13523136', '', 'Drs. Fikri Abdillah Fakhrudin', '726373664', '', 'II/A', 'Jalan Jalan', '09383938', '', 'Islam', '', '1995-11-15', 33, '4.jpg', '2017-11-02', 'S1', 'Guru', '', 'Fikri', '', '', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('13523138', '', 'Alfandya', '1238273', '', 'III/A', 'ajsdj asdasd ', '8996', '', 'Islam', '', '1967-07-14', 223, '1.jpg', '2017-10-09', 'D3', 'Guru', '', 'alfan', 'Guru Madya', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('13523139', '', 'Aulia Ahmad Urfan, S.Ag', '12839123', '', 'III/A', 'Jalan Khatulistiwa no.4', '12323', '', '', '', '1987-10-26', 123123, '22.jpg', '2018-02-04', '', '', '', 'Brai', 'Penata Muda', 'IPS', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('135231399', '', 'Cak Lontong', '123123123', '', 'IV/A', 'Jalan Kaliurang', '123132323', '', 'Kristen', '', '1986-02-27', 87, '', '2018-01-27', 'S2', 'Guru', '', 'Lontong', '', '', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('13523143', '', 'Novendra Yoga Saputra 555', '193281293', '', 'III/A', 'jasdkajda sdasd', '9829389', '', '', '', '1977-09-07', 34, 'potrait99.jpg', '2017-09-18', 'S1', 'Guru', '', 'Noven', '', '', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('13523179', '', 'Berlian Amalia Burhan', '78900', '', 'uauaua', 'jakalll', '7899999', 'yauaua', 'Islam', '', '2017-12-05', 4, '', '2017-12-12', 'S1', 'Guru', 'hahahaha', 'Bu Berli', 'uauauaua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13523267', '', 'Doni Putra', '45', '', '1', 'as', 'as', 'as', 'Kristen', '', '1990-08-09', 7, '', '0000-00-00', 'S2', 'Guru', '', 'Doni', 'GURU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13523555', '', 'iga', '1717', '', '2a', 'a', 's', 'd', 'Kristen', 's', '2018-08-30', 2, '', '2018-08-07', 'D2', 'Guru', 'blm', 'iga', 'guru muda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('14523001', '0', 'Kepsek', '0', '', '1', 'jljl', '0', '0', 'Islam', 'yk', '1980-08-16', 4, '', '2012-08-15', 'S2', 'Guru', 'blm', 'pak kepsek', 'kepsek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('14523002', '1', 'pembimbing', '2', '', '2', '', '2', '1', 'Budha', 'yk', '1992-08-10', 3, '', '2018-08-10', 'D3', 'Guru', 'blm', 'pemb', 'pembimbing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('14523267', '', 'Nadine Deskananda Sajiatmoko', '1004', '', '4a', 'jakal', '0812', 'asd', 'Islam', '', '1996-12-03', 5, '', '2018-08-28', 'D3', 'Guru', 'belum pensiun', 'Nadine', 'GURU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('145232677', '0', 'Super Admin Nadine', '1005', 'Perempuan', '1', 'jakal', '0', '0', 'Islam', 'smd', '1996-12-03', 7, 'no-profile-picture-icon-female-3.jpg', '2016-08-24', 'S1', '', '', 'super ', 'super admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('14523271', '', 'Irna Rafidah', '12', '', '4a', '', '', '', '', '', '0000-00-00', 0, '', '0000-00-00', '', 'Guru', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('14523299', '0', 'pegawai', '0', '', '2`', 'jljl', '0', '0', 'Kristen', 'jkt', '1990-08-01', 100, '', '2018-08-08', 'D2', 'Pegawai', 'blm', 'peg', 'peg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('333444555', '', 'Mahmud Mudmud', '88773566475', '', 'IV/A', 'Jalan Kaliurang', '08656563636', '', 'Budha', '', '2017-01-30', 33, '', '2017-10-30', 'S2', '', '', 'Mudmud', 'Guru Madya', 'IPA', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('566656', '', 'Awas Ada Sule', '898989', '', 'II/A', 'sajdiasjdiasjdiasjdiajsdij', '098393489', '', 'Islam', 'Sintang', '2018-01-04', 7665, '', '2018-01-04', 'S2', 'Guru', '', 'sule', 'Guru Muda', 'Penjaskes', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('676888999', '', 'Rodeo Kopet Kopet Kopet', '9888988899', '', 'IV/A', 'dfsldfskdjfldkfjlsdf', '12312312', '', 'Islam', '', '2018-01-30', 6559, '', '2018-01-30', 'S3', 'Guru', '', 'Rodeo', 'Guru Muda', 'IPA', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('777888666', '', 'RIDHO HUHU', '28282828', '', 'III/C', 'djaisdjaisdjias', '99988899', '', 'Islam', '', '2018-10-10', 987, '', '2018-10-10', 'S3', '', '', 'HHHH', 'Guru Muda', 'B.indonesia', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('87283282', '', 'Asep Show', '12732312321', '', 'II/A', 'Jalan Kaliurang Km 10', '0862262626', '', 'Budha', 'Yogya', '2017-12-06', 777, '', '2017-12-06', 'S2', '', '', 'TPI', 'Guru Muda', 'Bahasa Indonesia', 'Sahroni', 'Klaten', '2017-12-06', 'Budha', '087267262', 'Guru', 'Jalan Kaliurang km 11', 'Rosida', 'Kalimantan', '2017-12-06', '0000-00-00', '089898889', 'Petani', 'Jalan MT Haryono'),
('888777', '', 'Ridho AAAAAA', '888877', '', 'III/A', 'sdaskjdasdkasdjaksdkj', '0293012930', '', 'Islam', '', '2018-01-10', 99999, '', '2018-01-10', 'S3', '', '', 'Ridho', 'Guru Madya', 'IPS', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('989234', '', 'Amanullah Amany', '823773837', '', 'II/A', 'Jalan Lintas melawi', '83747474847', '', 'Budha', '', '2017-09-20', 23, '2.jpg', '2017-10-21', 'D3', 'Guru', '', 'Aman', '', '', '', '', '0000-00-00', 'Islam', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
('9999922', '', 'Muttaqin Gilll', '9999878', '', 'III/A', 'ljuhkgiugk.', '898989', '', 'Kristen', 'Sintang', '2017-12-01', 9667, 'potrait1.jpg', '2017-12-01', 'D3', 'Guru', '', 'taqin', 'Guru Muda', 'Matematika', 'Goro', 'kalimantan', '2017-12-28', 'Budha', '92831923891', 'Petani aja', 'asdas  asdas da s', 'ibu goro', 'Jawa', '2017-12-15', '0000-00-00', '081237123', 'Aapa aja', 'asdasdasdasdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id_jenis_pelanggaran` int(20) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_kejadian` date NOT NULL,
  `bentuk_pelanggaran` varchar(50) NOT NULL,
  `sanksi` varchar(50) NOT NULL,
  `no_pasal` int(10) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `poin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`id_jenis_pelanggaran`, `nisn`, `tgl_kejadian`, `bentuk_pelanggaran`, `sanksi`, `no_pasal`, `kategori`, `poin`) VALUES
(1, '1234568090', '2018-10-19', 'Atribut tidak lengkap', 'cabut rumput', 4, 'Pelanggaran Ringan', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing`
--

CREATE TABLE `pembimbing` (
  `id_pembimbing` int(5) NOT NULL,
  `NIP` int(10) DEFAULT NULL,
  `nama_pembimbing` varchar(45) NOT NULL,
  `jabatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembimbing`
--

INSERT INTO `pembimbing` (`id_pembimbing`, `NIP`, `nama_pembimbing`, `jabatan`) VALUES
(1, 14523267, 'Nadine Deskananda Sajiatmoko', 'Pembimbing'),
(2, 14523200, 'Dina', 'pembimbing');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar_daftarulang_kenaikan`
--

CREATE TABLE `pendaftar_daftarulang_kenaikan` (
  `id_daftar_ulang_kenaikan` int(10) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `surat_pernyataan` tinyint(1) DEFAULT NULL,
  `rapor` tinyint(1) DEFAULT NULL,
  `formulir_pendataan` tinyint(1) DEFAULT NULL,
  `tanda_pembayaran` tinyint(1) DEFAULT NULL,
  `berkas_1` tinyint(1) DEFAULT NULL,
  `berkas_2` tinyint(1) DEFAULT NULL,
  `berkas_3` tinyint(1) DEFAULT NULL,
  `berkas_4` tinyint(1) DEFAULT NULL,
  `berkas_5` tinyint(1) DEFAULT NULL,
  `terverifikasi` enum('Terverifikasi','Belum','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pendaftar_daftarulang_kenaikan`
--

INSERT INTO `pendaftar_daftarulang_kenaikan` (`id_daftar_ulang_kenaikan`, `id_tahun_ajaran`, `nisn`, `surat_pernyataan`, `rapor`, `formulir_pendataan`, `tanda_pembayaran`, `berkas_1`, `berkas_2`, `berkas_3`, `berkas_4`, `berkas_5`, `terverifikasi`) VALUES
(12, 1, '7001', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terverifikasi'),
(13, 1, '6001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum'),
(14, 2, '1234567816', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum'),
(15, 3, '55555550', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum'),
(16, 3, '1234567816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar_daftarulang_ppdb`
--

CREATE TABLE `pendaftar_daftarulang_ppdb` (
  `nomor_pendaftar` int(5) DEFAULT NULL,
  `nisn` varchar(10) NOT NULL,
  `surat_pernyataan` tinyint(1) DEFAULT NULL,
  `form_pendataan` tinyint(1) DEFAULT NULL,
  `tanda_pembayaran` tinyint(1) DEFAULT NULL,
  `berkas_1` tinyint(1) DEFAULT NULL,
  `berkas_2` tinyint(1) DEFAULT NULL,
  `berkas_3` tinyint(1) DEFAULT NULL,
  `berkas_4` tinyint(1) DEFAULT NULL,
  `berkas_5` tinyint(1) DEFAULT NULL,
  `terverifikasi` enum('Terverifikasi','Belum','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftar_daftarulang_ppdb`
--

INSERT INTO `pendaftar_daftarulang_ppdb` (`nomor_pendaftar`, `nisn`, `surat_pernyataan`, `form_pendataan`, `tanda_pembayaran`, `berkas_1`, `berkas_2`, `berkas_3`, `berkas_4`, `berkas_5`, `terverifikasi`) VALUES
(1000, '8001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terverifikasi');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar_ppdb`
--

CREATE TABLE `pendaftar_ppdb` (
  `nomor_pendaftaran` int(10) DEFAULT NULL,
  `no_usbn` varchar(20) DEFAULT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `nisn_pendaftar` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-Laki') DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `asal_sekolah` varchar(50) DEFAULT NULL,
  `domisili` enum('Dalam Daerah','Luar Daerah') DEFAULT NULL,
  `tahun_lulus` int(4) DEFAULT NULL,
  `nilai_un_ind` float DEFAULT NULL,
  `nilai_un_mat` float DEFAULT NULL,
  `nilai_un_ipa` float DEFAULT NULL,
  `nilai_prestasi` float DEFAULT NULL,
  `nilai_un_nun` float DEFAULT NULL,
  `pilihan_sekolah_1` varchar(50) DEFAULT NULL,
  `pilihan_sekolah_2` varchar(50) DEFAULT NULL,
  `pilihan_sekolah_3` varchar(50) DEFAULT NULL,
  `ujian_1` float DEFAULT NULL,
  `ujian_2` float DEFAULT NULL,
  `ujian_3` float DEFAULT NULL,
  `ujian_4` float DEFAULT NULL,
  `ujian_5` float DEFAULT NULL,
  `ujian_6` float DEFAULT NULL,
  `ujian_7` float DEFAULT NULL,
  `ujian_8` float DEFAULT NULL,
  `ujian_9` float DEFAULT NULL,
  `ujian_10` float DEFAULT NULL,
  `total_nilai` float DEFAULT NULL,
  `status_siswa` enum('Diterima','Tidak Diterima','Dicabut','') DEFAULT NULL,
  `fc_rapor` tinyint(1) DEFAULT NULL,
  `fc_ijazah` tinyint(1) DEFAULT NULL,
  `skhun` tinyint(1) DEFAULT NULL,
  `fc_skhun` tinyint(1) DEFAULT NULL,
  `bukti_pengajuan_daftar` tinyint(1) DEFAULT NULL,
  `surat_keterangan_penambah_nilai` tinyint(1) DEFAULT NULL,
  `surat_ket_nisn` tinyint(1) DEFAULT NULL,
  `skck_kepsek` tinyint(1) DEFAULT NULL,
  `fc_akta_lahir` tinyint(1) DEFAULT NULL,
  `fc_kk` tinyint(1) DEFAULT NULL,
  `surat_ket_rt` tinyint(1) DEFAULT NULL,
  `surat_keterangan_napza` tinyint(1) DEFAULT NULL,
  `berkas_1` tinyint(1) DEFAULT NULL,
  `berkas_2` tinyint(1) DEFAULT NULL,
  `berkas_3` tinyint(1) DEFAULT NULL,
  `berkas_4` tinyint(1) DEFAULT NULL,
  `berkas_5` tinyint(1) DEFAULT NULL,
  `terverifikasi` enum('Terverifikasi','Belum','','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pendaftar_ppdb`
--

INSERT INTO `pendaftar_ppdb` (`nomor_pendaftaran`, `no_usbn`, `id_tahun_ajaran`, `nisn_pendaftar`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `asal_sekolah`, `domisili`, `tahun_lulus`, `nilai_un_ind`, `nilai_un_mat`, `nilai_un_ipa`, `nilai_prestasi`, `nilai_un_nun`, `pilihan_sekolah_1`, `pilihan_sekolah_2`, `pilihan_sekolah_3`, `ujian_1`, `ujian_2`, `ujian_3`, `ujian_4`, `ujian_5`, `ujian_6`, `ujian_7`, `ujian_8`, `ujian_9`, `ujian_10`, `total_nilai`, `status_siswa`, `fc_rapor`, `fc_ijazah`, `skhun`, `fc_skhun`, `bukti_pengajuan_daftar`, `surat_keterangan_penambah_nilai`, `surat_ket_nisn`, `skck_kepsek`, `fc_akta_lahir`, `fc_kk`, `surat_ket_rt`, `surat_keterangan_napza`, `berkas_1`, `berkas_2`, `berkas_3`, `berkas_4`, `berkas_5`, `terverifikasi`) VALUES
(NULL, NULL, 3, '55555550', 'pendaftar test', 'Perempuan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 'Diterima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terverifikasi');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_ekstrakurikuler`
--

CREATE TABLE `pengaturan_ekstrakurikuler` (
  `no` varchar(5) NOT NULL,
  `hari` varchar(5) NOT NULL,
  `jam_mulai` varchar(5) NOT NULL,
  `jam_selesai` varchar(5) NOT NULL,
  `jenis_kls_tambahan` varchar(5) NOT NULL,
  `tempat` varchar(5) NOT NULL,
  `pembimbing` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan_ekstrakurikuler`
--

INSERT INTO `pengaturan_ekstrakurikuler` (`no`, `hari`, `jam_mulai`, `jam_selesai`, `jenis_kls_tambahan`, `tempat`, `pembimbing`) VALUES
('on', 'off', 'on', 'on', 'on', 'off', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_hari`
--

CREATE TABLE `pengaturan_hari` (
  `id_pengaturan` int(2) NOT NULL,
  `nama_hari` varchar(30) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `nilai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan_hari`
--

INSERT INTO `pengaturan_hari` (`id_pengaturan`, `nama_hari`, `atribut`, `nilai`) VALUES
(1, 'senin', 'Senin', 1),
(2, 'selasa', 'Selasa', 1),
(3, 'rabu', 'Rabu', 0),
(4, 'kamis', 'Kamis', 0),
(5, 'jumat', 'Jumat', 1),
(6, 'sabtu', 'Sabtu', 1),
(7, 'minggu', 'Minggu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_jadwalpiketguru`
--

CREATE TABLE `pengaturan_jadwalpiketguru` (
  `senin` varchar(5) NOT NULL,
  `selasa` varchar(5) NOT NULL,
  `rabu` varchar(5) NOT NULL,
  `kamis` varchar(5) NOT NULL,
  `jumat` varchar(5) NOT NULL,
  `sabtu` varchar(5) NOT NULL,
  `minggu` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan_jadwalpiketguru`
--

INSERT INTO `pengaturan_jadwalpiketguru` (`senin`, `selasa`, `rabu`, `kamis`, `jumat`, `sabtu`, `minggu`) VALUES
('on', 'off', 'on', 'on', 'off', 'off', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_jadwaltambahan`
--

CREATE TABLE `pengaturan_jadwaltambahan` (
  `no` varchar(5) NOT NULL,
  `tanggal` varchar(5) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `mapel` varchar(5) NOT NULL,
  `guru` varchar(5) NOT NULL,
  `jam_mulai_selesai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan_jadwaltambahan`
--

INSERT INTO `pengaturan_jadwaltambahan` (`no`, `tanggal`, `kelas`, `mapel`, `guru`, `jam_mulai_selesai`) VALUES
('on', 'on', 'on', 'off', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_jammengajar`
--

CREATE TABLE `pengaturan_jammengajar` (
  `no` varchar(5) NOT NULL,
  `nama` varchar(5) NOT NULL,
  `nip` varchar(5) NOT NULL,
  `golongan` varchar(5) NOT NULL,
  `pangkat` varchar(5) NOT NULL,
  `pendidikan` varchar(5) NOT NULL,
  `nama_mapel` varchar(5) NOT NULL,
  `jatah_minim` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan_jammengajar`
--

INSERT INTO `pengaturan_jammengajar` (`no`, `nama`, `nip`, `golongan`, `pangkat`, `pendidikan`, `nama_mapel`, `jatah_minim`) VALUES
('on', 'on', 'off', 'on', 'on', 'off', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_kelola_mapel`
--

CREATE TABLE `pengaturan_kelola_mapel` (
  `no` varchar(5) NOT NULL,
  `nama_mapel` varchar(5) NOT NULL,
  `kkm` varchar(5) NOT NULL,
  `jam_belajar` varchar(5) NOT NULL,
  `jenjang` varchar(5) NOT NULL,
  `total_kelas` varchar(5) NOT NULL,
  `jum_jam_belajar` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan_kelola_mapel`
--

INSERT INTO `pengaturan_kelola_mapel` (`no`, `nama_mapel`, `kkm`, `jam_belajar`, `jenjang`, `total_kelas`, `jum_jam_belajar`) VALUES
('on', 'on', 'off', 'on', 'off', 'on', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_presensi`
--

CREATE TABLE `pengaturan_presensi` (
  `s` varchar(5) NOT NULL,
  `h` varchar(5) NOT NULL,
  `i` varchar(5) NOT NULL,
  `a` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan_presensi`
--

INSERT INTO `pengaturan_presensi` (`s`, `h`, `i`, `a`) VALUES
('off', 'off', 'off', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman_mutasi`
--

CREATE TABLE `pengumuman_mutasi` (
  `id_pengumuman` int(10) NOT NULL,
  `tgl_pengumuman` date NOT NULL,
  `judul_pengumuman` text NOT NULL,
  `file_pengumuman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman_mutasi`
--

INSERT INTO `pengumuman_mutasi` (`id_pengumuman`, `tgl_pengumuman`, `judul_pengumuman`, `file_pengumuman`) VALUES
(9, '2018-02-09', 'nyoba lagi ya', 'assets/distribusi/pengumuman/BAB III.docx'),
(10, '2018-02-14', 'ini sih nyoba aja', 'assets/distribusi/pengumuman/Ketentuan Import Data PPDB Jalur Ujian.pdf'),
(14, '2018-08-22', 'nadine coba', 'assets/distribusi/pengumuman/04testingperangkatlunak-100216001733-phpapp02.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman_ppdb`
--

CREATE TABLE `pengumuman_ppdb` (
  `id_pengumuman_ppdb` int(10) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman_ppdb`
--

INSERT INTO `pengumuman_ppdb` (`id_pengumuman_ppdb`, `judul`, `isi`, `tanggal_berlaku`, `id_tahun_ajaran`) VALUES
(9, 'Pengumuman Penerimaan Peserta Didik Baru Tahun Ajaran 2015/2016', 'Pedoman_KPTA_TF_UII.pdf', '2015-09-07', 3),
(10, 'Pengumuman Daftar Ulang Peserta Didik Baru Tahun Ajaran 2015/2016', '01-Tugas_Mata_Kuliah_Aljabar_Linier_Kelas_D1.pdf', '2017-09-24', 3),
(11, 'Pengumuman Penerimaan Peserta Didik Baru Tahun Ajaran 2016/ 20177', '04-Model_OSI_vs_TCP_IP_(ekstra).pdf', '2017-09-26', 3),
(14, 'Pengumuman Daftar Ulang Peserta Didik Baru Tahun Ajaran 2016/ 2017', '1__Pendahuluan_Anikom.pdf', '2017-10-04', 3),
(16, 'testingaw', '', '2019-02-02', 1),
(18, 'pengumuman jalur ujian', '01-SistemBasisDataTerdistribusi1.pdf', '2018-08-25', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pilih_laporan`
--

CREATE TABLE `pilih_laporan` (
  `id_pilihlap` int(11) NOT NULL,
  `nama_lap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilih_laporan`
--

INSERT INTO `pilih_laporan` (`id_pilihlap`, `nama_lap`) VALUES
(0, 'bulanan');

-- --------------------------------------------------------

--
-- Table structure for table `poin_pelanggaran`
--

CREATE TABLE `poin_pelanggaran` (
  `nisn` varchar(10) NOT NULL,
  `id_jenis_pelanggaran` int(20) NOT NULL,
  `id_poin_pelanggaran` int(20) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `poin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_kls_tambahan`
--

CREATE TABLE `presensi_kls_tambahan` (
  `id_presensikls_tambahan` int(5) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `id_pembimbing` int(5) NOT NULL,
  `id_jadwal_ekskul` int(5) NOT NULL,
  `tgl_kegiatan` date NOT NULL,
  `status_kehadiran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi_kls_tambahan`
--

INSERT INTO `presensi_kls_tambahan` (`id_presensikls_tambahan`, `nisn`, `id_pembimbing`, `id_jadwal_ekskul`, `tgl_kegiatan`, `status_kehadiran`) VALUES
(1, '', 3, 6, '2018-01-04', 'h'),
(2, '', 2, 3, '2018-01-05', 'h'),
(3, '', 6, 5, '2018-01-05', 'h'),
(4, '', 5, 7, '2018-01-06', 'h'),
(5, '', 1, 4, '2018-01-06', 'h'),
(6, '', 4, 2, '2018-01-06', 'h'),
(7, '', 4, 1, '2018-01-06', 'h'),
(8, '', 3, 6, '2018-01-11', 'h'),
(9, '', 2, 3, '2018-01-12', 'h'),
(10, '', 6, 5, '2018-01-12', 'h'),
(11, '', 5, 7, '2018-01-13', 'h'),
(12, '', 1, 4, '2018-01-13', 'i'),
(13, '', 4, 2, '2018-01-13', 'h'),
(14, '', 4, 1, '2018-01-13', 'h'),
(15, '', 3, 6, '2018-01-18', 'i'),
(16, '', 2, 3, '2018-01-19', 'h'),
(17, '', 6, 5, '2018-01-19', 'h'),
(18, '', 5, 7, '2018-01-20', 'h'),
(19, '', 1, 4, '2018-01-20', 'h'),
(20, '', 4, 2, '2018-01-20', 'h'),
(21, '', 4, 1, '2018-01-20', 's'),
(22, '', 3, 6, '2018-01-25', 'h'),
(23, '', 2, 3, '2018-01-26', 'h'),
(24, '', 6, 5, '2018-01-26', 'h'),
(25, '', 5, 7, '2018-01-27', 'h'),
(26, '', 1, 4, '2018-01-27', 'h'),
(27, '', 4, 2, '2018-01-27', 's'),
(28, '', 4, 1, '2018-01-27', 's'),
(29, '0001254879', 0, 6, '2018-01-04', 'h'),
(30, '0162145632', 0, 3, '2018-01-05', 'i'),
(31, '0031211478', 0, 5, '2018-01-05', 'h'),
(32, '5130114039', 0, 5, '2018-01-05', 'h'),
(33, '0159521452', 0, 5, '2018-01-05', 'i'),
(34, '0188526521', 0, 5, '2018-01-05', 'h'),
(35, '0001254879', 0, 5, '2018-01-05', 'h'),
(36, '0059512014', 0, 5, '2018-01-05', 'h'),
(37, '0172013964', 0, 7, '2018-01-06', 'h'),
(38, '0147100123', 0, 7, '2018-01-06', 'h'),
(39, '0162145632', 0, 7, '2018-01-06', 'i'),
(40, '5130114039', 0, 4, '2018-01-06', 'h'),
(41, '0188526521', 0, 4, '2018-01-06', 'h'),
(42, '0001254879', 0, 4, '2018-01-06', 'h'),
(43, '0059512014', 0, 4, '2018-01-06', 'h'),
(44, '0162145632', 0, 4, '2018-01-06', 'h'),
(45, '0159521452', 0, 2, '2018-01-06', 'h'),
(46, '0001254879', 0, 2, '2018-01-06', 'h'),
(47, '0084746890', 0, 2, '2018-01-06', 'h'),
(48, '0188526521', 0, 1, '2018-01-06', 'h'),
(49, '0059512014', 0, 1, '2018-01-06', 'h'),
(50, '0162145632', 0, 1, '2018-01-06', 'h'),
(51, '0001254879', 0, 6, '2018-01-11', 'h'),
(52, '0162145632', 0, 3, '2018-01-12', 'i'),
(53, '0031211478', 0, 5, '2018-01-12', 'h'),
(54, '5130114039', 0, 5, '2018-01-12', 'h'),
(55, '0159521452', 0, 5, '2018-01-12', 'h'),
(56, '0188526521', 0, 5, '2018-01-12', 'h'),
(57, '0001254879', 0, 5, '2018-01-12', 'h'),
(58, '0059512014', 0, 5, '2018-01-12', 'h'),
(59, '0172013964', 0, 7, '2018-01-13', 'h'),
(60, '0147100123', 0, 7, '2018-01-13', 'h'),
(61, '0162145632', 0, 7, '2018-01-13', 'h'),
(62, '5130114039', 0, 4, '2018-01-13', 'h'),
(63, '0188526521', 0, 4, '2018-01-13', 'h'),
(64, '0001254879', 0, 4, '2018-01-13', 'h'),
(65, '0059512014', 0, 4, '2018-01-13', 'h'),
(66, '0162145632', 0, 4, '2018-01-13', 'h'),
(67, '0159521452', 0, 2, '2018-01-13', 'h'),
(68, '0001254879', 0, 2, '2018-01-13', 'h'),
(69, '0084746890', 0, 2, '2018-01-13', 'h'),
(70, '0188526521', 0, 1, '2018-01-13', 'h'),
(71, '0059512014', 0, 1, '2018-01-13', 'a'),
(72, '0162145632', 0, 1, '2018-01-13', 'h'),
(77, '', 3, 6, '2018-04-05', 'h'),
(78, '0159521452', 0, 2, '2018-04-02', 'h'),
(79, '0001254879', 0, 2, '2018-04-02', 'h'),
(80, '0084746890', 0, 2, '2018-04-02', 'h'),
(81, '0101245125', 0, 2, '2018-04-02', 'h'),
(82, '', 1, 4, '2018-08-28', 's');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_pegawai`
--

CREATE TABLE `presensi_pegawai` (
  `Id_presensi` int(10) NOT NULL,
  `Tanggal_presensi` date NOT NULL,
  `Waktu_presensi` time NOT NULL,
  `Rangkuman_presensi` varchar(25) NOT NULL,
  `keterangan_presensi` text DEFAULT NULL,
  `NIP` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi_pegawai`
--

INSERT INTO `presensi_pegawai` (`Id_presensi`, `Tanggal_presensi`, `Waktu_presensi`, `Rangkuman_presensi`, `keterangan_presensi`, `NIP`) VALUES
(1, '2018-10-10', '00:00:00', 'S', '', '1111'),
(2, '2018-10-10', '00:00:00', 'H', '', '11111'),
(3, '2018-10-10', '00:00:00', 'H', '', '1221129'),
(4, '2018-10-10', '00:00:00', 'H', '', '12222'),
(5, '2018-10-10', '00:00:00', 'H', '', '123'),
(6, '2018-10-10', '00:00:00', 'H', '', '1231233412'),
(7, '2018-10-10', '00:00:00', 'H', '', '12312334121'),
(8, '2018-10-10', '00:00:00', 'H', '', '123456'),
(9, '2018-10-10', '00:00:00', 'H', '', '12523001'),
(10, '2018-10-10', '00:00:00', 'H', '', '13313131'),
(11, '2018-10-10', '00:00:00', 'H', '', '13523069'),
(12, '2018-10-10', '00:00:00', 'H', '', '13523120'),
(13, '2018-10-10', '00:00:00', 'H', '', '13523134'),
(14, '2018-10-10', '00:00:00', 'H', '', '13523135'),
(15, '2018-10-10', '00:00:00', 'H', '', '1352313599'),
(16, '2018-10-10', '00:00:00', 'H', '', '13523136'),
(17, '2018-10-10', '00:00:00', 'H', '', '13523138'),
(18, '2018-10-10', '00:00:00', 'H', '', '13523139'),
(19, '2018-10-10', '00:00:00', 'H', '', '135231399'),
(20, '2018-10-10', '00:00:00', 'H', '', '13523143'),
(21, '2018-10-10', '00:00:00', 'H', '', '13523267'),
(22, '2018-10-10', '00:00:00', 'H', '', '145232677'),
(23, '2018-10-10', '00:00:00', 'H', '', '14523271'),
(24, '2018-10-10', '00:00:00', 'H', '', '333444555'),
(25, '2018-10-10', '00:00:00', 'H', '', '566656'),
(26, '2018-10-10', '00:00:00', 'H', '', '676888999'),
(27, '2018-10-10', '00:00:00', 'H', '', '777888666'),
(28, '2018-10-10', '00:00:00', 'H', '', '87283282'),
(29, '2018-10-10', '00:00:00', 'H', '', '888777'),
(30, '2018-10-10', '00:00:00', 'H', '', '989234'),
(31, '2018-10-10', '00:00:00', 'H', '', '9999922');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_siswa`
--

CREATE TABLE `presensi_siswa` (
  `id_presensi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status_kehadiran` enum('H','I','S','A') NOT NULL,
  `NISN` varchar(10) NOT NULL,
  `kelas_berjalan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi_siswa`
--

INSERT INTO `presensi_siswa` (`id_presensi`, `tanggal`, `status_kehadiran`, `NISN`, `kelas_berjalan_id`) VALUES
(1, '2018-08-01', 'H', '1234567849', 1),
(2, '2018-08-01', 'S', '1234567851', 1),
(3, '2018-10-01', 'H', '1234567900', 1),
(4, '2018-10-02', 'H', '1234567900', 1),
(5, '2018-10-03', 'H', '1234567900', 1),
(6, '2018-10-01', 'H', '1234568042', 1),
(7, '2018-10-02', 'H', '1234568042', 1),
(8, '2018-10-03', 'H', '1234568042', 1),
(9, '2018-10-01', 'H', '1234568090', 1),
(10, '2018-10-02', 'S', '1234568090', 1),
(11, '2018-10-03', 'H', '1234568090', 1),
(12, '2018-10-01', 'H', '1234568109', 1),
(13, '2018-10-02', 'H', '1234568109', 1),
(14, '2018-10-03', 'H', '1234568109', 1),
(15, '2018-10-01', 'H', '1234568110', 1),
(16, '2018-10-02', 'H', '1234568110', 1),
(17, '2018-10-03', 'H', '1234568110', 1),
(18, '2019-12-02', 'S', '1234567900', 1),
(19, '2019-12-03', 'S', '1234567900', 1),
(20, '2019-12-04', 'S', '1234567900', 1),
(21, '2019-12-05', 'S', '1234567900', 1),
(22, '2019-12-01', 'H', '14523000', 7),
(23, '2019-12-02', 'S', '14523000', 7),
(24, '2019-12-03', 'I', '14523000', 7),
(25, '2019-12-04', 'H', '14523000', 7),
(26, '2019-12-01', '', '1234568109', 3),
(27, '2019-12-02', '', '1234568109', 3),
(28, '2019-12-01', 'H', '1234568090', 3),
(29, '2019-12-02', 'H', '1234568090', 3),
(30, '2019-12-03', 'H', '1234568090', 3),
(31, '2019-12-04', 'S', '1234568090', 3),
(32, '2019-12-01', '', '1234568110', 3),
(33, '2019-12-02', 'H', '1234568110', 3),
(34, '2019-12-03', 'H', '1234568110', 3),
(35, '2019-12-04', 'H', '1234568110', 3),
(36, '2019-12-05', 'H', '1234568110', 3),
(37, '2019-12-06', 'H', '1234568110', 3),
(38, '2019-12-07', 'H', '1234568110', 3),
(39, '2019-12-08', 'H', '1234568110', 3),
(40, '2019-12-05', '', '1234568090', 3),
(41, '2019-12-06', '', '1234568090', 3),
(42, '2019-12-07', '', '1234568090', 3),
(43, '2019-12-08', '', '1234568090', 3),
(44, '2019-12-09', '', '1234568090', 3),
(45, '2019-12-10', '', '1234568090', 3),
(46, '2019-12-11', '', '1234568090', 3),
(47, '2019-12-12', '', '1234568090', 3),
(48, '2019-12-13', '', '1234568090', 3),
(49, '2019-12-14', '', '1234568090', 3),
(50, '2019-12-15', '', '1234568090', 3),
(51, '2019-12-16', '', '1234568090', 3),
(52, '2019-12-17', '', '1234568090', 3),
(53, '2019-12-18', '', '1234568090', 3),
(54, '2019-12-19', '', '1234568090', 3),
(55, '2019-12-20', '', '1234568090', 3),
(56, '2019-12-21', '', '1234568090', 3),
(57, '2019-12-22', '', '1234568090', 3),
(58, '2019-12-23', '', '1234568090', 3),
(59, '2019-12-24', '', '1234568090', 3),
(60, '2019-12-25', '', '1234568090', 3),
(61, '2019-12-26', '', '1234568090', 3),
(62, '2019-12-27', '', '1234568090', 3),
(63, '2019-12-28', '', '1234568090', 3),
(64, '2019-12-29', '', '1234568090', 3),
(65, '2019-12-30', '', '1234568090', 3),
(66, '2019-12-31', '', '1234568090', 3),
(67, '2019-12-03', '', '1234568109', 3),
(68, '2019-12-04', '', '1234568109', 3),
(69, '2019-12-05', '', '1234568109', 3),
(70, '2019-12-06', '', '1234568109', 3),
(71, '2019-12-07', '', '1234568109', 3),
(72, '2019-12-08', '', '1234568109', 3),
(73, '2019-12-09', '', '1234568109', 3),
(74, '2019-12-10', '', '1234568109', 3),
(75, '2019-12-11', '', '1234568109', 3),
(76, '2019-12-12', '', '1234568109', 3),
(77, '2019-12-13', '', '1234568109', 3),
(78, '2019-12-14', '', '1234568109', 3),
(79, '2019-12-15', '', '1234568109', 3),
(80, '2019-12-16', '', '1234568109', 3),
(81, '2019-12-17', '', '1234568109', 3),
(82, '2019-12-18', '', '1234568109', 3),
(83, '2019-12-19', '', '1234568109', 3),
(84, '2019-12-20', '', '1234568109', 3),
(85, '2019-12-21', '', '1234568109', 3),
(86, '2019-12-22', '', '1234568109', 3),
(87, '2019-12-23', '', '1234568109', 3),
(88, '2019-12-24', '', '1234568109', 3),
(89, '2019-12-25', '', '1234568109', 3),
(90, '2019-12-26', '', '1234568109', 3),
(91, '2019-12-27', '', '1234568109', 3),
(92, '2019-12-28', '', '1234568109', 3),
(93, '2019-12-29', '', '1234568109', 3),
(94, '2019-12-30', '', '1234568109', 3),
(95, '2019-12-31', '', '1234568109', 3),
(96, '2019-12-09', '', '1234568110', 3),
(97, '2019-12-10', '', '1234568110', 3),
(98, '2019-12-11', '', '1234568110', 3),
(99, '2019-12-12', '', '1234568110', 3),
(100, '2019-12-13', '', '1234568110', 3),
(101, '2019-12-14', '', '1234568110', 3),
(102, '2019-12-15', '', '1234568110', 3),
(103, '2019-12-16', '', '1234568110', 3),
(104, '2019-12-17', '', '1234568110', 3),
(105, '2019-12-18', '', '1234568110', 3),
(106, '2019-12-19', '', '1234568110', 3),
(107, '2019-12-20', '', '1234568110', 3),
(108, '2019-12-21', '', '1234568110', 3),
(109, '2019-12-22', '', '1234568110', 3),
(110, '2019-12-23', '', '1234568110', 3),
(111, '2019-12-24', '', '1234568110', 3),
(112, '2019-12-25', '', '1234568110', 3),
(113, '2019-12-26', '', '1234568110', 3),
(114, '2019-12-27', '', '1234568110', 3),
(115, '2019-12-28', '', '1234568110', 3),
(116, '2019-12-29', '', '1234568110', 3),
(117, '2019-12-30', '', '1234568110', 3),
(118, '2019-12-31', '', '1234568110', 3);

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(20) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `jenis_prestasi` varchar(20) NOT NULL,
  `tingkat_pend` varchar(20) NOT NULL,
  `tahun` int(5) NOT NULL,
  `peringkat` int(5) NOT NULL,
  `keterangan` int(100) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nisn`, `jenis_prestasi`, `tingkat_pend`, `tahun`, `peringkat`, `keterangan`, `foto`) VALUES
(0, '1234567888', 'ada', 'a', 2018, 1, 0, '121212.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `prioritas_khusus`
--

CREATE TABLE `prioritas_khusus` (
  `id_rentang_jam` int(10) DEFAULT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `id_prkh` int(10) NOT NULL,
  `jenis_prkh` enum('prioritas','khusus') NOT NULL,
  `id_mapel` int(10) DEFAULT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `jam_ke` varchar(2) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL,
  `id_namamapel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prioritas_khusus`
--

INSERT INTO `prioritas_khusus` (`id_rentang_jam`, `NIP`, `id_prkh`, `jenis_prkh`, `id_mapel`, `id_tahun_ajaran`, `jam_ke`, `hari`, `id_namamapel`) VALUES
(NULL, NULL, 3, 'prioritas', NULL, 1, '0', 'Kamis', 6),
(1, NULL, 4, 'prioritas', NULL, 1, '1', 'Kamis', 12),
(NULL, NULL, 5, 'prioritas', NULL, 1, '1', 'Selasa', 5),
(NULL, NULL, 6, 'prioritas', NULL, 1, '0', 'Rabu', 7),
(NULL, NULL, 7, 'prioritas', NULL, 1, '0', 'Senin', 4),
(NULL, '12345', 8, 'khusus', NULL, 1, '0', 'Senin', NULL),
(NULL, NULL, 11, 'prioritas', NULL, 1, '3', 'Rabu', 42),
(NULL, NULL, 14, 'prioritas', NULL, 1, '2', 'Kamis', 42),
(NULL, NULL, 15, 'prioritas', NULL, 1, '4', 'Sabtu', 42),
(NULL, '13523111', 16, 'khusus', NULL, 1, '0', 'Senin', NULL),
(159, '13523138', 17, 'khusus', NULL, 1, '1', 'Selasa', NULL),
(159, '13523111', 18, 'khusus', NULL, 1, '1', 'Selasa', NULL),
(NULL, '135231399', 19, 'khusus', NULL, 1, '4', 'Rabu', NULL),
(159, NULL, 20, 'prioritas', NULL, 1, '1', 'Selasa', 45),
(160, NULL, 23, 'prioritas', NULL, 1, '2', 'Senin', 46),
(NULL, NULL, 30, 'prioritas', NULL, 5, '1', 'Senin', 42),
(NULL, NULL, 31, 'prioritas', NULL, 5, '0', 'Senin', 45),
(NULL, '989234', 32, 'khusus', NULL, 5, '0', 'Senin', NULL),
(NULL, '123', 33, 'khusus', NULL, 5, '0', 'Selasa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(20) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `hari_libur` varchar(255) NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_sekolah`, `hari_libur`, `id_tahun_ajaran`) VALUES
(1, 'SMP Negeri 5 Yogyakarta', 'Minggu', 5),
(2, 'SMP 10', 'Minggu', 5);

-- --------------------------------------------------------

--
-- Table structure for table `setting_jadwal_tambahan`
--

CREATE TABLE `setting_jadwal_tambahan` (
  `id_setting_tambahan` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `kelas` enum('7','8','9') NOT NULL,
  `hari` varchar(255) NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `jam_pagi` varchar(255) NOT NULL,
  `jam_siang` varchar(255) NOT NULL,
  `jam_sore` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `no_induk_siswa` int(10) NOT NULL,
  `foto` text NOT NULL,
  `nik` int(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `tempat_lahir` varchar(15) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen','Katholik','Hindu','Budha','Lainnya') NOT NULL,
  `berkebutuhan_khusus` enum('Tidak','Netra','Rungu','Grahita Ringan','Grahita Sedang','Daksa Ringan','Daksa Sedang','Laras','Wicara','Tuna Ganda','Hiperaktif','Cerdas Istimewa','Bakat Istimewa','Kesulitan Belajar','Narkoba','Indigo','Down Syndrome','Autis','Terbelakang','Bencana Alam/ Sosial','Tidak Mampu Ekonomi','Lainnya') NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `rt` int(3) NOT NULL,
  `rw` int(3) NOT NULL,
  `nama_dusun` varchar(20) NOT NULL,
  `desa_kelurahan` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kode_pos` int(6) NOT NULL,
  `tempat_tinggal` enum('Dengan Orang Tua','Dengan Saudara','Tinggal di Asrama','Tinggal di Kos') NOT NULL,
  `kategori_penduduk` enum('Dalam Daerah','Luar Daerah') NOT NULL,
  `transportasi` enum('Jalan Kaki','Angkutan Umum','Mobil/ Bus Antar Jemput','Sepeda','Sepeda Motor','Mobil Pribadi','Lainnya') NOT NULL,
  `no_telepon` int(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `nama_sd_mi` varchar(30) DEFAULT NULL,
  `lama_belajar_disd_mi` int(2) NOT NULL,
  `pernah_paud` enum('Ya','Tidak') NOT NULL,
  `pernah_tk` enum('Ya','Tidak') NOT NULL,
  `no_skhun_mi` int(9) NOT NULL,
  `no_seri_skhun_s` int(16) NOT NULL,
  `no_seri_ijazah_sd_mi` int(10) NOT NULL,
  `penerima_kps_kks_pkh_kip` enum('Ya','Tidak') NOT NULL,
  `no_penerima` int(17) DEFAULT NULL,
  `anak_ke` int(2) NOT NULL,
  `jumlah_saudara_kandung` int(2) NOT NULL,
  `jumlah_saudara_tiri` int(2) NOT NULL,
  `jumlah_saudara_angkat` int(2) NOT NULL,
  `status_dalam_keluarga` enum('Kandung','Angkat') NOT NULL,
  `pernah_menderita_sakit` varchar(50) NOT NULL,
  `pernah_mengaji` enum('Ya','Tidak') NOT NULL,
  `keterangan_mengaji` varchar(50) NOT NULL,
  `anak_yatim_piatu` enum('Tidak','Yatim','Piatu','Yatim Piatu') NOT NULL,
  `bahasa_sehari_hari_dirumah` varchar(50) NOT NULL,
  `prestasi_disekolah` varchar(100) NOT NULL,
  `status_siswa` enum('Aktif','Lulus','Keluar') NOT NULL,
  `terdaftar_sebagai` varchar(50) NOT NULL,
  `tinggi_badan` int(10) NOT NULL,
  `berat_badan` int(5) NOT NULL,
  `hobi` varchar(1000) NOT NULL,
  `asal_mutasi` varchar(30) NOT NULL,
  `id_orangtua` int(4) DEFAULT NULL,
  `id_tahun_ajaran` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `no_induk_siswa`, `foto`, `nik`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `berkebutuhan_khusus`, `alamat`, `rt`, `rw`, `nama_dusun`, `desa_kelurahan`, `kecamatan`, `kode_pos`, `tempat_tinggal`, `kategori_penduduk`, `transportasi`, `no_telepon`, `email`, `nama_sd_mi`, `lama_belajar_disd_mi`, `pernah_paud`, `pernah_tk`, `no_skhun_mi`, `no_seri_skhun_s`, `no_seri_ijazah_sd_mi`, `penerima_kps_kks_pkh_kip`, `no_penerima`, `anak_ke`, `jumlah_saudara_kandung`, `jumlah_saudara_tiri`, `jumlah_saudara_angkat`, `status_dalam_keluarga`, `pernah_menderita_sakit`, `pernah_mengaji`, `keterangan_mengaji`, `anak_yatim_piatu`, `bahasa_sehari_hari_dirumah`, `prestasi_disekolah`, `status_siswa`, `terdaftar_sebagai`, `tinggi_badan`, `berat_badan`, `hobi`, `asal_mutasi`, `id_orangtua`, `id_tahun_ajaran`) VALUES
('', 0, '', 0, '', NULL, NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 45, 1),
('0426389062', 0, '', 0, 'Kartika Eka Putri Swasta', 'Perempuan', 'Pekalongan', '2000-09-14', 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 47, 1),
('1001', 0, '', 0, 'Pendaftar satu', NULL, NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 56, 2),
('1002', 0, '', 0, 'pendaftar dua', NULL, NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 58, 2),
('1003', 0, '', 0, 'pendaftar tiga', NULL, NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', NULL, 0),
('1234567816', 1, 'wolf_hd_by_arma3lonewolf-d8m9rto.jpg', 87000, 'Gita Moly Ayu', 'Perempuan', 'dumai edit', '2011-05-11', 'Islam', 'Tidak', 'as', 1, 5, 'lodadi', 'a', 'a', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', 'SDN', 0, '', '', 0, 0, 0, '', 0, 1, 0, 1, 0, 'Kandung', '', '', '', 'Tidak', '', '', '', '', 0, 0, '', '', 59, 1),
('1234567817', 2, '', 0, 'Riris Indriyani', 'Perempuan', 'duri', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 'Lulus', '', 0, 0, '', '', 2, 1),
('1234567818', 3, '', 0, 'Sidik Putra Perwira', 'Laki-Laki', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 'Aktif', '', 0, 0, '', '', 3, 1),
('1234567819', 4, '', 0, 'Rahmaria Yunisa', 'Perempuan', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 'Keluar', '', 0, 0, '', '', 4, 1),
('1234567820', 5, '', 0, 'Cita Wiyaninta', 'Perempuan', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567821', 6, '', 0, 'Hanggini Puri Retno', 'Perempuan', 'jakarta', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567822', 7, '', 0, 'Yuli Rahmawati', 'Perempuan', 'sragen', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567823', 8, '', 0, 'Pevita Pearce', 'Perempuan', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567824', 9, '', 0, 'Rizki Tsuma Jaya', 'Laki-Laki', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567825', 10, '', 0, 'Nurdin Rezmani', 'Laki-Laki', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567826', 11, '', 0, 'Akhmad Sasongko', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567827', 12, '', 0, 'Raisa Andriana', 'Perempuan', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567828', 13, '', 0, 'Monita Tahalea', 'Perempuan', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567829', 14, '', 0, 'Jesika Iskandar', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567830', 15, '', 0, 'Melody Amade', 'Perempuan', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567831', 16, '', 0, 'Daniel Reynando', 'Laki-Laki', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567832', 17, '', 0, 'Firanti Maulida Putri', 'Perempuan', 'kalimantan', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567833', 18, '', 0, 'Delima Indira', 'Perempuan', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567834', 19, '', 0, 'Rezki Fitrah', 'Laki-Laki', 'duri', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567835', 20, '', 0, 'Daniel Mananta', 'Laki-Laki', 'bandung', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567836', 21, '', 0, 'Dessy Mayang Sari', 'Perempuan', 'bali ', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567837', 22, '', 0, 'Hansa Ufairani Ramadhan', 'Perempuan', 'bogor', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567838', 23, '', 0, 'Dewi Purmala Sari', 'Perempuan', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567839', 24, '', 0, 'Sesarika', 'Perempuan', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567840', 25, '', 0, 'Priska Agustina', 'Perempuan', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567841', 26, '', 0, 'Dini Antika', 'Perempuan', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567842', 27, '', 0, 'Hesti Yulia Rosadi', 'Perempuan', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567843', 28, '', 0, 'Dandi Irawan', 'Laki-Laki', 'solo', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567844', 29, '', 0, 'Dude Harlino', 'Laki-Laki', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567845', 30, '', 0, 'Bagus Prakoso', 'Laki-Laki', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567846', 31, '', 0, 'Yudi Waryadi', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567847', 32, '', 0, 'Desta Reynaldi', 'Laki-Laki', 'jogja', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567848', 33, '', 0, 'Jakaria Sawerna', 'Laki-Laki', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567849', 34, '', 0, 'Ruben Onsu', 'Laki-Laki', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567850', 35, '', 0, 'Lucky Tama', 'Laki-Laki', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567851', 36, '', 0, 'Gagah Perdana', 'Laki-Laki', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567852', 37, '', 0, 'Laode Muhammad', 'Laki-Laki', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567853', 38, '', 0, 'Fawwas Kurniawan', 'Laki-Laki', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567854', 39, '', 0, 'Silvi Yuliantika', 'Perempuan', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567855', 40, '', 0, 'Fatimah Azzahra', 'Perempuan', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567856', 41, '', 0, 'Anisa Maulida Purnama', 'Perempuan', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567857', 42, '', 0, 'Marlev Maenaki', 'Laki-Laki', 'balikpapan', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567858', 43, '', 0, 'Setya Adi Nugroho', 'Laki-Laki', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567859', 44, '', 0, 'Tsummo Aji', 'Laki-Laki', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567860', 45, '', 0, 'Nabilla Kania Ningrum', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567861', 46, '', 0, 'Essy Safitri', 'Perempuan', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567862', 47, '', 0, 'Senjani Julaeshi', 'Perempuan', 'tangerang', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567863', 48, '', 0, 'Gita Iman Sari', 'Perempuan', 'solo', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567864', 49, '', 0, 'Risa Sarasvati', 'Perempuan', 'jogja', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567865', 50, '', 0, 'Isyana Dwi Puwaka', 'Perempuan', 'bandar lampung', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567866', 51, '', 0, 'Irene Andoni', 'Perempuan', 'kalimantan', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567867', 52, '', 0, 'Lala Karmela', 'Perempuan', 'dumai', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567868', 53, '', 0, 'Petra Sihombing', 'Laki-Laki', 'duri', '0000-00-00', 'Lainnya', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567869', 54, '', 0, 'Hamish Daud', 'Laki-Laki', 'bandung', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567870', 55, '', 0, 'Keenan Pearce', 'Laki-Laki', 'bali ', '0000-00-00', 'Lainnya', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567871', 56, '', 0, 'Donita hamiyan', 'Perempuan', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567872', 57, '', 0, 'Fachrur Rozi', 'Laki-Laki', 'jakarta', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567873', 58, '', 0, 'Bella Nur Hidayah Aesyi', 'Perempuan', 'sragen', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567874', 59, '', 0, 'Tatania Mellani', 'Perempuan', 'balikpapan', '0000-00-00', 'Lainnya', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567875', 60, '', 0, 'Sekar Melati Ayu', 'Perempuan', 'madura', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567876', 61, '', 0, 'Teguh Wahyu Anggara', 'Laki-Laki', 'aceh', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567877', 62, '', 0, 'Murni Dwi Alfiyanti', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567878', 63, '', 0, 'Fitri Ameliya', 'Perempuan', 'klaten', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567879', 64, '', 0, 'Dicky Zulianto', 'Laki-Laki', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567880', 65, '', 0, 'Diana Rakhmawati', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567881', 66, '', 0, 'Pupu Anggita Sari', 'Perempuan', 'jogja', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567882', 67, '', 0, 'Nabil Firdaus', 'Laki-Laki', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567883', 68, '', 0, 'Aditya Rahman', 'Laki-Laki', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567884', 69, '', 0, 'Nesya Vatty Azzahra', 'Perempuan', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567885', 70, '', 0, 'Fatmawati', 'Perempuan', 'duri', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567886', 71, '', 0, 'Fadilla Utami', 'Perempuan', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567887', 72, '', 0, 'Fahni Nesa Khulqi', 'Perempuan', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567888', 73, '', 0, 'Anggita Fitriana Ratih', 'Perempuan', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567889', 74, '', 0, 'Anggi Kusuma Putri', 'Perempuan', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567890', 75, '', 0, 'Anggraeni Dias Saputri', 'Perempuan', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567891', 76, '', 0, 'Irma Suryani Sofyan', 'Perempuan', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567892', 77, '', 0, 'Yezita Kumala Wongso', 'Perempuan', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567893', 78, '', 0, 'Dwi Kusumastuti', 'Perempuan', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567894', 79, '', 0, 'Nur Muhammad', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567895', 80, '', 0, 'Tan Halim Perdana', 'Laki-Laki', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567896', 81, '', 0, 'Diki Hidayatulloh', 'Laki-Laki', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567897', 82, '', 0, 'Audrey Bella Tantowi', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567898', 83, '', 0, 'Berlian Amalia Burhan', 'Perempuan', 'jogja', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567899', 84, '', 0, 'Annisa Dian Pertiwi', 'Perempuan', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567900', 85, '', 0, 'Budi Haryanto', 'Laki-Laki', 'kalimantan', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567901', 86, '', 0, 'Dwi wira surachandra ', 'Laki-Laki', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567902', 87, '', 0, 'Denis Muhammad Irfan ', 'Laki-Laki', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567903', 88, '', 0, 'Dwi Laksana Bhakti ', 'Laki-Laki', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567904', 89, '', 0, 'muhammad yusuf ', 'Laki-Laki', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567905', 90, '', 0, 'Gamaliel Candra Winata', 'Laki-Laki', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567906', 91, '', 0, 'delsa satya pratama ', 'Laki-Laki', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567907', 92, '', 0, 'Yogi Rosi Prasetyo ', 'Laki-Laki', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567908', 93, '', 0, 'Juan Yoshino ', 'Laki-Laki', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567909', 94, '', 0, 'Rizal Ermanto ', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567910', 95, '', 0, 'dinda agung apriyana ', 'Laki-Laki', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567911', 96, '', 0, 'Suherdi ', 'Laki-Laki', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567912', 97, '', 0, 'Ahmad Hasan N ', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567913', 98, '', 0, 'Deri Likandra Triputra ', 'Laki-Laki', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567914', 99, '', 0, 'Muhamad Rifly Robiana ', 'Laki-Laki', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567915', 100, '', 0, 'Daniel Oktario ', 'Laki-Laki', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567916', 101, '', 0, 'Israqi Atsiruddin Sidqi Ramdhani ', 'Laki-Laki', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567917', 102, '', 0, 'Ristami annisa ', 'Perempuan', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567918', 103, '', 0, 'Evelyn Tanoe', 'Perempuan', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567919', 104, '', 0, 'Dhea Novia Parhana ', 'Perempuan', 'bali ', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567920', 105, '', 0, 'Ajeng Gerhana Wulan ', 'Perempuan', 'bogor', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567921', 106, '', 0, 'Annisa Maretiamy ', 'Perempuan', 'jakarta', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567922', 107, '', 0, 'Lassandra Kattyana Santos ', 'Perempuan', 'sragen', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567923', 108, '', 0, 'Lestari pratiwi ', 'Perempuan', 'balikpapan', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567924', 109, '', 0, 'Muni Ledia Astuti ', 'Perempuan', 'madura', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567925', 110, '', 0, 'Meisa damayanti ', 'Perempuan', 'aceh', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567926', 111, '', 0, 'Sri Dewi Cahyadi ', 'Perempuan', 'solo', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567927', 112, '', 0, 'Indri Zaqiah ', 'Perempuan', 'klaten', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567928', 113, '', 0, 'Nadya Saphira Esfandiari ', 'Perempuan', 'tangerang', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567929', 114, '', 0, 'Winda ayulia agustina ', 'Perempuan', 'solo', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567930', 115, '', 0, 'Rani nuryati ', 'Perempuan', 'jogja', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567931', 116, '', 0, 'Mariam Marianti ', 'Perempuan', 'bandar lampung', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567932', 117, '', 0, 'Gina Sonia ', 'Perempuan', 'kalimantan', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567933', 118, '', 0, 'Aulia Rahmawaty ', 'Perempuan', 'dumai', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567934', 119, '', 0, 'Susanti ', 'Perempuan', 'duri', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567935', 120, '', 0, 'Putri marytha setiadi ', 'Perempuan', 'bandung', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567936', 121, '', 0, 'Selisa Fatimah ', 'Perempuan', 'bali ', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567937', 122, '', 0, 'Khansa R ', 'Perempuan', 'bogor', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567938', 123, '', 0, 'Risma nopianti ', 'Perempuan', 'jakarta', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567939', 124, '', 0, 'Lulu adilah fasya  ', 'Perempuan', 'sragen', '0000-00-00', 'Kristen', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567940', 125, '', 0, 'Raka nurmawan  ', 'Laki-Laki', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567941', 126, '', 0, 'Ridwan Raynaldi Putra ', 'Laki-Laki', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567942', 127, '', 0, 'Adi Darmawan ', 'Laki-Laki', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567943', 128, '', 0, 'Avrialy kosvi ', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567944', 129, '', 0, 'Lucky Wiratama Suganda ', 'Laki-Laki', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567945', 130, '', 0, 'Boy William Nuon ', 'Laki-Laki', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567946', 131, '', 0, 'Rizky Irhas Firdaus ', 'Laki-Laki', 'solo', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567947', 132, '', 0, 'Robbi sujana ', 'Laki-Laki', 'jogja', '0000-00-00', 'Katholik', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567948', 133, '', 0, 'Renaya Sarasti ', 'Perempuan', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567949', 134, '', 0, 'Jayanti Widiastuti ', 'Perempuan', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567950', 135, '', 0, 'Armelia nur asyiffa  ', 'Perempuan', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567951', 136, '', 0, 'Annisa Ayu Siwi ', 'Perempuan', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567952', 137, '', 0, 'Kirana Citra Destiyanti ', 'Perempuan', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567953', 138, '', 0, 'Ichsan nurmansyah ', 'Laki-Laki', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567954', 139, '', 0, 'Wahyu Aji Komara ', 'Laki-Laki', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567955', 140, '', 0, 'afgani maulana a.s. ', 'Laki-Laki', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567956', 141, '', 0, 'Feggy Rizkiana Herman ', 'Laki-Laki', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567957', 142, '', 0, 'Raka Gustiana ', 'Laki-Laki', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567958', 143, '', 0, 'Deri Fauzi ', 'Laki-Laki', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567959', 144, '', 0, 'Israqi Atsiruddin Sidqi Ramdhani ', 'Laki-Laki', 'aceh', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567960', 145, '', 0, 'ahmad fauzan naufal  ', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567961', 146, '', 0, 'PujiRidwansyah ', 'Laki-Laki', 'klaten', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567962', 147, '', 0, 'moch adnand heriansyah ', 'Laki-Laki', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567963', 148, '', 0, 'Rendi Agus Tirtana ', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567964', 149, '', 0, 'Muhammad Rizki Alhafizh ', 'Laki-Laki', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567965', 150, '', 0, 'ari ramdani ', 'Laki-Laki', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567966', 151, '', 0, 'Muhammad Itsal Septian Rahman ', 'Laki-Laki', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567967', 152, '', 0, 'Hilmy MaulanaRachmawan ', 'Laki-Laki', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567968', 153, '', 0, 'furqon saefulloh ', 'Laki-Laki', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567969', 154, '', 0, 'Dicky Sudrajat ', 'Laki-Laki', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567970', 155, '', 0, 'muhammad aldi ramdhani ', 'Laki-Laki', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567971', 156, '', 0, 'Peter Sulaeman ', 'Laki-Laki', 'bogor', '0000-00-00', 'Lainnya', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567972', 157, '', 0, 'Iman  ', 'Laki-Laki', 'jakarta', '0000-00-00', 'Lainnya', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567973', 158, '', 0, 'Suci Ananda ', 'Perempuan', 'sragen', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567974', 159, '', 0, 'Ristya ariyani ', 'Perempuan', 'balikpapan', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567975', 160, '', 0, 'Citra Pradita Effendi ', 'Perempuan', 'madura', '0000-00-00', 'Hindu', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567976', 161, '', 0, 'ita juwita ', 'Perempuan', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567977', 162, '', 0, 'Ana Muslimah ', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567978', 163, '', 0, 'Siti Nurjanah ', 'Perempuan', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567979', 164, '', 0, 'Diny Maryani Hermawan ', 'Perempuan', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567980', 165, '', 0, 'Mita Amelia ', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567981', 166, '', 0, 'Ressa Pupu Handayani ', 'Perempuan', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567982', 167, '', 0, 'Anisa Ayu Parwati ', 'Perempuan', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567983', 168, '', 0, 'Ira Mariana ', 'Perempuan', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567984', 169, '', 0, 'Tatie Mulyati ', 'Perempuan', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567985', 170, '', 0, 'Ranti Prahastanti ', 'Perempuan', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567986', 171, '', 0, 'Esya Swasti Sukmatia ', 'Perempuan', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567987', 172, '', 0, 'anggi ratnasari ', 'Perempuan', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567988', 173, '', 0, 'Regina Eldinia Rahayu ', 'Perempuan', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567989', 174, '', 0, 'Rivani Asri Pratiwi ', 'Perempuan', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234567990', 175, '', 0, 'yolanda ayu syafira ', 'Perempuan', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234567991', 176, '', 0, 'Nurhasannah Safitri ', 'Perempuan', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234567992', 177, '', 0, 'Kania Anisa Lestari ', 'Perempuan', 'madura', '0000-00-00', 'Budha', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234567993', 178, '', 0, 'nitasukmala ', 'Perempuan', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234567994', 179, '', 0, 'Putri Medina Agrezta ', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234567995', 180, '', 0, 'wendyna oktaviani ', 'Perempuan', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234567996', 181, '', 0, 'hanna tasya ', 'Perempuan', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234567997', 182, '', 0, 'Evi Hafizah Rahma ', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234567998', 183, '', 0, 'Erika Putri Cantika', 'Perempuan', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234567999', 184, '', 0, 'zella zakiyah ', 'Perempuan', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568000', 185, '', 0, 'Syahdan Dwi Cahyo ', 'Laki-Laki', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568001', 186, '', 0, 'yogie nugraha ', 'Laki-Laki', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568002', 187, '', 0, 'Agus Setiana ', 'Laki-Laki', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568003', 188, '', 0, 'andrian kusnadi ', 'Laki-Laki', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568004', 189, '', 0, 'irfan adi pamuji ', 'Laki-Laki', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568005', 190, '', 0, 'Bagus Rio Prasojo ', 'Laki-Laki', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1);
INSERT INTO `siswa` (`nisn`, `no_induk_siswa`, `foto`, `nik`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `berkebutuhan_khusus`, `alamat`, `rt`, `rw`, `nama_dusun`, `desa_kelurahan`, `kecamatan`, `kode_pos`, `tempat_tinggal`, `kategori_penduduk`, `transportasi`, `no_telepon`, `email`, `nama_sd_mi`, `lama_belajar_disd_mi`, `pernah_paud`, `pernah_tk`, `no_skhun_mi`, `no_seri_skhun_s`, `no_seri_ijazah_sd_mi`, `penerima_kps_kks_pkh_kip`, `no_penerima`, `anak_ke`, `jumlah_saudara_kandung`, `jumlah_saudara_tiri`, `jumlah_saudara_angkat`, `status_dalam_keluarga`, `pernah_menderita_sakit`, `pernah_mengaji`, `keterangan_mengaji`, `anak_yatim_piatu`, `bahasa_sehari_hari_dirumah`, `prestasi_disekolah`, `status_siswa`, `terdaftar_sebagai`, `tinggi_badan`, `berat_badan`, `hobi`, `asal_mutasi`, `id_orangtua`, `id_tahun_ajaran`) VALUES
('1234568006', 191, '', 0, 'Bayu Nugraha Libriansyah ', 'Laki-Laki', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568007', 192, '', 0, 'arief sudianto ', 'Laki-Laki', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568008', 193, '', 0, 'Rizky syaeful anwar ', 'Laki-Laki', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568009', 194, '', 0, 'Yugo Sudirman', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568010', 195, '', 0, 'Nur Devi Yusiawati Gumelar ', 'Perempuan', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568011', 196, '', 0, 'juanita nurfadhillah hafyani ', 'Perempuan', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568012', 197, '', 0, 'Kareyna Sugiono ', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568013', 198, '', 0, 'Revina Sadiyyah Fatimah ', 'Perempuan', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568014', 199, '', 0, 'Anjani Meilawati Dewi ', 'Perempuan', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568015', 200, '', 0, 'Kurnia Imbar Sandi .S ', 'Perempuan', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568016', 201, '', 0, 'Rida Himyati Hasna ', 'Perempuan', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568017', 202, '', 0, 'Citra Mega Lestari ', 'Perempuan', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568018', 203, '', 0, 'Hilda Nathaniela ', 'Perempuan', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568019', 204, '', 0, 'Ninne Nuraida ', 'Perempuan', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568020', 205, '', 0, 'lusianasaraswati dewi ', 'Perempuan', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568021', 206, '', 0, 'ayudhia chandra pusparini  ', 'Perempuan', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568022', 207, '', 0, 'Agnes Dirgantini Hakim ', 'Perempuan', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568023', 208, '', 0, 'sinta komara  ', 'Perempuan', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568024', 209, '', 0, 'Hazana Delfani ', 'Perempuan', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568025', 210, '', 0, 'Siti Nurmala Asy\'syifa ', 'Perempuan', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568026', 211, '', 0, 'Riska Gita Suhana ', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568027', 212, '', 0, 'Yolanda Novitri Setiawan ', 'Perempuan', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568028', 213, '', 0, 'Gracia vini ', 'Perempuan', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568029', 214, '', 0, 'Novianti Warnerin ', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568030', 215, '', 0, 'Ckasinta Winda S ', 'Perempuan', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568031', 216, '', 0, 'Ghita Listyawati Piayu ', 'Perempuan', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568032', 217, '', 0, 'Wulan Guritno Eri ', 'Perempuan', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568033', 218, '', 0, 'Ayudia Bing Slamet', 'Perempuan', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568034', 219, '', 0, 'Rara Ajeng Kusumadewi', 'Perempuan', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568035', 220, '', 0, 'Muhammad doddy djakaria ', 'Laki-Laki', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568036', 221, '', 0, 'Adnan Saefulloh ', 'Laki-Laki', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568037', 222, '', 0, 'Arya Mahardika ', 'Laki-Laki', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568038', 223, '', 0, 'alamda verdiyana ', 'Laki-Laki', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568039', 224, '', 0, 'agungsaputra ', 'Laki-Laki', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568040', 225, '', 0, 'Erwin Bani Adam ', 'Laki-Laki', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568041', 226, '', 0, 'arif santoso ', 'Laki-Laki', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568042', 227, '', 0, 'Muhammad Neval Maldini ', 'Laki-Laki', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568043', 228, '', 0, 'Zaenal Abidin ', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568044', 229, '', 0, 'Maulana Alif Anugrah ', 'Laki-Laki', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568045', 230, '', 0, 'Ferdinand Is Suhendra ', 'Laki-Laki', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568046', 231, '', 0, 'Saepuloh ', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568047', 232, '', 0, 'muhammad ferdi ', 'Laki-Laki', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568048', 233, '', 0, 'Dani Irawan ', 'Laki-Laki', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568049', 234, '', 0, 'Brama lessandro santos ', 'Laki-Laki', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568050', 235, '', 0, 'Rudi Herlambang', 'Laki-Laki', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568051', 236, '', 0, 'windi ayu ', 'Perempuan', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568052', 237, '', 0, 'Yulia Nur Safitri ', 'Perempuan', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568053', 238, '', 0, 'Neneng Royani ', 'Perempuan', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568054', 239, '', 0, 'Hanasira Afifa ', 'Perempuan', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568055', 240, '', 0, 'Dwi Putri Januari ', 'Perempuan', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568056', 241, '', 0, 'indah nur maulida ', 'Perempuan', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568057', 242, '', 0, 'Dinda Sapta Carolina ', 'Perempuan', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568058', 243, '', 0, 'Rosyanda Sastie Jagattri ', 'Perempuan', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568059', 244, '', 0, 'Sonia Oktaviana ', 'Perempuan', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568060', 245, '', 0, 'annisa dessetiani lee ', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568061', 246, '', 0, 'Rachmawati sabilarizki ', 'Perempuan', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568062', 247, '', 0, 'Bella Putri Nastiti ', 'Perempuan', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568063', 248, '', 0, 'Pinaandriyani ', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568064', 249, '', 0, 'Widi Dwi Adhawati ', 'Perempuan', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568065', 250, '', 0, 'Isnaeni Handayani Mukti ', 'Perempuan', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568066', 251, '', 0, 'Dita Julianti ', 'Perempuan', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568067', 252, '', 0, 'Nurfa Resti Aulia ', 'Perempuan', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568068', 253, '', 0, 'Salma Nur Aisy ', 'Perempuan', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568069', 254, '', 0, 'suci wulan sari ', 'Perempuan', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568070', 255, '', 0, 'Adelia Puspita', 'Perempuan', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568071', 256, '', 0, 'Alfian Dwi Sukma', 'Laki-Laki', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568072', 257, '', 0, 'Anan Winandar', 'Laki-Laki', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568073', 258, '', 0, 'Asep Septian', 'Laki-Laki', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568074', 259, '', 0, 'Bachtiar Saeful Bachri', 'Laki-Laki', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568075', 260, '', 0, 'Bella Ayu Ratnasari', 'Perempuan', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568076', 261, '', 0, 'Cahya Abdul Kholik', 'Laki-Laki', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568077', 262, '', 0, 'Cahyadyana Fauzi', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568078', 263, '', 0, 'Cahyaningsih', 'Perempuan', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568079', 264, '', 0, 'Deni Priyatna', 'Laki-Laki', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568080', 265, '', 0, 'Diky Haryanto', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568081', 266, '', 0, 'Elvira Riana', 'Perempuan', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568082', 267, '', 0, 'Erlita Indah A', 'Perempuan', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568083', 268, '', 0, 'Eviratna Ningsih', 'Perempuan', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568084', 269, '', 0, 'Fikri Fajra Pratama', 'Laki-Laki', 'dumai', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568085', 270, '', 0, 'Gugun Agus Gunawan', 'Laki-Laki', 'duri', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568086', 271, '', 0, 'Intan Purnama Sari', 'Perempuan', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568087', 272, '', 0, 'Isti Widiharyanti', 'Perempuan', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568088', 273, '', 0, 'Khosriyani', 'Perempuan', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568089', 274, '', 0, 'Millenia Delva Clarifta', 'Perempuan', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568090', 275, '', 0, 'Mohammad Faisal Rosyad', 'Laki-Laki', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 'Keluar', '', 0, 0, '', '', 5, 1),
('1234568091', 276, '', 0, 'Nur Shinta Dewi', 'Perempuan', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568092', 277, '', 0, 'Nur Indah Wulandari', 'Perempuan', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568093', 278, '', 0, 'Nurul Annisa', 'Perempuan', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568094', 279, '', 0, 'Rimawati', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568095', 280, '', 0, 'Robby Anwar', 'Laki-Laki', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568096', 281, '', 0, 'Rojannah', 'Perempuan', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568097', 282, '', 0, 'Siti Aisyah', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568098', 283, '', 0, 'Sujatmiko Dwi Purnomo', 'Laki-Laki', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568099', 284, '', 0, 'Wika Muliya Sari', 'Perempuan', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568100', 285, '', 0, 'Yuli Triangsih', 'Perempuan', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568101', 286, '', 0, 'Alea Wibisono', 'Perempuan', 'bandung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568102', 287, '', 0, 'Nia Tamara', 'Perempuan', 'bali ', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568103', 288, '', 0, 'Nizar Asharul Maulana', 'Laki-Laki', 'bogor', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568104', 289, '', 0, 'Ranifah Dwi Lestari', 'Perempuan', 'jakarta', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568105', 290, '', 0, 'Luna Maya', 'Perempuan', 'sragen', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('1234568106', 291, '', 0, 'Abel Cantika', 'Perempuan', 'balikpapan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 1, 1),
('1234568107', 292, '', 0, 'Bobby Purba', 'Laki-Laki', 'madura', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 1),
('1234568108', 293, '', 0, 'Steffan William', 'Laki-Laki', 'aceh', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 3, 1),
('1234568109', 294, '', 0, 'Rifan Dwi Styawan', 'Laki-Laki', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 1),
('1234568110', 295, '', 0, 'Agung Budi Setyo', 'Laki-Laki', 'klaten', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 1),
('1234568111', 296, '', 0, 'Wenila Saputri', 'Perempuan', 'tangerang', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 1),
('1234568112', 297, '', 0, 'Quenta Resnawari', 'Perempuan', 'solo', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 1),
('1234568113', 298, '', 0, 'Anindhyta Syefta Putri', 'Perempuan', 'jogja', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 1),
('1234568114', 299, '', 0, 'Reynaldi Fero', 'Laki-Laki', 'bandar lampung', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 9, 1),
('1234568115', 300, '', 0, 'Dendi Apriadi', 'Laki-Laki', 'kalimantan', '0000-00-00', 'Islam', '', 'Yogyakarta', 0, 0, '', '', '', 0, '', '', '', 0, '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 1),
('125478', 0, '', 0, 'Ong Seungwoo', 'Laki-Laki', 'Seoul', '2018-07-08', 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 49, 1),
('14045', 0, '', 0, 'mcd', 'Perempuan', NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', NULL, 0),
('14046', 0, '', 0, 'mcdu', NULL, NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 54, 2),
('1414523', 0, '', 0, 'Nadine', 'Perempuan', 'Samarinda', '2010-05-10', 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, '', '', '', 0, '', NULL, 0, '', '', 0, 0, 0, '', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 22, 0),
('14523000', 0, '', 0, 'Nadine', 'Perempuan', NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', NULL, 0),
('14523267', 0, '', 10, 'ini nadine', 'Perempuan', 'smd', '2018-05-11', 'Islam', 'Tidak', 'jakal', 1, 2, 'l', 'k', 'm', 7, 'Dengan Orang Tua', 'Luar Daerah', 'Angkutan Umum', 8, '', 'sdn 012', 6, 'Ya', 'Tidak', 0, 0, 0, 'Tidak', 0, 1, 2, 0, 0, 'Kandung', 'tdk', 'Ya', 'a', 'Tidak', 'indonesia', 'K', 'Aktif', '', 170, 50, 'KKK', 'SD', NULL, 1),
('1477', 0, '', 0, 'Coba murid baru', 'Perempuan', 'jogja', '2018-07-01', 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 32, 1),
('5001', 0, '', 0, 'Pendaftar satu', 'Perempuan', NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 42, 1),
('5002', 0, '', 0, 'kocheng', NULL, NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 48, 1),
('505050', 0, '', 0, 'Naira', 'Perempuan', '', '0000-00-00', 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', NULL, 0),
('55555550', 0, '', 0, 'pendaftar test', 'Perempuan', NULL, NULL, 'Islam', 'Tidak', 'jalan alan', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 1, 1, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 160, 50, '', '', 60, 3),
('6001', 0, '', 0, 'Pendaftar dua', 'Laki-Laki', NULL, NULL, 'Islam', 'Tidak', 'ghu', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 2, 2, 1, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 155, 45, '', '', 40, 1),
('622', 0, '', 0, 'in', NULL, NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 46, 1),
('7001', 0, '', 0, 'pendaftar tiga', 'Laki-Laki', NULL, NULL, 'Islam', 'Tidak', 'jakalz', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 2, 1, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 166, 50, '', '', 43, 1),
('8001', 0, '', 0, 'Pendaftar empat', 'Perempuan', NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 41, 1),
('980001', 0, '', 0, 'okok', NULL, NULL, NULL, 'Islam', 'Tidak', '', 0, 0, '', '', '', 0, 'Dengan Orang Tua', 'Dalam Daerah', 'Jalan Kaki', 0, '', NULL, 0, 'Ya', 'Ya', 0, 0, 0, 'Ya', NULL, 0, 0, 0, 0, 'Kandung', '', 'Ya', '', 'Tidak', '', '', 'Aktif', '', 0, 0, '', '', 44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa_kelas`
--

CREATE TABLE `siswa_kelas` (
  `id_siswa_kelas` int(5) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenjang` enum('7','8','9') NOT NULL,
  `agama` enum('Islam','Kristen','Katholik','Hindu','Budha','Lainnya') NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `total_nilai` float NOT NULL,
  `nilai_un_nun` float NOT NULL,
  `total_nilai_kenaikan` float NOT NULL,
  `prestasi_or` float NOT NULL,
  `prestasi_tahfidz` float NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_kelas`
--

INSERT INTO `siswa_kelas` (`id_siswa_kelas`, `nisn`, `nama`, `jenjang`, `agama`, `jenis_kelamin`, `total_nilai`, `nilai_un_nun`, `total_nilai_kenaikan`, `prestasi_or`, `prestasi_tahfidz`, `id_tahun_ajaran`) VALUES
(1, '1234567816', 'Gita Moly Ayu', '7', 'Islam', 'Perempuan', 0, 26.3, 0, 0, 75, 1),
(2, '1234567817', 'Riris Indriyani', '7', 'Katholik', 'Perempuan', 0, 26.3, 0, 0, 78, 1),
(3, '1234567818', 'Sidik Putra Perwira', '7', 'Islam', 'Laki-Laki', 0, 26.4, 0, 0, 80, 1),
(5, '1234567820', 'Cita Wiyaninta', '7', 'Islam', 'Perempuan', 0, 25.8, 0, 0, 82, 1),
(6, '1234567821', 'Hanggini Puri Retno', '7', 'Hindu', 'Perempuan', 0, 25.8, 0, 0, 73, 1),
(7, '1234567822', 'Yuli Rahmawati', '7', 'Kristen', 'Perempuan', 0, 25.9, 0, 0, 69, 1),
(8, '1234567823', 'Pevita Pearce', '7', 'Islam', 'Perempuan', 0, 26.5, 0, 0, 91, 1),
(9, '1234567824', 'Rizki Tsuma Jaya', '7', 'Islam', 'Laki-Laki', 0, 26.5, 0, 0, 66, 1),
(10, '1234567825', 'Nurdin Rezmani', '7', 'Islam', 'Laki-Laki', 0, 26.7, 0, 0, 94, 1),
(11, '1234567826', 'Akhmad Sasongko', '7', 'Islam', 'Laki-Laki', 0, 27, 0, 0, 90, 1),
(12, '1234567827', 'Raisa Andriana', '7', 'Islam', 'Perempuan', 0, 27.1, 0, 0, 84, 1),
(13, '1234567828', 'Monita Tahalea', '7', 'Islam', 'Perempuan', 0, 27, 0, 0, 79, 1),
(14, '1234567829', 'Jesika Iskandar', '7', 'Islam', 'Perempuan', 0, 28.4, 0, 0, 87, 1),
(15, '1234567830', 'Melody Amade', '8', 'Islam', 'Perempuan', 0, 24.6, 0, 0, 81, 1),
(16, '1234567831', 'Daniel Reynando', '8', 'Islam', 'Laki-Laki', 0, 23.7, 0, 0, 83, 1),
(17, '1234567832', 'Firanti Maulida Putri', '8', 'Hindu', 'Perempuan', 0, 24.1, 0, 0, 74, 1),
(19, '1234567834', 'Rezki Fitrah', '8', 'Kristen', 'Laki-Laki', 0, 22, 0, 0, 75, 1),
(20, '1234567835', 'Daniel Mananta', '8', 'Katholik', 'Laki-Laki', 0, 26.9, 0, 0, 94, 1),
(21, '1234567836', 'Dessy Mayang Sari', '8', 'Budha', 'Perempuan', 0, 27, 0, 0, 92, 1),
(22, '1234567837', 'Hansa Ufairani Ramadhan', '9', 'Katholik', 'Perempuan', 0, 27, 0, 0, 96, 1),
(23, '1234567838', 'Dewi Purmala Sari', '9', 'Islam', 'Perempuan', 0, 27.1, 0, 0, 70, 1),
(24, '1234567839', 'Sesarika', '9', 'Islam', 'Perempuan', 0, 27.1, 0, 0, 80, 1),
(25, '1234567840', 'Priska Agustina', '9', 'Islam', 'Perempuan', 0, 27.2, 0, 0, 67, 1),
(26, '1234567841', 'Dini Antika', '9', 'Islam', 'Perempuan', 0, 27.2, 0, 0, 65, 1),
(27, '1234567842', 'Hesti Yulia Rosadi', '9', 'Islam', 'Perempuan', 0, 27.3, 0, 0, 69, 1),
(28, '1234567843', 'Dandi Irawan', '7', 'Katholik', 'Laki-Laki', 0, 27.3, 0, 0, 68, 1),
(29, '1234567844', 'Dude Harlino', '7', 'Islam', 'Laki-Laki', 0, 27.4, 0, 0, 80, 1),
(30, '1234567845', 'Bagus Prakoso', '7', 'Islam', 'Laki-Laki', 0, 27.4, 0, 0, 88, 1),
(31, '1234567846', 'Yudi Waryadi', '7', 'Islam', 'Laki-Laki', 0, 27.5, 0, 0, 95, 1),
(32, '1234567847', 'Desta Reynaldi', '7', 'Budha', 'Laki-Laki', 0, 27.5, 0, 0, 79, 1),
(33, '1234567848', 'Jakaria Sawerna', '7', 'Islam', 'Laki-Laki', 0, 27.6, 0, 0, 74, 1),
(34, '1234567849', 'Ruben Onsu', '8', 'Islam', 'Laki-Laki', 0, 27.6, 0, 0, 83, 1),
(35, '1234567850', 'Lucky Tama', '7', 'Islam', 'Laki-Laki', 0, 27.7, 0, 0, 75, 1),
(36, '1234567851', 'Gagah Perdana', '8', 'Islam', 'Laki-Laki', 0, 27.7, 0, 0, 75, 1),
(37, '1234567852', 'Laode Muhammad', '7', 'Islam', 'Laki-Laki', 0, 27.8, 0, 0, 72, 1),
(38, '1234567853', 'Fawwas Kurniawan', '8', 'Islam', 'Laki-Laki', 0, 27.8, 0, 0, 85, 1),
(39, '1234567854', 'Silvi Yuliantika', '7', 'Islam', 'Perempuan', 0, 27.9, 0, 0, 86, 1),
(40, '1234567855', 'Fatimah Azzahra', '8', 'Islam', 'Perempuan', 0, 27.9, 0, 0, 93, 1),
(41, '1234567856', 'Anisa Maulida Purnama', '8', 'Islam', 'Perempuan', 0, 28, 0, 0, 95, 1),
(42, '1234567857', 'Marlev Maenaki', '8', 'Katholik', 'Laki-Laki', 0, 28, 0, 0, 86, 1),
(43, '1234567858', 'Setya Adi Nugroho', '7', 'Islam', 'Laki-Laki', 0, 28.1, 0, 0, 79, 1),
(44, '1234567859', 'Tsummo Aji', '7', 'Islam', 'Laki-Laki', 0, 28.1, 0, 0, 75, 1),
(45, '1234567860', 'Nabilla Kania Ningrum', '7', 'Islam', 'Perempuan', 0, 28.2, 0, 0, 78, 1),
(46, '1234567861', 'Essy Safitri', '7', 'Islam', 'Perempuan', 0, 28.2, 0, 0, 80, 1),
(47, '1234567862', 'Senjani Julaeshi', '7', 'Kristen', 'Perempuan', 0, 28.3, 0, 0, 92, 1),
(48, '1234567863', 'Gita Iman Sari', '7', 'Kristen', 'Perempuan', 0, 28.3, 0, 0, 82, 1),
(49, '1234567864', 'Risa Sarasvati', '7', 'Kristen', 'Perempuan', 0, 28.4, 0, 0, 73, 1),
(50, '1234567865', 'Isyana Dwi Puwaka', '7', 'Kristen', 'Perempuan', 0, 28.4, 0, 0, 69, 1),
(51, '1234567866', 'Irene Andoni', '7', 'Budha', 'Perempuan', 0, 28.5, 0, 0, 91, 1),
(52, '1234567867', 'Lala Karmela', '7', 'Hindu', 'Perempuan', 0, 28.5, 0, 0, 66, 1),
(53, '1234567868', 'Petra Sihombing', '7', 'Lainnya', 'Laki-Laki', 0, 28.6, 0, 0, 94, 1),
(54, '1234567869', 'Hamish Daud', '7', 'Hindu', 'Laki-Laki', 0, 28.6, 0, 0, 90, 1),
(55, '1234567870', 'Keenan Pearce', '7', 'Lainnya', 'Laki-Laki', 0, 28.7, 0, 0, 84, 1),
(56, '1234567871', 'Donita hamiyan', '7', 'Islam', 'Perempuan', 0, 28.7, 0, 0, 79, 1),
(57, '1234567872', 'Fachrur Rozi', '7', 'Hindu', 'Laki-Laki', 0, 28.9, 0, 0, 87, 1),
(58, '1234567873', 'Bella Nur Hidayah Aesyi', '7', 'Hindu', 'Perempuan', 0, 28.9, 0, 0, 81, 1),
(59, '1234567874', 'Tatania Mellani', '7', 'Lainnya', 'Perempuan', 0, 30, 0, 0, 83, 1),
(60, '1234567875', 'Sekar Melati Ayu', '7', 'Budha', 'Perempuan', 0, 30, 0, 0, 74, 1),
(61, '1234567876', 'Teguh Wahyu Anggara', '7', 'Hindu', 'Laki-Laki', 0, 30.1, 0, 0, 72, 1),
(62, '1234567877', 'Murni Dwi Alfiyanti', '7', 'Islam', 'Perempuan', 0, 30.1, 0, 0, 75, 1),
(63, '1234567878', 'Fitri Ameliya', '7', 'Budha', 'Perempuan', 0, 30.2, 0, 0, 94, 1),
(64, '1234567879', 'Dicky Zulianto', '7', 'Islam', 'Laki-Laki', 0, 30.2, 0, 0, 92, 1),
(65, '1234567880', 'Diana Rakhmawati', '7', 'Islam', 'Perempuan', 0, 30.3, 0, 0, 96, 1),
(66, '1234567881', 'Pupu Anggita Sari', '7', 'Hindu', 'Perempuan', 0, 30.3, 0, 0, 70, 1),
(67, '1234567882', 'Nabil Firdaus', '7', 'Islam', 'Laki-Laki', 0, 30.4, 0, 0, 80, 1),
(68, '1234567883', 'Aditya Rahman', '7', 'Islam', 'Laki-Laki', 0, 30.4, 0, 0, 67, 1),
(69, '1234567884', 'Nesya Vatty Azzahra', '7', 'Islam', 'Perempuan', 0, 30.5, 0, 0, 65, 1),
(70, '1234567885', 'Fatmawati', '7', 'Budha', 'Perempuan', 0, 30.5, 0, 0, 69, 1),
(71, '1234567886', 'Fadilla Utami', '7', 'Islam', 'Perempuan', 0, 30.6, 0, 0, 68, 1),
(72, '1234567887', 'Fahni Nesa Khulqi', '7', 'Islam', 'Perempuan', 0, 30.6, 0, 0, 80, 1),
(73, '1234567888', 'Anggita Fitriana Ratih', '7', 'Islam', 'Perempuan', 0, 30.7, 0, 0, 88, 1),
(74, '1234567889', 'Anggi Kusuma Putri', '7', 'Islam', 'Perempuan', 0, 30.7, 0, 0, 95, 1),
(75, '1234567890', 'Anggraeni Dias Saputri', '7', 'Islam', 'Perempuan', 0, 30.8, 0, 0, 79, 1),
(76, '1234567891', 'Irma Suryani Sofyan', '7', 'Islam', 'Perempuan', 0, 30.8, 0, 0, 74, 1),
(77, '1234567892', 'Yezita Kumala Wongso', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 83, 1),
(78, '1234567893', 'Dwi Kusumastuti', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 75, 1),
(79, '1234567894', 'Nur Muhammad', '7', 'Islam', 'Laki-Laki', 0, 31, 0, 0, 75, 1),
(80, '1234567895', 'Tan Halim Perdana', '7', 'Islam', 'Laki-Laki', 0, 31.1, 0, 0, 72, 1),
(81, '1234567896', 'Diki Hidayatulloh', '7', 'Islam', 'Laki-Laki', 0, 31.1, 0, 0, 85, 1),
(82, '1234567897', 'Audrey Bella Tantowi', '7', 'Islam', 'Perempuan', 0, 31.2, 0, 0, 86, 1),
(83, '1234567898', 'Berlian Amalia Burhan', '7', 'Katholik', 'Perempuan', 0, 31.2, 0, 0, 93, 1),
(84, '1234567899', 'Annisa Dian Pertiwi', '7', 'Islam', 'Perempuan', 0, 31.3, 0, 0, 95, 1),
(85, '1234567900', 'Budi Haryanto', '7', 'Budha', 'Laki-Laki', 0, 31.3, 0, 0, 86, 1),
(86, '1234567901', 'Dwi wira surachandra ', '7', 'Islam', 'Laki-Laki', 0, 25.1, 0, 0, 79, 1),
(87, '1234567902', 'Denis Muhammad Irfan ', '7', 'Islam', 'Laki-Laki', 0, 25.1, 0, 0, 84, 1),
(88, '1234567903', 'Dwi Laksana Bhakti ', '7', 'Islam', 'Laki-Laki', 0, 25.2, 0, 0, 79, 1),
(89, '1234567904', 'muhammad yusuf ', '7', 'Islam', 'Laki-Laki', 0, 25.2, 0, 0, 87, 1),
(90, '1234567905', 'Gamaliel Candra Winata', '7', 'Islam', 'Laki-Laki', 0, 25.3, 0, 0, 81, 1),
(91, '1234567906', 'delsa satya pratama ', '7', 'Islam', 'Laki-Laki', 0, 25.3, 0, 0, 83, 1),
(92, '1234567907', 'Yogi Rosi Prasetyo ', '7', 'Islam', 'Laki-Laki', 0, 25.4, 0, 0, 74, 1),
(93, '1234567908', 'Juan Yoshino ', '7', 'Islam', 'Laki-Laki', 0, 25.7, 0, 0, 72, 1),
(94, '1234567909', 'Rizal Ermanto ', '7', 'Islam', 'Laki-Laki', 0, 25.7, 0, 0, 75, 1),
(95, '1234567910', 'dinda agung apriyana ', '7', 'Islam', 'Laki-Laki', 0, 26.2, 0, 0, 94, 1),
(96, '1234567911', 'Suherdi ', '7', 'Islam', 'Laki-Laki', 0, 26.2, 0, 0, 92, 1),
(97, '1234567912', 'Ahmad Hasan N ', '7', 'Islam', 'Laki-Laki', 0, 26.3, 0, 0, 96, 1),
(98, '1234567913', 'Deri Likandra Triputra ', '7', 'Islam', 'Laki-Laki', 0, 26.3, 0, 0, 70, 1),
(99, '1234567914', 'Muhamad Rifly Robiana ', '7', 'Islam', 'Laki-Laki', 0, 26.4, 0, 0, 80, 1),
(100, '1234567915', 'Daniel Oktario ', '7', 'Islam', 'Laki-Laki', 0, 26.1, 0, 0, 67, 1),
(101, '1234567916', 'Israqi Atsiruddin Sidqi Ramdhani ', '7', 'Islam', 'Laki-Laki', 0, 25.8, 0, 0, 65, 1),
(102, '1234567917', 'Ristami annisa ', '7', 'Islam', 'Perempuan', 0, 25.8, 0, 0, 69, 1),
(103, '1234567918', 'Evelyn Tanoe', '7', 'Islam', 'Perempuan', 0, 25.9, 0, 0, 86, 1),
(104, '1234567919', 'Dhea Novia Parhana ', '7', 'Hindu', 'Perempuan', 0, 26.5, 0, 0, 93, 1),
(105, '1234567920', 'Ajeng Gerhana Wulan ', '7', 'Hindu', 'Perempuan', 0, 26.5, 0, 0, 95, 1),
(106, '1234567921', 'Annisa Maretiamy ', '7', 'Hindu', 'Perempuan', 0, 26.7, 0, 0, 86, 1),
(107, '1234567922', 'Lassandra Kattyana Santos ', '7', 'Hindu', 'Perempuan', 0, 27, 0, 0, 79, 1),
(108, '1234567923', 'Lestari pratiwi ', '7', 'Budha', 'Perempuan', 0, 27.1, 0, 0, 84, 1),
(109, '1234567924', 'Muni Ledia Astuti ', '7', 'Budha', 'Perempuan', 0, 27, 0, 0, 79, 1),
(110, '1234567925', 'Meisa damayanti ', '7', 'Budha', 'Perempuan', 0, 28.4, 0, 0, 87, 1),
(111, '1234567926', 'Sri Dewi Cahyadi ', '7', 'Budha', 'Perempuan', 0, 24.6, 0, 0, 81, 1),
(112, '1234567927', 'Indri Zaqiah ', '7', 'Katholik', 'Perempuan', 0, 23.7, 0, 0, 83, 1),
(113, '1234567928', 'Nadya Saphira Esfandiari ', '7', 'Katholik', 'Perempuan', 0, 24.1, 0, 0, 74, 1),
(114, '1234567929', 'Winda ayulia agustina ', '7', 'Katholik', 'Perempuan', 0, 25.5, 0, 0, 72, 1),
(115, '1234567930', 'Rani nuryati ', '7', 'Katholik', 'Perempuan', 0, 22, 0, 0, 75, 1),
(116, '1234567931', 'Mariam Marianti ', '7', 'Katholik', 'Perempuan', 0, 26.9, 0, 0, 94, 1),
(117, '1234567932', 'Gina Sonia ', '7', 'Katholik', 'Perempuan', 0, 27, 0, 0, 92, 1),
(118, '1234567933', 'Aulia Rahmawaty ', '7', 'Kristen', 'Perempuan', 0, 27, 0, 0, 96, 1),
(119, '1234567934', 'Susanti ', '7', 'Kristen', 'Perempuan', 0, 27.1, 0, 0, 70, 1),
(120, '1234567935', 'Putri marytha setiadi ', '7', 'Kristen', 'Perempuan', 0, 27.1, 0, 0, 80, 1),
(121, '1234567936', 'Selisa Fatimah ', '7', 'Kristen', 'Perempuan', 0, 27.2, 0, 0, 67, 1),
(122, '1234567937', 'Khansa R ', '7', 'Kristen', 'Perempuan', 0, 27.2, 0, 0, 65, 1),
(123, '1234567938', 'Risma nopianti ', '7', 'Kristen', 'Perempuan', 0, 27.3, 0, 0, 69, 1),
(124, '1234567939', 'Lulu adilah fasya  ', '7', 'Kristen', 'Perempuan', 0, 27.3, 0, 0, 68, 1),
(125, '1234567940', 'Raka nurmawan  ', '7', 'Islam', 'Laki-Laki', 0, 27.4, 0, 0, 80, 1),
(126, '1234567941', 'Ridwan Raynaldi Putra ', '7', 'Islam', 'Laki-Laki', 0, 27.4, 0, 0, 88, 1),
(127, '1234567942', 'Adi Darmawan ', '7', 'Islam', 'Laki-Laki', 0, 27.5, 0, 0, 95, 1),
(128, '1234567943', 'Avrialy kosvi ', '7', 'Islam', 'Laki-Laki', 0, 27.5, 0, 0, 79, 1),
(129, '1234567944', 'Lucky Wiratama Suganda ', '7', 'Islam', 'Laki-Laki', 0, 27.6, 0, 0, 74, 1),
(130, '1234567945', 'Boy William Nuon ', '7', 'Islam', 'Laki-Laki', 0, 27.6, 0, 0, 83, 1),
(131, '1234567946', 'Rizky Irhas Firdaus ', '7', 'Katholik', 'Laki-Laki', 0, 27.7, 0, 0, 94, 1),
(132, '1234567947', 'Robbi sujana ', '7', 'Katholik', 'Laki-Laki', 0, 27.7, 0, 0, 92, 1),
(133, '1234567948', 'Renaya Sarasti ', '7', 'Islam', 'Perempuan', 0, 27.8, 0, 0, 96, 1),
(134, '1234567949', 'Jayanti Widiastuti ', '7', 'Islam', 'Perempuan', 0, 27.8, 0, 0, 70, 1),
(135, '1234567950', 'Armelia nur asyiffa  ', '7', 'Islam', 'Perempuan', 0, 27.9, 0, 0, 80, 1),
(136, '1234567951', 'Annisa Ayu Siwi ', '7', 'Islam', 'Perempuan', 0, 27.9, 0, 0, 67, 1),
(137, '1234567952', 'Kirana Citra Destiyanti ', '7', 'Islam', 'Perempuan', 0, 28, 0, 0, 65, 1),
(138, '1234567953', 'Ichsan nurmansyah ', '7', 'Islam', 'Laki-Laki', 0, 28, 0, 0, 69, 1),
(139, '1234567954', 'Wahyu Aji Komara ', '7', 'Islam', 'Laki-Laki', 0, 28.1, 0, 0, 68, 1),
(140, '1234567955', 'afgani maulana a.s. ', '7', 'Islam', 'Laki-Laki', 0, 28.1, 0, 0, 80, 1),
(141, '1234567956', 'Feggy Rizkiana Herman ', '7', 'Islam', 'Laki-Laki', 0, 28.5, 0, 0, 88, 1),
(142, '1234567957', 'Raka Gustiana ', '7', 'Islam', 'Laki-Laki', 0, 28.6, 0, 0, 95, 1),
(143, '1234567958', 'Deri Fauzi ', '7', 'Islam', 'Laki-Laki', 0, 28.6, 0, 0, 79, 1),
(144, '1234567959', 'Israqi Atsiruddin Sidqi Ramdhani ', '7', 'Budha', 'Laki-Laki', 0, 28.7, 0, 0, 74, 1),
(145, '1234567960', 'ahmad fauzan naufal  ', '7', 'Islam', 'Laki-Laki', 0, 28.7, 0, 0, 83, 1),
(146, '1234567961', 'PujiRidwansyah ', '7', 'Budha', 'Laki-Laki', 0, 28.9, 0, 0, 88, 1),
(147, '1234567962', 'moch adnand heriansyah ', '7', 'Islam', 'Laki-Laki', 0, 28.9, 0, 0, 95, 1),
(148, '1234567963', 'Rendi Agus Tirtana ', '7', 'Islam', 'Laki-Laki', 0, 30, 0, 0, 79, 1),
(149, '1234567964', 'Muhammad Rizki Alhafizh ', '7', 'Islam', 'Laki-Laki', 0, 30, 0, 0, 74, 1),
(150, '1234567965', 'ari ramdani ', '7', 'Islam', 'Laki-Laki', 0, 30.1, 0, 0, 83, 1),
(151, '1234567966', 'Muhammad Itsal Septian Rahman ', '7', 'Islam', 'Laki-Laki', 0, 30.1, 0, 0, 75, 1),
(152, '1234567967', 'Hilmy MaulanaRachmawan ', '7', 'Islam', 'Laki-Laki', 0, 30.2, 0, 0, 75, 1),
(153, '1234567968', 'furqon saefulloh ', '7', 'Islam', 'Laki-Laki', 0, 30.2, 0, 0, 72, 1),
(154, '1234567969', 'Dicky Sudrajat ', '7', 'Islam', 'Laki-Laki', 0, 30.3, 0, 0, 85, 1),
(155, '1234567970', 'muhammad aldi ramdhani ', '7', 'Islam', 'Laki-Laki', 0, 30.3, 0, 0, 86, 1),
(156, '1234567971', 'Peter Sulaeman ', '7', 'Lainnya', 'Laki-Laki', 0, 30.4, 0, 0, 93, 1),
(157, '1234567972', 'Iman  ', '7', 'Lainnya', 'Laki-Laki', 0, 30.4, 0, 0, 95, 1),
(158, '1234567973', 'Suci Ananda ', '7', 'Budha', 'Perempuan', 0, 30.5, 0, 0, 86, 1),
(159, '1234567974', 'Ristya ariyani ', '7', 'Hindu', 'Perempuan', 0, 30.5, 0, 0, 79, 1),
(160, '1234567975', 'Citra Pradita Effendi ', '7', 'Hindu', 'Perempuan', 0, 30.6, 0, 0, 75, 1),
(161, '1234567976', 'ita juwita ', '7', 'Islam', 'Perempuan', 0, 30.6, 0, 0, 78, 1),
(162, '1234567977', 'Ana Muslimah ', '7', 'Islam', 'Perempuan', 0, 30.7, 0, 0, 80, 1),
(163, '1234567978', 'Siti Nurjanah ', '7', 'Islam', 'Perempuan', 0, 30.7, 0, 0, 92, 1),
(164, '1234567979', 'Diny Maryani Hermawan ', '7', 'Islam', 'Perempuan', 0, 30.8, 0, 0, 82, 1),
(165, '1234567980', 'Mita Amelia ', '7', 'Islam', 'Perempuan', 0, 30.8, 0, 0, 73, 1),
(166, '1234567981', 'Ressa Pupu Handayani ', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 69, 1),
(167, '1234567982', 'Anisa Ayu Parwati ', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 91, 1),
(168, '1234567983', 'Ira Mariana ', '7', 'Islam', 'Perempuan', 0, 31, 0, 0, 66, 1),
(169, '1234567984', 'Tatie Mulyati ', '7', 'Islam', 'Perempuan', 0, 31.1, 0, 0, 94, 1),
(170, '1234567985', 'Ranti Prahastanti ', '7', 'Islam', 'Perempuan', 0, 31.1, 0, 0, 90, 1),
(171, '1234567986', 'Esya Swasti Sukmatia ', '7', 'Islam', 'Perempuan', 0, 31.2, 0, 0, 84, 1),
(172, '1234567987', 'anggi ratnasari ', '7', 'Islam', 'Perempuan', 0, 31.2, 0, 0, 79, 1),
(173, '1234567988', 'Regina Eldinia Rahayu ', '7', 'Islam', 'Perempuan', 0, 31.3, 0, 0, 87, 1),
(174, '1234567989', 'Rivani Asri Pratiwi ', '7', 'Islam', 'Perempuan', 0, 31.3, 0, 0, 81, 1),
(175, '1234567990', 'yolanda ayu syafira ', '7', 'Islam', 'Perempuan', 0, 25.1, 0, 0, 83, 1),
(176, '1234567991', 'Nurhasannah Safitri ', '7', 'Islam', 'Perempuan', 0, 25.1, 0, 0, 74, 1),
(177, '1234567992', 'Kania Anisa Lestari ', '7', 'Budha', 'Perempuan', 0, 25.2, 0, 0, 72, 1),
(178, '1234567993', 'nitasukmala ', '7', 'Islam', 'Perempuan', 0, 25.2, 0, 0, 75, 1),
(179, '1234567994', 'Putri Medina Agrezta ', '7', 'Islam', 'Perempuan', 0, 25.3, 0, 0, 94, 1),
(180, '1234567995', 'wendyna oktaviani ', '7', 'Islam', 'Perempuan', 0, 25.3, 0, 0, 92, 1),
(181, '1234567996', 'hanna tasya ', '7', 'Islam', 'Perempuan', 0, 25.4, 0, 0, 96, 1),
(182, '1234567997', 'Evi Hafizah Rahma ', '7', 'Islam', 'Perempuan', 0, 25.7, 0, 0, 70, 1),
(183, '1234567998', 'Erika Putri Cantika', '7', 'Islam', 'Perempuan', 0, 25.7, 0, 0, 80, 1),
(184, '1234567999', 'zella zakiyah ', '7', 'Islam', 'Perempuan', 0, 26.2, 0, 0, 67, 1),
(185, '1234568000', 'Syahdan Dwi Cahyo ', '7', 'Islam', 'Laki-Laki', 0, 26.2, 0, 0, 65, 1),
(186, '1234568001', 'yogie nugraha ', '7', 'Islam', 'Laki-Laki', 0, 26.3, 0, 0, 69, 1),
(187, '1234568002', 'Agus Setiana ', '7', 'Islam', 'Laki-Laki', 0, 26.3, 0, 0, 68, 1),
(188, '1234568003', 'andrian kusnadi ', '7', 'Islam', 'Laki-Laki', 0, 26.4, 0, 0, 80, 1),
(189, '1234568004', 'irfan adi pamuji ', '7', 'Islam', 'Laki-Laki', 0, 26.1, 0, 0, 78, 1),
(190, '1234568005', 'Bagus Rio Prasojo ', '7', 'Islam', 'Laki-Laki', 0, 25.8, 0, 0, 80, 1),
(191, '1234568006', 'Bayu Nugraha Libriansyah ', '7', 'Islam', 'Laki-Laki', 0, 25.8, 0, 0, 92, 1),
(192, '1234568007', 'arief sudianto ', '7', 'Islam', 'Laki-Laki', 0, 25.9, 0, 0, 82, 1),
(193, '1234568008', 'Rizky syaeful anwar ', '7', 'Islam', 'Laki-Laki', 0, 26.5, 0, 0, 73, 1),
(194, '1234568009', 'Yugo Sudirman', '7', 'Islam', 'Laki-Laki', 0, 28.5, 0, 0, 69, 1),
(195, '1234568010', 'Nur Devi Yusiawati Gumelar ', '7', 'Islam', 'Perempuan', 0, 28.6, 0, 0, 91, 1),
(196, '1234568011', 'juanita nurfadhillah hafyani ', '7', 'Islam', 'Perempuan', 0, 28.6, 0, 0, 66, 1),
(197, '1234568012', 'Kareyna Sugiono ', '7', 'Islam', 'Perempuan', 0, 28.7, 0, 0, 94, 1),
(198, '1234568013', 'Revina Sadiyyah Fatimah ', '7', 'Islam', 'Perempuan', 0, 28.7, 0, 0, 90, 1),
(199, '1234568014', 'Anjani Meilawati Dewi ', '7', 'Islam', 'Perempuan', 0, 28.9, 0, 0, 84, 1),
(200, '1234568015', 'Kurnia Imbar Sandi .S ', '7', 'Islam', 'Perempuan', 0, 28.9, 0, 0, 79, 1),
(201, '1234568016', 'Rida Himyati Hasna ', '7', 'Islam', 'Perempuan', 0, 30, 0, 0, 87, 1),
(202, '1234568017', 'Citra Mega Lestari ', '7', 'Islam', 'Perempuan', 0, 30, 0, 0, 81, 1),
(203, '1234568018', 'Hilda Nathaniela ', '7', 'Islam', 'Perempuan', 0, 30.1, 0, 0, 83, 1),
(204, '1234568019', 'Ninne Nuraida ', '7', 'Islam', 'Perempuan', 0, 30.1, 0, 0, 74, 1),
(205, '1234568020', 'lusianasaraswati dewi ', '7', 'Islam', 'Perempuan', 0, 30.2, 0, 0, 72, 1),
(206, '1234568021', 'ayudhia chandra pusparini  ', '7', 'Islam', 'Perempuan', 0, 30.2, 0, 0, 75, 1),
(207, '1234568022', 'Agnes Dirgantini Hakim ', '7', 'Islam', 'Perempuan', 0, 30.3, 0, 0, 94, 1),
(208, '1234568023', 'sinta komara  ', '7', 'Islam', 'Perempuan', 0, 30.3, 0, 0, 92, 1),
(209, '1234568024', 'Hazana Delfani ', '7', 'Islam', 'Perempuan', 0, 30.4, 0, 0, 96, 1),
(210, '1234568025', 'Siti Nurmala Asy\'syifa ', '7', 'Islam', 'Perempuan', 0, 30.4, 0, 0, 70, 1),
(211, '1234568026', 'Riska Gita Suhana ', '7', 'Islam', 'Perempuan', 0, 30.5, 0, 0, 80, 1),
(212, '1234568027', 'Yolanda Novitri Setiawan ', '7', 'Islam', 'Perempuan', 0, 30.5, 0, 0, 67, 1),
(213, '1234568028', 'Gracia vini ', '7', 'Islam', 'Perempuan', 0, 30.6, 0, 0, 65, 1),
(214, '1234568029', 'Novianti Warnerin ', '7', 'Islam', 'Perempuan', 0, 30.6, 0, 0, 69, 1),
(215, '1234568030', 'Ckasinta Winda S ', '7', 'Islam', 'Perempuan', 0, 30.7, 0, 0, 68, 1),
(216, '1234568031', 'Ghita Listyawati Piayu ', '7', 'Islam', 'Perempuan', 0, 30.7, 0, 0, 80, 1),
(217, '1234568032', 'Wulan Guritno Eri ', '7', 'Islam', 'Perempuan', 0, 30.8, 0, 0, 88, 1),
(218, '1234568033', 'Ayudia Bing Slamet', '7', 'Islam', 'Perempuan', 0, 30.8, 0, 0, 95, 1),
(219, '1234568034', 'Rara Ajeng Kusumadewi', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 79, 1),
(220, '1234568035', 'Muhammad doddy djakaria ', '7', 'Islam', 'Laki-Laki', 0, 30.9, 0, 0, 74, 1),
(221, '1234568036', 'Adnan Saefulloh ', '7', 'Islam', 'Laki-Laki', 0, 31, 0, 0, 83, 1),
(222, '1234568037', 'Arya Mahardika ', '7', 'Islam', 'Laki-Laki', 0, 31.1, 0, 0, 75, 1),
(223, '1234568038', 'alamda verdiyana ', '7', 'Islam', 'Laki-Laki', 0, 31.1, 0, 0, 75, 1),
(224, '1234568039', 'agungsaputra ', '7', 'Islam', 'Laki-Laki', 0, 31.2, 0, 0, 72, 1),
(225, '1234568040', 'Erwin Bani Adam ', '7', 'Islam', 'Laki-Laki', 0, 31.2, 0, 0, 85, 1),
(226, '1234568041', 'arif santoso ', '7', 'Islam', 'Laki-Laki', 0, 31.3, 0, 0, 86, 1),
(227, '1234568042', 'Muhammad Neval Maldini ', '7', 'Islam', 'Laki-Laki', 0, 31.3, 0, 0, 93, 1),
(228, '1234568043', 'Zaenal Abidin ', '7', 'Islam', 'Laki-Laki', 0, 25.1, 0, 0, 95, 1),
(229, '1234568044', 'Maulana Alif Anugrah ', '7', 'Islam', 'Laki-Laki', 0, 25.1, 0, 0, 86, 1),
(230, '1234568045', 'Ferdinand Is Suhendra ', '7', 'Islam', 'Laki-Laki', 0, 25.2, 0, 0, 79, 1),
(231, '1234568046', 'Saepuloh ', '7', 'Islam', 'Laki-Laki', 0, 25.2, 0, 0, 75, 1),
(232, '1234568047', 'muhammad ferdi ', '7', 'Islam', 'Laki-Laki', 0, 25.3, 0, 0, 78, 1),
(233, '1234568048', 'Dani Irawan ', '7', 'Islam', 'Laki-Laki', 0, 25.3, 0, 0, 80, 1),
(234, '1234568049', 'Brama lessandro santos ', '7', 'Islam', 'Laki-Laki', 0, 25.4, 0, 0, 92, 1),
(235, '1234568050', 'Rudi Herlambang', '7', 'Islam', 'Laki-Laki', 0, 25.7, 0, 0, 82, 1),
(236, '1234568051', 'windi ayu ', '7', 'Islam', 'Perempuan', 0, 25.7, 0, 0, 73, 1),
(237, '1234568052', 'Yulia Nur Safitri ', '7', 'Islam', 'Perempuan', 0, 26.2, 0, 0, 69, 1),
(238, '1234568053', 'Neneng Royani ', '7', 'Islam', 'Perempuan', 0, 26.2, 0, 0, 91, 1),
(239, '1234568054', 'Hanasira Afifa ', '7', 'Islam', 'Perempuan', 0, 26.3, 0, 0, 95, 1),
(240, '1234568055', 'Dwi Putri Januari ', '7', 'Islam', 'Perempuan', 0, 26.3, 0, 0, 86, 1),
(241, '1234568056', 'indah nur maulida ', '7', 'Islam', 'Perempuan', 0, 26.4, 0, 0, 79, 1),
(242, '1234568057', 'Dinda Sapta Carolina ', '7', 'Islam', 'Perempuan', 0, 26.1, 0, 0, 75, 1),
(243, '1234568058', 'Rosyanda Sastie Jagattri ', '7', 'Islam', 'Perempuan', 0, 25.8, 0, 0, 78, 1),
(244, '1234568059', 'Sonia Oktaviana ', '7', 'Islam', 'Perempuan', 0, 25.8, 0, 0, 80, 1),
(245, '1234568060', 'annisa dessetiani lee ', '7', 'Islam', 'Perempuan', 0, 25.9, 0, 0, 70, 1),
(246, '1234568061', 'Rachmawati sabilarizki ', '7', 'Islam', 'Perempuan', 0, 26.5, 0, 0, 80, 1),
(247, '1234568062', 'Bella Putri Nastiti ', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 67, 1),
(248, '1234568063', 'Pinaandriyani ', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 65, 1),
(249, '1234568064', 'Widi Dwi Adhawati ', '7', 'Islam', 'Perempuan', 0, 31, 0, 0, 69, 1),
(250, '1234568065', 'Isnaeni Handayani Mukti ', '7', 'Islam', 'Perempuan', 0, 31.1, 0, 0, 68, 1),
(251, '1234568066', 'Dita Julianti ', '7', 'Islam', 'Perempuan', 0, 31.1, 0, 0, 80, 1),
(252, '1234568067', 'Nurfa Resti Aulia ', '7', 'Islam', 'Perempuan', 0, 31.2, 0, 0, 88, 1),
(253, '1234568068', 'Salma Nur Aisy ', '7', 'Islam', 'Perempuan', 0, 31.2, 0, 0, 95, 1),
(254, '1234568069', 'suci wulan sari ', '7', 'Islam', 'Perempuan', 0, 31.3, 0, 0, 79, 1),
(255, '1234568070', 'Adelia Puspita', '7', 'Islam', 'Perempuan', 0, 31.3, 0, 0, 74, 1),
(256, '1234568071', 'Alfian Dwi Sukma', '7', 'Islam', 'Laki-Laki', 0, 25.1, 0, 0, 83, 1),
(257, '1234568072', 'Anan Winandar', '7', 'Islam', 'Laki-Laki', 0, 25.1, 0, 0, 75, 1),
(258, '1234568073', 'Asep Septian', '7', 'Islam', 'Laki-Laki', 0, 25.2, 0, 0, 75, 1),
(259, '1234568074', 'Bachtiar Saeful Bachri', '7', 'Islam', 'Laki-Laki', 0, 25.2, 0, 0, 69, 1),
(260, '1234568075', 'Bella Ayu Ratnasari', '7', 'Islam', 'Perempuan', 0, 25.3, 0, 0, 91, 1),
(261, '1234568076', 'Cahya Abdul Kholik', '7', 'Islam', 'Laki-Laki', 0, 25.3, 0, 0, 66, 1),
(262, '1234568077', 'Cahyadyana Fauzi', '7', 'Islam', 'Laki-Laki', 0, 25.4, 0, 0, 94, 1),
(263, '1234568078', 'Cahyaningsih', '7', 'Islam', 'Perempuan', 0, 25.7, 0, 0, 90, 1),
(264, '1234568079', 'Deni Priyatna', '7', 'Islam', 'Laki-Laki', 0, 25.7, 0, 0, 84, 1),
(265, '1234568080', 'Diky Haryanto', '7', 'Islam', 'Laki-Laki', 0, 26.2, 0, 0, 79, 1),
(266, '1234568081', 'Elvira Riana', '7', 'Islam', 'Perempuan', 0, 26.2, 0, 0, 87, 1),
(267, '1234568082', 'Erlita Indah A', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 81, 1),
(268, '1234568083', 'Eviratna Ningsih', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 83, 1),
(269, '1234568084', 'Fikri Fajra Pratama', '7', 'Islam', 'Laki-Laki', 0, 31, 0, 0, 74, 1),
(270, '1234568085', 'Gugun Agus Gunawan', '7', 'Islam', 'Laki-Laki', 0, 31.1, 0, 0, 72, 1),
(271, '1234568086', 'Intan Purnama Sari', '7', 'Islam', 'Perempuan', 0, 31.1, 0, 0, 75, 1),
(272, '1234568087', 'Isti Widiharyanti', '7', 'Islam', 'Perempuan', 0, 31.2, 0, 0, 94, 1),
(273, '1234568088', 'Khosriyani', '7', 'Islam', 'Perempuan', 0, 31.2, 0, 0, 92, 1),
(274, '1234568089', 'Millenia Delva Clarifta', '7', 'Islam', 'Perempuan', 0, 31.3, 0, 0, 96, 1),
(275, '1234568090', 'Mohammad Faisal Rosyad', '7', 'Islam', 'Laki-Laki', 0, 31.3, 0, 0, 70, 1),
(276, '1234568091', 'Nur Shinta Dewi', '7', 'Islam', 'Perempuan', 0, 25.1, 0, 0, 80, 1),
(277, '1234568092', 'Nur Indah Wulandari', '7', 'Islam', 'Perempuan', 0, 25.1, 0, 0, 67, 1),
(278, '1234568093', 'Nurul Annisa', '7', 'Islam', 'Perempuan', 0, 25.2, 0, 0, 65, 1),
(279, '1234568094', 'Rimawati', '7', 'Islam', 'Perempuan', 0, 25.2, 0, 0, 69, 1),
(280, '1234568095', 'Robby Anwar', '7', 'Islam', 'Laki-Laki', 0, 25.3, 0, 0, 68, 1),
(281, '1234568096', 'Rojannah', '7', 'Islam', 'Perempuan', 0, 25.3, 0, 0, 80, 1),
(282, '1234568097', 'Siti Aisyah', '7', 'Islam', 'Perempuan', 0, 25.4, 0, 0, 88, 1),
(283, '1234568098', 'Sujatmiko Dwi Purnomo', '7', 'Islam', 'Laki-Laki', 0, 25.7, 0, 0, 95, 1),
(284, '1234568099', 'Wika Muliya Sari', '7', 'Islam', 'Perempuan', 0, 25.7, 0, 0, 79, 1),
(285, '1234568100', 'Yuli Triangsih', '7', 'Islam', 'Perempuan', 0, 26.2, 0, 0, 74, 1),
(286, '1234568101', 'Alea Wibisono', '7', 'Islam', 'Perempuan', 0, 26.2, 0, 0, 65, 1),
(287, '1234568102', 'Nia Tamara', '7', 'Islam', 'Perempuan', 0, 30.9, 0, 0, 69, 1),
(288, '1234568103', 'Nizar Asharul Maulana', '7', 'Islam', 'Laki-Laki', 0, 30.9, 0, 0, 68, 1),
(289, '1234568104', 'Ranifah Dwi Lestari', '7', 'Islam', 'Perempuan', 0, 31, 0, 0, 80, 1),
(290, '1234568105', 'Luna Maya', '7', 'Islam', 'Perempuan', 0, 31.1, 0, 0, 88, 1),
(291, '1234568106', 'Abel Cantika', '7', 'Islam', 'Perempuan', 0, 31.1, 0, 0, 95, 1),
(292, '1234568107', 'Bobby Purba', '7', 'Islam', 'Laki-Laki', 0, 31.2, 0, 0, 79, 1),
(293, '1234568108', 'Steffan William', '7', 'Islam', 'Laki-Laki', 0, 31.2, 0, 0, 74, 1),
(294, '1234568109', 'Rifan Dwi Styawan', '7', 'Islam', 'Laki-Laki', 0, 31.3, 0, 0, 72, 1),
(295, '1234568110', 'Agung Budi Setyo', '7', 'Islam', 'Laki-Laki', 0, 31.3, 0, 0, 85, 1),
(296, '1234568111', 'Wenila Saputri', '7', 'Islam', 'Perempuan', 0, 25.1, 0, 0, 86, 1),
(297, '1234568112', 'Quenta Resnawari', '7', 'Islam', 'Perempuan', 0, 25.1, 0, 0, 93, 1),
(298, '1234568113', 'Anindhyta Syefta Putri', '7', 'Islam', 'Perempuan', 0, 25.2, 0, 0, 95, 1),
(299, '1234568114', 'Reynaldi Fero', '7', 'Islam', 'Laki-Laki', 0, 25.2, 0, 0, 86, 1),
(300, '1234568115', 'Dendi Apriadi', '7', 'Islam', 'Laki-Laki', 0, 25.3, 0, 0, 79, 1),
(301, '14523267', 'ini nadine', '7', 'Islam', 'Perempuan', 0, 0, 0, 0, 0, 1),
(302, '258', 'ini coba baru', '7', 'Islam', 'Perempuan', 0, 0, 0, 0, 0, 1),
(303, '1477', 'Coba murid baru', '7', 'Islam', 'Perempuan', 808, 0, 0, 0, 0, 1),
(304, '5001', 'Pendaftar satu', '7', 'Islam', 'Perempuan', 0, 0, 0, 80, 0, 1),
(305, '6001', 'Pendaftar dua', '7', 'Islam', 'Laki-Laki', 0, 0, 0, 80, 0, 1),
(306, '7001', 'pendaftar tiga', '7', 'Islam', 'Laki-Laki', 0, 0, 0, 93, 0, 1),
(307, '8001', 'Pendaftar empat', '7', 'Islam', 'Perempuan', 0, 0, 0, 80, 0, 1),
(308, '1234567819', 'Rahmaria Yunisa', '7', 'Islam', 'Perempuan', 0, 0, 0, 0, 0, 1),
(309, '', '', '7', 'Islam', '', 80, 0, 0, 0, 0, 1),
(310, '0426389062', 'Kartika Eka Putri Swasta', '7', 'Islam', 'Perempuan', 60, 0, 0, 0, 0, 1),
(311, '125478', 'Ong Seungwoo', '7', 'Islam', 'Laki-Laki', 0, 0, 0, 0, 0, 1),
(312, '5002', 'kocheng', '7', 'Islam', '', 6000, 0, 0, 0, 0, 1),
(313, '622', 'in', '7', 'Islam', '', 0, 0, 0, 0, 0, 1),
(314, '980001', 'okok', '7', 'Islam', '', 0, 0, 0, 0, 0, 1),
(315, '1234567833', 'Delima Indira', '7', 'Islam', 'Perempuan', 0, 0, 0, 0, 0, 1),
(316, '1001', 'Pendaftar satu', '7', 'Islam', '', 0, 0, 0, 0, 0, 2),
(317, '1002', 'pendaftar dua', '7', 'Islam', '', 0, 0, 0, 0, 0, 2),
(318, '14046', 'mcdu', '7', 'Islam', '', 0, 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `siswa_kelas_has_kelas_tambahan`
--

CREATE TABLE `siswa_kelas_has_kelas_tambahan` (
  `siswa_kelas_NISN` int(11) NOT NULL,
  `Kelas_tambahan_id_kelas_tambahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa_kelas_reguler_berjalan`
--

CREATE TABLE `siswa_kelas_reguler_berjalan` (
  `id_siswa_kelas_reguler_berjalan` int(5) NOT NULL,
  `id_kelas_reguler_berjalan` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_kelas_reguler_berjalan`
--

INSERT INTO `siswa_kelas_reguler_berjalan` (`id_siswa_kelas_reguler_berjalan`, `id_kelas_reguler_berjalan`, `nisn`) VALUES
(1, 3, '1234568090'),
(2, 3, '1234568109'),
(3, 3, '1234568110'),
(6, 4, '1001'),
(7, 4, '1002'),
(8, 4, '1003'),
(4, 4, '1234567900'),
(5, 4, '1234568042'),
(26, 5, '1234567816'),
(9, 5, '1477'),
(10, 5, '5001'),
(11, 5, '5002'),
(12, 5, '6001'),
(13, 5, '7001'),
(14, 5, '8001'),
(17, 6, '125478'),
(15, 6, '14045'),
(16, 6, '14046'),
(18, 6, '505050'),
(19, 6, '980001'),
(20, 7, '14523000'),
(21, 7, '14523267'),
(22, 7, '55555550'),
(23, 8, '0426389062'),
(24, 8, '1234567818'),
(25, 9, '1414523');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_kelas_tambahan_berjalan`
--

CREATE TABLE `siswa_kelas_tambahan_berjalan` (
  `id_siswa_kelas_tambahan_berjalan` int(5) NOT NULL,
  `id_kelas_tambahan_berjalan` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa_mutasi_keluar`
--

CREATE TABLE `siswa_mutasi_keluar` (
  `id_siswa_mutasi_keluar` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `surat_ket_pindah` text DEFAULT NULL,
  `surat_bebas_administrasi` text DEFAULT NULL,
  `sekolah_tujuan` varchar(30) NOT NULL,
  `status_siswa` enum('Diterima','Ditolak','Dicabut','') DEFAULT NULL,
  `berkas_1` text DEFAULT NULL,
  `berkas_2` text DEFAULT NULL,
  `berkas_3` text DEFAULT NULL,
  `berkas_4` text DEFAULT NULL,
  `berkas_5` text DEFAULT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `nisn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_mutasi_keluar`
--

INSERT INTO `siswa_mutasi_keluar` (`id_siswa_mutasi_keluar`, `nama`, `surat_ket_pindah`, `surat_bebas_administrasi`, `sekolah_tujuan`, `status_siswa`, `berkas_1`, `berkas_2`, `berkas_3`, `berkas_4`, `berkas_5`, `id_tahun_ajaran`, `nisn`) VALUES
(1, 'Mohammad Faisal Rosyad', 'Ketentuan Import Data Prestasi Siswa.pdf', 'Ketentuan Import Data Prestasi Siswa.pdf', 'SMP Negeri 5 yogyakarta', 'Diterima', NULL, NULL, NULL, NULL, NULL, 0, '1234568090'),
(2, '', 'Yuniar-Endah-Palupi-Pengembangan-Sistem-Informasi.pdf', 'JURNAL_SISTEM_INFORMASI_AKADEMIK_SMA_BER.pdf', 'SMP Baru', 'Diterima', 'on', 'on', 'on', NULL, NULL, 0, '1234567819'),
(3, '', 'New Picture.bmp', 'Untitled.epgz', 'ad', 'Diterima', 'on', 'on', 'on', NULL, NULL, 0, '1234567833');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_mutasi_masuk`
--

CREATE TABLE `siswa_mutasi_masuk` (
  `id_pendaftar_mutasi` int(10) NOT NULL,
  `nama_pendaftar_mutasi` varchar(200) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `agama` enum('Islam','Kristen','Katholik','Hindu','Budha','Lainnya') DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `sekolah_asal` varchar(40) DEFAULT NULL,
  `tahun_kelulusan` year(4) DEFAULT NULL,
  `nilai_un_bahasaindonesia` float DEFAULT NULL,
  `nilai_un_matematika` float DEFAULT NULL,
  `nilai_un_ipa` float DEFAULT NULL,
  `jumlah_nilai_un` float DEFAULT NULL,
  `nilai_ujian_masuk` float DEFAULT NULL,
  `status_siswa` enum('Diterima','Tidak Diterima','Dicabut') DEFAULT NULL,
  `surat_ket_nisn` text DEFAULT NULL,
  `fc_buku_rapor` text DEFAULT NULL,
  `fc_skhun` text DEFAULT NULL,
  `surat_ket_bangku` text DEFAULT NULL,
  `surat_ket_pindah` text DEFAULT NULL,
  `skck_kepsek` text DEFAULT NULL,
  `berkas_1` varchar(5) DEFAULT NULL,
  `berkas_2` varchar(5) DEFAULT NULL,
  `berkas_3` varchar(5) DEFAULT NULL,
  `berkas_4` varchar(5) DEFAULT NULL,
  `berkas_5` varchar(5) DEFAULT NULL,
  `terverifikasi` enum('Sudah Terverifikasi','Belum Terverifikasi') NOT NULL,
  `id_tahun_ajaran` int(10) NOT NULL,
  `nisn_pendaftar_mutasi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_sementara_simpan_prestasi`
--

CREATE TABLE `tabel_sementara_simpan_prestasi` (
  `id_tabel_sementara` int(5) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `prestasi_or` float NOT NULL,
  `prestasi_tahfidz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tahunajaran`
--

CREATE TABLE `tahunajaran` (
  `id_tahun_ajaran` int(10) NOT NULL,
  `tahun_ajaran` varchar(15) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL,
  `nama_file_kaldik` varchar(25) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahunajaran`
--

INSERT INTO `tahunajaran` (`id_tahun_ajaran`, `tahun_ajaran`, `semester`, `nama_file_kaldik`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(1, '2017/2018', 'ganjil', '2017/2018 ganjil', '2018-08-24', '2018-10-20'),
(2, '2017/2018', 'genap', '2017/2018 genap', '2018-10-24', '2018-12-31'),
(3, '2018/2019', 'ganjil', '2018/2019 ganjil', '2018-12-24', '2019-08-24'),
(5, '2018/2019', 'genap', '', '2019-08-14', '2019-12-27');

-- --------------------------------------------------------

--
-- Table structure for table `tanggal_libur`
--

CREATE TABLE `tanggal_libur` (
  `id_tanggal_libur` int(11) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `nama_libur` varchar(255) NOT NULL,
  `tanggal_akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggal_libur`
--

INSERT INTO `tanggal_libur` (`id_tanggal_libur`, `tanggal_awal`, `nama_libur`, `tanggal_akhir`) VALUES
(1, '2017-10-31', 'Hari Libur Nasional', '2017-10-31'),
(3, '2017-10-28', 'Sumpah Pemuda', '2017-10-28'),
(4, '2017-11-11', 'Hari Libur', '2017-11-15'),
(5, '2018-02-21', 'Puasa', '2018-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `tanggal_libur_nasional`
--

CREATE TABLE `tanggal_libur_nasional` (
  `id_tanggal_libur_nasional` int(25) NOT NULL,
  `tanggal_libur_nasional` int(25) NOT NULL,
  `bulan_libur_nasional` int(25) NOT NULL,
  `nama_libur_nasional` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggal_libur_nasional`
--

INSERT INTO `tanggal_libur_nasional` (`id_tanggal_libur_nasional`, `tanggal_libur_nasional`, `bulan_libur_nasional`, `nama_libur_nasional`) VALUES
(4, 1, 1, 'Tahun Baru'),
(6, 17, 8, 'Hari Kemerdekaan RI'),
(7, 6, 7, 'Tahun Baru Imlek'),
(8, 4, 8, 'Tahun Baru'),
(9, 3, 7, 'Tahun Baru'),
(10, 6, 6, 'Hari Kemerdekaan RI');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(5) NOT NULL,
  `nama_tugas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warna_mapel`
--

CREATE TABLE `warna_mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `warna` varchar(16) NOT NULL,
  `aktif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warna_mapel`
--

INSERT INTO `warna_mapel` (`id`, `nama`, `warna`, `aktif`) VALUES
(10, 'Hitam', '#000000', 1),
(12, 'Kuning', '#ffff00', 1),
(15, 'Abu-Abu', '#808080', NULL),
(17, 'Coklat', '#800040', NULL),
(21, 'yuyu', '#ff9300', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_harian`
--
ALTER TABLE `absensi_harian`
  ADD PRIMARY KEY (`id_absen_harian`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- Indexes for table `akun_siswa`
--
ALTER TABLE `akun_siswa`
  ADD PRIMARY KEY (`id_akun_siswa`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `id_kelas_tambahan` (`id_kelas_tambahan`);

--
-- Indexes for table `daftar_ulang`
--
ALTER TABLE `daftar_ulang`
  ADD PRIMARY KEY (`id_daftar_ulang`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `nomor_pendaftar_ujian` (`nomor_pendaftar_ujian`),
  ADD KEY `no_pendaftar` (`no_pendaftar`);

--
-- Indexes for table `danamandiri`
--
ALTER TABLE `danamandiri`
  ADD PRIMARY KEY (`id_danamandiri`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `deskripsi_nilai`
--
ALTER TABLE `deskripsi_nilai`
  ADD PRIMARY KEY (`id_deskripsi`),
  ADD KEY `mapel_id` (`mapel_id`);

--
-- Indexes for table `dummy`
--
ALTER TABLE `dummy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id_ekstrakurikuler`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_jenis_kls_tambahan` (`id_jenis_kls_tambahan`);

--
-- Indexes for table `form_daftarulang_kenaikan`
--
ALTER TABLE `form_daftarulang_kenaikan`
  ADD PRIMARY KEY (`id_form_daftarulang_kenaikan`);

--
-- Indexes for table `form_daftarulang_ppdb`
--
ALTER TABLE `form_daftarulang_ppdb`
  ADD PRIMARY KEY (`id_form_daftarulang_ppdb`);

--
-- Indexes for table `form_pendaftaran_mutasi_masuk`
--
ALTER TABLE `form_pendaftaran_mutasi_masuk`
  ADD PRIMARY KEY (`id_form_pendaftaran_mutasi_masuk`);

--
-- Indexes for table `form_ppdb`
--
ALTER TABLE `form_ppdb`
  ADD PRIMARY KEY (`id_form_ppdb`);

--
-- Indexes for table `form_ujian`
--
ALTER TABLE `form_ujian`
  ADD PRIMARY KEY (`id_form_ujian`);

--
-- Indexes for table `hari_rentang`
--
ALTER TABLE `hari_rentang`
  ADD PRIMARY KEY (`id_rentang_jam`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jabatan_has_tugas`
--
ALTER TABLE `jabatan_has_tugas`
  ADD KEY `jabatan_id_jabatan` (`jabatan_id_jabatan`),
  ADD KEY `tugas_id_tugas` (`tugas_id_tugas`);

--
-- Indexes for table `jadwal_ekskul`
--
ALTER TABLE `jadwal_ekskul`
  ADD PRIMARY KEY (`id_jadwal_ekskul`),
  ADD KEY `id_ekstrakulikuler` (`id_jenis_kls_tambahan`),
  ADD KEY `id_pembimbing` (`id_pembimbing`);

--
-- Indexes for table `jadwal_mapel`
--
ALTER TABLE `jadwal_mapel`
  ADD PRIMARY KEY (`id_jadwal_mapel`),
  ADD KEY `id_mapel` (`id_namamapel`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `id_rentang_jam` (`id_rentang_jam`),
  ADD KEY `id_kelas_reguler` (`id_kelas_reguler`),
  ADD KEY `id_kelas_reguler_berjalan` (`id_kelas_reguler_berjalan`),
  ADD KEY `id_prkh` (`id_prkh`),
  ADD KEY `id_jam_mgjr` (`id_jam_mgjr`);

--
-- Indexes for table `jadwal_piket_guru`
--
ALTER TABLE `jadwal_piket_guru`
  ADD PRIMARY KEY (`id_jdwl_piket_guru`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `jadwal_tambahan`
--
ALTER TABLE `jadwal_tambahan`
  ADD PRIMARY KEY (`id_jadwal_tambahan`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `id_kelas_tambahan` (`id_kelas_tambahan`),
  ADD KEY `jadwal_tambahan_ibfk_6` (`id_namamapel`),
  ADD KEY `jadwal_tambahan_ibfk_2` (`id_tahun_ajaran`);

--
-- Indexes for table `jam_mengajar`
--
ALTER TABLE `jam_mengajar`
  ADD PRIMARY KEY (`id_jam_mgjr`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `jam_mengajar_ibfk_2` (`id_tahun_ajaran`) USING BTREE;

--
-- Indexes for table `jenis_kls_tambahan`
--
ALTER TABLE `jenis_kls_tambahan`
  ADD PRIMARY KEY (`id_jenis_kls_tambahan`);

--
-- Indexes for table `jenis_nilai_akhir`
--
ALTER TABLE `jenis_nilai_akhir`
  ADD PRIMARY KEY (`id_jenis_na`);

--
-- Indexes for table `jenis_pelanggaran`
--
ALTER TABLE `jenis_pelanggaran`
  ADD PRIMARY KEY (`id_jenis_pelanggaran`),
  ADD KEY `tgl_kejadian` (`tgl_kejadian`);

--
-- Indexes for table `kaldik`
--
ALTER TABLE `kaldik`
  ADD PRIMARY KEY (`id_kaldik`);

--
-- Indexes for table `kategori_nilai`
--
ALTER TABLE `kategori_nilai`
  ADD PRIMARY KEY (`id_kategorinilai`);

--
-- Indexes for table `kelas_berjalan`
--
ALTER TABLE `kelas_berjalan`
  ADD PRIMARY KEY (`id_kelas_kerjalan`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `kelas_reguler`
--
ALTER TABLE `kelas_reguler`
  ADD PRIMARY KEY (`id_kelas_reguler`);

--
-- Indexes for table `kelas_reguler_berjalan`
--
ALTER TABLE `kelas_reguler_berjalan`
  ADD PRIMARY KEY (`id_kelas_reguler_berjalan`),
  ADD KEY `id_kelas_reguler` (`id_kelas_reguler`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `kelas_tambahan`
--
ALTER TABLE `kelas_tambahan`
  ADD PRIMARY KEY (`id_kelas_tambahan`),
  ADD UNIQUE KEY `unique_kelas_tambahan` (`nama_kelas_tambahan`);

--
-- Indexes for table `kelas_tambahan_berjalan`
--
ALTER TABLE `kelas_tambahan_berjalan`
  ADD PRIMARY KEY (`id_kelas_tambahan_berjalan`),
  ADD KEY `id_kelas_tambahan` (`id_kelas_tambahan`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `ketentuan_ppdb`
--
ALTER TABLE `ketentuan_ppdb`
  ADD PRIMARY KEY (`id_ketentuan`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `keterlambatan`
--
ALTER TABLE `keterlambatan`
  ADD PRIMARY KEY (`id_keterlambatan`),
  ADD KEY `NISN` (`nisn`);

--
-- Indexes for table `klinik_un`
--
ALTER TABLE `klinik_un`
  ADD PRIMARY KEY (`id_klinik_un`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`),
  ADD KEY `tahunajaran_id` (`tahunajaran_id`);

--
-- Indexes for table `k_dasar`
--
ALTER TABLE `k_dasar`
  ADD PRIMARY KEY (`id_kd`);

--
-- Indexes for table `login_backend`
--
ALTER TABLE `login_backend`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `mapel_ibfk_1` (`id_tahun_ajaran`),
  ADD KEY `mapel_ibfk_2` (`id_kelas_reguler`),
  ADD KEY `mapel_ibfk_3` (`id_namamapel`);

--
-- Indexes for table `mapel_default`
--
ALTER TABLE `mapel_default`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id_mutasi`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `id_siswa_mutasi_keluar` (`id_siswa_mutasi_keluar`),
  ADD KEY `id_pendaftar_mutasi` (`id_pendaftar_mutasi`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `namamapel`
--
ALTER TABLE `namamapel`
  ADD PRIMARY KEY (`id_namamapel`);

--
-- Indexes for table `nilaiekskul`
--
ALTER TABLE `nilaiekskul`
  ADD PRIMARY KEY (`id_nilaiekskul`),
  ADD KEY `id_siswakls` (`nisn`),
  ADD KEY `id_jenis_kls_tambahan` (`id_jenis_kls_tambahan`);

--
-- Indexes for table `nilai_akhir`
--
ALTER TABLE `nilai_akhir`
  ADD PRIMARY KEY (`id_nilai_akhir`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_kelas_reguler_berjalan` (`id_kelas_reguler_berjalan`);

--
-- Indexes for table `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  ADD PRIMARY KEY (`id_nilai_siswa`),
  ADD KEY `kategori_nilai` (`kategori_nilai_id`),
  ADD KEY `nilai_akhir` (`jenis_na_id`),
  ADD KEY `mapel_id` (`mapel_id`),
  ADD KEY `nilai_siswa_ibfk_2` (`nisn`);

--
-- Indexes for table `orangtua_wali`
--
ALTER TABLE `orangtua_wali`
  ADD PRIMARY KEY (`id_orangtua`);

--
-- Indexes for table `passing_grade`
--
ALTER TABLE `passing_grade`
  ADD PRIMARY KEY (`id_grade`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id_jenis_pelanggaran`);

--
-- Indexes for table `pembimbing`
--
ALTER TABLE `pembimbing`
  ADD PRIMARY KEY (`id_pembimbing`);

--
-- Indexes for table `pendaftar_daftarulang_kenaikan`
--
ALTER TABLE `pendaftar_daftarulang_kenaikan`
  ADD PRIMARY KEY (`id_daftar_ulang_kenaikan`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `pendaftar_daftarulang_ppdb`
--
ALTER TABLE `pendaftar_daftarulang_ppdb`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `pendaftar_ppdb`
--
ALTER TABLE `pendaftar_ppdb`
  ADD PRIMARY KEY (`nisn_pendaftar`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `pengaturan_hari`
--
ALTER TABLE `pengaturan_hari`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indexes for table `pengumuman_mutasi`
--
ALTER TABLE `pengumuman_mutasi`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `pengumuman_ppdb`
--
ALTER TABLE `pengumuman_ppdb`
  ADD PRIMARY KEY (`id_pengumuman_ppdb`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `pilih_laporan`
--
ALTER TABLE `pilih_laporan`
  ADD PRIMARY KEY (`id_pilihlap`);

--
-- Indexes for table `poin_pelanggaran`
--
ALTER TABLE `poin_pelanggaran`
  ADD KEY `NISN` (`nisn`),
  ADD KEY `id_jenis_pelanggaran` (`id_jenis_pelanggaran`);

--
-- Indexes for table `presensi_kls_tambahan`
--
ALTER TABLE `presensi_kls_tambahan`
  ADD PRIMARY KEY (`id_presensikls_tambahan`),
  ADD KEY `id_jadwal_ekskul` (`id_jadwal_ekskul`);

--
-- Indexes for table `presensi_pegawai`
--
ALTER TABLE `presensi_pegawai`
  ADD PRIMARY KEY (`Id_presensi`),
  ADD KEY `NIP` (`NIP`);

--
-- Indexes for table `presensi_siswa`
--
ALTER TABLE `presensi_siswa`
  ADD PRIMARY KEY (`id_presensi`),
  ADD KEY `kelas_berjalan_id` (`kelas_berjalan_id`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `NISN` (`nisn`);

--
-- Indexes for table `prioritas_khusus`
--
ALTER TABLE `prioritas_khusus`
  ADD PRIMARY KEY (`id_prkh`),
  ADD KEY `id_rentang_jam` (`id_rentang_jam`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_namamapel` (`id_namamapel`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `setting_jadwal_tambahan`
--
ALTER TABLE `setting_jadwal_tambahan`
  ADD PRIMARY KEY (`id_setting_tambahan`),
  ADD UNIQUE KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `nisn` (`nisn`),
  ADD KEY `id_orangtua` (`id_orangtua`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `siswa_kelas`
--
ALTER TABLE `siswa_kelas`
  ADD PRIMARY KEY (`id_siswa_kelas`),
  ADD KEY `nisn` (`nisn`,`id_tahun_ajaran`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `siswa_kelas_reguler_berjalan`
--
ALTER TABLE `siswa_kelas_reguler_berjalan`
  ADD PRIMARY KEY (`id_siswa_kelas_reguler_berjalan`),
  ADD UNIQUE KEY `id_kelas_reguler_berjalan_2` (`id_kelas_reguler_berjalan`,`nisn`),
  ADD KEY `id_kelas_reguler_berjalan` (`id_kelas_reguler_berjalan`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `siswa_kelas_tambahan_berjalan`
--
ALTER TABLE `siswa_kelas_tambahan_berjalan`
  ADD PRIMARY KEY (`id_siswa_kelas_tambahan_berjalan`),
  ADD UNIQUE KEY `id_kelas_tambahan_berjalan_2` (`id_kelas_tambahan_berjalan`,`nisn`),
  ADD KEY `id_kelas_tambahan_berjalan` (`id_kelas_tambahan_berjalan`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `siswa_mutasi_keluar`
--
ALTER TABLE `siswa_mutasi_keluar`
  ADD PRIMARY KEY (`id_siswa_mutasi_keluar`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `siswa_mutasi_masuk`
--
ALTER TABLE `siswa_mutasi_masuk`
  ADD PRIMARY KEY (`nisn_pendaftar_mutasi`),
  ADD UNIQUE KEY `id_pendaftar_mutasi` (`id_pendaftar_mutasi`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tabel_sementara_simpan_prestasi`
--
ALTER TABLE `tabel_sementara_simpan_prestasi`
  ADD PRIMARY KEY (`id_tabel_sementara`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `tahunajaran`
--
ALTER TABLE `tahunajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`);

--
-- Indexes for table `tanggal_libur`
--
ALTER TABLE `tanggal_libur`
  ADD PRIMARY KEY (`id_tanggal_libur`);

--
-- Indexes for table `tanggal_libur_nasional`
--
ALTER TABLE `tanggal_libur_nasional`
  ADD PRIMARY KEY (`id_tanggal_libur_nasional`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indexes for table `warna_mapel`
--
ALTER TABLE `warna_mapel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_harian`
--
ALTER TABLE `absensi_harian`
  MODIFY `id_absen_harian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `danamandiri`
--
ALTER TABLE `danamandiri`
  MODIFY `id_danamandiri` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deskripsi_nilai`
--
ALTER TABLE `deskripsi_nilai`
  MODIFY `id_deskripsi` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dummy`
--
ALTER TABLE `dummy`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  MODIFY `id_ekstrakurikuler` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `form_daftarulang_kenaikan`
--
ALTER TABLE `form_daftarulang_kenaikan`
  MODIFY `id_form_daftarulang_kenaikan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `form_daftarulang_ppdb`
--
ALTER TABLE `form_daftarulang_ppdb`
  MODIFY `id_form_daftarulang_ppdb` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `form_pendaftaran_mutasi_masuk`
--
ALTER TABLE `form_pendaftaran_mutasi_masuk`
  MODIFY `id_form_pendaftaran_mutasi_masuk` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `form_ppdb`
--
ALTER TABLE `form_ppdb`
  MODIFY `id_form_ppdb` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `form_ujian`
--
ALTER TABLE `form_ujian`
  MODIFY `id_form_ujian` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hari_rentang`
--
ALTER TABLE `hari_rentang`
  MODIFY `id_rentang_jam` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `jadwal_ekskul`
--
ALTER TABLE `jadwal_ekskul`
  MODIFY `id_jadwal_ekskul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jadwal_mapel`
--
ALTER TABLE `jadwal_mapel`
  MODIFY `id_jadwal_mapel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jadwal_piket_guru`
--
ALTER TABLE `jadwal_piket_guru`
  MODIFY `id_jdwl_piket_guru` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `jadwal_tambahan`
--
ALTER TABLE `jadwal_tambahan`
  MODIFY `id_jadwal_tambahan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jam_mengajar`
--
ALTER TABLE `jam_mengajar`
  MODIFY `id_jam_mgjr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jenis_kls_tambahan`
--
ALTER TABLE `jenis_kls_tambahan`
  MODIFY `id_jenis_kls_tambahan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jenis_nilai_akhir`
--
ALTER TABLE `jenis_nilai_akhir`
  MODIFY `id_jenis_na` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kaldik`
--
ALTER TABLE `kaldik`
  MODIFY `id_kaldik` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori_nilai`
--
ALTER TABLE `kategori_nilai`
  MODIFY `id_kategorinilai` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas_reguler`
--
ALTER TABLE `kelas_reguler`
  MODIFY `id_kelas_reguler` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kelas_reguler_berjalan`
--
ALTER TABLE `kelas_reguler_berjalan`
  MODIFY `id_kelas_reguler_berjalan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kelas_tambahan`
--
ALTER TABLE `kelas_tambahan`
  MODIFY `id_kelas_tambahan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas_tambahan_berjalan`
--
ALTER TABLE `kelas_tambahan_berjalan`
  MODIFY `id_kelas_tambahan_berjalan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ketentuan_ppdb`
--
ALTER TABLE `ketentuan_ppdb`
  MODIFY `id_ketentuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `keterlambatan`
--
ALTER TABLE `keterlambatan`
  MODIFY `id_keterlambatan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `klinik_un`
--
ALTER TABLE `klinik_un`
  MODIFY `id_klinik_un` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id_kurikulum` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k_dasar`
--
ALTER TABLE `k_dasar`
  MODIFY `id_kd` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_backend`
--
ALTER TABLE `login_backend`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `mapel_default`
--
ALTER TABLE `mapel_default`
  MODIFY `id_mapel` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `namamapel`
--
ALTER TABLE `namamapel`
  MODIFY `id_namamapel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `nilaiekskul`
--
ALTER TABLE `nilaiekskul`
  MODIFY `id_nilaiekskul` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_akhir`
--
ALTER TABLE `nilai_akhir`
  MODIFY `id_nilai_akhir` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  MODIFY `id_nilai_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orangtua_wali`
--
ALTER TABLE `orangtua_wali`
  MODIFY `id_orangtua` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `passing_grade`
--
ALTER TABLE `passing_grade`
  MODIFY `id_grade` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id_jenis_pelanggaran` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembimbing`
--
ALTER TABLE `pembimbing`
  MODIFY `id_pembimbing` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pendaftar_daftarulang_kenaikan`
--
ALTER TABLE `pendaftar_daftarulang_kenaikan`
  MODIFY `id_daftar_ulang_kenaikan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pengaturan_hari`
--
ALTER TABLE `pengaturan_hari`
  MODIFY `id_pengaturan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengumuman_mutasi`
--
ALTER TABLE `pengumuman_mutasi`
  MODIFY `id_pengumuman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengumuman_ppdb`
--
ALTER TABLE `pengumuman_ppdb`
  MODIFY `id_pengumuman_ppdb` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `presensi_kls_tambahan`
--
ALTER TABLE `presensi_kls_tambahan`
  MODIFY `id_presensikls_tambahan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `presensi_pegawai`
--
ALTER TABLE `presensi_pegawai`
  MODIFY `Id_presensi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `presensi_siswa`
--
ALTER TABLE `presensi_siswa`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `prioritas_khusus`
--
ALTER TABLE `prioritas_khusus`
  MODIFY `id_prkh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswa_kelas`
--
ALTER TABLE `siswa_kelas`
  MODIFY `id_siswa_kelas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `siswa_kelas_reguler_berjalan`
--
ALTER TABLE `siswa_kelas_reguler_berjalan`
  MODIFY `id_siswa_kelas_reguler_berjalan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `siswa_kelas_tambahan_berjalan`
--
ALTER TABLE `siswa_kelas_tambahan_berjalan`
  MODIFY `id_siswa_kelas_tambahan_berjalan` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa_mutasi_keluar`
--
ALTER TABLE `siswa_mutasi_keluar`
  MODIFY `id_siswa_mutasi_keluar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa_mutasi_masuk`
--
ALTER TABLE `siswa_mutasi_masuk`
  MODIFY `id_pendaftar_mutasi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_sementara_simpan_prestasi`
--
ALTER TABLE `tabel_sementara_simpan_prestasi`
  MODIFY `id_tabel_sementara` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tahunajaran`
--
ALTER TABLE `tahunajaran`
  MODIFY `id_tahun_ajaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tanggal_libur`
--
ALTER TABLE `tanggal_libur`
  MODIFY `id_tanggal_libur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tanggal_libur_nasional`
--
ALTER TABLE `tanggal_libur_nasional`
  MODIFY `id_tanggal_libur_nasional` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `warna_mapel`
--
ALTER TABLE `warna_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi_harian`
--
ALTER TABLE `absensi_harian`
  ADD CONSTRAINT `absensi_harian_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`);

--
-- Constraints for table `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `akun_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
