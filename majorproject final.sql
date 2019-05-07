-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 08, 2019 at 01:26 AM
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
  `Email` varchar(30) NOT NULL,
  `Deleted` varchar(5) NOT NULL DEFAULT 'False'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customerid`, `FirstName`, `Lastname`, `Address`, `Telephone`, `Email`, `Deleted`) VALUES
(1, 'asd', 'asdD', '12', 'as', 'asd', 'False');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `Itemname` varchar(255) NOT NULL,
  `Price` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Deleted` varchar(5) NOT NULL DEFAULT 'False'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `Itemname`, `Price`, `Quantity`, `Description`, `Deleted`) VALUES
(1, 'aDASFF', 12.012, 5, 'wef', 'False'),
(2, 'asd', 12, 12, 'qwd', 'True'),
(3, 'TEST PLANT', 124, 10, 'TEST', 'False');

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
(2, 'TEST PLANT', 124, 1, 124),
(3, 'aDASFF', 12.012, 2, 12),
(4, 'TEST PLANT', 124, 1, 124);

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
(1, 1, '2019-05-15', '05:43:36', 12.012),
(2, 1, '2019-05-14', '05:45:46', 124),
(3, 1, '2019-05-15', '05:46:14', 12.012),
(4, 1, '2019-05-01', '05:51:42', 124);

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
(14, 'kyliew', 'ys', 'User'),
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
  MODIFY `Customerid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ordertbl`
--
ALTER TABLE `ordertbl`
  MODIFY `Orderid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`Orderid`) REFERENCES `ordertbl` (`Orderid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`Itemname`) REFERENCES `inventory` (`Itemname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordertbl`
--
ALTER TABLE `ordertbl`
  ADD CONSTRAINT `ordertbl_ibfk_1` FOREIGN KEY (`Customerid`) REFERENCES `customers` (`Customerid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
