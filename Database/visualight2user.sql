-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 04:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visualight2user`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` varchar(300) NOT NULL,
  `contactNumber` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `tos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullName`, `address`, `contactNumber`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `profile_picture`, `tos`) VALUES
(1, 'Ash A. Jones', 'blk 16 lot 38', '091234567899', 'super_admin', 'ZEE6NAhDein0tnHGLhu24aJbKQKuA2_i', '$2y$13$Sxal1utv/9He0FEMmv17q.C9QeSYQDhU5lsWjvmkPIUpztLKWQCO2', NULL, 'visualight2023@gmail.com', 10, 1689773613, 1693132192, 'q8RIC25Tq39pvTF7sHOsbLVCnIBpKcYD_1689773613', 'AutwKsB2wajc8y7EK_lQ.jpg', 1),
(39, 'Videlle Pepito', 'asdasdasdas', '0123123123123', 'Vivi', 'IGMJr07yXlEP3rBLgEntHAoQ0ouD58R8', '$2y$13$/qlvYHE4leAVVluIxxNVzuecD8B4OiCMXvG43EPQvsilV6tJJjgZG', NULL, 'vivi1@email.com', 10, 1690012628, 1702488300, 'naGcpXfzmgB9oGJp8chcq5rDST-DtxkV_1690012628', '', 1),
(41, 'Rannel', 'dyan lang', '0123456789', 'rannelskie', 'jL2mtIbt-M-TZ2VCaQw1wMuX0wTUW0K3', '$2y$13$dJC63q38Ath.7rtKIbZScec2/zpKMZfc6jFoenxelMXYR07LoBM/e', '4Mr6Iu1KzqxbdLGJa94y-DrH1wOU_n2O_1694964055', 'rannelvisitacionm@email.com', 10, 1690012687, 1695052050, 'u_2m-TUaBfaj9T13j88Ba4BjUQcALvQ0_1695052050', '', 0),
(148, 'duke', 'dya', '01234567891', 'duneka', 'cTJzkbZdlQlGSw3rEBdiml-6kPIqc52j', '$2y$13$0bBsKUloTF9ptBOMB88hAu4Sx1kA/QBGiymwhCDUYY2LC.2STb7g2', NULL, 'dunekatrio@gmail.com', 10, 1695059655, 1701860509, NULL, '7rr7of6j_wGJo2QFQn9W.jpg', 1),
(160, 'Roos sanol', 'sa bahay', '09123123211', 'roos', '8bMqXvjsPPE_oLsfy9mYd05I-6XqPWuI', '$2y$13$i0UwZImM.jez6sjvOoJS8.WSg4bGxZKkwE5iH9Xsdaex6XRODdCmq', NULL, 'escobarkimeliza568@gmail.com', 10, 1702052234, 1702052297, NULL, '', 1),
(161, 'Duke M. Vasquez', 'blk17 lot 35', '09123456789', 'duneka1', 'gnw8fBCMPvUM5jFyFfLMyxWAR1y-5WfI', '$2y$13$6Fkm0uLF9rj/F3PblL0byuanB6cpfp.1Pb8GhpCn6MM28paZrV.8K', 'BdfE5WodbTHtR9lXyv_-3l6ipwED_HwV_1702719042', 'dukevasquez15@gmail.com', 10, 1702303697, 1702719042, NULL, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
