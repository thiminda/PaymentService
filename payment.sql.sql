-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2020 at 04:20 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `paymentID` varchar(10) NOT NULL,
  `paymentDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paymentMethod` varchar(20) NOT NULL,
  `paymentDueDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `apt_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`paymentID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `paymentDate`, `paymentMethod`, `paymentDueDate`, `apt_ID`) VALUES
('231', '2020-05-06 18:30:00', 'Credit', '2020-05-04 18:30:00', '240'),
('23', '2020-04-20 13:30:00', 'credit', '2020-04-30 14:30:30', '01'),
('04', '2020-04-19 13:30:00', 'Cash', '2020-04-25 14:30:00', '04'),
('20', '2020-04-20 13:30:00', 'cash', '2020-04-30 14:30:00', '01'),
('60', '2020-04-19 13:30:00', 'cach', '2020-04-25 14:30:00', '04'),
('2313', '2020-05-06 18:30:00', 'Credit', '2020-05-14 18:30:00', '240');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
