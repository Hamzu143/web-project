-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 08:19 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(3) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `app_time` time(6) NOT NULL,
  `message` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ehsas`
--

CREATE TABLE `ehsas` (
  `id` int(3) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Address1` varchar(100) NOT NULL,
  `Address2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medical_test_registration`
--

CREATE TABLE `medical_test_registration` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Emailaddress` varchar(20) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `CNIC` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `SelectTest` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_test_registration`
--

INSERT INTO `medical_test_registration` (`id`, `Name`, `Emailaddress`, `PhoneNumber`, `CNIC`, `Address`, `SelectTest`) VALUES
(1, 'Hasanat lodhi', 'lodhihasanat@gmail.c', '+9253460099', '1310148926005', 'asgagasga', 'Sugar Test');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_registration`
--

CREATE TABLE `medicine_registration` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Emailaddress` varchar(20) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `CNIC` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Medicine_needed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ehsas`
--
ALTER TABLE `ehsas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_test_registration`
--
ALTER TABLE `medical_test_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_registration`
--
ALTER TABLE `medicine_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ehsas`
--
ALTER TABLE `ehsas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_test_registration`
--
ALTER TABLE `medical_test_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicine_registration`
--
ALTER TABLE `medicine_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
