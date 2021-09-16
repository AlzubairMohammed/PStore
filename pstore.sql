-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 08:02 AM
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
-- Database: `pstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `userId`, `name`, `img`, `comment`, `created`, `updated`) VALUES
(17, 3, 'Alzubair Mohammed', 'uploads/photo_2021-09-14_07-45-16.jpg', 'not every body can be', '2021-09-15 20:12:27', '2021-09-15 20:12:27'),
(11, 2, 'Amar', 'uploads/2002_07_06_22_27_IMG_4469.JPG', 'hi programmers !!', '2021-09-15 19:33:54', '2021-09-15 19:33:54'),
(12, 3, 'Alzubair Mohammed', 'uploads/photo_2021-09-14_07-45-16.jpg', 'welcome', '2021-09-15 19:35:46', '2021-09-15 19:35:46'),
(13, 3, 'Alzubair Mohammed', 'uploads/photo_2021-09-14_07-45-16.jpg', 'guys !!', '2021-09-15 19:37:47', '2021-09-15 19:37:47'),
(14, 3, 'Alzubair Mohammed', 'uploads/photo_2021-09-14_07-45-16.jpg', 'guys !!', '2021-09-15 19:38:28', '2021-09-15 19:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `massages`
--

CREATE TABLE `massages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `INmsg` varchar(255) NOT NULL,
  `OUmsg` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(255) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `img1`, `img2`, `img3`, `price`, `type`, `descr`, `created`, `updated`) VALUES
(23, 'iphone 12', 'uploads/photo_2021-09-15_22-04-48.jpg', 'uploads/photo_2021-09-15_22-04-26.jpg', 'uploads/photo_2021-09-15_22-04-37.jpg', 30000, 'iPone', 'Corning Gorilla Glass 5', '2021-09-16 05:28:05', '2021-09-16 05:28:05'),
(21, 'A12', 'uploads/photo_2021-09-15_22-04-44.jpg', 'uploads/photo_2021-09-15_22-05-14.jpg', 'uploads/photo_2021-09-15_22-04-41.jpg', 10000, 'Hawaii', 'Corning Gorilla Glass 5', '2021-09-16 05:24:51', '2021-09-16 05:24:51'),
(19, 'A32', 'uploads/photo_2021-09-15_22-04-26.jpg', 'uploads/photo_2021-09-15_22-04-37.jpg', 'uploads/', 14000, 'Galaxy', 'Corning Gorilla Glass 5', '2021-09-16 05:19:44', '2021-09-16 05:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `pruchases`
--

CREATE TABLE `pruchases` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pruchases`
--

INSERT INTO `pruchases` (`id`, `productId`, `img`, `name`, `quantity`, `created`, `updated`) VALUES
(15, 21, 'uploads/photo_2021-09-15_22-04-44.jpg', 'A12', 2, '2021-09-16 05:44:23', '2021-09-16 05:46:20'),
(16, 23, 'uploads/photo_2021-09-15_22-04-48.jpg', 'iphone 12', 3, '2021-09-16 06:00:32', '2021-09-16 06:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `addr` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `tel`, `addr`, `img`, `user`, `email`, `admin`, `pass`, `created`, `updated`) VALUES
(2, 'Amar', '99293939', 'Omdurman', 'uploads/2002_07_06_22_27_IMG_4469.JPG', 'Amar_Isaq(admin)', 'Amar@gmail.com', 1, '123', '2021-09-11 19:34:36', '2021-09-15 20:11:33'),
(3, 'Alzubair Mohammed', '995583573', 'khartoum', 'uploads/photo_2021-09-14_07-45-16.jpg', 'Alzubair_Mohammed', 'alzubair@gmail.com', NULL, '123', '2021-09-15 13:00:14', '2021-09-15 13:00:14'),
(4, 'Hamza', '933838375', 'sudan', 'uploads/photo_2021-09-15_14-00-54.jpg', 'hamza_salem', 'hamza@gmail.com', NULL, '123', '2021-09-15 21:01:43', '2021-09-15 21:01:43'),
(5, 'Ali Ahmed', 'undefined', 'khartoum', 'uploads/photo_2021-09-15_14-00-54.jpg', 'ali_mo', 'ali@gmail.com', NULL, '123', '2021-09-15 22:46:19', '2021-09-15 22:46:19'),
(6, 'ahmed', 'undefined', 'no address', 'uploads/photo_2021-09-15_14-00-54.jpg', 'ahmed', 'ahmed@gmail.com', NULL, '123', '2021-09-15 23:40:26', '2021-09-15 23:40:26'),
(7, 'mo', 'undefined', 'mo', 'uploads/photo_2021-09-15_14-00-54.jpg', 'mo', 'mo@gmail.com', NULL, '123', '2021-09-15 23:42:17', '2021-09-15 23:42:17'),
(8, 'nono', 'undefined', 'nonno', 'uploads/photo_2021-09-15_14-00-54.jpg', 'nono', 'nono@gmail.com', NULL, '123', '2021-09-15 23:44:33', '2021-09-15 23:44:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massages`
--
ALTER TABLE `massages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pruchases`
--
ALTER TABLE `pruchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productId` (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `massages`
--
ALTER TABLE `massages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pruchases`
--
ALTER TABLE `pruchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
