-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 10:44 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

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
  `setatus_barang` int(1) NOT NULL,
  `deskripsi` text NOT NULL DEFAULT 'Belum ada deskripsi, silahkan ubah'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_beli`, `harga_jual`, `laba`, `satuan`, `setok`, `mulai_promo`, `ahir_promo`, `jenis_promo`, `potongan`, `harga_ahir`, `setatus_promo`, `setatus_barang`, `deskripsi`) VALUES
(10, 'CHARGER XIAOMI ORIGINIAL 100% QUALCOMM 3.0 Fast Charging MDY-08-EI', 27500, 40000, 12500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(11, 'VOUCHER INDOSAT UNLIMITED Youtube 2 hari + 500mb', 5700, 8000, 2300, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(12, 'PERDANA SMARTFREN 2GB KUOTA 2GB', 8700, 11000, 2300, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(13, 'PERDANA SMARTFREN GSM PULSA 0K', 2500, 5000, 2500, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(14, 'VOUCHER INDOSAT FREEDOM INTERNET 2GB (15 HR) NASIONAL', 15000, 17000, 2000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(15, 'VOUCHER TRI DATA AMI 4GB bonus unlimited youtube  - Indy cell', 27250, 32000, 4750, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(16, 'VOUCHER INDOSAT FREEDOM 14GB', 47200, 55000, 7800, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(17, 'VOUCHER INDOSAT FREEDOM 8GB', 33300, 36000, 2700, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, '8GB PEMBAGIAN : \r\n4GB UTAMA\r\n2GB MALAM\r\n2GB LOKAL'),
(18, 'VOUCHER INDOSAT FREEDOM 4GB', 23800, 27000, 3200, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(19, 'PERDANA SMARTFREN DATA TOTAL KUOTA 5GB', 12050, 15000, 2950, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(20, 'VOUCHER SMARTFREN 16GB ( 8gb 24 jam + 8 GB malam)', 35000, 37000, 2000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, '8GB MALAM\r\n8GB UTAMA'),
(21, 'VOUCHER SMARTFREN 10GB ( 5gb 24 jam + 5 GB malam )', 27000, 28000, 1000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, '5gb 24jam\r\n5gb jam 00-06 '),
(22, 'VOUCHER INDOSAT YOUTUBE 7 HARI UNLIMITED+ 1GB', 15600, 18000, 2400, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(23, 'VOUCHER TRI GM 2GB + 2GB NASIONAL  - Indy cell', 18500, 22000, 3500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(25, 'PERDANA AXIS PULSA NOL / PERDANA AXIS 0 K- Cahyo Sales', 1000, 3000, 2000, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(26, 'VOUCHER INDOSAT 1GB (7 HARI)', 10000, 12000, 2000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(27, 'VOUCHER SMARTFREN 4GB 2GB24Jam_2GBmalam (30 HR)', 10000, 12000, 2000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(28, 'VOUCHER SMARTFREN UNLIMITED _1GB/HR_(28 HR) - ricky glorie', 71000, 73000, 2000, 'pcs', 6, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(29, 'PERDANA INDOSAT 0K', 2300, 5000, 2700, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(30, 'PERDANA INDOSAT 1GB UNLIMITED', 22700, 25000, 2300, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'UNLIMITED APPS '),
(31, 'SOFTCASE POLOS SAMSUNG A20S,Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(32, 'SOFTCASE POLOS SAMSUNG, Y1 -  missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(33, 'SOFTCASE POLOS SAMSUNG A10S, Y9 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(34, 'SOFTCASE POLOS SAMSUNG A 10S, Y8 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(35, 'SOFTCASE POLOS SAMSUNG A70, Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(36, 'SOFTCASE POLOS SAMSUNG A50/A50S/A30S, Y8 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(37, 'SOFTCASE POLOS SAMSUNG A10/M10, Y1 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(38, 'SOFTCASE POLOS SAMSUNG M20, Y8 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(39, 'SOFTCASE POLOS SAMSUNG M20, Y9 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(40, 'SOFTCASE POLOS SAMSUNG A30/A20,Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(41, 'SOFTCASE POLOS SAMSUNG J7PRIME, Y1 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(42, 'SOFTCASE POLOS SAMSUNG J2PRIME, Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(43, 'SOFTCASE POLOS SAMSUNG A70, Y1 -missconnie.id', 11286, 25000, 13714, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(44, 'SOFTCASE POLOS SAMSUNG A7 2018/ A750, Y8 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(45, 'SOFTCASE POLOS SAMSUNG A50/A50S/A30S, Y9 -missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(46, 'SOFTCASE POLOS SAMSUNG A30/A20, Y1 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(47, 'SOFTCASE POLOS SAMSUNG A10/ M10, Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(48, 'SOFTCASE POLOS SAMSUNG J7PRIME, Y5 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(49, 'SOFTCASE POLOS SAMSUNG A7 2018/ A750, Y9 - missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(50, 'SOFTCASE POLOS SAMSUNG J2PRIME, Y1- missconnie.id', 11286, 25000, 13714, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(52, '3D Diamond Softcase IPHONE 6 PLUS -moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(53, '3D Diamond Softcase IPHONE 6 -moniqueen.com', 7470, 20000, 12530, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(54, '3D Diamond Softcase REDMI 5 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(55, '3D Diamond Softcase NOTE 5A PRIME -moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(57, '3D Diamond Softcase REDMI NOTE 7 PRO -moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(58, '3D Diamond Softcase REDMI NOTE 5 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(59, '3D Diamond Softcase REDMI GO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(60, '3D Diamond Softcase REDMI 7 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(61, '3D Diamond Softcase REDMI 6 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(62, '3D Diamond Softcase REDMI 6A - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(63, 'SLIM BLACKMATTE SOFTCASE SAMSUNG NOTE 8 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(64, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG M30S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(65, 'SLIM BLACKMATTE SOFTCASE SAMSUNG A20S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(66, 'SLIM BLACKMATTE SOFTCASE SAMSUNG A10S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(67, 'SLIM BLACKMATTE SOFTCASE SAMSUNG NOTE 10 PLUS - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(68, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG NOTE 10 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(69, 'SLIM BLACKMATTE SOFTCASE SAMSUNG A20/A30 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(70, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG M30 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(71, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG A6 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(72, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG A9 / A9S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(73, 'SLIM BLACKMATTE SOFTCASE  SAMSUNG A70 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(74, 'SLIM BLACKMATTE SOFTCASE SAMSUNG A50/A50S/A30S - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(75, 'SLIM BLACKMATTE SOFTCASE SAMSUNG M20 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(76, 'SLIM BLACKMATTE SOFTCASE SAMSUNG M10/ A10 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(77, 'SLIM BLACKMATTE SOFTCASE VIVO Y19 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(78, 'SLIM BLACKMATTE SOFTCASE VIVO Y91C/ Y93 NO FINGER - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(79, 'SLIM BLACKMATTE SOFTCASE  VIVO Z1 PRO - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(80, 'SLIM BLACKMATTE SOFTCASE VIVO S1 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(81, 'SLIM BLACKMATTE SOFTCASE VIVO Y53 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(82, 'SLIM BLACKMATTE SOFTCASE VIVO Y17/ Y15/ Y12 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(83, 'SLIM BLACKMATTE SOFTCASE VIVO Y91/ Y95 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(84, 'SLIM BLACKMATTE SOFTCASE VIVO Y83 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(85, 'SLIM BLACKMATTE SOFTCASE VIVO Y81 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(86, 'SLIM BLACKMATTE SOFTCASE  VIVO Y71 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(87, 'SLIM BLACKMATTE SOFTCASE VIVO Y21 - moniqueen.com', 3500, 15000, 11500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(88, '3D Diamond Softcase SAMSUNG J6 PLUS - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(89, '3D Diamond Softcase SAMSUNG J4 PLUS - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(90, '3D Diamond Softcase SAMSUNG J7 PRIME - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(91, '3D Diamond Softcase SAMSUNG J5 PRIME - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(92, '3D Diamond Softcase SAMSUNG A7 TRIPLE CAM - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(93, '3D Diamond Softcase SAMSUNG M30 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(94, '3D Diamond Softcase SAMSUNG M20 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(95, '3D Diamond Softcase SAMSUNG A70 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(96, '3D Diamond Softcase SAMSUNG A50 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(97, '3D Diamond Softcase SAMSUNG A20/ A30 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(98, '3D Diamond Softcase SAMSUNG A10/ M10 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(99, '3D Diamond Softcase REDMI 5A - moniqueen.com', 7470, 20000, 12530, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(100, '3D Diamond Softcase VIVO Y83 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(101, '3D Diamond Softcase VIVO Y81 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(102, '3D Diamond Softcase VIVO V7 PLUS/ Y79 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(103, '3D Diamond Softcase VIVO S1 - moniqueen.com', 7470, 20000, 12530, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(104, '3D Diamond Softcase VIVO V15 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(105, '3D Diamond Softcase VIVO V9 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(106, '3D Diamond Softcase VIVO V7 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(107, '3D Diamond Softcase VIVO V5 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(108, '3D Diamond Softcase VIVO Y53 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(109, '3D Diamond Softcase VIVO Y91/ Y95 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(110, '3D Diamond Softcase VIVO Y17/ Y15/ Y12 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(111, '3D Diamond Softcase REALME 2 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(113, '3D Diamond Softcase REALME 3 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(114, '3D Diamond Softcase REALME C2/ A1K - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(115, '3D Diamond Softcase OPPO F11 PRO - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(116, '3D Diamond Softcase OPPO F11- moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(117, '3D Diamond Softcase OPPO F9 - moniqueen.com', 7470, 20000, 12530, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(118, '3D Diamond Softcase OPPO F7 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(119, '3D Diamond Softcase OPPO F5 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(120, '3D Diamond Softcase OPPO F3 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(121, '3D Diamond Softcase OPPO F1S - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(122, '3D Diamond Softcase OPPO A83 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(123, '3D Diamond Softcase OPPO71 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(124, '3D Diamond Softcase OPPO A39/ A57 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(125, '3D Diamond Softcase OPPO A37 - moniqueen.com', 7470, 20000, 12530, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(126, '3D Diamond Softcase OPPO A33 - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(127, '3D Diamond Softcase OPPO A7/A5S -moniqueen.com ', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(128, '3D Diamond Softcase OPPO A3S - moniqueen.com', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(129, 'POWERBANK VEGER 10000Mah V41 Slim ORIGINAL BIRU', 55000, 75000, 20000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(130, 'POWERBANK VEGER 10000Mah V41 Slim ORIGINAL MERAH', 55000, 75000, 20000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(131, 'POWERBANK V16 VEGER 25000Mah Original WHITE', 117000, 135000, 18000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(132, 'KABEL DATA SPRING K2 K2-C09 IPHONE ', 13000, 25000, 12000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(133, 'KABEL DATA SPRING K2 K2-C09 MICRO USB', 13000, 25000, 12000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(134, 'KABEL DATA TOPLES K2 PUTIH - rgaksesoris -  (typec/type-c/type c)', 5999, 15000, 9001, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(135, 'KABEL DATA TOPLES K2 HITAM - rgaksesoris - (typec/type-c/type c)', 5999, 15000, 9001, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(136, 'KABEL DATA SAMSUNG ORIGINAL USB CABLE PUTIH - (typec/type-c/type c)', 15000, 25000, 10000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(137, 'KABEL DATA SAMSUNG ORIGINAL USB CABLE HITAM - (typec/type-c/type c)', 15000, 25000, 10000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(138, 'CHARGER NOKIA ORIGINAL 99% LUBANG KECIL', 10000, 20000, 10000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(139, 'POPSOCKET POLOS ', 645, 2000, 1355, 'pcs', 10, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(140, 'TEMPELAN HP/ GURITA', 750, 2000, 1250, 'pcs', 10, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(141, 'HEADSET XIAOMI PISTON 2', 10499, 25000, 14501, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(142, 'KABEL DATA QTOP TOPLES IPHONE', 5000, 15000, 10000, 'pcs', 50, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(143, 'HANDSFREE / HEADSET / EARPHONE SAMSUNG HS330', 5000, 20000, 15000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(144, 'CHARGER SAMSUNG NOTE 4 ORIGINAL', 16000, 25000, 9000, 'pcs', 0, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(145, 'CHARGER SAMSUNG i9000/ GALAXY MINI PACK DUS ', 4299, 15000, 10701, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(146, 'KABEL DATA VIVAN 1 TOPLES - micro usb', 6000, 15000, 9000, 'pcs', 30, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(147, '3D Diamond Softcase VIVO iQOO NEO', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(148, '3D Diamond Softcase REALME A5/ A3S/ AX5/ REALME C1', 7470, 20000, 12530, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(149, 'PERDANA INDOSAT FREEDOM 8GB (30 HR)', 30000, 35000, 5000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, '8GB PEMBAGIAN : \r\n4GB UTAMA\r\n2GB MALAM\r\n2GB LOKAL'),
(150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 8000, 10000, 2000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(152, 'VOUCHER XL 4,5 GB (30 HR)- Cahyo Sales', 26500, 30000, 3500, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(153, 'VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 13500, 15000, 1500, 'pcs', 7, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(154, 'VOUCHER TRI 6 GB (1 TH) - Indy cell', 34000, 36000, 2000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'contoh'),
(155, 'VOUCHER TRI 2 GB (1  TH)  - Indy cell', 18000, 20000, 2000, 'pcs', 6, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(156, 'VOUCHER TRI 3 GB AON (1 TH)  - Indy cell', 24000, 26000, 2000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(157, 'VOUCHER TRI 1 GB (5 HR)  - Indy cell', 8500, 10000, 1500, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(158, 'PERDANA + VOUCHER XL 4,5 GB (30 HR)- Cahyo Sales', 27500, 30000, 2500, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(159, 'PERDANA AS/ TELKOMSEL 5K ', 10000, 11500, 1500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(160, 'PERDANA XL 0K (GRATIS NELPON & SMS KE AXIS/XL)- Cahyo Sales', 3000, 5000, 2000, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(161, 'VOUCHER XL 8GB (30 HR)- Cahyo Sales', 37500, 40000, 2500, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(162, 'VOUCHER AXIS 2GB + 1 GB LOKAL (30 HR)- Cahyo Sales', 22000, 25000, 3000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(163, 'VOUCHER AXIS 1 GB (30 HARI)', 13000, 15000, 2000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(164, 'VOUCHER AXIS 3 GB (15 HARI)', 19000, 21000, 2000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(165, 'VOUCHER INDOSAT 3 GB + ULT YOUTUBE (30 HARI)', 57000, 60000, 3000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(166, 'VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 25000, 27000, 2000, 'pcs', 7, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(167, 'VOUCHER TELKOMSEL 8 GB (30 HARI)', 59000, 61000, 2000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(170, 'VOUCHER SMARTFREN UNLIMITED LITE _500MB/HR_(28 HR) - ricky glorie', 46950, 50000, 3050, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(171, 'VOUCHER SMARTFREN UNLIMITED _1GB/HR_(5 HR) - ricky glorie', 18150, 21000, 2850, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(172, 'VOUCHER SMARTFREN 10N+ 1,5GB_24JAM_(7 HR) - ricky glorie', 9550, 12000, 2450, 'pcs', 11, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(173, 'VOUCHER SMARTFREN 10N+ 1GB_24JAM_(7 HR) - ricky glorie', 7500, 10000, 2500, 'pcs', 1, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(174, 'PERDANA SMARTFREN UNLIMITED 30 HR', 72000, 75000, 3000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(175, 'VOUCHER TELKOMSEL 4 GB OMG 30 HR', 37000, 39000, 2000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(176, 'PERDANA TELKOMSEL 6,5 GB 30 HARI', 27000, 29000, 2000, 'pcs', 6, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'contoh'),
(177, 'PERDANA AXIS 1 GB 30 HR', 11000, 14000, 3000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(178, 'PERDANA AXIS 2GB 30 HARI ', 19000, 22000, 3000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(179, 'PERDANA TRI 1 GB ', 6000, 10000, 4000, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(180, 'VOUCHER TRI 6 GB + UNLIMITED YOUTUBE (30 HR)', 49000, 52000, 3000, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(183, 'PERDANA SMARTFREN 1ON+ 3GB 930 HR)', 18500, 21000, 2500, 'pcs', 8, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(221, 'KEPALA CHARGER SAMSUNG ANDROID 2A 5VOLT - rgaksesoris', 4000, 10000, 6000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(222, 'KABEL OTG USB TYPE C - rgaksesoris', 4000, 8000, 4000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(223, 'NANO SIM ADAPTER NOOSY - rgaksesoris', 700, 1500, 800, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(224, 'KABEL OTG MICRO USB - rgaksesoris', 1850, 5000, 3150, 'pcs', 3, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(225, 'CHARGER VIVO VOOC 2 AMPHERE MICRO USB - rgaksesoris', 12000, 20000, 8000, 'pcs', 4, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(226, 'CHARGER SAMSUNG VOOC 2 AMPHERE MICRO USB - rgaksesoris', 12000, 20000, 8000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(227, 'CHARGER XIAOMI VOOC 2 AMPHERE MICRO USB - rgaksesoris', 12000, 20000, 8000, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(228, 'CARD READER FOR MICRO SD/ SD OTG - rgaksesoris', 2749, 7500, 4751, 'pcs', 5, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(229, 'MEMORY CARD / MICRO SD CARD SANDISK 32 GB - baojiadianzi.id', 55541, 70000, 14459, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'Belum ada deskripsi, silahkan ubah'),
(230, 'MEMORY CARD / MICRO SD CARD SANDISK 16 GB - baojiadianzi.id', 51710, 65000, 13290, 'pcs', 2, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1, 'contoh');

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
(0, '323625'),
(1, '276843');

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
(2, 4, 'wdgwbzli1empqdjomchzo1oceoer009o914l8gowxo9wlflh5by6ghnasxt85f42mfdphui2vrlbgprkmte3vkrkr25xhorik1opvyta5bd7r872zt11gvpnjardt71k');

-- --------------------------------------------------------

--
-- Table structure for table `hutang_elektrik`
--

CREATE TABLE `hutang_elektrik` (
  `id_hutang_elektrik` int(7) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `harga_jual` int(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'hutang'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hutang_elektrik`
--

INSERT INTO `hutang_elektrik` (`id_hutang_elektrik`, `nama_brg`, `harga_beli`, `harga_jual`, `date`, `time`, `status`) VALUES
(3, 'Pulsa telkomsel 25k - mamake fathur', 24900, 27000, '2020-04-16', '19:45:00', 'lunas'),
(5, 'Pulsa telkomsel 25k - fathur', 24900, 27000, '2020-04-21', '05:08:00', 'lunas'),
(6, 'Paket data indosat 7GB ult - amin', 78500, 81000, '2020-04-21', '16:34:00', 'hutang'),
(7, 'Pulsa Telkomsel 20k - Fathur', 19990, 22000, '2020-04-22', '10:46:00', 'lunas'),
(8, 'Pulsa axis 5k - fathur', 5775, 7000, '2020-04-23', '10:15:00', 'lunas'),
(9, 'Pulsa Telkomsel 10k - fathur', 10475, 12000, '2020-04-27', '07:49:00', 'lunas'),
(10, 'Pulsa Telkomsel 25k - fathur', 24774, 27000, '2020-04-27', '07:54:00', 'lunas'),
(11, 'Pulsa Telkomsel 5k - ngaqib', 5585, 7000, '2020-04-27', '15:43:00', 'lunas'),
(12, 'Pulsa Telkomsel 5k - ngaqib nambah', 5585, 7000, '2020-04-27', '16:46:00', 'lunas'),
(13, 'Pulsa Telkomsel 25k - fathur', 24900, 27000, '2020-04-28', '07:32:00', 'lunas'),
(14, 'Pulsa Telkomsel 25k - arfa', 24900, 27000, '2020-04-28', '07:32:00', 'lunas'),
(16, 'Pulsa indosat 5k - amin', 5890, 7000, '2020-04-30', '07:41:00', 'hutang'),
(17, 'Pulsa indosat 5k - amin', 5810, 7000, '2020-04-30', '09:22:00', 'hutang'),
(18, 'Paket data indosat 7GB ult - amin', 78500, 81000, '2020-04-30', '09:44:00', 'hutang'),
(19, 'Pulsa Telkomsel 50k - Khansa', 49293, 52000, '2020-05-01', '15:25:00', 'lunas'),
(20, 'Pulsa Telkomsel 10k - yu omah', 10450, 12000, '2020-05-02', '07:18:00', 'lunas'),
(21, 'isi ulang data smarfren unlimited lite - temen zulfa', 47000, 50000, '2020-05-02', '07:24:00', 'lunas'),
(22, 'Pulsa Telkomsel 20k- Alfi', 20029, 22000, '2020-05-02', '09:31:00', 'lunas'),
(23, 'Pulsa xl 10k - fathur', 10815, 12000, '2020-05-02', '16:18:00', 'lunas'),
(24, 'Pulsa XL 10K - pakde nur', 10815, 12000, '2020-05-03', '11:59:00', 'lunas'),
(25, 'Pulsa Telkomsel 10k - Ngaqib', 10250, 12000, '2020-05-05', '12:35:00', 'hutang');

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
(0, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 10:18:36'),
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
(122, 4, 'Chrome', '80.0.3987.149', 'Mac OS X', '::1', 0, '2020-04-04 05:28:40'),
(123, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 09:18:26'),
(124, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 11:31:19'),
(125, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 11:31:20'),
(126, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 01:32:36'),
(127, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 11:19:53'),
(128, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 02:49:24'),
(129, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 06:39:00'),
(130, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 05:43:51'),
(131, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 08:28:22'),
(132, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 12:58:48'),
(133, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 03:18:26'),
(134, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 09:52:29'),
(135, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 07:44:55'),
(136, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 10:56:34'),
(137, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 07:40:09'),
(138, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 02:06:08'),
(139, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 07:21:22'),
(140, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 08:11:12'),
(141, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 04:19:59'),
(142, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 07:27:16'),
(143, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 08:01:07'),
(144, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 10:36:44'),
(145, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 04:46:55'),
(146, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 07:57:47'),
(147, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 07:34:17'),
(148, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 08:42:43'),
(149, 4, 'Chrome', '80.0.3987.163', 'Windows 7', '::1', 0, '2020-04-04 03:22:13'),
(150, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 05:41:41'),
(151, 4, 'Chrome', '80.0.3987.163', 'Mac OS X', '::1', 0, '2020-04-04 05:02:05'),
(152, 4, 'Chrome', '81.0.4044.113', 'Mac OS X', '::1', 0, '2020-04-04 04:33:13'),
(153, 4, 'Chrome', '81.0.4044.113', 'Mac OS X', '::1', 0, '2020-04-04 07:33:33'),
(154, 4, 'Chrome', '81.0.4044.122', 'Windows 7', '::1', 0, '2020-04-04 10:14:52'),
(155, 4, 'Chrome', '81.0.4044.122', 'Windows 7', '::1', 0, '2020-04-04 05:23:38'),
(156, 4, 'Chrome', '81.0.4044.122', 'Windows 7', '::1', 0, '2020-04-04 08:22:36'),
(157, 4, 'Chrome', '81.0.4044.122', 'Windows 7', '::1', 0, '2020-04-04 08:50:02'),
(158, 4, 'Chrome', '81.0.4044.122', 'Windows 7', '::1', 0, '2020-04-04 07:47:04'),
(159, 4, 'Chrome', '81.0.4044.122', 'Windows 7', '::1', 0, '2020-04-04 03:30:25'),
(160, 4, 'Chrome', '81.0.4044.122', 'Windows 7', '::1', 0, '2020-04-04 07:30:40'),
(161, 4, 'Chrome', '81.0.4044.122', 'Windows 7', '::1', 0, '2020-04-04 06:57:09'),
(162, 4, 'Chrome', '81.0.4044.129', 'Windows 7', '::1', 0, '2020-04-04 07:39:37'),
(163, 4, 'Chrome', '81.0.4044.129', 'Windows 7', '::1', 0, '2020-05-05 07:52:10'),
(164, 4, 'Chrome', '81.0.4044.129', 'Windows 7', '::1', 0, '2020-05-05 11:26:38'),
(165, 4, 'Chrome', '81.0.4044.129', 'Windows 7', '::1', 0, '2020-05-05 07:17:09'),
(166, 4, 'Chrome', '81.0.4044.129', 'Windows 7', '::1', 0, '2020-05-05 07:17:09'),
(167, 4, 'Chrome', '81.0.4044.129', 'Windows 7', '::1', 0, '2020-05-05 07:22:33'),
(168, 4, 'Chrome', '81.0.4044.129', 'Windows 7', '::1', 0, '2020-05-05 07:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id_pemasukan` int(7) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nominal` int(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id_pemasukan`, `nama`, `nominal`, `date`, `time`) VALUES
(21, 'Saldo per 1/10 April 2020', 488800, '2020-04-11', '10:26:00'),
(22, 'PENJUALAN: pulsa axis 50k', 52000, '2020-04-11', '10:26:00'),
(23, 'Ngaqib bayar utang', 12000, '2020-04-11', '10:27:00'),
(24, 'PENJUALAN: Pulsa xl 50k', 52000, '2020-04-11', '10:40:00'),
(25, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-11', '10:47:00'),
(26, 'PENJUALAN: VOUCHER AXIS 1 GB (30 HARI)', 15000, '2020-04-11', '12:15:00'),
(27, 'PENJUALAN: VOUCHER SMARTFREN UNLIMITED _1GB/HR_(28 HR) - ricky glorie', 73000, '2020-04-11', '12:24:00'),
(28, 'PENJUALAN: pulsa tri 5k', 7000, '2020-04-11', '12:51:00'),
(29, 'PENJUALAN: VOUCHER TELKOMSEL 8 GB (30 HARI)', 60000, '2020-04-11', '16:24:00'),
(30, 'Tambah Recehan', 8400, '2020-04-11', '16:35:00'),
(31, 'Tambah recehan', 1500, '2020-04-11', '16:37:00'),
(32, 'PENJUALAN: VOUCHER TRI 2 GB (1  TH)  - Indy cell', 20000, '2020-04-11', '18:03:00'),
(33, 'PENJUALAN: VOUCHER TRI 2 GB (1  TH)  - Indy cell', 20000, '2020-04-11', '21:30:00'),
(34, 'Saldo per 13 April 2020', 51000, '2020-04-13', '08:29:00'),
(35, 'PENJUALAN: Pulsa Tsel 25k', 27000, '2020-04-13', '08:34:00'),
(36, 'PENJUALAN: Pulsa XL 5k', 7000, '2020-04-13', '08:34:00'),
(37, 'PENJUALAN: pulsa xl 10k', 12000, '2020-04-13', '08:35:00'),
(38, 'PENJUALAN: Data 3GB / 30 hr indosat', 27000, '2020-04-13', '09:46:00'),
(39, 'PENJUALAN: VOUCHER AXIS 1 GB (30 HARI)', 15000, '2020-04-13', '09:46:00'),
(40, 'PENJUALAN: VOUCHER AXIS 1 GB (30 HARI)', 15000, '2020-04-13', '16:06:00'),
(41, 'Fery bayar utang', 27000, '2020-04-13', '16:08:00'),
(42, 'Saldo per 14 April 2020', 300000, '2020-04-14', '09:54:00'),
(43, 'PENJUALAN: VOUCHER SMARTFREN UNLIMITED LITE _500MB/HR_(28 HR) - ricky glorie', 50000, '2020-04-14', '10:28:00'),
(44, 'PENJUALAN: VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 27000, '2020-04-14', '10:40:00'),
(45, 'PENJUALAN: Token Listrik 20k', 22000, '2020-04-14', '13:21:00'),
(46, 'PENJUALAN: VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 10000, '2020-04-14', '13:28:00'),
(47, 'PENJUALAN: VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 15000, '2020-04-14', '14:10:00'),
(48, 'PENJUALAN: VOUCHER TRI 3 GB AON (1 TH)  - Indy cell', 26000, '2020-04-14', '14:10:00'),
(49, 'PENJUALAN: VOUCHER INDOSAT FREEDOM INTERNET 2GB (15 HR) NASIONAL', 17000, '2020-04-14', '14:10:00'),
(50, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-14', '14:11:00'),
(51, 'PENJUALAN: Pulsa indosat 5k', 7000, '2020-04-14', '14:11:00'),
(52, 'PENJUALAN: PERDANA SMARTFREN UNLIMITED 30 HR', 75000, '2020-04-14', '14:53:00'),
(53, 'PENJUALAN: Tagihan pdam', 74000, '2020-04-14', '16:01:00'),
(55, 'PENJUALAN: Pulsa Tri 50k ', 52000, '2020-04-14', '16:07:00'),
(56, 'PENJUALAN: data telkomsel 750MB + 1GB OMG', 26000, '2020-04-14', '17:08:00'),
(57, 'PENJUALAN: pulsa indosat 10k', 12000, '2020-04-15', '09:17:00'),
(58, 'PENJUALAN: PERDANA TELKOMSEL 6,5 GB 30 HARI', 26000, '2020-04-15', '09:18:00'),
(59, 'CHARGER XIAOMI ORIGINIAL 100% QUALCOMM 3.0 Fast Charging MDY-08-EI', 40000, '2020-04-15', '11:01:11'),
(60, 'PENJUALAN: VOUCHER TRI 3 GB AON (1 TH)  - Indy cell', 26000, '2020-04-15', '10:57:00'),
(61, 'PENJUALAN: Pulsa tri 5k', 7000, '2020-04-15', '10:59:00'),
(62, 'PENJUALAN: VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 27000, '2020-04-15', '11:04:00'),
(63, 'PENJUALAN: VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 15000, '2020-04-15', '13:37:00'),
(64, 'PENJUALAN: Pulsa indosat 5k', 7000, '2020-04-15', '13:40:00'),
(65, 'PENJUALAN: Pulsa xl 25k', 27000, '2020-04-15', '13:40:00'),
(66, 'PENJUALAN: VOUCHER AXIS 1 GB (30 HARI)', 15000, '2020-04-15', '13:41:00'),
(70, 'PENJUALAN: Pulsa Telkomsel 10k', 12000, '2020-04-15', '15:12:00'),
(71, 'PENJUALAN: Pulsa indosat 10k', 12000, '2020-04-15', '16:05:00'),
(72, 'PENJUALAN: VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 15000, '2020-04-15', '17:06:00'),
(73, 'PENJUALAN: Data indosat 1GB + 4.5GB app unlimited youtube', 27000, '2020-04-15', '18:27:00'),
(74, 'PENJUALAN: Pulsa Indosat 5k', 7000, '2020-04-15', '18:54:00'),
(75, 'PENJUALAN: Pulsa Indosat 5k', 7000, '2020-04-15', '18:55:00'),
(76, 'PENJUALAN: Token listrik 100k', 102000, '2020-04-15', '20:28:00'),
(77, 'PENJUALAN: VOUCHER TRI 3 GB AON (1 TH)  - Indy cell', 26000, '2020-04-16', '11:06:00'),
(78, 'PENJUALAN: Pulsa Tri 50k ', 52000, '2020-04-16', '11:07:00'),
(79, 'INVESTASI CEO (Dalam miliyar)', 500, '2020-04-16', '11:18:00'),
(80, 'PENJUALAN: Pulsa Telkomsel 10k', 12000, '2020-04-16', '14:07:00'),
(81, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-16', '14:27:00'),
(82, 'tambahan dari uang saku', 5000, '2020-04-16', '16:14:00'),
(83, 'PENJUALAN: VOUCHER TRI 2 GB (1  TH)  - Indy cell', 20000, '2020-04-16', '17:59:00'),
(84, 'PENJUALAN: pulsa tri 10k', 12000, '2020-04-16', '18:00:00'),
(85, 'PENJUALAN: VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 10000, '2020-04-16', '19:36:00'),
(86, 'PENJUALAN: PDAM', 58000, '2020-04-16', '19:37:00'),
(87, 'PENJUALAN: Pulsa XL 50k', 52000, '2020-04-17', '07:22:00'),
(88, 'PENJUALAN: Pulsa tri 50k', 52000, '2020-04-17', '07:22:00'),
(89, 'PENJUALAN: Pulsa tri 10k', 12000, '2020-04-17', '07:23:00'),
(90, 'PENJUALAN: VOUCHER INDOSAT FREEDOM INTERNET 2GB (15 HR) NASIONAL', 17000, '2020-04-17', '09:50:00'),
(91, 'PENJUALAN: Pulsa Telkomsel 10k', 12000, '2020-04-17', '10:06:00'),
(92, 'PENJUALAN: VOUCHER XL 4,5 GB (30 HR)- Cahyo Sales', 30000, '2020-04-17', '11:15:00'),
(93, 'PENJUALAN: VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 10000, '2020-04-17', '11:16:00'),
(94, 'Donasi dr CEO ', 1500, '2020-04-17', '11:20:00'),
(95, 'PENJUALAN: VOUCHER SMARTFREN UNLIMITED _1GB/HR_(5 HR) - ricky glorie', 21000, '2020-04-17', '12:25:00'),
(96, 'PENJUALAN: Pulsa Tri 5k ', 7000, '2020-04-17', '14:07:00'),
(98, 'PENJUALAN: Pulsa telkomsel 20k', 22000, '2020-04-17', '19:28:00'),
(99, 'PENJUALAN: VOUCHER SMARTFREN 10N+ 1GB_24JAM_(7 HR) - ricky glorie', 10000, '2020-04-18', '08:01:00'),
(100, 'PENJUALAN: Pulsa XL 10K', 12000, '2020-04-18', '08:05:00'),
(101, 'DONAZI BOZZ', 6000, '2020-04-18', '10:37:00'),
(102, 'PENJUALAN: VOUCHER TRI 6 GB + UNLIMITED YOUTUBE (30 HR)', 52000, '2020-04-18', '10:54:00'),
(103, 'INVESTASI IBU MELINDA GATES', 1000, '2020-04-18', '13:07:00'),
(104, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-18', '14:33:00'),
(106, 'PENJUALAN: VOUCHER SMARTFREN 4GB 2GB24Jam_2GBmalam (30 HR)', 12000, '2020-04-18', '16:14:00'),
(107, 'PENJUALAN: Pulsa Telkomsel 25K', 27000, '2020-04-18', '17:15:00'),
(108, 'PENJUALAN: VOUCHER TRI 6 GB (1 TH) - Indy cell', 36000, '2020-04-18', '21:04:00'),
(109, 'PENJUALAN: PDAM', 33500, '2020-04-20', '07:46:00'),
(110, 'PENJUALAN: VOUCHER TRI 6 GB (1 TH) - Indy cell', 36000, '2020-04-20', '07:46:00'),
(111, 'PENJUALAN: VOUCHER TELKOMSEL 8 GB (30 HARI)', 61000, '2020-04-20', '07:46:00'),
(112, 'PENJUALAN: Tagihan PLN', 37500, '2020-04-20', '08:19:00'),
(113, 'PENJUALAN: Pulsa telkomsel 25k - mamake fathur', 27000, '2020-04-20', '08:33:00'),
(114, 'PENJUALAN: VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 27000, '2020-04-20', '09:34:00'),
(115, 'PENJUALAN: Token Listrik 50k', 52000, '2020-04-20', '09:35:00'),
(116, 'PENJUALAN: paket data telkomsel ', 27000, '2020-04-20', '12:08:00'),
(117, 'PENJUALAN: CHARGER SAMSUNG NOTE 4 ORIGINAL', 25000, '2020-04-20', '16:30:00'),
(118, 'PENJUALAN: Pulsa Axis 5k', 7000, '2020-04-20', '17:42:00'),
(119, 'PENJUALAN: VOUCHER SMARTFREN 10GB ( 5gb 24 jam + 5 GB malam )', 28000, '2020-04-20', '18:10:00'),
(120, 'PENJUALAN: VOUCHER SMARTFREN 10GB ( 5gb 24 jam + 5 GB malam )', 28000, '2020-04-20', '18:10:00'),
(122, 'PENJUALAN: Pulsa telkomsel 25k - fathur', 27000, '2020-04-21', '16:33:00'),
(123, 'PENJUALAN: VOUCHER SMARTFREN 10N+ 1GB_24JAM_(7 HR) - ricky glorie', 10000, '2020-04-21', '16:34:00'),
(124, 'PENJUALAN: PERDANA TRI 1 GB ', 10000, '2020-04-21', '16:35:00'),
(125, 'PENJUALAN: VOUCHER TRI 6 GB (1 TH) - Indy cell', 36000, '2020-04-21', '16:35:00'),
(126, 'PENJUALAN: VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 10000, '2020-04-21', '17:08:00'),
(127, 'PENJUALAN: Isi data axis 1 + 1GB', 22000, '2020-04-21', '17:47:00'),
(128, 'PENJUALAN: Pulsa telkomsel 20k', 22000, '2020-04-21', '18:49:00'),
(129, 'PENJUALAN: Pulsa XL 25k', 27000, '2020-04-21', '18:49:00'),
(130, 'PENJUALAN: Isi data Indosat 10GB / 30 hr', 52000, '2020-04-21', '18:50:00'),
(131, 'PENJUALAN: isi data XL 10GB + ult youtube', 69000, '2020-04-21', '20:13:00'),
(132, 'PENJUALAN: Tagihan listrik bapak toko ramai', 365658, '2020-04-22', '07:41:00'),
(133, 'PENJUALAN: Pulsa xl 25k', 27000, '2020-04-22', '09:45:00'),
(134, 'PENJUALAN: Pulsa xl 10k', 12000, '2020-04-22', '09:56:00'),
(135, 'PEMASUKAN BOSS', 100000, '2020-04-22', '11:13:00'),
(136, 'PENJUALAN: VOUCHER XL 8GB (30 HR)- Cahyo Sales', 40000, '2020-04-22', '13:41:00'),
(137, 'PENJUALAN: VOUCHER AXIS 1 GB (30 HARI)', 15000, '2020-04-22', '14:31:00'),
(138, 'PENJUALAN: Pulsa Telkomsel 20k - Fathur', 22000, '2020-04-23', '10:15:00'),
(139, 'PENJUALAN: VOUCHER SMARTFREN UNLIMITED _1GB/HR_(28 HR) - ricky glorie', 73000, '2020-04-23', '10:32:00'),
(140, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-23', '10:50:00'),
(141, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-23', '10:51:00'),
(142, 'PENJUALAN: Pulsa indosat 5k', 7000, '2020-04-23', '10:52:00'),
(143, 'PENJUALAN: Pulsa Telkomsel 5k', 7000, '2020-04-23', '10:53:00'),
(144, 'PENJUALAN: VOUCHER AXIS 1 GB (30 HARI)', 15000, '2020-04-23', '13:33:00'),
(145, 'PENJUALAN: VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 10000, '2020-04-23', '13:43:00'),
(146, 'PENJUALAN: VOUCHER TRI 2 GB (1  TH)  - Indy cell', 20000, '2020-04-23', '14:09:00'),
(147, 'PENJUALAN: VOUCHER INDOSAT 1GB (7 HARI)', 12000, '2020-04-23', '15:00:00'),
(149, 'PENJUALAN: VOUCHER AXIS 3 GB (15 HARI)', 21000, '2020-04-24', '10:00:00'),
(150, 'PENJUALAN: VOUCHER AXIS 3 GB (15 HARI)', 21000, '2020-04-24', '10:00:00'),
(151, 'PENJUALAN: Pulsa xl 10k', 12000, '2020-04-24', '11:08:00'),
(152, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-25', '08:51:00'),
(153, 'PENJUALAN: Pulsa indosat 5k', 7000, '2020-04-25', '08:51:00'),
(154, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-25', '08:51:00'),
(155, 'PENJUALAN: Pulsa Telkomsel 10k', 12000, '2020-04-25', '08:58:00'),
(156, 'PENJUALAN: Pulsa Telkomsel 10k', 12000, '2020-04-25', '11:12:00'),
(157, 'PENJUALAN: VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 10000, '2020-04-25', '14:02:00'),
(158, 'PENJUALAN: Pulsa Tri 10k ', 12000, '2020-04-25', '14:14:00'),
(159, 'PENJUALAN: Pulsa Telkomsel 75k', 77000, '2020-04-27', '07:51:00'),
(160, 'PENJUALAN: pulsa XL 5k', 7000, '2020-04-27', '07:51:00'),
(161, 'PENJUALAN: VOUCHER AXIS 1 GB (30 HARI)', 15000, '2020-04-27', '08:24:00'),
(162, 'PENJUALAN: Pulsa axis 5k - fathur', 7000, '2020-04-27', '08:27:00'),
(163, 'PENJUALAN: Pulsa Telkomsel 10k - fathur', 12000, '2020-04-27', '08:27:00'),
(165, 'PENJUALAN: Pulsa Telkomsel 25k - fathur', 27000, '2020-04-27', '08:38:00'),
(166, 'PENJUALAN: PERDANA XL 0K (GRATIS NELPON & SMS KE AXIS/XL)- Cahyo Sales', 5000, '2020-04-27', '09:44:00'),
(167, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-27', '09:48:00'),
(169, 'PENJUALAN: Data axis 1GB / 30 hari', 15000, '2020-04-27', '11:54:00'),
(170, 'PENJUALAN: KABEL OTG MICRO USB - rgaksesoris', 5000, '2020-04-27', '12:36:00'),
(171, 'PENJUALAN: PERDANA AS/ TELKOMSEL 5K ', 11500, '2020-04-27', '16:21:00'),
(172, 'PENJUALAN: Pulsa xl 5k', 7000, '2020-04-27', '17:16:00'),
(173, 'PENJUALAN: VOUCHER TRI 2 GB (1  TH)  - Indy cell', 20000, '2020-04-27', '17:16:00'),
(174, 'PENJUALAN: VOUCHER INDOSAT FREEDOM INTERNET 2GB (15 HR) NASIONAL', 17000, '2020-04-27', '17:18:00'),
(175, 'PENJUALAN: VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 27000, '2020-04-28', '08:19:00'),
(176, 'duit pakde ansor', 11500, '2020-04-28', '09:29:00'),
(177, 'PENJUALAN: Pulsa Telkomsel 25k - arfa', 27000, '2020-04-28', '09:37:00'),
(178, 'PENJUALAN: Pulsa Telkomsel 5k', 7000, '2020-04-28', '10:18:00'),
(179, 'PENJUALAN: Pulsa Indosat 10k', 12000, '2020-04-28', '12:51:00'),
(180, 'PENJUALAN: PERDANA TELKOMSEL 6,5 GB 30 HARI', 26000, '2020-04-28', '15:11:00'),
(181, 'PENJUALAN: VOUCHER TRI 6 GB (1 TH) - Indy cell', 36000, '2020-04-29', '06:59:00'),
(182, 'PENJUALAN: HEADSET XIAOMI PISTON 2', 25000, '2020-04-29', '07:01:00'),
(183, 'PENJUALAN: PERDANA TELKOMSEL 6,5 GB 30 HARI', 26000, '2020-04-29', '09:45:00'),
(184, 'PENJUALAN: VOUCHER TELKOMSEL 8 GB (30 HARI)', 61000, '2020-04-29', '09:46:00'),
(185, 'PENJUALAN: Pulsa Telkomsel 10k', 12000, '2020-04-29', '11:08:00'),
(186, 'PENJUALAN: Pulsa Telkomsel 10k', 12000, '2020-04-29', '14:21:00'),
(187, 'PENJUALAN: CHARGER SAMSUNG i9000/ GALAXY MINI PACK DUS ', 15000, '2020-04-29', '15:26:00'),
(188, 'PENJUALAN: VOUCHER AXIS 2GB + 1 GB LOKAL (30 HR)- Cahyo Sales', 25000, '2020-04-29', '16:42:00'),
(189, 'PENJUALAN: VOUCHER INDOSAT 1GB (7 HARI)', 12000, '2020-04-29', '16:53:00'),
(190, 'PENJUALAN: VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 10000, '2020-04-29', '16:53:00'),
(191, 'PENJUALAN: VOUCHER SMARTFREN UNLIMITED LITE _500MB/HR_(28 HR) - ricky glorie', 50000, '2020-04-30', '07:40:00'),
(192, 'PENJUALAN: Pulsa Telkomsel 5k - ngaqib nambah', 7000, '2020-04-30', '09:58:00'),
(193, 'PENJUALAN: Pulsa Telkomsel 5k - ngaqib', 7000, '2020-04-30', '09:58:00'),
(194, 'PENJUALAN: pulsa axis 5k', 7000, '2020-04-30', '10:15:00'),
(195, 'PENJUALAN: pulsa axis 5k', 7000, '2020-04-30', '10:15:00'),
(196, 'PENJUALAN: KABEL DATA VIVAN 1 TOPLES - micro usb', 15000, '2020-04-30', '10:47:00'),
(197, 'PENJUALAN: VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 15000, '2020-05-01', '12:47:00'),
(198, 'PENJUALAN: Token Listrik 20k', 22000, '2020-05-01', '15:45:00'),
(199, 'Temen Zulfa Bayar Voucher', 50000, '2020-05-01', '16:30:00'),
(200, 'PENJUALAN: Pulsa Tri 5k ', 7000, '2020-05-01', '17:24:00'),
(202, 'PENJUALAN: VOUCHER AXIS 1 GB (30 HARI)', 15000, '2020-05-02', '07:54:00'),
(203, 'PENJUALAN: VOUCHER TRI 6 GB + UNLIMITED YOUTUBE (30 HR)', 52000, '2020-05-02', '08:04:00'),
(204, 'PENJUALAN: Pulsa Telkomsel 10k - yu omah', 12000, '2020-05-02', '08:43:00'),
(206, 'PENJUALAN: VOUCHER TRI 2 GB (1  TH)  - Indy cell', 20000, '2020-05-02', '09:10:00'),
(207, 'PENJUALAN: pulsa axis 5k', 7000, '2020-05-02', '09:11:00'),
(208, 'PENJUALAN: paket data indosat 3 GB/30 Hari', 27000, '2020-05-02', '09:24:00'),
(209, 'PENJUALAN: VOUCHER TELKOMSEL 4 GB OMG 30 HR', 39000, '2020-05-02', '10:14:00'),
(210, 'PENJUALAN: Pulsa xl 10k', 12000, '2020-05-02', '10:31:00'),
(211, 'PENJUALAN: Pulsa Telkomsel 5k', 7000, '2020-05-02', '11:09:00'),
(212, 'PENJUALAN: Token Listrik 50k', 52000, '2020-05-02', '12:57:00'),
(213, 'PENJUALAN: Pulsa Telkomsel 10k', 12000, '2020-05-02', '15:05:00'),
(214, 'PENJUALAN: VOUCHER TRI 2 GB (1  TH)  - Indy cell', 20000, '2020-05-02', '16:00:00'),
(215, 'PENJUALAN: VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 10000, '2020-05-02', '16:10:00'),
(216, 'PENJUALAN: isi ulang data smarfren unlimited lite - temen zulfa', 50000, '2020-05-02', '17:04:00'),
(217, 'PENJUALAN: Pulsa Telkomsel 20k- Alfi', 22000, '2020-05-02', '17:05:00'),
(218, 'PENJUALAN: VOUCHER SMARTFREN 10GB ( 5gb 24 jam + 5 GB malam )', 28000, '2020-05-02', '17:07:00'),
(219, 'PENJUALAN: pulsa XL 10k', 12000, '2020-05-04', '07:27:00'),
(220, 'PENJUALAN: Pulsa Indosat 25k', 27000, '2020-05-04', '08:26:00'),
(221, 'PENJUALAN: Pulsa indosat 10k', 12000, '2020-05-04', '08:27:00'),
(222, 'PENJUALAN: VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 10000, '2020-05-04', '09:17:00'),
(223, 'PENJUALAN: Pulsa xl 10k - fathur', 12000, '2020-05-04', '09:17:00'),
(224, 'PENJUALAN: Pulsa Telkomsel 25k - fathur', 27000, '2020-05-04', '09:17:00'),
(225, 'PENJUALAN: Pulsa Telkomsel 50k - Khansa', 52000, '2020-05-04', '09:48:00'),
(226, 'donasi jajaran tinggi border cell', 8400, '2020-05-04', '09:50:00'),
(227, 'PENJUALAN: Pulsa Tri 10k ', 12000, '2020-05-04', '11:35:00'),
(228, 'PENJUALAN: Pulsa xl 25k', 27000, '2020-05-04', '13:38:00'),
(229, 'PENJUALAN: HEADSET XIAOMI PISTON 2', 25000, '2020-05-04', '17:17:00'),
(230, 'PENJUALAN: pulsa tri 20k', 22000, '2020-05-04', '17:18:00'),
(231, 'PENJUALAN: Pulsa indosat 20k', 22000, '2020-05-04', '17:19:00'),
(232, 'PENJUALAN: VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 27000, '2020-05-05', '08:13:00'),
(233, 'PENJUALAN: VOUCHER TRI 6 GB + UNLIMITED YOUTUBE (30 HR)', 52000, '2020-05-05', '08:22:00'),
(234, 'PENJUALAN: VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 15000, '2020-05-05', '08:38:00'),
(235, 'PENJUALAN: Pulsa XL 10K - pakde nur', 12000, '2020-05-05', '14:33:00'),
(236, 'PENJUALAN: paket data indosat 3 GB/30 Hari', 27000, '2020-05-05', '15:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(7) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nominal` int(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `nama`, `nominal`, `date`, `time`) VALUES
(3, 'beli minum', 20000, '2020-04-11', '11:03:00'),
(4, 'Beli Voucher 8 dan Perdana Smartfren 8', 224400, '2020-04-11', '14:30:00'),
(5, 'Pengamen', 500, '2020-04-13', '09:47:00'),
(6, 'Pengamen', 500, '2020-04-13', '10:19:00'),
(7, 'Bensin LindZul', 10000, '2020-04-13', '16:56:00'),
(8, 'BELANJA VOUCHER MAS YOGA', 518000, '2020-04-13', '18:24:00'),
(9, 'Beli Kartu Telkomsel 8GB', 200000, '2020-04-14', '14:14:00'),
(10, 'beli es torabika', 5000, '2020-04-14', '14:15:00'),
(11, 'TAMBAHAN BIAYA SATIR + MINUM TUKANG', 169000, '2020-04-14', '20:03:00'),
(12, 'Ambil buat isi saldo elektrik', 300000, '2020-04-15', '20:49:00'),
(13, 'CEO ambil dari perusahaan', 100000, '2020-04-16', '11:14:00'),
(14, 'Banner satir ', 113000, '2020-04-16', '19:38:00'),
(15, 'Isi saldo mitra + amin utang', 300000, '2020-04-17', '11:19:00'),
(16, 'beli voucher mas yoga', 430000, '2020-04-18', '11:12:00'),
(17, 'BAN BOCOR', 65000, '2020-04-18', '16:02:00'),
(18, 'TOP UP Saldo Mitra', 200000, '2020-04-20', '12:22:00'),
(19, 'JAJAN CEO DAN PARA STAFF', 20000, '2020-04-20', '12:49:00'),
(20, 'REM BLONG SIBOS', 30000, '2020-04-20', '15:23:00'),
(21, 'TOPUP SALDO MITRA', 50000, '2020-04-20', '19:57:00'),
(22, 'Dicolong sama BOS', 6000, '2020-04-20', '19:58:00'),
(23, 'Bensin para Staff', 20000, '2020-04-21', '16:53:00'),
(24, 'Isi saldo mitra', 310000, '2020-04-22', '07:36:00'),
(25, 'Di colong sama si bos', 90000, '2020-04-22', '07:37:00'),
(26, 'Isi saldo mitra', 100000, '2020-04-22', '07:43:00'),
(27, 'Bayar listrik border cell bulan periode maret-april', 30658, '2020-04-22', '07:46:00'),
(28, 'Si bos jajan kripik ketela bureng', 5000, '2020-04-22', '07:49:00'),
(29, 'BASRENGGG + KETJAPP + TORABIIKA', 12500, '2020-04-22', '10:16:00'),
(30, 'UTANG NALANGIN SOFI', 300000, '2020-04-22', '11:09:00'),
(31, 'NAMBELI BOSS', 100000, '2020-04-25', '16:05:00'),
(32, 'Si Bos memeriksakan si Utun', 150000, '2020-04-27', '07:47:00'),
(33, 'Isi Saldo Mitra', 100000, '2020-04-27', '08:05:00'),
(34, 'Jajan CEO dan jajaran para staff petinggi border cell', 70000, '2020-04-28', '16:13:00'),
(35, 'Isi saldo mitra dan bos kayaknya nyolong deh', 300000, '2020-04-28', '17:04:00'),
(36, 'Serabikan My Mom', 10000, '2020-05-01', '07:52:00'),
(37, 'isi saldo mitra + order quota', 350000, '2020-05-02', '10:39:00'),
(38, 'sumbangan coviddd CHINA', 2000, '2020-05-02', '10:46:00'),
(39, 'ISI SALDO ORDER KUOTA', 100000, '2020-05-02', '14:16:00'),
(40, 'Pak bos nyolong katanya buat jajan utun, tp kayaknya pak bos bohong', 110000, '2020-05-03', '12:03:00'),
(41, 'Isi saldo order kuota', 150000, '2020-05-04', '09:23:00'),
(42, 'beli smartfren VD ULT 1GB/30 HR', 355000, '2020-05-05', '12:37:00');

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
(154, 0, 0, 'token listrik 50k', 50500, 52000, 1, 52000, '2020-04-08', '20:13:00', 'elektrik'),
(155, 0, 167, 'VOUCHER TELKOMSEL 8 GB _30 HARI_', 0, 60000, 1, 60000, '2020-04-09', '09:22:00', 'non-elektrik'),
(156, 0, 150, 'VOUCHER AXIS 1 GB _5 HR__ Cahyo Sales', 0, 10000, 1, 10000, '2020-04-09', '11:31:00', 'non-elektrik'),
(157, 0, 0, 'token listrik 50k', 50500, 52000, 1, 52000, '2020-04-10', '17:45:00', 'elektrik'),
(158, 0, 0, 'pulsa xl 25k', 24900, 27000, 1, 27000, '2020-04-10', '17:45:00', 'elektrik'),
(173, 0, 0, 'pulsa axis 50k', 49500, 52000, 1, 52000, '2020-04-11', '10:26:00', 'elektrik'),
(174, 0, 0, 'Pulsa xl 50k', 49500, 52000, 1, 52000, '2020-04-11', '10:40:00', 'elektrik'),
(175, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-11', '10:47:00', 'elektrik'),
(176, 0, 163, 'VOUCHER AXIS 1 GB (30 HARI)', 0, 15000, 1, 15000, '2020-04-11', '12:15:00', 'non-elektrik'),
(177, 0, 28, 'VOUCHER SMARTFREN UNLIMITED _1GB/HR_(28 HR) - ricky glorie', 0, 73000, 1, 73000, '2020-04-11', '12:24:00', 'non-elektrik'),
(178, 0, 0, 'pulsa tri 5k', 5275, 7000, 1, 7000, '2020-04-11', '12:51:00', 'elektrik'),
(179, 0, 167, 'VOUCHER TELKOMSEL 8 GB (30 HARI)', 0, 60000, 1, 60000, '2020-04-11', '16:24:00', 'non-elektrik'),
(180, 0, 155, 'VOUCHER TRI 2 GB (1  TH)  - Indy cell', 0, 20000, 1, 20000, '2020-04-11', '18:03:00', 'non-elektrik'),
(181, 0, 155, 'VOUCHER TRI 2 GB (1  TH)  - Indy cell', 0, 20000, 1, 20000, '2020-04-11', '21:30:00', 'non-elektrik'),
(182, 0, 0, 'Pulsa Tsel 25k', 24900, 27000, 1, 27000, '2020-04-13', '08:34:00', 'elektrik'),
(183, 0, 0, 'Pulsa XL 5k', 5775, 7000, 1, 7000, '2020-04-13', '08:34:00', 'elektrik'),
(184, 0, 0, 'pulsa xl 10k', 10750, 12000, 1, 12000, '2020-04-13', '08:35:00', 'elektrik'),
(185, 0, 0, 'Data 3GB / 30 hr indosat', 24750, 27000, 1, 27000, '2020-04-13', '09:46:00', 'elektrik'),
(186, 0, 163, 'VOUCHER AXIS 1 GB (30 HARI)', 0, 15000, 1, 15000, '2020-04-13', '09:46:00', 'non-elektrik'),
(187, 0, 163, 'VOUCHER AXIS 1 GB (30 HARI)', 0, 15000, 1, 15000, '2020-04-13', '16:06:00', 'non-elektrik'),
(188, 0, 170, 'VOUCHER SMARTFREN UNLIMITED LITE _500MB/HR_(28 HR) - ricky glorie', 0, 50000, 1, 50000, '2020-04-14', '10:28:00', 'non-elektrik'),
(189, 0, 166, 'VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 0, 27000, 1, 27000, '2020-04-14', '10:40:00', 'non-elektrik'),
(190, 0, 0, 'Token Listrik 20k', 20500, 22000, 1, 22000, '2020-04-14', '13:21:00', 'elektrik'),
(191, 0, 150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 0, 10000, 1, 10000, '2020-04-14', '13:28:00', 'non-elektrik'),
(192, 0, 153, 'VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 0, 15000, 1, 15000, '2020-04-14', '14:10:00', 'non-elektrik'),
(193, 0, 156, 'VOUCHER TRI 3 GB AON (1 TH)  - Indy cell', 0, 26000, 1, 26000, '2020-04-14', '14:10:00', 'non-elektrik'),
(194, 0, 14, 'VOUCHER INDOSAT FREEDOM INTERNET 2GB (15 HR) NASIONAL', 0, 17000, 1, 17000, '2020-04-14', '14:10:00', 'non-elektrik'),
(195, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-14', '14:11:00', 'elektrik'),
(196, 0, 0, 'Pulsa indosat 5k', 5950, 7000, 1, 7000, '2020-04-14', '14:11:00', 'elektrik'),
(197, 0, 174, 'PERDANA SMARTFREN UNLIMITED 30 HR', 0, 75000, 1, 75000, '2020-04-14', '14:53:00', 'non-elektrik'),
(198, 0, 0, 'Tagihan pdam', 72900, 74000, 1, 74000, '2020-04-14', '16:01:00', 'elektrik'),
(199, 0, 0, 'Pulsa Tri 50k ', 49200, 52000, 1, 52000, '2020-04-14', '16:07:00', 'elektrik'),
(200, 0, 0, 'data telkomsel 750MB + 1GB OMG', 24800, 26000, 1, 26000, '2020-04-14', '17:08:00', 'elektrik'),
(201, 0, 0, 'pulsa indosat 10k', 10875, 12000, 1, 12000, '2020-04-15', '09:17:00', 'elektrik'),
(202, 0, 176, 'PERDANA TELKOMSEL 6,5 GB 30 HARI', 0, 26000, 1, 26000, '2020-04-15', '09:18:00', 'non-elektrik'),
(203, 0, 10, 'CHARGER XIAOMI ORIGINIAL 100% QUALCOMM 3.0 Fast Charging MDY-08-EI', 0, 40000, 1, 40000, '2020-04-15', '11:03:09', 'non-elektrik'),
(204, 0, 156, 'VOUCHER TRI 3 GB AON (1 TH)  - Indy cell', 0, 26000, 1, 26000, '2020-04-15', '10:57:00', 'non-elektrik'),
(205, 0, 0, 'Pulsa tri 5k', 5275, 7000, 1, 7000, '2020-04-15', '10:59:00', 'elektrik'),
(206, 0, 166, 'VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 0, 27000, 1, 27000, '2020-04-15', '11:04:00', 'non-elektrik'),
(208, 0, 0, 'Pulsa indosat 5k', 5950, 7000, 1, 7000, '2020-04-15', '13:40:00', 'elektrik'),
(209, 0, 0, 'Pulsa xl 25k', 24700, 27000, 1, 27000, '2020-04-15', '13:40:00', 'elektrik'),
(213, 0, 163, 'VOUCHER AXIS 1 GB (30 HARI)', 0, 15000, 1, 15000, '2020-04-15', '13:46:00', 'non-elektrik'),
(214, 0, 0, 'Pulsa Telkomsel 10k', 10375, 12000, 1, 12000, '2020-04-15', '15:12:00', 'elektrik'),
(215, 0, 0, 'Pulsa indosat 10k', 10875, 12000, 1, 12000, '2020-04-15', '16:05:00', 'elektrik'),
(216, 0, 153, 'VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 0, 15000, 1, 15000, '2020-04-15', '17:06:00', 'non-elektrik'),
(217, 0, 0, 'Data indosat 1GB + 4.5GB app unlimited youtube', 24750, 27000, 1, 27000, '2020-04-15', '18:27:00', 'elektrik'),
(218, 0, 0, 'Pulsa Indosat 5k', 5950, 7000, 1, 7000, '2020-04-15', '18:54:00', 'elektrik'),
(219, 0, 0, 'Pulsa Indosat 5k', 5950, 7000, 1, 7000, '2020-04-15', '18:55:00', 'elektrik'),
(220, 0, 0, 'Token listrik 100k', 100500, 102000, 1, 102000, '2020-04-15', '20:28:00', 'elektrik'),
(221, 0, 156, 'VOUCHER TRI 3 GB AON (1 TH)  - Indy cell', 0, 26000, 1, 26000, '2020-04-16', '11:06:00', 'non-elektrik'),
(222, 0, 0, 'Pulsa Tri 50k ', 49200, 52000, 1, 52000, '2020-04-16', '11:07:00', 'elektrik'),
(223, 0, 0, 'Pulsa Telkomsel 10k', 10375, 12000, 1, 12000, '2020-04-16', '14:07:00', 'elektrik'),
(224, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-16', '14:27:00', 'elektrik'),
(225, 0, 155, 'VOUCHER TRI 2 GB (1  TH)  - Indy cell', 0, 20000, 1, 20000, '2020-04-16', '17:59:00', 'non-elektrik'),
(226, 0, 0, 'pulsa tri 10k', 10000, 12000, 1, 12000, '2020-04-16', '18:00:00', 'elektrik'),
(227, 0, 150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 0, 10000, 1, 10000, '2020-04-16', '19:36:00', 'non-elektrik'),
(228, 0, 0, 'PDAM', 56000, 58000, 1, 58000, '2020-04-16', '19:37:00', 'elektrik'),
(229, 0, 0, 'Pulsa XL 50k', 49500, 52000, 1, 52000, '2020-04-17', '07:22:00', 'elektrik'),
(230, 0, 0, 'Pulsa tri 50k', 49200, 52000, 1, 52000, '2020-04-17', '07:22:00', 'elektrik'),
(231, 0, 0, 'Pulsa tri 10k', 10250, 12000, 1, 12000, '2020-04-17', '07:23:00', 'elektrik'),
(232, 0, 14, 'VOUCHER INDOSAT FREEDOM INTERNET 2GB (15 HR) NASIONAL', 0, 17000, 1, 17000, '2020-04-17', '09:50:00', 'non-elektrik'),
(233, 0, 0, 'Pulsa Telkomsel 10k', 10375, 12000, 1, 12000, '2020-04-17', '10:06:00', 'elektrik'),
(234, 0, 152, 'VOUCHER XL 4,5 GB (30 HR)- Cahyo Sales', 0, 30000, 1, 30000, '2020-04-17', '11:15:00', 'non-elektrik'),
(235, 0, 150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 0, 10000, 1, 10000, '2020-04-17', '11:16:00', 'non-elektrik'),
(236, 0, 171, 'VOUCHER SMARTFREN UNLIMITED _1GB/HR_(5 HR) - ricky glorie', 0, 21000, 1, 21000, '2020-04-17', '12:25:00', 'non-elektrik'),
(237, 0, 0, 'Pulsa Tri 5k ', 5275, 7000, 1, 7000, '2020-04-17', '14:07:00', 'elektrik'),
(239, 0, 0, 'Pulsa telkomsel 20k', 19990, 22000, 1, 22000, '2020-04-17', '19:28:00', 'elektrik'),
(240, 0, 173, 'VOUCHER SMARTFREN 10N+ 1GB_24JAM_(7 HR) - ricky glorie', 0, 10000, 1, 10000, '2020-04-18', '08:01:00', 'non-elektrik'),
(241, 0, 0, 'Pulsa XL 10K', 10675, 12000, 1, 12000, '2020-04-18', '08:05:00', 'elektrik'),
(242, 0, 180, 'VOUCHER TRI 6 GB + UNLIMITED YOUTUBE (30 HR)', 0, 52000, 1, 52000, '2020-04-18', '10:54:00', 'non-elektrik'),
(243, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-18', '14:33:00', 'elektrik'),
(245, 0, 27, 'VOUCHER SMARTFREN 4GB 2GB24Jam_2GBmalam (30 HR)', 0, 12000, 1, 12000, '2020-04-18', '16:14:00', 'non-elektrik'),
(246, 0, 0, 'Pulsa Telkomsel 25K', 24900, 27000, 1, 27000, '2020-04-18', '17:15:00', 'elektrik'),
(247, 0, 154, 'VOUCHER TRI 6 GB (1 TH) - Indy cell', 0, 36000, 1, 36000, '2020-04-18', '21:04:00', 'non-elektrik'),
(248, 0, 0, 'PDAM', 31500, 33500, 1, 33500, '2020-04-20', '07:46:00', 'elektrik'),
(249, 0, 154, 'VOUCHER TRI 6 GB (1 TH) - Indy cell', 0, 36000, 1, 36000, '2020-04-20', '07:46:00', 'non-elektrik'),
(250, 0, 167, 'VOUCHER TELKOMSEL 8 GB (30 HARI)', 0, 61000, 1, 61000, '2020-04-20', '07:46:00', 'non-elektrik'),
(251, 0, 0, 'Tagihan PLN', 35717, 37500, 1, 37500, '2020-04-20', '08:19:00', 'elektrik'),
(252, 0, 0, 'Pulsa telkomsel 25k - mamake fathur', 24900, 27000, 1, 27000, '2020-04-20', '08:33:00', 'elektrik'),
(253, 0, 166, 'VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 0, 27000, 1, 27000, '2020-04-20', '09:34:00', 'non-elektrik'),
(254, 0, 0, 'Token Listrik 50k', 50500, 52000, 1, 52000, '2020-04-20', '09:35:00', 'elektrik'),
(255, 0, 0, 'paket data telkomsel ', 24800, 27000, 1, 27000, '2020-04-20', '12:08:00', 'elektrik'),
(256, 0, 144, 'CHARGER SAMSUNG NOTE 4 ORIGINAL', 0, 25000, 1, 25000, '2020-04-20', '16:30:00', 'non-elektrik'),
(257, 0, 0, 'Pulsa Axis 5k', 5775, 7000, 1, 7000, '2020-04-20', '17:42:00', 'elektrik'),
(258, 0, 21, 'VOUCHER SMARTFREN 10GB ( 5gb 24 jam + 5 GB malam )', 0, 28000, 1, 28000, '2020-04-20', '18:10:00', 'non-elektrik'),
(259, 0, 21, 'VOUCHER SMARTFREN 10GB ( 5gb 24 jam + 5 GB malam )', 0, 28000, 1, 28000, '2020-04-20', '18:10:00', 'non-elektrik'),
(261, 0, 0, 'Pulsa telkomsel 25k - fathur', 24900, 27000, 1, 27000, '2020-04-21', '16:33:00', 'elektrik'),
(262, 0, 173, 'VOUCHER SMARTFREN 10N+ 1GB_24JAM_(7 HR) - ricky glorie', 0, 10000, 1, 10000, '2020-04-21', '16:34:00', 'non-elektrik'),
(263, 0, 179, 'PERDANA TRI 1 GB ', 0, 10000, 1, 10000, '2020-04-21', '16:35:00', 'non-elektrik'),
(264, 0, 154, 'VOUCHER TRI 6 GB (1 TH) - Indy cell', 0, 36000, 1, 36000, '2020-04-21', '16:35:00', 'non-elektrik'),
(265, 0, 150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 0, 10000, 1, 10000, '2020-04-21', '17:08:00', 'non-elektrik'),
(266, 0, 0, 'Isi data axis 1 + 1GB', 20500, 22000, 1, 22000, '2020-04-21', '17:47:00', 'elektrik'),
(267, 0, 0, 'Pulsa telkomsel 20k', 19990, 22000, 1, 22000, '2020-04-21', '18:49:00', 'elektrik'),
(268, 0, 0, 'Pulsa XL 25k', 24550, 27000, 1, 27000, '2020-04-21', '18:49:00', 'elektrik'),
(269, 0, 0, 'Isi data Indosat 10GB / 30 hr', 49500, 52000, 1, 52000, '2020-04-21', '18:50:00', 'elektrik'),
(270, 0, 0, 'isi data XL 10GB + ult youtube', 66900, 69000, 1, 69000, '2020-04-21', '20:13:00', 'elektrik'),
(271, 0, 0, 'Tagihan listrik bapak toko ramai', 363658, 365658, 1, 365658, '2020-04-22', '07:41:00', 'elektrik'),
(272, 0, 0, 'Pulsa xl 25k', 24550, 27000, 1, 27000, '2020-04-22', '09:45:00', 'elektrik'),
(273, 0, 0, 'Pulsa xl 10k', 10750, 12000, 1, 12000, '2020-04-22', '09:56:00', 'elektrik'),
(274, 0, 161, 'VOUCHER XL 8GB (30 HR)- Cahyo Sales', 0, 40000, 1, 40000, '2020-04-22', '13:41:00', 'non-elektrik'),
(275, 0, 163, 'VOUCHER AXIS 1 GB (30 HARI)', 0, 15000, 1, 15000, '2020-04-22', '14:31:00', 'non-elektrik'),
(276, 0, 0, 'Pulsa Telkomsel 20k - Fathur', 19990, 22000, 1, 22000, '2020-04-23', '10:15:00', 'elektrik'),
(277, 0, 28, 'VOUCHER SMARTFREN UNLIMITED _1GB/HR_(28 HR) - ricky glorie', 0, 73000, 1, 73000, '2020-04-23', '10:32:00', 'non-elektrik'),
(278, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-23', '10:50:00', 'elektrik'),
(279, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-23', '10:51:00', 'elektrik'),
(280, 0, 0, 'Pulsa indosat 5k', 5950, 7000, 1, 7000, '2020-04-23', '10:52:00', 'elektrik'),
(281, 0, 0, 'Pulsa Telkomsel 5k', 5700, 7000, 1, 7000, '2020-04-23', '10:53:00', 'elektrik'),
(282, 0, 163, 'VOUCHER AXIS 1 GB (30 HARI)', 0, 15000, 1, 15000, '2020-04-23', '13:33:00', 'non-elektrik'),
(283, 0, 150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 0, 10000, 1, 10000, '2020-04-23', '13:43:00', 'non-elektrik'),
(284, 0, 155, 'VOUCHER TRI 2 GB (1  TH)  - Indy cell', 0, 20000, 1, 20000, '2020-04-23', '14:09:00', 'non-elektrik'),
(285, 0, 26, 'VOUCHER INDOSAT 1GB (7 HARI)', 0, 12000, 1, 12000, '2020-04-23', '15:00:00', 'non-elektrik'),
(287, 0, 164, 'VOUCHER AXIS 3 GB (15 HARI)', 0, 21000, 1, 21000, '2020-04-24', '10:00:00', 'non-elektrik'),
(288, 0, 164, 'VOUCHER AXIS 3 GB (15 HARI)', 0, 21000, 1, 21000, '2020-04-24', '10:00:00', 'non-elektrik'),
(289, 0, 0, 'Pulsa xl 10k', 10750, 12000, 1, 12000, '2020-04-24', '11:08:00', 'elektrik'),
(290, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-25', '08:51:00', 'elektrik'),
(291, 0, 0, 'Pulsa indosat 5k', 5950, 7000, 1, 7000, '2020-04-25', '08:51:00', 'elektrik'),
(292, 0, 0, 'Pulsa xl 5k', 5775, 7000, 1, 7000, '2020-04-25', '08:51:00', 'elektrik'),
(293, 0, 0, 'Pulsa Telkomsel 10k', 10475, 12000, 1, 12000, '2020-04-25', '08:58:00', 'elektrik'),
(294, 0, 0, 'Pulsa Telkomsel 10k', 10475, 12000, 1, 12000, '2020-04-25', '11:12:00', 'elektrik'),
(295, 0, 150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 0, 10000, 1, 10000, '2020-04-25', '14:02:00', 'non-elektrik'),
(296, 0, 0, 'Pulsa Tri 10k ', 10200, 12000, 1, 12000, '2020-04-25', '14:14:00', 'elektrik'),
(297, 0, 0, 'Pulsa Telkomsel 75k', 73900, 77000, 1, 77000, '2020-04-27', '07:51:00', 'elektrik'),
(298, 0, 0, 'pulsa XL 5k', 5775, 7000, 1, 7000, '2020-04-27', '07:51:00', 'elektrik'),
(299, 0, 163, 'VOUCHER AXIS 1 GB (30 HARI)', 0, 15000, 1, 15000, '2020-04-27', '08:24:00', 'non-elektrik'),
(300, 0, 0, 'Pulsa axis 5k - fathur', 5775, 7000, 1, 7000, '2020-04-27', '08:27:00', 'elektrik'),
(301, 0, 0, 'Pulsa Telkomsel 10k - fathur', 10475, 12000, 1, 12000, '2020-04-27', '08:27:00', 'elektrik'),
(303, 0, 0, 'Pulsa Telkomsel 25k - fathur', 24774, 27000, 1, 27000, '2020-04-27', '08:38:00', 'elektrik'),
(304, 0, 160, 'PERDANA XL 0K (GRATIS NELPON & SMS KE AXIS/XL)- Cahyo Sales', 0, 5000, 1, 5000, '2020-04-27', '09:44:00', 'non-elektrik'),
(305, 0, 0, 'Pulsa xl 5k', 5850, 7000, 1, 7000, '2020-04-27', '09:48:00', 'elektrik'),
(307, 0, 0, 'Data axis 1GB / 30 hari', 12825, 15000, 1, 15000, '2020-04-27', '11:54:00', 'elektrik'),
(308, 0, 224, 'KABEL OTG MICRO USB - rgaksesoris', 0, 5000, 1, 5000, '2020-04-27', '12:36:00', 'non-elektrik'),
(309, 0, 159, 'PERDANA AS/ TELKOMSEL 5K ', 0, 11500, 1, 11500, '2020-04-27', '16:21:00', 'non-elektrik'),
(310, 0, 0, 'Pulsa xl 5k', 5850, 7000, 1, 7000, '2020-04-27', '17:16:00', 'elektrik'),
(311, 0, 155, 'VOUCHER TRI 2 GB (1  TH)  - Indy cell', 0, 20000, 1, 20000, '2020-04-27', '17:16:00', 'non-elektrik'),
(312, 0, 14, 'VOUCHER INDOSAT FREEDOM INTERNET 2GB (15 HR) NASIONAL', 0, 17000, 1, 17000, '2020-04-27', '17:18:00', 'non-elektrik'),
(313, 0, 166, 'VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 0, 27000, 1, 27000, '2020-04-28', '08:19:00', 'non-elektrik'),
(314, 0, 0, 'Pulsa Telkomsel 25k - arfa', 24900, 27000, 1, 27000, '2020-04-28', '09:37:00', 'elektrik'),
(315, 0, 0, 'Pulsa Telkomsel 5k', 5700, 7000, 1, 7000, '2020-04-28', '10:18:00', 'elektrik'),
(316, 0, 0, 'Pulsa Indosat 10k', 10900, 12000, 1, 12000, '2020-04-28', '12:51:00', 'elektrik'),
(317, 0, 176, 'PERDANA TELKOMSEL 6,5 GB 30 HARI', 0, 26000, 1, 26000, '2020-04-28', '15:11:00', 'non-elektrik'),
(318, 0, 154, 'VOUCHER TRI 6 GB (1 TH) - Indy cell', 0, 36000, 1, 36000, '2020-04-29', '06:59:00', 'non-elektrik'),
(319, 0, 141, 'HEADSET XIAOMI PISTON 2', 0, 25000, 1, 25000, '2020-04-29', '07:01:00', 'non-elektrik'),
(320, 0, 176, 'PERDANA TELKOMSEL 6,5 GB 30 HARI', 0, 26000, 1, 26000, '2020-04-29', '09:45:00', 'non-elektrik'),
(321, 0, 167, 'VOUCHER TELKOMSEL 8 GB (30 HARI)', 0, 61000, 1, 61000, '2020-04-29', '09:46:00', 'non-elektrik'),
(322, 0, 0, 'Pulsa Telkomsel 10k', 10370, 12000, 1, 12000, '2020-04-29', '11:08:00', 'elektrik'),
(323, 0, 0, 'Pulsa Telkomsel 10k', 10300, 12000, 1, 12000, '2020-04-29', '14:21:00', 'elektrik'),
(324, 0, 145, 'CHARGER SAMSUNG i9000/ GALAXY MINI PACK DUS ', 0, 15000, 1, 15000, '2020-04-29', '15:26:00', 'non-elektrik'),
(325, 0, 162, 'VOUCHER AXIS 2GB + 1 GB LOKAL (30 HR)- Cahyo Sales', 0, 25000, 1, 25000, '2020-04-29', '16:42:00', 'non-elektrik'),
(326, 0, 26, 'VOUCHER INDOSAT 1GB (7 HARI)', 0, 12000, 1, 12000, '2020-04-29', '16:53:00', 'non-elektrik'),
(327, 0, 150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 0, 10000, 1, 10000, '2020-04-29', '16:53:00', 'non-elektrik'),
(328, 0, 170, 'VOUCHER SMARTFREN UNLIMITED LITE _500MB/HR_(28 HR) - ricky glorie', 0, 50000, 1, 50000, '2020-04-30', '07:40:00', 'non-elektrik'),
(329, 0, 0, 'Pulsa Telkomsel 5k - ngaqib nambah', 5585, 7000, 1, 7000, '2020-04-30', '09:58:00', 'elektrik'),
(330, 0, 0, 'Pulsa Telkomsel 5k - ngaqib', 5585, 7000, 1, 7000, '2020-04-30', '09:58:00', 'elektrik'),
(331, 0, 0, 'pulsa axis 5k', 5850, 7000, 1, 7000, '2020-04-30', '10:15:00', 'elektrik'),
(332, 0, 0, 'pulsa axis 5k', 5850, 7000, 1, 7000, '2020-04-30', '10:15:00', 'elektrik'),
(333, 0, 146, 'KABEL DATA VIVAN 1 TOPLES - micro usb', 0, 15000, 1, 15000, '2020-04-30', '10:47:00', 'non-elektrik'),
(334, 0, 153, 'VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 0, 15000, 1, 15000, '2020-05-01', '12:47:00', 'non-elektrik'),
(335, 0, 0, 'Token Listrik 20k', 20135, 22000, 1, 22000, '2020-05-01', '15:45:00', 'elektrik'),
(336, 0, 0, 'Pulsa Tri 5k ', 5325, 7000, 1, 7000, '2020-05-01', '17:24:00', 'elektrik'),
(338, 0, 163, 'VOUCHER AXIS 1 GB (30 HARI)', 0, 15000, 1, 15000, '2020-05-02', '07:54:00', 'non-elektrik'),
(339, 0, 180, 'VOUCHER TRI 6 GB + UNLIMITED YOUTUBE (30 HR)', 0, 52000, 1, 52000, '2020-05-02', '08:04:00', 'non-elektrik'),
(340, 0, 0, 'Pulsa Telkomsel 10k - yu omah', 10450, 12000, 1, 12000, '2020-05-02', '08:43:00', 'elektrik'),
(342, 0, 155, 'VOUCHER TRI 2 GB (1  TH)  - Indy cell', 0, 20000, 1, 20000, '2020-05-02', '09:10:00', 'non-elektrik'),
(343, 0, 0, 'pulsa axis 5k', 5850, 7000, 1, 7000, '2020-05-02', '09:11:00', 'elektrik'),
(344, 0, 0, 'paket data indosat 3 GB/30 Hari', 24499, 27000, 1, 27000, '2020-05-02', '09:24:00', 'elektrik'),
(345, 0, 175, 'VOUCHER TELKOMSEL 4 GB OMG 30 HR', 0, 39000, 1, 39000, '2020-05-02', '10:14:00', 'non-elektrik'),
(346, 0, 0, 'Pulsa xl 10k', 10815, 12000, 1, 12000, '2020-05-02', '10:31:00', 'elektrik'),
(347, 0, 0, 'Pulsa Telkomsel 5k', 5464, 7000, 1, 7000, '2020-05-02', '11:09:00', 'elektrik'),
(348, 0, 0, 'Token Listrik 50k', 50150, 52000, 1, 52000, '2020-05-02', '12:57:00', 'elektrik'),
(349, 0, 0, 'Pulsa Telkomsel 10k', 10243, 12000, 1, 12000, '2020-05-02', '15:05:00', 'elektrik'),
(350, 0, 155, 'VOUCHER TRI 2 GB (1  TH)  - Indy cell', 0, 20000, 1, 20000, '2020-05-02', '16:00:00', 'non-elektrik'),
(351, 0, 150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 0, 10000, 1, 10000, '2020-05-02', '16:10:00', 'non-elektrik'),
(352, 0, 0, 'isi ulang data smarfren unlimited lite - temen zulfa', 47000, 50000, 1, 50000, '2020-05-02', '17:04:00', 'elektrik'),
(353, 0, 0, 'Pulsa Telkomsel 20k- Alfi', 20029, 22000, 1, 22000, '2020-05-02', '17:05:00', 'elektrik'),
(354, 0, 21, 'VOUCHER SMARTFREN 10GB ( 5gb 24 jam + 5 GB malam )', 0, 28000, 1, 28000, '2020-05-02', '17:07:00', 'non-elektrik'),
(355, 0, 0, 'pulsa XL 10k', 10815, 12000, 1, 12000, '2020-05-04', '07:27:00', 'elektrik'),
(356, 0, 0, 'Pulsa Indosat 25k', 25225, 27000, 1, 27000, '2020-05-04', '08:26:00', 'elektrik'),
(357, 0, 0, 'Pulsa indosat 10k', 10820, 12000, 1, 12000, '2020-05-04', '08:27:00', 'elektrik'),
(358, 0, 150, 'VOUCHER AXIS 1 GB (5 HR)- Cahyo Sales', 0, 10000, 1, 10000, '2020-05-04', '09:17:00', 'non-elektrik'),
(359, 0, 0, 'Pulsa xl 10k - fathur', 10815, 12000, 1, 12000, '2020-05-04', '09:17:00', 'elektrik'),
(360, 0, 0, 'Pulsa Telkomsel 25k - fathur', 24900, 27000, 1, 27000, '2020-05-04', '09:17:00', 'elektrik'),
(361, 0, 0, 'Pulsa Telkomsel 50k - Khansa', 49293, 52000, 1, 52000, '2020-05-04', '09:48:00', 'elektrik'),
(362, 0, 0, 'Pulsa Tri 10k ', 10231, 12000, 1, 12000, '2020-05-04', '11:35:00', 'elektrik'),
(363, 0, 0, 'Pulsa xl 25k', 24800, 27000, 1, 27000, '2020-05-04', '13:38:00', 'elektrik'),
(364, 0, 141, 'HEADSET XIAOMI PISTON 2', 0, 25000, 1, 25000, '2020-05-04', '17:17:00', 'non-elektrik'),
(365, 0, 0, 'pulsa tri 20k', 19891, 22000, 1, 22000, '2020-05-04', '17:18:00', 'elektrik'),
(366, 0, 0, 'Pulsa indosat 20k', 20225, 22000, 1, 22000, '2020-05-04', '17:19:00', 'elektrik'),
(367, 0, 166, 'VOUCHER INDOSAT 1 GB + UNLIMITED APP (30 HARI)', 0, 27000, 1, 27000, '2020-05-05', '08:13:00', 'non-elektrik'),
(368, 0, 180, 'VOUCHER TRI 6 GB + UNLIMITED YOUTUBE (30 HR)', 0, 52000, 1, 52000, '2020-05-05', '08:22:00', 'non-elektrik'),
(369, 0, 153, 'VOUCHER TRI 1,5 GB (1 TH)  - Indy cell', 0, 15000, 1, 15000, '2020-05-05', '08:38:00', 'non-elektrik'),
(370, 0, 0, 'Pulsa XL 10K - pakde nur', 10815, 12000, 1, 12000, '2020-05-05', '14:33:00', 'elektrik'),
(371, 0, 0, 'paket data indosat 3 GB/30 Hari', 24499, 27000, 1, 27000, '2020-05-05', '15:43:00', 'elektrik');

-- --------------------------------------------------------

--
-- Table structure for table `saldo_fisik`
--

CREATE TABLE `saldo_fisik` (
  `id` int(7) NOT NULL,
  `saldo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saldo_fisik`
--

INSERT INTO `saldo_fisik` (`id`, `saldo`) VALUES
(1, 322200);

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
-- Indexes for table `hutang_elektrik`
--
ALTER TABLE `hutang_elektrik`
  ADD PRIMARY KEY (`id_hutang_elektrik`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`);

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
-- Indexes for table `saldo_fisik`
--
ALTER TABLE `saldo_fisik`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

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
-- AUTO_INCREMENT for table `hutang_elektrik`
--
ALTER TABLE `hutang_elektrik`
  MODIFY `id_hutang_elektrik` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id_pemasukan` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `saldo_fisik`
--
ALTER TABLE `saldo_fisik`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
