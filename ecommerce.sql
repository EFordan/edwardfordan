-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2024 at 06:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` text NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `status`, `quantity`) VALUES
(131, 3, 4, 'CHECKED_OUT', 1),
(132, 3, 5, 'CHECKED_OUT', 1),
(133, 3, 5, 'CHECKED_OUT', 1),
(134, 3, 4, 'CHECKED_OUT', 1),
(135, 3, 5, 'CHECKED_OUT', 1),
(136, 3, 4, 'CHECKED_OUT', 1),
(137, 3, 4, 'CHECKED_OUT', 1),
(139, 3, 5, 'CHECKED_OUT', 1),
(140, 3, 6, 'CHECKED_OUT', 1),
(141, 10, 4, 'IN_CART', 1),
(142, 10, 5, 'IN_CART', 1),
(143, 10, 6, 'IN_CART', 1),
(144, 11, 4, 'CHECKED_OUT', 1),
(145, 11, 5, 'CHECKED_OUT', 1),
(146, 11, 5, 'CHECKED_OUT', 1),
(147, 11, 6, 'CHECKED_OUT', 1),
(150, 11, 5, 'CHECKED_OUT', 1),
(151, 11, 6, 'CHECKED_OUT', 1),
(152, 11, 4, 'CHECKED_OUT', 1),
(154, 11, 4, 'CHECKED_OUT', 1),
(157, 11, 5, 'CHECKED_OUT', 1),
(158, 11, 6, 'CHECKED_OUT', 1),
(159, 11, 4, 'CHECKED_OUT', 1),
(166, 11, 6, 'IN_CART', 1),
(167, 11, 5, 'IN_CART', 1),
(168, 11, 4, 'IN_CART', 1),
(169, 15, 4, 'IN_CART', 1),
(170, 15, 5, 'IN_CART', 1),
(171, 15, 6, 'IN_CART', 1),
(173, 18, 5, 'CHECKED_OUT', 1),
(174, 18, 6, 'CHECKED_OUT', 1),
(175, 18, 4, 'CHECKED_OUT', 1),
(176, 18, 4, 'CHECKED_OUT', 1),
(177, 18, 5, 'CHECKED_OUT', 1),
(178, 18, 6, 'CHECKED_OUT', 1),
(180, 18, 6, 'CHECKED_OUT', 1),
(181, 18, 4, 'CHECKED_OUT', 1),
(182, 18, 5, 'CHECKED_OUT', 1),
(183, 18, 6, 'CHECKED_OUT', 1),
(184, 18, 5, 'CHECKED_OUT', 1),
(185, 18, 4, 'CHECKED_OUT', 1),
(186, 18, 6, 'CHECKED_OUT', 1),
(190, 18, 6, 'CHECKED_OUT', 1),
(191, 18, 5, 'CHECKED_OUT', 1),
(192, 18, 4, 'CHECKED_OUT', 1),
(193, 18, 5, 'CHECKED_OUT', 1),
(194, 18, 6, 'CHECKED_OUT', 1),
(195, 18, 4, 'CHECKED_OUT', 1),
(196, 18, 5, 'CHECKED_OUT', 1),
(201, 18, 4, 'CHECKED_OUT', 1),
(202, 18, 5, 'CHECKED_OUT', 1),
(203, 18, 6, 'CHECKED_OUT', 1),
(204, 18, 5, 'CHECKED_OUT', 1),
(205, 18, 6, 'CHECKED_OUT', 1),
(206, 18, 4, 'CHECKED_OUT', 1),
(207, 18, 5, 'CHECKED_OUT', 1),
(208, 18, 5, 'CHECKED_OUT', 1),
(209, 18, 6, 'CHECKED_OUT', 1),
(210, 18, 4, 'CHECKED_OUT', 1),
(211, 18, 6, 'CHECKED_OUT', 1),
(212, 18, 5, 'CHECKED_OUT', 1),
(213, 18, 4, 'CHECKED_OUT', 1),
(214, 18, 5, 'CHECKED_OUT', 1),
(215, 18, 4, 'CHECKED_OUT', 1),
(216, 18, 6, 'CHECKED_OUT', 1),
(217, 18, 4, 'CHECKED_OUT', 1),
(218, 18, 5, 'CHECKED_OUT', 1),
(219, 18, 4, 'CHECKED_OUT', 1),
(220, 18, 6, 'CHECKED_OUT', 1),
(221, 18, 6, 'CHECKED_OUT', 1),
(222, 18, 5, 'CHECKED_OUT', 1),
(223, 18, 4, 'CHECKED_OUT', 1),
(224, 18, 4, 'CHECKED_OUT', 1),
(225, 18, 5, 'CHECKED_OUT', 1),
(226, 18, 6, 'CHECKED_OUT', 1),
(227, 18, 4, 'CHECKED_OUT', 1),
(228, 18, 5, 'CHECKED_OUT', 1),
(229, 18, 6, 'CHECKED_OUT', 1),
(230, 18, 6, 'CHECKED_OUT', 1),
(231, 18, 5, 'CHECKED_OUT', 1),
(232, 18, 4, 'CHECKED_OUT', 1),
(233, 18, 4, 'IN_CART', 1),
(234, 18, 5, 'IN_CART', 1),
(235, 18, 6, 'IN_CART', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` double NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `total_amount`, `order_status`) VALUES
(21, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(22, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(23, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(24, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(25, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(26, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(27, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(28, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(29, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(30, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(31, 3, '2024-08-19', 43999, 'CHECKED_OUT'),
(32, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(33, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(34, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(35, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(36, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(37, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(38, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(39, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(40, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(41, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(42, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(43, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(44, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(45, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(46, 3, '2024-08-24', 43999, 'CHECKED_OUT'),
(47, 3, '2024-08-28', 43999, 'CHECKED_OUT'),
(48, 3, '2024-08-28', 43999, 'CHECKED_OUT'),
(49, 3, '2024-08-28', 43999, 'CHECKED_OUT'),
(50, 3, '2024-08-28', 43999, 'CHECKED_OUT'),
(51, 3, '2024-08-28', 43999, 'CHECKED_OUT'),
(52, 3, '2024-08-28', 43999, 'CHECKED_OUT'),
(53, 3, '2024-08-28', 43999, 'CHECKED_OUT'),
(54, 3, '2024-08-28', 43999, 'CHECKED_OUT'),
(55, 3, '2024-08-28', 43999, 'CHECKED_OUT');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image_path`) VALUES
(4, 'Canon EOS 850D', 'Canon EOS 850D is a versatile DSLR camera ideal for photography enthusiasts. It features a 24.1 MP APS-C sensor, Dual Pixel autofocus, and 4K video recording for stunning image quality and smooth video capture. With advanced features like eye detection AF and built-in Wi-Fi/Bluetooth for easy sharing, EOS 850D is perfect for capturing both high-quality photos and videos.', 4999, 'images/1.jpg'),
(5, 'Harohapi Misaki Okusawa Keychain', 'A Misaki Okusawa Keychain from BanG Dream Girls Band Party where she rocking her role as a DJ. ', 1299, 'images/2.jpg'),
(6, 'MyGO!!!!! Soyo Nagasaki Marketable Plushy', 'A marketable plushy from Bushiroad starring Soyo Nagasaki the Bassist from MyGO!!!!! ', 2199, 'images/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `middle_name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `password`) VALUES
(1, 'Edward', 'Fordan', 'Ford', 'efordan@email.com', '123456'),
(3, 'Robin', 'Williams', 'Yeah', 'effff@email.com', '$2y$10$M2IxMGQxNjRjYTU4NGJjZ.PwT/Hgd081IB5XpT.VQ.lSZ7jHzNEZG'),
(5, '', '', '', '123123123@email.com', '$2y$10$YTEyNGY3OTI3Y2VkNjE1Nu89Wid8WvWduo.YioKXsxHg.9tzWF3Jm'),
(6, '', '', '', '345345345@rmil.aocm', '$2y$10$ZmYyZDY0MmJhNDI0NGNhYO4rz/FnKCfd0GAZGqkD3Tjjcf9zAglLq'),
(15, '123', '456', '345', '123456@gc.ph', '$2y$10$OWZjYzQ1NGE0ODNiMTEwM.BuI0NmczGSMJ7tCYsosRzZFCYJ1JLui'),
(17, 'Edward Mari', 'Fordan', 'Aragon', '123456@gc.ph', '$2y$10$ZDU0Y2Q3MmM3MmMxNjgzYe1TYOFCBU2bPuHhFgusiL.Wvq0vPQZDm'),
(18, '123', '345', '345', 'gc@edu.ph', '$2y$10$NzA2N2NhOTAzYWMwYmE3Muz/l9zmwV/k2Tr1z21GwIZH/5Jkzcku.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
