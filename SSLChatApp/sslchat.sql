-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 23, 2018 at 05:13 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sslchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `msg_by` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `body`, `msg_by`, `msg_to`, `msg_time`) VALUES
(181, 'Fine', 9, 12, '2018-07-23 14:14:14'),
(180, 'Fine. You?', 12, 9, '2018-07-23 14:14:06'),
(179, 'how are you?', 9, 12, '2018-07-23 14:13:54'),
(178, 'hlw', 9, 12, '2018-07-23 14:13:38'),
(177, 'hi', 12, 9, '2018-07-23 14:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `reg_time`, `online`) VALUES
(12, 'Mukul', 'mukul@gmail.com', 'mukul', '$5$rounds=535000$6PJhbzFlfJbcQbza$FbrPa3qqk1RJ5MSffRLO6LrQJXbgO8SudFuBpNf.wR7', '2018-07-23 14:09:14', '0'),
(9, 'Nur Mohsin', 'mohsin@gmail.com', 'mohsin', '$5$rounds=535000$w/MRBgS3SCDxMfkt$q.6o0T3/bF6wpch9ErkAuvOItlJeWq/hw5zgpEBOiY0', '2018-07-21 06:47:57', '1'),
(11, 'SSL Wireless', 'sslwireless@gmail.com', 'ssl', '$5$rounds=535000$kQwsH7L55R/Qag/n$t2QnhVcrEu5ZTiUulmSScgJxM0CeLd60lmvTHQiyPcC', '2018-07-23 12:21:27', '0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
