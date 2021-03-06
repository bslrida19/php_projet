-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2020 at 08:10 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'PLAY STORE CARD', 25),
(2, 'ITUNES ECODES', 2),
(3, 'ITUNES CARD', 100),
(4, 'eBay Gift Card', 40),
(5, 'NIKE CARD', 50),
(6, 'AMAZON GIFT CARD', 50),
(7, 'NETFLIX GIFT CARD', 15),
(8, 'PLAYSTATION GIFT CARD', 15),
(9, 'fortnite vbux', 20),
(10, 'XBOX card', 15),
(11, 'ITUNES UK', 13),
(12, 'itunes', 15);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(8, 'bsl90', 'bslrida19@gmail.com', '516c00db69883d8d3701870606d1acf3', '70464336', 'tyre', 'jjj'),
(9, 'vcx', 'bslrida1@gmail.com', '92ce2976fbc18933cf072195c27f8dab', '70464336', 'tyre', 'jjj'),
(10, 'ljkhgjf', 'bslrida@gmail.com', 'dfe879257ca698a1caaed9c0836f601c', '70464336', 'tyre', 'jjj'),
(11, 'sameh', 'sameh19@gmail.com', '224cf2b695a5e8ecaecfb9015161fa4b', '70464336', 'tyre', 'jjj');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(37, 9, 1, 'Confirmed'),
(38, 9, 5, 'Confirmed'),
(39, 9, 4, 'Confirmed'),
(40, 9, 4, 'Confirmed'),
(41, 9, 7, 'Confirmed'),
(42, 10, 1, 'Confirmed'),
(43, 10, 3, 'Confirmed'),
(44, 10, 4, 'Confirmed'),
(45, 10, 10, 'Confirmed'),
(46, 10, 8, 'Confirmed'),
(47, 10, 2, 'Confirmed'),
(48, 10, 2, 'Confirmed'),
(49, 10, 1, 'Confirmed'),
(50, 10, 2, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
