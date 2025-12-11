-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2025 at 02:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE ecommerce;

SELECT ecommerce;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_name_ar` varchar(100) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `category_datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_name_ar` varchar(100) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_desc_ar` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_count` int(11) NOT NULL,
  `item_price` float NOT NULL,
  `item_discount` smallint(6) NOT NULL,
  `item_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `item_active` tinyint(4) NOT NULL DEFAULT 1,
  `item_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` varchar(100) NOT NULL,
  `user_verfiycode` int(11) NOT NULL,
  `user_approve` tinyint(4) NOT NULL DEFAULT 0,
  `user_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_verfiycode`, `user_approve`, `user_create`, `user_password`) VALUES
(2, 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:00:52', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(3, 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:06:00', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(4, 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:06:04', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(5, 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:06:05', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(6, 'Mohamed', 'Mohamed@gmail.com', '01022622262', 0, 0, '2025-12-02 08:11:42', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(7, 'Mohamed', 'Mohameld@gmail.com', '010226222612', 0, 0, '2025-12-02 08:18:31', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(8, 'new', 'Moha1meld@gmail.com', '010226222613', 15434, 0, '2025-12-04 13:30:41', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(10, 'ahmed', 'ahmed7777003330@gmail.com', '01056866999', 85475, 1, '2025-12-06 05:54:51', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(11, 'hejdn', 'jsjjdjr@gejd.jdkdm', '045646565964', 49912, 1, '2025-12-06 07:16:41', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(12, 'hdjjr', 'hejrj@jejrj.xonmr', '616569562662', 76217, 1, '2025-12-06 07:44:44', '92e487490e609251fab4c83887bea222726d6ddc'),
(13, 'bjdndnd', 'hsiekene@jejej.dirmr', '6461326299229', 58890, 1, '2025-12-06 07:53:02', '553c3d7752f0d0c49a50305a5acf483127220cc6'),
(14, 'gvbbbb', 'fhbbnn@vhjn.hbjn', '5396696869699', 14158, 1, '2025-12-06 07:54:43', 'b0ded3e6cabc3061975b043d483446a90da32f4d'),
(15, 'gdhjd', 'hdjdjjnfnn@hrjn.com', '656659599595', 15039, 1, '2025-12-06 08:54:26', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(16, 'ahmed', 'jejdkjrm@hdikr.jdjnd', '816653299294', 13917, 1, '2025-12-06 14:44:00', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(17, 'ddfgg', 'dfghjjj@fhh.ffg', '5896699999999', 67048, 1, '2025-12-07 10:31:44', 'a3ef75e129bef511831e82353e68c29851340ed0'),
(18, 'ahmed', 'ahjdjfnf@hejrk.jdkmr', '62656566266259', 69996, 1, '2025-12-07 14:46:22', 'a3ef75e129bef511831e82353e68c29851340ed0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_cat` (`item_cat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`item_cat`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE OR REPLACE VIEW itemsview as 
SELECT items.* , categories.* FROM items
INNER JOIN categories ON categories.category_id = items.item_cat