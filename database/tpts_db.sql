-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 04:20 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `ride_id` varchar(5) NOT NULL,
  `adult_price` float NOT NULL,
  `child_price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `name`, `ride_id`, `adult_price`, `child_price`, `date_created`) VALUES
(2, 'Ride All U Can', 'all', 500, 400, '2020-11-30 09:29:14'),
(3, 'Ride Ticket', '1', 150, 130, '2020-11-30 09:30:44'),
(4, 'Ride Ticket', '2', 150, 130, '2020-11-30 09:31:03'),
(5, 'Entrance', 'all', 98, 90, '2021-05-23 04:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `rides`
--

CREATE TABLE `rides` (
  `id` int(30) NOT NULL,
  `ride` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rides`
--

INSERT INTO `rides` (`id`, `ride`, `description`, `date_created`) VALUES
(1, 'Ride 1', 'Sample Ride 1', '2020-11-30 09:03:47'),
(2, 'Ride 2', 'Sample Ride 2', '2020-11-30 09:04:16'),
(3, 'Horse ride', 'Riding horse around', '2021-05-23 05:41:57'),
(4, 'Riding elelphant', 'to ride elephant if you can', '2021-10-21 13:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Theme Park Ticketing System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_items`
--

CREATE TABLE `ticket_items` (
  `id` int(30) NOT NULL,
  `ticket_no` varchar(50) NOT NULL,
  `ride_id` varchar(5) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1=Adult,2=Child',
  `ticket_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_items`
--

INSERT INTO `ticket_items` (`id`, `ticket_no`, `ride_id`, `type`, `ticket_id`, `date_created`) VALUES
(24, '464281140265', 'all', 2, 1, '2020-11-30 11:13:40'),
(25, '923853725245', 'all', 2, 1, '2020-11-30 11:13:40'),
(26, '745910660254', 'all', 2, 1, '2020-11-30 11:13:40'),
(27, '112398007983', '0', 2, 2, '2020-11-30 11:14:57'),
(28, '694424283587', '0', 2, 2, '2020-11-30 11:14:57'),
(29, '881923647970', '0', 2, 2, '2020-11-30 11:14:57'),
(30, '295200337001', '0', 2, 2, '2020-11-30 11:14:57'),
(31, '634386703173', '0', 2, 2, '2020-11-30 11:14:57'),
(32, '288052419703', '0', 2, 2, '2020-11-30 11:14:57'),
(33, '717927139551', '0', 2, 2, '2020-11-30 11:14:57'),
(34, '338361442836', '0', 2, 2, '2020-11-30 11:14:57'),
(35, '118710645494', '0', 2, 2, '2020-11-30 11:14:57'),
(36, '764495422944', '0', 2, 2, '2020-11-30 11:14:57'),
(37, '189977891424', '0', 2, 2, '2020-11-30 11:14:57'),
(38, '409072780821', '0', 2, 2, '2020-11-30 11:14:57'),
(39, '311889863954', '0', 2, 2, '2020-11-30 11:14:57'),
(40, '107156954800', '0', 2, 2, '2020-11-30 11:14:57'),
(41, '484347209065', '0', 2, 2, '2020-11-30 11:14:57'),
(42, '638469245972', '0', 2, 2, '2020-11-30 11:14:57'),
(43, '884095884722', '0', 2, 2, '2020-11-30 11:14:57'),
(44, '305644172130', '0', 2, 2, '2020-11-30 11:14:57'),
(45, '122929510520', '0', 2, 2, '2020-11-30 11:14:57'),
(46, '553555894924', '0', 2, 2, '2020-11-30 11:14:57'),
(49, '855647843645', 'all', 1, 3, '2020-11-30 13:03:55'),
(50, '524460479419', 'all', 1, 3, '2020-11-30 13:03:55'),
(51, '275259836175', 'all', 2, 3, '2020-11-30 13:03:55'),
(52, '072800400443', '1', 1, 4, '2021-05-23 04:16:47'),
(53, '251345449404', '1', 2, 4, '2021-05-23 04:16:47'),
(54, '464002279119', '1', 2, 4, '2021-05-23 04:16:47'),
(55, '138863782218', '1', 2, 4, '2021-05-23 04:16:47'),
(56, '722070137882', '1', 1, 5, '2021-06-18 05:34:04'),
(57, '047072585577', '1', 2, 5, '2021-06-18 05:34:04'),
(58, '221888500147', '1', 2, 5, '2021-06-18 05:34:04'),
(59, '729259901170', '1', 2, 5, '2021-06-18 05:34:04'),
(60, '780713951621', 'all', 1, 6, '2021-07-18 11:14:44'),
(61, '879683705826', 'all', 2, 6, '2021-07-18 11:14:44'),
(62, '190931237282', 'all', 2, 6, '2021-07-18 11:14:44'),
(63, '063812589763', 'all', 2, 6, '2021-07-18 11:14:44'),
(64, '758649752154', 'all', 2, 6, '2021-07-18 11:14:45'),
(65, '124946709697', '1', 1, 7, '2021-10-29 20:29:56'),
(66, '804095469635', '1', 1, 7, '2021-10-29 20:29:56'),
(67, '352568436471', '1', 2, 7, '2021-10-29 20:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_list`
--

CREATE TABLE `ticket_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `no_adult` int(11) NOT NULL,
  `no_child` int(11) NOT NULL,
  `adult_price` float NOT NULL,
  `child_price` float NOT NULL,
  `pricing_id` int(30) NOT NULL,
  `amount` float NOT NULL,
  `tendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_list`
--

INSERT INTO `ticket_list` (`id`, `name`, `no_adult`, `no_child`, `adult_price`, `child_price`, `pricing_id`, `amount`, `tendered`, `date_created`) VALUES
(4, 'KIbori', 1, 3, 150, 130, 3, 540, 560, '2021-05-23 04:16:47'),
(5, 'Gattiek', 1, 3, 150, 130, 3, 54000, 54444, '2021-06-18 05:34:04'),
(6, 'Kibori', 1, 4, 500, 400, 2, 2100, 2200, '2021-07-18 11:14:44'),
(7, 'Juma', 2, 1, 150, 130, 3, 430, 500, '2021-10-29 20:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `date_created`) VALUES
(1, 'Michael Taban', 'Gatkor', 'michael@admin.com', '98cbdb6d3f0466e09cc626bbe0db1eaf', 1, '2020-11-26 10:57:04'),
(2, 'Christine', 'Kibori', 'kibori@user.com', '28dc1fca55f136d54f175913374a5cb2', 2, '2020-11-30 12:00:11'),
(4, 'Nyeyoach', 'keat', 'nyeyoach@user.com', '8bb8b23d06d127b1cfa4bef334d2ce8c', 2, '2021-09-07 15:58:07'),
(5, 'Peter', 'Juma', 'juma@gmail.com', '4009108beac87ec6b0abc5bc1a3b2c67', 1, '2022-07-18 17:19:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rides`
--
ALTER TABLE `rides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_items`
--
ALTER TABLE `ticket_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_list`
--
ALTER TABLE `ticket_list`
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
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rides`
--
ALTER TABLE `rides`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_items`
--
ALTER TABLE `ticket_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `ticket_list`
--
ALTER TABLE `ticket_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
