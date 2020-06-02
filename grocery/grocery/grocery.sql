-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2020 at 10:29 AM
-- Server version: 10.3.22-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slumber6_grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `CART`
--

CREATE TABLE `CART` (
  `EMAIL` varchar(50) NOT NULL,
  `PRODID` varchar(20) NOT NULL,
  `CQUANTITY` varchar(10) NOT NULL,
  `STATUS` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CART`
--

INSERT INTO `CART` (`EMAIL`, `PRODID`, `CQUANTITY`, `STATUS`) VALUES
('slumberjer@gmail.com', '9556231111110', '1', 'paid'),
('slumberjer@gmail.com', '8690890200011', '1', 'paid'),
('slumberjer@gmail.com', '9556570005309', '1', 'paid'),
('slumberjer@gmail.com', '4001724818908', '1', 'notpaid'),
('slumberjer@gmail.com', '9310155100137', '2', 'notpaid'),
('slumberjer@gmail.com', '9557305004116', '1', 'notpaid');

-- --------------------------------------------------------

--
-- Table structure for table `PAYMENT`
--

CREATE TABLE `PAYMENT` (
  `ORDERID` varchar(100) NOT NULL,
  `BILLID` varchar(10) NOT NULL,
  `TOTAL` varchar(10) NOT NULL,
  `USERID` varchar(100) NOT NULL,
  `DATE` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PAYMENT`
--

INSERT INTO `PAYMENT` (`ORDERID`, `BILLID`, `TOTAL`, `USERID`, `DATE`) VALUES
('slumberjer@gmail.com-01062020081753-n1dMi5hinE', 'o0ebzeqp', '33.60', 'slumberjer@gmail.com', '2020-06-01'),
('slumberjer@gmail.com-01062020082713-b6R7016714', 'rua9eu7g', '33.60', 'slumberjer@gmail.com', '2020-06-01'),
('slumberjer@gmail.com-01062020083751-GGFB0YXGCC', 'bk00nkhb', '11.300', 'slumberjer@gmail.com', '2020-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `ID` varchar(30) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PRICE` varchar(10) NOT NULL,
  `QUANTITY` varchar(10) NOT NULL,
  `WEIGHT` varchar(10) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `DATE` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PRODUCT`
--

INSERT INTO `PRODUCT` (`ID`, `NAME`, `PRICE`, `QUANTITY`, `WEIGHT`, `TYPE`, `DATE`) VALUES
('9557277320627', 'Peanut Strawberry', '3.90', '50', '250.00', 'Bread', '2020-05-15 14:00:55.767774'),
('9557368132061', 'Colormax', '12.90', '60', '350.00', 'Other', '2020-05-15 13:17:11.552804'),
('9556288049404', 'Family Clk Spray', '6.90', '20', '350.00', 'Other', '2020-05-15 13:12:55.465147'),
('9556107301102', 'Sanquick Oren', '12.50', '50', '600.00', 'Drink', '2020-05-15 14:01:53.486253'),
('9556570005309', 'Ice Fountain', '1.90', '60', '100.00', 'Drink', '2020-05-15 14:02:39.841299'),
('9310155204132', 'Macaroni Sab Remo', '6.50', '20', '500.00', 'Bread', '2020-05-15 14:04:17.311836'),
('9556031095856', 'Glo Pekat', '5.90', '20', '500.00', 'Other', '2020-05-15 14:05:53.050679'),
('9310155100137', 'Pasta San Remo', '6.90', '30', '500.00', 'Bread', '2020-05-15 14:08:30.011109'),
('9556755530015', 'Primo Bun Sandwich', '1.90', '20', '30.00', 'Bread', '2020-05-15 14:09:36.690276'),
('9556046700004', 'Daisy Seri Kaya', '4.00', '15', '150.00', 'Bread', '2020-05-15 14:10:41.220888'),
('9555222603795', 'Kiwi White Shoe', '2.90', '10', '150.00', 'Other', '2020-05-15 14:11:36.490231'),
('9300677002385', 'Pute Honey Capilano', '12.50', '11', '100.00', 'Bread', '2020-05-15 14:13:32.637502'),
('9555279103231', 'Tepung Ayam Goreng', '5.90', '10', '150.00', 'Bread', '2020-05-21 10:36:35.229003'),
('9557305004116', 'Vitagen', '4.70', '10', '250.00', 'Drink', '2020-05-26 11:03:06.243358'),
('9557941442037', 'Lazat Mini Bun', '5.40', '15', '100.00', 'Bread', '2020-05-26 11:04:19.737470'),
('9557305002402', 'Yogurt Marigold', '1.90', '20', '130.00', 'Drink', '2020-05-26 11:05:44.190543'),
('4001724818908', 'Risyorante Pizza', '9.50', '10', '40.00', 'Bread', '2020-05-26 11:06:47.122215'),
('9555022301884', 'Mamee Ayam', '10.90', '10', '200.00', 'Other', '2020-05-26 11:08:09.339781'),
('9556276000257', 'Cheese Sausage', '4.90', '10', '300.00', 'Meat', '2020-05-26 11:09:20.699874'),
('9555018501014', 'Tempura Fish', '15.50', '10', '550.00', 'Meat', '2020-05-26 11:10:32.350258'),
('8690890200011', 'Pasta Selva', '6.90', '20', '500.00', 'Other', '2020-05-26 11:11:50.010806'),
('9555719712993', 'Custard Muffin', '4.00', '10', '300.00', 'Bread', '2020-05-26 11:12:58.923413'),
('9556231111110', 'Gardenia Classic', '2.50', '10', '400.00', 'Bread', '2020-05-26 11:14:04.345336'),
('', '', '', '', '', '', '2020-06-02 00:59:07.087403');

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE` varchar(12) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `CREDIT` varchar(5) NOT NULL,
  `VERIFY` varchar(1) NOT NULL,
  `DATEREG` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`NAME`, `EMAIL`, `PHONE`, `PASSWORD`, `CREDIT`, `VERIFY`, `DATEREG`) VALUES
('Ahmad Hanis', 'slumberjer@gmail.com', '0194702493', '7c4a8d09ca3762af61e59520943dc26494f8941b', '10', '1', '2020-03-12'),
('unregistered', 'unregistered@grocery.com', '123456789', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '0', '1', '2020-05-07'),
('Jing Yee', 'albeeyee981123@gmail.com', '01110529115', '6b63bd170795f803da3ba35dcd9374a455b4a110', '0', '1', '2020-05-12'),
('Ben', 'ben@gmail.com', '0148392012', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0', '1', '2020-05-14'),
('', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '0', '1', '2020-05-15'),
('abc', 'abc123@gmail.com', '0123456789', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '0', '1', '2020-05-16'),
('Jm', 'jingmin1998@hotmail.com', '0123456789', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0', '1', '2020-05-16'),
('Haha', 'a', '1', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '0', '1', '2020-05-18'),
('EU Jin', 'tej9812@gmail.com', '0169500480', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0', '1', '2020-05-19'),
('lala	', 'lala@gmail.com	', '0132154654	', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0', '1', '2020-05-19'),
('fakhruddin	', 'fakhruddin@gmail.com	', '011234567899', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '0', '1', '2020-05-19'),
('Fakhruddin	', 'alanberamboi@gmail.com	', '01119402275	', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '0', '1', '2020-05-20'),
('Progamer', 'gamerzgg77@gmail.com', '0123456789', 'a0c92c122692b518405806c7ea83a350edac07af', '0', '1', '2020-05-21'),
('progamer', 'prog@gmail.com', '0195234565', 'a0c92c122692b518405806c7ea83a350edac07af', '0', '1', '2020-05-21'),
('admin', 'admin@grocery.com', '049955993', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0', '1', '2020-05-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`EMAIL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
