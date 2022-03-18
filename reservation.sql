-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 09:53 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `annouce_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(6, 'Salad'),
(7, 'Pasta'),
(9, 'Soup'),
(10, 'Vegetable'),
(11, 'Chicken'),
(12, 'Fish'),
(13, 'Pork'),
(14, 'Beef'),
(15, 'Dessert'),
(16, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `combo_id` int(11) NOT NULL,
  `combo_name` varchar(100) NOT NULL,
  `combo_price` decimal(10,2) NOT NULL,
  `combo_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`combo_id`, `combo_name`, `combo_price`, `combo_type`) VALUES
(1, 'Package 1', '150.00', 'birthday'),
(2, 'Package 2', '250.00', ''),
(3, 'Package 3', '50.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `combo_details`
--

CREATE TABLE `combo_details` (
  `combo_details_id` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo_details`
--

INSERT INTO `combo_details` (`combo_details_id`, `combo_id`, `menu_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 1),
(4, 2, 3),
(5, 3, 2),
(6, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_what` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_where` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_what`, `event_date`, `event_time`, `event_where`) VALUES
(1, 'Company Christmas Party', '2017-12-15', '10:39:00', 'Gym');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_last` varchar(15) NOT NULL,
  `member_first` varchar(15) NOT NULL,
  `member_status` varchar(10) NOT NULL,
  `member_contact` varchar(30) NOT NULL,
  `member_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `cat_id` int(30) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `menu_desc` varchar(100) NOT NULL,
  `menu_price` decimal(10,2) NOT NULL,
  `menu_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `cat_id`, `subcat_name`, `menu_desc`, `menu_price`, `menu_pic`) VALUES
(1, 'Fish Fillet', 12, 'Lunch and Dinner', 'Fish Fillet cook on the spot w/ 2 sauces', '100.00', 'indian-food-platter.jpg'),
(2, 'Bakareta', 2, 'pork', 'Pork Adobo', '100.00', 'indian-food-platter.jpg'),
(3, 'Chicken Curry', 6, 'Lunch and Dinner', 'Chicken Curry', '50.00', '501247.jpg'),
(4, 'Buko Pandan', 9, 'Mirienda', 'Buko Pandan', '45.00', 'Buko Pandan,d.jpg'),
(5, 'Mushroom Soup', 9, 'Lunch and Dinner', 'Mushroom', '0.00', 'default.gif'),
(6, 'Crab and Corn Soup', 9, 'Lunch and Dinner', 'Crab and Corn Soup', '0.00', 'default.gif'),
(7, 'Creamy Corn Soup', 9, 'Lunch and Dinner', 'Creamy Corn Soup', '0.00', 'default.gif'),
(8, 'Pumpkin Soup', 9, 'Lunch and Dinner', 'Pumpkin Soup', '0.00', 'default.gif'),
(9, 'Shabu-Shabu Mix Soup', 9, 'Lunch and Dinner', 'Shabu-Shabu Mix Soup', '0.00', 'default.gif'),
(10, 'Almondigas Soup', 9, 'Lunch and Dinner', 'Almondigas Soup', '0.00', 'default.gif'),
(11, 'Sea Chowder', 9, 'Lunch and Dinner', 'Sea Chowder', '0.00', 'default.gif'),
(12, 'Pasta w/ 2 sauce', 7, 'Lunch and Dinner', 'Pasta w/ 2 Sauce', '0.00', 'default.gif'),
(13, 'Cheesy Baked Mac ', 7, 'Lunch and Dinner', 'Cheesy Baked Mac', '0.00', 'default.gif'),
(14, 'Creamy Macaroni and Cheese', 7, 'Lunch and Dinner', 'Creamy Macaroni and Cheese', '0.00', 'default.gif'),
(15, 'Lasagna', 7, 'Lunch and Dinner', 'Lasagna', '0.00', 'default.gif'),
(16, 'Meatball Spaghetti', 7, 'Lunch and Dinner', 'Meatball Spaghetti', '0.00', 'default.gif'),
(17, 'Waldorf Salad', 6, 'Lunch and Dinner', 'Waldorf Salad', '0.00', 'default.gif'),
(18, 'Macaroni Salad', 6, 'Lunch and Dinner', 'Macaroni Salad', '0.00', 'default.gif'),
(19, 'Potato Salad', 6, 'Lunch and Dinner', 'Potato Salad', '0.00', 'default.gif'),
(20, 'Tossed Green Salad', 6, 'Lunch and Dinner', 'Tossed Green Salad', '0.00', 'default.gif'),
(21, 'Asian Salad', 6, 'Lunch and Dinner', 'Asian Salad', '0.00', 'default.gif'),
(22, 'Fried Lumpiang Ubod', 10, 'Lunch and Dinner', 'Fried Lumpiang Ubod', '0.00', 'default.gif'),
(23, 'Kare-Kare', 10, 'Lunch and Dinner', 'Kare-Kare', '0.00', 'default.gif'),
(24, 'Chopsuey', 10, 'Lunch and Dinner', 'Chopsuey', '0.00', 'default.gif'),
(25, 'Stir Fry Mixed Vegetable', 10, 'Lunch and Dinner', 'Stir Fry Mixed Vegetable ', '0.00', 'default.gif'),
(26, 'Buttered Mixed Vegetable w/ Quail Eggs', 14, 'Lunch and Dinner', 'Buttered Mixed Vegetable w/ Quail Eggs', '0.00', 'default.gif'),
(27, 'Pancit Mix', 10, 'Lunch and Dinner', 'Pancit Mix', '0.00', 'default.gif'),
(28, 'Cordon Bleu', 11, 'Lunch and Dinner', 'Cordon Bleu', '0.00', 'default.gif'),
(29, 'Chicken Pastel', 11, 'Lunch and Dinner', 'Chicken Pastel', '0.00', 'default.gif'),
(30, 'Flambe', 11, 'Lunch and Dinner', 'Flambe', '0.00', 'default.gif'),
(31, 'Teriyaki', 11, 'Lunch and Dinner', 'Teriyaki', '0.00', 'default.gif'),
(32, 'Lemon Herb Roasted Chicken', 11, 'Lunch and Dinner', 'Lemon Herb Roasted Chicken', '0.00', 'default.gif'),
(33, 'Fried Chicken wtith Mashed Potato', 11, 'Lunch and Dinner', 'Fried Chicken wtith Mashed Potato', '0.00', 'default.gif'),
(34, 'Chicken in Cream w/ Ham and Asparagus', 11, 'Lunch and Dinner', 'Chicken in Cream w/ Ham and Asparagus', '0.00', 'default.gif'),
(35, 'Caramalized Chicken in Garlic Mayo', 11, 'Lunch and Dinner', 'Caramalized Chicken in Garlic Mayo', '0.00', 'default.gif'),
(36, 'Spicy Honey Chicken', 11, 'Lunch and Dinner', 'Spicy Honey Chicken', '0.00', 'default.gif'),
(37, 'Chicken Peri-Peri', 11, 'Lunch and Dinner', 'Chicken Peri-Peri', '0.00', 'default.gif'),
(38, 'Chicken Alexander', 11, 'Lunch and Dinner', 'Chicken Alexander', '0.00', 'default.gif'),
(39, 'Rosemary Fried Chicken', 14, 'Drinks', 'Rosemary Fried Chicken', '0.00', 'default.gif');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `rid`, `payment_date`) VALUES
(1, 2000, 42, '2017-04-28'),
(2, 10000, 48, '2019-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `rid` int(11) NOT NULL,
  `r_date` date NOT NULL,
  `r_time` time NOT NULL,
  `r_last` varchar(30) NOT NULL,
  `r_first` varchar(30) NOT NULL,
  `r_contact` varchar(30) NOT NULL,
  `r_email` varchar(50) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `r_type` varchar(30) NOT NULL,
  `r_ocassion` varchar(50) NOT NULL,
  `r_motif` varchar(30) NOT NULL,
  `team_id` int(11) NOT NULL,
  `r_venue` varchar(100) NOT NULL,
  `payable` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `r_status` varchar(10) NOT NULL,
  `date_reserved` date NOT NULL,
  `r_code` varchar(10) NOT NULL,
  `pax` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `modeofpayment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rid`, `r_date`, `r_time`, `r_last`, `r_first`, `r_contact`, `r_email`, `r_address`, `r_type`, `r_ocassion`, `r_motif`, `team_id`, `r_venue`, `payable`, `balance`, `r_status`, `date_reserved`, `r_code`, `pax`, `combo_id`, `price`, `modeofpayment`) VALUES
(42, '2017-05-04', '14:00:00', 'Pipez', 'Lee ', '09001914000', 'e@gmail.com', 'Bago City', 'buffet', 'Baptism', 'White', 0, 'Bago City', '2500.00', '500.00', 'Approved', '2017-04-28', '5xkKxwWasn', 50, 3, '50.00', 'Bank to Bank'),
(45, '2017-06-07', '01:00:00', 'klj', 'kkj', 'kjk', 'emoblazz@gmail.com', 'kjk', 'buffet', 'Baptism', 'jjj', 0, 'lkjkj', '1500.00', '1500.00', 'pending', '2017-04-28', 'Bg0GueD1Vg', 10, 1, '150.00', 'Bank to Bank'),
(46, '2017-08-07', '01:00:00', 'klj', 'kkj', 'kjk', 'emoblazz@gmail.com', 'kjk', 'buffet', 'Baptism', 'jjj', 0, 'lkjkj', '1500.00', '1500.00', 'Approved', '2017-04-28', 'Bg0GuezJd8', 10, 1, '150.00', 'Bank to Bank'),
(47, '0000-00-00', '00:00:00', 'masa', 'john', '09952368266', 'jlmasa19@yahoo.com', 'calauan laguna', '', '', '', 0, '', '0.00', '0.00', '', '2019-03-20', 'AGL3PtZYuq', 0, 0, '0.00', ''),
(48, '2019-03-30', '15:00:00', 'masa', 'john', '09952368266', 'johnlorenz.masa@gmail.com', 'calauan laguna', 'buffet', 'Others', 'black and white', 0, 'letran calamba', '10000.00', '0.00', 'Approved', '2019-03-27', 'GAJetDhZQk', 40, 2, '250.00', 'Cash'),
(49, '2019-03-28', '16:00:00', 'masa', 'john', '09952368266', 'zeiiru.jm@gmail.com', 'calauan laguna', 'buffet', 'Others', 'black and white', 0, 'letran calamba', '10000.00', '10000.00', 'pending', '2019-03-27', 'hLoAyyXtIZ', 40, 2, '250.00', 'Cash'),
(50, '0000-00-00', '00:00:00', '', '', '', '', '', '', '', '', 0, '', '0.00', '0.00', '', '2019-04-11', 'IHsKJUbPOq', 0, 0, '0.00', ''),
(51, '0000-00-00', '00:00:00', 'mallari', 'momon', '09123456789', 'momon@momon.com', 'calauan', '', '', '', 0, '', '0.00', '0.00', '', '2019-05-06', 'QtrxKEYTPi', 0, 0, '0.00', ''),
(52, '2019-05-09', '22:30:00', 'masa', 'john', '09123456789', 'jlmasa19@yahoo.com', 'calauan laguna', 'buffet', 'Birthday', 'black and white', 0, 'calauan laguna', '15000.00', '15000.00', '', '2019-05-06', '1nZfWvP2zX', 100, 1, '150.00', ''),
(53, '2019-05-10', '22:10:00', 'Mallari', 'Raymond', '09218364613', 'raymondmallari48@gmail.com', 'dyan lng', 'buffet', 'Christmas Party', 'jkjfds', 0, 'dgdgdx', '25000.00', '25000.00', '', '2019-05-06', 'fB0PuyiA0U', 100, 2, '250.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_combo`
--

CREATE TABLE `r_combo` (
  `r_combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `r_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_details`
--

CREATE TABLE `r_details` (
  `r_details_id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `r_nop` int(10) NOT NULL,
  `r_total` decimal(10,2) NOT NULL,
  `r_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_noncombo`
--

CREATE TABLE `r_noncombo` (
  `r_non_id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `serve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcat_id` int(11) NOT NULL,
  `subcat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `subcat_name`) VALUES
(1, 'Non Combo Meal'),
(2, 'Mirienda'),
(3, 'Lunch and Dinner'),
(10, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `team_member_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `username`, `password`, `status`) VALUES
(1, 'John Masa', 'admin', '123', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`combo_id`);

--
-- Indexes for table `combo_details`
--
ALTER TABLE `combo_details`
  ADD PRIMARY KEY (`combo_details_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `r_combo`
--
ALTER TABLE `r_combo`
  ADD PRIMARY KEY (`r_combo_id`);

--
-- Indexes for table `r_details`
--
ALTER TABLE `r_details`
  ADD PRIMARY KEY (`r_details_id`);

--
-- Indexes for table `r_noncombo`
--
ALTER TABLE `r_noncombo`
  ADD PRIMARY KEY (`r_non_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`team_member_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `combo`
--
ALTER TABLE `combo`
  MODIFY `combo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `combo_details`
--
ALTER TABLE `combo_details`
  MODIFY `combo_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `r_combo`
--
ALTER TABLE `r_combo`
  MODIFY `r_combo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_details`
--
ALTER TABLE `r_details`
  MODIFY `r_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_noncombo`
--
ALTER TABLE `r_noncombo`
  MODIFY `r_non_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `team_member_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
