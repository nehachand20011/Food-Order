-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 01:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sir`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(4, 'Admin1', 'Admin'),
(3, 'admin1', 'Admin123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(27, 'Fruits', '312', 'cat-1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(100) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`) VALUES
(63, 'ss', '12345', 'ss@gmail.com', 'esewa', '12', 'strt', 'ktm', '', 'Nepal', 12356, 'channel (1) , pure poison (1) , Paris (1) ', '600'),
(64, 'Sushmita Shrestha', '983820483', 'ss@gmail.com', 'esewa', '12', 'Devi', 'ktm', '', 'Nepal', 34444, '5SOS5 (1) , Dark SIde Of The Moon (1) ', '232'),
(65, 'rain', '12345', 'abc@gmail.com', 'esewa', '12', 'strt', 'ktm', '', 'Nepal', 6576, '5SOS5 (1) , Dark SIde Of The Moon (1) ', '232'),
(66, 'ss', '637483', 'abc@gmail.com', 'esewa', '653', 'jdj', 'ktm', '', 'Nepal', 763782, '5SOS5 (1) , Dark SIde Of The Moon (1) ', '232'),
(67, 'ss', '256789', 'abc@gmail.com', 'esewa', '12', '2334', 'ktm', '', 'Nepal', 764782, '5SOS5 (1) , Dark SIde Of The Moon (1) ', '232'),
(68, 'Sushmita Shrestha', '9863783977', 'sfdegvg@gmail.com', 'esewa', '77', 'lubhoo', 'lalitpur', '', 'Nepal', 123456, '5SOS5 (1) , NO EASY (2) , Dark SIde Of The Moon (1) ', '600'),
(69, 'ashton', '82134992', 'abcd@gmail.com', 'cash on delivery', '56', 'htd', 'bkt', '', 'Nepal', 23452, '5SOS5 (1) , NO EASY (2) , Dark SIde Of The Moon (1) ', '600'),
(70, 'neha', '9869913637', 'neha@gmail.com', 'esewa', '101', 'dweffgzb', 'bagbazr', '', 'nepal', 1342, '5SOS5 (1) , NO EASY (2) , Dark SIde Of The Moon (1) ', '600'),
(71, 'wfaersfnhcvdbfdzv', '87r(8687r', 'neha@gmail.com', 'esewa', '213', 'dweffgzb', 'bagbazr', '', 'Nepal', 1342, 'Fish (1) ', '800'),
(72, 'neha', '9869913637', 'neha@gmail.com', 'esewa', '101', 'dweffgzb', 'bagbazr', '', 'Nepal', 1342, 'Fish (1) , Meat (1) ', '801'),
(73, 'neha', '9869913637', 'neha@gmail.com', 'esewa', '101', 'dweffgzb', 'bagbazr', '', 'Nepal', 1342, 'Fish (1) , Meat (1) ', '801'),
(74, 'hgxbkj,', '9869913637', 'neha@gmail.com', 'esewa', '101', 'dweffgzb', 'bagbazr', '', 'Nepal', 1342, 'Fruits (1) ', '312');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(44, 'Fish', '100', 'cat-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
