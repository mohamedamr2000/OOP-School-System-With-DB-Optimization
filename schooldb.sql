-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 12:37 AM
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
-- Database: `schooldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `name`, `parent_ID`) VALUES
(1, 'Africa', 0),
(2, 'Egypt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ann`
--

CREATE TABLE `ann` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `notify` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ann`
--

INSERT INTO `ann` (`id`, `title`, `subject`, `date`, `notify`) VALUES
(1, 'FirstAnn', 'U have assig', '2021-01-03', 1),
(10, 'Exam Scheduel Announced', 'Please kindly refer to your shecduel to check exams.', '2021-01-04', 0),
(11, 'Dicussions meetings today', 'Edge', '2021-01-10', 0),
(12, 'asd', 'Please kindly refer to your shecduel to check exams.', '2021-01-10', 0),
(14, 'ayhaga', 'ayhaga', '2021-01-12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Id` int(11) NOT NULL,
  `Course_Name` varchar(255) NOT NULL,
  `Course_Code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Id`, `Course_Name`, `Course_Code`) VALUES
(1, 'English', 'ENG'),
(2, 'Math', 'MTH'),
(3, 'Science', 'SCE'),
(4, 'asg', '123'),
(5, 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `course_teachers`
--

CREATE TABLE `course_teachers` (
  `id` int(11) NOT NULL,
  `Course_Id` int(11) NOT NULL,
  `Teacher_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_teachers`
--

INSERT INTO `course_teachers` (`id`, `Course_Id`, `Teacher_Id`) VALUES
(1, 1, 38),
(2, 2, 37),
(3, 3, 39),
(4, 1, 37),
(5, 4, 37);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `parent_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `link`, `url`, `parent_ID`) VALUES
(1, 'login', 'login.php', 0),
(2, 'logout', 'logout.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `Id` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Text` text NOT NULL,
  `Course_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`Id`, `Image`, `Text`, `Course_Id`) VALUES
(23, 'java-oops.png', 'Object-oriented programming is a programming paradigm based on the concept of \"objects\"', 1),
(29, 'Object-Oriented-Programming-Concepts.jpg', 'data in the form of fields, and code, in the form of procedures. A feature of objects is that an object\'s own procedures can access and often modify the data fields of itself.', 1),
(32, 'cb10ded2-0410-11e9-b0d2-cf4a0f50367e_image_hires_171228.jpg', 'Algebra is one of the broad parts of mathematics, together with number theory, geometry and analysis.', 2),
(33, 'AD1.jpg', 'adsafd', 2),
(34, '1.png', 'addd', 2),
(35, '', 'ssdsd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`Id`, `Name`, `Type`) VALUES
(1, 'Name on the card', 'text'),
(2, 'Expiry Date', 'date'),
(3, 'Card number', 'varchar'),
(4, 'CVC', 'int'),
(5, 'Code of request', 'int'),
(6, 'Phone Number', 'int'),
(7, 'Code mn 3 arkam', 'int');

-- --------------------------------------------------------

--
-- Table structure for table `payment_amount`
--

CREATE TABLE `payment_amount` (
  `Id` int(11) NOT NULL,
  `Student_Id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_amount`
--

INSERT INTO `payment_amount` (`Id`, `Student_Id`, `Amount`, `Paid`) VALUES
(1, 37, 5000, 1),
(2, 15, 5000, 1),
(3, 40, 5000, 1),
(4, 41, 5500, 1),
(5, 42, 5600, 1),
(6, 43, 5200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`Id`, `Name`) VALUES
(1, 'VISA'),
(2, 'Fawry'),
(3, 'Vodafone Cash'),
(4, 'Mastercard');

-- --------------------------------------------------------

--
-- Table structure for table `payment_options`
--

CREATE TABLE `payment_options` (
  `Id` int(11) NOT NULL,
  `Payment_Id` int(11) NOT NULL,
  `Option_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_options`
--

INSERT INTO `payment_options` (`Id`, `Payment_Id`, `Option_Id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 5),
(6, 2, 6),
(7, 1, 6),
(8, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `payment_option_value`
--

CREATE TABLE `payment_option_value` (
  `Id` int(11) NOT NULL,
  `Payment_Option_Id` int(11) NOT NULL,
  `Student_Id` int(11) NOT NULL,
  `Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_option_value`
--

INSERT INTO `payment_option_value` (`Id`, `Payment_Option_Id`, `Student_Id`, `Value`) VALUES
(1, 1, 1, 'Mohamed Amr Samir Mohamed'),
(2, 2, 1, '22/1/2022'),
(3, 3, 1, '3071 2836 1234 2665'),
(4, 4, 1, '4422'),
(5, 1, 39, 'Reham Saeeed'),
(6, 2, 39, '4/3/2023'),
(7, 3, 39, '3311 2556 7889 4446'),
(8, 4, 39, '6775'),
(11, 5, 40, '534445406'),
(12, 6, 40, '01116661515940'),
(13, 5, 37, '3444515'),
(14, 6, 37, '01023245533'),
(15, 5, 41, '12332144'),
(16, 6, 41, '1245525222'),
(17, 5, 42, '1234'),
(18, 6, 42, '2334');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Id` int(11) NOT NULL,
  `Student_Id` int(11) NOT NULL,
  `Academic_Year` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Id`, `Student_Id`, `Academic_Year`, `Date`) VALUES
(1, 1, 8, '2021-01-09'),
(12, 1, 5, '2021-01-09'),
(13, 3, 4, '2021-01-09'),
(14, 40, 9, '2021-01-12'),
(15, 40, 2, '2021-01-12'),
(16, 41, 5, '2021-01-12'),
(17, 41, 5, '2021-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `registration_details`
--

CREATE TABLE `registration_details` (
  `Id` int(11) NOT NULL,
  `Registration_Id` int(11) NOT NULL,
  `Course_Id` int(11) NOT NULL,
  `Final_Grade` int(11) NOT NULL,
  `notify` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration_details`
--

INSERT INTO `registration_details` (`Id`, `Registration_Id`, `Course_Id`, `Final_Grade`, `notify`) VALUES
(1, 1, 1, 0, 0),
(2, 12, 1, 0, 0),
(3, 13, 2, 0, 0),
(4, 14, 2, 0, 0),
(5, 15, 3, 0, 0),
(6, 16, 1, 0, 0),
(7, 17, 2, 80, 1);

-- --------------------------------------------------------

--
-- Table structure for table `semster`
--

CREATE TABLE `semster` (
  `id` int(9) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semster`
--

INSERT INTO `semster` (`id`, `name`) VALUES
(1, 'spring 2020'),
(2, 'fall 2021');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `userTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `firstName`, `lastName`, `gender`, `email`, `address`, `userTypeId`) VALUES
(1, '1234', 'Mohamed', 'Amr', 0, 'ui@gmail.com', '1', 0),
(3, '0', 'Marwan', 'Mohsen', 1, 'marwanmohsen@gmail.com', '1', 1),
(15, '0', 'Chiko', 'Seif', 1, 'aa@gmail.com', '1', 1),
(37, '1234', 'Youssef', 'Abdullah', 1, 'jo@gmail.com', '2', 2),
(38, '1234', 'Mohamed', 'Abdelfattah', 1, 'abd_el_fattah@gmail.com', '1', 2),
(39, '1234', 'Reham', 'Saeed', 2, 'reham@gmail.com', '1', 1),
(40, '1234', 'Ahmed', 'Mohamed', 1, 'Ahmed@gmail.com', '1', 1),
(41, '1234', 'Mostafa', 'Galal', 1, 'Mg@gmail.com', '2', 1),
(42, '1234', 'Youssef', 'Hamdy', 1, 'jo@gmail.com', '1', 1),
(43, '1234', 'Omar', 'Ynis', 1, 'omat@gmail.com', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `name`) VALUES
(1, 'Student'),
(2, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `usertype_link`
--

CREATE TABLE `usertype_link` (
  `id` int(11) NOT NULL,
  `usertype_ID` int(11) NOT NULL,
  `link_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype_link`
--

INSERT INTO `usertype_link` (`id`, `usertype_ID`, `link_ID`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ann`
--
ALTER TABLE `ann`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `course_teachers`
--
ALTER TABLE `course_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Teacher_Id` (`Teacher_Id`),
  ADD KEY `Course_Id` (`Course_Id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `payment_amount`
--
ALTER TABLE `payment_amount`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `payment_options`
--
ALTER TABLE `payment_options`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `payment_option_value`
--
ALTER TABLE `payment_option_value`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Student_Id` (`Student_Id`);

--
-- Indexes for table `registration_details`
--
ALTER TABLE `registration_details`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Registration_Id` (`Registration_Id`),
  ADD KEY `Course_Id` (`Course_Id`);

--
-- Indexes for table `semster`
--
ALTER TABLE `semster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userTypeId` (`userTypeId`),
  ADD KEY `gender` (`gender`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertype_link`
--
ALTER TABLE `usertype_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_ID` (`link_ID`),
  ADD KEY `usertype_ID` (`usertype_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ann`
--
ALTER TABLE `ann`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_teachers`
--
ALTER TABLE `course_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_amount`
--
ALTER TABLE `payment_amount`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_options`
--
ALTER TABLE `payment_options`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_option_value`
--
ALTER TABLE `payment_option_value`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `registration_details`
--
ALTER TABLE `registration_details`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semster`
--
ALTER TABLE `semster`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usertype_link`
--
ALTER TABLE `usertype_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_teachers`
--
ALTER TABLE `course_teachers`
  ADD CONSTRAINT `course_teachers_ibfk_1` FOREIGN KEY (`Teacher_Id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `course_teachers_ibfk_2` FOREIGN KEY (`Course_Id`) REFERENCES `course` (`Id`);

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`Student_Id`) REFERENCES `users` (`id`);

--
-- Constraints for table `registration_details`
--
ALTER TABLE `registration_details`
  ADD CONSTRAINT `registration_details_ibfk_1` FOREIGN KEY (`Course_Id`) REFERENCES `course` (`Id`),
  ADD CONSTRAINT `registration_details_ibfk_2` FOREIGN KEY (`Registration_Id`) REFERENCES `registration` (`Id`);

--
-- Constraints for table `usertype_link`
--
ALTER TABLE `usertype_link`
  ADD CONSTRAINT `usertype_link_ibfk_1` FOREIGN KEY (`link_ID`) REFERENCES `links` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usertype_link_ibfk_2` FOREIGN KEY (`usertype_ID`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
