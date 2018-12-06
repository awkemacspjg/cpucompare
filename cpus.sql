-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2018 at 11:45 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `cpus`
--

CREATE TABLE `cpus` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uarch` varchar(255) NOT NULL,
  `cores` int(255) NOT NULL,
  `multithreaded` varchar(255) NOT NULL,
  `single` float NOT NULL,
  `multi` float NOT NULL,
  `cost` int(255) NOT NULL,
  `tdp` int(255) NOT NULL,
  `maker` varchar(255) NOT NULL,
  `node` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpus`
--

INSERT INTO `cpus` (`id`, `name`, `uarch`, `cores`, `multithreaded`, `single`, `multi`, `cost`, `tdp`, `maker`, `node`) VALUES
(1, 'R7 2700x', 'Zenplus', 8, 'yes', 4.35, 3.95, 330, 105, 'AMD', 'GloFo 12nm'),
(2, 'R7 1700', 'Zen', 8, 'true', 3.7, 3.2, 200, 65, 'AMD', 'GloFo 14nm');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `resultid` int(255) NOT NULL,
  `resultname` varchar(255) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uarchs`
--

CREATE TABLE `uarchs` (
  `uarchid` int(255) NOT NULL,
  `uarchname` varchar(255) NOT NULL,
  `ipc` float NOT NULL,
  `multiplier` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uarchs`
--

INSERT INTO `uarchs` (`uarchid`, `uarchname`, `ipc`, `multiplier`) VALUES
(1, 'Zenplus', 1.03, 1.35),
(2, 'Zen', 1, 1.35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cpus`
--
ALTER TABLE `cpus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `uarchs`
--
ALTER TABLE `uarchs`
  ADD PRIMARY KEY (`uarchid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cpus`
--
ALTER TABLE `cpus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `resultid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uarchs`
--
ALTER TABLE `uarchs`
  MODIFY `uarchid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
