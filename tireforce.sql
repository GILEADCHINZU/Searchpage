-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2017 at 07:34 AM
-- Server version: 5.7.17-log
-- PHP Version: 7.0.19RC1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tireforce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tires`
--

CREATE TABLE `tires` (
  `brand` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `carID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tires`
--

INSERT INTO `tires` (`brand`, `model`, `description`, `price`, `carID`) VALUES
('Bridgestone', 'F209', 'medium', 280, 5),
('Goodyear', 'F216', 'small', 220, 5),
('Michelin', 'F415', 'big truck winter', 560, 5),
('Bridgestone', 'H108', 'medium', 350, 2),
('Goodyear', 'H126', 'small', 250, 2),
('Fuzion', 'H255', 'summer tire', 245, 2),
('Dunlop', 'm003', 'small', 200, 1),
('Goodyear', 'm007', 'big', 380, 1),
('Firestone', 'N322', 'winter-tire', 400, 4),
('Bridgestone', 'N420', 'Big', 300, 4),
('Goodyear', 'T301', 'Big', 415, 3),
('Dunlop', 'T332', 'medium', 300, 3),
('Dunlop', 'T500', 'super-tire', 465, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`) VALUES
(1, 'Mazda'),
(2, 'Honda'),
(3, 'Toyota'),
(4, 'Nissan'),
(5, 'Ford');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tires`
--
ALTER TABLE `tires`
  ADD PRIMARY KEY (`model`),
  ADD KEY `carID` (`carID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tires`
--
ALTER TABLE `tires`
  ADD CONSTRAINT `tires_ibfk_1` FOREIGN KEY (`carID`) REFERENCES `vehicles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
