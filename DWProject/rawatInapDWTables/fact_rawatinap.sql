-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2020 at 02:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rawatinapdw`
--

-- --------------------------------------------------------

--
-- Table structure for table `fact_rawatinap`
--

CREATE TABLE `fact_rawatinap` (
  `stayID` bigint(20) NOT NULL,
  `codePatient` bigint(20) DEFAULT NULL,
  `codePhysician` bigint(20) DEFAULT NULL,
  `codeProcedure` bigint(20) DEFAULT NULL,
  `codeRoom` bigint(20) DEFAULT NULL,
  `startDate` bigint(20) DEFAULT NULL,
  `endDate` bigint(20) DEFAULT NULL,
  `ProcedureCost` double DEFAULT NULL,
  `JumlahStay` int(11) DEFAULT NULL,
  `roomCostPerDay` double DEFAULT NULL,
  `totalBiayaPerawatan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fact_rawatinap`
--

INSERT INTO `fact_rawatinap` (`stayID`, `codePatient`, `codePhysician`, `codeProcedure`, `codeRoom`, `startDate`, `endDate`, `ProcedureCost`, `JumlahStay`, `roomCostPerDay`, `totalBiayaPerawatan`) VALUES
(1, 1, 19, 29, 13, 1, 4, 750, 3, 150, 1200),
(2, 3, 32, 6, 25, 3, 14, 4899500, 11, 80, 4900380),
(3, 4, 22, 36, 14, 2, 3, 7500, 1, 150, 7650),
(4, 1, 8, 24, 22, 4264, 4267, 1950, 3, 150, 2400),
(5, 7, 8, 23, 33, 4245, 4249, 950, 4, 150, 1550),
(6, 8, 26, 12, 34, 4226, 4228, 85000, 2, 150, 85300),
(7, 8, 31, 22, 77, 4264, 4267, 800, 3, 150, 1250),
(8, 11, 4, 16, 51, 4264, 4270, 7500, 6, 80, 7980),
(9, 11, 4, 34, 53, 4195, 4197, 3500, 2, 80, 3660),
(10, 13, 19, 14, 9, 4264, 4270, 17000, 6, 150, 17900),
(11, 14, 34, 9, 86, 4245, 4249, 65000, 4, 150, 65600),
(12, 15, 26, 12, 3, 4226, 4228, 85000, 2, 150, 85300),
(13, 18, 11, 40, 47, 4195, 4197, 10500, 2, 150, 10800),
(14, 19, 16, 17, 36, 4124, 4129, 7500, 5, 150, 8250),
(15, 21, 31, 17, 18, 4127, 4134, 7500, 7, 80, 8060),
(16, 23, 7, 38, 61, 4180, 4184, 6500, 4, 150, 7100),
(17, 28, 18, 30, 42, 4158, 4165, 1550, 7, 500, 5050),
(18, 28, 10, 20, 75, 4226, 4228, 9900, 2, 150, 10200),
(19, 32, 1, 38, 21, 4264, 4267, 6500, 3, 500, 8000),
(20, 35, 29, 21, 19, 4245, 4249, 600, 4, 500, 2600),
(21, 35, 9, 18, 27, 4195, 4197, 6700, 2, 80, 6860),
(22, 96, 6, 14, 33, 4245, 4249, 17000, 4, 150, 17600),
(23, 100, 19, 28, 82, 4245, 4249, 950, 4, 150, 1550),
(24, 36, 31, 18, 43, 4158, 4165, 6700, 7, 500, 10200),
(25, 37, 14, 9, 66, 4226, 4228, 65000, 2, 80, 65160),
(26, 45, 35, 32, 77, 4127, 4134, 7550, 7, 150, 8600),
(27, 47, 9, 17, 75, 4180, 4184, 7500, 4, 150, 8100),
(28, 48, 33, 26, 10, 4255, 4257, 2550, 2, 150, 2850),
(29, 49, 30, 14, 33, 4180, 4184, 17000, 4, 150, 17600),
(30, 49, 35, 22, 73, 4226, 4228, 800, 2, 150, 1100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fact_rawatinap`
--
ALTER TABLE `fact_rawatinap`
  ADD PRIMARY KEY (`stayID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fact_rawatinap`
--
ALTER TABLE `fact_rawatinap`
  MODIFY `stayID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
