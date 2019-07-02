-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 12:49 PM
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
-- Database: `hms_umh`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_users`
--

CREATE TABLE `tbl_admin_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1-Active 2-Deactive',
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_users`
--

INSERT INTO `tbl_admin_users` (`id`, `first_name`, `last_name`, `mobile_no`, `email`, `user_type`, `status`, `username`, `password`, `reg_date`) VALUES
(1, 'test', 'test', '1234567890', 'test@test.com', 'test', 1, 'test', 'test', '2019-06-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_details`
--

CREATE TABLE `tbl_appointment_details` (
  `id` int(11) NOT NULL,
  `appoint_id` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `DOB` datetime NOT NULL,
  `age` int(11) DEFAULT NULL,
  `description` text,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `allocated_doctor` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `mobile_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_appointment_details`
--

INSERT INTO `tbl_appointment_details` (`id`, `appoint_id`, `fname`, `mname`, `lname`, `DOB`, `age`, `description`, `appointment_date`, `appointment_time`, `allocated_doctor`, `status`, `created_on`, `created_by`, `gender`, `mobile_no`) VALUES
(1, 'HMS190702121416', 'test', 'test', 'female', '2019-07-18 00:00:00', 12, 'vfb', '2019-12-12', '12:12:00', 'TEST', NULL, '2019-07-02 12:14:16', 'test', 'female', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bed_details`
--

CREATE TABLE `tbl_bed_details` (
  `bed_id` int(11) NOT NULL,
  `ward_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `bed_type` varchar(255) DEFAULT NULL,
  `bed_details` text,
  `bed_charges` float(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0-Not good 1-good',
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bed_details`
--

INSERT INTO `tbl_bed_details` (`bed_id`, `ward_id`, `room_id`, `bed_type`, `bed_details`, `bed_charges`, `status`, `created_on`, `created_by`, `updated_on`, `updated_by`) VALUES
(1, 1, 3, 'test', 'kiudfsdfssfg', 80.00, 1, '2019-07-01 12:12:26', NULL, '2019-07-01 12:25:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blood_donar_details`
--

CREATE TABLE `tbl_blood_donar_details` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `donated_date` datetime DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `blood_group` varchar(20) DEFAULT NULL,
  `blood_quantity` float(10,2) DEFAULT NULL,
  `expired_date` datetime DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `address` text,
  `descr` text,
  `weight` float(10,2) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blood_donar_details`
--

INSERT INTO `tbl_blood_donar_details` (`id`, `fname`, `mname`, `lname`, `gender`, `phone`, `DOB`, `age`, `donated_date`, `nationality`, `blood_group`, `blood_quantity`, `expired_date`, `created_on`, `created_by`, `status`, `address`, `descr`, `weight`, `email`) VALUES
(1, 'test', NULL, 'test', NULL, '9876543210', '2019-07-19 00:00:00', 12, '2019-07-02 11:17:43', NULL, 'A+', 1.20, NULL, '2019-07-02 11:17:43', 'test', NULL, 'bgm', 'bgm', 9.00, 'test@test.in'),
(2, 'test', NULL, 'test', NULL, '9876543210', '2019-07-19 00:00:00', 12, '2019-07-02 11:18:19', NULL, 'A-', 1.20, NULL, '2019-07-02 11:18:19', 'test', NULL, 'bgm', 'bgm', 9.00, 'test@test.in');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_name`
--

CREATE TABLE `tbl_category_name` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `min_charges` float(10,2) DEFAULT NULL,
  `max_charges` float(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0-Inactive 1-Active',
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_certificate_issue_details`
--

CREATE TABLE `tbl_certificate_issue_details` (
  `id` int(11) NOT NULL,
  `patient_fname` varchar(255) NOT NULL,
  `patient_lname` varchar(255) NOT NULL,
  `gaurdian_name` varchar(255) NOT NULL,
  `DOB` datetime NOT NULL,
  `age` int(11) NOT NULL,
  `address` text,
  `born_date` date DEFAULT NULL,
  `born_time` time DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `death_time` time DEFAULT NULL,
  `issued_date` datetime NOT NULL,
  `issued_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`dept_id`, `dept_name`, `status`, `created_on`, `created_by`, `updated_date`) VALUES
(1, 'testk', 1, '2019-07-01 11:18:39', NULL, '2019-07-01 11:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_registration`
--

CREATE TABLE `tbl_employee_registration` (
  `emp_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `Qualification` varchar(50) DEFAULT NULL,
  `specialist_in` varchar(255) DEFAULT NULL,
  `Adhar_no` varchar(255) DEFAULT NULL,
  `pancard_no` varchar(255) DEFAULT NULL,
  `OPD_charges` float(10,2) DEFAULT NULL,
  `IPD_charges` float(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0-not working 1-working',
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `upadted_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `description` text,
  `address` text,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee_registration`
--

INSERT INTO `tbl_employee_registration` (`emp_id`, `first_name`, `last_name`, `mobile_no`, `email`, `department`, `Qualification`, `specialist_in`, `Adhar_no`, `pancard_no`, `OPD_charges`, `IPD_charges`, `status`, `created_on`, `created_by`, `upadted_on`, `updated_by`, `DOB`, `description`, `address`, `gender`) VALUES
(1, 'test', 'test', '9876543210', 'test@test.in', 'Doctor', 'ba', 'test', '123qwe', 'pan123', 10.00, 20.00, 1, '2019-07-02 11:49:46', 'test', NULL, NULL, '2019-07-20 00:00:00', 'bgm', 'bgm', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_details`
--

CREATE TABLE `tbl_expense_details` (
  `id` int(11) NOT NULL,
  `expense_reason` text NOT NULL,
  `amount` float(10,2) NOT NULL,
  `remark` text NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patient_details`
--

CREATE TABLE `tbl_patient_details` (
  `patient_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `admission_date` datetime DEFAULT NULL,
  `address` text,
  `nationality` varchar(50) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `gaurdian_name` varchar(255) DEFAULT NULL,
  `gaurdian_phone` varchar(255) DEFAULT NULL,
  `gaurdian_address` text,
  `gaurdian_relation` varchar(50) DEFAULT NULL,
  `allocated_doctor` varchar(100) DEFAULT NULL,
  `refered_by` varchar(255) DEFAULT NULL,
  `refered_contact` varchar(10) DEFAULT NULL,
  `doctor_allocate_id` varchar(255) DEFAULT NULL,
  `case_type` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `consultation_charges` float(10,2) DEFAULT NULL,
  `ward_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `bed_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_details`
--

CREATE TABLE `tbl_room_details` (
  `room_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `room_details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-available 2-reserved 3-allocated 4-not available',
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_room_details`
--

INSERT INTO `tbl_room_details` (`room_id`, `ward_id`, `room_type`, `room_details`, `status`, `created_date`) VALUES
(1, 1, 'testj', 'sdsdsdfggggggggggggg', 2, '2019-07-02 09:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_details_old`
--

CREATE TABLE `tbl_room_details_old` (
  `room_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `room_details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-available 2-reserved 3-allocated 4-not available',
  `created_date` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_room_details_old`
--

INSERT INTO `tbl_room_details_old` (`room_id`, `ward_id`, `room_type`, `room_details`, `status`, `created_date`, `created_by`, `updated_on`, `updated_by`) VALUES
(0, 1, 'wrr', 'werwr', 1, '2019-07-02 08:31:28', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_tests`
--

CREATE TABLE `tbl_sub_tests` (
  `sub_test_id` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `sub_test_name` varchar(255) DEFAULT NULL,
  `test_charges` float(10,2) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tests`
--

CREATE TABLE `tbl_tests` (
  `test_id` int(11) NOT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0-not available 2-Available',
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ward_type`
--

CREATE TABLE `tbl_ward_type` (
  `ward_id` int(11) NOT NULL,
  `ward_type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1-Active 2-Inactive',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ward_type`
--

INSERT INTO `tbl_ward_type` (`ward_id`, `ward_type`, `status`, `created_date`) VALUES
(1, 'testnn', 1, '2019-07-01 13:25:34'),
(2, 'test1', 0, '2019-07-01 13:27:45'),
(3, 'tr', 1, '2019-07-01 13:28:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_users`
--
ALTER TABLE `tbl_admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointment_details`
--
ALTER TABLE `tbl_appointment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bed_details`
--
ALTER TABLE `tbl_bed_details`
  ADD PRIMARY KEY (`bed_id`);

--
-- Indexes for table `tbl_blood_donar_details`
--
ALTER TABLE `tbl_blood_donar_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category_name`
--
ALTER TABLE `tbl_category_name`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_certificate_issue_details`
--
ALTER TABLE `tbl_certificate_issue_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tbl_employee_registration`
--
ALTER TABLE `tbl_employee_registration`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tbl_expense_details`
--
ALTER TABLE `tbl_expense_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_patient_details`
--
ALTER TABLE `tbl_patient_details`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `tbl_room_details`
--
ALTER TABLE `tbl_room_details`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `tbl_sub_tests`
--
ALTER TABLE `tbl_sub_tests`
  ADD PRIMARY KEY (`sub_test_id`);

--
-- Indexes for table `tbl_tests`
--
ALTER TABLE `tbl_tests`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `tbl_ward_type`
--
ALTER TABLE `tbl_ward_type`
  ADD PRIMARY KEY (`ward_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_users`
--
ALTER TABLE `tbl_admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_appointment_details`
--
ALTER TABLE `tbl_appointment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_bed_details`
--
ALTER TABLE `tbl_bed_details`
  MODIFY `bed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_blood_donar_details`
--
ALTER TABLE `tbl_blood_donar_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category_name`
--
ALTER TABLE `tbl_category_name`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_certificate_issue_details`
--
ALTER TABLE `tbl_certificate_issue_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_employee_registration`
--
ALTER TABLE `tbl_employee_registration`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_expense_details`
--
ALTER TABLE `tbl_expense_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_patient_details`
--
ALTER TABLE `tbl_patient_details`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_room_details`
--
ALTER TABLE `tbl_room_details`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sub_tests`
--
ALTER TABLE `tbl_sub_tests`
  MODIFY `sub_test_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tests`
--
ALTER TABLE `tbl_tests`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ward_type`
--
ALTER TABLE `tbl_ward_type`
  MODIFY `ward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
