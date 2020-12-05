-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 06:07 PM
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
-- Table structure for table `dim_procedure`
--

CREATE TABLE `dim_procedure` (
  `codeProcedure` bigint(20) NOT NULL,
  `Code` bigint(20) DEFAULT NULL,
  `nameProcedure` tinytext DEFAULT NULL,
  `ProcedureCost` double DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_procedure`
--

INSERT INTO `dim_procedure` (`codeProcedure`, `Code`, `nameProcedure`, `ProcedureCost`, `version`, `date_from`, `date_to`) VALUES
(1, NULL, NULL, NULL, 1, NULL, NULL),
(2, 1, 'Reverse Rhinopodoplasty', 15000, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(3, 2, 'Obtuse Pyloric Recombobulation', 3750, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(4, 3, 'Folded Demiophtalmectomy', 4500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(5, 4, 'Complete Walletectomy', 10000, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(6, 5, 'Obfuscated Dermogastrotomy', 4899500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(7, 6, 'Reversible Pancreomyoplasty', 5600250, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(8, 7, 'Follicular Demiectomy', 250, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(9, 8, 'Mother and Child C-Section', 65000, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(10, 9, 'Mother and Child IVF', 235000, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(11, 10, 'Mother and Child Stem Cell', 135000, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(12, 11, 'Radiology CT Scan', 85000, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(13, 12, 'Radiology PET Scan', 15000, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(14, 13, 'Radiology MRI', 17000, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(15, 14, 'ICU Central Venous Lines', 8000, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(16, 15, 'ICU Endotracheal Intubation', 7500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(17, 16, 'ICU Endotracheal Intubation', 7500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(18, 17, 'Pathology Procedure 1', 6700, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(19, 18, 'Pathology Procedure 2', 8900, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(20, 19, 'Pathology Procedure 3', 9900, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(21, 20, 'PT Mobilization', 600, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(22, 21, 'PT Therapeutic Massage', 800, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(23, 22, 'PT Myofascial Release', 950, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(24, 23, 'PT Postural Training', 1950, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(25, 24, 'PT Neuromuscular reeducation', 2550, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(26, 25, 'Neuro Electromyography', 2550, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(27, 26, 'Neuro Tensilon Test', 550, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(28, 27, 'Neuro Electroencephalogram', 950, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(29, 28, 'Neuro Sleep Study', 750, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(30, 29, 'Cardio Coronary angioplasty', 1550, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(31, 30, 'Cardio Thrombolytic therapy', 5550, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(32, 31, 'Cardio Artificial pacemaker su', 7550, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(33, 32, 'Cardio Heart valve surgery', 10550, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(34, 33, 'Urology Nephrectomy', 3500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(35, 34, 'Urology Pyeloplasty', 5500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(36, 35, 'Urology Ureteral reimplants', 7500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(37, 36, 'Derma Photodynamic therapy', 5500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(38, 37, 'Derma Mohs micrographic surger', 6500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(39, 38, 'Derma Cryosurgery', 2500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(40, 39, 'Derma Topical chemotherapy', 10500, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_procedure`
--
ALTER TABLE `dim_procedure`
  ADD PRIMARY KEY (`codeProcedure`),
  ADD KEY `idx_dim_procedure_lookup` (`Code`),
  ADD KEY `idx_dim_procedure_tk` (`codeProcedure`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_procedure`
--
ALTER TABLE `dim_procedure`
  MODIFY `codeProcedure` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
