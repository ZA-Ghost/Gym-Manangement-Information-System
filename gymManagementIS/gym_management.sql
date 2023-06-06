-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 06:25 PM
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
-- Database: `gym_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `IdentityPassportNumber` varchar(50) NOT NULL,
  `CellphoneNumber` varchar(50) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `HomeAddress` varchar(100) NOT NULL,
  `Price` int(200) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Package` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Comments` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `Name`, `Surname`, `IdentityPassportNumber`, `CellphoneNumber`, `EmailAddress`, `HomeAddress`, `Price`, `StartDate`, `EndDate`, `Package`, `Status`, `Comments`) VALUES
(1, 'Ghost', 'Ghost', '1234', '0123456789', 'ghost@gmail.com', 'Ghost Street', 2500, '2023-06-15', '2023-06-30', '', 'active', 'NA'),
(2, 'Ghost', 'Ghost_za', '1234567', '0123456789', 'ghost@gmail.com', 'Ghost Street', 2500, '2023-06-04', '2023-06-24', 'contract_2_year', 'active', 'NA'),
(3, 'Ghost', 'Ghost', '1234567', '0123456789', 'ghost@gmail.com', 'Ghost Street', 2500, '2023-06-04', '2023-06-24', 'contract_2_year', 'active', 'NA'),
(4, 'Ghost', 'Ghost', '1234567', '0123456789', 'ghost@gmail.com', 'Ghost Street', 2500, '2023-06-04', '2023-06-24', 'contract_2_year', 'active', 'NA'),
(5, 'Ghost', 'Ghost', '1234567', '0123456789', 'ghost@gmail.com', 'Ghost Street', 2500, '2023-06-29', '2023-06-14', 'contract_1_year', 'active', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`username`, `password`) VALUES
('ghost', 'ghost');

-- --------------------------------------------------------

--
-- Table structure for table `offcontract`
--

CREATE TABLE `offcontract` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `IdentityPassportNumber` varchar(50) NOT NULL,
  `CellphoneNumber` varchar(50) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `HomeAddress` varchar(100) NOT NULL,
  `Package` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offcontract`
--

INSERT INTO `offcontract` (`id`, `Name`, `Surname`, `IdentityPassportNumber`, `CellphoneNumber`, `EmailAddress`, `HomeAddress`, `Package`, `Price`, `StartDate`, `EndDate`) VALUES
(1, 'Ghost_za', 'Ghost', '1234567', '0123456789', 'ghost@gmail.com', 'Ghost Street', 'off-contract-6-months-upfront', '1000.00', '2023-06-06', '2023-06-14'),
(2, 'Ghost', 'Ghost', '1234567', '0123456789', 'ghost@gmail.com', 'Ghost Street', 'off-contract-6-months-upfront', '1000.00', '2023-06-06', '2023-06-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offcontract`
--
ALTER TABLE `offcontract`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `offcontract`
--
ALTER TABLE `offcontract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
