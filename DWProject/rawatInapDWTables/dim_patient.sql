-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2020 pada 12.18
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
-- Struktur dari tabel `dim_patient`
--

CREATE TABLE `dim_patient` (
  `code_patient` bigint(20) NOT NULL,
  `patient_ssn` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `category_age` varchar(255) DEFAULT NULL,
  `sub_category_job` varchar(255) DEFAULT NULL,
  `major_job` varchar(255) DEFAULT NULL,
  `from_singapore` varchar(255) DEFAULT NULL,
  `code_area` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dim_patient`
--

INSERT INTO `dim_patient` (`code_patient`, `patient_ssn`, `name`, `address`, `gender`, `category_age`, `sub_category_job`, `major_job`, `from_singapore`, `code_area`) VALUES
(9, 100000001, 'John Smith', '42 Foobar Lane', 'M', 'ADULT', 'Managers', 'GROUP1', 'N', NULL),
(10, 100000002, 'Grace Ritchie', '37 Snafu Drive', 'F', 'ADULT', 'Professionals', 'GROUP2', 'N', NULL),
(11, 100000003, 'Random J. Patient', '101 Omgbbq Street', 'F', 'ADULT', 'Craft and related trades workers', 'GROUP7', 'Y', 11),
(12, 100000004, 'Dennis Doe', '1100 Foobaz Avenue', 'M', 'YOUNGADULT', 'Technicians', 'GROUP3', 'Y', 10),
(13, 100000005, 'Damian Hays', '156-2656 Ornare Av.', 'M', 'YOUNGADULT', 'Technicians', 'GROUP3', 'N', NULL),
(14, 100000006, 'Karly Jackson', '975-5765 Ac Avenue', 'F', 'ADULT', 'Armed forces occupations', 'GROUP10', 'Y', 9),
(15, 100000007, 'Kato Luna', '643-4443 Cursus. Rd.', 'F', 'ADULT', 'Professionals', 'GROUP2', 'Y', 2),
(16, 100000008, 'Xandra Skinner', '492-149 Viverra. Street', 'F', 'ADULT', 'Professionals', 'GROUP2', 'Y', 12),
(17, 100000009, 'Anthony Moses', '819-6082 A Street', 'M', 'YOUNGADULT', 'Craft and related trades workers', 'GROUP7', 'Y', 6),
(18, 100000010, 'Daryl Decker', 'Ap #914-7548 Cursus St.', 'M', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 6),
(19, 100000011, 'Zelda Macias', '9418 Ac Rd.', 'F', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'Y', 8),
(20, 100000012, 'Guy Cash', '996-3237 Aliquet. St.', 'M', 'YOUNGADULT', 'Professionals', 'GROUP2', 'N', NULL),
(21, 100000013, 'Dolan Hamilton', '2930 Molestie St.', 'F', 'YOUNGADULT', 'Professionals', 'GROUP2', 'N', NULL),
(22, 100000014, 'Thane Byers', 'P.O. Box 615, 7599 Semper St.', 'M', 'ELDERLY', 'Technicians', 'GROUP3', 'Y', 2),
(23, 100000015, 'Boris Howard', '906-8071 Orci St.', 'M', 'ADULT', 'Technicians', 'GROUP3', 'N', NULL),
(24, 100000016, 'Elizabeth Chan', '9900 Eget Road', 'F', 'ADULT', 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'Y', 1),
(25, 100000017, 'Jelani Snow', '960-2567 Urna. Rd.', 'F', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 14),
(26, 100000018, 'Scott Levy', 'Ap #449-3704 Fringilla Road', 'M', 'ADULT', 'Professionals', 'GROUP2', 'N', NULL),
(27, 100000019, 'Maris Tillman', 'Ap #347-131 Sit Ave', 'F', 'ADULT', 'Managers', 'GROUP1', 'Y', 14),
(28, 100000020, 'Mara Walton', '5709 Justo Rd.', 'F', 'ADULT', 'Clerical support workers', 'GROUP4', 'N', NULL),
(29, 100000021, 'Jackson Beck', '6255 Massa. Avenue', 'M', 'ADULT', 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'Y', 19),
(30, 100000022, 'Darius Cooper', 'Ap #960-4409 Mauris Rd.', 'F', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'Y', 5),
(31, 100000023, 'Dillon Hess', '2301 Amet Rd.', 'M', 'ADULT', 'Technicians', 'GROUP3', 'N', NULL),
(32, 100000024, 'Daniel Chambers', '618 Ultrices Av.', 'M', 'ELDERLY', 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'Y', 14),
(33, 100000025, 'Stephanie Mueller', 'Ap #573-2893 Massa. Street', 'F', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'Y', 19),
(34, 100000026, 'Garrett Massey', 'Ap #980-4115 At, Ave', 'F', 'ADULT', 'Managers', 'GROUP1', 'Y', 11),
(35, 100000027, 'Gay Olson', 'Ap #439-9506 Laoreet, Street', 'F', 'ADULT', 'Technicians', 'GROUP3', 'N', NULL),
(36, 100000028, 'Xaviera Noble', '731-8219 Aliquet St.', 'F', 'ADULT', 'Technicians', 'GROUP3', 'Y', 18),
(37, 100000029, 'Montana Weaver', 'Ap #710-5526 A, St.', 'F', 'ADULT', 'Managers', 'GROUP1', 'N', NULL),
(38, 100000030, 'Clarke Pennington', '2821 Ridiculus Street', 'F', 'ADULT', 'Technicians', 'GROUP3', 'N', NULL),
(39, 100000031, 'Roanna Gentry', 'P.O. Box 266, 1853 Scelerisque', 'F', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'N', NULL),
(40, 100000032, 'Lev Schneider', '4116 Magna. St.', 'F', 'ADULT', 'Managers', 'GROUP1', 'N', NULL),
(41, 100000033, 'Troy Underwood', '3330 Nibh. St.', 'F', 'ADULT', 'Clerical support workers', 'GROUP4', 'Y', 3),
(42, 100000034, 'Zelda Sherman', 'P.O. Box 429, 7338 Nam Ave', 'F', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 20),
(43, 100000035, 'Jesse Kerr', '677-1698 Justo Ave', 'F', 'ADULT', 'Managers', 'GROUP1', 'N', NULL),
(44, 100000036, 'Tashya Martin', '297-6150 Velit. Rd.', 'F', 'ELDERLY', 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'Y', 10),
(45, 100000037, 'Dominic Moran', '561-2490 Ac Ave', 'M', 'ADULT', 'Clerical support workers', 'GROUP4', 'Y', 9),
(46, 100000038, 'Colorado Massey', '8601 Erat St.', 'F', 'YOUNGADULT', 'Elementary occupations', 'GROUP9', 'Y', 11),
(47, 100000039, 'Jamal Dickson', '883-1729 Semper. Ave', 'M', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'Y', 10),
(48, 100000040, 'Lynn Juarez', '3393 Dolor Rd.', 'F', 'ADULT', 'Clerical support workers', 'GROUP4', 'Y', 12),
(49, 100000041, 'Austin Lindsey', 'P.O. Box 745, 3393 Pulvinar Av', 'M', 'YOUNGADULT', 'Elementary occupations', 'GROUP9', 'Y', 9),
(50, 100000042, 'Vivien Melendez', '638-7555 Morbi Av.', 'F', 'ADULT', 'Clerical support workers', 'GROUP4', 'N', NULL),
(51, 100000043, 'Merritt Howell', 'Ap #424-1895 Dui Ave', 'F', 'YOUNGADULT', 'Elementary occupations', 'GROUP9', 'N', NULL),
(52, 100000044, 'Tatum Livingston', 'P.O. Box 215, 9497 Justo Ave', 'F', 'YOUNGADULT', 'Elementary occupations', 'GROUP9', 'Y', 6),
(53, 100000045, 'Tashya Mendez', 'Ap #773-7842 Tempor Avenue', 'F', 'YOUNGADULT', 'Elementary occupations', 'GROUP9', 'Y', 6),
(54, 100000046, 'Naomi Conway', '991-9863 Integer St.', 'F', 'ADULT', 'Clerical support workers', 'GROUP4', 'Y', 8),
(55, 100000047, 'Clark Giles', '951-4646 Dictum. Av.', 'F', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 17),
(56, 100000048, 'Jocelyn Rollins', 'P.O. Box 642, 5967 Dui St.', 'F', 'ADULT', 'Managers', 'GROUP1', 'N', NULL),
(57, 100000049, 'Carl Prince', '4884 Ultrices Rd.', 'F', 'ADULT', 'Clerical support workers', 'GROUP4', 'Y', 2),
(58, 100000050, 'Keane Mckinney', 'Ap #720-4584 Enim Rd.', 'F', 'ADULT', 'Managers', 'GROUP1', 'N', NULL),
(59, 100000051, 'Adrienne Foley', '959-6534 Posuere Av.', 'F', 'ADULT', 'Clerical support workers', 'GROUP4', 'N', NULL),
(60, 100000052, 'Noelle Mcclure', 'P.O. Box 107, 7420 Nunc Ave', 'F', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'Y', 14),
(61, 100000053, 'Montana Kaufman', 'Ap #848-3035 Quam Rd.', 'F', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'N', NULL),
(62, 100000054, 'Hamish Farley', '895-9905 Nec Ave', 'F', 'ADULT', 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'N', NULL),
(63, 100000055, 'Mikayla Hebert', '3515 Ullamcorper, St.', 'F', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'Y', 1),
(64, 100000056, 'Winter Peck', 'Ap #997-8390 Nullam St.', 'F', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 19),
(65, 100000057, 'Sopoline Clayton', '933-6221 Lectus, Av.', 'F', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'Y', 5),
(66, 100000058, 'Amir Madden', '727-5043 Proin Av.', 'M', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 18),
(67, 100000059, 'Glenna Contreras', '464-2592 Sodales St.', 'F', 'ADULT', 'Technicians', 'GROUP3', 'Y', 14),
(68, 100000060, 'Nasim Carroll', '1955 Mauris. Road', 'M', 'ADULT', 'Technicians', 'GROUP3', 'N', NULL),
(69, 100000061, 'Mariko Kirkland', 'P.O. Box 835, 836 Quisque Av.', 'F', 'ADULT', 'Technicians', 'GROUP3', 'N', NULL),
(70, 100000062, 'Timon Holmes', 'P.O. Box 889, 3566 Eget St.', 'M', 'ADULT', 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'Y', 7),
(71, 100000063, 'Palmer Quinn', '354-8004 Mauris Street', 'M', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 18),
(72, 100000064, 'Alma Wiggins', 'P.O. Box 585, 2796 Eu Ave', 'F', 'ADULT', 'Plant and machine operators and assemblers', 'GROUP8', 'Y', 13),
(73, 100000065, 'Quincy Smith', '910-7007 Gravida Av.', 'M', 'ADULT', 'Professionals', 'GROUP2', 'N', NULL),
(74, 100000066, 'Azalia Alston', 'P.O. Box 747, 2039 Tempor, St.', 'F', 'ADULT', 'Plant and machine operators and assemblers', 'GROUP8', 'Y', 15),
(75, 100000067, 'Lareina Ratliff', 'P.O. Box 314, 5242 Sem Road', 'F', 'ADULT', 'Plant and machine operators and assemblers', 'GROUP8', 'Y', 15),
(76, 100000068, 'Adena Whitaker', '7486 Consectetuer Road', 'F', 'ELDERLY', 'Technicians', 'GROUP3', 'Y', 3),
(77, 100000069, 'Autumn Mcfadden', '765-4770 Mauris Avenue', 'F', 'YOUNGADULT', 'Elementary occupations', 'GROUP9', 'Y', 20),
(78, 100000070, 'Otto Walker', 'P.O. Box 615, 9901 Proin St.', 'M', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 13),
(79, 100000071, 'Illana Duke', '349-2412 Sed, Rd.', 'F', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'N', NULL),
(80, 100000072, 'Anne Larsen', '447-7398 Sem, St.', 'F', 'ELDERLY', 'Technicians', 'GROUP3', 'N', NULL),
(81, 100000073, 'Burke Bradshaw', '5717 Nam St.', 'M', 'ADULT', 'Professionals', 'GROUP2', 'N', NULL),
(82, 100000074, 'Cameron Clay', '1667 Urna. Avenue', 'F', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 11),
(83, 100000075, 'Myles Lott', 'Ap #299-3208 Taciti Ave', 'F', 'YOUNGADULT', 'Craft and related trades workers', 'GROUP7', 'Y', 10),
(84, 100000076, 'Duncan Huber', '389 Libero. Road', 'M', 'ELDERLY', 'Technicians', 'GROUP3', 'Y', 12),
(85, 100000077, 'Dylan Brown', '746-9985 Lacus. Street', 'F', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'Y', 9),
(86, 100000078, 'Amal Velasquez', '513-2360 Quis Rd.', 'F', 'YOUNGADULT', 'Craft and related trades workers', 'GROUP7', 'Y', 2),
(87, 100000079, 'Kyla Ray', 'Ap #368-6233 Tellus St.', 'F', 'ADULT', 'Professionals', 'GROUP2', 'N', NULL),
(88, 100000080, 'Gay Beard', 'P.O. Box 804, 2864 Natoque Rd.', 'M', 'YOUNGADULT', 'Craft and related trades workers', 'GROUP7', 'Y', 20),
(89, 100000081, 'Xerxes Browning', '736-1523 Et Rd.', 'M', 'YOUNGADULT', 'Craft and related trades workers', 'GROUP7', 'Y', 13),
(90, 100000082, 'Asher Stanley', 'P.O. Box 694, 6194 Fringilla A', 'F', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'N', NULL),
(91, 100000083, 'Neve Harrison', '673-5937 Id Avenue', 'M', 'YOUNGADULT', 'Elementary occupations', 'GROUP9', 'N', NULL),
(92, 100000084, 'Craig Tran', '978-3036 Semper Rd.', 'M', 'YOUNGADULT', 'Craft and related trades workers', 'GROUP7', 'Y', 11),
(93, 100000085, 'Reuben Burgess', '938 Enim Rd.', 'M', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'Y', 2),
(94, 100000086, 'Brianna Abbott', 'P.O. Box 225, 3145 Suscipit St', 'F', 'ADULT', 'Armed forces occupations', 'GROUP10', 'Y', 17),
(95, 100000087, 'Clio Stanton', '7714 Et Rd.', 'M', 'YOUNGADULT', 'Service and sales workers', 'GROUP5', 'N', NULL),
(96, 100000088, 'George Morales', '952-6477 Habitant St.', 'M', 'ADULT', 'Service and sales workers', 'GROUP5', 'N', NULL),
(97, 100000089, 'Meghan Stafford', 'Ap #856-1275 Nunc, Rd.', 'F', 'ADULT', 'Service and sales workers', 'GROUP5', 'Y', 1),
(98, 100000090, 'Preston Clemons', '578-2058 Non, Avenue', 'M', 'ADULT', 'Service and sales workers', 'GROUP5', 'N', NULL),
(99, 100000091, 'Porter Fowler', '4397 Sit St.', 'F', 'ADULT', 'Professionals', 'GROUP2', 'N', NULL),
(100, 100000092, 'Judith Newton', 'P.O. Box 877, 1385 Fermentum R', 'F', 'ADULT', 'Service and sales workers', 'GROUP5', 'Y', 19),
(101, 100000093, 'Linda Hogan', 'P.O. Box 172, 6371 Dui St.', 'F', 'ADULT', 'Clerical support workers', 'GROUP4', 'Y', 5),
(102, 100000094, 'Jane Adams', 'Ap #658-2243 Magna Av.', 'F', 'ADULT', 'Service and sales workers', 'GROUP5', 'N', NULL),
(103, 100000095, 'Jane Daniels', 'Ap #702-9417 Amet, Rd.', 'F', 'ADULT', 'Elementary occupations', 'GROUP9', 'Y', 14),
(104, 100000096, 'Gisela Middleton', '975-5195 Accumsan Road', 'F', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'Y', 19),
(105, 100000097, 'Leilani Cortez', '4868 Elit Rd.', 'F', 'ADULT', 'Professionals', 'GROUP2', 'Y', 11),
(106, 100000098, 'Indira Hickman', 'P.O. Box 973, 5876 Elit Ave', 'F', 'YOUNGADULT', 'Elementary occupations', 'GROUP9', 'N', NULL),
(107, 100000099, 'Hedley Gutierrez', '532-2364 Sit Avenue', 'M', 'ADULT', 'Professionals', 'GROUP2', 'N', NULL),
(108, 100000100, 'Jacob Flores', '5765 Imperdiet Rd.', 'M', 'ADULT', 'Professionals', 'GROUP2', 'Y', 13),
(109, 100000101, 'Troy Joseph', 'Ap #987-3561 Amet Street', 'M', 'YOUNGADULT', 'Armed forces occupations', 'GROUP10', 'Y', 11),
(110, 100000102, 'Murphy Watts', '725-6461 Ridiculus Av.', 'M', 'YOUNGADULT', 'Clerical support workers', 'GROUP4', 'N', NULL),
(111, 100000103, 'Clinton Foreman', '6318 Arcu. Rd.', 'M', 'ADULT', 'Service and sales workers', 'GROUP5', 'N', NULL),
(112, 100000104, 'Jillian Wood', 'P.O. Box 922, 1851 Non Avenue', 'F', 'ADULT', 'Professionals', 'GROUP2', 'Y', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dim_patient`
--
ALTER TABLE `dim_patient`
  ADD PRIMARY KEY (`code_patient`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dim_patient`
--
ALTER TABLE `dim_patient`
  MODIFY `code_patient` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
