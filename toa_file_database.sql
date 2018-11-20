-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2018 at 02:17 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toa_file_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_tbl`
--

CREATE TABLE `access_tbl` (
  `ID` int(11) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `folder_id` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add_file`
--

CREATE TABLE `add_file` (
  `ID` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `file_name` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_file`
--

INSERT INTO `add_file` (`ID`, `id_category`, `category`, `file_name`) VALUES
(1, 1, '153871054855', 'setup.exe'),
(2, 1, '153871054855', 'Assets_List.OfficeRecovery_Online_Demo.xlsx'),
(3, 1, '153871054855', 'phase-3.docx'),
(4, 1, '153871054855', 'uTorrent.exe'),
(5, 1, '153871054855', 'SVGGraph2.28.zip'),
(6, 2, '153871089428', 'SCRUBBED_Help_Desk_-_Ticketing_Process.pdf'),
(7, 2, '153871089428', 'Copy_1538710915_SCRUBBED_Help_Desk_-_Ticketing_Process.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `ID` int(11) NOT NULL,
  `folder_category` varchar(200) NOT NULL,
  `folder_name` varchar(200) NOT NULL,
  `folder_real` varchar(100) NOT NULL,
  `folder_created` int(11) NOT NULL,
  `folder_update` int(11) NOT NULL,
  `created_by` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`ID`, `folder_category`, `folder_name`, `folder_real`, `folder_created`, `folder_update`, `created_by`) VALUES
(1, '', 'Scrubbed IT File', '153871054855', 1538710548, 1538710637, 'acarreon@scrubbed.net'),
(2, '', 'My Files', '153871089428', 1538710894, 1538710915, 'vince@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `job_category_tbl`
--

CREATE TABLE `job_category_tbl` (
  `ID` int(11) NOT NULL,
  `category_name` varchar(20) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `sales` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `sales`) VALUES
(51, 'Joseph Gonzalez', '310-207-1132', 'JosephMGonzalez@inbound.plus', '87\r'),
(52, 'Christopher Gritton', '570-686-3439', 'ChristopherKGritton@inbound.plus', '45\r'),
(53, 'Brandon Wilson', '541-309-5149', 'BrandonMWilson@inbound.plus', '3\r'),
(54, 'Craig White', '516-795-8065', 'CraigJWhite@inbound.plus', '23\r'),
(55, 'David Whitney', '713-214-3966', 'DavidCWhitney@inbound.plus', '2\r'),
(56, 'Joseph Gonzalez', '310-207-1132', 'JosephMGonzalez@inbound.plus', '87\r'),
(57, 'Christopher Gritton', '570-686-3439', 'ChristopherKGritton@inbound.plus', '45\r'),
(58, 'Brandon Wilson', '541-309-5149', 'BrandonMWilson@inbound.plus', '3\r'),
(59, 'Craig White', '516-795-8065', 'CraigJWhite@inbound.plus', '23\r'),
(60, 'David Whitney', '713-214-3966', 'DavidCWhitney@inbound.plus', '2\r');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `ID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `middle` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`ID`, `email`, `password`, `position`, `fname`, `middle`, `lastname`, `location`) VALUES
(2, 'acarreon@scrubbed.net', '601f1889667efaebb33b8c12572835da3f027f78', '1', 'Alejo', 'M', 'Carreon', 'Clark'),
(3, 'vince@yahoo.com', '601f1889667efaebb33b8c12572835da3f027f78', '0', 'Vincent', ' ', 'De Leon', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_tbl`
--
ALTER TABLE `access_tbl`
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `add_file`
--
ALTER TABLE `add_file`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `job_category_tbl`
--
ALTER TABLE `job_category_tbl`
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_tbl`
--
ALTER TABLE `access_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_file`
--
ALTER TABLE `add_file`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_category_tbl`
--
ALTER TABLE `job_category_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
