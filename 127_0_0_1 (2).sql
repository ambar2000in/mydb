-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 08:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `empno` varchar(8) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `basic` double(12,2) NOT NULL,
  `da` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`empno`, `ename`, `address`, `city`, `state`, `zip`, `basic`, `da`) VALUES
('E0001', 'Ambar Sharma', 'Purbasa, Near Toll Tax', 'Barrackpore', 'WB', '700122', 25000.00, 5000.00),
('E0002', 'Suman Sharma', 'Purbasa, Near Toll Tax', 'Barrackpore', 'WB', '700122', 95000.00, 15000.00),
('E0003', 'Mana Sharma', 'Purbasa, Near Toll Tax', 'Barrackpore', 'WB', '700122', 35000.00, 10000.00),
('E0004', 'Saroj Mukherjee', 'Ashoknagar', 'Ranchi', 'JH', '240001', 28000.00, 8000.00),
('E0005', 'Mithu Mukherjee', 'Ashoknagar', 'Ranchi', 'JH', '240002', 30000.00, 9000.00),
('E0006', 'Dulal Banerjee', 'Tanti Para', 'Bishnupur', 'WB', '722122', 55000.00, 9000.00),
('E0007', 'Tapas Banerjee', 'Tanti Para', 'Bishnupur', 'WB', '722122', 65000.00, 12000.00),
('E0008', 'Bivas Banerjee', 'Tanti Para', 'Bishnupur', 'WB', '722122', 26000.00, 6000.00),
('E0009', 'Anupama Banerjee', 'Tanti Para', 'Bishnupur', 'WB', '722122', 27000.00, 7000.00);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `sno` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdesc` varchar(100) NOT NULL,
  `dt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`sno`, `name`, `age`, `gender`, `email`, `mdesc`, `dt`) VALUES
(1, 'Ambar Sharma', 48, 'Male', 'ambar2000in@gmail.com', 'This is only for Practice and all the data stored in it will be used for web site development.', '2020-12-01'),
(2, 'Ambar Sharma', 48, 'Male', 'ambar2000in@gmail.com', 'rest', '2020-12-03'),
(3, 'Suman Sharma', 16, 'Male', 'ambar2000in@gmail.com', 'Hello how do you do', '2020-12-03'),
(6, 'Suman Sharma', 109, 'Male', 'ambar2000in@gmail.com', 'abc', '2020-12-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`empno`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `sno` (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `sno` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
