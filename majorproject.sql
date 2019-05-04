-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2019 at 08:06 PM
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
(1, 'qwerty', 'uabs', 'ocna', '098-7654', 'ajgsc,as.com'),
(2, 'adgf', 'sadfaf', 'sjdbgf', '098-7654', 'try@gmail'),
(5, 'k', 'k', 'k', 'k', 'k');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `Itemname` varchar(255) NOT NULL,
  `Price` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `Itemname`, `Price`, `Quantity`, `Description`) VALUES
(1, 'Green Bull', 39.99, 12, ''),
(2, 'Kyle is a plant', 1000000, 0, 'The One and Only this different'),
(3, 'Palm', 23, 0, 'Kyle'),
(4, 'Plant', 50, 25, 'Example'),
(5, 'Pumpkin', 13, 5, 'Pumpkin'),
(6, 'testplantnumber6', 32, 12, 'i add this to see how the table handle when it bigger than what it could physically handle'),
(7, 'Try', 21, 0, 'Try');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `Orderid` int(7) NOT NULL,
  `Itemname` varchar(255) NOT NULL,
  `Price` double NOT NULL,
  `Quantitysold` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`Orderid`, `Itemname`, `Price`, `Quantitysold`, `Total`) VALUES
(1, 'Palm', 21, 2, 42),
(2, 'Green Bull', 39.99, 1, 90),
(2, 'Plant', 50, 1, 90),
(3, 'Green Bull', 39.99, 1, 72),
(3, 'testplantnumber6', 32, 1, 72),
(6, 'Try', 21, 1, 21),
(7, 'Pumpkin', 13, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `ordertbl`
--

CREATE TABLE `ordertbl` (
  `Orderid` int(7) NOT NULL,
  `Customerid` int(7) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Grandtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertbl`
--

INSERT INTO `ordertbl` (`Orderid`, `Customerid`, `Date`, `Time`, `Grandtotal`) VALUES
(1, 1, '2019-04-01', '09:10:20', 0),
(2, 2, '2019-04-10', '19:21:08', 89.99000000000001),
(3, 2, '2019-04-10', '19:21:08', 161.98000000000002),
(4, 2, '2019-04-10', '19:21:08', 71.99000000000001),
(5, 2, '2019-04-16', '19:21:08', 32),
(6, 2, '2019-04-17', '19:21:08', 21),
(7, 5, '2019-04-18', '08:45:46', 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Userid` int(11) NOT NULL,
  `Username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(40) CHARACTER SET latin1 NOT NULL,
  `Role` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Userid`, `Username`, `Password`, `Role`) VALUES
(2, 'Deshad', 'Passcode', 'Admin'),
(12, 'Kyle', 'Password', 'SuperUser'),
(4, 'Kylea', 'Password', 'User'),
(6, 'Kyleit', 'Password', 'User'),
(7, 'Kylie', 'Password', 'User'),
(8, 'user', 'test', 'Admin'),
(9, 'user2', 'test', 'User');

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
  ADD PRIMARY KEY (`Itemname`),
  ADD KEY `INDEX` (`id`);

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
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `INDEX` (`Userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customerid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordertbl`
--
ALTER TABLE `ordertbl`
  MODIFY `Orderid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
