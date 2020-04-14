-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2020 at 04:49 AM
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
(1, 'pulsa 5k', 5000, 7000, '2020-04-14', '08:31:00', 'lunas'),
(2, 'Pulsa 10k - pakde nur', 10000, 12000, '2020-04-14', '09:48:00', 'lunas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hutang_elektrik`
--
ALTER TABLE `hutang_elektrik`
  ADD PRIMARY KEY (`id_hutang_elektrik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hutang_elektrik`
--
ALTER TABLE `hutang_elektrik`
  MODIFY `id_hutang_elektrik` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
