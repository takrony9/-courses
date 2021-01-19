-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 01:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab4`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `course_description` varchar(100) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `dep_id`, `professor_id`) VALUES
(1, 'database', 'this is the description for database course', 1, 1),
(2, 'dsp', 'this is the description for dsp course', 2, 4),
(3, 'thermo', 'this is the description for thermo course', 3, 3),
(4, 'os', 'this is the description for os course', 1, 4),
(5, 'algorithm', 'this is the description for algorithm course', 1, 1),
(6, 'analog', 'this is the description for analog course', 2, 4),
(7, 'organization', 'this is the description for organization course', 1, 2),
(8, 'signals', 'this is the description for signals course', 2, 1),
(9, 'heat transfer', 'this is the description for heat transfer course', 3, 3),
(10, 'data structure', 'this is the description for data struture course', 1, 4),
(11, 'AI', 'this is the description for AI course', 1, 2),
(12, 'materials', 'this is the description for materials course', 3, 3),
(13, 'design', 'this is the description for design course', 4, 5),
(14, 'programming', 'this is the description for programming course', 1, 1),
(15, 'fluid', 'this is the description for fluid course', 2, 3),
(16, 'structure', 'this is the description for structure course', 4, 5),
(17, 'microprocessor', 'this is the description for microprocessor course', 1, 1),
(18, 'circuits', 'this is the description for circuits course', 2, 4),
(19, 'modern pyhsics', 'this is the description for modern pyhsics course', 2, 2),
(20, 'logic gates', 'this is the description for logic gates course', 1, 1),
(21, 'control', 'this is the description for control course', 2, 4),
(22, 'embedded systems', 'this is the description for embedded systems course', 1, 1),
(23, 'networks', 'this is the description for networks course', 2, 4),
(24, 'mettalic', 'this is the description for metalic course', 4, 5),
(25, 'soil', 'this is the description for soil course', 4, 5);
(26, 'probability', 'this is the description for probability course', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dep_id`, `dep_name`) VALUES
(1, 'computer'),
(2, 'communication'),
(3, 'mechanics'),
(4, 'construction');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `professor_id` int(11) NOT NULL,
  `professor_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`professor_id`, `professor_name`) VALUES
(1, 'mohamed adel'),
(2, 'yousef ahmed'),
(3, 'amr sameh'),
(4, 'yousef adel'),
(5, 'belal raaft');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `professor_id` (`professor_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`professor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `department` (`dep_id`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
