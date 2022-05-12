-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 05:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'BREAKFAST'),
(5, 'LUNCH'),
(6, 'DINNER'),
(7, 'BEVERAGES');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(14, 4, 'Kaya toast and hot coffee', 50, ''),
(15, 4, '2 Eggs', 25, ''),
(16, 5, 'Wanton mee', 300, ''),
(17, 5, 'Ribeye Steak', 100, ''),
(18, 7, 'Strawberry Milk tea', 50, ''),
(19, 7, 'Pineapple Juice', 50, ''),
(20, 6, 'Chicken pasta', 250, '');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `total`, `date_purchase`) VALUES
(8, 'Neovic', 600, '2017-12-06 15:29:00'),
(9, 'Gill', 300, '2022-05-10 23:26:36'),
(10, 'we', 1250, '2022-05-10 23:26:53'),
(11, 'weee', 0, '2022-05-10 23:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(13, 8, 15, 2),
(14, 8, 17, 2),
(15, 8, 18, 2),
(16, 9, 15, 2),
(17, 10, 15, 2),
(18, 10, 14, 3),
(19, 10, 17, 5),
(20, 10, 16, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`pdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
