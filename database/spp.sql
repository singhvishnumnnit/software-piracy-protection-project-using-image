-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 07:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `phone` varchar(10) NOT NULL,
  `mac` varchar(50) DEFAULT '12',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`phone`, `mac`, `status`) VALUES
('8115145675', '78:0C:B8:17:1A:BA', 1),
('8982818178', '0A:00:27:00:00:2E', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `source_a` varchar(20) DEFAULT NULL,
  `source_b` varchar(20) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `source`, `source_a`, `source_b`, `flag`) VALUES
(1, '1.jpeg', '1a.jpeg', '1b.jpeg', 1),
(2, '2.jpeg', '2a.jpeg', '2b.jpeg', 0),
(3, '3.jpeg', '3a.jpeg', '3b.jpeg', 0),
(4, '4.jpeg', '4a.jpeg', '4b.jpeg', 0),
(5, '5.jpeg', '5a.jpeg', '5b.jpeg', 0),
(6, '6.jpeg', '6a.jpeg', '6b.jpeg', 0),
(7, '7.jpeg', '7a.jpeg', '7b.jpeg', 0),
(8, '8.jpeg', '8a.jpeg', '8b.jpeg', 0),
(9, '9.jpeg', '9a.jpeg', '9b.jpeg', 0),
(10, '10.jpeg', '10a.jpeg', '10b.jpeg', 0),
(11, '11.jpeg', '11a.jpeg', '11b.jpeg', 0),
(12, '12.jpeg', '12a.jpeg', '12b.jpeg', 0),
(13, '13.jpeg', '13a.jpeg', '13b.jpeg', 0),
(14, '14.jpeg', '14a.jpeg', '14b.jpeg', 0),
(15, '15.jpeg', '15a.jpeg', '15b.jpeg', 0),
(16, '16.jpeg', '16a.jpeg', '16b.jpeg', 0),
(17, '17.jpeg', '17a.jpeg', '17b.jpeg', 0),
(18, '18.jpeg', '18a.jpeg', '18b.jpeg', 0),
(19, '19.jpeg', '19a.jpeg', '19b.jpeg', 0),
(20, '20.jpeg', '20a.jpeg', '20b.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `original_image`
--

CREATE TABLE `original_image` (
  `id` int(11) NOT NULL,
  `source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `original_image`
--

INSERT INTO `original_image` (`id`, `source`) VALUES
(1, '1'),
(2, '2'),
(3, '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `original_image`
--
ALTER TABLE `original_image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `original_image`
--
ALTER TABLE `original_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
