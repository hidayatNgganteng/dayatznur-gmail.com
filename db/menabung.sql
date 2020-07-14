-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 14, 2020 at 03:12 AM
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
-- Database: `bordercell_staging`
--

-- --------------------------------------------------------

--
-- Table structure for table `menabung`
--

CREATE TABLE `menabung` (
  `id_menabung` int(10) NOT NULL,
  `kategori_menabung` int(10) NOT NULL,
  `bulan` date NOT NULL,
  `nominal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menabung`
--

INSERT INTO `menabung` (`id_menabung`, `kategori_menabung`, `bulan`, `nominal`) VALUES
(1, 1, '2020-07-01', '0'),
(2, 2, '2020-07-01', '0'),
(3, 3, '2020-07-01', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menabung`
--
ALTER TABLE `menabung`
  ADD PRIMARY KEY (`id_menabung`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menabung`
--
ALTER TABLE `menabung`
  MODIFY `id_menabung` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
