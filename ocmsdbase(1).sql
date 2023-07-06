-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 09:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocmsdbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientName` varchar(10) DEFAULT NULL,
  `ContactPersonName` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Mobile` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  `CUsername` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientName`, `ContactPersonName`, `Address`, `Phone`, `Mobile`, `Email`, `Remarks`, `CUsername`) VALUES
('utkar', 'Utkarsh pandey', 'Varansi', '9211420786', '9211420786', 'agupta@gmail.com', 'utk', 'anil'),
('mani', 'mani mishra', 'Gonda', '9794982091', '789456123', 'agupta', 'regular', 'mani');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `ComplaintNo` int(11) NOT NULL,
  `Cusername` varchar(100) DEFAULT NULL,
  `CompPerson` varchar(100) DEFAULT NULL,
  `ProbType` varchar(100) DEFAULT NULL,
  `Problem` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `CompDate` varchar(100) DEFAULT NULL,
  `CompTime` varchar(100) DEFAULT NULL,
  `machinesrno` varchar(100) DEFAULT NULL,
  `P` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `engineers`
--

CREATE TABLE `engineers` (
  `EngineerName` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `Mobile` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `eusername` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `engineers`
--

INSERT INTO `engineers` (`EngineerName`, `gender`, `Address`, `phone`, `Mobile`, `Email`, `remarks`, `eusername`) VALUES
('ankit gupta', 'M', 'Ballia			', '9794982091', '9211450363', 'a@gmail.com', 'service', 'ankit');

-- --------------------------------------------------------

--
-- Table structure for table `executives`
--

CREATE TABLE `executives` (
  `ExecName` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  `Mobile` varchar(12) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `EUsername` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `executives`
--

INSERT INTO `executives` (`ExecName`, `Gender`, `address`, `Phone`, `Mobile`, `Email`, `remarks`, `EUsername`) VALUES
('abhishek gupta', 'M', 'lucknow', '9794982091', '7905189760', 'agupta60296@gmail.com', 'Engineer', 'Abhishek');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `machineId` int(11) NOT NULL,
  `MachineDesc` varchar(100) DEFAULT NULL,
  `Configuration` varchar(100) DEFAULT NULL,
  `DealerPrice` varchar(100) DEFAULT NULL,
  `WSPrice` varchar(100) DEFAULT NULL,
  `ProductId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`machineId`, `MachineDesc`, `Configuration`, `DealerPrice`, `WSPrice`, `ProductId`) VALUES
(100, 'Laptop', 'Ram 8GB', '50000', '48000', '1'),
(101, 'Television', 'Android Tv', '20000', '18000', '2');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `ProductDesc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `ProductDesc`) VALUES
(1, 'HP Laptop'),
(2, 'Tv');

-- --------------------------------------------------------

--
-- Table structure for table `salemain`
--

CREATE TABLE `salemain` (
  `BillNo` int(11) NOT NULL,
  `BillDate` varchar(100) DEFAULT NULL,
  `CUsername` varchar(100) DEFAULT NULL,
  `TotAmt` varchar(100) DEFAULT NULL,
  `Disc` varchar(100) DEFAULT NULL,
  `Rem` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salemain`
--

INSERT INTO `salemain` (`BillNo`, `BillDate`, `CUsername`, `TotAmt`, `Disc`, `Rem`) VALUES
(1, '2023-04-09', 'mani', '17640.0', '2', 'Cash Payment'),
(2, '2023-04-09', 'mani', '18000.0', '0', 'cash payment'),
(3, '2023-05-26', 'anil', '48000.0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `salesub`
--

CREATE TABLE `salesub` (
  `BillNo` int(11) NOT NULL,
  `mchId` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `mchSrNo` varchar(100) DEFAULT NULL,
  `Rems` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesub`
--

INSERT INTO `salesub` (`BillNo`, `mchId`, `price`, `mchSrNo`, `Rems`) VALUES
(1, '100', '48000', 'LA-1-09042023-1', 'freind'),
(2, '101', '18000', 'TE-2-09042023-1', 'regular'),
(3, '100', '48000', 'LA-3-26052023-1', 'regular');

-- --------------------------------------------------------

--
-- Table structure for table `userinrole`
--

CREATE TABLE `userinrole` (
  `username` varchar(100) DEFAULT NULL,
  `rolename` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinrole`
--

INSERT INTO `userinrole` (`username`, `rolename`) VALUES
('admin', 'Administrator'),
('asdd', 'Executive'),
('Abhishek', 'Executive'),
('utkarsh', 'Executive'),
('anil', 'Executive'),
('mani', 'Executive'),
('ankit', 'Executive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `xxx` varchar(5) NOT NULL,
  `yyy` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `xxx`, `yyy`) VALUES
('admin', 'abc123', '', ''),
('asdd', '123456', 'xxx', 'yyy'),
('Abhishek', 'abhi123', 'xxx', 'yyy'),
('utkarsh', 'utkarsh', 'xxx', 'yyy'),
('anil', 'utkarsh', 'xxx', 'yyy'),
('mani', 'mani', 'xxx', 'yyy'),
('ankit', 'ankit', 'xxx', 'yyy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`ComplaintNo`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`machineId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `salemain`
--
ALTER TABLE `salemain`
  ADD PRIMARY KEY (`BillNo`);

--
-- Indexes for table `salesub`
--
ALTER TABLE `salesub`
  ADD PRIMARY KEY (`BillNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `ComplaintNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `machineId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salemain`
--
ALTER TABLE `salemain`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salesub`
--
ALTER TABLE `salesub`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
