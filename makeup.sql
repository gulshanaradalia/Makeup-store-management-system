-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 06:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makeup`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `First_name` varchar(50) DEFAULT NULL,
  `Last_name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `First_name`, `Last_name`, `Email`, `Address`) VALUES
(101, 'Dalia', 'Akter', 'dalia@gmail.com', 'Savar'),
(102, 'Swati', 'Akter', 'swati@gmail.com', 'Hemayatpur'),
(103, 'Yana', 'Akter', 'yana@gmail.com', 'Alom nogor'),
(104, 'Esha', 'Dewon', 'esha@gmail.com', 'Uttora'),
(105, 'Tasnim', 'Akter', 'tasnim@gmail.com', 'Naogao'),
(106, 'Dina', 'Islam', 'dina@gmail.com', 'Mirpur'),
(107, 'Maria', 'Islam', 'maria@gmail.com', 'Joynabari'),
(108, 'Taba', 'Sorker', 'taba@gmail.com', 'Norshindi'),
(109, 'Ridy', 'Akter', 'ridy@gmail.com', 'Khagan'),
(110, 'Sadia', 'Islam', 'sadia@gmail.com', 'Savar'),
(111, 'Ema', 'Aktetr', 'ema@gmail.com', 'Faridpur'),
(112, 'Suchi', 'Akter', 'suchin@gmail.com', 'Bank town'),
(113, 'Lima', 'Akter', 'lima@gmail.com', 'Borobari'),
(114, 'Munni', 'hossian', 'munni@gmail.com', 'Mirpur'),
(115, 'Nipa', 'Dewon', 'nipa@gmail.com', 'Colma'),
(116, 'Nishu', 'Dewon', 'nishu@gmail.com', 'Uttora'),
(117, 'Yeasfa', 'Madbor', 'yeasfa@gmail.com', 'Mirpur'),
(118, 'Masuma', 'Akter', 'masuma@gmail.com', 'Savar'),
(119, 'Sharmin', 'Akter', 'sharmin@gmail;.com', 'Dhanmondi'),
(120, 'Afsana', 'Zaman', 'afsana@gmail.com', 'Amin Bazar');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `orderitem_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantityordered` int(11) DEFAULT NULL,
  `Unitprice` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`orderitem_id`, `order_id`, `product_id`, `quantityordered`, `Unitprice`) VALUES
(201, 1001, 1, 2, 15.99),
(202, 1001, 2, 1, 29.99),
(203, 1002, 3, 4, 9.99),
(204, 1002, 4, 3, 19.99),
(205, 1003, 5, 1, 39.99),
(206, 1003, 6, 2, 24.99),
(207, 1004, 7, 5, 5.99),
(208, 1004, 8, 2, 18.99),
(209, 1005, 10, 3, 12.99),
(210, 1006, 11, 4, 8.99),
(211, 1006, 12, 2, 22.99),
(212, 1007, 13, 1, 27.99),
(213, 1007, 14, 6, 6.99),
(214, 1008, 15, 3, 17.99),
(215, 1008, 16, 1, 31.99),
(216, 1009, 17, 2, 25.99),
(217, 1009, 18, 5, 11.99),
(218, 1010, 19, 2, 15.49),
(219, 1010, 19, 2, 19.49),
(220, 1010, 20, 1, 33.49);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `total_amount`) VALUES
(1001, 101, '2023-01-10', 75.50),
(1002, 102, '2023-01-15', 120.00),
(1003, 103, '2023-01-18', 89.99),
(1004, 104, '2023-01-22', 55.00),
(1005, 105, '2023-02-03', 150.75),
(1006, 106, '2023-02-10', 60.00),
(1007, 107, '2023-02-14', 200.20),
(1008, 108, '2023-02-20', 80.50),
(1009, 109, '2023-02-25', 99.99),
(1010, 110, '2023-03-01', 250.00),
(1011, 111, '2023-03-10', 49.95),
(1012, 112, '2023-03-15', 70.25),
(1013, 113, '2023-03-18', 160.50),
(1014, 114, '2023-03-25', 100.00),
(1015, 115, '2023-04-01', 40.75),
(1016, 116, '2023-04-10', 90.50),
(1017, 117, '2023-04-12', 120.75),
(1018, 118, '2023-04-20', 115.20),
(1019, 119, '2023-04-25', 140.00),
(1020, 120, '2023-05-01', 230.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `brand`, `category`, `price`) VALUES
(1, 'Perfect Matte Lipstick', 'BeautyCo', 'Lipstick', 15.99),
(2, 'Ultra Glow Foundation', 'Radiant', 'Foundation', 25.49),
(3, 'Luxe Eyeshadow Palette', 'GlamQueen', 'Eyeshadow', 35.00),
(4, 'Volume Mascara', 'LashPro', 'Mascara', 12.99),
(5, 'Smooth Concealer', 'PerfectSkin', 'Concealer', 18.00),
(6, 'Hydrating Lip Balm', 'FreshLips', 'Lip Balm', 5.50),
(7, 'Long-Lasting Eyeliner', 'Precision', 'Eyeliner', 9.99),
(8, 'Sheer Blush', 'GlowUp', 'Blush', 14.75),
(9, 'Mineral Powder Foundation', 'NaturalLook', 'Foundation', 20.00),
(10, 'Nude Eyeshadow Trio', 'NudeEssence', 'Eyeshadow', 22.99),
(11, 'Matte Liquid Lipstick', 'BeautyCo', 'Lipstick', 16.49),
(12, 'Creamy Highlighter Stick', 'ShineOn', 'Highlighter', 13.50),
(13, 'Compact Powder', 'PerfectSkin', 'Powder', 10.99),
(14, 'Waterproof Mascara', 'LashPro', 'Mascara', 15.00),
(15, 'Gel Eyeliner', 'Precision', 'Eyeliner', 11.25),
(16, 'Tinted Lip Oil', 'FreshLips', 'Lip Oil', 7.50),
(17, 'Soft Matte Blush', 'GlowUp', 'Blush', 12.99),
(18, 'Satin Finish Foundation', 'Radiant', 'Foundation', 30.00),
(19, 'Brightening Concealer', 'PerfectSkin', 'Concealer', 17.00),
(20, 'Shimmer Eyeshadow Quad', 'GlamQueen', 'Eyeshadow', 27.99);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `Supplierid` int(11) NOT NULL,
  `Suppliername` varchar(30) DEFAULT NULL,
  `Contactperson` varchar(50) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`Supplierid`, `Suppliername`, `Contactperson`, `Email`, `Address`) VALUES
(301, 'Rahman Trading Co.', 'Rakib Rahman', 'rakib.rahman@gmail.com', 'Dhaka'),
(302, 'Amin Importers', 'Nabila Amin', 'nabila.amin@gamil.com', 'Chittagong'),
(303, 'Shafiq Supplies', 'Shafiqur Rahman', 'shafiq.rahman@gmail.com', 'Sylhet'),
(304, 'Hasan Exports', 'Farzana Hasan', 'farzana.hasan@gmail.com', 'Khulna'),
(305, 'Khan Enterprises', 'Imran Khan', 'imran.khan@gmail.com', 'Rajshahi'),
(306, 'Nasim Wholesalers', 'Nasim Ahmed', 'nasim.ahmed@gmail.com', 'Barisal'),
(307, 'Jahan Traders', 'Sultana Jahan', 'sultana.jahan@gmail.com', 'Rangpur'),
(308, 'Akhter Distribution', 'Akhter Hossain', 'akhter.hossain@gmail.com', 'Mymensingh'),
(309, 'Anika Imports', 'Anika Sultana', 'anika.sultana@gmail.com', 'Comilla'),
(310, 'Fahim Supply Co.', 'Fahim Rahman', 'fahim.rahman@gmail.com', 'Narayanganj'),
(311, 'Rahman & Sons', 'Faysal Rahman', 'faysal.rahman@gmail.com', 'Jessore'),
(312, 'Habib Trading', 'Habibur Rahman', 'habibur.rahman@gmail.com', 'Bogura'),
(313, 'Samiha Ventures', 'Samiha Islam', 'samiha.islam@gmail.com', 'Feni'),
(314, 'Jannat Supplies', 'Jannat Ara', 'jannat.ara@gmail.com', 'Tangail'),
(315, 'Farhan Global', 'Farhan Ali', 'farhan.ali@gmail.com', 'Noakhali'),
(316, 'Tamim Enterprises', 'Tamim Hasan', 'tamim.hasan@gmail.com', 'Gazipur'),
(317, 'Mitu Solutions', 'Mitu Akter', 'mitu.akter@gmail.com', 'Manikganj'),
(318, 'Arif Imports', 'Arif Mahmud', 'arif.mahmud@gmail.com', 'Pabna'),
(319, 'Shorna Distributors', 'Shorna Islam', 'shorna.islam@gmail.com', 'Faridpur'),
(320, 'Mahmud Supplies', 'Mahmud Hossain', 'mahmud.hossain@gmailcom', 'Cox’s Bazar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`orderitem_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`Supplierid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
