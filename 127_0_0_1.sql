-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 05:00 PM
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
CREATE DATABASE IF NOT EXISTS `ci_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ci_test`;

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
  `jumlah_darah` int(10) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataujis`
--

INSERT INTO `dataujis` (`id`, `bulan`, `tahun`, `golongan_darah`, `jenis_darah`, `namars`, `jumlah_darah`, `stok`) VALUES
(1, 'Januari', 2015, 'AB', 'prc', 'RS Sarjito, RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih', 48, 41),
(2, 'Februari', 2015, 'AB', 'prc', 'RS Rajawali Citra,  PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih, DR S Harjolukito, RS QUEEN LATIFA', 33, 31),
(3, 'Maret', 2015, 'AB', 'prc', 'DR S Harjolukito, PDHI Kalasan, Bethesda Lempuyangwangi, PKU Muh Kotagede, Panti Rapih, RS Hidayatullah', 31, 32),
(4, 'April', 2015, 'AB', 'prc', 'Bethesda Lempuyangwangi, Panti Rapih, RS Rajawali Citra, RS AKADEMI UGM, RS QUEEN LATIFA, RS Nur Hidayah, DR S Harjolukito', 28, 20),
(5, 'Mei', 2015, 'AB', 'prc', 'RSUD Wates, RS Hidayatullah, DR S Harjolukito, RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih', 31, 39),
(6, 'Juni', 2015, 'AB', 'prc', 'Bethesda Lempuyangwangi, Panti Rapih, PDHI Kalasan, RS Hidayatullah, RS Bhayangkara', 39, 36),
(7, 'Juli', 2015, 'AB', 'prc', 'DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah, RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi, RS Hidayatullah', 49, 49),
(8, 'Agustus', 2015, 'AB', 'prc', 'RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih, RS Sarjito', 54, 52),
(9, 'September', 2015, 'AB', 'prc', 'PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih, RS Hidayatullah, DR S Harjolukito, PKU Muh Kotagede', 34, 43),
(10, 'Oktober', 2015, 'AB', 'prc', 'RS Sarjito, RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih', 43, 44),
(11, 'November', 2015, 'AB', 'prc', 'DR S Harjolukito, Bethesda Lempuyangwangi, RS AKADEMI UGM, RS Sarjito, PDHI Kalasan, Panti Rapih', 45, 44),
(12, 'Desember', 2015, 'AB', 'prc', 'RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi, RS Hidayatullah, DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah', 56, 55),
(13, 'Januari', 2016, 'AB', 'prc', 'RS Sarjito, RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih', 43, 46),
(14, 'Februari', 2016, 'AB', 'prc', 'Bethesda, RS Nur Hidayah, DR S Harjolukito, Panti Rapih, RS Hidayatullah', 50, 58),
(15, 'Maret', 2016, 'AB', 'prc', 'PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih, DR S Harjolukito, RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, PDHI Kalasan', 44, 47),
(16, 'April', 2016, 'AB', 'prc', 'PDHI Kalasan, Panti Rapih, RS Sarjito, DR S Harjolukito, Bethesda Lempuyangwangi, RS AKADEMI UGM', 37, 33),
(17, 'Mei', 2016, 'AB', 'prc', 'DR S Harjolukito, Bethesda Lempuyangwangi, RS AKADEMI UGM, PDHI Kalasan, Panti Rapih, RS Sarjito', 48, 48),
(18, 'Juni', 2016, 'AB', 'prc', 'RS Rajawali Citra, RS QUEEN LATIFA, PDHI Kalasan, PKU Muh Yogyakarta, DR S Harjolukito,Bethesda Lempuyangwangi, Panti Rapih', 50, 51),
(19, 'Juli', 2016, 'AB', 'prc', 'RS AKADEMI UGM, PDHI Kalasan, Panti Rapih, RS Sarjito, DR S Harjolukito, Bethesda Lempuyangwangi', 58, 54),
(20, 'Agustus', 2016, 'AB', 'prc', 'PDHI Kalasan, DR S Harjolukito, RS Hidayatullah, RS Happy Land, RS Sarjito, PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih', 41, 42),
(21, 'September', 2016, 'AB', 'prc', 'PDHI Kalasan, RS Hidayatullah, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih', 49, 45),
(22, 'Oktober', 2016, 'AB', 'prc', 'DR S Harjolukito, Panti Rapih, RS Hidayatullah, Bethesda, RS Nur Hidayah', 47, 41),
(23, 'November', 2016, 'AB', 'prc', 'RS Hidayatullah, DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah, RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi', 55, 51),
(24, 'desember', 2016, 'AB', 'prc', 'PDHI Kalasan, RS Hidayatullah, RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, RS Happy Land, Panti Rapih, PKU Muh Kotagede', 48, 42),
(25, 'Januari', 2017, 'AB', 'prc', 'DR S Harjolukito, RS Hidayatullah, RS Sarjito, PDHI Kalasan,  PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih, RS Happy Land', 58, 50),
(26, 'Februari', 2017, 'AB', 'prc', 'DR S Harjolukito, RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, Bethesda Lempuyangwangi, RSUD Wates, RS Hidayatullah, Panti Rapih', 39, 49),
(27, 'Maret', 2017, 'AB', 'prc', 'RS Rajawali Citra, RS AKADEMI UGM, RS QUEEN LATIFA, RS Nur Hidayah, DR S Harjolukito, Bethesda Lempuyangwangi, Panti Rapih', 48, 46),
(28, 'April', 2017, 'AB', 'prc', 'RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, RS Happy Land, Panti Rapih, PKU Muh Kotagede, PDHI Kalasan, RS Hidayatullah', 52, 59),
(29, 'Mei', 2017, 'AB', 'prc', 'Bethesda Lempuyangwangi, Panti Rapih, RS QUEEN LATIFA, RS Nur Hidayah, DR S Harjolukito, RS Rajawali Citra, RS AKADEMI UGM', 46, 42),
(30, 'Juni', 2017, 'AB', 'prc', 'DR S Harjolukito, RS AKADEMI UGM, RS Sarjito, DHI Kalasan, Panti Rapih, Bethesda Lempuyangwangi', 41, 43),
(31, 'Juli', 2017, 'AB', 'prc', 'DR S Harjolukito, RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih', 53, 54),
(32, 'Agustus', 2017, 'AB', 'prc', 'RSUD PRAMBANAN, RS Nur Hidayah, RS Condong Catur, RS Sarjito, Panti Rapih, RS Hidayatullah, DR S Harjolukito, Bethesda Lempuyangwangi', 44, 44),
(33, 'September', 2017, 'AB', 'prc', 'RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih, RSUD Wates, RS Hidayatullah', 53, 55),
(34, 'Oktober', 2017, 'AB', 'prc', 'RS Hidayatullah, RS Happy Land, RS Sarjito, PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih, PDHI Kalasan, DR S Harjolukito', 60, 66),
(35, 'November', 2017, 'AB', 'prc', 'DR S Harjolukito, Bethesda Lempuyangwangi, Panti Rapih, RS Rajawali Citra, RS AKADEMI UGM, RS QUEEN LATIFA, RS Nur Hidayah', 60, 68),
(36, 'Desember', 2017, 'AB', 'prc', 'DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah, RS Condong Catur, RS Sarjito, RS Hidayatullah,  Panti Rapih, Bethesda Lempuyangwangi', 46, 57),
(37, 'Januari', 2018, 'AB', 'prc', 'RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA, Panti Rapih, RS Sarjito', 43, 43),
(38, 'Februari', 2018, 'AB', 'prc', 'RS Hidayatullah, DR S Harjolukito, RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih, RSUD Wates', 49, 48),
(39, 'Maret', 2018, 'AB', 'prc', 'DR S Harjolukito, RSUD PRAMBANAN, RS Nur Hidayah, RS Sarjito,  RS Hidayatullah, Panti Rapih, Bethesda Lempuyangwangi, RS Condong Catur', 34, 31),
(40, 'April', 2018, 'AB', 'prc', 'RS QUEEN LATIFA, RS Rajawali Citra, RS Bhayangkara, RSUD Wates, RS Hidayatullah, Bethesda Lempuyangwangi, Panti Rapih', 50, 54),
(41, 'Mei', 2018, 'AB', 'prc', 'PKU Muh Kotagede, PDHI Kalasan, RS Hidayatullah, RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, RS Happy Land, Panti Rapih', 45, 42),
(42, 'Juni', 2018, 'AB', 'prc', 'RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih, DR S Harjolukito', 48, 45),
(43, 'Juli', 2018, 'AB', 'prc', 'PKU Muh Bantul, Bethesda Lempuyangwangi, PDHI Kalasan, RS Rajawali Citra, Panti Rapih, RS Hidayatullah, DR S Harjolukito', 53, 51),
(44, 'Agustus', 2018, 'AB', 'prc', 'RSUD PRAMBANAN, RS Nur Hidayah, RS Hidayatullah, DR S Harjolukito, RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi', 59, 51),
(45, 'September', 2018, 'AB', 'prc', 'RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, DR S Harjolukito, PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih', 61, 62),
(46, 'Oktober', 2018, 'AB', 'prc', 'PDHI Kalasan, RS Hidayatullah, RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, PKU Muh Kotagede, RS Happy Land, Panti Rapih', 55, 51),
(47, 'November', 2018, 'AB', 'prc', 'DR S Harjolukito, RS Rajawali Citra, Bethesda, RS QUEEN LATIFA, PDHI Kalasan, PKU Muh Yogyakarta, Bethesda Lempuyangwangi, Panti Rapih', 56, 51),
(48, 'Desember', 2018, 'AB', 'prc', 'Panti Rapih, RS Hidayatullah, Bethesda, RS Nur Hidayah, DR S Harjolukito', 45, 42),
(49, 'Januari', 2019, 'AB', 'prc', 'RS Sarjito, DR S Harjolukito, Bethesda Lempuyangwangi, RS AKADEMI UGM, PDHI Kalasan, Panti Rapih', 57, 50),
(50, 'Februari', 2019, 'AB', 'prc', 'RS Rajawali Citra, PKU Muh Yogyakarta, DR S Harjolukito,  Bethesda Lempuyangwangi, Panti Rapih, RS QUEEN LATIFA, PDHI Kalasan', 49, 49),
(51, 'Maret', 2019, 'AB', 'prc', 'PDHI Kalasan, Bethesda Lempuyangwangi, PKU Muh Kotagede, Panti Rapih, RS Hidayatullah, DR S Harjolukito', 55, 56),
(52, 'April', 2019, 'AB', 'prc', 'DR S Harjolukito, RS Hidayatullah, RS Happy Land, RS Sarjito, PDHI Kalasan, Bethesda Lempuyangwangi, Panti Rapih, PDHI Kalasan', 46, 49),
(53, 'Mei', 2019, 'AB', 'prc', 'RS Hidayatullah, DR S Harjolukito, PDHI Kalasan, Bethesda Lempuyangwangi, PKU Muh Kotagede, Panti Rapih', 43, 42),
(54, 'Juni', 2019, 'AB', 'prc', 'RS Nur Hidayah, RS Condong Catur, RS Sarjito, Panti Rapih, Bethesda Lempuyangwangi, RS Hidayatullah, DR S Harjolukito, RSUD PRAMBANAN', 50, 53),
(55, 'Juli', 2019, 'AB', 'prc', 'RS Hidayatullah, RS ANNUR, Bethesda, RS Condong Catur, RSUD PRAMBANAN, RS Happy Land, Panti Rapih, PKU Muh Kotagede, PDHI Kalasan', 48, 44),
(56, 'Agustus', 2019, 'AB', 'prc', 'RS Hidayatullah, RS Bhayangkara, Bethesda Lempuyangwangi, Panti Rapih, PDHI Kalasan', 47, 44),
(57, 'September', 2019, 'AB', 'prc', 'Panti Rapih, RS Sarjito, RS AKADEMI UGM, RS Nur Hidayah, Bethesda Lempuyangwangi, PDHI Kalasan, RS QUEEN LATIFA', 55, 55);

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
-- Dumping data for table `pendonors`
--

INSERT INTO `pendonors` (`pendonor_id`, `name`, `tgl`, `goldar`, `jk`, `alamat`) VALUES
(1, 'yudha darmawan', '2021-01-11', 'B', 'Perempuan', 'jogja'),
(2, 'bambang', '2021-01-21', 'B', 'Laki-laki', 'bantul');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `dataujis`
--
ALTER TABLE `dataujis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `pendonors`
--
ALTER TABLE `pendonors`
  MODIFY `pendonor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ci_test\",\"table\":\"dataujis\"},{\"db\":\"ci_test\",\"table\":\"pendonors\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-01-17 15:52:12', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `ta_saw`
--
CREATE DATABASE IF NOT EXISTS `ta_saw` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ta_saw`;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id_data` int(10) NOT NULL,
  `id_supplier` int(10) NOT NULL,
  `id_subkriteria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id_data`, `id_supplier`, `id_subkriteria`) VALUES
(91, 1, 43),
(92, 1, 48),
(93, 1, 50),
(94, 1, 56),
(95, 1, 57),
(96, 1, 61),
(97, 2, 43),
(98, 2, 48),
(99, 2, 50),
(100, 2, 55),
(101, 2, 57),
(102, 2, 61),
(103, 3, 43),
(104, 3, 47),
(105, 3, 50),
(106, 3, 56),
(107, 3, 59),
(108, 3, 62),
(109, 17, 44),
(110, 17, 48),
(111, 17, 52),
(112, 17, 55),
(113, 17, 58),
(114, 17, 62),
(115, 18, 44),
(116, 18, 48),
(117, 18, 51),
(118, 18, 55),
(119, 18, 57),
(120, 18, 62),
(121, 19, 44),
(122, 19, 48),
(123, 19, 50),
(124, 19, 55),
(125, 19, 59),
(126, 19, 60),
(127, 20, 43),
(128, 20, 47),
(129, 20, 51),
(130, 20, 56),
(131, 20, 59),
(132, 20, 61);

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `id_harga` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`id_harga`, `keterangan`, `nilai`) VALUES
(1, 'bahan baku', 5800),
(2, 'harga jual', 25000),
(3, 'biaya simpan', 0.02);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `supply` double(10,0) NOT NULL,
  `demand` double NOT NULL,
  `id_material` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_history`, `bulan`, `supply`, `demand`, `id_material`) VALUES
(1, '1', 700000, 612200.2, 1),
(2, '2', 600000, 577961.4, 1),
(3, '3', 600000, 591209, 1),
(4, '4', 600000, 549072.9, 1),
(5, '5', 700000, 601098.6, 1),
(6, '6', 500000, 496532.3, 1),
(7, '7', 600000, 630753.3, 1),
(8, '8', 600000, 541276.1, 1),
(9, '9', 700000, 659901.6, 1),
(10, '10', 600000, 534383.7, 1),
(11, '11', 700000, 680000.3, 1),
(12, '12', 600000, 557040.6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(20) NOT NULL,
  `atribut` enum('cost','benefit') NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `atribut`, `bobot`) VALUES
(1, 'mutu', 'benefit', 0.215),
(2, 'Waktu ', 'cost', 0.18),
(3, 'garansi', 'benefit', 0.15),
(4, 'Pembayaran', 'benefit', 0.13),
(5, 'harga', 'cost', 0.215),
(6, 'pelayanan', 'benefit', 0.115);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id_material` int(11) NOT NULL,
  `nama_material` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id_material`, `nama_material`) VALUES
(1, 'talc'),
(2, 'botol'),
(3, 'kartoning'),
(4, 'material bahan pembantu');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(25) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(43, 1, 'sangat baik', 0.75),
(44, 1, 'baik', 0.5),
(45, 1, 'buruk', 0.25),
(46, 2, 'sangat cepat', 0.8),
(47, 2, 'cepat', 0.6),
(48, 2, 'sedang', 0.5),
(49, 2, 'lambat', 0.35),
(50, 3, 'sangat mudah', 0.75),
(51, 3, 'mudah', 0.5),
(52, 3, 'susah', 0.25),
(55, 4, 'tunai', 0.5),
(56, 4, 'kredit', 0.75),
(57, 5, 'sangat mahal', 0.25),
(58, 5, 'mahal', 0.5),
(59, 5, 'murah', 0.75),
(60, 6, 'sangat baik', 0.75),
(61, 6, 'baik', 0.5),
(62, 6, 'kurang baik', 0.35),
(63, 6, 'jelek', 0.25);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `id_material` int(11) NOT NULL,
  `nama_supplier` varchar(35) NOT NULL,
  `biaya_admin` int(11) NOT NULL,
  `biaya_pengiriman` int(11) NOT NULL,
  `biaya_simpan` int(11) NOT NULL,
  `harga_bahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `id_material`, `nama_supplier`, `biaya_admin`, `biaya_pengiriman`, `biaya_simpan`, `harga_bahan`) VALUES
(1, 1, 'golcha', 100000, 10000, 0, 5800),
(2, 1, 'supplier talc china', 200000, 12000, 0, 5900),
(3, 1, 'rdc malaysia', 150000, 15000, 0, 6200),
(4, 2, 'pt rapid class', 0, 0, 0, 0),
(5, 2, 'pt berlina', 0, 0, 0, 0),
(6, 2, 'kimact thailand', 0, 0, 0, 0),
(11, 3, 'prima box', 0, 0, 0, 0),
(12, 3, 'pt supra', 0, 0, 0, 0),
(13, 3, 'surabaya mekabox', 0, 0, 0, 0),
(14, 4, 'pt symrise ', 0, 0, 0, 0),
(15, 4, 'dksh indonesia', 0, 0, 0, 0),
(16, 4, 'erdisi', 0, 0, 0, 0),
(17, 1, 'golcha thailand', 125000, 17000, 0, 5857),
(18, 1, 'Guangdong Qiangda', 0, 0, 0, 0),
(19, 1, 'Derunhuabang', 0, 0, 0, 0),
(20, 1, 'Dandong Tianci fire-retardan', 0, 0, 0, 0),
(21, 1, 'MME', 0, 0, 0, 0),
(22, 1, 'Top billion New Materials', 0, 0, 0, 0),
(23, 1, 'Kolortex', 0, 0, 0, 0),
(24, 1, 'Jinan Richnow', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `keterangan` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `keterangan`) VALUES
(1, 'tes', 'aaa', 'user'),
(9, 'admin', 'admin', 'admin'),
(11, 'admin2', '12345', 'user'),
(12, 'public', '202cb962ac59075b964b', 'user'),
(13, 'tes b', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_data`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_subkriteria` (`id_subkriteria`);

--
-- Indexes for table `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id_harga`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `id_material` (`id_material`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id_data` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `harga`
--
ALTER TABLE `harga`
  MODIFY `id_harga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `data_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON UPDATE CASCADE,
  ADD CONSTRAINT `data_ibfk_2` FOREIGN KEY (`id_subkriteria`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON UPDATE CASCADE;

--
-- Constraints for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`) ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
