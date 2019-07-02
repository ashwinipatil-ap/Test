-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 01:10 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reception`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT '0',
  `branch_name` varchar(256) DEFAULT NULL,
  `branch_address` varchar(256) DEFAULT NULL,
  `branch_contact_no` varchar(10) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `user_id`, `branch_name`, `branch_address`, `branch_contact_no`, `status`) VALUES
(1, 3, 'virasat Realities', 'Belagavi Karntaka', '1234567890', 'Active'),
(2, 1, 'virasat ', 'Belagavi', '2147483647', 'Active'),
(3, 6, 'xyz', 'xyz', '0987654321', 'Active'),
(4, 1, 'virasat infotech', 'Belgaum', '9999999999', 'Active'),
(5, 1, 'Dinesh', 'belgaum', '1234567890', 'Active'),
(6, 14, 'vishwa virasat', 'belagavi', '9877675432', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `client_info`
--

CREATE TABLE `client_info` (
  `client_id` int(255) NOT NULL,
  `branch_id` int(255) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `client_name` varchar(256) DEFAULT NULL,
  `client_contact_no` varchar(10) DEFAULT NULL,
  `client_address` varchar(256) DEFAULT NULL,
  `reason` varchar(256) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  `work_info` varchar(256) DEFAULT NULL,
  `contact_person` varchar(256) DEFAULT NULL,
  `visit_date` varchar(256) DEFAULT NULL,
  `appoinment_date_time` varchar(256) DEFAULT NULL,
  `time_in` varchar(256) DEFAULT NULL,
  `time_out` varchar(256) DEFAULT NULL,
  `action` varchar(256) DEFAULT NULL,
  `position_applied` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_info`
--

INSERT INTO `client_info` (`client_id`, `branch_id`, `user_id`, `client_name`, `client_contact_no`, `client_address`, `reason`, `type`, `work_info`, `contact_person`, `visit_date`, `appoinment_date_time`, `time_in`, `time_out`, `action`, `position_applied`, `status`) VALUES
(1, 2, 1, 'Madhu', '2147483647', 'Kadoli', 'Interview', 'HR', NULL, 'Karishma kemp', '2019-05-31', NULL, '09:01:29am', '09:11:23', 'Accept', 'Marketing', 'Active'),
(2, 2, 1, 'sid', '1234567890', 'hindalga', 'Interview', 'HR', NULL, 'Karishma kemp', '0000-00-00', NULL, '01:02:48 PM', NULL, 'Accept', 'Marketing', 'Active'),
(3, 2, 1, 'dinesh Hannurakar', '1234567890', 'Kangrali', 'Buisenesswork', 'Admin', '', 'praveen sir', '0000-00-00', NULL, '28-05-2019 01:06:48 PM', '31-05-2019 01:07:06 PM', 'Accept', '', 'Inactive'),
(4, 2, 1, 'Pooja', '1234567890', 'kakati', 'Appoinment', 'Admin', '', 'praveen sir', '0000-00-00', '2019-06-02', '01-06-2019 12:47:49 PM', NULL, NULL, '', 'Active'),
(5, 2, 1, 'dinesh Hannurakar', '1234567890', 'kakati', 'Appoinment', 'Admin', '', 'praveen Kumar Desai', '0000-00-00', '2019-06-08', '01-06-2019 01:02:23 PM', NULL, NULL, '', 'Active'),
(6, 2, 1, 'Madhu', '2147483647', 'Kadoli', 'Appoinment', 'Admin', '', 'praveen Kumar Desai', '08-06-2019', '2019-06-08 11:11AM', '08-06-2019 11:44:15 AM', NULL, NULL, 'Marketing', 'Active'),
(7, 2, 1, 'madhu', '1234567890', 'addddddd', 'Buisenesswork', 'Admin', '', 'Pravin Sir', '11-06-2019', '', '11-06-2019 05:04:51 PM', NULL, NULL, '', 'Active'),
(8, 2, 1, 'dinesh Hannurakar', '1234567890', 'kakati', 'Interview', 'HR', '', 'karishma', '11-06-2019', '', '11-06-2019 05:06:27 PM', NULL, 'Accept', 'Web', 'Inactive'),
(9, 4, 1, 'Omkar J', '9999999999', 'Neharu Nagar , Belgaum', 'Interview', 'HR', '', 'Abhijeet', '12-06-2019', '', '12-06-2019 12:32:25 PM', '12-06-2019 01:04:40 PM', 'Accept', 'Android Devloper', 'Inactive'),
(10, 5, 1, 'mmmmm', '1234567890', 'cgxvhgxj', 'Interview', 'HR', '', 'karishma', '12-06-2019', '', '12-06-2019 03:04:03 PM', NULL, 'Accept', 'web', 'Active'),
(11, 5, 1, 'gggggggggg', '1111111111', 'hhhhhhhhhhhhhhhh', 'Interview', 'HR', '', 'karishma', '12-06-2019', '', '12-06-2019 03:04:43 PM', NULL, NULL, 'marketing', 'Active'),
(12, 6, 14, 'madhuri', '9087654321', 'nxjxn j', 'Interview', 'HR', '', 'karishma', '13-06-2019', '', '13-06-2019 02:47:58 PM', NULL, 'Accept', 'web', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dep_id` int(255) NOT NULL,
  `dep_name` varchar(256) DEFAULT NULL,
  `branch_id` int(255) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `branch_id` int(255) DEFAULT NULL,
  `emp_name` varchar(256) DEFAULT NULL,
  `department` varchar(256) DEFAULT NULL,
  `designation` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

CREATE TABLE `otp_expiry` (
  `id` int(255) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `is_expired` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_expiry`
--

INSERT INTO `otp_expiry` (`id`, `otp`, `is_expired`, `create_at`) VALUES
(1, '273724', 0, '2019-06-04 07:47:46'),
(2, '447156', 1, '2019-06-04 07:49:49'),
(3, '712806', 1, '2019-06-04 07:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `branch_id` varchar(256) DEFAULT NULL,
  `organization_name` varchar(256) DEFAULT NULL,
  `organization_address` varchar(256) DEFAULT NULL,
  `adhar_no` varchar(256) DEFAULT NULL,
  `pan_no` varchar(256) DEFAULT NULL,
  `gstin_no` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `registration_date` varchar(256) DEFAULT NULL,
  `reg_time` varchar(256) DEFAULT NULL,
  `expiry_date` varchar(256) DEFAULT NULL,
  `payement_mode` varchar(256) DEFAULT NULL,
  `cheuqe_number` varchar(256) NOT NULL DEFAULT '0',
  `balance` varchar(256) NOT NULL DEFAULT '0',
  `usage_type` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `email`, `phone_no`, `password`, `type`, `user_id`, `branch_id`, `organization_name`, `organization_address`, `adhar_no`, `pan_no`, `gstin_no`, `status`, `registration_date`, `reg_time`, `expiry_date`, `payement_mode`, `cheuqe_number`, `balance`, `usage_type`) VALUES
(7, 'madhu', 'virasatrealities09@gmail.com', '2147483647', 'a1Bz20ydqelm8m1wql84811fed582a9c7b8cb41f68f0ed6147', 'Admin', 1, NULL, 'Virasat', NULL, NULL, NULL, NULL, 'Active', '2019-05-29', '00:00:00.000000', '10-06-2020', 'Cash', '0', '0', 'trial'),
(8, 'Sanvi', 'john.doe@example.com', '2147483647', 'a1Bz20ydqelm8m1wql3be692e854f104ddd4d82b242f32026c', 'HR', 1, '2', 'Virasat', NULL, NULL, NULL, NULL, 'Active', '2019-05-29', '09:58:36.000000', '10-06-2019', 'Cash', '0', '0', NULL),
(9, 'smrithi', 'robert.william@example.com', '2147483647', 'a1Bz20ydqelm8m1wql84811fed582a9c7b8cb41f68f0ed6147', 'SuperAdmin', NULL, NULL, 'Virasat', NULL, NULL, NULL, NULL, 'Active', '2019-05-29', '12:52:22.000000', '0000-00-00', 'Cash', '0', '0', NULL),
(10, 'Sidharth', 'virasatrealities09@gmail.com', '1234567890', 'a1Bz20ydqelm8m1wqlb8c1a3069167247e3503f0daba6c5723', 'Receptionist', 1, '2', NULL, NULL, NULL, NULL, NULL, 'Active', '2019-05-30', '10:01:10.000000', '10-06-2020', NULL, '0', '0', NULL),
(11, 'komal', 'madhureekc123@gmail.com', '2147483647', 'a1Bz20ydqelm8m1wql84811fed582a9c7b8cb41f68f0ed6147', ' Admin', 2, NULL, 'Arthopic', 'neharu nagar belagum', '123456782', '1234567890qe', 'avi123456789', 'Active', '0000-00-00', '00:00:00.000000', '0000-00-00', 'Cash', '0', '0', NULL),
(12, 'pooja', 'virasatrealities@gmail.com', '2147483647', 'a1Bz20ydqelm8m1wql84811fed582a9c7b8cb41f68f0ed6147', 'Admin', 3, '1', 'Virasat', 'neharu nagar belagum', '09866413', '21w13eqwe', '2134edfg', 'Active', '03-06-2019', '03-06-2019 03:49:59 PM', NULL, 'Cash', '0', '0', NULL),
(13, 'komal', 'madhureekc123@gmail.com', '2147483647', 'a1Bz20ydqelm8m1wql690b4bac6ca9fb81814128a294470f92', ' Admin', 2, NULL, 'Arthopic', 'neharu nagar belagum', '123456782', '1234567890qe', 'avi123456789', 'Active', '03-06-2019', '03-06-2019 04:19:51 PM', NULL, 'Cash', '0', '0', NULL),
(14, 'Ankita', 'virasatrealities12@gmail.com', '2147483647', 'a1Bz20ydqelm8m1wql84811fed582a9c7b8cb41f68f0ed6147', 'Admin', 4, '', 'Virasat', 'neharu nagar belagum', '1234567890', 'gchsd2345678', 'cj4567', 'Active', '03-06-2019', '03-06-2019 05:19:58 PM', '03-06-2020', 'Cash', '0', '0', NULL),
(15, 'dinesh', 'dinesh@gmail.com', '9606057132', 'a1Bz20ydqelm8m1wql9c9f1c65b1dc1f79498c9f09eb610e1a', 'Admin', 5, NULL, 'Arthopic', 'neharu nagar belagum', '12234567', ' cgvh123456', 'vvh34567', 'Active', '07-06-2019', '07-06-2019 10:50:39 AM', '07-06-2020', 'Cash', '0', '0', 'purchase'),
(16, 'deepa', 'deepali@gmail.com', '1234567890', 'a1Bz20ydqelm8m1wql29987ce14a9c7b9137f616843eca049b', 'Admin', 6, NULL, 'Virasat Realities', 'neharu nagar belagum karnataka', '123456ivfabc', 'dgjk7890efabc', 'cghjjk12345edewabc', 'Active', '07-06-2019', '07-06-2019 11:23:00 AM', '07-06-2020', 'Cash', '0', '0', 'trial'),
(18, 'danu', 'danu@gmail.com', '9606057132', 'a1Bz20ydqelm8m1wqla29e5a0efaa2b1521ebea7cf10cd0eab', 'Receptionist', 6, '3', NULL, NULL, NULL, NULL, NULL, 'Active', '2019-06-07', '08:10:12am', NULL, NULL, '0', '0', NULL),
(20, 'diya', 'diya@gmail.com', '9606057132', 'a1Bz20ydqelm8m1wql436e97532fa8c80ca6e94a8435781b5a', 'Admin', 7, NULL, 'Virasat', 'neharu nagar belagum', '12345678ugfcx', '23456789ihgc', 'cghjjk12345edewabcbn', 'Active', '11-06-2019', '11-06-2019 10:50:58 AM', '26-06-2019', 'Cash', '0', '0', 'trial'),
(23, 'adu', 'advi@gmail.com', '9606057132', 'a1Bz20ydqelm8m1wql814b9c1a48f94893e1f2ca9f7b83c17f', 'Admin', 8, NULL, 'Virasat', 'neharu nagar belagum', '123456ivfabcw', 'dgjk7890efabcq', 'xfcghjre34567w', 'Active', '11-06-2019', '11-06-2019 11:44:58 AM', '26-06-2019', 'Cheque', '0', '0', 'trial'),
(24, 'Akshay', 'akshay@gmail.com', '9999999999', 'a1Bz20ydqelm8m1wql2de1b2d6a6738df78c5f9733853bd170', 'HR', 1, '4', NULL, NULL, NULL, NULL, NULL, 'Inactive', '2019-06-12', '08:00:13am', NULL, NULL, '0', '0', NULL),
(25, 'akshay', 'akshay@gmail.com', '9999999999', 'a1Bz20ydqelm8m1wql2de1b2d6a6738df78c5f9733853bd170', 'HR', 1, '4', NULL, NULL, NULL, NULL, NULL, 'Active', '2019-06-12', '08:13:30am', NULL, NULL, '0', '0', NULL),
(26, 'Akash', 'akash@gmail.com', '7777777777', 'a1Bz20ydqelm8m1wql94754d0abb89e4cf0a7f1c494dbb9d2c', 'Receptionist', 1, '4', NULL, NULL, NULL, NULL, NULL, 'Active', '2019-06-12', '08:29:21am', NULL, NULL, '0', '0', NULL),
(27, 'janu', 'janu@gmail.com', '244676767', 'a1Bz20ydqelm8m1wql3605ec021bac4a1db600450360a366a5', 'Receptionist', 1, '5', NULL, NULL, NULL, NULL, NULL, 'Active', '2019-06-12', '11:31:57am', NULL, NULL, '0', '0', NULL),
(28, 'dhanashree', 'dhanashree@gmail.com', '1234567890', 'a1Bz20ydqelm8m1wql046ace20baf98fed7197aa0e29ad0e49', 'HR', 1, '5', NULL, NULL, NULL, NULL, NULL, 'Active', '2019-06-12', '11:32:58am', NULL, NULL, '0', '0', NULL),
(29, 'sdcss', 'sdzscf', '7087654321', 'a1Bz20ydqelm8m1wqlbe83ab3ecd0db773eb2dc1b0a17836a1', 'Admin', 9, NULL, 'sdaxsc', 'adsczc', '43546', '2345', '4q35', 'Active', '13-06-2019', '13-06-2019 12:35:22 PM', '28-06-2019', 'Cash', '0', '0', 'trial'),
(30, 'sxas', 'saxasx', '9999999999', 'a1Bz20ydqelm8m1wqlc8eba02ada4111a54fb3f3874fadb0e3', 'Other', 10, NULL, 'saxs', 'asxas', '232435', '432', '42', 'Active', '13-06-2019', '13-06-2019 12:37:34 PM', '28-06-2019', 'Cash', '0', '0', 'trial'),
(31, 'sxas', 'saxasx', '9999999999', 'a1Bz20ydqelm8m1wqlc8eba02ada4111a54fb3f3874fadb0e3', 'Other', 10, NULL, 'saxs', 'asxas', '232435', '432', '42', 'Active', '13-06-2019', '13-06-2019 12:37:34 PM', '28-06-2019', 'Cash', '0', '0', 'trial'),
(32, 'sadcz', 'dsfdghfgcxvc', 'sadcsfv', 'a1Bz20ydqelm8m1wql51e43fb933a76da38a37132478900ded', 'SuperAdmin', 11, NULL, 'dcz', 'x', 'ddvdvddcvd', 'ddsv', 'dszd', 'Active', '13-06-2019', '13-06-2019 12:59:25 PM', '', 'Cash', '0', '0', ''),
(33, 'sadcz', 'dsfdghfgcxvc', 'sadcsfv', 'a1Bz20ydqelm8m1wql51e43fb933a76da38a37132478900ded', 'SuperAdmin', 11, NULL, 'dcz', 'x', 'ddvdvddcvd', 'ddsv', 'dszd', 'Active', '13-06-2019', '13-06-2019 12:59:47 PM', '', 'Cash', '0', '0', ''),
(34, 'xsAx', 'xaaadc', 'cvghbjnkml', 'a1Bz20ydqelm8m1wql7b16783a9d7ce44e12deb7c9a372a027', 'Other', 12, NULL, 'dcsd', 'dcsd', 'dcsd', 'dcds', 'cddcd', 'Active', '13-06-2019', '13-06-2019 01:02:31 PM', '28-06-2019', 'Cash', '0', '0', 'trial'),
(35, 'vc cg', 'f@gmail.com', '9876554430', 'a1Bz20ydqelm8m1wqld9729feb74992cc3482b350163a1a010', 'Other', 13, NULL, 'vdf', 'vx', 'dc', 'df', 'd', 'Active', '13-06-2019', '13-06-2019 01:12:01 PM', '28-06-2019', 'Other', '0', '0', 'trial'),
(36, 'madhushree Chougule', 'chougulemadhu@gmail.com', '9606057132', 'a1Bz20ydqelm8m1wql66a6e86cfe175baf6b3f581a5de3eefc', 'Admin', 14, NULL, 'virasatr', 'belgavi', '32456789', 'fdgfh6578', '345678', 'Active', '13-06-2019', '13-06-2019 02:36:57 PM', '28-06-2019', 'Cash', '0', '0', 'trial'),
(37, 'kavya', 'kavy@agmail.com', '9870654321', 'a1Bz20ydqelm8m1wqle7476ca55559e029965da4e8f1018e45', 'Receptionist', 14, '6', NULL, NULL, NULL, NULL, NULL, 'Inactive', '2019-06-13', '11:12:19am', NULL, NULL, '0', '0', NULL),
(38, 'komal', 'komal@gmail.com', '9087654321', 'a1Bz20ydqelm8m1wql690b4bac6ca9fb81814128a294470f92', 'HR', 14, '6', NULL, NULL, NULL, NULL, NULL, 'Active', '2019-06-13', '11:14:59am', NULL, NULL, '0', '0', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `client_info`
--
ALTER TABLE `client_info`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client_info`
--
ALTER TABLE `client_info`
  MODIFY `client_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dep_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
