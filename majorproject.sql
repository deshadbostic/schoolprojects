-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 05:18 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customerid` int(7) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Telephone` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customerid`, `FirstName`, `Lastname`, `Address`, `Telephone`, `Email`) VALUES
(1, 'Usab', 'uabs', 'ocna', '098-7654', 'ajgsc,as.com'),
(2, 'Usabjh', 'hey there', 'asdqw', '098-7654', 'ajgsc,as.com'),
(3, 'Kyle', 'Batmans', '12', '421', '124');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Itemname` varchar(255) NOT NULL,
  `Price` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Itemname`, `Price`, `Quantity`, `Description`) VALUES
('Green Bull', 39.99, 213, 'This is a One Piece inspired plant that is a rich green color for true onepiece fans'),
('Kyle is a plant', 1000000, 0, 'The One and Only this different'),
('Palm', 23, 0, 'KYle'),
('Plant', 50, 26, 'Example'),
('Pumpkin', 13, 2, 'Pumpkin'),
('testplantnumber6', 32, 343, 'i add this to see how the table handle when it bigger than what it could physically handle'),
('Try', 21, 1, 'Try');

-- --------------------------------------------------------

--
-- Table structure for table `items_sold`
--

CREATE TABLE `items_sold` (
  `Itemname` varchar(50) NOT NULL,
  `Quantitysold` int(7) NOT NULL,
  `Orderdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_sold`
--

INSERT INTO `items_sold` (`Itemname`, `Quantitysold`, `Orderdate`) VALUES
('Watermelon', 5, '0000-00-00'),
('Pumpkin', 3, '0000-00-00'),
('watermelon', 1, '0000-00-00'),
('watermelon', 1, '0000-00-00'),
('Pumpkin', 1, '2019-04-08'),
('Pumpkin', 1, '2019-04-01'),
('Pumpkin', 1, '2019-04-02'),
('Plant', 12, '2019-04-01'),
('Pumpkin', 1, '2019-04-01'),
('Try', 1, '2019-04-19'),
('Plant', 5, '2019-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `Orderid` int(7) NOT NULL,
  `Itemname` varchar(255) NOT NULL,
  `Price` double NOT NULL,
  `Quantitysold` int(11) NOT NULL,
  `Orderdate` date NOT NULL,
  `Total` int(11) NOT NULL,
  `GrandTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`Orderid`, `Itemname`, `Price`, `Quantitysold`, `Orderdate`, `Total`, `GrandTotal`) VALUES
(1, 'Palm', 21, 2, '2019-04-10', 42, 200);

-- --------------------------------------------------------

--
-- Table structure for table `ordertbl`
--

CREATE TABLE `ordertbl` (
  `Orderid` int(7) NOT NULL,
  `Customerid` int(7) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertbl`
--

INSERT INTO `ordertbl` (`Orderid`, `Customerid`, `Date`, `Time`) VALUES
(1, 1, '2019-04-01', '09:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Userid` int(7) NOT NULL,
  `Username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(40) CHARACTER SET latin1 NOT NULL,
  `Role` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Userid`, `Username`, `Password`, `Role`) VALUES
(1, 'Kyle', 'Password', 'Admin'),
(2, 'user', 'test', 'Admin'),
(3, 'user2', 'test', 'User'),
(4, 'Deshad', 'Passcode', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customerid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`Itemname`);

--
-- Indexes for table `items_sold`
--
ALTER TABLE `items_sold`
  ADD KEY `Itemname` (`Itemname`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`Orderid`,`Itemname`),
  ADD KEY `Itemname` (`Itemname`),
  ADD KEY `Orderid` (`Orderid`);

--
-- Indexes for table `ordertbl`
--
ALTER TABLE `ordertbl`
  ADD PRIMARY KEY (`Orderid`),
  ADD KEY `Customerid` (`Customerid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customerid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ordertbl`
--
ALTER TABLE `ordertbl`
  MODIFY `Orderid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Userid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`Orderid`) REFERENCES `ordertbl` (`Orderid`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`Itemname`) REFERENCES `inventory` (`Itemname`);

--
-- Constraints for table `ordertbl`
--
ALTER TABLE `ordertbl`
  ADD CONSTRAINT `ordertbl_ibfk_1` FOREIGN KEY (`Customerid`) REFERENCES `customers` (`Customerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
