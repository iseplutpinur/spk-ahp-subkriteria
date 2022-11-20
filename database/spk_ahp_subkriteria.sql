-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 12:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahp_crips`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `total`, `rank`) VALUES
('MB', 'Misbah', '', 0.15398886828403, 2),
('AP', 'Asep', '', 0.15398886828403, 1),
('NY', 'Nuryanti', '', 0.15398886828403, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`) VALUES
('MK', 'Masa Kerja'),
('PD', 'Pendidikan'),
('KJ', 'Kejujuran'),
('TJ', 'Tanggung Jawab'),
('ET', 'Etika'),
('DP', 'Disiplin'),
('KM', 'Komunikasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` int(11) NOT NULL,
  `kode_alternatif` varchar(255) DEFAULT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `kode_sub` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `kode_sub`) VALUES
(1, 'MB', 'DP', 'DP1'),
(2, 'MB', 'ET', 'ET1'),
(3, 'MB', 'KJ', 'KJ1'),
(4, 'MB', 'KM', 'KM1'),
(5, 'MB', 'MK', 'MK1'),
(6, 'MB', 'PD', 'PD1'),
(7, 'MB', 'TJ', 'TJ1'),
(8, 'AP', 'DP', 'DP1'),
(9, 'AP', 'ET', 'ET1'),
(10, 'AP', 'KJ', 'KJ1'),
(11, 'AP', 'KM', 'KM1'),
(12, 'AP', 'MK', 'MK1'),
(13, 'AP', 'PD', 'PD1'),
(14, 'AP', 'TJ', 'TJ1'),
(15, 'NY', 'DP', 'DP1'),
(16, 'NY', 'ET', 'ET1'),
(17, 'NY', 'KJ', 'KJ1'),
(18, 'NY', 'KM', 'KM1'),
(19, 'NY', 'MK', 'MK1'),
(20, 'NY', 'PD', 'PD1'),
(21, 'NY', 'TJ', 'TJ1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_kriteria`
--

CREATE TABLE `tb_rel_kriteria` (
  `ID` int(11) NOT NULL,
  `ID1` varchar(16) DEFAULT NULL,
  `ID2` varchar(16) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_kriteria`
--

INSERT INTO `tb_rel_kriteria` (`ID`, `ID1`, `ID2`, `nilai`) VALUES
(1, 'MK', 'MK', 1),
(2, 'PD', 'MK', 1),
(3, 'PD', 'PD', 1),
(4, 'MK', 'PD', 1),
(5, 'KJ', 'KJ', 1),
(6, 'KJ', 'MK', 1),
(7, 'KJ', 'PD', 1),
(8, 'MK', 'KJ', 1),
(9, 'PD', 'KJ', 1),
(10, 'TJ', 'KJ', 1),
(11, 'TJ', 'MK', 1),
(12, 'TJ', 'PD', 1),
(13, 'TJ', 'TJ', 1),
(14, 'KJ', 'TJ', 1),
(15, 'MK', 'TJ', 1),
(16, 'PD', 'TJ', 1),
(17, 'ET', 'ET', 1),
(18, 'ET', 'KJ', 1),
(19, 'ET', 'MK', 1),
(20, 'ET', 'PD', 1),
(21, 'ET', 'TJ', 1),
(22, 'KJ', 'ET', 1),
(23, 'MK', 'ET', 1),
(24, 'PD', 'ET', 1),
(25, 'TJ', 'ET', 1),
(26, 'DP', 'DP', 1),
(27, 'DP', 'ET', 1),
(28, 'DP', 'KJ', 1),
(29, 'DP', 'MK', 1),
(30, 'DP', 'PD', 1),
(31, 'DP', 'TJ', 1),
(32, 'ET', 'DP', 1),
(33, 'KJ', 'DP', 1),
(34, 'MK', 'DP', 1),
(35, 'PD', 'DP', 1),
(36, 'TJ', 'DP', 1),
(37, 'KM', 'DP', 1),
(38, 'KM', 'ET', 1),
(39, 'KM', 'KJ', 1),
(40, 'KM', 'KM', 1),
(41, 'KM', 'MK', 1),
(42, 'KM', 'PD', 1),
(43, 'KM', 'TJ', 1),
(44, 'DP', 'KM', 1),
(45, 'ET', 'KM', 1),
(46, 'KJ', 'KM', 1),
(47, 'MK', 'KM', 1),
(48, 'PD', 'KM', 1),
(49, 'TJ', 'KM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_sub`
--

CREATE TABLE `tb_rel_sub` (
  `ID` int(11) NOT NULL,
  `ID1` varchar(255) DEFAULT NULL,
  `ID2` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `bobot` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_sub`
--

INSERT INTO `tb_rel_sub` (`ID`, `ID1`, `ID2`, `nilai`, `bobot`) VALUES
(1, 'MK1', 'MK1', 1, NULL),
(2, 'MK2', 'MK1', 0.5, NULL),
(3, 'MK2', 'MK2', 1, NULL),
(4, 'MK1', 'MK2', 2, NULL),
(5, 'MK3', 'MK1', 0.333333333, NULL),
(6, 'MK3', 'MK2', 0.5, NULL),
(7, 'MK3', 'MK3', 1, NULL),
(8, 'MK1', 'MK3', 3, NULL),
(9, 'MK2', 'MK3', 2, NULL),
(10, 'DP1', 'DP1', 1, NULL),
(11, 'DP1', 'MK1', 1, NULL),
(12, 'DP1', 'MK2', 1, NULL),
(13, 'DP1', 'MK3', 1, NULL),
(14, 'MK1', 'DP1', 1, NULL),
(15, 'MK2', 'DP1', 1, NULL),
(16, 'MK3', 'DP1', 1, NULL),
(17, 'DP2', 'DP1', 0.5, NULL),
(18, 'DP2', 'DP2', 1, NULL),
(19, 'DP2', 'MK1', 1, NULL),
(20, 'DP2', 'MK2', 1, NULL),
(21, 'DP2', 'MK3', 1, NULL),
(22, 'DP1', 'DP2', 2, NULL),
(23, 'MK1', 'DP2', 1, NULL),
(24, 'MK2', 'DP2', 1, NULL),
(25, 'MK3', 'DP2', 1, NULL),
(26, 'DP3', 'DP1', 0.333333333, NULL),
(27, 'DP3', 'DP2', 0.5, NULL),
(28, 'DP3', 'DP3', 1, NULL),
(29, 'DP3', 'MK1', 1, NULL),
(30, 'DP3', 'MK2', 1, NULL),
(31, 'DP3', 'MK3', 1, NULL),
(32, 'DP1', 'DP3', 3, NULL),
(33, 'DP2', 'DP3', 2, NULL),
(34, 'MK1', 'DP3', 1, NULL),
(35, 'MK2', 'DP3', 1, NULL),
(36, 'MK3', 'DP3', 1, NULL),
(37, 'ET1', 'DP1', 1, NULL),
(38, 'ET1', 'DP2', 1, NULL),
(39, 'ET1', 'DP3', 1, NULL),
(40, 'ET1', 'ET1', 1, NULL),
(41, 'ET1', 'MK1', 1, NULL),
(42, 'ET1', 'MK2', 1, NULL),
(43, 'ET1', 'MK3', 1, NULL),
(44, 'DP1', 'ET1', 1, NULL),
(45, 'DP2', 'ET1', 1, NULL),
(46, 'DP3', 'ET1', 1, NULL),
(47, 'MK1', 'ET1', 1, NULL),
(48, 'MK2', 'ET1', 1, NULL),
(49, 'MK3', 'ET1', 1, NULL),
(50, 'ET2', 'DP1', 1, NULL),
(51, 'ET2', 'DP2', 1, NULL),
(52, 'ET2', 'DP3', 1, NULL),
(53, 'ET2', 'ET1', 0.5, NULL),
(54, 'ET2', 'ET2', 1, NULL),
(55, 'ET2', 'MK1', 1, NULL),
(56, 'ET2', 'MK2', 1, NULL),
(57, 'ET2', 'MK3', 1, NULL),
(58, 'DP1', 'ET2', 1, NULL),
(59, 'DP2', 'ET2', 1, NULL),
(60, 'DP3', 'ET2', 1, NULL),
(61, 'ET1', 'ET2', 2, NULL),
(62, 'MK1', 'ET2', 1, NULL),
(63, 'MK2', 'ET2', 1, NULL),
(64, 'MK3', 'ET2', 1, NULL),
(65, 'ET3', 'DP1', 1, NULL),
(66, 'ET3', 'DP2', 1, NULL),
(67, 'ET3', 'DP3', 1, NULL),
(68, 'ET3', 'ET1', 0.333333333, NULL),
(69, 'ET3', 'ET2', 0.5, NULL),
(70, 'ET3', 'ET3', 1, NULL),
(71, 'ET3', 'MK1', 1, NULL),
(72, 'ET3', 'MK2', 1, NULL),
(73, 'ET3', 'MK3', 1, NULL),
(74, 'DP1', 'ET3', 1, NULL),
(75, 'DP2', 'ET3', 1, NULL),
(76, 'DP3', 'ET3', 1, NULL),
(77, 'ET1', 'ET3', 3, NULL),
(78, 'ET2', 'ET3', 2, NULL),
(79, 'MK1', 'ET3', 1, NULL),
(80, 'MK2', 'ET3', 1, NULL),
(81, 'MK3', 'ET3', 1, NULL),
(82, 'KJ1', 'DP1', 1, NULL),
(83, 'KJ1', 'DP2', 1, NULL),
(84, 'KJ1', 'DP3', 1, NULL),
(85, 'KJ1', 'ET1', 1, NULL),
(86, 'KJ1', 'ET2', 1, NULL),
(87, 'KJ1', 'ET3', 1, NULL),
(88, 'KJ1', 'KJ1', 1, NULL),
(89, 'KJ1', 'MK1', 1, NULL),
(90, 'KJ1', 'MK2', 1, NULL),
(91, 'KJ1', 'MK3', 1, NULL),
(92, 'DP1', 'KJ1', 1, NULL),
(93, 'DP2', 'KJ1', 1, NULL),
(94, 'DP3', 'KJ1', 1, NULL),
(95, 'ET1', 'KJ1', 1, NULL),
(96, 'ET2', 'KJ1', 1, NULL),
(97, 'ET3', 'KJ1', 1, NULL),
(98, 'MK1', 'KJ1', 1, NULL),
(99, 'MK2', 'KJ1', 1, NULL),
(100, 'MK3', 'KJ1', 1, NULL),
(101, 'KJ2', 'DP1', 1, NULL),
(102, 'KJ2', 'DP2', 1, NULL),
(103, 'KJ2', 'DP3', 1, NULL),
(104, 'KJ2', 'ET1', 1, NULL),
(105, 'KJ2', 'ET2', 1, NULL),
(106, 'KJ2', 'ET3', 1, NULL),
(107, 'KJ2', 'KJ1', 1, NULL),
(108, 'KJ2', 'KJ2', 1, NULL),
(109, 'KJ2', 'MK1', 1, NULL),
(110, 'KJ2', 'MK2', 1, NULL),
(111, 'KJ2', 'MK3', 1, NULL),
(112, 'DP1', 'KJ2', 1, NULL),
(113, 'DP2', 'KJ2', 1, NULL),
(114, 'DP3', 'KJ2', 1, NULL),
(115, 'ET1', 'KJ2', 1, NULL),
(116, 'ET2', 'KJ2', 1, NULL),
(117, 'ET3', 'KJ2', 1, NULL),
(118, 'KJ1', 'KJ2', 1, NULL),
(119, 'MK1', 'KJ2', 1, NULL),
(120, 'MK2', 'KJ2', 1, NULL),
(121, 'MK3', 'KJ2', 1, NULL),
(122, 'KJ3', 'DP1', 1, NULL),
(123, 'KJ3', 'DP2', 1, NULL),
(124, 'KJ3', 'DP3', 1, NULL),
(125, 'KJ3', 'ET1', 1, NULL),
(126, 'KJ3', 'ET2', 1, NULL),
(127, 'KJ3', 'ET3', 1, NULL),
(128, 'KJ3', 'KJ1', 1, NULL),
(129, 'KJ3', 'KJ2', 1, NULL),
(130, 'KJ3', 'KJ3', 1, NULL),
(131, 'KJ3', 'MK1', 1, NULL),
(132, 'KJ3', 'MK2', 1, NULL),
(133, 'KJ3', 'MK3', 1, NULL),
(134, 'DP1', 'KJ3', 1, NULL),
(135, 'DP2', 'KJ3', 1, NULL),
(136, 'DP3', 'KJ3', 1, NULL),
(137, 'ET1', 'KJ3', 1, NULL),
(138, 'ET2', 'KJ3', 1, NULL),
(139, 'ET3', 'KJ3', 1, NULL),
(140, 'KJ1', 'KJ3', 1, NULL),
(141, 'KJ2', 'KJ3', 1, NULL),
(142, 'MK1', 'KJ3', 1, NULL),
(143, 'MK2', 'KJ3', 1, NULL),
(144, 'MK3', 'KJ3', 1, NULL),
(145, 'KM1', 'DP1', 1, NULL),
(146, 'KM1', 'DP2', 1, NULL),
(147, 'KM1', 'DP3', 1, NULL),
(148, 'KM1', 'ET1', 1, NULL),
(149, 'KM1', 'ET2', 1, NULL),
(150, 'KM1', 'ET3', 1, NULL),
(151, 'KM1', 'KJ1', 1, NULL),
(152, 'KM1', 'KJ2', 1, NULL),
(153, 'KM1', 'KJ3', 1, NULL),
(154, 'KM1', 'KM1', 1, NULL),
(155, 'KM1', 'MK1', 1, NULL),
(156, 'KM1', 'MK2', 1, NULL),
(157, 'KM1', 'MK3', 1, NULL),
(158, 'DP1', 'KM1', 1, NULL),
(159, 'DP2', 'KM1', 1, NULL),
(160, 'DP3', 'KM1', 1, NULL),
(161, 'ET1', 'KM1', 1, NULL),
(162, 'ET2', 'KM1', 1, NULL),
(163, 'ET3', 'KM1', 1, NULL),
(164, 'KJ1', 'KM1', 1, NULL),
(165, 'KJ2', 'KM1', 1, NULL),
(166, 'KJ3', 'KM1', 1, NULL),
(167, 'MK1', 'KM1', 1, NULL),
(168, 'MK2', 'KM1', 1, NULL),
(169, 'MK3', 'KM1', 1, NULL),
(170, 'KM2', 'DP1', 1, NULL),
(171, 'KM2', 'DP2', 1, NULL),
(172, 'KM2', 'DP3', 1, NULL),
(173, 'KM2', 'ET1', 1, NULL),
(174, 'KM2', 'ET2', 1, NULL),
(175, 'KM2', 'ET3', 1, NULL),
(176, 'KM2', 'KJ1', 1, NULL),
(177, 'KM2', 'KJ2', 1, NULL),
(178, 'KM2', 'KJ3', 1, NULL),
(179, 'KM2', 'KM1', 1, NULL),
(180, 'KM2', 'KM2', 1, NULL),
(181, 'KM2', 'MK1', 1, NULL),
(182, 'KM2', 'MK2', 1, NULL),
(183, 'KM2', 'MK3', 1, NULL),
(184, 'DP1', 'KM2', 1, NULL),
(185, 'DP2', 'KM2', 1, NULL),
(186, 'DP3', 'KM2', 1, NULL),
(187, 'ET1', 'KM2', 1, NULL),
(188, 'ET2', 'KM2', 1, NULL),
(189, 'ET3', 'KM2', 1, NULL),
(190, 'KJ1', 'KM2', 1, NULL),
(191, 'KJ2', 'KM2', 1, NULL),
(192, 'KJ3', 'KM2', 1, NULL),
(193, 'KM1', 'KM2', 1, NULL),
(194, 'MK1', 'KM2', 1, NULL),
(195, 'MK2', 'KM2', 1, NULL),
(196, 'MK3', 'KM2', 1, NULL),
(197, 'KM3', 'DP1', 1, NULL),
(198, 'KM3', 'DP2', 1, NULL),
(199, 'KM3', 'DP3', 1, NULL),
(200, 'KM3', 'ET1', 1, NULL),
(201, 'KM3', 'ET2', 1, NULL),
(202, 'KM3', 'ET3', 1, NULL),
(203, 'KM3', 'KJ1', 1, NULL),
(204, 'KM3', 'KJ2', 1, NULL),
(205, 'KM3', 'KJ3', 1, NULL),
(206, 'KM3', 'KM1', 1, NULL),
(207, 'KM3', 'KM2', 1, NULL),
(208, 'KM3', 'KM3', 1, NULL),
(209, 'KM3', 'MK1', 1, NULL),
(210, 'KM3', 'MK2', 1, NULL),
(211, 'KM3', 'MK3', 1, NULL),
(212, 'DP1', 'KM3', 1, NULL),
(213, 'DP2', 'KM3', 1, NULL),
(214, 'DP3', 'KM3', 1, NULL),
(215, 'ET1', 'KM3', 1, NULL),
(216, 'ET2', 'KM3', 1, NULL),
(217, 'ET3', 'KM3', 1, NULL),
(218, 'KJ1', 'KM3', 1, NULL),
(219, 'KJ2', 'KM3', 1, NULL),
(220, 'KJ3', 'KM3', 1, NULL),
(221, 'KM1', 'KM3', 1, NULL),
(222, 'KM2', 'KM3', 1, NULL),
(223, 'MK1', 'KM3', 1, NULL),
(224, 'MK2', 'KM3', 1, NULL),
(225, 'MK3', 'KM3', 1, NULL),
(226, 'PD1', 'DP1', 1, NULL),
(227, 'PD1', 'DP2', 1, NULL),
(228, 'PD1', 'DP3', 1, NULL),
(229, 'PD1', 'ET1', 1, NULL),
(230, 'PD1', 'ET2', 1, NULL),
(231, 'PD1', 'ET3', 1, NULL),
(232, 'PD1', 'KJ1', 1, NULL),
(233, 'PD1', 'KJ2', 1, NULL),
(234, 'PD1', 'KJ3', 1, NULL),
(235, 'PD1', 'KM1', 1, NULL),
(236, 'PD1', 'KM2', 1, NULL),
(237, 'PD1', 'KM3', 1, NULL),
(238, 'PD1', 'MK1', 1, NULL),
(239, 'PD1', 'MK2', 1, NULL),
(240, 'PD1', 'MK3', 1, NULL),
(241, 'PD1', 'PD1', 1, NULL),
(242, 'DP1', 'PD1', 1, NULL),
(243, 'DP2', 'PD1', 1, NULL),
(244, 'DP3', 'PD1', 1, NULL),
(245, 'ET1', 'PD1', 1, NULL),
(246, 'ET2', 'PD1', 1, NULL),
(247, 'ET3', 'PD1', 1, NULL),
(248, 'KJ1', 'PD1', 1, NULL),
(249, 'KJ2', 'PD1', 1, NULL),
(250, 'KJ3', 'PD1', 1, NULL),
(251, 'KM1', 'PD1', 1, NULL),
(252, 'KM2', 'PD1', 1, NULL),
(253, 'KM3', 'PD1', 1, NULL),
(254, 'MK1', 'PD1', 1, NULL),
(255, 'MK2', 'PD1', 1, NULL),
(256, 'MK3', 'PD1', 1, NULL),
(257, 'PD2', 'DP1', 1, NULL),
(258, 'PD2', 'DP2', 1, NULL),
(259, 'PD2', 'DP3', 1, NULL),
(260, 'PD2', 'ET1', 1, NULL),
(261, 'PD2', 'ET2', 1, NULL),
(262, 'PD2', 'ET3', 1, NULL),
(263, 'PD2', 'KJ1', 1, NULL),
(264, 'PD2', 'KJ2', 1, NULL),
(265, 'PD2', 'KJ3', 1, NULL),
(266, 'PD2', 'KM1', 1, NULL),
(267, 'PD2', 'KM2', 1, NULL),
(268, 'PD2', 'KM3', 1, NULL),
(269, 'PD2', 'MK1', 1, NULL),
(270, 'PD2', 'MK2', 1, NULL),
(271, 'PD2', 'MK3', 1, NULL),
(272, 'PD2', 'PD1', 1, NULL),
(273, 'PD2', 'PD2', 1, NULL),
(274, 'DP1', 'PD2', 1, NULL),
(275, 'DP2', 'PD2', 1, NULL),
(276, 'DP3', 'PD2', 1, NULL),
(277, 'ET1', 'PD2', 1, NULL),
(278, 'ET2', 'PD2', 1, NULL),
(279, 'ET3', 'PD2', 1, NULL),
(280, 'KJ1', 'PD2', 1, NULL),
(281, 'KJ2', 'PD2', 1, NULL),
(282, 'KJ3', 'PD2', 1, NULL),
(283, 'KM1', 'PD2', 1, NULL),
(284, 'KM2', 'PD2', 1, NULL),
(285, 'KM3', 'PD2', 1, NULL),
(286, 'MK1', 'PD2', 1, NULL),
(287, 'MK2', 'PD2', 1, NULL),
(288, 'MK3', 'PD2', 1, NULL),
(289, 'PD1', 'PD2', 1, NULL),
(290, 'PD3', 'DP1', 1, NULL),
(291, 'PD3', 'DP2', 1, NULL),
(292, 'PD3', 'DP3', 1, NULL),
(293, 'PD3', 'ET1', 1, NULL),
(294, 'PD3', 'ET2', 1, NULL),
(295, 'PD3', 'ET3', 1, NULL),
(296, 'PD3', 'KJ1', 1, NULL),
(297, 'PD3', 'KJ2', 1, NULL),
(298, 'PD3', 'KJ3', 1, NULL),
(299, 'PD3', 'KM1', 1, NULL),
(300, 'PD3', 'KM2', 1, NULL),
(301, 'PD3', 'KM3', 1, NULL),
(302, 'PD3', 'MK1', 1, NULL),
(303, 'PD3', 'MK2', 1, NULL),
(304, 'PD3', 'MK3', 1, NULL),
(305, 'PD3', 'PD1', 1, NULL),
(306, 'PD3', 'PD2', 1, NULL),
(307, 'PD3', 'PD3', 1, NULL),
(308, 'DP1', 'PD3', 1, NULL),
(309, 'DP2', 'PD3', 1, NULL),
(310, 'DP3', 'PD3', 1, NULL),
(311, 'ET1', 'PD3', 1, NULL),
(312, 'ET2', 'PD3', 1, NULL),
(313, 'ET3', 'PD3', 1, NULL),
(314, 'KJ1', 'PD3', 1, NULL),
(315, 'KJ2', 'PD3', 1, NULL),
(316, 'KJ3', 'PD3', 1, NULL),
(317, 'KM1', 'PD3', 1, NULL),
(318, 'KM2', 'PD3', 1, NULL),
(319, 'KM3', 'PD3', 1, NULL),
(320, 'MK1', 'PD3', 1, NULL),
(321, 'MK2', 'PD3', 1, NULL),
(322, 'MK3', 'PD3', 1, NULL),
(323, 'PD1', 'PD3', 1, NULL),
(324, 'PD2', 'PD3', 1, NULL),
(325, 'TJ1', 'DP1', 1, NULL),
(326, 'TJ1', 'DP2', 1, NULL),
(327, 'TJ1', 'DP3', 1, NULL),
(328, 'TJ1', 'ET1', 1, NULL),
(329, 'TJ1', 'ET2', 1, NULL),
(330, 'TJ1', 'ET3', 1, NULL),
(331, 'TJ1', 'KJ1', 1, NULL),
(332, 'TJ1', 'KJ2', 1, NULL),
(333, 'TJ1', 'KJ3', 1, NULL),
(334, 'TJ1', 'KM1', 1, NULL),
(335, 'TJ1', 'KM2', 1, NULL),
(336, 'TJ1', 'KM3', 1, NULL),
(337, 'TJ1', 'MK1', 1, NULL),
(338, 'TJ1', 'MK2', 1, NULL),
(339, 'TJ1', 'MK3', 1, NULL),
(340, 'TJ1', 'PD1', 1, NULL),
(341, 'TJ1', 'PD2', 1, NULL),
(342, 'TJ1', 'PD3', 1, NULL),
(343, 'TJ1', 'TJ1', 1, NULL),
(344, 'DP1', 'TJ1', 1, NULL),
(345, 'DP2', 'TJ1', 1, NULL),
(346, 'DP3', 'TJ1', 1, NULL),
(347, 'ET1', 'TJ1', 1, NULL),
(348, 'ET2', 'TJ1', 1, NULL),
(349, 'ET3', 'TJ1', 1, NULL),
(350, 'KJ1', 'TJ1', 1, NULL),
(351, 'KJ2', 'TJ1', 1, NULL),
(352, 'KJ3', 'TJ1', 1, NULL),
(353, 'KM1', 'TJ1', 1, NULL),
(354, 'KM2', 'TJ1', 1, NULL),
(355, 'KM3', 'TJ1', 1, NULL),
(356, 'MK1', 'TJ1', 1, NULL),
(357, 'MK2', 'TJ1', 1, NULL),
(358, 'MK3', 'TJ1', 1, NULL),
(359, 'PD1', 'TJ1', 1, NULL),
(360, 'PD2', 'TJ1', 1, NULL),
(361, 'PD3', 'TJ1', 1, NULL),
(362, 'TJ2', 'DP1', 1, NULL),
(363, 'TJ2', 'DP2', 1, NULL),
(364, 'TJ2', 'DP3', 1, NULL),
(365, 'TJ2', 'ET1', 1, NULL),
(366, 'TJ2', 'ET2', 1, NULL),
(367, 'TJ2', 'ET3', 1, NULL),
(368, 'TJ2', 'KJ1', 1, NULL),
(369, 'TJ2', 'KJ2', 1, NULL),
(370, 'TJ2', 'KJ3', 1, NULL),
(371, 'TJ2', 'KM1', 1, NULL),
(372, 'TJ2', 'KM2', 1, NULL),
(373, 'TJ2', 'KM3', 1, NULL),
(374, 'TJ2', 'MK1', 1, NULL),
(375, 'TJ2', 'MK2', 1, NULL),
(376, 'TJ2', 'MK3', 1, NULL),
(377, 'TJ2', 'PD1', 1, NULL),
(378, 'TJ2', 'PD2', 1, NULL),
(379, 'TJ2', 'PD3', 1, NULL),
(380, 'TJ2', 'TJ1', 1, NULL),
(381, 'TJ2', 'TJ2', 1, NULL),
(382, 'DP1', 'TJ2', 1, NULL),
(383, 'DP2', 'TJ2', 1, NULL),
(384, 'DP3', 'TJ2', 1, NULL),
(385, 'ET1', 'TJ2', 1, NULL),
(386, 'ET2', 'TJ2', 1, NULL),
(387, 'ET3', 'TJ2', 1, NULL),
(388, 'KJ1', 'TJ2', 1, NULL),
(389, 'KJ2', 'TJ2', 1, NULL),
(390, 'KJ3', 'TJ2', 1, NULL),
(391, 'KM1', 'TJ2', 1, NULL),
(392, 'KM2', 'TJ2', 1, NULL),
(393, 'KM3', 'TJ2', 1, NULL),
(394, 'MK1', 'TJ2', 1, NULL),
(395, 'MK2', 'TJ2', 1, NULL),
(396, 'MK3', 'TJ2', 1, NULL),
(397, 'PD1', 'TJ2', 1, NULL),
(398, 'PD2', 'TJ2', 1, NULL),
(399, 'PD3', 'TJ2', 1, NULL),
(400, 'TJ1', 'TJ2', 1, NULL),
(401, 'TJ3', 'DP1', 1, NULL),
(402, 'TJ3', 'DP2', 1, NULL),
(403, 'TJ3', 'DP3', 1, NULL),
(404, 'TJ3', 'ET1', 1, NULL),
(405, 'TJ3', 'ET2', 1, NULL),
(406, 'TJ3', 'ET3', 1, NULL),
(407, 'TJ3', 'KJ1', 1, NULL),
(408, 'TJ3', 'KJ2', 1, NULL),
(409, 'TJ3', 'KJ3', 1, NULL),
(410, 'TJ3', 'KM1', 1, NULL),
(411, 'TJ3', 'KM2', 1, NULL),
(412, 'TJ3', 'KM3', 1, NULL),
(413, 'TJ3', 'MK1', 1, NULL),
(414, 'TJ3', 'MK2', 1, NULL),
(415, 'TJ3', 'MK3', 1, NULL),
(416, 'TJ3', 'PD1', 1, NULL),
(417, 'TJ3', 'PD2', 1, NULL),
(418, 'TJ3', 'PD3', 1, NULL),
(419, 'TJ3', 'TJ1', 1, NULL),
(420, 'TJ3', 'TJ2', 1, NULL),
(421, 'TJ3', 'TJ3', 1, NULL),
(422, 'DP1', 'TJ3', 1, NULL),
(423, 'DP2', 'TJ3', 1, NULL),
(424, 'DP3', 'TJ3', 1, NULL),
(425, 'ET1', 'TJ3', 1, NULL),
(426, 'ET2', 'TJ3', 1, NULL),
(427, 'ET3', 'TJ3', 1, NULL),
(428, 'KJ1', 'TJ3', 1, NULL),
(429, 'KJ2', 'TJ3', 1, NULL),
(430, 'KJ3', 'TJ3', 1, NULL),
(431, 'KM1', 'TJ3', 1, NULL),
(432, 'KM2', 'TJ3', 1, NULL),
(433, 'KM3', 'TJ3', 1, NULL),
(434, 'MK1', 'TJ3', 1, NULL),
(435, 'MK2', 'TJ3', 1, NULL),
(436, 'MK3', 'TJ3', 1, NULL),
(437, 'PD1', 'TJ3', 1, NULL),
(438, 'PD2', 'TJ3', 1, NULL),
(439, 'PD3', 'TJ3', 1, NULL),
(440, 'TJ1', 'TJ3', 1, NULL),
(441, 'TJ2', 'TJ3', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub`
--

CREATE TABLE `tb_sub` (
  `kode_sub` varchar(255) NOT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `nama_sub` varchar(255) DEFAULT NULL,
  `nilai_sub` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sub`
--

INSERT INTO `tb_sub` (`kode_sub`, `kode_kriteria`, `nama_sub`, `nilai_sub`) VALUES
('DP1', 'DP', 'Kurang', 0.5389610389941),
('DP2', 'DP', 'Baik', 0.29725829727483),
('DP3', 'DP', 'Sangat Baik', 0.16378066373108),
('ET1', 'ET', 'Kurang', 0.5389610389941),
('ET2', 'ET', 'Baik', 0.29725829727483),
('ET3', 'ET', 'Sangat Baik', 0.16378066373108),
('KJ1', 'KJ', 'Kurang', NULL),
('KJ2', 'KJ', 'Baik', NULL),
('KJ3', 'KJ', 'Sangat Baik', NULL),
('KM1', 'KM', 'Kurang', NULL),
('KM2', 'KM', 'Baik', NULL),
('KM3', 'KM', 'Sangat Baik', NULL),
('MK1', 'MK', '1 Tahun', 0.5389610389941),
('MK2', 'MK', '3 Tahun', 0.29725829727483),
('MK3', 'MK', '>= 5 Tahun', 0.16378066373108),
('PD1', 'PD', 'SLTA', NULL),
('PD2', 'PD', 'D3', NULL),
('PD3', 'PD', 'S1', NULL),
('TJ1', 'TJ', 'Kurang', NULL),
('TJ2', 'TJ', 'Baik', NULL),
('TJ3', 'TJ', 'Sangat Baik', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `kode_user` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`kode_user`, `user`, `pass`, `nama_user`, `level`) VALUES
('A1', 'admin', 'admin', 'administrator', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_sub`
--
ALTER TABLE `tb_sub`
  ADD PRIMARY KEY (`kode_sub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
