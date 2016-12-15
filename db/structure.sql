-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2016 at 11:11 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2016-09-28 07:07:43', '2016-09-28 07:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `myjourneys`
--

CREATE TABLE `myjourneys` (
  `id` int(11) NOT NULL,
  `journey_name` varchar(255) DEFAULT NULL,
  `imei_no` varchar(255) DEFAULT NULL,
  `start_latitude` varchar(255) DEFAULT NULL,
  `start_longitude` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myjourneys`
--

INSERT INTO `myjourneys` (`id`, `journey_name`, `imei_no`, `start_latitude`, `start_longitude`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'My Journey1', '234567876345', '23.0396', '72.566', 'Remarks', '2016-10-06 11:03:26', '2016-10-06 11:03:26'),
(2, 'My Journey 2', '2345678763456', '23.0396', '72.566', '', '2016-10-06 11:05:58', '2016-10-06 11:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `ovrspds`
--

CREATE TABLE `ovrspds` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `over_speed` varchar(255) DEFAULT NULL,
  `ovrspd_latitude` varchar(255) DEFAULT NULL,
  `ovrspd_longitude` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ovrspds`
--

INSERT INTO `ovrspds` (`id`, `trip_id`, `over_speed`, `ovrspd_latitude`, `ovrspd_longitude`, `created_at`, `updated_at`) VALUES
(1, 1, '75', '23.420', '72.526', '2016-10-21 06:49:32', '2016-10-21 06:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160928070135'),
('20161006111621'),
('20161007062636'),
('20161021062157');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `journey_name` varchar(255) DEFAULT NULL,
  `imei_no` text,
  `start_latitude` text,
  `start_longitude` text,
  `stop_latitude` text,
  `stop_longitude` text,
  `avg_spd` text,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `journey_name`, `imei_no`, `start_latitude`, `start_longitude`, `stop_latitude`, `stop_longitude`, `avg_spd`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'My Journey 1', '234567876345', '23.0396', '72.566', '23.008', '72.5101', '1.5', 'Remarks', '2016-10-06 13:55:01', '2016-10-06 13:56:59'),
(2, 'My Journey 2', '234567876345', '23.0396', '72.566', '23.009', '72.5102', '3', 'Remarks', '2016-10-06 13:55:32', '2016-10-07 09:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'vishesh@admin.com', 'admin', '2016-10-07 05:14:26', '2016-10-07 05:14:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `myjourneys`
--
ALTER TABLE `myjourneys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ovrspds`
--
ALTER TABLE `ovrspds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_ovrspds_on_trip_id` (`trip_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myjourneys`
--
ALTER TABLE `myjourneys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ovrspds`
--
ALTER TABLE `ovrspds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ovrspds`
--
ALTER TABLE `ovrspds`
  ADD CONSTRAINT `fk_rails_0fbe59fb4b` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
