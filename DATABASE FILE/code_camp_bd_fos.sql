-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2023 at 08:03 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'ccbd', '0d89ec971a7bcfe26d68c177a9d53334', 'admin@gmail.com', '', '2023-02-22 07:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int NOT NULL,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Chikn Pecho (breast)', 'Pecho chicken inasal is a popular Filipino dish featuring marinated chicken breast (pecho) grilled over hot coals.', '129.00', 'pecho.jpg'),
(2, 1, 'Chikn Paa (leg and thigh)', 'Paa chicken inasal is grilled, marinated chicken leg flavored with a savory mix of vinegar, calamansi, lemongrass, garlic, ginger, and annatto oil.', '119.00', 'paa.jpg'),
(3, 1, 'Pork BBQ', 'Filipino pork BBQ is a popular street food made of marinated pork slices skewered on bamboo sticks and grilled over charcoal.', '40.00', 'bbq.jpg'),
(4, 1, 'Bangus Whole', 'Bangus, or milkfish, is a staple in Filipino cuisine, prepared in various ways. It is known for its mild and sweet flavor, served with rice and a vinegar-based dipping sauce.', '210.00', 'bangus.jpg'),
(5, 1, 'Laswa', 'Laswa is a healthy and light Filipino vegetable soup from the Visayas region. The dish is simple, nutritious, and naturally sweet from the vegetables, often enjoyed with rice.', '79.00', 'laswa.jpg'),
(6, 1, 'Batchoy Special', 'Batchoy is a rich and flavorful Filipino noodle soup from Iloilo. It features miki noodles in a savory pork or beef broth, topped with pork slices, liver and chicharon. ', '109.00', 'batchoy.jpg'),
(7, 2, 'Pecho (breast)', 'Pecho chicken inasal is a popular Filipino dish featuring marinated chicken breast (pecho) grilled over hot coals.', '139.00', 'pecho.jpg'),
(8, 2, 'Paa (leg and thigh)', 'Paa chicken inasal is grilled, marinated chicken leg flavored with a savory mix of vinegar, calamansi, lemongrass, garlic, ginger, and annatto oil.', '129.00', 'paa.jpg'),
(9, 2, 'Chicken Sisig', 'Chicken sisig is a Filipino dish made from chopped grilled or fried chicken, seasoned with onions, chili, calamansi, and mayonnaise.', '129.00', 'sisig.jpg'),
(10, 2, 'Pakpak', 'Pakpak Inasal is a Filipino grilled chicken wing dish, marinated in a flavorful mix of calamansi, garlic, vinegar, annatto oil, and spices.', '120.00', 'pakpak.jpg'),
(11, 2, 'Isol', 'Isol is a popular Filipino street food consisting of grilled chicken butt or tail.', '70.00', 'isol.jpg'),
(12, 2, 'Atay', 'Atay is a Filipino dish made from chicken or pork liver, often grilled, stir-fried, or cooked in a savory-sweet sauce.', '75.00', 'atay.jpg'),
(13, 2, 'Baticolon', 'Baticolon is a Filipino dish made from chicken gizzard, often marinated in soy sauce, calamansi, and spices before being grilled (inasal) or fried.', '55.00', 'baticolon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int NOT NULL,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int NOT NULL,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Dodoys Grill House', 'dodoysgrill@gmail.com', '0977039160', 'https://www.facebook.com/dodoysgrill', '11am', '10pm', 'mon-sat', '245 P. Ocampo Ave., Corner Primo Rivera St., Brgy. Lapaz, Makati, Philippines', 'Dodoys Grill House.jpg', '2025-02-05 12:48:35'),
(2, 2, 'Ilongga Bacolod Chicken Inasal House', 'Hiranimohit2020@gmail.com', '09912095031', 'https://www.facebook.com/profile.php?id=100083632417107', '11am', '11pm', 'mon-sat', 'Angel Pharmacy, Espina Compound, V. Rama Avenue, Guadalupe, Cebu City, Philippines', 'Ilongga Chicken Inasal.jpg', '2025-02-05 12:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Makati', '2025-02-05 03:08:35'),
(2, 'Cebu', '2025-02-05 03:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int NOT NULL,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
