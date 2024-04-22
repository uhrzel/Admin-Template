-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 04:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benjamin-a-martinez-jr-checklist`
--

-- --------------------------------------------------------

--
-- Table structure for table `1st_year_1st_semester`
--

CREATE TABLE `1st_year_1st_semester` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `1st_year_2nd_semester`
--

CREATE TABLE `1st_year_2nd_semester` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2nd_year_1st_semester`
--

CREATE TABLE `2nd_year_1st_semester` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2nd_year_2nd_semester`
--

CREATE TABLE `2nd_year_2nd_semester` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3rd_year_1st_semester`
--

CREATE TABLE `3rd_year_1st_semester` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3rd_year_2nd_semester`
--

CREATE TABLE `3rd_year_2nd_semester` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `4th_year_1st_semester`
--

CREATE TABLE `4th_year_1st_semester` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `4th_year_2nd_semester`
--

CREATE TABLE `4th_year_2nd_semester` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `midyear`
--

CREATE TABLE `midyear` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `hours` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1st_year_1st_semester`
--
ALTER TABLE `1st_year_1st_semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code_unique` (`course_code`);

--
-- Indexes for table `1st_year_2nd_semester`
--
ALTER TABLE `1st_year_2nd_semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code_unique` (`course_code`);

--
-- Indexes for table `2nd_year_1st_semester`
--
ALTER TABLE `2nd_year_1st_semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code_unique` (`course_code`);

--
-- Indexes for table `2nd_year_2nd_semester`
--
ALTER TABLE `2nd_year_2nd_semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code_unique` (`course_code`);

--
-- Indexes for table `3rd_year_1st_semester`
--
ALTER TABLE `3rd_year_1st_semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code_unique` (`course_code`);

--
-- Indexes for table `3rd_year_2nd_semester`
--
ALTER TABLE `3rd_year_2nd_semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code_unique` (`course_code`);

--
-- Indexes for table `4th_year_1st_semester`
--
ALTER TABLE `4th_year_1st_semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code_unique` (`course_code`);

--
-- Indexes for table `4th_year_2nd_semester`
--
ALTER TABLE `4th_year_2nd_semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code_unique` (`course_code`);

--
-- Indexes for table `midyear`
--
ALTER TABLE `midyear`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1st_year_1st_semester`
--
ALTER TABLE `1st_year_1st_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1st_year_2nd_semester`
--
ALTER TABLE `1st_year_2nd_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2nd_year_1st_semester`
--
ALTER TABLE `2nd_year_1st_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2nd_year_2nd_semester`
--
ALTER TABLE `2nd_year_2nd_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3rd_year_1st_semester`
--
ALTER TABLE `3rd_year_1st_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3rd_year_2nd_semester`
--
ALTER TABLE `3rd_year_2nd_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4th_year_1st_semester`
--
ALTER TABLE `4th_year_1st_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4th_year_2nd_semester`
--
ALTER TABLE `4th_year_2nd_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `midyear`
--
ALTER TABLE `midyear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
