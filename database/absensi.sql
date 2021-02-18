-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 05:04 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE IF NOT EXISTS `absensi` (
`id_absen` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `waktu` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absen`, `tgl`, `waktu`, `keterangan`, `id_user`) VALUES
(4, '2019-07-25', '07:21:53', 'Masuk', 6),
(5, '2019-07-26', '09:00:47', 'Masuk', 6),
(6, '2019-07-26', '16:01:03', 'Pulang', 6),
(7, '2019-07-25', '17:01:28', 'Pulang', 6),
(8, '2021-02-18', '01:04:39', 'Masuk', 13),
(9, '2021-02-18', '01:05:50', 'Pulang', 13),
(10, '2021-02-18', '17:06:58', 'Masuk', 13),
(11, '2021-02-18', '17:06:59', 'Masuk', 13),
(12, '2021-02-18', '17:07:11', 'Pulang', 13),
(13, '2021-02-18', '17:07:11', 'Pulang', 13),
(14, '2021-02-18', '17:07:12', 'Pulang', 13),
(15, '2021-02-18', '17:07:12', 'Pulang', 13),
(16, '2021-02-18', '17:07:21', 'Pulang', 13),
(17, '2021-02-18', '17:07:32', 'Pulang', 13),
(18, '2021-02-18', '17:09:02', 'Masuk', 13),
(19, '2021-02-19', '17:09:49', 'Masuk', 13),
(20, '2021-02-19', '17:10:00', 'Pulang', 13),
(21, '2021-02-19', '17:11:01', 'Masuk', 13),
(22, '2021-02-18', '01:18:52', 'Masuk', 13),
(23, '2021-02-18', '01:19:01', 'Pulang', 13),
(24, '2021-02-18', '05:22:56', 'Masuk', 18),
(25, '2021-02-18', '05:23:04', 'Pulang', 18),
(26, '2021-02-19', '05:36:00', 'Masuk', 18),
(27, '2021-02-19', '05:36:05', 'Pulang', 18),
(28, '2021-02-18', '08:41:37', 'Masuk', 19),
(29, '2021-02-18', '08:41:47', 'Pulang', 19),
(30, '2021-02-18', '09:51:48', 'Masuk', 20),
(31, '2021-02-18', '09:51:54', 'Pulang', 20),
(32, '2021-02-18', '10:04:52', 'Masuk', 23),
(33, '2021-02-18', '10:04:58', 'Pulang', 23);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE IF NOT EXISTS `divisi` (
`id_divisi` smallint(3) NOT NULL,
  `nama_divisi` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`) VALUES
(1, 'Marketing'),
(2, 'IT '),
(3, 'Akuntan'),
(4, 'Kebersihan'),
(5, 'Trader'),
(7, 'Persenjataan');

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE IF NOT EXISTS `jam` (
`id_jam` tinyint(1) NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`id_jam`, `start`, `finish`, `keterangan`) VALUES
(1, '07:00:00', '08:15:00', 'Masuk'),
(2, '16:00:00', '19:00:00', 'Pulang');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id_user` smallint(5) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(20) DEFAULT 'no-foto.png',
  `divisi` smallint(5) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` enum('Manager','Karyawan') NOT NULL DEFAULT 'Karyawan'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nik`, `nama`, `telp`, `email`, `foto`, `divisi`, `username`, `password`, `level`) VALUES
(1, '', 'Zidna Wildan', '083840385492', 'zidnawa@apindo.web.id', '1613582758.jpg', NULL, 'zidnawa', 'ea7fa3a342182dd94e625b896b15d14b2e127fff', 'Manager'),
(19, '1817101468', 'Zidna Wildan Alfain', '083840385492', 'zidnawa@trader.apindo.com', 'no-foto.png', 5, 'zidnaw', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Karyawan'),
(20, '1817101399', 'Dikka Aditya Satria Wibawa', '081123456789', 'dikkasw@marketing.apindo.com', 'no-foto.png', 1, 'dikkasw', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Karyawan'),
(21, '1817101380', 'Amerta Bian Kretarta', '082123456789', 'om_skadut@kebersihan.apindo.com', 'no-foto.png', 4, 'skadut', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Karyawan'),
(23, '0000000000', 'Apindo Administrator', '000000000000', 'super.apindo@master.apindo.com', 'no-foto.png', 2, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
 ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
 ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
 ADD PRIMARY KEY (`id_jam`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
MODIFY `id_divisi` smallint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
MODIFY `id_jam` tinyint(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id_user` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
