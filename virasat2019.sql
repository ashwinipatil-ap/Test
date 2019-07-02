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
-- Database: `virasat2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` decimal(4,2) NOT NULL,
  `branch_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(255) NOT NULL,
  `branch_name` varchar(256) DEFAULT NULL,
  `branch_address` varchar(256) DEFAULT NULL,
  `branch_contact` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `status`) VALUES
(1, 'Branch01', 'Belgaum ', '7090434727', 'Active'),
(2, 'Branch02', 'chikodi', '7090834727', 'Active'),
(3, 'Branch03', 'Gokak', '7090437727', 'Inactive'),
(4, 'Branch04', 'nipani', '7990434727', 'Active'),
(5, 'Branch05', 'gokak', '6789879089', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `customer_data`
--

CREATE TABLE `customer_data` (
  `cust_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `requirement` varchar(200) NOT NULL,
  `location` varchar(256) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL,
  `discusion` varchar(200) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_data`
--

INSERT INTO `customer_data` (`cust_id`, `e_id`, `branch_id`, `client_name`, `contact_no`, `address`, `requirement`, `location`, `date_time`, `status`, `discusion`, `team_id`) VALUES
(1, 7, 1, 'sri ganesh', '8177788877', 'belgaum', '', '', '2019-06-14 05:30:41', 'Active', 'sale', 1),
(2, 7, 1, 'sumit pawar', '4565567888', 'ganeshpur road  laxminagar', '', '', '2019-06-14 05:30:46', 'Active', 'sale, market, requiremnt,', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dep_id` int(255) NOT NULL,
  `dep_name` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dep_id`, `dep_name`, `status`) VALUES
(1, 'IT Department', 'active'),
(2, 'Accountant ', 'active'),
(3, 'HR Department', 'active'),
(4, 'Telecaller ', 'active'),
(6, 'Managment', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `dist_id` int(255) NOT NULL,
  `dist_name` varchar(256) DEFAULT NULL,
  `state_id` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`dist_id`, `dist_name`, `state_id`) VALUES
(1, 'belgaum', '1'),
(3, 'Bagalkot', '1'),
(4, 'Panaji', '3'),
(5, 'huballi', '1');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `doc_id` int(255) NOT NULL,
  `e_id` varchar(256) DEFAULT NULL,
  `documents` varchar(256) DEFAULT NULL,
  `branch_id` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_id`, `e_id`, `documents`, `branch_id`) VALUES
(1, '2', 'SaaS-Development.png', '1'),
(2, '4', 'SaaS-Development.png', '1'),
(3, '4', 'chalk-company-conceptual-533189.jpg', '1'),
(4, '4', 's.png', '1'),
(5, '4', 'SaaS-Development.png', '1'),
(6, '1', '', '1'),
(7, '8', '', '2'),
(8, '8', 'SaaS-Development.png', '1'),
(9, '10', 'SaaS-Development.png', '1'),
(10, '11', 'SaaS-Development.png', '1'),
(11, '12', 'SaaS-Development.png', '1'),
(12, '13', 'SaaS-Development.png', '1'),
(13, '10', 's.png', '1'),
(14, '15', 'SaaS-Development.png', '1'),
(15, '16', 'SaaS-Development.png', '1'),
(16, '17', 's.png', '1'),
(17, '21', '', '1'),
(18, '21', '', '1'),
(19, '23', 'p.png', '1'),
(20, '20', '', '1'),
(21, '23', 'p.png', '1'),
(22, '23', 'pdf.pdf', '1'),
(23, '18', 'EAStatement_DT01_17052019112534.xls', '1'),
(24, '18', 'pdf.pdf', '1'),
(25, '18', 'pdf.pdf', '1'),
(26, '18', 'pdf.pdf', '1'),
(27, '18', 'pdf.pdf', '1'),
(28, '1', 'EAStatement_DT01_17052019112534.xls', '1'),
(29, '23', 'export.csv', '1'),
(30, '24', '', '1'),
(31, '19', 'pdf.pdf', '1'),
(32, '26', 'pdf.pdf', '1'),
(33, '27', 'pdf.pdf', '1'),
(34, '31', 'pdf.pdf', '1'),
(35, '3', 'pdf.pdf', '1'),
(36, '4', 'pdf.pdf', '1'),
(37, '5', 'pdf.pdf', '1'),
(38, '7', 'pdf.pdf', '1'),
(39, '14', 'pdf.pdf', '1'),
(40, '15', 'pdf.pdf', '1'),
(41, '16', 'pdf.pdf', '1');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL,
  `emp_id` varchar(256) NOT NULL,
  `first_name` varchar(256) DEFAULT NULL,
  `middle_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(256) DEFAULT NULL,
  `profile_image` varchar(256) DEFAULT NULL,
  `gender` varchar(256) DEFAULT NULL,
  `dob` date NOT NULL DEFAULT '0000-00-00',
  `marital` varchar(256) DEFAULT NULL,
  `mobno_personal` varchar(10) DEFAULT NULL,
  `mobno_company` varchar(10) DEFAULT NULL,
  `mobno_parents` varchar(10) DEFAULT NULL,
  `taluka_id` int(255) NOT NULL,
  `address1` varchar(256) DEFAULT NULL,
  `address2` varchar(256) DEFAULT NULL,
  `pincode` int(6) NOT NULL,
  `adhar_no` varchar(256) DEFAULT NULL,
  `pan_no` varchar(256) DEFAULT NULL,
  `qualification` varchar(256) DEFAULT NULL,
  `blood_group` varchar(256) DEFAULT NULL,
  `role_id` varchar(256) DEFAULT NULL,
  `position_id` varchar(256) DEFAULT NULL,
  `joining_date` date NOT NULL DEFAULT '0000-00-00',
  `leave_date` date NOT NULL DEFAULT '0000-00-00',
  `email_id` varchar(256) DEFAULT NULL,
  `office_email` varchar(256) DEFAULT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `experience` varchar(256) DEFAULT NULL,
  `bank_ifsc` int(12) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_branch` varchar(50) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `account_no` varchar(16) NOT NULL,
  `status` varchar(256) DEFAULT NULL,
  `branch_id` int(255) NOT NULL,
  `team_id` int(11) NOT NULL,
  `master` varchar(10) DEFAULT NULL,
  `workwith` varchar(256) DEFAULT NULL,
  `dep_id` int(10) DEFAULT NULL,
  `marketing_status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `emp_id`, `first_name`, `middle_name`, `last_name`, `profile_image`, `gender`, `dob`, `marital`, `mobno_personal`, `mobno_company`, `mobno_parents`, `taluka_id`, `address1`, `address2`, `pincode`, `adhar_no`, `pan_no`, `qualification`, `blood_group`, `role_id`, `position_id`, `joining_date`, `leave_date`, `email_id`, `office_email`, `username`, `password`, `experience`, `bank_ifsc`, `bank_name`, `bank_branch`, `account_name`, `account_no`, `status`, `branch_id`, `team_id`, `master`, `workwith`, `dep_id`, `marketing_status`) VALUES
(1, '001', 'Karishma', 'krishna', 'j', 'p.png', 'female', '1996-06-12', 'maried', '8123303838', '8123303838', '8123303838', 1, 'belgaum', 'belgaum', 0, '2324-4453-4456', 'DDGFG4566F', 'BBA', 'A', '1', '1', '2019-01-07', '2019-06-24', 'hr@virasat.com', 'hr@virasat.com', 'HR001', 'a1Bz20ydqelm8m1wql0d1d42abb60016a532667451ea5279e2', '1 YEARS', 0, '', '', '', '', 'Active', 1, 0, 'Submaster', 'Active', 0, NULL),
(2, '008', 'siddharth', 'vilas', 'kakatkar', 'SaaS-Development.png', 'male', '1996-05-15', 'unmaried', '7687979993', '7687979993', '7687979993', 1, 'belgaum', 'belgaum', 0, '2223-4455-5555', 'DFGDG4555D', 'CS', 'a', '4', '2', '2019-05-15', '0000-00-00', 'EM008@virasat.com', 'EM008@virasat.com', 'EM008', 'a1Bz20ydqelm8m1wql08cfffa461f6b8d2b792909483d64c13', '3', 0, '', '', '', '', 'Active', 1, 0, 'master', NULL, 1, NULL),
(3, '0011', 'karan', 'mahesh', 'patil', 'p.png', 'male', '1995-06-12', 'unmaried', '7090434825', '7090434825', '7090434825', 1, 'belgaum', 'belgaum', 0, '3443-4454-5665', 'ASDFF3455S', 'CS', 'A', '7', '4', '2019-06-19', '2019-06-13', 'EM0011@virasat.com', 'EM0011@virasat.com', 'EM0011', 'a1Bz20ydqelm8m1wql6df43d54bec958b2db8f8eb2cb091894', '2', 0, '', '', '', '', 'Inactive', 1, 1, NULL, NULL, NULL, NULL),
(4, '005', 'vishal', 'kallapa', 'patil', 'p.png', 'male', '2019-06-06', 'unmaried', '3446545656', '3446545656', '3446545656', 1, '', '', 0, '1313-3333-3331', 'DFGDF3455S', 'CS', 'A', '1', '1', '2019-06-04', '0000-00-00', 'HR005@virasat.com', 'HR005@virasat.com', 'HR005', 'a1Bz20ydqelm8m1wql89b482c79dc4db7971817f198f0f9a53', '2', 0, '', '', '', '', 'Active', 1, 0, 'Submaster', 'Active', NULL, NULL),
(5, '007', 'akash', 'deepak', 'kamble', '', 'male', '2019-06-20', 'unmaried', '8868685566', '8868685566', '8868685566', 1, 'belgaum', 'belgaum', 0, '3234-3456-6677', 'FDFFG3455S', 'BCA', 'a', '9', '4', '2019-06-06', '2019-06-11', 'EM007@virasat.com', 'EM007@virasat.com', 'EM007', 'a1Bz20ydqelm8m1wql53b5a5b9e3e85bbe6dc53b79a996b317', '2', 0, '', '', '', '', 'Active', 1, 1, NULL, NULL, NULL, NULL),
(6, '003', 'SWAROOP', NULL, 'PATIL', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '4', NULL, '0000-00-00', '2019-06-11', '', NULL, '', 'a1Bz20ydqelm8m1wql08cfffa461f6b8d2b792909483d64c13', NULL, 0, '', '', '', '', 'Inactive', 1, 0, NULL, NULL, NULL, NULL),
(7, '0023', 'deepak', 'mohan', 'desai', 'p.png', 'male', '1996-06-13', 'maried', '3544576778', '3544576778', '3544576778', 1, 'belagum', 'belgaum', 0, '3453-5556-7778', 'SDFDF4546D', 'CS', '', '7', '', '2019-06-20', '0000-00-00', 'EM0023@gmail.com', 'EM0023@gmail.com', 'EM0023', 'a1Bz20ydqelm8m1wql8d478527a87c47859a051fc0f82c0dbe', '2', 0, '', '', '', '', 'Active', 1, 1, NULL, NULL, NULL, NULL),
(8, 'MA201', 'User1', NULL, 'User1', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '5', NULL, '0000-00-00', '0000-00-00', 'user1@gmail.com', NULL, 'MA201', 'a1Bz20ydqelm8m1wql5ab13e3c207d5ed1b8d7fe5385110dce', NULL, 0, '', '', '', '', 'Active', 2, 0, 'master', 'InActive', NULL, NULL),
(9, 'MA202', 'user2', NULL, 'user2', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '5', NULL, '0000-00-00', '0000-00-00', 'user2@gmail.com', NULL, 'MA202', 'a1Bz20ydqelm8m1wql917d632aa71f42d133cad075dd8af8fe', NULL, 0, '', '', '', '', 'Active', 1, 0, 'master', 'InActive', NULL, NULL),
(10, '0019', 'sachin', NULL, 'patil', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, '0000-00-00', '0000-00-00', 'HR0019@virasat.com', NULL, 'HR0019', '', NULL, 0, '', '', '', '', 'Active', 0, 0, NULL, NULL, NULL, NULL),
(11, '0066', 'deep', NULL, 'kk', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, '0000-00-00', '2019-06-13', 'HR0066@virasat.com', NULL, 'HR0066', 'a1Bz20ydqelm8m1wqle4ece97bc6ad70790a95d15aaa1dd45d', NULL, 0, '', '', '', '', 'Inactive', 1, 0, 'Submaster', 'Inactive', NULL, NULL),
(12, '0044', 'rishab', NULL, 'jagtap', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '5', NULL, '0000-00-00', '0000-00-00', 'BM0044@virasat.com', NULL, 'BM0044', 'a1Bz20ydqelm8m1wql512b69f4f34494c91e10ade5dd07461f', NULL, 0, '', '', '', '', 'Active', 1, 0, 'master', 'InActive', NULL, NULL),
(13, '0055', 'lokesh', NULL, 'patil', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '8', NULL, '0000-00-00', '0000-00-00', 'RSM0055@virasat.com', NULL, 'RSM0055', 'a1Bz20ydqelm8m1wqld1236c21e8b73f5c270f18b0a9bb7e48', NULL, 0, '', '', '', '', 'Active', 1, 0, 'Submaster', 'Inactive', NULL, NULL),
(14, '0025', 'akhilesh', 'harish', 'yadav', 'p.png', 'male', '1991-06-11', 'maried', '8123304029', '8123304029', '8123304029', 5, 'chicodi', 'belgaum', 0, '2345-4555-5655', 'SDFDF3454D', 'CS', 'A', '9', '1', '2019-06-02', '0000-00-00', 'MM0025@virasat.com', 'MM0025@virasat.com', 'MM0025', 'a1Bz20ydqelm8m1wql644bc1848b9ec213c67ce3806141c184', '10', 0, '', '', '', '', 'Active', 1, 1, NULL, NULL, 1, NULL),
(15, '0045', 'kamlesh', 'mohan', 'deshpande', 'p.png', 'male', '2019-06-19', 'maried', '8123445567', '8123445567', '8123445567', 1, 'hindalga', 'belgaum', 0, '3243-5676-7878', 'SDFFF3455D', 'CSE', 'a', '4', '2', '2018-12-30', '0000-00-00', 'EM0045@virasat.com', 'EM0045@virasat.com', 'EM0045', 'a1Bz20ydqelm8m1wql9baa655d992cf126e2ef9060da41bc0b', '2', 0, '', '', '', '', 'Active', 1, 0, NULL, NULL, 1, NULL),
(16, '0046', 'alok', 'mahadev', 'patil', 'p.png', 'male', '2019-06-12', 'maried', '8123454566', '8123454566', '8123454566', 1, 'ganeshpur', 'belnkahalli', 590009, '4564-4567-6878', 'DFDGF3453D', 'CSE', 'B', '4', '5', '2019-06-11', '0000-00-00', 'EM0046@virasat.com', 'EM0046@virasat.com', 'EM0046', 'a1Bz20ydqelm8m1wql181d8ea04fc334ee3546f2a509c962ae', '2', 0, 'SBI', 'ganeshpur', 'Alok Patil', '1234567891234567', 'Active', 1, 0, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hr_components`
--

CREATE TABLE `hr_components` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `component` varchar(50) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL,
  `descn` varchar(200) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `percentage` decimal(4,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_components`
--

INSERT INTO `hr_components` (`id`, `type`, `component`, `abbreviation`, `descn`, `status`, `percentage`) VALUES
(1, 'allowance', 'Mobile Allowance', 'MA', 'Mobile Allowance', 'Active', '3.50'),
(2, 'allowance', 'Comunication Allowens', 'CA', 'Comunication Allowens', 'Active', '3.00'),
(3, 'allowance', 'Conveyance Allowence', 'CN', 'Conveyance Allowence', 'Active', '3.00'),
(4, 'allowance', 'Traveling Allowence', 'TA', 'Traveling Allowence', 'Active', '7.50'),
(5, 'deduction_emp', 'Employee Provident Fund', 'EPF', 'Employee Provident Fund', 'Active', '12.00'),
(6, 'deduction_emp', 'Employee State Insurance', 'ESI', 'Employee State Insurance', 'Active', '1.75'),
(7, 'deduction_comp', 'Company Provident Fund', 'CompPF', 'Company Provident Fund', 'Active', '13.00'),
(8, 'deduction_comp', 'Company Employee State Insurance', 'CompESI', 'Company Employee State Insurance', 'Active', '4.75'),
(9, 'allowance_bsc', 'Basic', 'BA', 'Basic', 'Active', '58.00'),
(10, 'allowance_bsc', 'Dearness Allowence', 'DA', 'Dearness Allowence', 'Active', '25.00'),
(11, 'allowance_bsc', 'Home Rent Allowance', 'HRA', 'Home Rent Allowance', 'Active', '0.00'),
(12, 'allowance', '', '', '', 'Active', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `hr_salary`
--

CREATE TABLE `hr_salary` (
  `id` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `basic` decimal(9,2) NOT NULL,
  `gross` decimal(9,2) NOT NULL,
  `net` decimal(9,2) NOT NULL,
  `companycost` decimal(9,2) NOT NULL,
  `pay_mode_ref` varchar(50) NOT NULL,
  `ifsc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_salary`
--

INSERT INTO `hr_salary` (`id`, `eid`, `basic`, `gross`, `net`, `companycost`, `pay_mode_ref`, `ifsc`) VALUES
(1, 3, '99.99', '99.99', '50.00', '99.99', 'bulk posting', 'SBIN00056'),
(2, 4, '99.99', '99.99', '99.99', '99.99', 'IMPS', 'AWPPMI129092845'),
(3, 6, '5600.00', '5659.00', '5500.00', '100.00', 'CHEQUE', '80806020125'),
(4, 4, '28000.00', '40000.00', '38000.00', '2000.00', 'Bulk Posting', 'PAYROLL2019202'),
(5, 7, '60000.00', '180000.00', '158000.00', '20000.00', 'CHEQUE', '90905012523'),
(6, 5, '350000.00', '450000.00', '430000.00', '20000.00', 'Bulk Posting', 'PAYROLL2019202'),
(7, 6, '600000.00', '500000.00', '700000.00', '600000.00', 'Bulk Posting', 'ISBN000099'),
(8, 1, '20000.00', '0.00', '0.00', '0.00', '', ''),
(9, 19, '6640.00', '8000.00', '7063.00', '936.80', 'Bank Transfer', 'SIB00254'),
(10, 19, '6640.00', '8000.00', '7063.20', '936.80', 'Bank Transfer', 'SIB15245'),
(11, 2, '12450.00', '15000.00', '13243.50', '500.00', 'Bank Transfer', 'SIB15245');

-- --------------------------------------------------------

--
-- Table structure for table `hr_saltype`
--

CREATE TABLE `hr_saltype` (
  `id` int(11) NOT NULL,
  `EPF` decimal(9,2) NOT NULL DEFAULT '0.00',
  `EPS` decimal(9,2) NOT NULL DEFAULT '0.00',
  `EDLI` decimal(9,2) NOT NULL DEFAULT '0.00',
  `EPF_admin_charges` decimal(9,2) NOT NULL DEFAULT '0.00',
  `EDLI_admin_charges` decimal(9,2) NOT NULL DEFAULT '0.00',
  `PF` decimal(9,2) NOT NULL DEFAULT '0.00',
  `ESI` decimal(9,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leave_details`
--

CREATE TABLE `leave_details` (
  `ldt_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `lt_id` int(11) NOT NULL,
  `leave_diff` decimal(4,0) NOT NULL DEFAULT '0',
  `reason` varchar(256) NOT NULL,
  `applied_date` varchar(256) NOT NULL,
  `start_date` varchar(256) NOT NULL,
  `end_date` varchar(256) NOT NULL,
  `applied_days` decimal(4,2) NOT NULL DEFAULT '0.00',
  `status` varchar(256) DEFAULT NULL,
  `aproved_days` decimal(4,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_details`
--

INSERT INTO `leave_details` (`ldt_id`, `branch_id`, `e_id`, `lt_id`, `leave_diff`, `reason`, `applied_date`, `start_date`, `end_date`, `applied_days`, `status`, `aproved_days`) VALUES
(1, 1, 2, 3, '12', 'sick', '28/05/2019', '06/04/2019', '06/04/2019', '1.00', 'Accept', '0.00'),
(2, 2, 8, 3, '0', 'sick', '01/06/2019', '06/01/2019', '06/05/2019', '5.00', 'Pending', '0.00'),
(3, 1, 21, 3, '0', 'fever', '06/06/2019', '06/06/2019', '06/08/2019', '3.00', 'Pending', '0.00'),
(4, 1, 27, 2, '15', 'Personal Work', '06/06/2019', '06/07/2019', '06/10/2019', '4.00', 'Accept', '3.00'),
(5, 1, 3, 3, '11', 'sick', '11/06/2019', '06/12/2019', '06/12/2019', '1.00', 'Accept', '1.00'),
(6, 1, 1, 3, '11', 'sick', '11/06/2019', '06/12/2019', '06/12/2019', '1.00', 'Accept', '1.00'),
(7, 1, 2, 3, '10', 'sick', '11/06/2019', '06/12/2019', '06/13/2019', '2.00', 'Accept', '2.00');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `lt_id` int(255) NOT NULL,
  `leave_types` varchar(256) DEFAULT NULL,
  `short_form` varchar(5) DEFAULT NULL,
  `max_leave_days` decimal(4,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`lt_id`, `leave_types`, `short_form`, `max_leave_days`) VALUES
(1, 'Casual Leave', 'CL', '12.00'),
(2, 'Earned Leave', 'EL', '18.00'),
(3, 'Sick Leave', 'SL', '12.00'),
(4, 'Festival Holidays', 'FH', '5.00'),
(5, 'National Holiday', 'NH', '5.00'),
(6, 'Weekly Holidays', 'WH', '52.00'),
(7, 'Maternity Leave', 'ML', '80.00'),
(8, 'Bereavement Leave', 'BL', '35.00');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_id` int(255) NOT NULL,
  `e_id` varchar(256) DEFAULT NULL,
  `login` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  `worked_hours` int(255) DEFAULT NULL,
  `branch_id` int(255) DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(255) NOT NULL,
  `position_name` varchar(256) DEFAULT NULL,
  `dep_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_name`, `dep_id`) VALUES
(1, 'Team Leader', 1),
(2, 'Devloper', 1),
(3, 'Asistant Accountant', 2),
(4, 'UI designer', 1),
(5, 'TESTER', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rclient_info`
--

CREATE TABLE `rclient_info` (
  `rc_id` int(255) NOT NULL,
  `client_name` varchar(256) DEFAULT NULL,
  `contact_no` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `reason` varchar(256) DEFAULT NULL,
  `time_in` varchar(256) DEFAULT NULL,
  `time_out` varchar(256) DEFAULT NULL,
  `branch_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rclient_info`
--

INSERT INTO `rclient_info` (`rc_id`, `client_name`, `contact_no`, `address`, `reason`, `time_in`, `time_out`, `branch_id`) VALUES
(1, 'sachin kumar', '8123304028', 'Angol shastri nagar', 'Appoinment', '06-11-19 08:03:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(255) NOT NULL,
  `role_name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'HumanResource'),
(2, 'Reception '),
(3, 'Accountant'),
(4, 'Employees'),
(5, 'Manager'),
(6, 'Web designer'),
(7, 'Executive'),
(8, 'RSM'),
(9, 'Marketing Manager');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(255) NOT NULL,
  `state_name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'karnataka'),
(2, 'Maharashtra'),
(3, 'Goa');

-- --------------------------------------------------------

--
-- Table structure for table `stationary_inward`
--

CREATE TABLE `stationary_inward` (
  `st_id` int(255) NOT NULL,
  `ss_id` varchar(256) DEFAULT NULL,
  `quantity` varchar(256) DEFAULT NULL,
  `material_price` varchar(256) DEFAULT NULL,
  `total_price` varchar(256) DEFAULT NULL,
  `purchased_by` varchar(256) DEFAULT NULL,
  `date_time` varchar(256) DEFAULT NULL,
  `branch_id` int(255) NOT NULL,
  `status` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stationary_inward`
--

INSERT INTO `stationary_inward` (`st_id`, `ss_id`, `quantity`, `material_price`, `total_price`, `purchased_by`, `date_time`, `branch_id`, `status`) VALUES
(1, '0', '2', '15', '30', 'Abc', '05-31-19 14:15:29', 2, 'instock'),
(2, '2', '5', '10', '50', 'Hanuman Book Stall', '06-01-19 09:45:00', 2, 'instock'),
(3, '1', '5', '10', '50', 'Hanuman Book Stall', '06-01-19 09:46:50', 2, 'instock');

-- --------------------------------------------------------

--
-- Table structure for table `stationary_outward`
--

CREATE TABLE `stationary_outward` (
  `so` int(255) NOT NULL,
  `ss_id` varchar(256) DEFAULT NULL,
  `e_id` int(255) DEFAULT NULL,
  `quantity` varchar(256) DEFAULT NULL,
  `date_time` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `branch_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stationary_outward`
--

INSERT INTO `stationary_outward` (`so`, `ss_id`, `e_id`, `quantity`, `date_time`, `status`, `branch_id`) VALUES
(1, '1', 8, '2', '05-31-19 14:15:52', NULL, 2),
(2, '2', 8, '2', '06-01-19 09:50:53', NULL, 2),
(3, '2', 8, '5', '06-01-19 09:54:28', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stationary_stock`
--

CREATE TABLE `stationary_stock` (
  `ss_id` int(255) NOT NULL,
  `material_name` varchar(256) DEFAULT NULL,
  `quantity` varchar(256) DEFAULT '0',
  `branch_id` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stationary_stock`
--

INSERT INTO `stationary_stock` (`ss_id`, `material_name`, `quantity`, `branch_id`, `status`) VALUES
(1, 'Book', '3', '2', NULL),
(2, 'Pen', '-2', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taluka`
--

CREATE TABLE `taluka` (
  `taluka_id` int(255) NOT NULL,
  `taluka_name` varchar(256) DEFAULT NULL,
  `state_id` varchar(256) DEFAULT NULL,
  `dist_id` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taluka`
--

INSERT INTO `taluka` (`taluka_id`, `taluka_name`, `state_id`, `dist_id`) VALUES
(1, 'belgaum', '1', '1'),
(3, 'khanapur', '1', '1'),
(4, 'Dharwad', '1', '5'),
(5, 'chicodi', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(256) DEFAULT NULL,
  `branch_id` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`, `branch_id`) VALUES
(1, 'alfa', '1'),
(2, 'beta team', '1'),
(3, 'gama', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(150) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`) VALUES
(1, 'AD001', 'a1Bz20ydqelm8m1wql02adddb2561f22b49ac2bd6a62f3afaf', 'Admin'),
(2, 'DW001', 'a1Bz20ydqelm8m1wql7d2bd5d222b3e62b386a625c5469bdd4', 'Developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `customer_data`
--
ALTER TABLE `customer_data`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `hr_components`
--
ALTER TABLE `hr_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_salary`
--
ALTER TABLE `hr_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_saltype`
--
ALTER TABLE `hr_saltype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_details`
--
ALTER TABLE `leave_details`
  ADD PRIMARY KEY (`ldt_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`lt_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `rclient_info`
--
ALTER TABLE `rclient_info`
  ADD PRIMARY KEY (`rc_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `stationary_inward`
--
ALTER TABLE `stationary_inward`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `stationary_outward`
--
ALTER TABLE `stationary_outward`
  ADD PRIMARY KEY (`so`);

--
-- Indexes for table `stationary_stock`
--
ALTER TABLE `stationary_stock`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `taluka`
--
ALTER TABLE `taluka`
  ADD PRIMARY KEY (`taluka_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_data`
--
ALTER TABLE `customer_data`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dep_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `dist_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `doc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hr_components`
--
ALTER TABLE `hr_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hr_salary`
--
ALTER TABLE `hr_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hr_saltype`
--
ALTER TABLE `hr_saltype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_details`
--
ALTER TABLE `leave_details`
  MODIFY `ldt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `lt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rclient_info`
--
ALTER TABLE `rclient_info`
  MODIFY `rc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stationary_inward`
--
ALTER TABLE `stationary_inward`
  MODIFY `st_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stationary_outward`
--
ALTER TABLE `stationary_outward`
  MODIFY `so` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stationary_stock`
--
ALTER TABLE `stationary_stock`
  MODIFY `ss_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taluka`
--
ALTER TABLE `taluka`
  MODIFY `taluka_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
