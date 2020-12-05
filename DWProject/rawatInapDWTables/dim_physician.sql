-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2020 pada 12.19
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

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
-- Struktur dari tabel `dim_physician`
--

CREATE TABLE `dim_physician` (
  `code_physician` bigint(20) NOT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `code_area` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dim_physician`
--

INSERT INTO `dim_physician` (`code_physician`, `EmployeeID`, `name`, `position`, `status`, `code_area`) VALUES
(1, 1, 'John Dorian', 'Staff Internist', 'Training', 11),
(2, 2, 'Elliot Reid', 'Attending Physician', 'Senior', 10),
(3, 3, 'Christopher Turk', 'Surgical Attending Physician', 'Senior', 12),
(4, 4, 'Percival Cox', 'Senior Attending Physician', 'Senior', 9),
(5, 5, 'Bob Kelso', 'Head Chief of Medicine', 'Senior', 2),
(6, 6, 'Todd Quinlan', 'Surgical Attending Physician', 'Senior', 12),
(7, 7, 'John Wen', 'Surgical Attending Physician', 'Senior', 6),
(8, 8, 'Keith Dudemeister', 'MD Resident', 'Training', 6),
(9, 9, 'Molly Clock', 'Attending Psychiatrist', 'Senior', 8),
(10, 10, 'Victor Miller', 'Junior Urologist', 'Training', 17),
(11, 11, 'Kate Martin', 'Senior Pathologist', 'Senior', 11),
(12, 12, 'Victoria Roberts', 'Senior Physical Therapist', 'Senior', 2),
(13, 13, 'Rafael Cunningham', 'Head of ICU', 'Senior', 17),
(14, 14, 'Sarah Bailey', 'Surgical Attending Physician', 'Training', 1),
(15, 15, 'Brianna Myers', 'Senior Neurologist', 'Senior', 14),
(16, 16, 'Adelaide Clark', 'Head of Mother and Child', 'Senior', 1),
(17, 17, 'John Evans', 'Attending Psychiatrist', 'Training', 14),
(18, 18, 'Wilson Harris', 'Senior Cardiologist', 'Senior', 1),
(19, 19, 'Alfred Mitchell', 'Attending Psychiatrist', 'Training', 19),
(20, 20, 'Robert Walker', 'Staff Internist', 'Senior', 5),
(21, 21, 'Stuart Hill', 'Surgical Attending Physician', 'Senior', 18),
(22, 22, 'Frederick Walker', 'Senior Urologist', 'Senior', 14),
(23, 23, 'Jenny Clark', 'Senior Radiologist', 'Senior', 19),
(24, 24, 'Tony Robinson', 'Senior Dermatologist', 'Senior', 11),
(25, 25, 'Ryan Tucker', 'MD Resident', 'Training', 7),
(26, 26, 'Aldus Robinson', 'Senior Attending Physician', 'Senior', 18),
(27, 27, 'Jack Baker', 'MD Resident', 'Training', 13),
(28, 28, 'Sawyer Douglas', 'Senior Attending Physician', 'Senior', 11),
(29, 29, 'James Perkins', 'Surgical Attending Physician', 'Senior', 15),
(30, 30, 'Carla May', 'Junior Radiologist', 'Training', 15),
(31, 31, 'Sally Doe', 'Junior Radiologist', 'Training', 3),
(32, 32, 'Dominik Johnsonn', 'Staff Intensive Care Unit Staff', 'Senior', 20),
(33, 33, 'Pablo del Sol', 'Junior Intensive Care Unit Staff', 'Training', 13),
(34, 34, 'Diana Peterson', 'Senior Pathologist', 'Senior', 10),
(35, 35, 'Raj Dewata', 'Junior Neurologist', 'Training', 9);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dim_physician`
--
ALTER TABLE `dim_physician`
  ADD PRIMARY KEY (`code_physician`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dim_physician`
--
ALTER TABLE `dim_physician`
  MODIFY `code_physician` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
