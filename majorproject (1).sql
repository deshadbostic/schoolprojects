-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2019 at 08:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `majorproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE `Customers` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Telephone` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`id`, `FirstName`, `Lastname`, `Address`, `Telephone`, `Email`) VALUES
(1, 'Usab', 'uabs', 'ocna', '098-7654', 'ajgsc,as.com'),
(2, 'Usabjh', 'hey there', 'asdqw', '098-7654', 'ajgsc,as.com'),
(3, 'Kyle', 'Batmans', '12', '421', '124');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `Name`, `Price`, `Quantity`, `Description`) VALUES
(1, 'Kyle is a plant', 1000000, 0, 'The One and Only'),
(2, 'Pumpkin', 13, 2, 'Pumpkin'),
(3, 'Palm', 23, 0, 'KYle'),
(4, 'Try', 21, 2, 'Try'),
(5, 'Plant', 50, 31, 'Example');

-- --------------------------------------------------------

--
-- Table structure for table `Items_Sold`
--

CREATE TABLE `Items_Sold` (
  `item_Name` varchar(50) NOT NULL,
  `Quantity_Sold` int(11) NOT NULL,
  `order_Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Items_Sold`
--

INSERT INTO `Items_Sold` (`item_Name`, `Quantity_Sold`, `order_Date`) VALUES
('Watermelon', 5, '0000-00-00'),
('Pumpkin', 3, '2019'),
('watermelon', 1, '1'),
('watermelon', 1, '1'),
('Pumpkin', 1, '2019-04-08'),
('Pumpkin', 1, '2019-04-01'),
('Pumpkin', 1, '2019-04-02'),
('Plant', 12, '2019-04-01'),
('Pumpkin', 1, '2019-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `Orders_Details`
--

CREATE TABLE `Orders_Details` (
  `order_ID` int(11) NOT NULL,
  `order_Date` varchar(50) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `grand_Total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orders_Details`
--

INSERT INTO `Orders_Details` (`order_ID`, `order_Date`, `Customer_id`, `grand_Total`) VALUES
(5, 'eW', 3, 34.4),
(6, '4/14/19 9:50 PM', 3, 14),
(7, '4/14/19 9:50 PM', 3, 60),
(8, '4/14/19 9:51 PM', 2, 60),
(9, '4/14/19 9:51 PM', 1, 60),
(10, '4/1/19 10:08 PM', 3, 14),
(11, '2019-04-01', 1, 28),
(12, '2019-04-01', 3, 14),
(13, '2019-04-01', 3, 52),
(14, '2019-04-01', 3, 260),
(15, '2019-04-01', 3, 153),
(16, '2019-04-30', 3, 14),
(17, '2019-04-01', 3, 13),
(18, '2019-04-01', 3, 13),
(19, '2019-04-01', 3, 13),
(20, '2019-04-08', 2, 13),
(21, '2019-04-08', 2, 1000013),
(22, '2019-04-08', 3, 13),
(23, '2019-04-01', 3, 13),
(24, '2019-04-02', 1, 13),
(25, '2019-04-01', 3, 613);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(40) CHARACTER SET latin1 NOT NULL,
  `Role` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Username`, `Password`, `Role`) VALUES
(1, 'Kyle', 'Password', 'Admin'),
(2, 'user', 'test', 'Admin'),
(3, 'user2', 'test', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Orders_Details`
--
ALTER TABLE `Orders_Details`
  ADD PRIMARY KEY (`order_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customers`
--
ALTER TABLE `Customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Orders_Details`
--
ALTER TABLE `Orders_Details`
  MODIFY `order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
