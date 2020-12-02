-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 08:53 AM
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
-- Table structure for table `dim_waktu`
--

CREATE TABLE `dim_waktu` (
  `codeWaktu` bigint(20) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `DayNbWeek` double DEFAULT NULL,
  `DayNbMonth` double DEFAULT NULL,
  `DayNbYear` double DEFAULT NULL,
  `MonthNumber` double DEFAULT NULL,
  `MonthName` tinytext DEFAULT NULL,
  `Year` tinytext DEFAULT NULL,
  `Quarter` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_waktu`
--
ALTER TABLE `dim_waktu`
  ADD PRIMARY KEY (`codeWaktu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_waktu`
--
ALTER TABLE `dim_waktu`
  MODIFY `codeWaktu` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
