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
-- Struktur dari tabel `dim_singapore_area`
--

CREATE TABLE `dim_singapore_area` (
  `code_area` bigint(20) NOT NULL,
  `name_area` varchar(255) DEFAULT NULL,
  `code_region` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dim_singapore_area`
--

INSERT INTO `dim_singapore_area` (`code_area`, `name_area`, `code_region`) VALUES
(1, 'Bedok', 1),
(2, 'Tampines', 1),
(3, 'Pasir Ris', 1),
(4, 'Jurong West', 2),
(5, 'Bukit Batok ', 2),
(6, 'Bukit Panjang', 2),
(7, 'Sembawang', 2),
(8, 'Choa Chu Kang', 2),
(9, 'Woodlands', 3),
(10, 'Yishun', 3),
(11, 'Bukit Merah', 4),
(12, 'Toa Payoh', 4),
(13, 'Geylang', 4),
(14, 'Kallang', 4),
(15, 'Queenstown', 4),
(16, 'Sengkang', 5),
(17, 'Hougang', 5),
(18, 'Punggol', 5),
(19, 'Ang Mo Kio', 5),
(20, 'Serangoon', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dim_singapore_area`
--
ALTER TABLE `dim_singapore_area`
  ADD PRIMARY KEY (`code_area`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dim_singapore_area`
--
ALTER TABLE `dim_singapore_area`
  MODIFY `code_area` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
