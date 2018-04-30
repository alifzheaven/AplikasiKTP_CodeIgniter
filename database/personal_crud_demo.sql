-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 08:29 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal_crud_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `frm_data_ktp`
--

CREATE TABLE `frm_data_ktp` (
  `id` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `golongan_darah` varchar(2) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(4) NOT NULL,
  `rw` varchar(4) NOT NULL,
  `wilayah` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `status_perkawinan` varchar(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL,
  `berlaku_hingga` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `thumb_foto` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `date_modify` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frm_data_ktp`
--

INSERT INTO `frm_data_ktp` (`id`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `golongan_darah`, `alamat`, `rt`, `rw`, `wilayah`, `kelurahan`, `kecamatan`, `agama`, `status_perkawinan`, `pekerjaan`, `kewarganegaraan`, `berlaku_hingga`, `email`, `twitter`, `facebook`, `instagram`, `path`, `foto`, `thumb_foto`, `date_created`, `date_modify`) VALUES
(27, '3213282409000001', 'Divi Purnama', 'Subang', '2000-09-24', 'Laki-laki', 'A', 'kp.Suka Sari Ds.Cidadap', '001', '001', 'Indonesia', 'Cidadap', 'Pagaden Barat', 'Islam', 'belum menikah', 'Pelajar', 'WNI', '1970-01-01', 'diviyahoo@gmail.com', '', '', '', '', 'dddd1edc8f34fe459c98bc93980f53b1.jpg', 'dddd1edc8f34fe459c98bc93980f53b1_thumb.jpg', '2018-04-29', '2018-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `frm_groups`
--

CREATE TABLE `frm_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frm_groups`
--

INSERT INTO `frm_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'editor', 'Editor CRUD');

-- --------------------------------------------------------

--
-- Table structure for table `frm_users`
--

CREATE TABLE `frm_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frm_users`
--

INSERT INTO `frm_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$Rz0YTDta8JJcw9YTGvUjSeNLMHBbHkusd/z2zGOyOJCEuEWGA0VHG', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1524973625, 1, 'Super', 'Admin', '', '081802798002'),
(5, '::1', 'purnama@gmail.com', '$2y$08$NtbgGj/Jp.5PrtSBliP02ekaNz1U1O2KWG6c02O.7wm/8y0JJ5uAy', NULL, 'purnama@gmail.com', NULL, NULL, NULL, NULL, 1524973352, 1525069685, 1, 'divi', 'purnama', '', '082214834945'),
(6, '::1', 'poernama@gmail.com', '$2y$08$zI2/doz0lvw90ODQMf0WIedLpkwiyG21uQr1npWFw2CYVPNUZZQGe', NULL, 'poernama@gmail.com', NULL, NULL, NULL, NULL, 1524973485, 1524973589, 1, 'divi', 'poernama', '', '085221288598'),
(7, '::1', 'member@member.com', '$2y$08$H5F7HnkLfqmUGg4JST41zOoel8GYdNih9yxzhauSb5oK5FFAiRj2O', NULL, 'member@member.com', NULL, NULL, NULL, NULL, 1524974524, NULL, 1, 'member@', 'purnama', '', '083861194137');

-- --------------------------------------------------------

--
-- Table structure for table `frm_users_groups`
--

CREATE TABLE `frm_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frm_users_groups`
--

INSERT INTO `frm_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(8, 5, 1),
(7, 6, 3),
(9, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `frm_data_ktp`
--
ALTER TABLE `frm_data_ktp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `frm_groups`
--
ALTER TABLE `frm_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frm_users`
--
ALTER TABLE `frm_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frm_users_groups`
--
ALTER TABLE `frm_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `frm_data_ktp`
--
ALTER TABLE `frm_data_ktp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `frm_groups`
--
ALTER TABLE `frm_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `frm_users`
--
ALTER TABLE `frm_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `frm_users_groups`
--
ALTER TABLE `frm_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `frm_users_groups`
--
ALTER TABLE `frm_users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `frm_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `frm_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
