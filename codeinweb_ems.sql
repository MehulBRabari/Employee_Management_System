-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2024 at 01:31 PM
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
-- Database: `codeinweb_ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_employee`
--

CREATE TABLE `add_employee` (
  `id` int(30) NOT NULL,
  `employeeID` varchar(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `gender` text NOT NULL,
  `dob` date NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `emobile` varchar(18) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `designation` varchar(250) NOT NULL,
  `position` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `joining_date` date NOT NULL,
  `employee_proof_id` text NOT NULL,
  `image` text NOT NULL,
  `reporting_person` text NOT NULL,
  `emp_image` text NOT NULL,
  `otp_verification` text DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `current_time` datetime DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_employee`
--

INSERT INTO `add_employee` (`id`, `employeeID`, `first_name`, `last_name`, `gender`, `dob`, `mobile`, `emobile`, `email`, `password`, `designation`, `position`, `experience`, `address`, `joining_date`, `employee_proof_id`, `image`, `reporting_person`, `emp_image`, `otp_verification`, `status`, `current_time`, `update_time`) VALUES
(45, 'CIW000045', 'Mehul', 'Rabari', 'male', '2024-08-01', '6352929701', '', 'mehul@gmail.com', '985ad95e3ff459056085de7aa0f6c8a8', 'Full Stack Developer ', 'Team Leader', 'Trained', 'Village kukas Ta Di Mehsana', '2024-09-01', 'PAN Card', 'proof_id_doc1724488590_img.jpg', 'Manager', 'profile_1724488590_Mehul.png', NULL, NULL, '2024-08-24 14:06:30', '2024-08-24 08:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(50) NOT NULL,
  `admin_name` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `admin_otp_verification` text DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `admin_name`, `email`, `password`, `admin_otp_verification`, `status`, `created_time`, `updated_time`) VALUES
(2, 'Admin', 'admin@gmail.com', '82a30e69c5acaed2d95b805f9d032ef5', '936598', NULL, '2024-05-31 09:24:11', '2024-08-24 14:03:52'),
(3, 'Adminemp', 'admin12@gmail.com', '82a30e69c5acaed2d95b805f9d032ef5', NULL, NULL, '2024-05-31 10:34:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` int(50) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `designation` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `date` date NOT NULL,
  `pay_period` varchar(50) NOT NULL,
  `worked_days` int(40) NOT NULL,
  `basic_pay` decimal(10,0) NOT NULL,
  `incentive_pay` decimal(10,0) NOT NULL,
  `house_rent_allowance` decimal(10,0) NOT NULL,
  `meal_allowance` decimal(10,0) NOT NULL,
  `provident_fund` decimal(10,0) NOT NULL,
  `professional_tax` decimal(10,0) NOT NULL,
  `loan` decimal(10,0) NOT NULL,
  `remark` text NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`id`, `employeeID`, `first_name`, `last_name`, `designation`, `address`, `date`, `pay_period`, `worked_days`, `basic_pay`, `incentive_pay`, `house_rent_allowance`, `meal_allowance`, `provident_fund`, `professional_tax`, `loan`, `remark`, `created_time`, `updated_time`) VALUES
(32, 'CIW000045', NULL, NULL, '', '', '2024-08-01', 'Full Time', 25, 14000, 0, 0, 0, 0, 0, 0, 'class=\"form-control\"', '2024-08-24 08:42:59', '2024-08-24 14:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `employee_timeline`
--

CREATE TABLE `employee_timeline` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `work_description` text DEFAULT NULL,
  `first_pro_date` date NOT NULL,
  `first_pro_review` text NOT NULL,
  `lead_new_pro` varchar(160) NOT NULL,
  `perform_review` text NOT NULL,
  `promotion_date` date NOT NULL,
  `promotion_dep` varchar(130) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_leave`
--

CREATE TABLE `emp_leave` (
  `id` int(50) NOT NULL,
  `employeeID` varchar(200) NOT NULL,
  `emp_name` varchar(60) NOT NULL,
  `leave_type` text NOT NULL,
  `select_leave` text NOT NULL,
  `single_date` date NOT NULL,
  `leave_duration` text NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `leave_description` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_leave`
--

INSERT INTO `emp_leave` (`id`, `employeeID`, `emp_name`, `leave_type`, `select_leave`, `single_date`, `leave_duration`, `from_date`, `to_date`, `leave_description`, `status`, `created_time`, `updated_time`) VALUES
(25, 'CIW000045', 'Mehul', 'Sick Leave', 'single day', '2024-08-24', 'Full Day', '0000-00-00', '0000-00-00', 'For Collage work', 0, '2024-08-24 08:52:17', '2024-08-24 14:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(50) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `title`, `description`, `start_datetime`, `end_datetime`, `created_time`, `updated_time`) VALUES
(11, 'Meeting', 'Meeting For Client', '2024-05-25 21:34:00', '2024-05-26 13:37:00', '2024-05-23 08:02:22', '2024-05-23 23:47:19'),
(21, 'Meeting For Project', 'Meeting discussion', '2024-06-06 16:30:00', '2024-06-08 20:30:00', '2024-06-05 09:00:22', NULL),
(22, 'Project ', 'Project for client', '2024-07-12 17:30:00', '2024-07-13 14:35:00', '2024-06-05 09:01:23', '2024-06-05 14:32:42'),
(23, 'Meeting for Project', 'Meeting of Project Discussion', '2024-06-05 17:05:00', '2024-06-05 19:05:00', '2024-06-05 09:35:57', '2024-06-05 15:11:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_employee`
--
ALTER TABLE `add_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_timeline`
--
ALTER TABLE `employee_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `emp_leave`
--
ALTER TABLE `emp_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_employee`
--
ALTER TABLE `add_employee`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `employee_timeline`
--
ALTER TABLE `employee_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `emp_leave`
--
ALTER TABLE `emp_leave`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_timeline`
--
ALTER TABLE `employee_timeline`
  ADD CONSTRAINT `employee_timeline_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `add_employee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
