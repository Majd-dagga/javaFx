-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 07:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `room`) VALUES
('11', 'Maths', 'k110'),
('22', 'Quran', 'p112'),
('33', 'programming 3', 'k116');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `semester` int(11) DEFAULT NULL,
  `studentId` int(11) NOT NULL,
  `courseId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`semester`, `studentId`, `courseId`) VALUES
(2019, 12020188, '11'),
(2020, 12035625, '22'),
(2022, 120200970, '33'),
(2021, 120201000, '33');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `grade` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `major`, `grade`) VALUES
(12020188, 'ahmed', 'Computer Science', 87.30694593626924),
(12035625, 'ali', 'IT', 89.35),
(120200970, 'mohammed maher', 'Software Engineering', 82.14081632653061),
(120201000, 'Mohammed Abu Daqqa', 'ENG', 90.66),
(120201030, 'Yara', 'Nurse', 99),
(120201050, 'Ahmed', 'ENG', 85),
(120202000, 'Mostafa', 'IT', 92.5),
(120204000, 'Alaa', 'English', 88),
(120205489, 'Nour', 'IT', 93.24),
(120209875, 'Rami', 'Nurse', 93.24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`studentId`,`courseId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `FK_registration_studentID` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
