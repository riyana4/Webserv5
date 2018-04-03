-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2017 at 05:12 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `akademik`
--
CREATE DATABASE IF NOT EXISTS `akademik` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `akademik`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--


--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` char(15) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `prodi` char(5) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `prodi`) VALUES
('15.01.53.0051', 'Heni Oktavia', 'Teknik Informatika'),
('15.01.53.0043', 'Susi Sri Hardiyanti', 'Teknik Informatika'),
('15.01.53.0031', 'Riyana', 'Teknik Informatika'),
('15.01.53.0057', 'Devi Nur Purnama', 'Teknik Informatika'),
('15.01.53.0046', 'Adella Ghea Putri', 'Teknik Informatika'),
('15.01.53.0025', 'Yan Afriyoko ', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
  `kdmk` char(6) NOT NULL,
  `nmmk` varchar(35) NOT NULL,
  `sks` int(11) NOT NULL,
  `prodi` char(5) NOT NULL,
  PRIMARY KEY (`kdmk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kdmk`, `nmmk`, `sks`, `prodi`) VALUES
('112233', 'Pemrograman Web', 3, 'Teknik Informatika'),
('104531', 'Algoritma Pemrograman', 3, 'Teknik Informatika'),
('812345', 'Basis Data Terdistribusi', 3, 'Teknik Informatika'),
('780123', 'Interpersonal Skill', 2, 'Teknik Informatika'),
('672134', 'Robotika', 2, 'Teknik Informatika'),
('671234', 'Web Service', 3, 'Teknik Informatika'),
('123211', 'Struktur Data', 3, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `thakd` char(5) NOT NULL,
  `nim` char(10) NOT NULL,
  `kdmk` char(6) NOT NULL,
  `nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`thakd`,`nim`,`kdmk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`thakd`, `nim`, `kdmk`, `nilai`) VALUES
('20122', '15.01.53.0051', '112233', NULL),
('20122', '15.01.53.0043', '780123', NULL),
('20122', '15.01.53.0057', '812345', NULL),
('20122', '15.01.53.0046', '123211', NULL),
('20122', '15.01.53.0031', '104531', NULL),
('20122', '15.01.53.0055', '671234', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
