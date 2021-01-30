-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 30, 2021 at 04:17 PM
-- Server version: 10.3.20-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shahul2020_swarkul`
--

DELIMITER $$
--
-- Procedures
--
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `academy`
--

CREATE TABLE `academy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(12) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_type` enum('Admin','Student','Academy','Examiner') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_type` enum('Admin','Web','Android','Ios') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Web',
  `dob` date NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_academy` tinyint(1) DEFAULT 0,
  `music_stream` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` bigint(11) NOT NULL,
  `unique_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `music_academy` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zoom_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academy`
--

INSERT INTO `academy` (`id`, `academy_name`, `email`, `phone`, `email_verified_at`, `password`, `role_id`, `remember_token`, `role_type`, `status`, `latitude`, `longitude`, `register_type`, `dob`, `gender`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `is_academy`, `music_stream`, `code`, `unique_code`, `music_academy`, `teacher_name`, `zoom_id`, `zoom_password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Claire Curry', 'sehuvo@mailinator.com', '2619757306', NULL, '$2y$10$GiQ7JfcVJyApO4/Ady8wo.QXXpJNlkB5grMY5GVvYuBP1b8RR0dK2', NULL, NULL, 'Academy', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', '921 North Hague Street', 'Accusantium expedita culpa adipisicing corrupti rerum recusandae Ut maiores et sunt', 'Corrupti voluptate consequatur consequatur', 'Rerum possimus et veniam placeat et autem', '68600', '5', 0, 'Tempore pariatur Laborum architecto et laboriosam error', 91, 'SM0001', 'Laborum dolor qui modi fugiat veniam anim voluptate ex itaque', NULL, '', '', '2021-01-25 06:13:11', '2021-01-26 12:36:54', NULL),
(3, 'Shahul Academy', 'info2@gmail.com', '9789029751', NULL, '$2y$10$3CatvDgpVi.DCGIp3Ce6R..t6XRKW7zjF7lr3XXPvE1CAoJoAjlPu', NULL, NULL, 'Academy', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'chenani', 'chennai', 'CHENNAI', 'TN', '600001', '1', 1, NULL, 91, 'SM0002', 'Shahul Academy', NULL, '', '', '2021-01-25 09:27:54', '2021-01-25 09:27:54', NULL),
(4, 'Keiko Lara', 'ruca@mailinator.com', '538-382143', NULL, '$2y$10$0DFhgIHmqLS8RZWQn852AOf1kPhx7xnTHLcrssX2VUJWwlOkxUOsC', NULL, NULL, 'Academy', 'Inactive', NULL, NULL, 'Web', '0000-00-00', 'male', '945 Nobel Boulevard', 'Elit accusantium nisi tempor est eaque error cum totam minima', 'Irure inventore fugit id consequuntur quis i', 'Amet deleniti dolor', '26586', '4', 1, 'Aut ut itaque ratione in amet veritatis aut ducimus ad eiusmod eiusmod sit reiciendis magna nobis', 91, 'SM0003', 'Inventore assumenda eveniet amet vel dolor quos omnis veniam cum distinctio Eu', NULL, '', '', '2021-01-26 12:36:43', '2021-01-26 12:36:43', NULL),
(5, 'Test Acadmey', 'test12333@gmail.com', '9789029751', NULL, '$2y$10$1IF.c//iAXqN2fq21mMorOTs0PPcFGNJ2kLQR71qnJuVEFM9HMknu', NULL, NULL, 'Academy', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'chennai', 'chennai', 'chennai', 'tamil nadu', '600001', '1', 1, NULL, 91, 'SM0004', 'TEST ACADEMY', NULL, '', '', '2021-01-27 15:13:02', '2021-01-27 15:13:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` int(11) NOT NULL,
  `configuration_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configuration_value` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comments` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `configuration_name`, `configuration_value`, `Comments`) VALUES
(1, 'slot_time', '60', 'minutes'),
(2, 'evaluation_button_enable_from', '60', 'minutes'),
(3, 'evaluation_button_enable_to', '15', 'minutes'),
(4, 'evaluation_grading', '{\"35\":\"Fail\",\"60\":\"Second Class\",\"80\":\"First Class\",\"100\":\"Distinction\"}', ''),
(5, 'timer_time', '10', 'minutes');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'India', '2021-01-18 11:05:43', '0000-00-00 00:00:00', NULL),
(3, 'USA', '2021-01-18 07:46:21', '0000-00-00 00:00:00', NULL),
(4, 'Canada', '2021-01-18 07:46:25', '0000-00-00 00:00:00', NULL),
(5, 'Australia', '2021-01-18 07:46:29', '0000-00-00 00:00:00', NULL),
(6, 'Srilanka', '2021-01-24 04:08:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Japan', '2021-01-24 04:10:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'China', '2021-01-24 04:10:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `examiner_capabilities`
--

CREATE TABLE `examiner_capabilities` (
  `id` int(11) NOT NULL,
  `examiner_id` int(11) NOT NULL,
  `genre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Elite','Regular') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examiner_capabilities`
--

INSERT INTO `examiner_capabilities` (`id`, `examiner_id`, `genre`, `level`, `type`) VALUES
(1, 26, 'Carnatic Vocal', 'Level 1', 'Regular'),
(2, 26, 'Carnatic Vocal', 'Level 2', 'Regular'),
(3, 26, 'Carnatic Vocal', 'Level 3', 'Regular'),
(4, 26, 'Carnatic Vocal', 'Level 4', 'Regular'),
(5, 26, 'Violin', 'Level 1', 'Regular'),
(6, 26, 'Violin', 'Level 2', 'Regular'),
(7, 26, 'Violin', 'Level 3', 'Regular'),
(8, 26, 'Violin', 'Level 4', 'Regular'),
(9, 43, 'Carnatic Vocal', 'Level 1', 'Regular'),
(10, 43, 'Carnatic Vocal', 'Level 2', 'Regular'),
(11, 26, 'Carnatic Vocal', 'Pre-grade', 'Regular'),
(12, 48, 'Carnatic Vocal', 'Pre-grade', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `exam_evaluation`
--

CREATE TABLE `exam_evaluation` (
  `id` int(11) NOT NULL,
  `exam_shedule_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) DEFAULT NULL,
  `note` varchar(500) NOT NULL,
  `marks` double(10,2) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `exam_started_at` datetime DEFAULT NULL,
  `exam_ended_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_evaluation`
--

INSERT INTO `exam_evaluation` (`id`, `exam_shedule_id`, `exam_id`, `note`, `marks`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `exam_started_at`, `exam_ended_at`) VALUES
(1, 4, 1, '', 90.00, 'Active', '2021-01-28 21:44:03', 26, '2021-01-28 21:44:12', 0, NULL, NULL),
(2, 4, 2, '', 80.00, 'Active', '2021-01-28 21:44:03', 26, '2021-01-28 21:44:12', 0, NULL, NULL),
(3, 4, 3, '', 30.00, 'Active', '2021-01-28 21:44:03', 26, '2021-01-28 21:44:12', 0, NULL, NULL),
(4, 4, 4, '', 30.00, 'Active', '2021-01-28 21:44:03', 26, '2021-01-28 21:44:12', 0, NULL, NULL),
(5, 4, 5, '', 20.00, 'Active', '2021-01-28 21:44:03', 26, '2021-01-28 21:44:12', 0, NULL, NULL),
(6, 4, 6, '', 10.00, 'Active', '2021-01-28 21:44:03', 26, '2021-01-28 21:44:12', 0, NULL, NULL),
(7, 4, 7, '', 5.00, 'Active', '2021-01-28 21:44:03', 26, '2021-01-28 21:44:12', 0, NULL, NULL),
(8, 4, 8, '', 5.00, 'Active', '2021-01-28 21:44:03', 26, '2021-01-28 21:44:12', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_evaluation_grade`
--

CREATE TABLE `exam_evaluation_grade` (
  `id` int(11) NOT NULL,
  `exam_shedule_id` bigint(20) NOT NULL,
  `final_comment` longtext DEFAULT NULL,
  `grade` double(10,2) NOT NULL,
  `marks` double(10,2) NOT NULL,
  `status` varchar(220) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_evaluation_grade`
--

INSERT INTO `exam_evaluation_grade` (`id`, `exam_shedule_id`, `final_comment`, `grade`, `marks`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(12, 31, 'GOOGLD', 50.00, 50.00, '{\"35\":\"Fail\",\"60\":\"Second Class\",\"80\":\"First Class\",\"100\":\"Distinction\"}', '2021-01-19 12:40:14', 26, '2021-01-19 12:40:14', 0),
(13, 53, 'ss', 78.00, 78.00, '{\"35\":\"Fail\",\"60\":\"Second Class\",\"80\":\"First Class\",\"100\":\"Distinction\"}', '2021-01-24 16:01:05', 26, '2021-01-24 16:01:05', 0),
(14, 2, 'good', 69.00, 69.00, '{\"35\":\"Fail\",\"60\":\"Second Class\",\"80\":\"First Class\",\"100\":\"Distinction\"}', '2021-01-24 18:18:52', 26, '2021-01-24 18:18:52', 0),
(15, 92, 'ss', 70.00, 70.00, '{\"35\":\"Fail\",\"60\":\"Second Class\",\"80\":\"First Class\",\"100\":\"Distinction\"}', '2021-01-28 18:05:48', 26, '2021-01-28 18:05:48', 0),
(16, 4, 'sss', 90.00, 90.00, '{\"35\":\"Fail\",\"60\":\"Second Class\",\"80\":\"First Class\",\"100\":\"Distinction\"}', '2021-01-28 21:44:12', 26, '2021-01-28 21:44:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exam_master`
--

CREATE TABLE `exam_master` (
  `id` int(11) NOT NULL,
  `exam_level` varchar(100) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `category_total_marks` double(10,2) NOT NULL,
  `parent_exam_id` bigint(20) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_master`
--

INSERT INTO `exam_master` (`id`, `exam_level`, `category`, `genre`, `category_total_marks`, `parent_exam_id`, `status`, `created_at`, `created_by`) VALUES
(1, 'Pre-grade', 'Carnatic Vocal', 'Carnatic Vocal', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(2, 'Level 1', 'Practical', 'Carnatic Vocal', 80.00, 1, 'Active', '2020-12-14 00:00:00', 1),
(3, 'Level 1', 'Accuracy', 'Carnatic Vocal', 30.00, 2, 'Active', '2020-12-14 00:00:00', 1),
(4, 'Level 1', 'Articulation', 'Carnatic Vocal', 30.00, 2, 'Active', '2020-12-14 00:00:00', 1),
(5, 'Level 1', 'Technicality ', 'Carnatic Vocal', 20.00, 2, 'Active', '2020-12-14 00:00:00', 1),
(6, 'Level 1', 'Theory', 'Carnatic Vocal', 20.00, 1, 'Active', '2020-12-14 00:00:00', 1),
(7, 'Level 1', 'Knowledge on Question bank', 'Carnatic Vocal', 10.00, 6, 'Active', '2020-12-14 00:00:00', 1),
(8, 'Level 1', 'Knowledge on Syllabus', 'Carnatic Vocal', 10.00, 6, 'Active', '2020-12-14 00:00:00', 1),
(9, 'Level 1', 'Carnatic Vocal', 'Carnatic Vocal', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(10, 'Level 2', 'Carnatic Vocal', 'Carnatic Vocal', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(11, 'Level 3\r\n', 'Carnatic Vocal', 'Carnatic Vocal', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(12, 'Level 4', 'Carnatic Vocal', 'Carnatic Vocal', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(13, 'Level 5', 'Carnatic Vocal', 'Carnatic Vocal', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(14, 'Level 6', 'Carnatic Vocal', 'Carnatic Vocal', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(15, 'Level 7', 'Carnatic Vocal', 'Carnatic Vocal', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(16, 'Pre-grade', 'Violin', 'Violin', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(17, 'Level 1', 'Violin', 'Violin', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(18, 'Level 2', 'Violin', 'Violin', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(19, 'Level 3', 'Violin', 'Violin', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(20, 'Level 4', 'Violin', 'Violin', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(21, 'Level 5', 'Violin', 'Violin', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(22, 'Level 6', 'Violin', 'Violin', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(23, 'Level 7', 'Violin', 'Violin', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(24, 'Pre-grade', 'Flute', 'Flute', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(25, 'Level 1', 'Flute', 'Flute', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(26, 'Level 2', 'Flute', 'Flute', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(27, 'Level 3', 'Flute', 'Flute', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(28, 'Level 4', 'Flute', 'Flute', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(29, 'Level 5', 'Flute', 'Flute', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(30, 'Level 6', 'Flute', 'Flute', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(31, 'Level 7', 'Flute', 'Flute', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(32, 'Pre-grade', 'Veena', 'Veena', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(33, 'Level 1', 'Veena', 'Veena', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(34, 'Level 2', 'Veena', 'Veena', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(35, 'Level 3', 'Veena', 'Veena', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(36, 'Level 4', 'Veena', 'Veena', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(37, 'Level 5', 'Veena', 'Veena', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(38, 'Level 6', 'Veena', 'Veena', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1),
(39, 'Level 7', 'Veena', 'Veena', 100.00, 0, 'Active', '2020-12-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_scheduler`
--

CREATE TABLE `exam_scheduler` (
  `id` int(11) NOT NULL,
  `slot_id` bigint(20) NOT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `student_booked_at` timestamp NULL DEFAULT NULL,
  `payment_status` enum('Failed','Success') DEFAULT NULL,
  `academy_name` varchar(100) DEFAULT NULL,
  `examiner_id` bigint(20) DEFAULT NULL,
  `exam_master_id` bigint(20) DEFAULT NULL,
  `status` enum('Pending','Inprogress','Complete') DEFAULT 'Pending',
  `slot_booking_status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `zoom_url` text DEFAULT NULL,
  `zoom_password` text DEFAULT NULL,
  `meetingId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_scheduler`
--

INSERT INTO `exam_scheduler` (`id`, `slot_id`, `student_id`, `student_booked_at`, `payment_status`, `academy_name`, `examiner_id`, `exam_master_id`, `status`, `slot_booking_status`, `created_at`, `zoom_url`, `zoom_password`, `meetingId`, `created_by`) VALUES
(4, 207, 29, '2021-01-28 02:47:58', 'Success', '2', 26, 1, 'Pending', '1', '0000-00-00 00:00:00', 'https://us02web.zoom.us/j/83129923511?pwd=S3pNV0NYbVdQdlFKcDlneGNEajM3Zz09', '0ipHKGDrE', 83129923511, 26),
(6, 208, NULL, NULL, NULL, NULL, 26, NULL, 'Pending', '0', '0000-00-00 00:00:00', 'https://us02web.zoom.us/j/84619041882?pwd=Q3gwM3grOFhrdmF5OUN5cGgrUHJ2Zz09', 'dzq93D7S5', 84619041882, 26);

-- --------------------------------------------------------

--
-- Table structure for table `fee_structure`
--

CREATE TABLE `fee_structure` (
  `id` int(11) NOT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inr_currency` double NOT NULL,
  `usd_currency` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_structure`
--

INSERT INTO `fee_structure` (`id`, `level`, `inr_currency`, `usd_currency`) VALUES
(1, 'Pre-grade', 1000, 50),
(2, 'Level 1', 1250, 60),
(3, 'Level 2', 1250, 60),
(4, 'Level 3', 1500, 75),
(5, 'Level 4', 2000, 100),
(6, 'Level 5', 2500, 125),
(7, 'Level 6', 3000, 125),
(8, 'Level 7', 4000, 150);

-- --------------------------------------------------------

--
-- Table structure for table `genrelist`
--

CREATE TABLE `genrelist` (
  `id` int(11) NOT NULL,
  `genre` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genrelist`
--

INSERT INTO `genrelist` (`id`, `genre`) VALUES
(1, 'Carnatic Vocal'),
(2, 'Violin'),
(3, 'Flute'),
(4, 'Western'),
(5, 'Keyboard');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(220) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Manage Admin', 'Active', '2020-04-24 06:13:19', '0000-00-00 00:00:00', NULL),
(2, 'Dashboard', 'Active', '2020-04-24 06:16:29', '0000-00-00 00:00:00', NULL),
(3, 'Manage Agreement', 'Active', '2020-10-31 11:45:13', '0000-00-00 00:00:00', NULL),
(4, 'Manage Lead', 'Active', '2020-10-31 11:45:20', '0000-00-00 00:00:00', NULL),
(5, 'Manage Service', 'Active', '2020-10-31 11:45:26', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `permission` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `permission`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', '2020-04-28 04:23:37', '2020-04-28 04:23:37', NULL),
(2, '{\"module\":\"{\\\"Manage_Admin\\\":{\\\"Admin_user\\\":{\\\"Add\\\":\\\"Add\\\",\\\"Update\\\":\\\"Update\\\",\\\"Delete\\\":\\\"Delete\\\"},\\\"Role\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\"}}}\",\"url\":\"{\\\"Manage_Admin\\\":{\\\"Admin_user\\\":{\\\"Add\\\":\\\"Add\\\",\\\"Update\\\":\\\"Update\\\",\\\"Delete\\\":\\\"Delete\\\"},\\\"Role\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\"}}}\"}', '2020-10-31 12:28:05', '2020-04-28 04:25:35', '2020-10-19 18:30:00'),
(3, '{\"module\":\"{\\\"Manage_Admin\\\":{\\\"Admin_user\\\":{\\\"View\\\":\\\"View\\\"},\\\"Role\\\":{\\\"Delete\\\":\\\"Delete\\\"}},\\\"Dashboard\\\":{\\\"Analytics\\\":{\\\"Analytics\\\":\\\"Analytics\\\"}}}\",\"url\":\"{\\\"Manage_Admin\\\":{\\\"Admin_user\\\":{\\\"View\\\":\\\"View\\\"},\\\"Role\\\":{\\\"Delete\\\":\\\"Delete\\\"}},\\\"Dashboard\\\":{\\\"Analytics\\\":{\\\"Analytics\\\":\\\"Analytics\\\"}}}\"}', '2020-10-31 12:28:07', '2020-04-29 05:09:11', '2020-10-04 18:30:00'),
(4, '{\"module\":\"{\\\"Manage_Admin\\\":{\\\"Admin_user\\\":{\\\"View\\\":\\\"View\\\"},\\\"Role\\\":{\\\"View\\\":\\\"View\\\"}},\\\"Dashboard\\\":{\\\"Dashboard\\\":{\\\"View\\\":\\\"View\\\"}},\\\"Manage_Agreement\\\":{\\\"Agreement\\\":{\\\"View\\\":\\\"View\\\",\\\"Add\\\":\\\"Add\\\",\\\"Update\\\":\\\"Update\\\",\\\"Delete\\\":\\\"Delete\\\"}},\\\"Manage_Lead\\\":{\\\"Lead\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\",\\\"Add\\\":\\\"Add\\\",\\\"Delete\\\":\\\"Delete\\\"},\\\"Lead_Payment\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\",\\\"Add\\\":\\\"Add\\\",\\\"Delete\\\":\\\"Delete\\\"}},\\\"Manage_Service\\\":{\\\"Service_Category\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\",\\\"Delete\\\":\\\"Delete\\\"},\\\"Service_Title\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\",\\\"Add\\\":\\\"Add\\\",\\\"Delete\\\":\\\"Delete\\\"}}}\",\"url\":\"{\\\"Manage_Admin\\\":{\\\"Admin_user\\\":{\\\"View\\\":\\\"View\\\"},\\\"Role\\\":{\\\"View\\\":\\\"View\\\"}},\\\"Dashboard\\\":{\\\"Dashboard\\\":{\\\"View\\\":\\\"View\\\"}},\\\"Manage_Agreement\\\":{\\\"Agreement\\\":{\\\"View\\\":\\\"View\\\",\\\"Add\\\":\\\"Add\\\",\\\"Update\\\":\\\"Update\\\",\\\"Delete\\\":\\\"Delete\\\"}},\\\"Manage_Lead\\\":{\\\"Lead\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\",\\\"Add\\\":\\\"Add\\\",\\\"Delete\\\":\\\"Delete\\\"},\\\"Lead_Payment\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\",\\\"Add\\\":\\\"Add\\\",\\\"Delete\\\":\\\"Delete\\\"}},\\\"Manage_Service\\\":{\\\"Service_Category\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\",\\\"Delete\\\":\\\"Delete\\\"},\\\"Service_Title\\\":{\\\"View\\\":\\\"View\\\",\\\"Update\\\":\\\"Update\\\",\\\"Add\\\":\\\"Add\\\",\\\"Delete\\\":\\\"Delete\\\"}}}\"}', '2020-10-31 13:25:20', '2020-10-31 07:55:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `role_desc` varchar(320) NOT NULL,
  `permission_id` bigint(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` bigint(11) NOT NULL,
  `updated_by` bigint(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `role_desc`, `permission_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'Student', 'Student', 4, 'Active', 1, 1, '2020-10-31 07:14:10', '2020-10-31 07:55:20', NULL),
(12, 'Examiner', 'Examiner', 0, 'Active', 0, 0, '2020-12-09 18:26:28', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` int(11) NOT NULL,
  `slot_date` date NOT NULL,
  `slot_time_start` varchar(120) NOT NULL,
  `slot_time_end` varchar(120) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `slot_date`, `slot_time_start`, `slot_time_end`, `status`, `created_at`) VALUES
(207, '2021-01-28', '21:30', '22:00', 'Active', '2021-01-28 23:59:58'),
(208, '2021-02-01', '21:30', '22:00', 'Active', '2021-01-28 23:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `submodules`
--

CREATE TABLE `submodules` (
  `id` int(11) NOT NULL,
  `module_id` bigint(12) NOT NULL,
  `submodule_name` varchar(220) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submodules`
--

INSERT INTO `submodules` (`id`, `module_id`, `submodule_name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Admin user - View', 'Active', '2020-04-24 06:21:02', '0000-00-00 00:00:00', NULL),
(2, 1, 'Admin user - Add / Update', 'Active', '2020-04-24 06:21:27', '0000-00-00 00:00:00', NULL),
(3, 1, 'Admin user - Delete', 'Active', '2020-04-24 06:21:51', '0000-00-00 00:00:00', NULL),
(4, 1, 'Role - View', 'Active', '2020-04-24 07:34:52', '0000-00-00 00:00:00', NULL),
(5, 1, 'Role - Add / Update', 'Active', '2020-04-24 07:34:58', '0000-00-00 00:00:00', NULL),
(6, 1, 'Role - Delete', 'Active', '2020-04-24 07:35:03', '0000-00-00 00:00:00', NULL),
(7, 2, 'Dashboard - View', 'Active', '2020-10-31 12:29:49', '0000-00-00 00:00:00', NULL),
(8, 3, 'Agreement - View', 'Active', '2020-10-31 12:36:35', '0000-00-00 00:00:00', NULL),
(9, 3, 'Agreement - Add / Update', 'Active', '2020-10-31 12:36:40', '0000-00-00 00:00:00', NULL),
(10, 3, 'Agreement - Delete', 'Active', '2020-10-31 12:36:45', '0000-00-00 00:00:00', NULL),
(11, 4, 'Lead - View', 'Active', '2020-10-31 12:36:49', '0000-00-00 00:00:00', NULL),
(12, 4, 'Lead - Add / Update', 'Active', '2020-10-31 12:36:53', '0000-00-00 00:00:00', NULL),
(13, 4, 'Lead - Delete', 'Active', '2020-10-31 12:36:57', '0000-00-00 00:00:00', NULL),
(14, 4, 'Lead Payment - View', 'Active', '2020-10-31 12:37:36', '0000-00-00 00:00:00', NULL),
(15, 4, 'Lead Payment - Add / Update', 'Active', '2020-10-31 12:37:48', '0000-00-00 00:00:00', NULL),
(16, 4, 'Lead Payment - Delete', 'Active', '2020-10-31 12:37:57', '0000-00-00 00:00:00', NULL),
(17, 5, 'Service Category - View', 'Active', '2020-10-31 12:38:30', '0000-00-00 00:00:00', NULL),
(18, 5, 'Service Category - Add / Update', 'Active', '2020-10-31 12:38:42', '0000-00-00 00:00:00', NULL),
(19, 5, 'Service Category - Delete', 'Active', '2020-10-31 12:38:52', '0000-00-00 00:00:00', NULL),
(20, 5, 'Service Title - View', 'Active', '2020-10-31 12:39:21', '0000-00-00 00:00:00', NULL),
(21, 5, 'Service Title - Add / Update', 'Active', '2020-10-31 12:39:35', '0000-00-00 00:00:00', NULL),
(22, 5, 'Service Title - Delete', 'Active', '2020-10-31 12:39:45', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `examiner_id` int(11) NOT NULL,
  `scheduleId` int(11) DEFAULT NULL,
  `access_token` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `examiner_id`, `scheduleId`, `access_token`, `created_at`, `updated_at`) VALUES
(16, 26, 68, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIxM2U5Njg1OS05OGY2LTQ5YzEtYjNkNS1hNGJmMzk4OTkyYzkifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJBZnNybVlWcDNlX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE2NzY5LCJleHAiOjE2MTE4MjAzNjksImlhdCI6MTYxMTgxNjc2OSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImY1NDE5ZjBiLTk0ZGQtNDBhMy1iODM4LTY0ZmQ3OWI1Yzc3NCJ9.A99VcDHoOxeqShjgkthCLVGZoDswxozeV_VIJpZF6vJ-_Qnzl-OvnTZEZdfaBjrjdMhrgVSYapHp5z1DkK1jvw\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJhYzQxM2I5Yi0wYzI5LTQ3NWEtYjFhYy02NTgzMDNmYTRiMTIifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJBZnNybVlWcDNlX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE2NzY5LCJleHAiOjIwODQ4NTY3NjksImlhdCI6MTYxMTgxNjc2OSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjNkNWJhYTBmLTJmZWUtNGRmZC05ZjFkLWE4YTIxYzI2Y2JiYiJ9.EhEY5E4mR_vyR4rUoeDu6EaP0KTqMf2HPX-Irxk7E54KTNPAeOAjonTy8vdoNrL1HRRM7anccUBN8FY-wuu2kA\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:22:49', '2021-01-28 12:22:49'),
(17, 26, 69, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIxNWU1NzM4Ny03ZDdiLTQzOTItODkyMS0zNzA2ZmYwYWQ0MmQifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiI4eVBzWG9MSjg2X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE2OTEyLCJleHAiOjE2MTE4MjA1MTIsImlhdCI6MTYxMTgxNjkxMiwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6Ijg3MzdmODFhLTFmNTAtNGY0Yy04ODZkLTcwY2Y1ZWU1MDQzYyJ9.5X8wre24NTSiglqPH27u4BqNDvat3kGaLuJ66vRhrRARySPYRdJ76gy53emDypdOHdtxExzxaUY1ULEJJSuKTg\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIzMmUxOTUzMC1mN2JmLTQwZTQtODQ1OS03ZGZlM2MzNzg1ODEifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiI4eVBzWG9MSjg2X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE2OTEyLCJleHAiOjIwODQ4NTY5MTIsImlhdCI6MTYxMTgxNjkxMiwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjNkMGMxYTgxLWI5ZWItNGVjOC05YzVmLTlkZWRkMmY1MTI0YiJ9.BvnzRvQv6b2jkslYdh2Vo1FlBJrYEIGpt3MqXKmrAj536RrO0xARjxA91GglxldEmxkaXcCWoLaaw2EsuKbv0Q\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:25:12', '2021-01-28 12:25:12'),
(18, 26, 70, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJmNDNhODU4NC1kYzMzLTRjZTAtOTRiZS1iZjE4ZWViODZhNjYifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJSVlh1dDUwalMxX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3MDY4LCJleHAiOjE2MTE4MjA2NjgsImlhdCI6MTYxMTgxNzA2OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjQxNzBlZDQ3LTIxNzQtNGRlYi1iYjU2LTQ0NjYyMzc2NTFjMyJ9.TK5hSEVa-R-kIYlJ3ludZYE0GVwTauwL4nqG7cuqHnZixele9ekvlyLqQ6BrJg6YQUsr6daoaOS7UBcfz-VzyQ\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIzMmJmZWJhNi05YTQxLTQ4MjMtYTYxMS1mNzY5NmFjZjFjYzQifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJSVlh1dDUwalMxX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3MDY4LCJleHAiOjIwODQ4NTcwNjgsImlhdCI6MTYxMTgxNzA2OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjAyZGEyMjllLWViOWUtNDY0ZC1hYzFiLTczZWMzYTRlNTU3YyJ9.jIHM44jHRqKw20MuHyu1-MXZF0meY73ibdwqECgwERJjR56d1gbgx1w-GE4z5VIJe3sdlvMmROQTBF5wIo7VTA\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:27:48', '2021-01-28 12:27:48'),
(19, 26, 71, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIxYmFiOTBmMC03YmQxLTRiMmMtYjc5Ni05ZTNiZDEyMjhkZDQifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJvWjAyQzNobTE4X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3MTkxLCJleHAiOjE2MTE4MjA3OTEsImlhdCI6MTYxMTgxNzE5MSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImJkNmE0Mzk1LTY2MzAtNDQ1Ni1iYmQ4LTgxOGE4YThjYTNjNiJ9.90ebxrbhkqzaLLIoKXLkV2xYnkQ5MRQckjAHHOrih6mgj8hjxBJA0twyjh8JMIA-pusFrBSz3sb2rQ0FIuam4g\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJhMzIxYzU4ZC0zYzMxLTQ5ZGYtOWUwMy1mMjM0NmY2MDgwYjAifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJvWjAyQzNobTE4X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3MTkxLCJleHAiOjIwODQ4NTcxOTEsImlhdCI6MTYxMTgxNzE5MSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImM5ZTVhYjBjLWJmZTUtNGRmMS1iYzNlLWQ0MjY2MzAwOTE0MyJ9.HeG8EUWE0YK3c5aGQOGaaPmkG6VwzxXOaKraG0m1zeEJNaqfv6AhW1ye712tNZScAruPXNq5xEcdWD1QCdjJwA\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:29:51', '2021-01-28 12:29:51'),
(20, 26, 72, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIxYWU0NjU3MS04Y2E3LTRlYzAtYTU2MC0wZTNlMDViNTNhNjgifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJxZnBvZGxZNVFYX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3MzQxLCJleHAiOjE2MTE4MjA5NDEsImlhdCI6MTYxMTgxNzM0MSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImIxNTUyNjliLThlMTAtNDJhNS04MjhlLTA0OTg3ZmMzYTBhNyJ9.9dSgGQ4V7HRnGWR7yUOEhJ0eF1x0O6OEwlnqORmThlhhKl3h8nobqJrSdXNJB1BVPfVQGNAb8gsJ-YTMP5xSjw\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJjODhlODVhMS05ZTc5LTQ3NzItYmM0ZS00MjZmMzVjZGFhNzMifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJxZnBvZGxZNVFYX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3MzQxLCJleHAiOjIwODQ4NTczNDEsImlhdCI6MTYxMTgxNzM0MSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjdkYmUxYzZjLTU4MGMtNDFhMi04ZWUyLTQxN2IxYmIxYzkwYiJ9.lIDy5MOEpdkWXljbZ6lo1OLhd899hbJvFkgs71yeiazB4nTCG4UN_PZGn7-x7InsAu6yegHLlcgGWDIjWqKwEQ\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:32:22', '2021-01-28 12:32:22'),
(21, 26, 73, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIwZmJmMmJiYy00OWM1LTRmNTgtYTMxNi01YTdkNjFlYzNlZmQifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJYOXd2T0ZTTWhwX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3ODQ1LCJleHAiOjE2MTE4MjE0NDUsImlhdCI6MTYxMTgxNzg0NSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjgwN2IyNzhlLWY1ZjAtNGQ4Yi1hMWYzLTRmM2NlMGYzOWE3NCJ9.5l55jpcW0RDwIrmRtO4CYdLMVtllTIQS5-Rf8GhNet021tB503uFZTd67WmOSr8USVFgpu-_JkWqCUUUy8U9dQ\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI5ZGYwM2Q0NC1kN2M4LTQ2MjAtODhkOC05NGZlZmY5MTI5Y2MifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJYOXd2T0ZTTWhwX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3ODQ1LCJleHAiOjIwODQ4NTc4NDUsImlhdCI6MTYxMTgxNzg0NSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjUyOWY4YTZkLTM4NmQtNDZkZC05MzAwLTVmOGQ4NWU1ZjkyYSJ9.CdciiDNacdEbLpY24TqZ3refDLkgFlcJxjXAvlK3ucFphZNoqtPZdKlipESvk0WeG-W3bVHbT-Y6Rp5dg371Dg\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:40:45', '2021-01-28 12:40:45'),
(22, 26, 74, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIxNzU3NTYyZi1kOWExLTQzMDgtOGNkZS0xNDRmZDE5MjhjNWUifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJMS1Q4NGVWTHVBX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3OTYzLCJleHAiOjE2MTE4MjE1NjMsImlhdCI6MTYxMTgxNzk2MywiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjUzOTc1ZDAwLTI5YTEtNGE5MS05N2RlLWNiN2ZmZTI0Y2IxZSJ9.MO6njO-sSSjnMZ9xJqJqP1rMyAUyz0ZKd6o34y1whgOOeyG5OdtnbMf7E0kDGpeOrfmqrtHWLzxy5QQ7p3eKlg\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJhNzliZWE1YS0xOGY2LTQ0NjYtOTFhYi00MmIzOTE4ZmJhMzgifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJMS1Q4NGVWTHVBX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE3OTYzLCJleHAiOjIwODQ4NTc5NjMsImlhdCI6MTYxMTgxNzk2MywiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjJhZjA1NWUyLTU4ODktNDY3ZS05ZTE0LWU1NjI2Y2JjODBiOSJ9.CbXX8D4WrjKabsXm0sTimGo3tHKeLDUv4D3aaFDHmnJQmkU4T81GTfGFHNi6PN14uMrqk8c5gFjz8iihc1o4ig\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:42:43', '2021-01-28 12:42:43'),
(23, 26, 75, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI0MjAyMWU5MC04NzgzLTQ2ZDItOWE5Yy1jMmVjZjFjNjA2MzAifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJzQ1RsZDAwZVNJX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4MDA4LCJleHAiOjE2MTE4MjE2MDgsImlhdCI6MTYxMTgxODAwOCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjM1MDc1ZDNhLTAwMzktNGUyNy04MGRlLTNlYWFkMjA3YjVlNSJ9.gfZrSmYtaQB3kfdIwXSDsJsBOh2MPCebi-bxl5kRBhBOriVLl49qQK4O7x5AYSkvmZ5cDfa2G5AI538sC2I5tQ\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI0ZmE1OTFiNC03ODJjLTQyMmUtYjUwMi00ODY0OTU0YTQxNzgifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJzQ1RsZDAwZVNJX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4MDA4LCJleHAiOjIwODQ4NTgwMDgsImlhdCI6MTYxMTgxODAwOCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjA1YzllNmRlLTRiODQtNGI5ZC1hNWIwLTkzYWE2NDMzNmFjNiJ9.5O67snYY43cQExBwnB6fu5iDU-PIoDGddcjlPTz_gPeNm8mgVqJ2TlfQzKiwiZ4IJFTZhps23cmCP6m6zFVsvg\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:43:28', '2021-01-28 12:43:28'),
(24, 26, 76, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIxMjk2NjVjOC0yNTc5LTQyYjQtYmRkYy1jOTg5OGNiYWQ2ZGMifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiIxVFY3RVhwUUlmX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4MTIyLCJleHAiOjE2MTE4MjE3MjIsImlhdCI6MTYxMTgxODEyMiwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjgwYWIxNzIyLTE4ZjgtNDQyMi1iZWU2LWJiNzVkMmVhNDFjMCJ9.JFy0RcMZef-bYARgfwARxEB48uEujvUArqaIp4Hqho3h4J3j7ngyiVLvVUXoa-imZQGhh_qSfDXw0yuGBAFK3w\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI0ZDcwMjY4Yi1lNjYxLTQ0YWUtOWQ0OS01MWMwNWYxYTVlMzIifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiIxVFY3RVhwUUlmX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4MTIyLCJleHAiOjIwODQ4NTgxMjIsImlhdCI6MTYxMTgxODEyMiwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImQ1YWU3YTBiLTkwNjEtNDRlZi1iM2RmLTJlYTFmYjc5NjU1ZCJ9.Ml4l2R6T-zo4cQquumzT2_VjyRNuh4KVZHPToRhdruVXCwDt5UjLSy_wvj51Jy3gz-nnJTtVCDoTrIWpsqAdPw\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:45:22', '2021-01-28 12:45:22'),
(25, 26, 77, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIwMDEwY2FkOS04OTNkLTQ2MGQtOTEyZi05ODQ3ZTM2NTc3NzIifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJrMUlad0UzVkxuX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4Mjg1LCJleHAiOjE2MTE4MjE4ODUsImlhdCI6MTYxMTgxODI4NSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjZiYzFjMWExLTBiNzgtNGRkMy04MmE3LTQxMGZhMTBlZjEwYSJ9.7j-XfgZuiah9jUaPnbQd-0J_DWt2zj6yjgX2AlKwlk4vHu9umgm65lEJsRKiu656FzUCUgPJTPJ_pkBDcVzZKg\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJhZDUzMjgwOS0xYTUzLTQwYzItODkwYi01NjllNzhiMjFmN2MifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJrMUlad0UzVkxuX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4Mjg1LCJleHAiOjIwODQ4NTgyODUsImlhdCI6MTYxMTgxODI4NSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjY5MjBhZTdlLWJhNmYtNDkzYS1hYzU1LTZkZWUxNWFhYzM0MiJ9.tAk76rDOBm-pzEq8Ej5ktiy8XRsh9iBNuTgmH4dP_C2Xzd6DLQS-H9s4GpuzFRfQ8_l5ZLXYLEFnXTWQt6SPuQ\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:48:05', '2021-01-28 12:48:05'),
(26, 26, 78, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJlYjIzZDdlNy02OTQyLTQxYzktYmZlMi00YWM3OTBhODNhN2YifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJtYW1VRDZnaWVuX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4Mzc4LCJleHAiOjE2MTE4MjE5NzgsImlhdCI6MTYxMTgxODM3OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjdmYjMyY2MzLTM3M2ItNGVhOC05YTY1LTFmYTQzNDg5YzQwOSJ9.XBtquhYNympLd0ICPUOp4OZQhpXI4lnUII8FQglKaV6sO50zAS3QNFE5WNnpxiOct43Do3of1qVjExedOGcOxw\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJkYmYzNDk1MC0xMDk2LTRiZGMtYjQ1NS1mMjVlMGRjOGE3YzcifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJtYW1VRDZnaWVuX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4Mzc4LCJleHAiOjIwODQ4NTgzNzgsImlhdCI6MTYxMTgxODM3OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjgzMDMwZGFiLWZjOWUtNGUxNC1iZmFhLTIzODAyMzI2YzY2NSJ9.qTi08ueUKFQopIfeI5ypIpK8kZaZ6tTSF2m2P_DurdZSdep5c7J2XNmWedUDZj4vhn4i-QD8BccXDB2jBusmow\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:49:39', '2021-01-28 12:49:39'),
(27, 26, 79, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJmZGVhMGY5OS1mMGEwLTRlNzQtOTlhZi02M2YxMzIxMTYyODkifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiI2eXhDQlA1WGRyX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4OTg3LCJleHAiOjE2MTE4MjI1ODcsImlhdCI6MTYxMTgxODk4NywiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImIzYjQzZjE2LWQ3MGQtNGU3OC1iNzc1LTY4NDViY2M3Y2NkNSJ9.FfeS1JPXVfnEbw-CYohp46W87vz-AmE-s0kqAoSRl6Ptd-5En478gNyE1ZeWXlk2bJCLq705X7ZB3EMRjznsxQ\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIwZDVjZTI4OS03MGM2LTRhM2QtYWEwMS0xNjk5M2IyMjllMmUifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiI2eXhDQlA1WGRyX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE4OTg3LCJleHAiOjIwODQ4NTg5ODcsImlhdCI6MTYxMTgxODk4NywiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjdjMTMxNWU3LWQ4MDYtNDY3MC1hMDQ3LWYwM2NkN2RmOTQ5NiJ9.LwhnKcRSJTf_7CoN71R7RiM7hOLbZkwzgfcSibHL7ppVumsy3KmavWT1cJXgxUxi8g9jde_BG31PBVSJBPyDuw\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 12:59:47', '2021-01-28 12:59:47'),
(28, 26, 80, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIzNzk0OGJjMy0xNGZjLTQ5OTUtYjQ5OS04YmQ5NjIwNjI4NWEifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJRRTN3SWY4NjNPX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE5MTI0LCJleHAiOjE2MTE4MjI3MjQsImlhdCI6MTYxMTgxOTEyNCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImMxYTA5ZWQ5LTc1MTMtNGY0My04MWUwLTY3OGY1ZDI0ZDJlOSJ9.AS9dtII7IXS2fXU2QTXFUgAsoyn695kRJJe5pnAL11vqYBSqiHKXpCD3dfRF3LNUdMSKZg8ExmLlDhcdaHFDRA\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI3YjVjOGJmOC1jOGY1LTRmNTctYWYzNS0zNmIxODkyMzAyOTEifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJRRTN3SWY4NjNPX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE5MTI0LCJleHAiOjIwODQ4NTkxMjQsImlhdCI6MTYxMTgxOTEyNCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImRkYTg0ZWUzLWEzMjUtNDM2Yy1hZTc4LWE3ODEzMGJjNmQxZSJ9.TR_oCSiwmyp-UCAWp4fTP4t4YF9-YZOmOpPWwH-VVrEXLeRBSFWEkQmSvTTVssuJ7HgsMVTHphYR0flq5MvEHg\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 13:02:04', '2021-01-28 13:02:04'),
(29, 26, 81, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI4NzZlNGJkMS1hYzhjLTRiNTYtYjZkNy02NDJjOWFlYWVmZDkifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJhdkFxbWRYUUdoX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE5MzEwLCJleHAiOjE2MTE4MjI5MTAsImlhdCI6MTYxMTgxOTMxMCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjYyY2RlZjNjLWE3OTItNGYyNC04NGQwLWYzMWNlNDI5ZDgxMSJ9.adAGslT5p2y_V08OQ-YNQOeT2tlHWB7vcp1Xs7ijylCuMZFiGtIlXXF9AKBBRr3Z0hcGMQXGD4Teo_Xq-UYnhg\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIyYWQ5NTdiZi1lNTcyLTQxN2QtYjUyZC1mZTU5YzkxMjk1MTUifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJhdkFxbWRYUUdoX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODE5MzEwLCJleHAiOjIwODQ4NTkzMTAsImlhdCI6MTYxMTgxOTMxMCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImZmMzMwOWUxLTY4ZTYtNGI5MS1iOTJkLTI2YTA3OTZjYjI0NyJ9.azpTyHiGNGjOQbuYlvBVI_ZNxQgVHdfxPZ0am1LY9uUg9UKrHk0Db8cA-7CpSHGIAN99TlA1h614c-KwW9bOZw\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 13:05:10', '2021-01-28 13:05:10'),
(30, 26, 87, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIxZGZiMGUwZC1jNmZhLTQwNzMtOTVlZC0wOWI3ZDQ4ZTVhYTkifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJrWXU3UEpVY09SX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM2ODYwLCJleHAiOjE2MTE4NDA0NjAsImlhdCI6MTYxMTgzNjg2MCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjkxMTNkMzY2LWNlMjAtNDgyOC1hYzMxLTA4OWJlNmNkMWQyMSJ9.N9z3WtWqQXs0-K8zHePd_sc35cXF5cuO3iG6SHLdAspT5bsBEODBU3yX9S17oOM9Liu-Ngy7_f7rlGW6oyXosw\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJjNTIzZWFkZC1jNmQzLTRkNTMtYWEyNC1jN2YzOTU4OWVmMTYifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJrWXU3UEpVY09SX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM2ODYwLCJleHAiOjIwODQ4NzY4NjAsImlhdCI6MTYxMTgzNjg2MCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjJkZjA5MWVlLTc0ZGUtNGQyMC1hMjYxLThkZjE4ZmU4N2E2YiJ9.8PNvbxu5isDRiSOP4Y-4ces-Z5IYEXJdzAAPFmGoRbB6JHPDeePcZS7ZqhN08F3hpYG5Li8wCIsTRBIEirKDUA\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 17:57:40', '2021-01-28 17:57:40'),
(31, 26, 88, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJkYzEyMzc0Zi1jZjIyLTRiYWEtOGYzYi0zNDMzZDgwZDZiMGQifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiIyWVIyNUozT3VZX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM2ODY4LCJleHAiOjE2MTE4NDA0NjgsImlhdCI6MTYxMTgzNjg2OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImY1OTZkMTdlLThmZmYtNGYyYy05MTgzLWNiZTYwMDFiOTU1YSJ9.4UdsmPcrB70wpIGYrNCtqTwK3esLSxt0kQc9zZFbfbeP8_1ZqWNOEjGsMINv1W84cOoNt76nJFGnEkTPUO5-xQ\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJlMjY0MjNkNi1mNTgzLTRjZTYtODc1MC1mN2MzODc1M2M5ZmMifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiIyWVIyNUozT3VZX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM2ODY4LCJleHAiOjIwODQ4NzY4NjgsImlhdCI6MTYxMTgzNjg2OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjRlMWY2NDFlLWEzMDktNGYxMy1hOTRlLWZmZjVkMjczOTk0MSJ9.61MvSHjeDU7S0wPFYiPHTHJ-D51ek1mf-zQ3rqv3R-pNKZbPFS57dCa3HeXWe8m-216E68PzbW0VmvmaHLPmiw\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 17:57:48', '2021-01-28 17:57:48'),
(32, 26, 89, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI2YmQwZDBkYS0yMGMwLTQ5NDMtYTEyOC02ZjFhMGJlZjlhNTIifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJGOE15Q2NXbEpkX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM2OTM3LCJleHAiOjE2MTE4NDA1MzcsImlhdCI6MTYxMTgzNjkzNywiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImRiNWZlMWJiLTk5NDctNDkwYy1hOTRjLWQ1NjU1MjQ0OWM4NSJ9.nry4P1FG5Im0aJ2WQoK2G3--n7h5LKBWVUqzIukSGbIuGnCVd4aPI3S4hkcWaDfJuGEjwtgWMyfN6oZEUl360Q\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI1YTVjN2FlMC03ZTU0LTRhOGEtYjg1OS0xMGZmOGZjM2E5NjkifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJGOE15Q2NXbEpkX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM2OTM3LCJleHAiOjIwODQ4NzY5MzcsImlhdCI6MTYxMTgzNjkzNywiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjU0NWFhMjAwLWZjZmQtNGRiNi1hNDg3LWJkMDY1N2FmZDQ2OSJ9.i4rXf0KZKmJeoOfU__583PQhAU7T3XucGoBcRVXSrSM1qsiDD1PUShMfLOLl8ha4AWWD4sR3Q6PghVnAtzz1xA\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 17:58:58', '2021-01-28 17:58:58'),
(33, 26, 90, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI5MzYyYmNiMi03MmM5LTRmZWYtODU3Ny00NjJhYWNlZWNmM2MifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiIxUXNCUE5NVFFJX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM3MDQ5LCJleHAiOjE2MTE4NDA2NDksImlhdCI6MTYxMTgzNzA0OSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImQ2N2RiYzk1LTBmOWMtNDMwZi05Y2RhLWIyNWFlNzE5ZDhmOSJ9.mWzsx5HM4QhXVI5lD_iiypkWl0yj8fb4aj0K6dBkZ2rkVBsUgk6LrgKaAZymuwtjf0E-PdguizMjrBT5VbZRAA\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI4MDMzYjFjMC03NzgwLTRmNWUtYTkzNS01MThlM2Q3OGY3NmYifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiIxUXNCUE5NVFFJX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM3MDQ5LCJleHAiOjIwODQ4NzcwNDksImlhdCI6MTYxMTgzNzA0OSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjUzMzBlYWRkLWYwNTgtNDljNy04NDg0LTgzY2IwMWQyNTE2ZiJ9.MH7HjPM3tNDKRj1fvEnaT7nAj6MPDRXVzf9wxKL9FSNbGUQgEVDx8U9w-OZigDXPMjMIAcKV0IXJpuyHTWkR9Q\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 18:00:49', '2021-01-28 18:00:49'),
(34, 26, 91, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJkNGEyN2NlMS0yNjA4LTRmNGItOGZmMy0wYTExYzBmYjFkMDQifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJjcW0xMkp0VmE3X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM3MTgxLCJleHAiOjE2MTE4NDA3ODEsImlhdCI6MTYxMTgzNzE4MSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjE0ZGUzNGFjLTJjNmMtNGJlNi05ZDRhLWYzOTVlNzE2NjEzOSJ9.JsBSVwj_jlXhoUp7pbrkA2yS2oWMYLjRLrdD1la0qYeKUNWJQwPT-7StPvrrNdtU01MNNQj8yVuipdZmKQeEWQ\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI0ZDY2ODVkZS1lNDQ2LTRjYjktYWI3OS0wNWIzNzliN2NmODgifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJjcW0xMkp0VmE3X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM3MTgxLCJleHAiOjIwODQ4NzcxODEsImlhdCI6MTYxMTgzNzE4MSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImY5Y2NiMjVlLTA1NTAtNGJjMS04MDk2LTZhNjBkNDkxZDUxMCJ9.FKxlQ5iBF6cqUZMh5eEv1jQxO6Ll7HAE-eXUhNbR888a3wPhZp0VqHtXsvOJ8nXHIZZNLu5_Nk90bhlAsVOO7g\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 18:03:02', '2021-01-28 18:03:02'),
(35, 26, 92, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI5OWU1YmI5MS1lNDUzLTQ4NWYtYmNmMS0wODYyODkyNDcwYWEifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJYMnhzS2M2dHBuX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM3MTkwLCJleHAiOjE2MTE4NDA3OTAsImlhdCI6MTYxMTgzNzE5MCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImQ3OGJlYzIzLTRhODMtNGUzNS1iMTQwLTQ1OTkyNzRmY2JlYiJ9.9uMjbWasWqEPvhTExaNblcwYPqd8I2sKwM9ZbQqAhY8hOcBejDre0LspCec6riLLKMJISwO9XESL9-g98rFmkA\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI2NDUyMWE2MS0yOWY3LTRhM2YtYjZhYS1kYjAzY2U2MTY2OTUifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJYMnhzS2M2dHBuX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODM3MTkwLCJleHAiOjIwODQ4NzcxOTAsImlhdCI6MTYxMTgzNzE5MCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjA4MDA0OTkxLTI5OGEtNDI4Zi1iMDAzLThkN2FkMTg0ZGQ2MSJ9.FF3G2YJYnrwRZ3uGts55FxH2XhwpBsUWXnjyCAkRxaI6U1M9sh-RnE2iegMXF79WxF5laX-coK9AVwvl0rAp8w\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 18:03:10', '2021-01-28 18:03:10'),
(36, 26, 2, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI2MGRiYjdiMS1kOTg5LTQ3N2UtODQzOC1hNjY5NDAwNzUyMWIifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJYMFkxU0JsamZQX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODQ5NjEzLCJleHAiOjE2MTE4NTMyMTMsImlhdCI6MTYxMTg0OTYxMywiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjJkNjU5MGY4LTZhYzAtNGU3My1hYjI5LWE2NWY5MDkzNDAwYSJ9.2TlrvRRwozUHmN-EjeQ6sLV9a0aARBF1Uky9SVr3Sl7fxMqxz985e3IfEA8CZsQis6o65K_5pKLCbT0vTPcqZQ\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJjOGJhNjI5Zi0wMWFmLTRmNTEtOGQ4Yi00M2NhMjdlMzRlMTAifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJYMFkxU0JsamZQX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODQ5NjEzLCJleHAiOjIwODQ4ODk2MTMsImlhdCI6MTYxMTg0OTYxMywiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjI2OWMwYTFmLTNkNTEtNGFhZi1iZGFhLTQwZDEyMzM0ZDQyMyJ9.clIUf86YBOd3jhg_CbUy6fzrPWkhfJrHIXCVEzXGF0zWS5FTgr7WZrDRsPX41gK3qRtYMIsa-sobMld3ey3mBw\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 21:30:13', '2021-01-28 21:30:13'),
(37, 26, 3, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJkOWUyYzc4Yy1mM2QwLTQzNmYtYWNmMC1jZGFkMzY5YWUxNTcifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiI2OGljWmtvUDczX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODQ5NjQ4LCJleHAiOjE2MTE4NTMyNDgsImlhdCI6MTYxMTg0OTY0OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjlkMGQ3ODc1LTdlNGQtNGNkYi05ZjQyLWQzODk3YzAyZDdjMCJ9.C6SwwXyEcfddoWOhoV_ZdCy_u2bf-0-q-j3frA4FyZPT1hD1r4mm5GXEobNDD9spfr6Ygwg8Qr8yLPzRihcgiw\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIwNTIxN2ZiNi0xOGRjLTQ0YjItYWM3Ny05M2MxMjA5MmIyNjMifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiI2OGljWmtvUDczX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODQ5NjQ4LCJleHAiOjIwODQ4ODk2NDgsImlhdCI6MTYxMTg0OTY0OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjQ4NTdlN2M0LWI4OTMtNDllOC1hNTA2LWE4MjhlNDA5MTZjOSJ9.yOnG3FsoznU0Oii3F_UFP4-OHMHQRN8tVMPdnooG7uCjMBBPTwMZLzzpJgCVerd1cw01njLUmKAFJ-ouMgbOyg\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 21:30:48', '2021-01-28 21:30:48'),
(38, 26, 4, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI0MzI1YmY4Ny04NDU3LTQ0MDYtOTdhZS03YmZlZTVlNzFjMDQifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJucEJ0NkRxemZjX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODQ5Njk1LCJleHAiOjE2MTE4NTMyOTUsImlhdCI6MTYxMTg0OTY5NSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjIyN2M2NWU4LTY2ZDYtNDY3YS1iNzE4LTQ0MzQzZGU3NGFkZCJ9.W_Rk3yZz0eW_9pHY_GnpxwnUyuKVE7L-HAYkqZPNVvu1nTPa-ZMD93Gah7u0PQwdj4nrj7tB40Rv896RKEk2fA\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIyOWZkMWVjNS1lYjNlLTQ3YjQtOTYwOS02Zjc3ZDEwZTQ0MTcifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJucEJ0NkRxemZjX0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODQ5Njk1LCJleHAiOjIwODQ4ODk2OTUsImlhdCI6MTYxMTg0OTY5NSwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImI5M2VmZjZjLTViZGYtNDA5NS1iODMyLTc3NzA2ODEzY2Y1MyJ9.gVUwS2enzFhFqA8nGcVdLA77wrpY7XmFtv5h2g8wZVpin1nJK7mUPcudcN86P67xtLq1hEwrTtsuQMMt7tbl5Q\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 21:31:35', '2021-01-28 21:31:35'),
(39, 26, 5, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIwYmJhZGQyYi1mZTQxLTRmNmItYjVmZi04YTE0MGFiOTQ4ZTAifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJGZlNKRTl4QlU5X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODUzNjA2LCJleHAiOjE2MTE4NTcyMDYsImlhdCI6MTYxMTg1MzYwNiwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjFjNTg5ZWJiLWVhNWUtNGU2Ny1iN2MxLTMwNGRlMDY4MTM1OCJ9.qKcVE-X6XNKsryf7vshMx5WzjHcwdxTW9hYnXCgIhm3XxUPMlzsv0dEdYGRhNkR6XupVeiPbi6GPh14OwaLgYw\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIzNTA0ZjM3Ny1hNGRjLTQzMjYtOGEyNy01MTVlNWFjZTE0ZWUifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJGZlNKRTl4QlU5X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODUzNjA2LCJleHAiOjIwODQ4OTM2MDYsImlhdCI6MTYxMTg1MzYwNiwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6IjY3ZThlYmFmLWQ1MjctNGIwOC04Y2Y3LWNiODNkYmNjNjI4MSJ9.vR_8mqE189tz-0HguatGaAa7pNX1HtLU7VzIAKGJGTLYWIECkdBFW1Qf-hfy_3Jx81kG79V9S_jWnSJZ4No1Ag\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 22:36:46', '2021-01-28 22:36:46'),
(40, 26, 6, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJiZDhkMzkzMy0wZDg4LTRlMjItOWI5Zi00ZTA2MTg1MTIwZjgifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJFMWVPUE1oMXU2X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODUzODg4LCJleHAiOjE2MTE4NTc0ODgsImlhdCI6MTYxMTg1Mzg4OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImI2Y2JlN2M2LTllOWYtNDIzNi04MTg3LWQyMzQ2OTIzMTUwZiJ9.n6lYGTIkTJZll3Flf30JRS9NuKfPCLiswV7bdgDoGXGzVsHDGsch1iZafiyUqooA43rh8sPjTdbwJ-pe5jD4rQ\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJmNzRjMjM0My0zYTQyLTQzNjItOGU5ZS03MTkwOWJkN2Q1YzgifQ.eyJ2ZXIiOjcsImF1aWQiOiI1NmExMzgwODE1ZmJmNzc2M2EyZmUzMzU1Y2I1MGRkYiIsImNvZGUiOiJFMWVPUE1oMXU2X0RhZ0lrSWVzVEk2eDJac3lNYXlSZkEiLCJpc3MiOiJ6bTpjaWQ6TDJOd2ZrdThUdXVEd29Idk9kOWVhQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJEYWdJa0llc1RJNngyWnN5TWF5UmZBIiwibmJmIjoxNjExODUzODg4LCJleHAiOjIwODQ4OTM4ODgsImlhdCI6MTYxMTg1Mzg4OCwiYWlkIjoiYjdQLTFYZ2FScnlyN1F4bVhnRlU3ZyIsImp0aSI6ImFiNDY4N2UzLTRmYTYtNDVhZC05ODgwLTg0Y2Q4OTVkZTE3ZSJ9.ay497GcCcmVM9e5Sh9_uSjbj-PYyeJgss0n_0_9YWOviOIY7FgEKfOuJdUrk1hhMCBLjFS2Px7-5IK8-LsYS4Q\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin\"}', '2021-01-28 22:41:28', '2021-01-28 22:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(12) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_type` enum('Admin','Student','Academy','Examiner') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_type` enum('Admin','Web','Android','Ios') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Web',
  `dob` date NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_academy` tinyint(1) DEFAULT 0,
  `music_stream` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` bigint(11) NOT NULL,
  `unique_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `music_academy` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zoom_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `role_id`, `remember_token`, `role_type`, `status`, `latitude`, `longitude`, `register_type`, `dob`, `gender`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `is_academy`, `music_stream`, `code`, `unique_code`, `music_academy`, `teacher_name`, `zoom_id`, `zoom_password`, `client_id`, `secret_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super admin', 'admin@swarkul2.com', '', NULL, '$2y$10$fXaiXWXazNVmuL9DXEnmzeLh0VIE88mYXAr7QkyoYzNgv2Jb2GWl.', 0, NULL, 'Admin', 'Active', '', '', 'Web', '0000-00-00', 'male', '', '', '', '0', '', '', 0, NULL, 0, NULL, NULL, NULL, '', '', NULL, NULL, '2020-03-27 21:17:14', '2020-03-27 21:17:14', NULL),
(26, 'John Examiners', 'info@tamilonlinebiz.com', '9171791100', NULL, '$2y$10$izXXklj8r0Jpy./XmPivzOTrypm35hv49MAOaorlwoD9/uUVUpm/W', NULL, NULL, 'Examiner', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'Anjugam Nagar, Kolathur', 'Kolathur', 'Chennai', 'Tami Nadu', '12121212', '1', 0, NULL, 91, NULL, '0', '0', '123-4756-4563', '123456798', 'L2Nwfku8TuuDwoHvOd9eaA', 'SbaC4vqFC34r14BcnxADM6cLS6Q1MNpa', '2020-12-12 01:31:02', '2021-01-28 12:45:35', NULL),
(27, 'Examiner 2', 'examiner2@swarkul.com', '9171717777', NULL, '$2y$10$fXaiXWXazNVmuL9DXEnmzeLh0VIE88mYXAr7QkyoYzNgv2Jb2GWl.', NULL, NULL, 'Examiner', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'No-3 71,vijaya avenue.', '1st Street', 'Murugambedu,kallikuppam,ambatt', 'Tamil Nadu', '', 'India', 0, NULL, 91, NULL, NULL, NULL, '123-4756-4563', '123456798', NULL, NULL, '2020-12-12 08:41:20', '2020-12-12 08:41:20', NULL),
(28, 'Kannan Udaya Kumar', 'trueinfos.com@gmail.com', '9171791100', NULL, '$2y$10$qpBhfy4DvpVW9Up25Kqwi.arvWyD848HN.6GT8j08yFfTVLdTnyCq', NULL, NULL, 'Student', 'Active', NULL, NULL, 'Web', '1986-09-09', 'male', '31/79, Vinayakapuram,', '1st Street', 'Chennai', 'Tamil Nadu', '', '1', 0, NULL, 91, NULL, NULL, NULL, '', '', NULL, NULL, '2020-12-16 03:02:09', '2021-01-18 09:31:14', NULL),
(29, 'Ss', 'rithamworld@gmail.com', '9789029751', NULL, '$2y$10$AnzgLu79wL23rjsppWaTvOkYwsrbOVMtJdGdK0SR6Pd66KEMQgi3m', NULL, NULL, 'Student', 'Active', NULL, NULL, 'Web', '1902-02-12', 'male', 'chennai', 'chennai', 'chennai', 'tamils', '600003', '1', 1, 'violin,veena, vocal', 91, 'SM0001', NULL, NULL, '', '', NULL, NULL, '2020-12-27 08:04:08', '2021-01-28 12:58:49', NULL),
(30, 'Super Admin', 'admin@swarkul.com', '9171791100', NULL, '$2y$10$u70tLGG2AbRSO4LXc3wkYeRBW1N6.EwlsyPoEPObBGvsiBGtXgwlW', NULL, NULL, 'Admin', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'Anjugam Nagar, Kolathur', 'Kolathur', 'Chennai', 'Tami Nadu', '600004', '1', 1, NULL, 91, 'SM0002', NULL, NULL, '', '', NULL, NULL, '2020-12-28 03:23:39', '2021-01-23 17:17:53', NULL),
(31, 'South indian music academy', 'sima@something.com', '8899007263', NULL, '$2y$10$gGKLdri/Jr1vJ6MeBFyiQOzzbKu2wA7t2qiRZOeX.vKpHrZODLbKS', NULL, NULL, 'Student', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'some lane 1234', NULL, 'cityname', 'statename', '10000', '1', 1, NULL, 91, 'SM0002', NULL, NULL, '', '', NULL, NULL, '2020-12-28 08:15:08', '2020-12-28 08:15:08', NULL),
(32, 'Teacher John', 'teacher@swarkul.com', '9894444545', NULL, '$2y$10$ZtX9bSvh/hf7SJSDilKgbOQLlQYz9/os28hAee0Wmhx6pukYy6Y8m', NULL, NULL, 'Student', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'No-3 71,vijaya avenue.', '1st Street', 'Murugambedu,kallikuppam,ambatt', 'Tamil Nadu', '600053', 'India', 1, 'Pop', 91, 'SM0003', 'Test Academy', NULL, '', '', NULL, NULL, '2020-12-28 09:06:20', '2020-12-28 09:06:20', NULL),
(37, 'new teacher', 'newteacher@gmail.com', '9123456789', NULL, '', NULL, NULL, 'Student', 'Inactive', NULL, NULL, 'Web', '0000-00-00', 'male', 'addr1', 'Street 2', 'chennai', 'TN', '600016', 'India', 1, 'violin', 91, 'SM0004', 'Sangeeth academy', NULL, '', '', NULL, NULL, '2021-01-03 15:49:07', '2021-01-03 15:49:57', NULL),
(38, 'Ramesh Raj', 'examinertest@swarkul.com', '9171791100', NULL, 'Swarkul', NULL, NULL, 'Examiner', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'Anjugam Nagar, Kolathur', 'Kolathur', 'Chennai', 'Tami Nadu', '', 'India', 0, NULL, 91, NULL, '0', '0', '', '', NULL, NULL, '2020-12-12 01:31:02', '2020-12-12 01:31:02', NULL),
(39, 'RR', 'examinertest1@swarkul.com', NULL, NULL, 'Swarkul', NULL, NULL, 'Examiner', 'Active', NULL, NULL, 'Admin', '2021-01-04', 'male', '', NULL, '', '', '', '', 0, NULL, 0, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(40, NULL, 'examinertest1@swarkul.com', '7162400354', '2021-01-04 15:13:12', 'Swarkul', NULL, NULL, 'Examiner', 'Active', NULL, NULL, 'Web', '2021-01-04', 'male', 'ad', NULL, 'c', 'tn', '15000', 'USA', 0, NULL, 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(42, 'rr', 'swarkultest@gmail.com', '9123456789', NULL, '$2y$10$k6SDaw0QsnQZGQZdrjCzbOJpIfOSbmG2XC/M/a2FTSYR1DHObEYxm', NULL, NULL, 'Student', 'Active', NULL, NULL, 'Web', '2021-01-01', 'male', 'street 1', 'Street 2', 'chennai', 'TN', '', 'India', 0, NULL, 91, NULL, 'Sangeeth academy', 'Teacher 1', '', '', NULL, NULL, '2021-01-06 18:48:50', '2021-01-06 18:48:50', NULL),
(43, 'RR', 'contactswarkul@gmail.com', '9123456789', NULL, '$2y$10$udKNxJ6iWxBz4u/fgQ61Cu6tJzuJatAhZo6kcyP6K0ELYo2oeU4Le', NULL, NULL, 'Examiner', 'Active', NULL, NULL, 'Web', '2021-01-02', 'male', 'street1', 'Street 2', 'chennai', 'TN', '', '1', 0, NULL, 91, NULL, NULL, NULL, '', '', NULL, NULL, '2021-01-06 19:13:09', '2021-01-23 16:29:45', NULL),
(44, 'Student 2', 'student2@swarkul.com', '4808189790', NULL, '$2y$10$rbx/eC0tZWZLtV4UXEmX/ecYY9uKX9MxOWtkNfj3qD2mGmmkCiHYm', NULL, NULL, 'Student', 'Active', NULL, NULL, 'Web', '1986-04-09', 'male', '31/79, Vinayakapuram, 1st Street', '1st Street', 'Chennai', 'Tamil Nadu', '', '1', 0, NULL, 91, NULL, 'sdaf', NULL, '', '', NULL, NULL, '2021-01-10 08:56:37', '2021-01-10 08:56:37', NULL),
(45, 'Student 2', 'student3@swarkul.com', '4808189790', NULL, '$2y$10$gV/KUkRBZfxDyl7RqNNBx.xR3o7YKIKSsRKHnXesTcxCuf1V4bXki', NULL, NULL, 'Student', 'Active', NULL, NULL, 'Web', '1986-04-09', 'male', '31/79, Vinayakapuram, 1st Street', '1st Street', 'Chennai', 'Tamil Nadu', '', '1', 0, NULL, 91, NULL, 'sdaf', NULL, '', '', NULL, NULL, '2021-01-10 08:56:56', '2021-01-10 08:56:56', NULL),
(46, 'Haresh', 'gavem57713@loopsnow.com', '9898989898', NULL, '$2y$10$Uo9M4MRXCIFdlexY62XCZ.vyLvqEvndCzYU6Kg6KSUiDNvGk1UuvO', NULL, NULL, 'Student', 'Active', NULL, NULL, 'Web', '2021-01-05', 'male', 'rajkot', NULL, 'rajkot', 'gujarat', '', '1', 0, NULL, 91, NULL, 'okokokoko', 'haresh', '', '', NULL, NULL, '2021-01-20 05:50:18', '2021-01-20 05:50:18', NULL),
(47, 'asdasdasdasd', 'sgavem57713@loopsnow.com', '2342342342', NULL, '$2y$10$/AISNGCQLGClEh2Fv86Ic.i5NAMcSgrntHqe41QtEeVZ6W2V1pH4K', NULL, NULL, 'Student', 'Active', NULL, NULL, 'Web', '2021-01-06', 'male', 'radsd', NULL, 'dsff', 'sdfsdf', '', '1', 0, NULL, 91, NULL, 'qwe', 'wqe', '', '', NULL, NULL, '2021-01-20 06:00:11', '2021-01-20 06:00:11', NULL),
(48, 'shahul', 'info@tamilonlinebiz.com', '9999999999', NULL, '$2y$10$JyjUfq4jOxIpqr8ga8xJFOjIAMO07SWchwSAzIUJA.2Qw3XOrlkFW', NULL, NULL, 'Examiner', 'Active', NULL, NULL, 'Web', '2021-01-02', 'male', 'street 1', 'Street 2', 'chennai', 'TN', '', '1', 0, NULL, 1, NULL, NULL, NULL, '', '', 'L2Nwfku8TuuDwoHvOd9eaA', 'SbaC4vqFC34r14BcnxADM6cLS6Q1MNpa', '2021-01-06 19:13:09', '2021-01-28 09:48:45', NULL),
(49, 'sadasdasdas', 'hgavem57713@loopsnow.com', '9898989898', NULL, '$2y$10$R2T0zrmjO/8bY0vbgTycHuqoOO4zgO8jjXB6VtWNnHSvusecq5Fn6', NULL, NULL, 'Academy', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'asdasdasd', NULL, 'dsa', 'asdasd', '232323', '1', 1, 'erer', 91, 'SM0001', 'rer', NULL, '', '', NULL, NULL, '2021-01-22 09:07:21', '2021-01-22 09:07:21', NULL),
(50, 'Ramesh Rajagopalan', 'qarameshraja@gmail.com', '9000000000', NULL, '$2y$10$OMhrhK1g2hCrGExyofvRDObpn1.y6iV16g8zguBox5oBcqn.hDFom', NULL, NULL, 'Academy', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'test', NULL, 'EAST AMHERST', 'NY', '14051', '3', 0, 'violin', 1, 'SM0001', 'Great', NULL, '', '', NULL, NULL, '2021-01-23 17:30:06', '2021-01-23 17:30:06', NULL),
(51, 'testshahul', 'support@trueinfos.com', '9999999999', NULL, '$2y$10$5/kj0t.wz1p.yf7JnmEzu.ZCs/HcQC4ICDbGEDGZTCJrxg1qgmn5a', NULL, NULL, 'Academy', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'chennai', 'chennai', 'chennai', 'tamil nadu', '600001', '1', 1, NULL, 91, 'SM0001', 'sun academy', NULL, '', '', NULL, NULL, '2021-01-24 10:37:53', '2021-01-24 10:37:53', NULL),
(52, 'rees', 'sss@gmail.com', '9789029751', NULL, '$2y$10$1ogBrOnahoP0EJunKkQ5m.a4kEox9Dih/6.WyJVigKJFBKeUVuJ6C', NULL, NULL, 'Academy', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', 'sss', 'sss', 'CHENNAI', 'TN', '600001', '1', 1, 'vioilin', 91, 'SM0001', 'test', NULL, '', '', NULL, NULL, '2021-01-24 23:33:54', '2021-01-24 23:33:54', NULL),
(53, 'shahulacademy', 'info123@tamilonlinebiz.com', '9789029751', NULL, '$2y$10$0lhe8nLmvK9qunnFSPuOkuUJf/ImlQQgBpBAMmqMXz.4V7re49lT2', NULL, NULL, 'Academy', 'Active', NULL, NULL, 'Web', '0000-00-00', 'male', '123', '123', 'chennai', 'tamil nadu', '600001', '3', 1, NULL, 91, 'SM0001', 'shahulacademy', NULL, '', '', NULL, NULL, '2021-01-25 04:43:24', '2021-01-25 04:43:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academy`
--
ALTER TABLE `academy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examiner_capabilities`
--
ALTER TABLE `examiner_capabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_evaluation`
--
ALTER TABLE `exam_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_evaluation_grade`
--
ALTER TABLE `exam_evaluation_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_master`
--
ALTER TABLE `exam_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_scheduler`
--
ALTER TABLE `exam_scheduler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_structure`
--
ALTER TABLE `fee_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genrelist`
--
ALTER TABLE `genrelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submodules`
--
ALTER TABLE `submodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
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
-- AUTO_INCREMENT for table `academy`
--
ALTER TABLE `academy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `examiner_capabilities`
--
ALTER TABLE `examiner_capabilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exam_evaluation`
--
ALTER TABLE `exam_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_evaluation_grade`
--
ALTER TABLE `exam_evaluation_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `exam_master`
--
ALTER TABLE `exam_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `exam_scheduler`
--
ALTER TABLE `exam_scheduler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fee_structure`
--
ALTER TABLE `fee_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `genrelist`
--
ALTER TABLE `genrelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `submodules`
--
ALTER TABLE `submodules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
