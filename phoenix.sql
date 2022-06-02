-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 07:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('hitan@gmail.com', 'my3paala');

-- --------------------------------------------------------

--
-- Table structure for table `clientdetails`
--

CREATE TABLE `clientdetails` (
  `dairport` varchar(30) NOT NULL,
  `airport` varchar(30) NOT NULL,
  `startdatetime` varchar(20) NOT NULL,
  `enddatetime` varchar(20) NOT NULL,
  `adults` varchar(5) NOT NULL,
  `children` varchar(5) NOT NULL,
  `vclass` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientdetails`
--

INSERT INTO `clientdetails` (`dairport`, `airport`, `startdatetime`, `enddatetime`, `adults`, `children`, `vclass`, `email`) VALUES
('Sri lanka', 'Usa', '2021-04-23', '2021-04-14', '6', '1', 'Economy Class', '123@gmail.com'),
('Sri lanka', 'Sweden', '2021-07-28', '2021-09-28', '3', '4', 'First Class', 'dperera45@gmail.com'),
('Sri lanka', 'India', '2021-05-27T18:18', '2021-05-31T14:52', '3', '2', 'First Class', 'rukshanperera704@gamil.com');

-- --------------------------------------------------------

--
-- Table structure for table `staffa`
--

CREATE TABLE `staffa` (
  `email` varchar(30) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffa`
--

INSERT INTO `staffa` (`email`, `password`) VALUES
('abc@gmail.com', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `staffb`
--

CREATE TABLE `staffb` (
  `email` varchar(30) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffb`
--

INSERT INTO `staffb` (`email`, `password`) VALUES
('123@gmail.com', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `clientdetails`
--
ALTER TABLE `clientdetails`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `staffa`
--
ALTER TABLE `staffa`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `staffb`
--
ALTER TABLE `staffb`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
