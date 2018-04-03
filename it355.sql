-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 10:58 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it355`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `authoritiesId` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `authority` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`authoritiesId`, `username`, `authority`) VALUES
(5, 'admin', 'ROLE_ADMIN'),
(11, 'ana', 'ROLE_USER'),
(9, 'milan', 'ROLE_USER'),
(10, 'sara', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerEmail` varchar(50) NOT NULL,
  `customerPhone` varchar(50) NOT NULL,
  `customerStreetName` varchar(50) NOT NULL,
  `customerCity` varchar(50) NOT NULL,
  `customerCountry` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerId`, `customerName`, `customerEmail`, `customerPhone`, `customerStreetName`, `customerCity`, `customerCountry`, `username`, `password`, `enabled`) VALUES
(4, 'bojana', 'bojana@bojana.com', '0691324231', 'Kralja Petra 13', 'Beograd', 'Srbija', 'bojana', 'bojana', 1),
(5, 'Milan', 'milan@milan.com', '063323432', 'Njegoseva 55', 'Beograd', 'Srbija', 'milan', 'milan', 1),
(6, 'Sara', 'sara@sara.com', '064565342', 'Bilecka 33', 'Beograd', 'Srbija', 'sara', 'sara', 1),
(7, 'Ana', 'ana@gmail.com', '064-487202', 'Pozeska 25', 'Beograd', 'Srbija', 'ana', 'ana123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordersId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ordersName` varchar(50) DEFAULT NULL,
  `dateCreation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ordersId`, `username`, `ordersName`, `dateCreation`) VALUES
(5, 'bojana', 'New Order', '2018-03-25'),
(6, 'bojana', 'New Order', '2018-03-25'),
(7, 'bojana', 'New Order', '2018-03-31'),
(8, 'ana', 'New Order', '2018-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `ordersdetail`
--

CREATE TABLE `ordersdetail` (
  `ordersDetailId` int(11) NOT NULL,
  `productId` int(11) NOT NULL DEFAULT '0',
  `ordersId` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordersdetail`
--

INSERT INTO `ordersdetail` (`ordersDetailId`, `productId`, `ordersId`, `price`, `quantity`) VALUES
(5, 23, 5, '550.00', 1),
(6, 24, 6, '298.00', 2),
(7, 23, 7, '550.00', 1),
(8, 24, 8, '298.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `productDescription` varchar(256) DEFAULT NULL,
  `productCategory` varchar(50) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `productStatus` varchar(50) DEFAULT NULL,
  `unitInStock` int(11) DEFAULT NULL,
  `productManufacturer` varchar(50) DEFAULT NULL,
  `productImage` varchar(250) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `productDescription`, `productCategory`, `productPrice`, `productStatus`, `unitInStock`, `productManufacturer`, `productImage`, `CATEGORY_ID`, `id`, `description`, `name`, `price`) VALUES
(23, 'Capriolo', 'bicikl', 'Deca', 220, 'active', 2, 'Capriolo', '/RentABike/resources/images/slika4.png', NULL, 0, NULL, NULL, NULL),
(24, 'Bianchi', 'bicikl', 'deca', 298, 'active', 4, 'Bianchi', '/RentABike/resources/images/slika6.png', NULL, 0, NULL, NULL, NULL),
(25, 'BH Bikes', 'bicikl', 'Odrasli', 330, 'active', 3, 'BH Bikes', '/RentABike/resources/images/slika5.png', NULL, 0, NULL, NULL, NULL),
(26, 'Pinarello', 'bicikl', 'Deca', 250, NULL, 4, 'Pinarello', '/RentABike/resources/images/b.jpg', NULL, 0, NULL, NULL, NULL),
(27, 'Rocky Mountain', 'bicikl', 'Odrasli', 170, 'active', 2, 'Horus', '/RentABike/resources/images/slika3.jpg', NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `username`, `password`, `enabled`) VALUES
(5, 'admin', 'admin', 1),
(7, 'neko', 'neko', 1),
(8, 'bojana', 'bojana', 1),
(9, 'milan', 'milan', 1),
(10, 'sara', 'sara', 1),
(11, 'ana', 'ana123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`authoritiesId`),
  ADD UNIQUE KEY `uni_username_role` (`authority`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerId`),
  ADD UNIQUE KEY `uni_username_email` (`customerEmail`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordersId`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD PRIMARY KEY (`ordersDetailId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `ordersId` (`ordersId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `FK_aw9jgye45klh3ktuv4re138cd` (`CATEGORY_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`),
  ADD KEY `Index 2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorities`
--
ALTER TABLE `authorities`
  MODIFY `authoritiesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ordersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  MODIFY `ordersDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_customer_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_customer` FOREIGN KEY (`username`) REFERENCES `customer` (`username`);

--
-- Constraints for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD CONSTRAINT `FK_ordersdetail_orders` FOREIGN KEY (`ordersId`) REFERENCES `orders` (`ordersId`),
  ADD CONSTRAINT `FK_ordersdetail_product` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_aw9jgye45klh3ktuv4re138cd` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
