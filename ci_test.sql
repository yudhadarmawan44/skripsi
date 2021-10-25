-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 11:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `datarss`
--

CREATE TABLE `datarss` (
  `id_rs` int(10) NOT NULL,
  `bulan` varchar(11) NOT NULL,
  `tahun` int(10) NOT NULL,
  `golongan_darah` varchar(10) NOT NULL,
  `namars` varchar(500) NOT NULL,
  `jumlah_darah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datarss`
--

INSERT INTO `datarss` (`id_rs`, `bulan`, `tahun`, `golongan_darah`, `namars`, `jumlah_darah`) VALUES
(9, 'Januari', 2017, 'A', 'rs sarjito', 167),
(10, 'Februari', 2017, 'A', 'rs sarjito', 168),
(11, 'Januari', 2017, 'A', 'rs sarjito', 169),
(12, 'Februari', 2017, 'A', 'rs sarjito', 251);

-- --------------------------------------------------------

--
-- Table structure for table `dataujis`
--

CREATE TABLE `dataujis` (
  `id` int(10) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `golongan_darah` varchar(10) NOT NULL,
  `jenis_darah` varchar(10) NOT NULL,
  `namars` varchar(300) NOT NULL,
  `jumlah_darah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataujis`
--

INSERT INTO `dataujis` (`id`, `bulan`, `tahun`, `golongan_darah`, `jenis_darah`, `namars`, `jumlah_darah`) VALUES
(1, 'Januari', 2015, 'AB', '', 'RS Sarjito, RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih', 48),
(2, 'Februari', 2015, 'AB', '', 'RS Rajawali Citra,  PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih, DR S Harjolukito, RS QUEEN LATIFA', 33),
(3, 'Maret', 2015, 'AB', '', 'DR S Harjolukito, PDHI Kalasan, Bethesda Lempuyangwangi, PKU Muh Kotagede, Panti Rapih, RS Hidayatullah', 31),
(4, 'April', 2015, 'AB', '', 'Bethesda Lempuyangwangi, Panti Rapih, RS Rajawali Citra, RS AKADEMI UGM, RS QUEEN LATIFA, RS Nur Hidayah, DR S Harjolukito', 28),
(5, 'Mei', 2015, 'AB', '', 'RSUD Wates, RS Hidayatullah, DR S Harjolukito, RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih', 31),
(6, 'Juni', 2015, 'AB', '', 'Bethesda Lempuyangwangi, Panti Rapih, PDHI Kalasan, RS Hidayatullah, RS Bhayangkara', 39),
(7, 'Juli', 2015, 'AB', '', 'DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah, RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi, RS Hidayatullah', 49),
(8, 'Agustus', 2015, 'AB', '', 'RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih, RS Sarjito', 54),
(9, 'September', 2015, 'AB', '', 'PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih, RS Hidayatullah, DR S Harjolukito, PKU Muh Kotagede', 34),
(10, 'Oktober', 2015, 'AB', '', 'RS Sarjito, RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih', 43),
(11, 'November', 2015, 'AB', '', 'DR S Harjolukito, Bethesda Lempuyangwangi, RS AKADEMI UGM, RS Sarjito, PDHI Kalasan, Panti Rapih', 45),
(12, 'Desember', 2015, 'AB', '', 'RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi, RS Hidayatullah, DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah', 56),
(13, 'Januari', 2016, 'AB', '', 'RS Sarjito, RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih', 43),
(14, 'Februari', 2016, 'AB', '', 'Bethesda, RS Nur Hidayah, DR S Harjolukito, Panti Rapih, RS Hidayatullah', 50),
(15, 'Maret', 2016, 'AB', '', 'PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih, DR S Harjolukito, RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, PDHI Kalasan', 44),
(16, 'April', 2016, 'AB', '', 'PDHI Kalasan, Panti Rapih, RS Sarjito, DR S Harjolukito, Bethesda Lempuyangwangi, RS AKADEMI UGM', 37),
(17, 'Mei', 2016, 'AB', '', 'DR S Harjolukito, Bethesda Lempuyangwangi, RS AKADEMI UGM, PDHI Kalasan, Panti Rapih, RS Sarjito', 48),
(18, 'Juni', 2016, 'AB', '', 'RS Rajawali Citra, RS QUEEN LATIFA, PDHI Kalasan, PKU Muh Yogyakarta, DR S Harjolukito,Bethesda Lempuyangwangi, Panti Rapih', 50),
(19, 'Juli', 2016, 'AB', '', 'RS AKADEMI UGM, PDHI Kalasan, Panti Rapih, RS Sarjito, DR S Harjolukito, Bethesda Lempuyangwangi', 58),
(20, 'Agustus', 2016, 'AB', '', 'PDHI Kalasan, DR S Harjolukito, RS Hidayatullah, RS Happy Land, RS Sarjito, PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih', 41),
(21, 'September', 2016, 'AB', '', 'PDHI Kalasan, RS Hidayatullah, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih', 49),
(22, 'Oktober', 2016, 'AB', '', 'DR S Harjolukito, Panti Rapih, RS Hidayatullah, Bethesda, RS Nur Hidayah', 47),
(23, 'November', 2016, 'AB', '', 'RS Hidayatullah, DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah, RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi', 55),
(24, 'desember', 2016, 'AB', '', 'PDHI Kalasan, RS Hidayatullah, RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, RS Happy Land, Panti Rapih, PKU Muh Kotagede', 48),
(25, 'Januari', 2017, 'AB', '', 'DR S Harjolukito, RS Hidayatullah, RS Sarjito, PDHI Kalasan,  PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih, RS Happy Land', 58),
(26, 'Februari', 2017, 'AB', '', 'DR S Harjolukito, RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, Bethesda Lempuyangwangi, RSUD Wates, RS Hidayatullah, Panti Rapih', 39),
(27, 'Maret', 2017, 'AB', '', 'RS Rajawali Citra, RS AKADEMI UGM, RS QUEEN LATIFA, RS Nur Hidayah, DR S Harjolukito, Bethesda Lempuyangwangi, Panti Rapih', 48),
(28, 'April', 2017, 'AB', '', 'RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, RS Happy Land, Panti Rapih, PKU Muh Kotagede, PDHI Kalasan, RS Hidayatullah', 52),
(29, 'Mei', 2017, 'AB', '', 'Bethesda Lempuyangwangi, Panti Rapih, RS QUEEN LATIFA, RS Nur Hidayah, DR S Harjolukito, RS Rajawali Citra, RS AKADEMI UGM', 46),
(30, 'Juni', 2017, 'AB', '', 'DR S Harjolukito, RS AKADEMI UGM, RS Sarjito, DHI Kalasan, Panti Rapih, Bethesda Lempuyangwangi', 41),
(31, 'Juli', 2017, 'AB', '', 'DR S Harjolukito, RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih', 53),
(32, 'Agustus', 2017, 'AB', '', 'RSUD PRAMBANAN, RS Nur Hidayah, RS Condong Catur, RS Sarjito, Panti Rapih, RS Hidayatullah, DR S Harjolukito, Bethesda Lempuyangwangi', 44),
(33, 'September', 2017, 'AB', '', 'RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih, RSUD Wates, RS Hidayatullah', 53),
(34, 'Oktober', 2017, 'AB', '', 'RS Hidayatullah, RS Happy Land, RS Sarjito, PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih, PDHI Kalasan, DR S Harjolukito', 60),
(35, 'November', 2017, 'AB', '', 'DR S Harjolukito, Bethesda Lempuyangwangi, Panti Rapih, RS Rajawali Citra, RS AKADEMI UGM, RS QUEEN LATIFA, RS Nur Hidayah', 60),
(36, 'Desember', 2017, 'AB', '', 'DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah, RS Condong Catur, RS Sarjito, RS Hidayatullah,  Panti Rapih, Bethesda Lempuyangwangi', 46),
(37, 'Januari', 2018, 'AB', '', 'RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih, RS Sarjito', 43),
(38, 'Februari', 2018, 'AB', '', 'RS Hidayatullah, DR S Harjolukito, RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih, RSUD Wates', 49),
(39, 'Maret', 2018, 'AB', '', 'DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah, RS Sarjito,  RS Hidayatullah, Panti Rapih, Bethesda Lempuyangwangi, RS Condong Catur', 34),
(40, 'April', 2018, 'AB', '', 'RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, RSUD Wates, RS Hidayatullah, Bethesda Lempuyangwangi, Panti Rapih', 50),
(41, 'Mei', 2018, 'AB', '', 'PKU Muh Kotagede, PDHI Kalasan, RS Hidayatullah, RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, RS Happy Land, Panti Rapih', 45),
(42, 'Juni', 2018, 'AB', '', 'RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih, DR S Harjolukito', 48),
(43, 'Juli', 2018, 'AB', '', 'PKU Muh Bantul, Bethesda Lempuyangwangi, PDHI Kalasan, RS Rajawali Citra, Panti Rapih, RS Hidayatullah, DR S Harjolukito', 53),
(44, 'Agustus', 2018, 'AB', '', 'RSUD PRAMBANAN, RS Nur Hidayah, RS Hidayatullah, DR S Harjolukito, RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi', 59),
(45, 'September', 2018, 'AB', '', 'RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, DR S Harjolukito, PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih', 61),
(46, 'Oktober', 2018, 'AB', '', 'PDHI Kalasan, RS Hidayatullah, RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, PKU Muh Kotagede, RS Happy Land, Panti Rapih', 55),
(47, 'November', 2018, 'AB', '', 'DR S Harjolukito, RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih', 56),
(48, 'Desember', 2018, 'AB', '', 'Panti Rapih, RS Hidayatullah, Bethesda, RS Nur Hidayah, DR S Harjolukito', 45),
(49, 'Januari', 2019, 'AB', '', 'RS Sarjito, DR S Harjolukito, Bethesda Lempuyangwangi, RS AKADEMI UGM, PDHI Kalasan, Panti Rapih', 57),
(50, 'Februari', 2019, 'AB', '', 'RS Rajawali Citra, PKU Muh Yogyakarta, DR S Harjolukito,  Bethesda Lempuyangwangi, Panti Rapih, RS QUEEN LATIFA, PDHI Kalasan', 49),
(51, 'Maret', 2019, 'AB', '', 'PDHI Kalasan, Bethesda Lempuyangwangi, PKU Muh Kotagede, Panti Rapih, RS Hidayatullah, DR S Harjolukito', 55),
(52, 'April', 2019, 'AB', '', 'DR S Harjolukito, RS Hidayatullah, RS Happy Land, RS Sarjito, PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih, PDHI Kalasan', 46),
(53, 'Mei', 2019, 'AB', '', 'RS Hidayatullah, DR S Harjolukito, PDHI Kalasan, Bethesda Lempuyangwangi, PKU Muh Kotagede, Panti Rapih', 43),
(54, 'Juni', 2019, 'AB', '', 'RS Nur Hidayah, RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi, RS Hidayatullah, DR S Harjolukito, RSUD PRAMBANAN', 50),
(55, 'Juli', 2019, 'AB', '', 'RS Hidayatullah, RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, RS Happy Land, Panti Rapih, PKU Muh Kotagede, PDHI Kalasan', 48),
(56, 'Agustus', 2019, 'AB', '', 'RS Hidayatullah, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih, PDHI Kalasan', 47),
(57, 'September', 2019, 'AB', '', 'Panti Rapih, RS Sarjito, RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA', 55);

-- --------------------------------------------------------

--
-- Table structure for table `pendonors`
--

CREATE TABLE `pendonors` (
  `pendonor_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `goldar` text NOT NULL,
  `jk` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datarss`
--
ALTER TABLE `datarss`
  ADD PRIMARY KEY (`id_rs`);

--
-- Indexes for table `dataujis`
--
ALTER TABLE `dataujis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendonors`
--
ALTER TABLE `pendonors`
  ADD PRIMARY KEY (`pendonor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datarss`
--
ALTER TABLE `datarss`
  MODIFY `id_rs` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dataujis`
--
ALTER TABLE `dataujis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `pendonors`
--
ALTER TABLE `pendonors`
  MODIFY `pendonor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
