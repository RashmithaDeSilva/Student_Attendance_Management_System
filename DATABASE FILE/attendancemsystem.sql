-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2023 at 09:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancemsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Admin', '', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(208, 'S001', '7', '12', '', '0', '2023-08-20'),
(207, 'S002', '7', '12', '', '0', '2023-08-20'),
(206, 'S003', '7', '12', '', '0', '2023-08-20'),
(205, 'S004', '7', '12', '', '0', '2023-08-20'),
(204, 'S005', '7', '12', '', '0', '2023-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `Id` int(10) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`Id`, `className`) VALUES
(5, 'Computer science'),
(6, 'Software engineering'),
(7, 'AI and Data science');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassarms`
--

CREATE TABLE `tblclassarms` (
  `Id` int(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassarms`
--

INSERT INTO `tblclassarms` (`Id`, `classId`, `classArmName`, `isAssigned`) VALUES
(7, '5', 'Class-A', '1'),
(8, '5', 'Class-B', '1'),
(9, '6', 'Class-A', '1'),
(10, '6', 'Class-B', '1'),
(11, '6', 'Class-C', '1'),
(12, '7', 'Class-A', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classArmId`, `dateCreated`) VALUES
(8, 'Emily', 'Johnson', 'emilyjohnson@email.com', '32250170a0dca92d53ec9624f336ca24', '0123456789', '7', '12', '2023-08-20'),
(9, 'Liam', 'Anderson', 'liamanderson@gmail.com', '32250170a0dca92d53ec9624f336ca24', '0123456789', '5', '7', '2023-08-20'),
(10, 'Olivia', 'Martinez', 'oliviamartinez@gmail.com', '32250170a0dca92d53ec9624f336ca24', '0123456789', '5', '8', '2023-08-20'),
(11, 'Ethan', 'Thompson', 'ethanthompson@gmail.com', '32250170a0dca92d53ec9624f336ca24', '0123456789', '6', '9', '2023-08-20'),
(12, 'Sophia', 'Rodriguez', 'sophiarodriguez@gmail.com', '32250170a0dca92d53ec9624f336ca24', '0123456789', '6', '10', '2023-08-20'),
(13, 'Jackson', 'Williams', 'jacksonwilliams@gmail.com', '32250170a0dca92d53ec9624f336ca24', '0123456789', '6', '11', '2023-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(5, 'Web development', '1', '1', '2023-08-20'),
(6, 'Software design and development', '2', '0', '2023-08-20'),
(7, 'Machine learning and Data science', '3', '0', '2023-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `firstName`, `lastName`, `otherName`, `admissionNumber`, `password`, `classId`, `classArmId`, `dateCreated`) VALUES
(32, 'Alexander', 'Harris', '', 'S0014', '12345', '5', '8', '2023-08-20'),
(31, 'Amelia', 'White', '', 'S0013', '12345', '5', '8', '2023-08-20'),
(30, 'Samuel', 'Thomas', '', 'S0012', '12345', '5', '8', '2023-08-20'),
(28, 'Elijah', 'Jones', '', 'S0010', '12345', '5', '7', '2023-08-20'),
(29, 'Charlotte', 'Jackson', '', 'S0011', '12345', '5', '8', '2023-08-20'),
(27, 'Olivia', 'Taylor', '', 'S009', '12345', '5', '7', '2023-08-20'),
(26, 'Benjamin', 'Martinez', '', 'S008', '12345', '5', '7', '2023-08-20'),
(25, 'Mia', 'Anderson', '', 'S007', '12345', '5', '7', '2023-08-20'),
(24, 'James', 'Wilson', '', 'S006', '12345', '5', '7', '2023-08-20'),
(23, 'Sophia', 'Miller', '', 'S005', '12345', '7', '12', '2023-08-20'),
(22, 'William', 'Davis', '', 'S004', '12345', '7', '12', '2023-08-20'),
(21, 'Isabella', 'Brown', '', 'S003', '12345', '7', '12', '2023-08-20'),
(20, 'Noah', 'Johnson', '', 'S002', '12345', '7', '12', '2023-08-20'),
(19, 'Ava', 'Smith', '', 'S001', '12345', '7', '12', '2023-08-20'),
(33, 'Harper', 'Martin', '', 'S0015', '12345', '5', '8', '2023-08-20'),
(34, 'Daniel', 'Garcia', '', 'S0016', '12345', '6', '9', '2023-08-20'),
(35, 'Evelyn', 'Martinez', '', 'S0017', '12345', '6', '9', '2023-08-20'),
(36, 'Michael', 'Adams', '', 'S0018', '12345', '6', '9', '2023-08-20'),
(37, 'Abigail', 'Thompson', '', 'S0019', '12345', '6', '9', '2023-08-20'),
(38, 'David', 'Robinson', '', 'S0020', '12345', '6', '9', '2023-08-20'),
(39, 'Emily', 'Wright', '', 'S0021', '12345', '6', '10', '2023-08-20'),
(40, 'Henry', 'Lee', '', 'S0022', '12345', '6', '10', '2023-08-20'),
(41, 'Scarlett', 'Walker', '', 'S0023', '12345', '6', '10', '2023-08-20'),
(42, 'Joseph', 'Hall', '', 'S0024', '12345', '6', '10', '2023-08-20'),
(43, 'Grace', 'Perez', '', 'S0025', '12345', '6', '10', '2023-08-20'),
(44, 'Jackson', 'Mitchell', '', 'S0026', '12345', '6', '11', '2023-08-20'),
(45, 'Madison', 'Turner', '', 'S0027', '12345', '6', '11', '2023-08-20'),
(46, 'Andrew', 'Rodriguez', '', 'S0028', '12345', '6', '11', '2023-08-20'),
(47, 'Aria', 'Young', '', 'S0029', '12345', '6', '11', '2023-08-20'),
(48, 'Liam', 'Scott', '', 'S0030', '12345', '6', '11', '2023-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

CREATE TABLE `tblterm` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(3, 'Hall-3'),
(2, 'Hall-2'),
(1, 'Hall-1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblterm`
--
ALTER TABLE `tblterm`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
