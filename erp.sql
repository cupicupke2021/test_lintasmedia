-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2021 at 09:00 AM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.3.29-1+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bio01_new`
--

CREATE TABLE `bio01_new` (
  `emp_code` varchar(128) NOT NULL,
  `emp_name` varchar(500) NOT NULL,
  `gender` varchar(28) NOT NULL,
  `position` varchar(200) NOT NULL,
  `kd_jabatan` varchar(255) NOT NULL,
  `unit` varchar(128) NOT NULL,
  `grade` varchar(56) NOT NULL,
  `join_date` date NOT NULL,
  `emp_status` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `block` varchar(56) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bio01_new`
--

INSERT INTO `bio01_new` (`emp_code`, `emp_name`, `gender`, `position`, `kd_jabatan`, `unit`, `grade`, `join_date`, `emp_status`, `email`, `block`) VALUES
('CPSI201808053', 'AAT SEVTIAN HADI', 'Male', 'Technician Production CB', 'TPR', '105102020101', 'TEKNISI', '0000-00-00', '3', 'aatsevtian4@gmail.com', ''),
('CPSI203007', 'MADSARI', '', '', '', '', 'SECURITY', '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mst_biodata`
--

CREATE TABLE `mst_biodata` (
  `id` varchar(32) NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `gender` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_number` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tax_number` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `comp_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_biodata`
--

INSERT INTO `mst_biodata` (`id`, `name`, `address`, `gender`, `birthday`, `email`, `id_number`, `tax_number`, `status`, `comp_id`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1002100840', 'Ikhsan', 'jalan', 'Male', '2021-07-02', 'ikhsan@gmail.com', '007', '007', NULL, 'B-S025', '2021-07-02 01:27:25', 'hasan', '2021-07-09 04:14:36', 'yusuf', NULL, NULL, NULL, NULL, NULL),
('1030760820', 'Takim', 'jalan', 'Male', '2021-07-02', 'takim@gmail.com', '009', '009', NULL, 'C-L001', '2021-07-02 02:03:17', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_buss_dept`
--

CREATE TABLE `mst_buss_dept` (
  `id` varchar(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `comp_id` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(100) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(100) DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_buss_dept`
--

INSERT INTO `mst_buss_dept` (`id`, `name`, `comp_id`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('BD', 'Beku Darat', 'B-S025', '2021-07-19 02:56:27', 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('C01', 'Cumi 01', 'B-S025', '2021-07-19 02:53:54', 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('CJ', 'Cendol Jarum', 'B-S025', '2021-07-19 02:56:12', 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('CT', 'Cumi Timur', 'B-S025', NULL, NULL, '2021-07-09 03:36:30', 'hasan', NULL, NULL, NULL, NULL, NULL),
('CTL', 'Cumi Trawl', 'B-S025', '2021-07-19 02:55:48', 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('HRD', 'HUMAN RESOURCE DEPARTMENT', 'B-S025', NULL, NULL, '2021-07-09 03:36:47', 'hasan', NULL, NULL, NULL, NULL, NULL),
('IMP', 'Import', 'O001', '2021-07-24 02:26:36', 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('IT', 'Information Technology', 'B-S025', '2021-06-05 04:14:42', 'hasan', '2021-07-19 02:56:56', 'yusuf', NULL, NULL, NULL, NULL, NULL),
('PB', 'Pancing Barat', 'B-S025', '2021-07-19 02:56:41', 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin');

-- --------------------------------------------------------

--
-- Table structure for table `mst_buss_dept_comp`
--

CREATE TABLE `mst_buss_dept_comp` (
  `id` int NOT NULL,
  `comp_id` varchar(32) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `active` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_buss_dept_comp`
--

INSERT INTO `mst_buss_dept_comp` (`id`, `comp_id`, `pid`, `active`) VALUES
(1, 'PT-DOCK-INA', 'FIN', 'YES'),
(2, 'PT-MAINT-DOCK', 'FIN', 'YES'),
(3, 'PT-RENT-SHIP', 'FIN', 'YES'),
(4, 'PT-DOCK-INA', 'GH', 'YES'),
(5, 'PT-MAINT-DOCK', 'GH', 'YES'),
(6, 'PT-RENT-SHIP', 'GH', 'YES'),
(7, 'PT-DOCK-INA', 'HRD', 'YES'),
(8, 'PT-MAINT-DOCK', 'HRD', 'YES'),
(9, 'PT-RENT-SHIP', 'HRD', 'YES'),
(10, 'PT-DOCK-INA', 'LOG', 'YES'),
(11, 'PT-MAINT-DOCK', 'LOG', 'YES'),
(12, 'PT-RENT-SHIP', 'LOG', 'YES'),
(13, 'PT-DOCK-INA', 'MNT', 'YES'),
(14, 'PT-MAINT-DOCK', 'MNT', 'YES'),
(15, 'PT-RENT-SHIP', 'MNT', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `mst_buss_part`
--

CREATE TABLE `mst_buss_part` (
  `id` varchar(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `address` varchar(400) NOT NULL,
  `contact` varchar(400) NOT NULL,
  `type` varchar(2) NOT NULL,
  `parent_id` varchar(128) NOT NULL,
  `lat` varchar(128) NOT NULL,
  `lon` varchar(128) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `init` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_buss_part`
--

INSERT INTO `mst_buss_part` (`id`, `name`, `address`, `contact`, `type`, `parent_id`, `lat`, `lon`, `currency`, `init`) VALUES
('C-P0001', 'PT PERUSAHAAN LISTRIK NEGARA', '', '', 'C', '', '', '', '', ''),
('C-P0002', 'PT PERINTIS INDONESIA', '', '', 'C', '', '', '', '', ''),
('PT-AAI', 'PT ANGGARA ANTI SEJAHTERA', '', '', 'O', 'PT-AAI', '', '', '', ''),
('PT-DEMO', 'PT DEMO ', 'Virtual', '123', 'O', 'PT-AAI', '', '', '', ''),
('PT-GAI', 'PT GAIN AND INVESTMENT', '', '', 'O', 'PT-AAI', '', '', '', ''),
('PT-MAI', 'PT MANUFACTURE AND INVESTMENT', '', '', 'O', 'PT-AAI', '', '', '', ''),
('V-D0001', 'PT DIGITAL INDONESIA', '', '', 'V', '', '', '', '', ''),
('V-P0001', 'PT PERTAMINA', '', '', 'V', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mst_buss_part_bank`
--

CREATE TABLE `mst_buss_part_bank` (
  `id` int NOT NULL,
  `pid` varchar(64) NOT NULL,
  `bank_acc_name` varchar(255) NOT NULL,
  `bank_code` varchar(32) NOT NULL,
  `bank_name` varchar(300) NOT NULL,
  `bank_acc_number` varchar(128) NOT NULL,
  `active_now` varchar(12) NOT NULL,
  `type` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_buss_part_bank`
--

INSERT INTO `mst_buss_part_bank` (`id`, `pid`, `bank_acc_name`, `bank_code`, `bank_name`, `bank_acc_number`, `active_now`, `type`) VALUES
(0, '129503', 'Yusuf Syaefudin', '008', 'MANDIRI', '123456', 'YES', 'E'),
(3, '101274', 'John Doe', '008', 'MANDIRI', '1234567', 'YES', 'E'),
(4, '115370', 'Musonif', '008', 'MANDIRI', '1234566', 'NO', 'E'),
(5, 'PT-AAI', 'PT AAI', '008', 'MANDIRI', '0909090909', 'YES', 'O');

-- --------------------------------------------------------

--
-- Table structure for table `mst_buss_part_dev`
--

CREATE TABLE `mst_buss_part_dev` (
  `id` varchar(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `delivery_address` varchar(400) DEFAULT NULL,
  `type` varchar(2) NOT NULL,
  `sub_type` varchar(2) DEFAULT NULL,
  `parent_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fax_number` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bill_period` int DEFAULT NULL,
  `bill_to` varchar(64) NOT NULL,
  `bill_name` varchar(300) NOT NULL,
  `bill_acc` varchar(200) NOT NULL,
  `bill_detail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `npwp` varchar(15) DEFAULT NULL,
  `lat` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lon` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `currency` varchar(32) NOT NULL,
  `init` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(128) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(128) DEFAULT NULL,
  `ppn` int DEFAULT '0' COMMENT '0=no pnn;1=ppn',
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_buss_part_dev`
--

INSERT INTO `mst_buss_part_dev` (`id`, `name`, `alias`, `address`, `delivery_address`, `type`, `sub_type`, `parent_id`, `phone_number`, `fax_number`, `email`, `bill_period`, `bill_to`, `bill_name`, `bill_acc`, `bill_detail`, `npwp`, `lat`, `lon`, `currency`, `init`, `is_active`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `ppn`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('B-S025', 'BOSCO', NULL, 'BOSCO Muara Baru', NULL, 'O', 'U', '', '-', '-', '-', 150, '', 'PT Sanjaya Internasional Fishery ', 'Mandiri 123456', 'PT Sanjaya Internasional Fishery ', NULL, NULL, NULL, 'IDR', NULL, 1, '2021-05-29 06:15:57', '', '2021-07-30 03:10:46', 'stockadmin', 0, NULL, NULL, NULL, NULL, NULL),
('V-S535', 'VENDOR LAKNAT', 'VENDOR LAKNAT', NULL, NULL, 'V', 'S', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 'IDR', NULL, 1, '2021-07-26 02:13:17', 'yusuf', NULL, NULL, 1, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `mst_currency`
--

CREATE TABLE `mst_currency` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `num_sep` varchar(2) NOT NULL,
  `dec_sep` varchar(2) NOT NULL,
  `symbol` varchar(8) NOT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_currency`
--

INSERT INTO `mst_currency` (`id`, `name`, `num_sep`, `dec_sep`, `symbol`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('IDR', 'Indonesia Rupiah', '.', ',', 'Rp', NULL, NULL, NULL, NULL, NULL),
('USD', 'US Dollar', ',', '.', '$', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_docnum`
--

CREATE TABLE `mst_docnum` (
  `id` varchar(32) NOT NULL,
  `id_menu` varchar(128) NOT NULL,
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `example` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `template` varchar(129) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `start_num` int DEFAULT NULL,
  `efective_date` date DEFAULT NULL,
  `rec_user` varchar(32) DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_docnum`
--

INSERT INTO `mst_docnum` (`id`, `id_menu`, `type`, `example`, `template`, `start_num`, `efective_date`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1002619437', '1623203136', '1', NULL, NULL, NULL, NULL, 'yusuf', '2021-07-28 04:00:39', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1009071482', '1320400321', 'AutoNumber', '', '', 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1026004371', '1798004772', '1', '', '', 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1032650006', '1502241281', '1', '', '', 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1100214137', '1568120642', '1', NULL, NULL, NULL, NULL, 'yusuf', '2021-07-10 02:00:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1135976821', '1334105129', '1', '', '', 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1146302453', '1220851008', '1', NULL, NULL, NULL, NULL, 'hasan', '2021-06-23 01:53:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1216918820', '1972102008', '1', NULL, NULL, NULL, NULL, 'hasan', '2021-07-05 02:51:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1219671011', '1190512700', '1', NULL, NULL, NULL, NULL, 'yusuf', '2021-07-14 04:19:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1226017202', '1439502726', '1', NULL, NULL, 1, NULL, 'yusuf', '2021-07-16 07:58:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1572223252', '1339381993', '1', '', '', 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1594625092', '1125272122', '1', NULL, NULL, NULL, NULL, 'yusuf', '2021-07-27 06:19:01', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1602531568', '1817651637', 'Template', '', '', 1, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1682101256', '1212292632', '1', NULL, NULL, NULL, NULL, 'hasan', '2021-06-26 05:36:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1700215002', '1620860541', '1', NULL, NULL, NULL, NULL, 'hasan', '2021-06-25 02:39:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1753912994', '1209658010', '2', '', '', 1, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1772942260', '1148402205', '1', NULL, NULL, NULL, NULL, 'hasan', '2021-06-26 01:39:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1822240512', '1951078623', '2', '', '', 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1912061080', '1035323122', '1', NULL, NULL, 1, NULL, 'yusuf', '2021-07-30 01:45:34', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1912070028', '1508502610', '1', NULL, NULL, NULL, NULL, 'yusuf', '2021-07-14 02:09:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1922662923', '1940610074', 'AutoNumber', '', '', 1, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1924201000', '1082626812', 'AutoNumber', '', '', 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('276652176', '740532040', 'AutoNumber', '', '', 200000001, '2020-03-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('990006097', '008364013', 'AutoNumber', '', '', 200000001, '2020-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('DN178701922', 'MM729103708', '1', NULL, NULL, 1, NULL, 'yusuf', '2021-08-19 08:02:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `mst_docnum_count`
--

CREATE TABLE `mst_docnum_count` (
  `id` int NOT NULL,
  `docnum` varchar(128) NOT NULL,
  `lastnum` int NOT NULL,
  `sys` varchar(128) NOT NULL,
  `is_use` varchar(12) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(32) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `rec_comp_id` varchar(32) NOT NULL,
  `rec_dept` varchar(32) NOT NULL,
  `rec_pos` varchar(32) NOT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_docnum_count`
--

INSERT INTO `mst_docnum_count` (`id`, `docnum`, `lastnum`, `sys`, `is_use`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
(1, 'DO/2021-08-28/1', 1, 'Trs_Delivery_Order', 'self', '2021-08-28 08:29:36', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(2, 'GR/2021-08-28/1', 1, 'Trs_Grpo_sif', 'self', '2021-08-28 08:31:31', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(3, 'GR/2021-08-28/2', 2, 'Trs_Grpo_sif', 'self', '2021-08-28 08:35:34', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(4, 'SPK/2021-08-28/1', 1, 'Trs_Repacking', 'self', '2021-08-28 08:37:28', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(5, 'GR/2021-08-28/3', 3, 'Trs_Grpo_sif', 'self', '2021-08-28 08:41:54', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(6, 'SPK/2021-08-28/2', 2, 'Trs_Repacking', 'self', '2021-08-28 08:48:00', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(7, 'SPK/2021-08-28/3', 3, 'Trs_Repacking', 'self', '2021-08-28 08:50:13', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(8, 'INV_TRF/2021-08-28/1', 1, 'Trs_Inventory_Transfer', 'self', '2021-08-28 08:51:42', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(9, 'DO/2021-08-28/2', 2, 'Trs_Delivery_Order', 'self', '2021-08-28 08:58:16', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(10, 'INV_TRF/2021-08-28/2', 2, 'Trs_Inventory_Transfer', 'self', '2021-08-28 09:03:22', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(11, 'INV_TRF/2021-08-28/3', 3, 'Trs_Inventory_Transfer', 'self', '2021-08-28 09:05:24', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(12, 'INV_TRF/2021-08-28/4', 4, 'Trs_Inventory_Transfer', 'self', '2021-08-28 09:10:48', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(13, 'SPK/2021-08-28/4', 4, 'Trs_Repacking', 'self', '2021-08-28 09:12:16', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(14, 'INV_TRF/2021-08-28/5', 5, 'Trs_Inventory_Transfer', 'self', '2021-08-28 09:13:31', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(15, 'SPK/2021-08-28/5', 5, 'Trs_Repacking', 'self', '2021-08-28 09:14:35', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(16, 'TRFQC/2021-08-28/1', 1, 'Trs_Inventory_Transfer_Qc', 'self', '2021-08-28 09:21:18', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(17, 'INV_TRF/2021-08-28/6', 6, 'Trs_Inventory_Transfer', 'self', '2021-08-28 10:22:57', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(18, 'INV_TRF/2021-08-28/7', 7, 'Trs_Inventory_Transfer', 'self', '2021-08-28 10:24:55', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(19, 'TRFQC/2021-08-28/2', 2, 'Trs_Inventory_Transfer_Qc', 'self', '2021-08-28 10:27:41', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF'),
(20, 'SPK/2021-08-28/6', 6, 'Trs_Repacking', 'self', '2021-08-28 12:51:00', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(21, 'INV_TRF/2021-08-30/8', 8, 'Trs_Inventory_Transfer', 'self', '2021-08-30 08:31:47', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(22, 'INV_TRF/2021-08-30/9', 9, 'Trs_Inventory_Transfer', 'self', '2021-08-30 08:32:03', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(23, 'INV_TRF/2021-08-30/10', 10, 'Trs_Inventory_Transfer', '', '2021-08-30 08:32:38', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(24, 'TRFQC/2021-08-30/3', 3, 'Trs_Inventory_Transfer_Qc', 'self', '2021-08-30 08:46:38', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(25, 'DO/2021-08-30/3', 3, 'Trs_Delivery_Order', 'self', '2021-08-30 08:49:47', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(26, 'SPK/2021-08-30/7', 7, 'Trs_Repacking', 'self', '2021-08-30 10:01:48', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `mst_docnum_dtl`
--

CREATE TABLE `mst_docnum_dtl` (
  `id` varchar(128) NOT NULL,
  `pid` varchar(128) NOT NULL,
  `row_order` int DEFAULT NULL,
  `col_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_date` varchar(32) DEFAULT NULL,
  `rec_user` varchar(32) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_docnum_dtl`
--

INSERT INTO `mst_docnum_dtl` (`id`, `pid`, `row_order`, `col_type`, `format`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('000650200', '239292208', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('023833523', '239292208', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1004260709', '1216918820', 2, 'divider', '/', '2021-07-05 02:52:16', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1010652024', '1219671011', 2, 'divider', '/', '2021-07-14 04:20:47', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1010720178', '1822240512', 1, 'text', 'SO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1021011764', '1129262004', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1021150682', '1216918820', 4, 'divider', '/', '2021-07-05 02:52:40', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1021234967', '1682101256', 1, 'text', 'INV_TRFAREA', '2021-06-26 05:37:34', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1022732222', '1594625092', 3, 'date', 'Y-m-d', '2021-07-27 06:20:24', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1024766046', '1772942260', 3, 'date', 'Y-m-d', '2021-06-26 01:41:37', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1027422268', '1009071482', 5, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1032877151', '1912061080', 1, 'text', 'GRPACK', '2021-07-30 01:45:45', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1040355228', '1032650006', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1042207037', '1602531568', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1042535200', '1216918820', 5, 'date', 'Y-m-d', '2021-07-05 02:52:53', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1046121259', '1924201000', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1050622232', '1226017202', 1, 'text', 'WORK_ORDER', '2021-07-16 07:58:34', 'yusuf', '2021-08-02 02:04:00', 'yusuf', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1062681309', '1772942260', 1, 'text', 'REPACK', '2021-06-26 01:40:36', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1067422221', '1032650006', 3, 'text', 'CASH-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1069126188', '1682101256', 4, 'divider', '/', '2021-06-26 05:38:02', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1070612301', '1216918820', 6, 'divider', '/', '2021-07-05 02:53:18', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1070789897', '1100214137', 2, 'divider', '/', '2021-07-10 02:01:07', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1072893726', '1822240512', 5, 'date', 'Y-m-d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1075245920', '1026004371', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1076621219', '1594625092', 5, 'number', NULL, '2021-07-27 06:20:43', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1092505093', '1922662923', 5, 'date', 'Y-m-d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1102542049', '1002619437', 3, 'date', 'Y-m-d', '2021-07-28 04:01:03', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1103030310', '1753912994', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1103128222', '1772942260', 2, 'divider', '/', '2021-06-26 01:40:55', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1107547027', '1219671011', 3, 'comp_id', NULL, '2021-07-14 04:21:15', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1117214725', '1226017202', 5, 'number', NULL, '2021-07-16 07:59:19', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1120303303', '1922662923', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1122227800', '1822240512', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1124608170', '1912070028', 4, 'divider', '/', '2021-07-14 02:10:08', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1130217037', '1753912994', 5, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1154114261', '1602531568', 1, 'text', 'PR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1161190089', '1924201000', 7, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1162160288', '1226017202', 2, 'divider', '/', '2021-07-16 07:58:43', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1172498478', '1594625092', 4, 'divider', '/', '2021-07-27 06:20:36', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1186292220', '1146302453', 1, 'text', 'INV_TRF', '2021-06-23 01:57:33', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1188020051', '1682101256', 3, 'date', 'Y-m-d', '2021-06-26 05:37:54', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1192225121', '1700215002', 4, 'divider', '/', '2021-06-25 02:41:40', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1200795077', '1129262004', 1, 'text', 'DO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1200899522', '1912061080', 4, 'divider', '/', '2021-07-30 01:46:13', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1208729022', '1572223252', 3, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1209253011', '1009071482', 3, 'comp_id', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1209268181', '1772942260', 4, 'divider', '/', '2021-06-26 01:41:47', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1220034961', '1129262004', 7, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1221026449', '1700215002', 5, 'number', NULL, '2021-06-25 02:42:04', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1221222222', '1924201000', 3, 'comp_id', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1221992349', '1226017202', 4, 'divider', '/', '2021-07-16 07:59:06', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1222910140', '1219671011', 5, 'number', NULL, '2021-07-14 06:48:36', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1223002108', '1924201000', 1, 'text', 'RN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1224862752', '1572223252', 1, 'date', 'Y-m-d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1231002123', '1594625092', 2, 'divider', '/', '2021-07-27 06:19:57', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1239075514', '1700215002', 3, 'date', 'Y-m-d', '2021-06-25 02:41:22', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1240820949', '1912070028', 2, 'divider', '/', '2021-07-14 02:09:48', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1242082739', '1219671011', 1, 'text', 'SO', '2021-07-14 04:20:29', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1242702095', '1002619437', 2, 'divider', '/', '2021-07-28 04:00:52', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1254829400', '1602531568', 3, 'comp_id', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1264910103', '1922662923', 7, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1265580720', '1026004371', 3, 'date', 'Y-m-d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1266154652', '1026004371', 5, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1270527944', '1129262004', 3, 'comp_id', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1272929930', '1100214137', 1, 'text', 'SPK', '2021-07-10 02:00:56', 'yusuf', '2021-08-23 10:54:16', 'yusuf', NULL, NULL, NULL, NULL, NULL),
('1280164229', '1753912994', 1, 'comp_id', 'PT-AA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1281870829', '1924201000', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1288609222', '1602531568', 5, 'date', 'Y-m-d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1302700053', '1032650006', 1, 'comp_id', 'PT-AA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1308400253', '1912061080', 3, 'date', 'Y-m-d', '2021-07-30 01:46:01', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1312622972', '1009071482', 1, 'text', 'SO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1313425597', '1912070028', 5, 'number', NULL, '2021-07-14 02:10:20', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1327767439', '1594625092', 1, 'text', 'TRFQC', '2021-07-27 06:19:48', 'yusuf', '2021-08-20 08:53:20', 'yusuf', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1366411642', '1146302453', 5, 'number', NULL, '2021-06-23 02:44:44', 'hasan', '2021-06-23 03:01:25', 'hasan', NULL, NULL, NULL, NULL, NULL),
('1371022297', '1100214137', 5, 'number', NULL, '2021-07-10 02:01:40', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1376112300', '1129262004', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1410061200', '1226017202', 3, 'date', 'Y-m-d', '2021-07-16 07:58:58', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1410524337', '1146302453', 4, 'divider', '/', '2021-06-23 03:01:34', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1414581042', '1219671011', 4, 'divider', '/', '2021-07-14 04:21:34', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1424112902', '1032650006', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1442921162', '1009071482', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1468015002', '1912070028', 1, 'text', 'DO', '2021-07-14 02:09:40', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1500025999', '1026004371', 1, 'comp_id', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1501757502', '1216918820', 7, 'number', NULL, '2021-07-05 02:53:37', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1508752700', '1753912994', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1515777452', '1216918820', 1, 'text', 'MA', '2021-07-05 02:51:58', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1611259822', '1146302453', 2, 'divider', '/', '2021-06-23 01:57:48', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1618832228', '1002619437', 1, 'text', 'SQ', '2021-07-28 04:00:47', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1620280220', '1682101256', 5, 'number', NULL, '2021-06-26 05:38:14', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1622180469', '1822240512', 3, 'comp_id', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1642043821', '1129262004', 6, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1662035487', '1100214137', 4, 'divider', '/', '2021-07-10 02:01:31', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1682757311', '1100214137', 3, 'date', 'Y-m-d', '2021-07-10 02:01:20', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1692210250', '1032650006', 5, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1700490127', '1912070028', 3, 'date', 'Y-m-d', '2021-07-14 02:10:00', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1702610121', '1822240512', 7, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1716112190', '1924201000', 6, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1721728251', '1026004371', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1735678689', '1002619437', 5, 'number', NULL, '2021-07-28 04:01:17', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1742197222', '1772942260', 5, 'number', NULL, '2021-06-26 01:42:13', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1754028222', '1009071482', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1770193763', '1922662923', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1774800001', '1922662923', 3, 'comp_id', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1802012152', '1572223252', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1802420133', '1753912994', 3, 'date', 'Y-m-d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1802821429', '1924201000', 5, 'date', 'Y-m-d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1805252262', '1822240512', 6, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1807220002', '1700215002', 1, 'text', 'GR', '2021-06-25 02:40:48', 'hasan', '2021-06-25 02:43:53', 'hasan', NULL, NULL, NULL, NULL, NULL),
('1808010116', '1700215002', 2, 'divider', '/', '2021-06-25 02:41:08', 'hasan', '2021-06-25 02:41:26', 'hasan', NULL, NULL, NULL, NULL, NULL),
('1809595809', '1922662923', 1, 'text', 'PO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1827791300', '1602531568', 4, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1830637200', '1129262004', 5, 'date', 'Y-m-d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1831516602', '1682101256', 2, 'divider', '/', '2021-06-26 05:37:43', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1862872215', '1602531568', 7, 'number', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1891294699', '1922662923', 6, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1898384604', '1002619437', 4, 'divider', '/', '2021-07-28 04:01:09', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1910144200', '1602531568', 6, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1922429201', '1912061080', 5, 'number', NULL, '2021-07-30 01:46:22', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1922829126', '1146302453', 3, 'date', 'Y-m-d', '2021-06-23 01:58:08', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1928120919', '1822240512', 2, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1970692800', '1912061080', 2, 'divider', '/', '2021-07-30 01:45:52', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1975271280', '1216918820', 3, 'text', 'TLB', '2021-07-05 02:52:26', 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('277660221', '239292208', 5, 'year', 'year', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('322223727', '239292208', 6, 'divider', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('413621860', '239292208', 3, 'text', 'PR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('500472222', '239292208', 1, 'text', 'UCT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('802591320', '239292208', 7, 'number', 'number', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('DN388022072', 'DN178701922', 1, 'text', 'SISA', '2021-08-19 08:02:56', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('DN550441102', 'DN178701922', 2, 'divider', '/', '2021-08-19 08:03:05', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('DN898079201', 'DN178701922', 3, 'number', NULL, '2021-08-19 08:03:17', 'yusuf', '2021-08-19 08:03:30', 'yusuf', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `mst_itm_group`
--

CREATE TABLE `mst_itm_group` (
  `id` varchar(128) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `uom` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `planning_method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `procure_method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `order_interval` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `order_multiple` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valuation_method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dept_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dept_name` varchar(128) NOT NULL,
  `parent` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_itm_group`
--

INSERT INTO `mst_itm_group` (`id`, `name`, `uom`, `planning_method`, `procure_method`, `order_interval`, `order_multiple`, `valuation_method`, `dept_id`, `dept_name`, `parent`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1', 'Cumi 01', 'Kg', NULL, NULL, NULL, NULL, NULL, 'C01', 'Cumi 01', NULL, NULL, 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('1.1', 'LGN', 'Kg', NULL, NULL, NULL, NULL, NULL, 'C01', 'Cumi 01', '1', NULL, 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('1.2', 'AYN', 'Kg', NULL, NULL, NULL, NULL, NULL, 'C01', 'Cumi 01', '1', NULL, 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('1.3', 'HHH', 'Kg', NULL, NULL, NULL, NULL, NULL, 'C01', 'Cumi 01', '1', NULL, 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('2', 'Beku darat', 'Kg', NULL, NULL, NULL, NULL, NULL, 'BD', 'Beku Darat', NULL, NULL, 'yusuf', '2021-07-22 02:11:37', 'yusuf', 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('3', 'Cendol Jarum', 'Kg', NULL, NULL, NULL, NULL, NULL, 'CJ', 'Cendol Jarum', NULL, NULL, 'yusuf', '2021-07-22 02:22:35', 'yusuf', 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('4', 'Pancing Barat', 'Kg', NULL, NULL, NULL, NULL, NULL, 'PB', 'Pancing Barat', NULL, NULL, 'yusuf', '2021-07-22 02:52:31', 'yusuf', 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('5', 'Cumi Timur', 'Kg', NULL, NULL, NULL, NULL, NULL, 'CT', 'Cumi Timur', NULL, NULL, 'yusuf', '2021-07-22 03:18:15', 'yusuf', 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('6', 'Cumi Trawl', 'Kg', NULL, NULL, NULL, NULL, NULL, 'CTL', 'Cumi Trawl', NULL, NULL, 'yusuf', '2021-07-22 03:41:00', 'yusuf', 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('7', 'Import', 'Kg', NULL, NULL, NULL, NULL, NULL, 'IMP', 'Import', NULL, '2021-07-28 07:07:39', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF');

-- --------------------------------------------------------

--
-- Table structure for table `mst_itm_mat`
--

CREATE TABLE `mst_itm_mat` (
  `id` varchar(32) NOT NULL,
  `series` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itm_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fr_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itm_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itm_type_name` varchar(64) NOT NULL,
  `itm_group` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itm_condition` varchar(32) DEFAULT NULL,
  `itm_condition_name` varchar(128) DEFAULT NULL,
  `uom` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `uom_vol` varchar(32) NOT NULL,
  `pricelist` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` decimal(36,4) DEFAULT NULL,
  `currency` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tax_group` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gen_manufacturer` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gen_discount` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gen_shipping_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gen_meas_itm_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gen_active` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pur_vendor` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pur_uom_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pur_itm_qty` int DEFAULT NULL,
  `pur_itm_group` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pur_tax_group` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sal_tax_group` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sal_uom_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sal_itm_qty` int DEFAULT NULL,
  `inv_managed_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inv_val_method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `plan_method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `plan_procure_method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `plan_order_interval` int DEFAULT NULL,
  `plan_order_multiple` int DEFAULT NULL,
  `plan_order_minimum` int DEFAULT NULL,
  `sls_itm` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inv_itm` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pur_itm` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_itm_mat`
--

INSERT INTO `mst_itm_mat` (`id`, `series`, `itm_code`, `name`, `fr_name`, `itm_type`, `itm_type_name`, `itm_group`, `itm_condition`, `itm_condition_name`, `uom`, `uom_vol`, `pricelist`, `price`, `currency`, `tax_group`, `gen_manufacturer`, `gen_discount`, `gen_shipping_type`, `gen_meas_itm_by`, `gen_active`, `pur_vendor`, `pur_uom_name`, `pur_itm_qty`, `pur_itm_group`, `pur_tax_group`, `sal_tax_group`, `sal_uom_name`, `sal_itm_qty`, `inv_managed_by`, `inv_val_method`, `plan_method`, `plan_procure_method`, `plan_order_interval`, `plan_order_multiple`, `plan_order_minimum`, `sls_itm`, `inv_itm`, `pur_itm`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1207794249', NULL, 'A10101', 'Cumi', 'Cumi', 'RM', 'Raw Material', '1.1', NULL, NULL, 'PAX', 'Kg', NULL, '0.0000', 'IDR', '0', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
('MI030064227', NULL, '44', 'tes', 'tes', 'RM', 'Raw Material', '1.2', NULL, NULL, 'box', 'Gram', NULL, '0.0000', 'IDR', '0', NULL, NULL, NULL, NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-25 13:24:10', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `mst_itm_mat_dtl`
--

CREATE TABLE `mst_itm_mat_dtl` (
  `id` int NOT NULL,
  `pid` varchar(32) NOT NULL,
  `itm_code` varchar(32) NOT NULL,
  `itm_code_name` varchar(32) NOT NULL,
  `tax_liable` varchar(4) NOT NULL,
  `manufacturer` varchar(32) NOT NULL,
  `shipping_type` varchar(32) NOT NULL,
  `managed_item` varchar(32) NOT NULL,
  `active` varchar(12) NOT NULL,
  `phantom` varchar(4) NOT NULL,
  `issue_method` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_itm_mat_spec`
--

CREATE TABLE `mst_itm_mat_spec` (
  `id` int NOT NULL,
  `pid` varchar(32) NOT NULL,
  `variant_id` varchar(32) DEFAULT NULL,
  `name` varchar(48) NOT NULL,
  `uom` varchar(32) NOT NULL,
  `value` varchar(128) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(32) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL,
  `rec_comp_id` varchar(64) DEFAULT NULL,
  `rec_dept` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_itm_mat_spec`
--

INSERT INTO `mst_itm_mat_spec` (`id`, `pid`, `variant_id`, `name`, `uom`, `value`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_pos`, `rec_emp_id`, `rec_emp_name`, `rec_comp_id`, `rec_dept`) VALUES
(1001020554, '1680210768', NULL, 'Berats', 'Kilogram', '1000', '2021-07-14 02:41:31', 'yusuf', '2021-07-14 02:47:14', 'yusuf', NULL, NULL, NULL, NULL, NULL),
(1006320426, '1071070074', NULL, 'test', 'Gram', 'test', '2021-07-14 06:15:41', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1094115104, '1071070074', '1011000320', 'coba', 'Gram', '8', '2021-07-10 02:49:49', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1328137897, '1071070074', NULL, 'test', 'box', 'test', '2021-07-14 06:10:07', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1353025422, '1071070074', '1011000320', 'tes', 'Gram', '5', '2021-07-10 02:44:54', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1471102938, '1071070074', '1087900022', 'ee', 'Kilogram', '5', '2021-07-10 02:50:02', 'yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_itm_mat_varian`
--

CREATE TABLE `mst_itm_mat_varian` (
  `id` int NOT NULL,
  `pid` int DEFAULT NULL,
  `itm_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `uom` varchar(32) DEFAULT NULL,
  `uom_vol` varchar(32) NOT NULL,
  `qty` int DEFAULT NULL,
  `price` decimal(64,4) DEFAULT NULL,
  `currency` varchar(32) NOT NULL,
  `status` varchar(32) DEFAULT NULL,
  `itm_condition` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itm_condition_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_itm_mat_varian`
--

INSERT INTO `mst_itm_mat_varian` (`id`, `pid`, `itm_code`, `name`, `uom`, `uom_vol`, `qty`, `price`, `currency`, `status`, `itm_condition`, `itm_condition_name`, `remark`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
(1903701366, 1207794250, 'A10102', 'S1', 'PAX', 'Kg', 1, '0.0000', 'IDR', NULL, NULL, NULL, NULL, NULL, 'yusuf', NULL, NULL, 'O001', 'FIN', 'SPV', '54321', 'Yusuf Syaefudin'),
(1903703767, 1207794249, 'A10101', 'S1', 'PAX', 'Kg', 1, '0.0000', 'IDR', NULL, NULL, NULL, 'Susun 1', '2021-09-01 15:56:30', 'stockadmin', NULL, NULL, 'DEFF', 'DEFF', 'DEFF', 'DEFF', 'DEFF');

-- --------------------------------------------------------

--
-- Table structure for table `mst_itm_mat_wh`
--

CREATE TABLE `mst_itm_mat_wh` (
  `id` int NOT NULL,
  `pid` varchar(128) NOT NULL,
  `itm_code` varchar(32) NOT NULL,
  `itm_code_name` varchar(32) NOT NULL,
  `wh_code` varchar(128) NOT NULL,
  `def_wh` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_itm_mat_wh`
--

INSERT INTO `mst_itm_mat_wh` (`id`, `pid`, `itm_code`, `itm_code_name`, `wh_code`, `def_wh`) VALUES
(3, '1243351287', '', '', 'WH-RAW', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `mst_itm_price`
--

CREATE TABLE `mst_itm_price` (
  `id` int NOT NULL,
  `pid` varchar(32) NOT NULL,
  `pricelist` varchar(32) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `amount` decimal(36,4) NOT NULL,
  `def_prc` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_itm_price`
--

INSERT INTO `mst_itm_price` (`id`, `pid`, `pricelist`, `currency`, `amount`, `def_prc`) VALUES
(1, '1492727420', 'pricelist1', 'USD', '3000.0000', ''),
(2, '1492727420', 'pricelist1', 'IDR', '2000.0000', ''),
(3, '1884170963', 'pricelist1', 'IDR', '5250000.0000', ''),
(4, '1884170963', 'pricelist2', 'IDR', '20000.0000', ''),
(5, '1107461275', 'pricelist1', 'IDR', '8550000.0000', ''),
(6, '1090630203', 'pricelist1', 'IDR', '9900000.0000', ''),
(7, '1180991870', 'pricelist1', 'IDR', '11250000.0000', ''),
(8, '1083201119', 'pricelist1', 'IDR', '15000000.0000', ''),
(9, '1000915121', 'pricelist1', 'USD', '95.0000', ''),
(10, '1213608141', 'pricelist1', 'IDR', '1000000.0000', ''),
(11, '1213608141', 'pricelist2', 'USD', '80.0000', ''),
(14, '1287122721', 'pricelist1', 'IDR', '100.0000', ''),
(15, '1287122721', 'pricelist2', 'USD', '9.5000', ''),
(16, '1722231600', 'pricelist1', 'IDR', '1500000.0000', ''),
(27, '1722231600', 'pricelist2', 'USD', '100.0000', ''),
(28, '1823123190', 'pricelist1', 'IDR', '1000000.0000', ''),
(29, '1823123190', 'pricelist2', 'USD', '80.0000', ''),
(30, '1243351287', 'pricelist1', 'IDR', '9500.0000', 'YES'),
(31, '1210215022', 'pricelist1', 'IDR', '10000.0000', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `mst_itm_pricelist`
--

CREATE TABLE `mst_itm_pricelist` (
  `id` int NOT NULL,
  `itm_code` varchar(32) NOT NULL,
  `itm_name` varchar(32) NOT NULL,
  `name` decimal(36,4) NOT NULL,
  `amount` decimal(36,4) NOT NULL,
  `currency` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trs_attachment`
--

CREATE TABLE `trs_attachment` (
  `id` varchar(128) NOT NULL,
  `module_name` varchar(128) NOT NULL,
  `trs_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trs_type` varchar(32) NOT NULL,
  `attachment` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(32) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `comp_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL,
  `rec_comp_id` varchar(64) DEFAULT NULL,
  `rec_dept` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trs_attachment`
--

INSERT INTO `trs_attachment` (`id`, `module_name`, `trs_id`, `trs_type`, `attachment`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `comp_id`, `rec_pos`, `rec_emp_id`, `rec_emp_name`, `rec_comp_id`, `rec_dept`) VALUES
('ta000004508', 'Master_Item', '1207794249', 'header', 'Master_Item-MTIwNzc5NDI0OQ-ta03207827326792936732.jpg', '2021-08-27 15:01:55', 'yusuf', NULL, NULL, NULL, 'STAFF', '0077', 'Ikhsan', 'B-S025', 'CB'),
('ta013817078', 'Trs_Repacking', 'TR800021333', 'header', 'Trs_Repacking-VFI4MDAwMjEzMzM-ta11214891681767282601.jpg', '2021-08-28 08:56:24', 'yusuf', NULL, NULL, NULL, 'STAFF', '0077', 'Ikhsan', 'B-S025', 'CB'),
('ta177609127', 'Trs_Repacking', 'TR721073980', 'header', 'Trs_Repacking-VFI3MjEwNzM5ODA-ta83150022306955407251.jpg', '2021-08-27 15:55:55', 'yusuf', NULL, NULL, NULL, 'STAFF', '0077', 'Ikhsan', 'B-S025', 'CB'),
('ta203850289', 'Trs_Repacking', 'TR111121238', 'header', 'Trs_Repacking-VFIxMTExMjEyMzg-ta28832182352322182825.jpg', '2021-08-28 12:51:39', 'yusuf', NULL, NULL, NULL, 'STAFF', '0077', 'Ikhsan', 'B-S025', 'CB'),
('ta536520800', 'Trs_Repacking', 'TR721073980', 'header', 'Trs_Repacking-VFI3MjEwNzM5ODA-ta22222143085512210020.jpg', '2021-08-27 15:55:25', 'yusuf', NULL, NULL, NULL, 'STAFF', '0077', 'Ikhsan', 'B-S025', 'CB'),
('ta822348393', 'Trs_Repacking', 'TR819093121', 'header', 'Trs_Repacking-VFI4MTkwOTMxMjE-ta50135044217190127152.jpg', '2021-08-30 11:54:35', 'yusuf', NULL, NULL, NULL, 'STAFF', '0077', 'Ikhsan', 'B-S025', 'CB'),
('ta918058274', 'Trs_Repacking', 'TR111121238', 'header', 'Trs_Repacking-VFIxMTExMjEyMzg-ta04210000502081244087.jpg', '2021-08-28 12:52:14', 'yusuf', NULL, NULL, NULL, 'STAFF', '0077', 'Ikhsan', 'B-S025', 'CB');

-- --------------------------------------------------------

--
-- Table structure for table `trs_his_position`
--

CREATE TABLE `trs_his_position` (
  `id` int NOT NULL,
  `emp_id` varchar(64) NOT NULL,
  `emp_number` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `userid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `position_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `recdate` datetime DEFAULT NULL,
  `active_now` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `comp_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `department` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `grade` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ktype` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `depen` int DEFAULT NULL,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `end_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trs_his_position`
--

INSERT INTO `trs_his_position` (`id`, `emp_id`, `emp_number`, `userid`, `position_id`, `date`, `end_date`, `recdate`, `active_now`, `comp_id`, `department`, `grade`, `ktype`, `depen`, `image`, `status`, `end_status`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
(1025160302, '1002100840', '0077', 'yusuf', 'STAFF', '2021-07-02', '2021-07-31', NULL, 'No', 'B-S025', 'CT', 'Senior', NULL, NULL, NULL, 'Contract', NULL, '2021-07-02 01:28:49', 'hasan', '2021-07-09 04:15:07', 'yusuf', NULL, NULL, NULL, NULL, NULL),
(1173551117, '1002100840', '0077', 'demo', 'STAFF', '2021-07-03', '2021-07-31', NULL, 'Yes', 'B-S025', 'BD', 'Senior', NULL, NULL, NULL, 'Contract', NULL, '2021-07-03 02:04:46', 'hasan', '2021-09-02 14:45:30', 'yusuf', NULL, NULL, NULL, NULL, NULL),
(1700221802, '1030760820', '008', 'john_doe', 'STAFF', '2021-07-02', '2021-07-31', NULL, 'Yes', 'O001', 'C01', 'Junior', NULL, NULL, NULL, 'Contract', NULL, '2021-07-02 02:03:40', 'hasan', '2021-09-02 11:06:45', 'yusuf', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trs_inv_log`
--

CREATE TABLE `trs_inv_log` (
  `id` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `itm_code` varchar(32) NOT NULL,
  `itm_code_name` varchar(128) NOT NULL,
  `qty` decimal(64,4) NOT NULL,
  `in_out` varchar(12) NOT NULL,
  `rec_date` datetime NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `mod_date` datetime NOT NULL,
  `mod_user` varchar(32) NOT NULL,
  `rec_comp_id` varchar(64) NOT NULL,
  `rec_dept` varchar(32) NOT NULL,
  `rec_pos` varchar(32) NOT NULL,
  `rec_emp_id` varchar(64) NOT NULL,
  `rec_emp_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trs_inv_log`
--

INSERT INTO `trs_inv_log` (`id`, `date`, `itm_code`, `itm_code_name`, `qty`, `in_out`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('TBK162010299', '2021-09-02', 'A10204', '', '12.0000', 'OUT', '2021-09-02 13:01:56', 'john_doe', '0000-00-00 00:00:00', '', 'O001', 'C01', 'STAFF', '008', 'Takim'),
('TBM615535413', '2021-09-02', 'A10204', '', '10.0000', 'IN', '2021-09-02 11:46:35', 'john_doe', '2021-09-02 11:56:00', 'john_doe', 'O001', 'C01', 'STAFF', '008', 'Takim'),
('TBM900122953', '2021-09-02', 'A10204', '', '10.0000', 'IN', '2021-09-02 11:46:13', 'john_doe', '2021-09-02 11:55:54', 'john_doe', 'O001', 'C01', 'STAFF', '008', 'Takim');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_function_list`
--

CREATE TABLE `ucp_function_list` (
  `id` varchar(32) NOT NULL,
  `fname` varchar(32) NOT NULL,
  `ftrigger` varchar(128) NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) NOT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ucp_function_list`
--

INSERT INTO `ucp_function_list` (`id`, `fname`, `ftrigger`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('getMonths', 'Select Month', 'getMonths($obj)', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectAttdEmp', 'select employee attendance', 'selectEmpAttd($obj,$his_id,$period);', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectDependent', 'select dependent', 'selectDependent($obj,$his_id);', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectItmCode', 'select item master data', 'selectItmCode($obj);', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectKtype', 'select K type', 'selectKtype($obj,$his_id)', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectMenu', 'select menu', 'selectMenu($obj)', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectPosition', 'select position', 'selectPosition($obj)', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectPrevCum', 'select previous cumulation', 'selectPrevCum($obj,$period,$his_id,$payroll_comp);', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectUnits2', 'select units', 'selectUnits2($obj)', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectWH', 'select warehouse', 'selectWH($obj)', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('selectWorkMonth', 'select work month', 'selectMonthWork($obj,$his_id);', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_general_doc`
--

CREATE TABLE `ucp_general_doc` (
  `id` int NOT NULL,
  `docnum` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `modul_name` varchar(32) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `descr` varchar(200) NOT NULL,
  `recdate` date NOT NULL,
  `recuser` varchar(128) NOT NULL,
  `approval_status` varchar(8) NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ucp_module_sync`
--

CREATE TABLE `ucp_module_sync` (
  `id` varchar(32) NOT NULL,
  `module` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `core` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `config` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `rec_user` varchar(32) DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ucp_module_sync`
--

INSERT INTO `ucp_module_sync` (`id`, `module`, `core`, `config`, `name`, `date`, `description`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1106135920', '1212025206', NULL, NULL, NULL, '2021-06-09 02:57:04', NULL, 'hasan', '2021-06-09 02:57:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1598923600', '1212025206', NULL, NULL, NULL, '2021-06-09 02:59:43', NULL, 'hasan', '2021-06-09 02:59:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1701790171', '1212025206', NULL, NULL, NULL, '2021-06-09 02:57:31', NULL, 'hasan', '2021-06-09 02:57:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_companies`
--

CREATE TABLE `ucp_site_companies` (
  `id` varchar(128) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(400) NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) NOT NULL,
  `mod_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_companies`
--

INSERT INTO `ucp_site_companies` (`id`, `name`, `address`, `rec_user`, `rec_date`, `mod_user`, `mod_date`) VALUES
('COMP001', 'PT Unggul Cipta Teknologi', 'Kawasan Modern Cikande', '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_gl_determ`
--

CREATE TABLE `ucp_site_gl_determ` (
  `id` int NOT NULL,
  `sys` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `fiscal_year` int NOT NULL,
  `comp_id` varchar(32) NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) NOT NULL,
  `mod_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_gl_determ`
--

INSERT INTO `ucp_site_gl_determ` (`id`, `sys`, `name`, `fiscal_year`, `comp_id`, `rec_user`, `rec_date`, `mod_user`, `mod_date`) VALUES
(1, '1801010600', 'GL Determination for Budget 2020', 2020, 'COMP-132072', '', NULL, '', NULL),
(2, '1798004772', 'GRPO', 2021, 'COMP-132072', '', NULL, '', NULL),
(3, '1320400321', 'AR Payment', 0, 'PT-AAI', '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_gl_determ_dtl`
--

CREATE TABLE `ucp_site_gl_determ_dtl` (
  `id` int NOT NULL,
  `pid` varchar(32) NOT NULL,
  `coa_grp` varchar(32) NOT NULL,
  `coa_grp_name` varchar(128) NOT NULL,
  `coa_code` varchar(32) NOT NULL,
  `coa_name` varchar(128) NOT NULL,
  `toes` text NOT NULL,
  `coa_grp_acc` varchar(32) NOT NULL,
  `coa_grp_acc_name` varchar(128) NOT NULL,
  `coa_code_acc` varchar(32) NOT NULL,
  `coa_code_acc_name` varchar(128) NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) NOT NULL,
  `mod_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_gl_determ_dtl`
--

INSERT INTO `ucp_site_gl_determ_dtl` (`id`, `pid`, `coa_grp`, `coa_grp_name`, `coa_code`, `coa_name`, `toes`, `coa_grp_acc`, `coa_grp_acc_name`, `coa_code_acc`, `coa_code_acc_name`, `rec_user`, `rec_date`, `mod_user`, `mod_date`) VALUES
(3, '1', '3', 'Cash & Bank', '1-10001', 'Cash', 'To Account =>', '3', 'Accounts Payable (A/P)', '6-60005', 'Doubtful Receivable', '', NULL, '', NULL),
(4, '1', '1', 'Accounts Payable (A/P)', '6-60219', 'Doubtful Receivable', 'To Account =>', '1', 'Cash & Bank', '1-10002', 'Cash', '', NULL, '', NULL),
(5, '2', '1', 'Accounts Payable (A/P)', '6-60103', 'Doubtful Receivable', 'To Account =>', '1', 'Cash & Bank', '1-10001', 'Cash', '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_group`
--

CREATE TABLE `ucp_site_group` (
  `id` varchar(84) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `groupname` varchar(128) NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) NOT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_group`
--

INSERT INTO `ucp_site_group` (`id`, `groupname`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1', 'root', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('552232136', 'yusuf', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('526020602', 'spv', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('682200550', 'demo', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1804178228', 'NOC', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('173525265', 'testinger', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('157205098', 'testing', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('104219003', 'standart', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('122120924', 'resting', 'hasan', '2021-06-29 03:51:35', 'hasan', '2021-07-01 01:14:22', NULL, NULL, NULL, NULL, NULL),
('182924764', 'adminstock', 'yusuf', '2021-07-26 01:51:23', '', NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM03125220', 'demo_import', 'yusuf', '2021-09-02 11:01:58', '', NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM46222372', 'demo_import_admin', 'yusuf', '2021-09-02 14:38:17', '', NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_groupmenu`
--

CREATE TABLE `ucp_site_groupmenu` (
  `id` int NOT NULL,
  `id_group` varchar(24) NOT NULL,
  `id_menu` varchar(24) NOT NULL,
  `rec_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_groupmenu`
--

INSERT INTO `ucp_site_groupmenu` (`id`, `id_group`, `id_menu`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
(1, '1', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1', '2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1', '1.2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '1', '1.1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1', '1.3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '1', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '1', '3.1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(8, '1', '252513033', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(294324062, '1', '012121108', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(112136101, '1', '724146200', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(296621255, '1', '400881112', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(918419722, '1', '419729382', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(820943246, '1', '916672039', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(261175001, '1', '222121401', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(819106275, '1', '520151426', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(612022925, '1', '020812223', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(169369010, '1', '031512120', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(976274171, '1', '621305637', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, '1', '622729901', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(2010, '1', '427150218', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(77736, '1', '624681268', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(421971259, '1', '010115252', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(601352116, '1', '077291992', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(921592810, '1', '111462192', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(302320500, '1', '087224025', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(922537022, '1', '070222007', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(171402272, '1', '025338036', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(201872405, '1', '262800141', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(80421020, '1', '040222032', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(423322717, '1', '498702704', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(938522825, '1', '810092212', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(200229700, '1', '920002167', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(532006351, '1', '018011092', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(512152022, '1', '920002167', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(33062505, '1', '722002315', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(960353212, '1', '607031900', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(640948671, '1', '833001804', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(149007870, '1', '740532040', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(372527180, '1', '142208370', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(26730803, '1', '395555518', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(6537592, '1', '382723327', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(934407072, '1', '400160052', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(402060250, '1', '423535702', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(90272705, '1', '082620020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(775020013, '1', '008364013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(418687500, '1', '032133364', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(451201877, '1', '190702520', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(700002102, '1', '088355420', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(695227481, '1', '128001240', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(157510734, '1', '430275226', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(465005232, '1', '113247033', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(242500775, '1', '571261069', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(27540144, '526020602', '1.2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(200230862, '526020602', '2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(22064040, '526020602', '624681268', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(247022302, '526020602', '010115252', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(229102038, '526020602', '262800141', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(453801925, '526020602', '040222032', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(26224004, '526020602', '498702704', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(868324500, '526020602', '070222007', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(426420555, '526020602', '1.1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(202206276, '526020602', '810092212', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(420020527, '526020602', '018011092', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(221023024, '526020602', '722002315', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(840004043, '1', '820206232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(342224450, '526020602', '820206232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(204094080, '526020602', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(549048000, '526020602', '031512120', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(720023824, '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(132042024, '682200550', '1.2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(804746020, '1', '029361942', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(600852470, '526020602', '029361942', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(248404132, '526020602', '419729382', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(72735800, '526020602', '916672039', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(206069772, '1', '000360967', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(229540, '526020602', '000360967', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(701595320, '1', '488009820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(6112282, '526020602', '488009820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1289013200, '1804178228', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1822102338, '1804178228', '1.2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1110520689, '1804178228', '1.1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1504829484, '1804178228', '820206232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1549066432, '1804178228', '2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1950880121, '1804178228', '624681268', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1872130028, '1804178228', '488009820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1800205480, '1804178228', '070222007', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1079200300, '1804178228', '427150218', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1661101530, '1804178228', '000360967', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1086229022, '1', '1506751256', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1078600845, '1', '1211296967', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1729720580, '1', '1389372099', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1600262152, '1', '1020200872', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1523200682, '1', '1900781949', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1233025022, '1', '1201205298', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1942589385, '1', '1094206509', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1405247520, '1', '1092159056', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1185979205, '1', '1011210450', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1282380656, '1', '1522405282', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1224825953, '1', '1237072400', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1202655640, '1', '1092900521', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1620070404, '1', '1086202243', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1185160442, '1', '1525013122', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1526002026, '1', '1950968384', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1850061022, '1', '1629200900', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1016991847, '1', '1646382928', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1038077518, '1', '1222596426', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1123006861, '1', '1064866168', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1250004963, '1', '1473270202', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1635760810, '1', '1990270008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1011020006, '1', '1270713982', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1702210390, '1', '1220872807', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1034307209, '1', '1700902170', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1382079385, '1', '1828765051', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1290077081, '1', '1032798567', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1007220720, '1', '1209658010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1146070097, '1', '1903289388', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1809083040, '1', '1299722046', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226941, '1', '1940610074', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1160926824, '1', '1900929278', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1201100199, '1', '1399109618', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1410618602, '1', '1007930060', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1179046029, '1', '1542982273', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1846029790, '1', '1817651637', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1190347025, '1', '1789180360', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1000097736, '1', '1798004772', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1222201738, '1', '1902293220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1562038055, '1', '1229040213', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1021001090, '1', '1801010600', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1922102090, '1', '1276423232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1275224204, '1', '1003203820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1725242820, '1', '1212025206', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1102756005, '1', '1780969006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1060220220, '1', '1112221057', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1517980529, '1', '1339381993', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1602102590, '1', '1922716102', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1793722232, '1', '1988236229', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1228016090, '1', '1056724802', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1010000779, '1', '1160123132', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1664202612, '1', '1090016263', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1107180806, '1', '1182922297', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1129102495, '1', '1681263923', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1320008203, '1', '1322354233', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1036018301, '1', '1694330011', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1002011160, '1', '1091014021', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1023222838, '1', '1112001241', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1449521402, '1', '1630393829', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1122044314, '1', '1204192860', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1011014645, '1', '1002127570', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1100077326, '1', '1091320050', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1221107500, '1', '1151371309', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1110132150, '1', '1011280009', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1910822910, '1', '1229062611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1032078415, '1', '1112901615', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1760108112, '1', '1503216004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1512925100, '1', '1317980233', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1222272367, '1', '1203307731', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1101765169, '1', '1951078623', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1022111612, '1', '1084321020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1193320281, '1', '1291632131', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1822327440, '1', '1201100171', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1041911001, '1', '1743101210', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1283063693, '1', '1550904321', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1117026027, '1', '1300323118', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1628019051, '1', '1830009932', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1321457611, '1', '1502241281', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1047844116, '1', '1132292100', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1210758910, '1', '1082626812', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1509341006, '1', '1320400321', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1092492292, '1', '1034030927', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1497121081, '1', '1034030927', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1342211202, '1', '1820634120', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1017250168, '1', '1334105129', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1191169238, '1', '1621184252', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1157390930, '1', '1903503202', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1322748214, '1', '1558412299', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1248229297, '1', '1225150220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1000102297, '1', '1622834010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1801730108, '1', '1011200131', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1334101020, '1', '1200929810', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1110610677, '1', '1514110902', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1602091410, '1', '1062162008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1011292271, '1', '1220851008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1221012408, '1', '1152203927', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1012222311, '1', '1080265122', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1000158929, '1', '1821254227', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1106715151, '1', '1082533109', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1122810005, '1', '1810310355', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1281155102, '1', '1207956236', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1007615111, '1', '1230894011', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1312600610, '1', '1320400321', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1702028049, '1', '1508502610', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1147927190, '1', '1726720036', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1700242224, '1', '1241257122', 'hasan', '2021-06-22 01:19:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1204041102, '1', '1222120622', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1270052716, '1', '1563542143', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1272939041, '1', '1028126222', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1250927411, '682200550', '1.1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1121520296, '682200550', '1810310355', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1351262025, '682200550', '820206232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1222222802, '682200550', '1230894011', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1298282020, '682200550', '1563542143', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1121321310, '682200550', '1622834010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1100382423, '682200550', '1225150220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1012227022, '682200550', '1558412299', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226942, '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226943, '682200550', '2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226944, '682200550', '1.2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226945, '682200550', '1.1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226946, '682200550', '1.3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226947, '682200550', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226948, '682200550', '3.1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226949, '682200550', '252513033', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226950, '682200550', '012121108', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226951, '682200550', '724146200', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226952, '682200550', '400881112', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226953, '682200550', '419729382', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226954, '682200550', '916672039', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226955, '682200550', '222121401', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226956, '682200550', '520151426', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226957, '682200550', '020812223', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226958, '682200550', '031512120', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226959, '682200550', '621305637', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226960, '682200550', '622729901', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226961, '682200550', '427150218', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226962, '682200550', '624681268', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226963, '682200550', '010115252', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226964, '682200550', '077291992', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226965, '682200550', '111462192', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226966, '682200550', '087224025', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226967, '682200550', '070222007', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226968, '682200550', '025338036', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226969, '682200550', '262800141', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226970, '682200550', '040222032', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226971, '682200550', '498702704', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226972, '682200550', '810092212', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226973, '682200550', '920002167', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226974, '682200550', '018011092', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226975, '682200550', '920002167', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226976, '682200550', '722002315', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226977, '682200550', '607031900', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226978, '682200550', '833001804', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226979, '682200550', '740532040', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226980, '682200550', '142208370', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226981, '682200550', '395555518', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226982, '682200550', '382723327', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226983, '682200550', '400160052', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226984, '682200550', '423535702', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226985, '682200550', '082620020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226986, '682200550', '008364013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226987, '682200550', '032133364', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226988, '682200550', '190702520', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226989, '682200550', '088355420', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226990, '682200550', '128001240', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226991, '682200550', '430275226', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226992, '682200550', '113247033', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226993, '682200550', '571261069', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226994, '682200550', '820206232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226995, '682200550', '029361942', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226996, '682200550', '000360967', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226997, '682200550', '488009820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226998, '682200550', '1506751256', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996226999, '682200550', '1211296967', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1680127253, '1', '1227220222', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227001, '682200550', '1020200872', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227002, '682200550', '1900781949', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227003, '682200550', '1201205298', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227004, '682200550', '1094206509', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227005, '682200550', '1092159056', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227006, '682200550', '1011210450', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227007, '682200550', '1522405282', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227008, '682200550', '1237072400', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227009, '682200550', '1092900521', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227010, '682200550', '1086202243', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227011, '682200550', '1525013122', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227012, '682200550', '1950968384', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227013, '682200550', '1629200900', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227014, '682200550', '1646382928', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227015, '682200550', '1222596426', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227016, '682200550', '1064866168', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227017, '682200550', '1473270202', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227018, '682200550', '1990270008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227019, '682200550', '1270713982', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227020, '682200550', '1220872807', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227021, '682200550', '1700902170', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227022, '682200550', '1828765051', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227023, '682200550', '1032798567', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227024, '682200550', '1209658010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227025, '682200550', '1903289388', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227026, '682200550', '1299722046', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227027, '682200550', '1940610074', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227028, '682200550', '1900929278', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227029, '682200550', '1399109618', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227030, '682200550', '1007930060', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227031, '682200550', '1542982273', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227032, '682200550', '1817651637', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227033, '682200550', '1789180360', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227034, '682200550', '1798004772', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227035, '682200550', '1902293220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227036, '682200550', '1229040213', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227037, '682200550', '1801010600', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1621204416, '1', '1681206051', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227039, '682200550', '1003203820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227041, '682200550', '1212025206', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227042, '682200550', '1780969006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227043, '682200550', '1112221057', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227044, '682200550', '1339381993', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227045, '682200550', '1922716102', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227046, '682200550', '1988236229', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227047, '682200550', '1056724802', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227048, '682200550', '1160123132', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227049, '682200550', '1090016263', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227050, '682200550', '1182922297', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227051, '682200550', '1681263923', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227052, '682200550', '1322354233', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227053, '682200550', '1694330011', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227054, '682200550', '1091014021', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227055, '682200550', '1112001241', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227056, '682200550', '1630393829', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227057, '682200550', '1204192860', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227058, '682200550', '1002127570', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227059, '682200550', '1091320050', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227060, '682200550', '1151371309', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227061, '682200550', '1011280009', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227062, '682200550', '1229062611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227063, '682200550', '1112901615', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227064, '682200550', '1503216004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227065, '682200550', '1317980233', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227066, '682200550', '1203307731', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227067, '682200550', '1951078623', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227068, '682200550', '1084321020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227069, '682200550', '1291632131', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227070, '682200550', '1201100171', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227071, '682200550', '1743101210', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227072, '682200550', '1550904321', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227073, '682200550', '1300323118', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227074, '682200550', '1830009932', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227075, '682200550', '1502241281', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227076, '682200550', '1132292100', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1998147029, '157205098', '1302144621', 'demo', '2021-07-09 02:07:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1996227078, '682200550', '1320400321', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227079, '682200550', '1034030927', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227080, '682200550', '1034030927', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227081, '682200550', '1820634120', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227082, '682200550', '1334105129', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227083, '682200550', '1621184252', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227084, '682200550', '1212522267', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227086, '682200550', '1712630250', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227087, '682200550', '1558412299', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227088, '682200550', '1225150220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227089, '682200550', '1622834010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227090, '682200550', '1011200131', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227091, '682200550', '1200929810', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227092, '682200550', '1514110902', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227093, '682200550', '1062162008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227094, '682200550', '1220851008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227095, '682200550', '1152203927', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227096, '682200550', '1080265122', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227097, '682200550', '1821254227', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227098, '682200550', '1082533109', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227099, '682200550', '1810310355', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227100, '682200550', '1207956236', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227101, '682200550', '1230894011', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227103, '682200550', '1508502610', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227104, '682200550', '1726720036', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1230020055, '1', '1312566230', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227106, '682200550', '1059840729', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227107, '682200550', '1222120622', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227108, '682200550', '1563542143', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1996227109, '682200550', '1028126222', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1247212210, '1', '1082288248', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1240068220, '1', '1120380157', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1902130923, '1', '1533440104', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1007826209, '1', '1428615513', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1026155190, '1', '1102550466', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1850008665, '1', '1822562611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1862878183, '157205098', '1.2', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1001066706, '157205098', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1652000386, '157205098', '1.3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1442281906, '157205098', '3.1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1624206114, '157205098', '252513033', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1241327604, '157205098', '012121108', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1430261688, '157205098', '724146200', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1340012278, '157205098', '400881112', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1331047383, '157205098', '571261069', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1761018018, '157205098', '419729382', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1416000366, '157205098', '1503216004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1170405592, '157205098', '1222596426', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1702508008, '157205098', '1222596426', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1240040820, '157205098', '1112901615', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1006600280, '157205098', '1533440104', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1052064284, '157205098', '1094206509', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1233567096, '157205098', '1112001241', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1486020261, '157205098', '1542982273', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1812421071, '157205098', '1204192860', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1398100227, '157205098', '1102550466', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1830222569, '157205098', '423535702', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1022218066, '157205098', '1090016263', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1640260004, '157205098', '1506751256', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1971400207, '157205098', '1270713982', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1007428608, '157205098', '020812223', 'ikhsan', '2021-06-08 04:11:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1016819180, '157205098', '1903289388', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1870715250, '104219003', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1062606110, '104219003', '820206232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(1217158801, '157205098', '1032798567', 'ikhsan', '2021-06-08 04:06:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1529008062, '157205098', '1299722046', 'ikhsan', '2021-06-08 04:13:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1179900875, '157205098', '1220851008', 'demo', '2021-07-09 02:06:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1418092328, '157205098', '1922716102', 'ikhsan', '2021-06-08 06:50:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1049002186, '1', '1600010405', 'hasan', '2021-06-09 01:48:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1661203071, '1', '1966025437', 'hasan', '2021-06-09 02:12:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1071543312, '1', '1101536603', 'hasan', '2021-06-12 01:59:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1101404101, '1', '1302423050', 'hasan', '2021-06-12 05:29:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1221060907, '1', '1459214500', 'hasan', '2021-06-14 01:09:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1204222264, '1', '1729578900', 'hasan', '2021-07-02 06:14:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1505812801, '1', '1620860541', 'hasan', '2021-06-14 06:52:26', 'hasan', '2021-06-14 06:53:07', NULL, NULL, NULL, NULL, NULL),
(1751247467, '1', '1626022123', 'hasan', '2021-06-17 04:31:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1272200863, '157205098', '1600010405', 'ikhsan', '2021-06-18 07:11:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1139461786, '157205098', '1101536603', 'demo', '2021-06-19 02:30:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1282111190, '157205098', '1620860541', 'demo', '2021-06-19 02:32:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1206026302, '157205098', '1459214500', 'demo', '2021-06-19 02:33:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1260018446, '157205098', '1011200131', 'demo', '2021-06-19 02:35:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1518862186, '157205098', '1822562611', 'demo', '2021-06-19 04:16:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1173012735, '157205098', '1200929810', 'demo', '2021-06-19 02:36:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1610023021, '157205098', '1626022123', 'demo', '2021-06-19 02:38:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1460589094, '157205098', '1903503202', 'demo', '2021-06-19 02:45:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1661140126, '1', '1302144621', 'hasan', '2021-06-23 02:22:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1076172212, '1', '1252557874', 'hasan', '2021-06-25 03:48:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1027665576, '1', '1151006494', 'hasan', '2021-06-25 06:01:20', 'hasan', '2021-06-25 06:11:23', NULL, NULL, NULL, NULL, NULL),
(1066299212, '1', '1568120642', 'hasan', '2021-06-26 01:29:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1260500658, '1', '1212292632', 'hasan', '2021-06-26 05:25:54', 'hasan', '2021-06-26 05:26:10', NULL, NULL, NULL, NULL, NULL),
(1100611646, '1', '1116741220', 'hasan', '2021-06-28 02:36:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1223008609, '1', '1402200260', 'hasan', '2021-06-28 04:10:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1522232033, '1', '1972102008', 'hasan', '2021-07-03 04:19:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1192151323, '1', '1722351025', 'hasan', '2021-07-05 03:01:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1602121807, '157205098', '1568120642', 'demo', '2021-07-09 02:13:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1677856070, '157205098', '1729578900', 'demo', '2021-07-09 02:15:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1079380044, '157205098', '1496082190', 'demo', '2021-07-09 02:21:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1772920200, '1', '1380000254', 'hasan', '2021-07-09 03:25:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1110171573, '157205098', '1212292632', 'demo', '2021-07-13 01:39:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1728141022, '682200550', '1972102008', 'demo', '2021-07-13 01:55:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1060872120, '1', '1267250352', 'yusuf', '2021-07-13 04:36:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1718246200, '157205098', '1972102008', 'demo', '2021-07-13 02:02:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1911308163, '157205098', '1380000254', 'demo', '2021-07-13 02:03:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1202692212, '1', '1951078623', 'yusuf', '2021-07-14 02:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1910009110, '1', '1190512700', 'yusuf', '2021-07-14 03:01:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1182138405, '1', '1372139049', 'yusuf', '2021-07-14 06:38:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1752026714, '1', '1623203136', 'yusuf', '2021-07-16 02:18:28', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1121266816, '1', '1439502726', 'yusuf', '2021-07-16 07:57:35', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1642701549, '182924764', '1101536603', 'yusuf', '2021-07-26 01:51:49', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1162200000, '182924764', '1496082190', 'yusuf', '2021-07-26 01:52:14', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1578552260, '182924764', '1200929810', 'yusuf', '2021-07-26 01:52:26', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1572314062, '182924764', '1972102008', 'yusuf', '2021-07-26 01:52:38', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1201221112, '182924764', '1212292632', 'yusuf', '2021-07-26 01:53:07', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1494616150, '182924764', '1', 'yusuf', '2021-07-26 01:53:33', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1322025701, '182924764', '1.2', 'yusuf', '2021-07-26 01:53:42', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1024463444, '182924764', '1011200131', 'yusuf', '2021-07-26 01:54:06', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1112261610, '182924764', '1459214500', 'yusuf', '2021-07-26 01:54:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1607365620, '182924764', '419729382', 'yusuf', '2021-07-26 01:54:51', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1907978018, '182924764', '1568120642', 'yusuf', '2021-07-26 01:55:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1820922200, '182924764', '1903503202', 'yusuf', '2021-07-26 01:55:24', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1769769322, '182924764', '1439502726', 'yusuf', '2021-07-26 01:55:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1600235073, '182924764', '1729578900', 'yusuf', '2021-07-26 01:56:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1217881228, '182924764', '020812223', 'yusuf', '2021-07-26 01:56:27', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1075109184, '182924764', '1204192860', 'yusuf', '2021-07-26 01:56:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1121420498, '182924764', '1302423050', 'yusuf', '2021-07-26 01:57:09', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1202240502, '182924764', '1094206509', 'yusuf', '2021-07-26 01:57:27', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1113010012, '182924764', '820206232', 'yusuf', '2021-07-26 01:58:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1286157208, '182924764', '1620860541', 'yusuf', '2021-07-26 01:58:57', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1222677577, '182924764', '1542982273', 'yusuf', '2021-07-26 01:59:25', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1066604243, '182924764', '1220851008', 'yusuf', '2021-07-26 01:59:51', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1372007013, '182924764', '1112001241', 'yusuf', '2021-07-26 02:00:10', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1224466327, '182924764', '1222596426', 'yusuf', '2021-07-26 02:00:22', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1952177682, '182924764', '1302144621', 'yusuf', '2021-07-26 02:00:59', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1755161872, '182924764', '1299722046', 'yusuf', '2021-07-26 02:01:21', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1021602329, '182924764', '1503216004', 'yusuf', '2021-07-26 02:07:12', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1014326247, '182924764', '1626022123', 'yusuf', '2021-07-26 03:25:21', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1208712139, '182924764', '571261069', 'yusuf', '2021-07-26 03:55:03', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1207725037, '1', '1125272122', 'yusuf', '2021-07-27 06:13:24', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1007881332, '1', '1170823378', 'yusuf', '2021-07-28 03:53:01', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1023914327, '1', '1035323122', 'yusuf', '2021-07-30 01:44:59', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1240100111, '1', '1339245044', 'yusuf', '2021-07-31 01:06:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1071800010, '1', '1777037392', 'yusuf', '2021-08-07 00:53:24', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1366080412, '1', '1221760037', 'yusuf', '2021-08-12 03:50:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1222130205, '1', '1132288161', 'yusuf', '2021-08-12 06:20:17', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1073370089, '182924764', '1777037392', 'yusuf', '2021-08-13 02:27:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147030, '1', 'MM729103708', 'yusuf', '2021-08-19 07:59:01', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147031, '182924764', 'MM729103708', 'yusuf', '2021-08-19 08:00:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147032, '1', 'MM111108913', 'yusuf', '2021-08-19 08:19:37', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147033, '1', 'MM103640708', 'yusuf', '2021-08-20 08:26:02', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147034, '182924764', 'MM103640708', 'yusuf', '2021-08-21 08:26:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147035, '182924764', '1508502610', 'yusuf', '2021-08-23 11:05:22', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147036, '182924764', '1125272122', 'yusuf', '2021-08-23 11:49:04', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147037, 'GM03125220', '1.2', 'yusuf', '2021-09-02 11:02:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147038, 'GM03125220', '1.1', 'yusuf', '2021-09-02 11:02:58', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147039, 'GM03125220', '820206232', 'yusuf', '2021-09-02 11:03:12', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147040, 'GM03125220', '1011200131', 'yusuf', '2021-09-02 11:03:39', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147041, 'GM03125220', 'MM216022020', 'yusuf', '2021-09-02 11:03:53', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147042, 'GM03125220', '1', 'yusuf', '2021-09-02 11:27:28', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147043, 'GM03125220', '419729382', 'yusuf', '2021-09-02 11:56:34', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147044, 'GM03125220', '1542982273', 'yusuf', '2021-09-02 11:56:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147045, 'GM03125220', '1112001241', 'yusuf', '2021-09-02 11:57:35', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147046, 'GM03125220', 'MM220149140', 'yusuf', '2021-09-02 12:59:46', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147062, 'GM46222372', '1.3', 'yusuf', '2021-09-02 15:40:14', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147049, 'GM46222372', '1', 'yusuf', '2021-09-02 14:38:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147050, 'GM46222372', '1.1', 'yusuf', '2021-09-02 14:39:45', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147051, 'GM46222372', '820206232', 'yusuf', '2021-09-02 14:39:57', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147052, 'GM46222372', '1011200131', 'yusuf', '2021-09-02 14:40:11', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147053, 'GM46222372', 'MM216022020', 'yusuf', '2021-09-02 14:41:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147054, 'GM46222372', 'MM004612709', 'yusuf', '2021-09-02 14:41:43', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147055, 'GM46222372', 'MM220149140', 'yusuf', '2021-09-02 14:42:11', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147056, 'GM46222372', 'MM105010722', 'yusuf', '2021-09-02 14:42:52', 'yusuf', '2021-09-02 14:43:06', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147057, 'GM46222372', '3', 'yusuf', '2021-09-02 14:43:26', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147058, 'GM46222372', '252513033', 'yusuf', '2021-09-02 14:43:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147059, 'GM46222372', '419729382', 'yusuf', '2021-09-02 14:48:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147060, 'GM46222372', '1112001241', 'yusuf', '2021-09-02 14:49:07', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
(1998147061, 'GM46222372', '1542982273', 'yusuf', '2021-09-02 14:49:25', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_groupmenu_bak`
--

CREATE TABLE `ucp_site_groupmenu_bak` (
  `id` int NOT NULL,
  `id_group` varchar(24) NOT NULL,
  `id_menu` varchar(24) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_header_set`
--

CREATE TABLE `ucp_site_header_set` (
  `id` varchar(32) NOT NULL,
  `module` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `userid` varchar(32) NOT NULL,
  `header` varchar(32) NOT NULL,
  `label` varchar(32) NOT NULL,
  `action` varchar(32) NOT NULL,
  `rec_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `ord` int DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ucp_site_header_set`
--

INSERT INTO `ucp_site_header_set` (`id`, `module`, `table_name`, `userid`, `header`, `label`, `action`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `ord`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1002011920', 'User_Manager', 'ucp_site_users', 'demo', 'password', 'password', 'SHOW', 'demo', '2021-06-19 04:16:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1007131112', 'Trs_Storage', 'trs_storaging', 'hasan', 'operator', 'operator', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL),
('1010001600', 'Master_Item', 'mst_itm_mat', 'hasan', 'division', 'division', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL),
('1011310012', 'Trs_Storage', 'trs_storaging', 'demo', 'inv_managed', 'number', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL),
('1022110931', 'Trs_Storage', 'trs_storaging', 'demo', 'wh_name', 'wh_name', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL),
('1022405273', 'Trs_Pick', 'trs_picking', 'hasan', 'id', 'id', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('1024316082', 'Trs_Grpo_sif', 'trs_gr', 'hasan', 'ship_name', 'ship_name', 'SHOW', 'hasan', '2021-06-14 07:46:24', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
('1027010045', 'Trs_Storage', 'trs_storaging', 'hasan', 'wh_path', 'wh_path', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL),
('1027022225', 'Trs_Pick', 'trs_picking', 'hasan', 'wh_loc_name', 'wh_loc_name', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL),
('1028124275', 'Master_Item', 'mst_itm_mat', 'yusuf', 'itm_group', 'itm_group', 'SHOW', 'yusuf', '2021-07-26 03:40:22', NULL, NULL, 7, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1029472590', 'Trs_Storage', 'trs_storaging', 'demo', 'asset_code', 'asset_code', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL),
('1053211629', 'Trs_Storage', 'trs_storaging', 'demo', 'pid', 'pid', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
('1059526482', 'User_Manager', 'ucp_site_users', 'hasan', 'posisiton_code', 'position code', 'SHOW', 'hasan', '2021-06-09 06:44:47', 'hasan', '2021-06-09 07:17:16', 5, NULL, NULL, NULL, NULL, NULL),
('1060041012', 'Master_Item', 'mst_itm_mat', 'hasan', 'uom', 'uom', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
('1069209260', 'Trs_Grpo', 'trs_gr', 'hasan', 'id', 'id', 'SHOW', 'hasan', '2021-06-09 04:30:55', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('1069986652', 'Trs_Storage', 'trs_storaging', 'demo', 'operator', 'operator', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL),
('1070040070', 'User_Manager', 'ucp_site_users', 'hasan', 'userid', 'userid', 'SHOW', 'hasan', '2021-06-09 06:44:47', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('1078302290', 'User_Manager', 'ucp_site_users', 'hasan', 'password', 'password', 'HIDE', 'hasan', '2021-06-09 06:44:47', 'hasan', '2021-06-17 08:40:48', 4, NULL, NULL, NULL, NULL, NULL),
('1079882267', 'Trs_Inventory_Dtl', 'trs_inventory_dtl', 'yusuf', 'itm_code', 'itm_code', 'SHOW', 'yusuf', '2021-07-31 01:12:38', NULL, NULL, 3, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1082000310', 'Master_Item', 'mst_itm_mat', 'yusuf', 'item_group_name', 'item_group_name', 'SHOW', 'yusuf', '2021-07-26 03:40:22', NULL, NULL, 8, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1091210001', 'Trs_Storage', 'trs_storaging', 'hasan', 'pid', 'pid', 'HIDE', 'hasan', '2021-06-17 02:34:52', 'hasan', '2021-06-17 02:35:09', 2, NULL, NULL, NULL, NULL, NULL),
('1096291328', 'Master_Item', 'mst_itm_mat', 'hasan', 'item_group_name', 'item_group_name', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL),
('1102500098', 'User_Manager', 'ucp_site_users', 'demo', 'userid', 'userid', 'SHOW', 'demo', '2021-06-19 04:16:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1104718322', 'Trs_Delivery_Order', 'trs_do', 'hasan', 'vendor', 'vendor', 'SHOW', 'hasan', '2021-06-11 05:59:15', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL),
('1119232022', 'Trs_Grpo', 'trs_gr', 'hasan', 'date', 'date', 'SHOW', 'hasan', '2021-06-09 04:30:55', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('1126031370', 'Trs_Inventory_Dtl', 'trs_inventory_dtl', 'yusuf', 'id', 'id', 'SHOW', 'yusuf', '2021-07-31 01:12:38', NULL, NULL, 1, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1130004514', 'Trs_Storage', 'trs_storaging', 'hasan', 'asset_grp_name', 'asset_grp_name', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL),
('1133103221', 'Trs_Storage', 'trs_storaging', 'hasan', 'wh_code', 'wh_code', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL),
('1142510641', 'Trs_Delivery_Order', 'trs_do', 'hasan', 'date', 'date', 'SHOW', 'hasan', '2021-06-11 05:59:15', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
('1142732901', 'Menu_Manager', 'ucp_site_menu', 'hasan', 'name', 'name', 'SHOW', 'hasan', '2021-06-22 07:40:40', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
('1160806218', 'Trs_Grpo', 'trs_gr', 'hasan', 'docnum', 'docnum', 'SHOW', 'hasan', '2021-06-09 04:30:55', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('1169122460', 'Trs_Storage', 'trs_storaging', 'hasan', 'asset_grp', 'asset_grp', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL),
('1169182014', 'Trs_Grpo_sif', 'trs_gr', 'hasan', 'id', 'id', 'SHOW', 'hasan', '2021-06-14 07:46:24', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('1180238240', 'Master_Item', 'mst_itm_mat', 'hasan', 'itm_group', 'itm_group', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL),
('1180972036', 'Master_Item', 'mst_itm_mat', 'yusuf', 'id', 'id', 'SHOW', 'yusuf', '2021-07-26 03:40:22', 'yusuf', '2021-07-26 03:40:29', 1, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1181019197', 'Trs_Storage', 'trs_storaging', 'hasan', 'wh_loc_name', 'wh_loc_name', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL),
('1192162122', 'Trs_Storage', 'trs_storaging', 'demo', 'department_name', 'department_name', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL),
('1192282080', 'Trs_Grpo', 'trs_gr', 'hasan', 'vendor', 'vendor', 'SHOW', 'hasan', '2021-06-09 04:30:55', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('1200434277', 'Trs_Storage', 'trs_storaging', 'hasan', 'inv_managed', 'number', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL),
('1202026020', 'Menu_Manager', 'ucp_site_menu', 'hasan', 'icon', 'icon', 'SHOW', 'hasan', '2021-06-22 07:40:40', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL),
('1202328117', 'Trs_Pick', 'trs_picking', 'hasan', 'module', 'module', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
('1209191021', 'Trs_Grpo', 'trs_gr', 'hasan', 'total_due', 'total_due', 'SHOW', 'hasan', '2021-06-09 04:30:55', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('1209212210', 'Trs_Storage', 'trs_storaging', 'demo', 'wh_path', 'wh_path', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL),
('1211233218', 'Trs_Storage', 'trs_storaging', 'demo', 'wh_loc', 'wh_loc', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL),
('1214086229', 'Master_Item', 'mst_itm_mat', 'hasan', 'itm_type', 'itm_type', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL),
('1218108162', 'Master_Item', 'mst_itm_mat', 'hasan', 'id', 'id', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('1220622952', 'Trs_Pick', 'trs_picking', 'hasan', 'inv_managed_by', 'inv_managed_by', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
('1223090011', 'Trs_Storage', 'trs_storaging', 'hasan', 'id', 'id', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('1225221202', 'Trs_Pick', 'trs_picking', 'hasan', 'asset_name', 'asset_name', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL),
('1226059126', 'Trs_Storage', 'trs_storaging', 'hasan', 'wh_loc', 'wh_loc', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL),
('1226120282', 'Master_Item', 'mst_itm_mat', 'yusuf', 'division_name', 'division_name', 'SHOW', 'yusuf', '2021-07-26 03:40:22', 'yusuf', '2021-07-26 03:41:51', 10, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1252291002', 'Master_Item', 'mst_itm_mat', 'yusuf', 'itm_code', 'itm_code', 'SHOW', 'yusuf', '2021-07-26 03:40:22', NULL, NULL, 2, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1271791726', 'Master_Item', 'mst_itm_mat', 'yusuf', 'name', 'name', 'SHOW', 'yusuf', '2021-07-26 03:40:22', NULL, NULL, 3, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1275280526', 'Trs_Storage', 'trs_storaging', 'hasan', 'department_name', 'department_name', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL),
('1282157621', 'Master_Item', 'mst_itm_mat', 'yusuf', 'itm_type', 'itm_type', 'SHOW', 'yusuf', '2021-07-26 03:40:22', NULL, NULL, 6, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1282328128', 'Trs_Inventory_Dtl', 'trs_inventory_dtl', 'yusuf', 'pid', 'pid', 'SHOW', 'yusuf', '2021-07-31 01:12:38', NULL, NULL, 2, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1286001592', 'Menu_Manager', 'ucp_site_menu', 'hasan', 'description', 'description', 'SHOW', 'hasan', '2021-06-22 07:40:40', 'hasan', '2021-06-22 07:41:09', 3, NULL, NULL, NULL, NULL, NULL),
('1296490423', 'User_Manager', 'ucp_site_users', 'hasan', 'username', 'username', 'SHOW', 'hasan', '2021-06-09 06:44:47', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
('1302221890', 'Trs_Storage', 'trs_storaging', 'hasan', 'module', 'module', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
('1302852518', 'Trs_Storage', 'trs_storaging', 'demo', 'wh_loc_name', 'wh_loc_name', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL),
('1309219264', 'Trs_Pick', 'trs_picking', 'hasan', 'inv_managed', 'number', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL),
('1317232551', 'Trs_Inventory_Dtl', 'trs_inventory_dtl', 'yusuf', 'itm_name', 'itm_name', 'SHOW', 'yusuf', '2021-07-31 01:12:38', NULL, NULL, 5, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1322969130', 'Menu_Manager', 'ucp_site_menu', 'hasan', 'type', 'tipe', 'SHOW', 'hasan', '2021-06-22 07:40:40', 'hasan', '2021-06-22 07:43:53', 6, NULL, NULL, NULL, NULL, NULL),
('1365573656', 'Trs_Pick', 'trs_picking', 'hasan', 'asset_grp', 'asset_grp', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL),
('1370679104', 'Master_Item', 'mst_itm_mat', 'yusuf', 'uom_vol', 'uom_vol', 'SHOW', 'yusuf', '2021-07-26 03:40:22', NULL, NULL, 5, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1371187552', 'User_Manager', 'ucp_site_users', 'demo', 'username', 'username', 'SHOW', 'demo', '2021-06-19 04:16:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1390213433', 'Trs_Grpo_sif', 'trs_gr', 'hasan', 'vendor_name', 'vendor_name', 'SHOW', 'hasan', '2021-06-14 07:46:24', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
('1405458610', 'Master_Item', 'mst_itm_mat', 'hasan', 'name', 'name', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
('1411721712', 'Trs_Storage', 'trs_storaging', 'hasan', 'inv_managed_by', 'inv_managed_by', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
('1422201446', 'Trs_Grpo_sif', 'trs_gr', 'hasan', 'is_posting', 'is_posting', 'SHOW', 'hasan', '2021-06-14 07:46:24', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL),
('1454062016', 'Trs_Pick', 'trs_picking', 'hasan', 'asset_code', 'asset_code', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL),
('1463223552', 'Trs_Pick', 'trs_picking', 'hasan', 'operator', 'operator', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL),
('1470118161', 'Trs_Storage', 'trs_storaging', 'hasan', 'wh_name', 'wh_name', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL),
('1514192730', 'Trs_Storage', 'trs_storaging', 'demo', 'asset_grp_name', 'asset_grp_name', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL),
('1515221119', 'Trs_Delivery_Order', 'trs_do', 'hasan', 'due_date', 'due_date', 'SHOW', 'hasan', '2021-06-11 05:59:15', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL),
('1521625422', 'Trs_Delivery_Order', 'trs_do', 'hasan', 'comp_id', 'comp_id', 'SHOW', 'hasan', '2021-06-11 05:59:15', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL),
('1561196166', 'Trs_Pick', 'trs_picking', 'hasan', 'department_name', 'department_name', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL),
('1600076247', 'Master_Item', 'mst_itm_mat', 'hasan', 'uom_vol', 'uom_vol', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL),
('1602233222', 'Master_Item', 'mst_itm_mat', 'yusuf', 'division', 'division', 'SHOW', 'yusuf', '2021-07-26 03:40:22', NULL, NULL, 9, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1614604111', 'Trs_Grpo', 'trs_gr', 'hasan', 'remark', 'remark', 'SHOW', 'hasan', '2021-06-09 04:30:55', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('1616206590', 'Trs_Delivery_Order', 'trs_do', 'hasan', 'remark', 'remark', 'SHOW', 'hasan', '2021-06-11 05:59:15', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
('1622292240', 'Menu_Manager', 'ucp_site_menu', 'hasan', 'urutan', 'urutan', 'SHOW', 'hasan', '2021-06-22 07:40:40', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL),
('1662326692', 'Master_Item', 'mst_itm_mat', 'yusuf', 'uom', 'uom', 'SHOW', 'yusuf', '2021-07-26 03:40:22', NULL, NULL, 4, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1686131220', 'Trs_Storage', 'trs_storaging', 'demo', 'id', 'id', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('1722600563', 'Trs_Pick', 'trs_picking', 'hasan', 'wh_name', 'wh_name', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL),
('1728367082', 'User_Manager', 'ucp_site_users', 'hasan', 'email', 'email', 'SHOW', 'hasan', '2021-06-09 06:44:47', 'hasan', '2021-06-17 07:37:44', 3, NULL, NULL, NULL, NULL, NULL),
('1730706126', 'Trs_Storage', 'trs_storaging', 'hasan', 'asset_code', 'asset_code', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL),
('1732622100', 'Master_Item', 'mst_itm_mat', 'hasan', 'itm_code', 'itm_code', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
('1736487124', 'Trs_Delivery_Order', 'trs_do', 'hasan', 'total_due', 'total_due', 'SHOW', 'hasan', '2021-06-11 05:59:15', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL),
('1741676682', 'Trs_Delivery_Order', 'trs_do', 'hasan', 'docnum', 'docnum', 'SHOW', 'hasan', '2021-06-11 05:59:15', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
('1759405012', 'Trs_Storage', 'trs_storaging', 'demo', 'asset_grp', 'asset_grp', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL),
('1785131211', 'Trs_Pick', 'trs_picking', 'hasan', 'wh_path', 'wh_path', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL),
('1796266168', 'Trs_Grpo', 'trs_gr', 'hasan', 'due_date', 'due_date', 'HIDE', 'hasan', '2021-06-09 04:30:55', 'hasan', '2021-06-09 04:31:38', 0, NULL, NULL, NULL, NULL, NULL),
('1800931164', 'Trs_Pick', 'trs_picking', 'hasan', 'docnum', 'docnum', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
('1820286435', 'Master_Item', 'mst_itm_mat', 'hasan', 'division_name', 'division_name', 'SHOW', 'hasan', '2021-06-24 06:22:57', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL),
('1821320268', 'Trs_Storage', 'trs_storaging', 'demo', 'wh_code', 'wh_code', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL),
('1826404252', 'Trs_Pick', 'trs_picking', 'hasan', 'asset_grp_name', 'asset_grp_name', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL),
('1827912464', 'Trs_Storage', 'trs_storaging', 'demo', 'inv_managed_by', 'inv_managed_by', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
('1861568130', 'Menu_Manager', 'ucp_site_menu', 'hasan', 'id', 'id', 'SHOW', 'hasan', '2021-06-22 07:40:40', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('1887122015', 'Trs_Storage', 'trs_storaging', 'hasan', 'asset_name', 'asset_name', 'SHOW', 'hasan', '2021-06-17 02:34:52', NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL),
('1905746660', 'Trs_Grpo_sif', 'trs_gr', 'hasan', 'docnum', 'docnum', 'SHOW', 'hasan', '2021-06-14 07:46:24', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
('1909111202', 'Trs_Delivery_Order', 'trs_do', 'hasan', 'id', 'id', 'SHOW', 'hasan', '2021-06-11 05:59:15', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('1910615712', 'Trs_Inventory_Dtl', 'trs_inventory_dtl', 'yusuf', 'itm_variant_name', 'itm_variant_name', 'SHOW', 'yusuf', '2021-07-31 01:12:38', NULL, NULL, 6, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1912224713', 'Trs_Storage', 'trs_storaging', 'demo', 'asset_name', 'asset_name', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL),
('1920500382', 'Trs_Grpo', 'trs_gr', 'hasan', 'comp_id', 'comp_id', 'SHOW', 'hasan', '2021-06-09 04:30:55', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('1921102000', 'Menu_Manager', 'ucp_site_menu', 'hasan', 'parent', 'parent', 'SHOW', 'hasan', '2021-06-22 07:40:40', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
('1961337962', 'User_Manager', 'ucp_site_users', 'demo', 'email', 'email', 'SHOW', 'demo', '2021-06-19 04:16:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1962228696', 'Trs_Pick', 'trs_picking', 'hasan', 'wh_loc', 'wh_loc', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL),
('1975616017', 'Trs_Storage', 'trs_storaging', 'demo', 'module', 'module', 'SHOW', 'demo', '2021-06-19 04:20:40', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
('1979573417', 'Trs_Inventory_Dtl', 'trs_inventory_dtl', 'yusuf', 'itm_group_name', 'itm_group_name', 'SHOW', 'yusuf', '2021-07-31 01:12:38', NULL, NULL, 4, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1992022062', 'Trs_Pick', 'trs_picking', 'hasan', 'wh_code', 'wh_code', 'SHOW', 'hasan', '2021-06-26 02:51:32', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_importer`
--

CREATE TABLE `ucp_site_importer` (
  `id` varchar(32) NOT NULL,
  `remark` varchar(128) NOT NULL,
  `module_id` varchar(64) NOT NULL,
  `datetime` datetime NOT NULL,
  `userid` varchar(32) NOT NULL,
  `table_name` varchar(128) NOT NULL,
  `prim` varchar(32) NOT NULL,
  `order_by` varchar(12) NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) NOT NULL,
  `mod_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_importer`
--

INSERT INTO `ucp_site_importer` (`id`, `remark`, `module_id`, `datetime`, `userid`, `table_name`, `prim`, `order_by`, `rec_user`, `rec_date`, `mod_user`, `mod_date`) VALUES
('1001230030', 'Budgeting Initiation', '1700902170', '2020-09-15 00:00:00', 'yusuf', 'mst_bdg_ini', 'id', 'comp_id', '', NULL, '', NULL),
('1060722302', 'Template Budget Travel Expenses', '1492001303', '2020-09-24 00:00:00', 'yusuf', 'ucp_site_gl_determ_dtl', 'id', 'coa_code', '', NULL, '', NULL),
('1112650249', 'Chart Of Account', '1270713982', '2020-09-11 00:00:00', 'yusuf', 'mst_coa', 'id', 'code', '', NULL, '', NULL),
('1289612291', 'Budget Setup', '1828765051', '2020-09-16 00:00:00', 'yusuf', 'mst_bdg_ini_dtl', '', '', '', NULL, '', NULL),
('1383392767', 'Journal Entry ', '1209658010', '2020-09-15 00:00:00', 'yusuf', 'trs_journal_dtl', '', '', '', NULL, '', NULL),
('1600329090', 'Item Material', '1542982273', '2020-09-16 00:00:00', 'yusuf', 'mst_itm_mat', '', '', '', NULL, '', NULL),
('1802233070', 'Upload Currency Conversion', '1903289388', '2021-01-30 00:00:00', 'yusuf', 'trs_curr_conv', 'id', 'date asc', '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_importer_dtl`
--

CREATE TABLE `ucp_site_importer_dtl` (
  `id` varchar(48) NOT NULL,
  `pid` varchar(48) NOT NULL,
  `tblname` varchar(32) NOT NULL,
  `colname` varchar(48) NOT NULL,
  `coltype` varchar(48) NOT NULL,
  `colsize` int NOT NULL,
  `active` varchar(2) NOT NULL,
  `row_order` int NOT NULL,
  `colpos` varchar(12) NOT NULL,
  `value` varchar(200) NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) NOT NULL,
  `mod_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_importer_dtl`
--

INSERT INTO `ucp_site_importer_dtl` (`id`, `pid`, `tblname`, `colname`, `coltype`, `colsize`, `active`, `row_order`, `colpos`, `value`, `rec_user`, `rec_date`, `mod_user`, `mod_date`) VALUES
('1000035094', '1112650249', 'mst_coa', 'level', 'int(11)', 0, '1', 1, 'I', '', '', NULL, '', NULL),
('1006612519', '1289612291', 'mst_bdg_ini_dtl', 'recdate', 'date', 0, '1', 1, 'C', 'Record Date (yyyy-mm-dd ex : 2020-01-01)', '', NULL, '', NULL),
('1021210504', '1112650249', 'mst_coa', 'reval', 'varchar(12)', 0, '1', 1, 'H', '1 or 0', '', NULL, '', NULL),
('1026065269', '1600329090', 'mst_itm_mat', 'name', 'varchar(300)', 0, '1', 1, 'B', 'item Name', '', NULL, '', NULL),
('1058512293', '1802233070', 'trs_curr_conv', 'date', 'date', 0, '1', 2, '3', 'date', '', NULL, '', NULL),
('1103713901', '1600329090', 'mst_itm_mat', 'description', 'varchar(400)', 0, '1', 1, 'C', 'Item Description', '', NULL, '', NULL),
('1109202065', '1001230030', 'mst_bdg_ini', 'date', 'date', 0, '1', 1, 'E', 'date (yyyy-mm-dd, 2020-01-01)', '', NULL, '', NULL),
('1120229022', '1802233070', 'trs_curr_conv', 'curr_frg', 'varchar(32)', 0, '1', 2, '2', 'foreign_curr', '', NULL, '', NULL),
('1166760859', '1289612291', 'mst_bdg_ini_dtl', 'month', 'varchar(12)', 0, '1', 1, 'D', 'Month in number (01,02,etc)', '', NULL, '', NULL),
('1181939802', '1112650249', 'mst_coa', 'currency', 'varchar(32)', 0, '1', 1, 'C', '[IDR,USD]', '', NULL, '', NULL),
('1193005300', '1383392767', 'trs_journal_dtl', 'coa_grp', 'varchar(32)', 0, '1', 1, 'E', 'COA Group Name', '', NULL, '', NULL),
('1204801205', '1060722302', 'ucp_site_gl_determ_dtl', 'coa_grp', 'varchar(32)', 0, '1', 1, 'B', 'coa group', '', NULL, '', NULL),
('1206183543', '1112650249', 'mst_coa', 'coa_grp', 'varchar(32)', 0, '1', 1, 'F', '', '', NULL, '', NULL),
('1207000220', '1383392767', 'trs_journal_dtl', 'pid', 'varchar(32)', 0, '1', 1, 'B', 'journal entry id', '', NULL, '', NULL),
('1210980570', '1383392767', 'trs_journal_dtl', 'coa_name', 'varchar(200)', 0, '1', 1, 'D', 'COA name', '', NULL, '', NULL),
('1211050817', '1383392767', 'trs_journal_dtl', 'coa', 'varchar(32)', 0, '1', 1, 'C', 'coa code', '', NULL, '', NULL),
('1220007029', '1001230030', 'mst_bdg_ini', 'year', 'year(4)', 0, '1', 1, 'D', 'year', '', NULL, '', NULL),
('1224267127', '1600329090', 'mst_itm_mat', 'itm_group', 'varchar(32)', 0, '1', 1, 'D', 'item group', '', NULL, '', NULL),
('1226682944', '1060722302', 'ucp_site_gl_determ_dtl', 'coa_code_acc_name', 'varchar(128)', 0, '1', 1, 'H', '', '', NULL, '', NULL),
('1283013112', '1802233070', 'trs_curr_conv', 'amount', 'decimal(11,4)', 0, '1', 2, '4', 'amount', '', NULL, '', NULL),
('1295300695', '1001230030', 'mst_bdg_ini', 'comp_id', 'varchar(32)', 0, '1', 1, 'A', 'company code', '', NULL, '', NULL),
('1297725003', '1383392767', 'trs_journal_dtl', 'debit', 'decimal(11,4)', 0, '1', 1, 'I', 'amount Debit', '', NULL, '', NULL),
('1316202406', '1600329090', 'mst_itm_mat', 'itm_cat', 'varchar(128)', 0, '1', 1, 'E', 'Item Category', '', NULL, '', NULL),
('1319105181', '1112650249', 'mst_coa', 'cash_acc', 'varchar(6)', 0, '1', 1, 'D', 'true/false', '', NULL, '', NULL),
('1350982860', '1383392767', 'trs_journal_dtl', 'credit', 'decimal(11,4)', 0, '1', 1, 'J', 'amount credit', '', NULL, '', NULL),
('1390022028', '1112650249', 'mst_coa', 'coa_grp_name', 'varchar(128)', 0, '1', 1, 'G', '', '', NULL, '', NULL),
('1403236548', '1060722302', 'ucp_site_gl_determ_dtl', 'coa_grp_acc', 'varchar(32)', 0, '1', 1, 'E', 'coa_grp_acc', '', NULL, '', NULL),
('1421455992', '1289612291', 'mst_bdg_ini_dtl', 'recuser', 'varchar(32)', 0, '1', 1, 'B', 'userid', '', NULL, '', NULL),
('1422201101', '1112650249', 'mst_coa', 'cont_acc', 'varchar(6)', 0, '1', 1, 'E', 'true/false', '', NULL, '', NULL),
('1423190842', '1289612291', 'mst_bdg_ini_dtl', 'amount', 'decimal(11,2)', 0, '1', 1, 'E', 'amount', '', NULL, '', NULL),
('1462820724', '1001230030', 'mst_bdg_ini', 'userid', 'varchar(32)', 0, '1', 1, 'G', 'userid', '', NULL, '', NULL),
('1508222273', '1802233070', 'trs_curr_conv', 'curr_def', 'varchar(32)', 0, '1', 2, '1', 'base_currency', '', NULL, '', NULL),
('1535295991', '1383392767', 'trs_journal_dtl', 'remark', 'varchar(128)', 0, '1', 1, 'F', 'remark', '', NULL, '', NULL),
('1575329225', '1060722302', 'ucp_site_gl_determ_dtl', 'coa_code', 'varchar(32)', 0, '1', 1, 'D', 'coa name ', '', NULL, '', NULL),
('1610982011', '1112650249', 'mst_coa', 'name', 'varchar(128)', 0, '1', 1, 'B', 'character', '', NULL, '', NULL),
('1621940107', '1600329090', 'mst_itm_mat', 'itm_code', 'varchar(128)', 0, '1', 1, 'A', 'item code', '', NULL, '', NULL),
('1645926557', '1802233070', 'trs_curr_conv', 'type', 'varchar(12)', 0, '1', 2, '6', 'GENERAL_TAX', '', NULL, '', NULL),
('1661001163', '1802233070', 'trs_curr_conv', 'md', 'varchar(4)', 0, '1', 2, '5', 'operator', '', NULL, '', NULL),
('1665417125', '1001230030', 'mst_bdg_ini', 'coa_id', 'varchar(32)', 0, '1', 1, 'B', 'code COA', '', NULL, '', NULL),
('1672621002', '1289612291', 'mst_bdg_ini_dtl', 'currency', 'varchar(12)', 0, '1', 1, 'F', '[IDR,USD]', '', NULL, '', NULL),
('1679953874', '1383392767', 'trs_journal_dtl', 'amount', 'decimal(11,4)', 0, '1', 1, 'G', 'amount ', '', NULL, '', NULL),
('1728027901', '1060722302', 'ucp_site_gl_determ_dtl', 'coa_code_acc', 'varchar(32)', 0, '1', 1, 'G', '', '', NULL, '', NULL),
('1790140088', '1060722302', 'ucp_site_gl_determ_dtl', 'coa_grp_name', 'varchar(128)', 0, '1', 1, 'C', 'coa group name', '', NULL, '', NULL),
('1800241096', '1112650249', 'mst_coa', 'code', 'varchar(32)', 0, '1', 1, 'A', '1-9', '', NULL, '', NULL),
('1802000105', '1001230030', 'mst_bdg_ini', 'coa_grp', 'varchar(32)', 0, '1', 1, 'C', 'COA Groupname', '', NULL, '', NULL),
('1820098295', '1001230030', 'mst_bdg_ini', 'effect_date', 'date', 0, '1', 1, 'F', 'date (yyyy-mm-dd, 2020-01-01)', '', NULL, '', NULL),
('1901480192', '1383392767', 'trs_journal_dtl', 'currency', 'varchar(32)', 0, '1', 1, 'H', '[IDR,USD]', '', NULL, '', NULL),
('1920106020', '1289612291', 'mst_bdg_ini_dtl', 'pid', 'varchar(32)', 0, '1', 1, 'A', 'id budget initiation', '', NULL, '', NULL),
('1939827649', '1060722302', 'ucp_site_gl_determ_dtl', 'pid', 'varchar(32)', 0, '1', 1, 'A', 'id budget properties', '', NULL, '', NULL),
('1961101120', '1112650249', 'mst_coa', 'description', 'varchar(400)', 0, '1', 1, 'J', '', '', NULL, '', NULL),
('1976029206', '1289612291', 'mst_bdg_ini_dtl', 'rev', 'varchar(32)', 0, '1', 1, 'G', 'version', '', NULL, '', NULL),
('1994253990', '1060722302', 'ucp_site_gl_determ_dtl', 'coa_grp_acc_name', 'varchar(128)', 0, '1', 1, 'F', '', '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_log`
--

CREATE TABLE `ucp_site_log` (
  `id` int NOT NULL,
  `id_trans` varchar(128) NOT NULL,
  `docnum` varchar(64) NOT NULL,
  `hit` varchar(128) NOT NULL,
  `subsys` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session` varchar(300) NOT NULL,
  `descr` varchar(200) DEFAULT NULL,
  `date` datetime NOT NULL,
  `user` varchar(128) NOT NULL,
  `username` varchar(500) NOT NULL,
  `rec_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) NOT NULL,
  `rec_comp_id` varchar(32) NOT NULL,
  `rec_dept` varchar(32) NOT NULL,
  `rec_pos` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_log`
--

INSERT INTO `ucp_site_log` (`id`, `id_trans`, `docnum`, `hit`, `subsys`, `session`, `descr`, `date`, `user`, `username`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_emp_id`, `rec_emp_name`, `rec_comp_id`, `rec_dept`, `rec_pos`) VALUES
(1, '', '', 'Master_Item', 'List', 'ERP-2021-07-15kncOOmF0qHlI4wUqDX7M', NULL, '2021-07-15 00:00:00', 'yusuf', 'yusuf', 'yusuf', '2021-07-15 08:55:11', NULL, NULL, NULL, '', '', '', ''),
(26183, 'john_doe', '', 'User_Manager', 'edit', 'ERP-2021-09-0252MMfoamQoY73U0oF6WU', NULL, '2021-09-02 00:00:00', 'demo', 'demo', 'demo', '2021-09-02 15:44:46', NULL, NULL, '0077', 'Ikhsan', 'B-S025', 'BD', 'STAFF');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_menu`
--

CREATE TABLE `ucp_site_menu` (
  `id` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `model_menu` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `model_id` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `parent` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `urutan` int DEFAULT NULL,
  `type` varchar(84) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `icon` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `docnum` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `posting` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `journ_set` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `approval` varchar(12) NOT NULL,
  `attachment` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `doctable` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `filt_comp` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `filt_dept` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `filt_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `filt_position` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_menu`
--

INSERT INTO `ucp_site_menu` (`id`, `name`, `description`, `model`, `model_menu`, `model_id`, `parent`, `urutan`, `type`, `icon`, `docnum`, `posting`, `journ_set`, `approval`, `attachment`, `doctable`, `filt_comp`, `filt_dept`, `filt_user`, `filt_position`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1.2', 'Home', 'Home', '', '', '', '0', 1, 'menu', 'fa fa-home', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1102550466', 'Master_Warehouse_Loc', 'Master  WH Location', NULL, NULL, NULL, '419729382', 9, NULL, 'fa fa-th-large', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, 'hasan', '2021-06-23 07:30:49', NULL, NULL, NULL, NULL, NULL),
('3.1', 'Menu_Manager', 'Menu Manager', '', '', '', '3', 1, 'menu', 'fa fa-columns', '', '', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-07-16 06:37:49', NULL, NULL, NULL, NULL, NULL),
('3', 'administration', 'sysAdmin', '', '', '', '0', 20, 'topmenu', 'fa fa-window-restore', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1.3', 'User_Manager', 'User Manager', '', '', '', '3', 1, 'menu', 'fa fa-user', '', '', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-07-16 06:32:19', NULL, NULL, NULL, NULL, NULL),
('252513033', 'Group_Menu', 'group menu', '', '', '', '3', 2, '', 'fa fa-list', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('012121108', 'Group_Manager', 'Group_Manager', '', '', '', '3', 2, 'menu', 'fa fa-users', '', '', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-07-16 02:42:52', NULL, NULL, NULL, NULL, NULL),
('724146200', 'User_Group', 'User Group', '', '', '', '3', 4, '', 'fa fa-address-card', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('400881112', 'System_Properties', 'System_Properties', '', '', '', '3', 6, '', 'fa fa-cog', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('419729382', 'Data_Master', 'Master Data', '', '', '', '0', 19, 'topmenu', 'fa fa-database', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1525013122', 'Trs_Moving', 'Moving', '', '', '', '1182922297', 3, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('020812223', 'Master_Units', 'Master Units', '', '', '', '1112001241', 4, 'menu', 'fa fa-cc', '', '', '', '', '', '', '', '', '', '', '', NULL, 'hasan', '2021-07-09 03:24:35', NULL, NULL, NULL, NULL, NULL),
('1237072400', 'Report_Diagram_Thermo', 'Dashboard', '', '', '', '1522405282', 0, 'menu', 'fa fa-desktop', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1291632131', 'Payment', 'Receipt and Payment', '', '', '', '0', 5, 'topmenu', 'fa fa-money', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1506751256', 'Master_Biodata', 'Biodata', '', '', '', '1090016263', 2, 'menu', 'fa fa-child', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1211296967', 'Employee', 'Employee', '', '', '', '423535702', 3, 'menu', 'fa fa-user-circle-o', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1277078060', 'Master_Employees', 'Employee Information', '', '', '', '1090016263', 2, 'menu', 'fa fa-users', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('430275226', 'Trs_GIssue', 'Good Issue', '', '', '', '395555518', 3, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1473270202', 'Report_Diagram_Schem', 'Layout Setting', '', '', '', '1522405282', 3, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1900781949', 'Master_ShiftGroup', 'ShiftGroup', '', '', '', '1160123132', 2, 'menu', 'fa fa-shirtsinbulk', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1201205298', 'Master_Machine', 'Check Point (Thermo Detector)', '', '', '', '1317980233', 3, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1094206509', 'Master_Location', 'Master Location', '', '', '', '419729382', 5, 'menu', 'fa fa-database', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1092159056', 'Rpt_Attendance', 'Summary Attendance', '', '', '', '1182922297', 5, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1011210450', 'Trs_DevLog', 'Attendance Log', '', '', '', '1182922297', 2, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1522405282', 'Monitoring', 'Live Monitoring', '', '', '', '423535702', 90, 'menu', 'fa fa-television', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('123116102', 'Mst_Resource', 'resource', '', '', '', '0', 10, 'topmenu', 'fa fa-cub', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1064866168', 'Trs_Spv', 'Employee Spv', '', '', '', '1090016263', 3, 'menu', 'fa fa-user-plus', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('722002315', 'Sla_Prop_Dash', 'Sla Properties Editor', '', '', '', '262800141', 3, 'menu', 'fa fa-adjust', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1646382928', 'Master_Device_Address', 'Check Point Setting', '', '', '', '1317980233', 7, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1990270008', 'Report_Diagram_Thermo_Dtl', 'Report Detail', '', '', '', '1182922297', 5, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('142208370', 'Sign_Staging', 'Sign Staging Setting', '', '', '', '3', 9, 'menu', 'fa fa-paper-plane-o', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('400160052', 'Trs_Approval', 'Inbox', '', '', '', '1', 6, 'menu', 'fa fa-handshake-o', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('423535702', 'Human_Resource', 'Human Resource', '', '', '', '0', 10, 'topmenu', 'fa fa-address-book-o', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1222596426', 'Master_Comp', 'Business Partner', '', '', '', '1503216004', 1, 'menu', 'fa fa-sitemap', '', '', '', '', '', '', '', '', '', '', '', NULL, 'demo', '2021-06-19 03:54:41', NULL, NULL, NULL, NULL, NULL),
('1950968384', 'Report_Diagram_Dash', 'Dashboard Setting', '', '', '', '1522405282', 2, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1092900521', 'Trs_Emp_Shift', 'Employee ShiftGroup', '', '', '', '1160123132', 1, 'menu', 'fa fa-object-group', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1086202243', 'Trs_Attendance_Pers', 'Manual Attendance', '', '', '', '1211296967', 3, 'menu', 'fa fa-sign-in', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('571261069', 'Document_Number', 'Document Number Setting', '', '', '', '3', 7, 'menu', 'fa fa-file-text', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('820206232', 'Logout', 'Logout', '', '', '', '1', 12, 'menu', 'fa fa-sign-out', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1629200900', 'Master_Schem', 'Master Schema', '', '', '', '1317980233', 4, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('000360967', 'Trs_Rpt_Manual', 'Manual Condition Report', '', '', '', '1221760037', 4, 'menu', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-08-12 04:04:04', NULL, NULL, NULL, NULL, NULL),
('1270713982', 'Mst_Coa', 'Chart Of Account (COA)', '', '', '', '1032798567', 5, '', 'fa fa-list-ol', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1220872807', 'Budgeting', 'Budgeting', '', '', '', '0', 5, 'topmenu', 'fa fa-usd', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1201100171', 'Cash', 'Cash Management', '', '', '', '0', 3, 'topmenu', 'fa fa-money', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1828765051', 'Trs_Bdg_Ini_Set', 'Standart Budget Set', '', '', '', '1084321020', 2, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1032798567', 'Accounting', 'Accounting', '', '', '', '0', 6, 'topmenu', 'fa fa-book', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1209658010', 'Trs_Journal_Entry', 'Journal Entry', '', '', '', '1032798567', 1, 'menu', 'fa fa-book', 'true', 'true', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1903289388', 'Trs_CurrConv', 'Currency Conversion', '', '', '', '1032798567', 19, 'menu', 'fa fa-usd', '', '', '', '', '', '', '', '', '', '', '', NULL, 'ikhsan', '2021-06-08 04:09:22', NULL, NULL, NULL, NULL, NULL),
('1299722046', 'Purchasing', 'Purchasing', '', '', '', '0', 7, 'topmenu', 'fa fa-shopping-cart', 'true', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1940610074', 'Trs_Puchase_Ord', 'Purchase Order', '', '', '', '1299722046', 3, 'menu', 'fa fa-shopping-cart', 'true', '', '', '', '', '', 'true', '', 'true', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1900929278', 'Trs_Journal_Posting', 'Journal Posting', '', '', '', '1032798567', 19, 'menu', 'fa fa-calendar-times-o', '', 'true', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1399109618', 'Excel_Importer_Set', 'Excel Importer Setup', '', '', '', '3', 10, 'menu', 'fa fa-file-excel-o', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1007930060', 'Excel_Importer', 'Excel Importer', '', '', '', '3', 9, 'menu', 'fa fa-file-excel-o', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1542982273', 'Master_Item', 'Item Master Data', '', '', '', '1112001241', 1, 'menu', 'fa fa-database', '', '', '', '', 'true', '', '', '', '', '', '', NULL, 'hasan', '2021-06-19 02:00:51', NULL, NULL, NULL, NULL, NULL),
('1817651637', 'Trs_Puchase_Req', 'Purchase Request', '', '', '', '1299722046', 1, '', 'fa fa-shopping-cart', 'true', '', '', '', '', '', 'true', '', 'true', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1084321020', 'Budget_Entry', 'Budgeting Entry ', '', '', '', '1220872807', 1, 'menu', 'fa fa-usd', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1798004772', 'Trs_Invoice', 'Invoice & Payment', '', '', '', '1291632131', 3, 'menu', 'fa fa-money', 'true', 'true', '', '', '', '', 'true', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1902293220', 'Project', 'Sales', '', '', '', '0', 8, 'topmenu', 'fa fa-arrows', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1712630250', 'Trs_Prod_Line', 'Product Line', '', '', '', '1902293220', 6, 'menu', 'fa fa-product-hunt', 'true', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1801010600', 'Trs_Bdg_Ini_Posting', 'Budget Release', '', '', '', '1220872807', 4, 'menu', 'fa fa-usd', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1492001303', 'System_Properties_Budget', 'Budget Properties', '', '', '', '400881112', 88, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1108897115', 'Master_Resource', 'Resource Costing', '', '', '', '1032798567', 6, 'menu', 'fa fa-cogs', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1212025206', 'Payroll', ' Payroll', '', '', '', '423535702', 70, 'menu', 'fa fa-money', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1780969006', 'payroll_component', 'General Variable', '', '', '', '1630393829', 1, 'menu', 'fa fa-wpexplorer', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1112221057', 'Master_Emp_Pay', 'Employee Payroll Setting', '', '', '', '1212025206', 2, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1339381993', 'payroll_process', 'Payroll Process', '', '', '', '1212025206', 3, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1922716102', 'Trs_Posting_Period', 'Posting Period', '', '', '', '1032798567', 8, 'menu', 'fa fa-calendar', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1988236229', 'Master_Doc_Tmpl', 'Document Template', '', '', '', '419729382', 9, 'menu', 'fa fa-table', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1056724802', 'Trs_Formula', 'Formula List', '', '', '', '1630393829', 99, 'menu', 'fa fa-calculator', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1160123132', 'attendance', 'Attendance', '', '', '', '423535702', 60, 'menu', 'fa fa-address-book-o', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1090016263', 'organization', 'Organization', '', '', '', '423535702', 1, 'menu', 'fa fa-users', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1182922297', 'hr_report', 'HR Report', '', '', '', '423535702', 80, 'menu', 'fa fa-line-chart', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1681263923', 'Trs_Leave_Pers', 'Leave Request', '', '', '', '1211296967', 2, 'menu', 'fa fa-sign-out', '', '', '', '', '', 'trs_attendance_leave', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1091014021', 'Template_Manager', 'Template Manager', '', '', '', '1220872807', 7, 'menu', 'fa fa-table', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1112001241', 'Inventory', 'Master Items and Groups', '', '', '', '419729382', 8, 'menu', 'fa fa-database', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1630393829', 'Formula', 'Formula', '', '', '', '0', 9, 'topmenu', 'fa fa-calculator', '', '', '', '', '', '', '', '', '', '', '', NULL, 'hasan', '2021-06-25 06:12:38', NULL, NULL, NULL, NULL, NULL),
('1204192860', 'Master_Itm_Group', 'Item Group', '', '', '', '1112001241', 3, 'menu', 'fa fa-database', '', '', '', '', '', '', '', '', '', '', '', NULL, 'hasan', '2021-07-09 03:24:17', NULL, NULL, NULL, NULL, NULL),
('1091320050', 'Trs_Bdg_Template', 'Budget Template', 'template', 'revenue_charter', '1091320050', '1084321020', 2, 'menu', 'fa fa-table', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1011280009', 'Trs_Bdg_Template', 'Travel Expense', 'template', 'travel_expense', '1011280009', '1220872807', 2, 'menu', 'fa fa-usd', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1229062611', 'Trs_Bdg_Template', 'Seminar', 'template', 'seminar', '1229062611', '1084321020', 5, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1112901615', 'Master_Department', 'Master Departement', '', '', '', '1503216004', 4, 'menu', 'fa fa-building', '', '', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-07-26 02:18:32', NULL, NULL, NULL, NULL, NULL),
('1503216004', 'Master_Organization', 'Master Organization', '', '', '', '419729382', 1, 'menu', 'fa fa-database', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1317980233', 'Master_hr', 'Peripheral', '', '', '', '423535702', 99, 'menu', 'fa fa-external-link-square', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1951078623', 'Trs_Sales_Online', 'Sales Order Lama', '', '', '', '1902293220', 2, 'menu', 'fa fa-arrows', 'true', '', '', '', '', '', 'true', '', '', '', '', NULL, 'yusuf', '2021-07-14 03:01:15', NULL, NULL, NULL, NULL, NULL),
('1743101210', 'Master_Rev_CCenter', 'Revenue Cost Center', '', '', '', '1630393829', 7, 'menu', 'fa fa-code', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1830009932', 'Trs_Work_Order_lama', 'Work Order Lama', '', '', '', '1902293220', 1, 'menu', 'fa fa-arrows', '', '', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-08-02 02:03:20', NULL, NULL, NULL, NULL, NULL),
('1502241281', 'Cash_Advance', 'Cash Advance ', '', '', '', '1201100171', 1, 'menu', 'fa fa-money', 'true', '', '', '', '', '', 'true', '', 'true', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1132292100', 'Cash_Advance_Transfer', 'Cash Advance Admin', '', '', '', '1201100171', 2, 'menu', 'fa fa-money', '', 'true', '', '', '', '', 'true', '', 'true', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1043714202', 'Trs_Bdg_Template', 'Form Cuti', 'template', 'cuti', '1043714202', '1212025206', 0, 'menu', 'fa fa-sign-out', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1082626812', 'Trs_Grpo', 'Goods Receipt Old', '', '', '', '1299722046', 5, 'menu', 'fa fa-shopping-cart', 'true', '', '', '', '', '', 'true', '', '', '', '', NULL, 'yusuf', '2021-07-16 07:48:12', NULL, NULL, NULL, NULL, NULL),
('1320400321', 'Trs_Ar_Invoice', 'Sales Invoice', '', '', '', '1902293220', 4, 'menu', 'fa fa-print', 'true', '', '', '', '', '', 'true', '', 'true', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1034030927', 'asset_mgmt', 'Asset Management', '', '', '', '0', 8, 'topmenu', 'fa fa-diamond', '', '', '', '', '', '', '', '', '', '', '', NULL, 'hasan', '2021-06-25 06:12:21', NULL, NULL, NULL, NULL, NULL),
('1820634120', 'Master_Asset_List', 'Asset List', '', '', '', '1034030927', 1, 'menu', 'fa fa-diamond', '', '', '', '', '', '', '', '', '', '', '', NULL, 'hasan', '2021-06-28 02:47:00', NULL, NULL, NULL, NULL, NULL),
('1334105129', 'Trs_Puchase_Quo', 'Purchase Quotation', '', '', '', '1299722046', 6, 'menu', 'fa fa-shopping-cart', 'true', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1558412299', 'general_ledger', 'General Ledger', '', '', '', '1230894011', 19, 'menu', 'fa fa-book', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1212522267', 'Master_Route', 'Route', '', '', '', '1902293220', 7, 'menu', 'fa fa-arrows', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1255343633', 'Payroll_Payment', 'Payroll Payment', '', '', '', '1291632131', 3, 'menu', 'fa fa-money', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1225150220', 'trial_balance', 'Trial Balance', '', '', '', '1230894011', 18, 'menu', 'fa fa-balance-scale', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1622834010', 'cash_flow', 'Cash Flow', '', '', '', '1230894011', 12, 'menu', 'fa fa-money', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1230894011', 'Financial_Statement', 'Financial Statement', '', '', '', '0', 1, 'topmenu', 'fa fa-picture-o', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1151371309', 'Cash_Advance_Report', 'Cash Advance Report', '', '', '', '1201100171', 3, 'menu', 'fa fa-money', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1011200131', 'inventory', 'Inventory', '', '', '', '0', 6, 'topmenu', 'fa fa-tags', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1200929810', 'Report_Qty_Stock', 'Qty Stock Report', '', '', '', '1011200131', 8, 'menu', 'fa fa-tags', '', '', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-07-12 03:11:12', NULL, NULL, NULL, NULL, NULL),
('1514110902', 'Trs_Inventory', 'Movement Inventory', '', '', '', '1011200131', 6, 'menu', 'fa fa-tags', '', '', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-07-12 03:10:29', NULL, NULL, NULL, NULL, NULL),
('1062162008', 'Trs_Inventory_Report_Wh', 'Inventory Report Warehouse', '', '', '', '1011200131', 4, 'menu', 'fa fa-tags', '', '', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-07-12 03:10:00', NULL, NULL, NULL, NULL, NULL),
('1220851008', 'Trs_Inventory_Transfer', 'Inventory Transfer Location', '', '', '', '1011200131', 1, 'menu', 'fa fa-tags', 'true', 'true', '', '', '', '', '', '', '', '', '', NULL, 'hasan', '2021-07-06 08:32:07', NULL, NULL, NULL, NULL, NULL),
('1152203927', 'asset_depre', 'Asset Depreciation', '', '', '', '1034030927', 4, 'menu', 'fa fa-diamond', '', '', '', '', '', '', '', '', '', '', '', NULL, 'hasan', '2021-06-28 04:13:03', NULL, NULL, NULL, NULL, NULL),
('1080265122', 'asset_report', 'Asset Report', '', '', '', '1034030927', 9, 'menu', 'fa fa-diamond', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1821254227', 'asset_depre_process', 'Depreciation Process', '', '', '', '1034030927', 4, 'menu', 'fa fa-diamond', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1082533109', 'Trs_Journal_Report', 'Journal Report', '', '', '', '1032798567', 3, 'menu', 'fa fa-book', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1810310355', 'Change_Company', 'Change Company', '', '', '', '1', 2, 'menu', 'fa fa-building', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1207956236', 'Trs_Inv_Paid', 'Receipt and Payment Record', '', '', '', '1291632131', 9, 'menu', 'fa fa-money', '', '', '', '', '', '', 'true', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1508502610', 'Trs_Delivery_Order', 'Delivery Order', '', '', '', '1011200131', 3, 'menu', 'fa fa-tags', '', 'true', '', '', '', '', '', '', '', '', '', NULL, 'yusuf', '2021-07-14 02:57:58', NULL, NULL, NULL, NULL, NULL),
('1070443062', 'Trs_Retur', 'Retur Delivery Order', '', '', '', '1011200131', 5, 'menu', 'fa fa-tags', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1059840729', 'Trs_Inventory_Glb_Report', 'Inventory Stock Report', '', '', '', '1011200131', 9, 'menu', 'fa fa-tags', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1222120622', 'balance_sheet', 'Balance Sheet', '', '', '', '1230894011', 4, 'menu', 'fa fa-balance-scale', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1563542143', 'profit_loss', 'Income Statement', '', '', '', '1230894011', 9, 'menu', 'fa fa-cubes', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1028126222', 'payroll_slip', 'Pay Slip', '', '', '', '1211296967', 9, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1681206051', 'Trs_Reval', 'Reval', '', '', '', '1032798567', 9, 'menu', 'fa fa-adjust', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1312566230', 'Trs_Approval_Out', 'Outbox', '', '', '', '1', 4, 'menu', 'fa fa-archive', '', '', '', '', '', '', '', '', 'true', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1276423232', 'Trs_Overtime', 'Overtime Request', '', '', '', '1211296967', 6, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1227220222', 'Trs_Payroll_Report', 'Payroll Report', '', '', '', '1212025206', 3, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1389372099', 'Master_Training', 'Master Training', '', '', '', '423535702', 9, 'menu', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1903503202', 'trs_attachment', 'attachment', '', '', '', '419729382', 9, 'menu', 'fa fa-paperclip', '', '', '', '', '', '', 'true', '', 'true', '', '', NULL, 'hasan', '2021-06-23 03:50:35', NULL, NULL, NULL, NULL, NULL),
('1120380157', 'Develop_Component', 'Untuk Develop', NULL, NULL, NULL, '3', 90, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1533440104', 'Master_Warehouse', 'Data Warehouse', NULL, NULL, NULL, '419729382', 3, NULL, 'fa fa-building-o', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, 'hasan', '2021-06-23 03:47:21', NULL, NULL, NULL, NULL, NULL),
('1822562611', 'Header_Set', 'Header Set', NULL, NULL, NULL, '3', 99, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1.1', 'Desktop', 'Desktop', '', '', '', '1', 1, 'menu', 'fa fa-desktop', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1', 'main', 'Main Menu', '', '', '', '0', 1, 'topmenu', 'fa fa-home', '', '', '', '', '', '', '', '', '', '', '', NULL, 'demo', '2021-07-13 02:06:46', NULL, NULL, NULL, NULL, NULL),
('1600010405', 'Master_Status', 'Master Status', NULL, NULL, NULL, '419729382', 9, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-09 01:48:28', 'ikhsan', '2021-06-18 07:10:33', NULL, NULL, NULL, NULL, NULL),
('1966025437', 'Menu_Sync', 'Module Synchron', NULL, NULL, NULL, '3', 99, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-09 02:12:20', 'hasan', '2021-06-09 02:13:34', NULL, NULL, NULL, NULL, NULL),
('1101536603', 'Mst_Item_Monitoring', 'Item Explorer', NULL, NULL, NULL, '419729382', 9, 'menu', 'fa fa-list', '', '', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-06-12 01:33:53', 'yusuf', '2021-07-26 02:13:51', NULL, NULL, NULL, NULL, NULL),
('1302423050', 'Master_Ship', 'Master Ship', NULL, NULL, NULL, '419729382', 6, NULL, 'fa fa-ship', NULL, NULL, 'true', '', '', NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-12 05:28:37', 'hasan', '2021-06-23 03:47:50', NULL, NULL, NULL, NULL, NULL),
('1459214500', 'Trs_Storage', 'Storage Bin', NULL, NULL, NULL, '1496082190', 7, NULL, 'fa fa-archive', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-14 01:08:13', 'demo', '2021-07-09 02:22:17', NULL, NULL, NULL, NULL, NULL),
('1457146820', 'Master_Asset_Monitoring', 'Master Asset Monitoring', NULL, NULL, NULL, '1034030927', 5, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-14 01:50:29', 'hasan', '2021-06-14 02:25:56', NULL, NULL, NULL, NULL, NULL),
('1620860541', 'Trs_Grpo_sif', 'Goods Receipt', NULL, NULL, NULL, '1299722046', 5, 'menu', 'fa fa-shopping-cart', 'true', 'true', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-06-14 06:51:56', 'yusuf', '2021-07-24 01:42:31', NULL, NULL, NULL, NULL, NULL),
('1626022123', 'Trs_Posting', 'Posting', NULL, NULL, NULL, '1032798567', 99, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-17 04:31:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1241257122', 'TestMenu', 'Menu Test', NULL, NULL, NULL, '3', 9, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-22 01:18:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1302144621', 'Trs_Pick', 'Picking', NULL, NULL, NULL, '1496082190', 99, 'menu', 'fa fa-hand-lizard-o', '', '', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-06-23 02:16:35', 'demo', '2021-07-09 02:21:53', NULL, NULL, NULL, NULL, NULL),
('1252557874', 'production', 'Process', NULL, NULL, NULL, '0', 7, 'topmenu', 'fa fa-cogs', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-25 03:48:05', 'hasan', '2021-06-25 06:13:07', NULL, NULL, NULL, NULL, NULL),
('1496082190', 'Inventory_Global', 'Sub Menu', NULL, NULL, NULL, '1011200131', 89, 'menu', 'fa fa-snowflake-o', '', '', NULL, '', '', NULL, '', '', NULL, '', 'demo', '2021-07-09 02:21:04', 'yusuf', '2021-07-12 03:08:24', NULL, NULL, NULL, NULL, NULL),
('1151006494', 'trs_bom', 'Bill Of Material', NULL, NULL, NULL, '1252557874', 2, 'menu', 'fa fa-bomb', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-25 03:51:08', 'hasan', '2021-06-25 06:11:47', NULL, NULL, NULL, NULL, NULL),
('1568120642', 'Trs_Repacking', 'Re Packing', NULL, NULL, NULL, '1011200131', 5, 'menu', 'fa fa-archive', '', 'true', NULL, '', 'true', NULL, '', '', NULL, '', 'hasan', '2021-06-26 01:22:50', 'yusuf', '2021-08-27 14:42:23', NULL, NULL, NULL, NULL, NULL),
('1311063515', 'Trs_Pick_Req', 'Pick Monitoring', NULL, NULL, NULL, '0', 80, NULL, 'fa fa-bath', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'hasan', '2021-06-26 02:56:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1212292632', 'Trs_Inventory_Transfer_Area', 'Inventory Transfer Area', NULL, NULL, NULL, '1011200131', 2, 'menu', 'fa fa-tags', '', 'true', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-06-26 05:02:55', 'yusuf', '2021-07-09 07:26:16', NULL, NULL, NULL, NULL, NULL),
('1729578900', 'Report_Position', 'Inventory Position', NULL, NULL, NULL, '1011200131', 7, 'menu', 'fa fa-briefcase', '', '', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-07-02 06:10:58', 'yusuf', '2021-07-12 03:10:41', NULL, NULL, NULL, NULL, NULL),
('1116741220', 'Master_Asset_Group', 'Asset Group', NULL, NULL, NULL, '1034030927', 2, 'menu', 'fa fa-diamond', '', '', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-06-28 02:35:41', 'hasan', '2021-06-28 02:46:46', NULL, NULL, NULL, NULL, NULL),
('1402200260', 'Master_Asset_Group_Monitoring', 'Asset Group Monitoring', NULL, NULL, NULL, '1034030927', 3, 'menu', 'fa fa-diamond', '', '', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-06-28 04:10:39', 'hasan', '2021-06-28 04:13:18', NULL, NULL, NULL, NULL, NULL),
('1972102008', 'Trs_Tally_Bongkar', 'Tally Bongkar', NULL, NULL, NULL, '1011200131', 12, 'menu', 'fa fa-shopping-cart', '', '', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-07-03 04:18:53', 'yusuf', '2021-07-30 07:33:30', NULL, NULL, NULL, NULL, NULL),
('1221104505', 'T', 'T', NULL, NULL, NULL, '0', 0, 'menu', 'fa fa-archive', '', '', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-07-05 02:23:33', 'hasan', '2021-07-05 02:24:54', NULL, NULL, NULL, NULL, NULL),
('1722351025', 'mst_testing', 'testing', NULL, NULL, NULL, '419729382', 11, 'menu', 'fa fa-archive', '', '', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-07-05 03:01:11', 'hasan', '2021-07-05 03:07:43', NULL, NULL, NULL, NULL, NULL),
('1380000254', 'Master_Item_Spec', 'Item Spec', NULL, NULL, NULL, '1112001241', 2, 'menu', 'fa fa-database', '', '', NULL, '', '', NULL, '', '', NULL, '', 'hasan', '2021-07-09 03:25:15', 'hasan', '2021-07-09 03:39:35', NULL, NULL, NULL, NULL, NULL),
('1267250352', 'Trs_Posting_Action', 'Posting Action', NULL, NULL, NULL, '3', 100, 'menu', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', 'yusuf', '2021-07-13 04:36:34', 'yusuf', '2021-07-13 04:36:39', NULL, NULL, NULL, NULL, NULL),
('1190512700', 'Trs_Sales_Order', 'Sales Order', NULL, NULL, NULL, '1902293220', 3, 'menu', 'fa fa-money', 'true', '', 'true', 'true', 'true', NULL, '', '', NULL, '', 'yusuf', '2021-07-14 02:49:33', 'yusuf', '2021-08-03 06:48:26', NULL, NULL, NULL, NULL, NULL),
('1372139049', 'Master_Pricelist', 'Pricelist', NULL, NULL, NULL, '1112001241', 5, 'menu', 'fa fa-database', '', '', NULL, '', '', NULL, '', '', NULL, '', 'yusuf', '2021-07-14 06:37:57', 'yusuf', '2021-07-14 06:53:37', NULL, NULL, NULL, NULL, NULL),
('1623203136', 'Trs_Sales_Quotation', 'Sales Quotation', NULL, NULL, NULL, '1902293220', 87, 'menu', 'fa fa-calculator', 'true', 'true', NULL, 'true', '', NULL, '', '', NULL, '', 'yusuf', '2021-07-16 02:18:10', 'yusuf', '2021-07-27 03:52:14', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1439502726', 'Trs_Work_Order', 'Work Order', NULL, NULL, NULL, '1252557874', 99, 'menu', 'fa fa-archive', 'true', 'true', NULL, '', '', NULL, '', '', NULL, '', 'yusuf', '2021-07-16 07:57:18', 'yusuf', '2021-08-02 02:03:31', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1777037392', 'Report_Position_List', 'Report Position List', NULL, NULL, NULL, '1011200131', 99, 'menu', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'yusuf', '2021-08-07 00:52:57', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1125272122', 'Trs_Inventory_Transfer_Qc', 'Inventory Transfer QC', NULL, NULL, NULL, '1011200131', 3, 'menu', 'fa fa-archive', 'true', 'true', NULL, '', '', NULL, '', '', NULL, '', 'yusuf', '2021-07-27 06:12:54', 'yusuf', '2021-07-27 06:18:10', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1170823378', 'Trs_Copy_Document', 'Copy Document', NULL, NULL, NULL, '3', 15, 'menu', NULL, 'true', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'yusuf', '2021-07-28 03:52:45', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1035323122', 'Trs_Grpo_pack', 'Goods Receipt from Packing', NULL, NULL, NULL, '1011200131', 90, 'menu', 'fa fa-cogs', 'true', 'true', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'yusuf', '2021-07-30 01:44:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1339245044', 'Trs_Inventory_Dtl', 'Table Inventory Detail', NULL, NULL, NULL, '1011200131', 99, 'menu', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'yusuf', '2021-07-31 01:06:03', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1221760037', 'Trs_Report', 'Report', NULL, NULL, NULL, '0', 9990, 'topmenu', 'fa fa-book', '', '', NULL, '', '', NULL, '', '', NULL, '', 'yusuf', '2021-08-12 03:49:33', 'yusuf', '2021-08-12 04:03:36', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1132288161', 'Report_Gr', 'Report Good Receipt', NULL, NULL, NULL, '1221760037', 1, 'menu', 'fa fa-archive', '', '', NULL, '', '', NULL, '', '', NULL, '', 'yusuf', '2021-08-12 06:19:55', 'yusuf', '2021-08-12 06:31:27', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('MM729103708', 'Trs_Gr_Stock', 'Re-Entry', NULL, NULL, NULL, '1011200131', 99, 'menu', 'fa fa-stack-overflow', 'true', 'true', NULL, '', '', NULL, '', '', NULL, '', 'yusuf', '2021-08-19 07:58:30', 'yusuf', '2021-08-19 08:04:13', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('MM111108913', 'Trs_Storage_Re', 'Storaging Re Enter', NULL, NULL, NULL, '1496082190', 99, 'menu', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'yusuf', '2021-08-19 08:19:12', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('MM103640708', 'Trs_Storage_Min', 'Storage Bin Min', NULL, NULL, NULL, '1011200131', 99, 'menu', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'yusuf', '2021-08-20 08:25:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('MM216022020', 'Trs_Barang_Masuk', 'Barang Masuk', NULL, NULL, NULL, '1011200131', 9999, 'menu', 'fa fa-briefcase', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'yusuf', '2021-09-02 11:01:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('MM220149140', 'Trs_Barang_Keluar', 'Barang Keluar', NULL, NULL, NULL, '1011200131', 999, 'menu', 'fa fa-window-close-o', '', '', NULL, '', '', NULL, '', '', NULL, '', 'yusuf', '2021-09-02 12:59:27', 'yusuf', '2021-09-02 13:00:36', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('MM105010722', 'Rpt_Barang_Masuk', 'Report Barang Masuk', NULL, NULL, NULL, '1011200131', 9999, 'menu', 'fa fa-bars', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'yusuf', '2021-09-02 13:06:25', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('MM004612709', 'Rpt_Barang_Masuk', 'Report Barang Keluar', NULL, NULL, NULL, '1011200131', 99999, 'menu', 'fa fa-braille', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'yusuf', '2021-09-02 13:08:00', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_menu_properties`
--

CREATE TABLE `ucp_site_menu_properties` (
  `id` varchar(128) NOT NULL,
  `prop` varchar(25) NOT NULL,
  `id_groupmenu` varchar(128) NOT NULL,
  `rec_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_menu_properties`
--

INSERT INTO `ucp_site_menu_properties` (`id`, `prop`, `id_groupmenu`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('-10624810', 'edit_detail', '77736-218', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('000444003', 'add', '868324500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('002081020', 'add_detail', '372527180', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('002104026', 'edit_detail', '922537022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('002223622', 'other', '532006351', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('002948232', 'delete_detail', '006537592', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('004464039', 'delete', '090272705', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('004941520', 'delete', '112136101', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('005536326', 'edit', '090272705', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('009203162', 'edit', '775020013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('010319026', 'delete', '261175001', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('011305901', 'excel', '247022302', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('014812414', 'add', '820943246', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('020075471', 'edit', '242500775', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('020692279', 'add_detail', '242500775', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('020793003', 'add_detail', '149007870', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('022083092', 'add', '512152022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('022212052', 'delete_detail', '820943246', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('022826230', 'add', '157510734', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('024235993', 'edit_detail', '372527180', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('024905120', 'add_detail', '868324500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('025053440', 'add_detail', '247022302', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('030090202', 'print', '775020013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('035072200', 'edit_detail', '247022302', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('039307430', 'edit_detail', '157510734', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('040062009', 'add_detail', '775020013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('042796500', 'edit', '868324500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('045662339', 'delete', '171402272', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('050640411', 'delete_detail', '149007870', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('052527395', 'add', '242500775', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('053075225', 'add_detail', '090272705', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('063024245', 'add', '221023024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('069-68067', 'add', '77736-218', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('077000222', 'edit', '423322717', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('080330002', 'delete', '465005232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('082050310', 'add', '922537022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('095200352', 'edit', '934407072', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('10', 'edit_detail', '8', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1000009627', 'add', '1146070097', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1000022285', 'delete', '1562038055', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1000031326', 'print', '1517980529', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1000200212', 'edit', '1222201738', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1000212201', 'other', '1572314062', 'yusuf', '2021-07-26 01:52:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('100050216', 'delete', '372527180', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1000657711', 'add', '1179900875', 'demo', '2021-07-09 02:06:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1000760559', 'excelimp', '1011020006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1000980021', 'add', '1922102090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1000981326', 'add', '1281155102', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1001128222', 'add_detail', '1121266816', 'yusuf', '2021-07-16 07:57:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1001261477', 'add', '1286157208', 'yusuf', '2021-07-26 01:59:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1001727551', 'delete_detail', '1222677577', 'yusuf', '2021-07-26 01:59:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1001922021', 'edit', '1610023021', 'demo', '2021-06-19 02:38:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1002015277', 'add', '1772920200', 'hasan', '2021-07-09 03:25:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1002026122', 'delete_detail', '1217881228', 'yusuf', '2021-07-26 01:56:42', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1002068803', 'delete', '1002011160', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1002109221', 'other', '1066299212', 'hasan', '2021-07-07 07:37:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1002270030', 'delete_detail', '1702508008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1002640627', 'delete_detail', '1486020261', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1002743312', 'edit_detail', '1112261610', 'yusuf', '2021-08-14 03:35:59', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1003164032', 'edit_detail', '1602121807', 'demo', '2021-07-09 02:13:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1003820922', 'add_detail', '1922102090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1003980709', 'edit', '1007220720', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1004271592', 'edit', '1075109184', 'yusuf', '2021-07-26 01:56:59', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1005803226', 'edit', '1624206114', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1006012267', 'add_detail', '1032078415', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1006051936', 'add', '1725242820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1006600200', 'add', '1123006861', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1006920998', 'add', '1635760810', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1007024061', 'add_detail', '1123006861', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1007080067', 'add', '1110132150', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1008402106', 'excelimp', '1179046029', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1009001514', 'excelimp', '1034307209', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1009021698', 'add', '1460589094', 'demo', '2021-06-19 02:45:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1009700021', 'edit', '1334101020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1010010602', 'edit', '1286157208', 'yusuf', '2021-07-26 01:59:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('101002071', 'edit_detail', '512152022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1010022067', 'edit_detail', '1222677577', 'yusuf', '2021-07-26 01:59:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1010271668', 'add_detail', '1060220220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1010723644', 'delete_detail', '1286157208', 'yusuf', '2021-07-26 01:59:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1010799661', 'delete', '1101404101', 'hasan', '2021-06-12 05:29:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1011073430', 'add', '1728141022', 'demo', '2021-07-13 01:55:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1011278160', 'add', '1052064284', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1012000660', 'add_detail', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1012020070', 'edit', '1185160442', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1013022600', 'print', '1282111190', 'demo', '2021-07-13 04:55:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1013095300', 'delete', '1996226941', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1016280598', 'add', '1331047383', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1017009668', 'other', '1907978018', 'yusuf', '2021-07-26 01:55:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1019060082', 'other', '1702028049', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1020002598', 'delete', '1224466327', 'yusuf', '2021-07-26 02:00:32', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1020213102', 'delete', '1572314062', 'yusuf', '2021-07-26 01:52:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1020216225', 'edit_detail', '1027665576', 'hasan', '2021-06-25 06:01:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1020254312', 'edit_detail', '1702028049', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1020320083', 'add', '1562038055', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1020728953', 'edit', '1772920200', 'hasan', '2021-07-09 03:25:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1020792824', 'delete', '1038077518', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1020841106', 'edit', '1182138405', 'yusuf', '2021-07-14 06:38:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1021014287', 'edit_detail', '1910009110', 'yusuf', '2021-07-14 03:01:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1021198005', 'other', '1021001090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1021230017', 'print', '1066299212', 'hasan', '2021-07-07 08:22:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1021285301', 'edit_detail', '1911308163', 'yusuf', '2021-07-13 04:15:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1021543602', 'delete', '1233025022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1021551510', 'delete_detail', '1342211202', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1021617152', 'delete', '1221060907', 'hasan', '2021-06-14 01:09:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1021669804', 'delete_detail', '1728141022', 'demo', '2021-07-13 01:55:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1021932270', 'delete', '1910822910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1022035074', 'delete_detail', '1060220220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1022052148', 'edit', '1007428608', 'ikhsan', '2021-06-08 04:12:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1022100040', 'delete', '1240040820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1022220284', 'edit_detail', '1007220720', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1022249004', 'add', '1066299212', 'hasan', '2021-06-26 01:29:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1022297340', 'add', '1911308163', 'yusuf', '2021-07-13 04:01:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1022372155', 'add', '1275224204', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1022580990', 'edit', '1086229022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1023714123', 'add_detail', '1041911001', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1025024124', 'add_detail', '1312600610', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1025180444', 'edit_detail', '1011014645', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('102555421', 'edit', '221023024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1026008220', 'print', '1260500658', 'hasan', '2021-07-09 01:46:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1026120282', 'delete_detail', '1523200682', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1026622565', 'other', '1224825953', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1026907221', 'add', '1206026302', 'demo', '2021-06-19 02:33:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1026910262', 'add_detail', '1624206114', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1027620276', 'print', '1011292271', 'hasan', '2021-07-07 08:21:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1028580367', 'delete', '1100611646', 'hasan', '2021-06-28 02:38:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1029037020', 'add_detail', '1523200682', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1030135147', 'delete', '1075109184', 'yusuf', '2021-07-26 01:56:59', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1031030390', 'delete_detail', '1038077518', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1031706125', 'delete_detail', '1517980529', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1032572522', 'add_detail', '1023914327', 'yusuf', '2021-07-30 01:45:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('103333514', 'delete', '451201877', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1036130559', 'edit_detail', '1016991847', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1036710667', 'other', '1121266816', 'yusuf', '2021-07-16 07:57:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1038702223', 'add', '1621204416', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1040083262', 'edit', '1179900875', 'demo', '2021-07-09 02:06:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1040288166', 'edit', '1922102090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1040382495', 'edit', '1228016090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1040591208', 'add', '1180628030', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1040762112', 'add', '1122044314', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1041406350', 'add_detail', '1996227028', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1041502222', 'edit', '1850008665', 'hasan', '2021-06-22 07:45:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1041909720', 'delete', '1202655640', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1042860741', 'add', '1812421071', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1044022521', 'delete_detail', '1600235073', 'yusuf', '2021-07-26 03:15:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1044271420', 'delete', '1032078415', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1044662117', 'add', '1204222264', 'hasan', '2021-07-02 06:14:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1046002234', 'edit', '1424641440', 'hasan', '2021-06-14 02:12:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1046720040', 'edit', '1016819180', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1048626279', 'delete', '1624206114', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1050013655', 'edit', '1652000386', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1050851411', 'delete_detail', '1023914327', 'yusuf', '2021-07-30 01:45:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1050922038', 'delete_detail', '1752026714', 'yusuf', '2021-07-16 02:18:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1051012460', 'add_detail', '1016991847', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1051140410', 'other', '1800205480', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1051900300', 'delete_detail', '1382079385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1052374282', 'print', '1207725037', 'yusuf', '2021-07-27 06:55:24', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1055247660', 'delete', '1207725037', 'yusuf', '2021-07-27 06:16:56', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1056126040', 'other', '1011292271', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1057229947', 'excel', '1718246200', 'demo', '2021-07-13 02:03:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('105724268', 'edit', '149007870', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1058110286', 'add', '1170405592', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1059532949', 'edit_detail', '1000097736', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1059624750', 'edit', '1071800010', 'yusuf', '2021-08-07 00:53:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1060022722', 'add_detail', '1700242224', 'hasan', '2021-06-22 01:19:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1060421927', 'delete_detail', '1041911001', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1060510512', 'edit', '1321457611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1062129123', 'edit', '1621204416', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1062280215', 'delete', '1086229022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1062897250', 'add_detail', '1382079385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1063794193', 'edit', '1101765169', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1064240606', 'edit', '1331047383', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1066502347', 'edit_detail', '1201221112', 'yusuf', '2021-07-26 01:53:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1066616052', 'add', '1102756005', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1066979267', 'other', '1201221112', 'yusuf', '2021-07-26 01:53:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1067627402', 'add', '1023914327', 'yusuf', '2021-07-30 01:45:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1068272713', 'delete_detail', '1075109184', 'yusuf', '2021-07-26 01:56:59', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1069010802', 'excelimpdtl', '1007220720', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1070223431', 'delete_detail', '1572314062', 'yusuf', '2021-07-26 01:52:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1070373523', 'other', '1610023021', 'demo', '2021-07-13 01:37:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1070542635', 'edit', '1222677577', 'yusuf', '2021-07-26 01:59:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1070569742', 'delete', '1911308163', 'yusuf', '2021-07-13 04:01:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1070709901', 'add_detail', '1718246200', 'demo', '2021-07-13 02:02:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1071788382', 'delete', '1210758910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1072718480', 'delete', '1702028049', 'yusuf', '2021-07-14 02:30:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1074022162', 'edit', '1102756005', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1076368120', 'other', '1522232033', 'hasan', '2021-07-06 06:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1077562147', 'edit_detail', '1121420498', 'yusuf', '2021-07-26 01:57:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1077607195', 'delete', '1007881332', 'yusuf', '2021-07-28 03:53:10', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1077677042', 'print', '1572314062', 'yusuf', '2021-07-26 01:52:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1077832212', 'edit_detail', '1996227024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1077922500', 'edit', '1281155102', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1078147169', 'add', '1110171573', 'demo', '2021-07-13 01:39:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1078413382', 'print', '1702028049', 'yusuf', '2021-07-14 03:46:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1079096077', 'add', '1217881228', 'yusuf', '2021-07-26 01:56:42', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1081179218', 'edit', '1911308163', 'yusuf', '2021-07-13 04:01:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1083357002', 'add', '1007428608', 'ikhsan', '2021-06-08 04:12:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1085061248', 'delete', '1206026302', 'demo', '2021-06-19 02:33:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1086350909', 'delete', '1016991847', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1088835390', 'delete', '1146070097', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1090128272', 'edit', '1846029790', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1090407281', 'edit_detail', '1202240502', 'yusuf', '2021-07-26 01:58:31', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1090433260', 'excel', '1222130205', 'yusuf', '2021-08-12 07:21:09', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1090610716', 'edit_detail', '1210758910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1090700822', 'edit_detail', '1640260004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1090818919', 'delete_detail', '1206026302', 'demo', '2021-06-19 02:34:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1092112363', 'edit_detail', '1101765169', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1092579426', 'print', '1661140126', 'hasan', '2021-07-08 03:07:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1094914532', 'add', '1661101530', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1097022270', 'add', '1677856070', 'demo', '2021-07-09 02:16:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1098270013', 'add', '1996227028', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('11', 'delete_detail', '8', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1100162039', 'edit', '1800205480', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1100254020', 'edit', '1007826209', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1100997310', 'other', '1221012408', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1101217220', 'edit_detail', '1922102090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1101332996', 'add', '1233567096', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1101610646', 'edit_detail', '1011292271', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1101703091', 'delete_detail', '1331047383', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1102827673', 'print', '1201221112', 'yusuf', '2021-07-26 01:53:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1103626770', 'add_detail', '1027665576', 'hasan', '2021-06-25 06:01:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1105681412', 'add_detail', '1911308163', 'yusuf', '2021-07-13 04:15:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1107382200', 'print', '1728141022', 'demo', '2021-07-13 01:55:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1108036229', 'edit_detail', '1190347025', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1108085366', 'delete_detail', '1910009110', 'yusuf', '2021-07-14 03:01:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1108108130', 'edit', '1812421071', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1108112066', 'edit', '1207725037', 'yusuf', '2021-07-27 06:16:56', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1109122117', 'delete', '1600235073', 'yusuf', '2021-07-26 03:15:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1109261212', 'add', '1207725037', 'yusuf', '2021-07-27 06:16:56', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1109546750', 'add_detail', '1179046029', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1110330397', 'add_detail', '1002011160', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1110560970', 'edit_detail', '1522232033', 'hasan', '2021-07-05 06:50:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1110870831', 'delete', '1110171573', 'demo', '2021-07-13 01:39:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1112079525', 'edit', '1202240502', 'yusuf', '2021-07-26 01:58:31', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1112111152', 'edit_detail', '1032078415', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1112185028', 'edit_detail', '1272200863', 'ikhsan', '2021-06-18 07:13:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1112372224', 'id', '1112650249', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1112881621', 'add', '1122810005', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1113424102', 'add', '1769769322', 'yusuf', '2021-07-26 01:56:02', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1114041010', 'add_detail', '1602121807', 'demo', '2021-07-09 02:13:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1115019389', 'add', '1017250168', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1115721007', 'print', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1116632790', 'add_detail', '1907978018', 'yusuf', '2021-07-26 01:55:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1117017023', 'edit', '1041911001', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1117120035', 'edit', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1117408292', 'add', '1910822910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1117492820', 'edit', '1122044314', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1119826112', 'edit_detail', '1342211202', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1120059015', 'add', '1342211202', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1120242323', 'delete', '1922102090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1120266527', 'add_detail', '1600235073', 'yusuf', '2021-07-26 03:15:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1120628961', 'edit', '1210758910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1120692202', 'edit', '1217881228', 'yusuf', '2021-07-26 01:56:42', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1121121002', 'add', '1101404101', 'hasan', '2021-06-12 05:29:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1121422062', 'add', '1041911001', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1121611608', 'edit', '1418092328', 'ikhsan', '2021-06-08 06:50:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1121726029', 'add_detail', '1007428608', 'ikhsan', '2021-06-08 04:12:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1121824210', 'delete', '1907978018', 'yusuf', '2021-07-26 01:55:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1122029500', 'delete_detail', '1996226941', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1122461781', 'edit', '1998147029', 'demo', '2021-07-09 02:07:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1123235329', 'add', '1320008203', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1123260036', 'edit', '1191169238', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1124337232', 'print', '1718246200', 'demo', '2021-07-13 02:03:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1126372298', 'delete', '1702508008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1127041715', 'add', '1121266816', 'yusuf', '2021-07-16 07:57:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1128100563', 'delete', '1066299212', 'hasan', '2021-06-26 01:30:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('113070411', 'delete', '921592810', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1131022583', 'other', '1996227024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1132502202', 'edit', '1910822910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1132520628', 'add_detail', '1996227075', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1132531058', 'edit', '1728141022', 'demo', '2021-07-13 01:55:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1132906261', 'edit', '1340012278', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1135017037', 'print', '1952177682', 'yusuf', '2021-07-26 02:01:09', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1135050761', 'add', '1602121807', 'demo', '2021-07-09 02:13:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1138019301', 'edit_detail', '1123006861', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1138031301', 'excelimp', '1146070097', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1140423223', 'edit', '1872130028', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1140744566', 'delete', '1179046029', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1145427702', 'delete_detail', '1123006861', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1151012229', 'edit', '1272200863', 'ikhsan', '2021-06-18 07:13:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1151021600', 'delete', '1486020261', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1151230921', 'delete', '1011292271', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1152251721', 'delete_detail', '1192151323', 'hasan', '2021-07-05 03:08:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1152303676', 'add', '1112261610', 'yusuf', '2021-07-26 01:54:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1152955706', 'edit_detail', '1047844116', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1153241162', 'add_detail', '1769769322', 'yusuf', '2021-07-26 01:56:02', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1153613230', 'delete', '1952177682', 'yusuf', '2021-07-26 02:01:09', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1159065028', 'delete', '1682361115', 'demo', '2021-07-13 01:56:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1160010020', 'add', '1272200863', 'ikhsan', '2021-06-18 07:12:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1161313438', 'edit', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1161422100', 'delete', '1505812801', 'hasan', '2021-06-14 06:52:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1162002201', 'edit', '1996227028', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1162280130', 'print', '1522232033', 'hasan', '2021-07-06 06:43:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1162323842', 'add', '1830222569', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1162772240', 'delete', '1066604243', 'yusuf', '2021-07-26 01:59:58', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1164242159', 'add', '1952177682', 'yusuf', '2021-07-26 02:01:09', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1165911200', 'edit_detail', '1038077518', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1166121115', 'edit', '1047844116', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1167400722', 'add_detail', '1850061022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1168100501', 'edit', '1202655640', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1169206232', 'delete', '1260500658', 'hasan', '2021-06-26 05:34:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1171110136', 'add_detail', '1110132150', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1172702669', 'add', '1241327604', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1174160269', 'add_detail', '1572314062', 'yusuf', '2021-07-26 01:52:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1174810725', 'add', '1652000386', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1176798611', 'edit', '1769769322', 'yusuf', '2021-07-26 01:56:02', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1177271242', 'print', '1112261610', 'yusuf', '2021-07-26 01:54:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1178212042', 'add_detail', '1202692212', 'yusuf', '2021-07-14 02:59:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1179714861', 'add', '1996227078', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1181179222', 'edit', '1272939041', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1181271515', 'delete', '1202692212', 'yusuf', '2021-07-14 02:59:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1184221028', 'edit', '1996227075', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1186298022', 'add', '1260500658', 'hasan', '2021-06-26 05:34:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1191419112', 'add', '1190347025', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1192229120', 'delete', '1247212210', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1192622022', 'delete_detail', '1922102090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1198207100', 'delete_detail', '1321457611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('12', 'add_detail', '8', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1200210322', 'print', '1910009110', 'yusuf', '2021-07-14 03:01:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1200220814', 'delete', '1202240502', 'yusuf', '2021-07-26 01:58:31', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1200259319', 'edit_detail', '1996227075', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1200324629', 'delete_detail', '1247212210', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1200601165', 'edit', '1112261610', 'yusuf', '2021-07-26 01:54:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1200800028', 'add_detail', '1233025022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1201108022', 'edit', '1241327604', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1201113275', 'add', '1509341006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1201162697', 'edit_detail', '1066604243', 'yusuf', '2021-07-26 01:59:58', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1201488286', 'delete', '1621204416', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1201664867', 'delete', '1052064284', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1201712926', 'edit_detail', '1023914327', 'yusuf', '2021-07-30 01:45:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1202002124', 'delete_detail', '1996227028', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1202103220', 'edit', '1952177682', 'yusuf', '2021-07-26 02:01:09', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1202141121', 'add', '1011292271', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1202208222', 'edit', '1996227027', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1202220902', 'add', '1382079385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1202511474', 'edit', '1202692212', 'yusuf', '2021-07-14 02:59:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1202602791', 'other', '1112261610', 'yusuf', '2021-07-26 01:54:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1202701009', 'delete', '1509341006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1202705103', 'add', '1751247467', 'hasan', '2021-06-17 04:31:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1202951456', 'add_detail', '1047844116', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1203040211', 'add_detail', '1101765169', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1203102034', 'edit_detail', '1996227022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1203172972', 'edit', '1522232033', 'hasan', '2021-07-03 04:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1203180256', 'add', '1157390930', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1203222260', 'add', '1007881332', 'yusuf', '2021-07-28 03:53:10', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1203772422', 'other', '1208712139', 'yusuf', '2021-07-26 03:55:12', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1205196103', 'delete_detail', '1210758910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1206012280', 'edit_detail', '1110132150', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1207021200', 'edit_detail', '1996227027', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1207058170', 'edit', '1017250168', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1207128214', 'other', '1718246200', 'demo', '2021-07-13 02:03:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1207219292', 'delete', '1416000366', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1207940903', 'add_detail', '1000097736', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1208700790', 'add_detail', '1996226941', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1209210162', 'other', '1872130028', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1209407601', 'edit_detail', '1060220220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1209598060', 'add', '1661203071', 'hasan', '2021-06-09 02:12:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1210006262', 'edit', '1121420498', 'yusuf', '2021-07-26 01:57:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1210524670', 'delete', '1017250168', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1210609570', 'add_detail', '1192151323', 'hasan', '2021-07-05 03:08:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1210910842', 'other', '1210758910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1211746151', 'edit_detail', '5', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1211773540', 'print', '1179900875', 'demo', '2021-07-09 02:06:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1212005116', 'edit', '1628019051', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('121212029', 'delete', '612022925', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1212402119', 'add_detail', '1702028049', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1213638925', 'edit_detail', '1007428608', 'ikhsan', '2021-06-08 04:12:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1213680225', 'delete', '1180628030', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1214087671', 'edit', '1509341006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1215287114', 'delete', '1728141022', 'demo', '2021-07-13 01:55:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1215851001', 'edit', '1410618602', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1216313101', 'delete_detail', '1110132150', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1216702072', 'delete_detail', '1179900875', 'demo', '2021-07-09 02:06:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1217110273', 'edit', '1192151323', 'hasan', '2021-07-05 03:08:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1217927107', 'delete', '1121266816', 'yusuf', '2021-07-16 07:57:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1220005160', 'delete', '1036018301', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1220020328', 'delete', '1331047383', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1220080770', 'edit', '1677856070', 'demo', '2021-07-09 02:16:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1220152178', 'add_detail', '1086229022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1220265210', 'edit', '1602102590', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1220331884', 'add', '1222130205', 'yusuf', '2021-08-12 06:20:25', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1220876068', 'edit_detail', '1624206114', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1221130640', 'add_detail', '1240068220', 'hasan', '2021-06-11 01:39:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1221221068', 'delete_detail', '1066604243', 'yusuf', '2021-07-26 01:59:58', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1222101333', 'delete_detail', '1718246200', 'demo', '2021-07-13 02:02:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1222120302', 'edit', '1793722232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1222202011', 'add_detail', '1996227027', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1222367328', 'delete_detail', '1769769322', 'yusuf', '2021-07-26 01:56:02', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1222694248', 'edit_detail', '1509341006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1222730779', 'add', '1202692212', 'yusuf', '2021-07-14 02:59:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1223050221', 'edit_detail', '1247212210', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1223226222', 'add_detail', '1121420498', 'yusuf', '2021-07-26 01:57:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1224101110', 'edit', '1526002026', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1224197361', 'edit_detail', '1996227034', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1225043750', 'add', '1066604243', 'yusuf', '2021-07-26 01:59:58', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1225100569', 'delete', '1430261688', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1225202062', 'add', '1996227024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('122522400', 'edit', '022064040', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('122542420', 'delete', '512152022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1225801500', 'delete', '1523200682', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1225932711', 'excel', '1334101020', 'hasan', '2021-06-16 07:20:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1226202968', 'add_detail', '1702508008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1226903662', 'add_detail', '1224466327', 'yusuf', '2021-07-26 02:00:32', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1227132496', 'add', '1752026714', 'yusuf', '2021-07-16 02:18:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1227209407', 'edit_detail', '1179900875', 'demo', '2021-07-09 02:06:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1227283858', 'other', '1110171573', 'demo', '2021-07-13 01:39:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1227921081', 'other', '1007881332', 'yusuf', '2021-07-28 03:53:10', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1228072556', 'edit_detail', '1700242224', 'hasan', '2021-06-22 01:19:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1228377028', 'delete', '1398100227', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1228498629', 'add', '1996227034', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1228523021', 'other', '1321457611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1229002259', 'add_detail', '1179900875', 'demo', '2021-07-09 02:06:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1229068812', 'edit', '1173012735', 'demo', '2021-06-19 02:37:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1229490514', 'delete_detail', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1230312010', 'add', '1922716102', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1231622344', 'delete', '1752026714', 'yusuf', '2021-07-16 02:18:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1232021302', 'delete_detail', '1996227024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1232048816', 'add', '1230020055', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1235000025', 'edit', '1320008203', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1236028003', 'delete', '1016819180', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1238092021', 'edit_detail', '1600235073', 'yusuf', '2021-07-26 03:15:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1239075112', 'add_detail', '1320008203', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1239100442', 'edit', '1996226941', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1242203919', 'add', '1793722232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1242252904', 'add', '1523200682', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1246128247', 'add', '1902130923', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1248412200', 'delete', '1424641440', 'hasan', '2021-06-14 02:12:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1249696029', 'edit', '1342211202', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1250000260', 'delete', '1602121807', 'demo', '2021-07-09 02:13:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1250000972', 'edit', '1275224204', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1250234262', 'edit', '1122810005', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('125040000', 'edit', '465005232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1251320283', 'other', '1410618602', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1252003875', 'edit', '1718246200', 'demo', '2021-07-13 02:02:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1252075466', 'edit', '1996227078', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1252092500', 'add', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1252121215', 'excel', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1252875704', 'delete', '1190347025', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1257237820', 'add', '1729720580', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1260011613', 'add', '1282111190', 'demo', '2021-06-19 02:32:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1261026628', 'add_detail', '1075109184', 'yusuf', '2021-07-26 01:56:59', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1262202714', 'delete', '1661140126', 'hasan', '2021-06-23 02:22:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1262760310', 'add', '1430261688', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1263076969', 'add_detail', '1201221112', 'yusuf', '2021-07-26 01:53:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1263322127', 'add_detail', '1910822910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1265308007', 'edit', '1600235073', 'yusuf', '2021-07-26 03:15:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1266080689', 'add', '1620070404', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1266165499', 'add', '1518862186', 'demo', '2021-06-19 04:16:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1268022100', 'edit_detail', '1240068220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1268464100', 'delete_detail', '1312600610', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1270960329', 'delete_detail', '1066299212', 'yusuf', '2021-08-06 04:26:33', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1271012272', 'edit_detail', '1041911001', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1273320716', 'add', '1910009110', 'yusuf', '2021-07-14 03:01:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1273855641', 'edit', '1523200682', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1274823852', 'edit', '1996227044', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1275554100', 'edit', '1910009110', 'yusuf', '2021-07-14 03:01:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1278772346', 'add', '1996227022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1280203800', 'edit_detail', '1517980529', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1281122650', 'edit', '1110610677', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1282320212', 'delete', '1769769322', 'yusuf', '2021-07-26 01:56:02', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1284653803', 'add_detail', '1321457611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1286102104', 'add', '1442281906', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1289410202', 'edit', '1224466327', 'yusuf', '2021-07-26 02:00:32', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1290000070', 'edit', '1034307209', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1290209890', 'add_detail', '1038077518', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1290421120', 'add_detail', '1342211202', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1292002121', 'delete_detail', '1221060907', 'hasan', '2021-06-14 01:09:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1292250999', 'edit_detail', '1382079385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1292312869', 'print', '1602121807', 'demo', '2021-07-09 02:13:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1292390979', 'add', '1002011160', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1296224612', 'add_detail', '1190347025', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1296625094', 'add', '1702508008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1298635062', 'delete', '1718246200', 'demo', '2021-07-13 02:02:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1299410602', 'add', '1942589385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1300721843', 'add', '1049002186', 'hasan', '2021-06-09 01:48:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1302009893', 'edit_detail', '1769769322', 'yusuf', '2021-07-26 01:56:02', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1303012850', 'add_detail', '1286157208', 'yusuf', '2021-07-26 01:59:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1304058002', 'delete_detail', '1233567096', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1304605501', 'edit', '1290077081', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1310292009', 'delete', '1942589385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1311152276', 'delete', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1312511189', 'delete_detail', '1146070097', 'hasan', '2021-06-19 02:20:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1314170532', 'add', '1996227076', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1315233420', 'edit', '1000158929', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1315375023', 'edit', '1996227022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1315402700', 'add_detail', '1640260004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1316602959', 'print', '1066604243', 'yusuf', '2021-07-26 01:59:58', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1316626011', 'excel', '1173012735', 'demo', '2021-06-19 03:39:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1317224121', 'delete', '5', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1320000171', 'edit', '1190347025', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1320015843', 'edit_detail', '1002011160', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1320191121', 'edit', '1060872120', 'yusuf', '2021-07-13 04:37:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1320208009', 'print', '1996226941', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1320252220', 'print', '1023914327', 'yusuf', '2021-07-30 03:45:49', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1320556601', 'add_detail', '1522232033', 'hasan', '2021-07-05 06:50:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1322002014', 'edit', '1230020055', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1322122084', 'edit', '1996227043', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1322932177', 'print', '1286157208', 'yusuf', '2021-07-26 01:59:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1323527922', 'edit_detail', '1996227078', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1325220404', 'edit', '1562038055', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1327522073', 'edit_detail', '1086229022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ucp_site_menu_properties` (`id`, `prop`, `id_groupmenu`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1332002140', 'add_detail', '1728141022', 'demo', '2021-07-13 01:55:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1335101273', 'edit', '1023914327', 'yusuf', '2021-07-30 01:45:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1340623949', 'edit_detail', '1102756005', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1342404916', 'add_detail', '1846029790', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1343100052', 'edit', '1460589094', 'demo', '2021-06-19 02:45:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1343221480', 'add', '1233025022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1346120613', 'other', '1282111190', 'demo', '2021-07-13 01:40:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1351110420', 'edit', '1032078415', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1352001464', 'add', '1021001090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1353961210', 'add', '1822327440', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1359528061', 'edit', '1027665576', 'hasan', '2021-06-25 06:01:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1360002506', 'edit_detail', '1621204416', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1360219209', 'add', '1250004963', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1360531222', 'edit', '1700242224', 'hasan', '2021-06-22 01:19:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1360830300', 'delete', '1157390930', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1374706005', 'edit', '1204222264', 'hasan', '2021-07-02 06:27:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1380128222', 'other', '1073370089', 'yusuf', '2021-08-13 02:27:23', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1380202562', 'edit', '1996227034', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1381287247', 'edit', '1996227076', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1381833210', 'other', '1602121807', 'demo', '2021-07-13 01:40:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1384740049', 'edit', '1006600280', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1386638032', 'delete_detail', '1282111190', 'demo', '2021-06-19 02:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('138902213', 'add', '080421020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1390271084', 'add_detail', '1007220720', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1394008027', 'add_detail', '1996227076', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1397312132', 'delete', '1112261610', 'yusuf', '2021-07-26 01:54:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1400020116', 'edit', '1206026302', 'demo', '2021-06-19 02:33:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1400029499', 'print', '1206026302', 'demo', '2021-06-19 02:34:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1400222496', 'edit_detail', '1312600610', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1401315822', 'add_detail', '1628019051', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1402215711', 'edit_detail', '1846029790', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('140230201', 'edit_detail', '549048000', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1402683513', 'edit', '1922716102', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1402702525', 'delete', '1023914327', 'yusuf', '2021-07-30 01:45:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1403433412', 'other', '1752026714', 'yusuf', '2021-07-16 02:18:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1404200208', 'delete', '1290077081', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1405206478', 'add_detail', '1210758910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1407120290', 'delete', '1522232033', 'hasan', '2021-07-03 04:20:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1408221158', 'add', '1624206114', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1410281847', 'edit_detail', '1321457611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1410320192', 'edit', '1250004963', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1410606493', 'add', '1996226941', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('141092221', 'edit_detail', '820943246', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1412214719', 'add', '1522232033', 'hasan', '2021-07-03 04:19:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('141250231', 'add', '819106275', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1417017219', 'print', '1769769322', 'yusuf', '2021-07-26 01:56:02', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1420013126', 'add', '1007826209', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1420090588', 'add', '1011020006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1420203062', 'delete', '1971400207', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1421132222', 'delete', '1006600280', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1421135482', 'delete', '1233567096', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1421216197', 'other', '1910009110', 'yusuf', '2021-07-14 03:02:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1421813939', 'edit', '1002011160', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1422203288', 'edit', '1201100199', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1423503701', 'edit', '1971400207', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1427201881', 'print', '1752026714', 'yusuf', '2021-07-16 02:18:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1427873149', 'delete', '1', 'demo', '2021-07-13 04:16:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1429702125', 'delete_detail', '1002011160', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1430031121', 'add_detail', '1201100199', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1431347978', 'add', '1996227027', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1432986467', 'add', '1907978018', 'yusuf', '2021-07-26 01:55:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1434121524', 'edit_detail', '1221060907', 'yusuf', '2021-08-14 03:35:46', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1445039072', 'add', '1602102590', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1451125615', 'delete', '1027665576', 'hasan', '2021-06-25 06:01:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1452023860', 'add', '1486020261', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1456281260', 'add', '1016991847', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1460032027', 'add', '1201221112', 'yusuf', '2021-07-26 01:53:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1460746460', 'add', '1505812801', 'hasan', '2021-06-14 06:52:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1460950208', 'edit', '1146070097', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1462032224', 'add_detail', '1509341006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1462608280', 'edit', '1620070404', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1465722019', 'edit', '1902130923', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1466667056', 'delete', '1850061022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1467006500', 'other', '1661101530', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1471400120', 'add_detail', '1250004963', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1472156410', 'add', '1996227032', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1472981120', 'edit_detail', '1179046029', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1479720927', 'delete_detail', '1522232033', 'hasan', '2021-07-05 06:50:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1479956682', 'edit', '1517980529', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1480223522', 'edit_detail', '1996227076', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1485099062', 'add', '1016819180', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1485102101', 'add_detail', '1011292271', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1491063088', 'add', '1398100227', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1492994622', 'delete', '1700242224', 'hasan', '2021-06-22 01:19:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1495192902', 'add_detail', '1772920200', 'hasan', '2021-07-09 03:25:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1496320239', 'edit', '1505812801', 'hasan', '2021-06-14 06:52:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1500538022', 'delete_detail', '1624206114', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1501287821', 'delete_detail', '1002011160', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1501466165', 'add', '1572314062', 'yusuf', '2021-07-26 01:52:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1502282068', 'delete', '1241327604', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1502294966', 'edit', '1180628030', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1503208197', 'add_detail', '1228016090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1503231913', 'add', '1101765169', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1506037021', 'delete', '1191169238', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1506298027', 'edit', '1223021739', 'ikhsan', '2021-06-08 04:13:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1506321193', 'edit', '1179046029', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1511661416', 'add', '1850061022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1519102145', 'delete', '1910009110', 'yusuf', '2021-07-14 03:01:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1520952201', 'other', '242500775', 'hasan', '2021-06-22 09:11:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1520993302', 'add', '1086229022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1521008221', 'delete', '1772920200', 'hasan', '2021-07-09 03:25:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1522010420', 'edit_detail', '1222201738', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1526065362', 'delete_detail', '1007428608', 'ikhsan', '2021-06-08 04:12:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1528030049', 'add_detail', '1102756005', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1529012913', 'edit', '1822327440', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1530014386', 'delete', '1272200863', 'ikhsan', '2021-06-18 07:12:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1530881202', 'edit', '1222130205', 'yusuf', '2021-08-12 06:20:25', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1532290011', 'edit', '1996227032', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('153415262', 'edit', '006112282', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1539672522', 'excelimpdtl', '1382079385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1540253891', 'delete', '1201221112', 'yusuf', '2021-07-26 01:53:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1542020206', 'add_detail', '1996227024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('154443117', 'print', '247022302', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1546900952', 'delete_detail', '1260500658', 'hasan', '2021-06-26 05:34:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1550030097', 'add', '1026155190', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1552110311', 'add_detail', '1011014645', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1554475665', 'add', '1526002026', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1562423099', 'edit', '1011020006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1563013228', 'add_detail', '1996227078', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1564837133', 'other', '1207725037', 'yusuf', '2021-07-27 06:55:24', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1567025360', 'edit', '1233025022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1567103207', 'delete', '1192151323', 'hasan', '2021-07-05 03:08:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1568752044', 'add', '1424641440', 'hasan', '2021-06-14 02:12:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1570177094', 'print', '1121266816', 'yusuf', '2021-07-16 07:57:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1570898008', 'edit_detail', '1702508008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1571022200', 'delete', '1034307209', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1572177001', 'delete', '1041911001', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1572623300', 'delete', '1121420498', 'yusuf', '2021-07-26 01:57:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1572840610', 'delete', '1071800010', 'yusuf', '2021-08-07 00:53:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1573102222', 'edit', '1038077518', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1574135772', 'delete_detail', '1201221112', 'yusuf', '2021-07-26 01:53:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1577020001', 'add', '1060220220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1579201700', 'add_detail', '1910009110', 'yusuf', '2021-07-14 03:01:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1581112079', 'delete', '1321457611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1581221112', 'delete_detail', '1640260004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1582021019', 'edit_detail', '1217881228', 'yusuf', '2021-07-26 01:56:42', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('158360000', 'delete', '775020013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1584040524', 'add', '1027665576', 'hasan', '2021-06-25 06:01:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1586591005', 'edit_detail', '1233025022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1591659462', 'edit', '1661101530', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1592828762', 'edit_detail', '1907978018', 'yusuf', '2021-07-26 01:55:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1597173933', 'other', '1728141022', 'demo', '2021-07-13 01:55:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1600021711', 'delete', '1652000386', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1600791552', 'delete', '1223021739', 'ikhsan', '2021-06-08 04:13:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1600964048', 'edit_detail', '1850008665', 'hasan', '2021-06-08 07:40:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1601314019', 'edit', '1036018301', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1601787083', 'add_detail', '1233567096', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1602004354', 'add', '1121420498', 'yusuf', '2021-07-26 01:57:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1602463008', 'add', '1640260004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1602601605', 'add_detail', '1066299212', 'yusuf', '2021-08-06 04:26:33', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1604202879', 'add', '1007220720', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1605792117', 'edit_detail', '1523200682', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1606005055', 'edit', '1950880121', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1606200206', 'delete', '1902130923', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1606223738', 'add_detail', '1206026302', 'demo', '2021-06-19 02:34:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1607121127', 'edit', '1221012408', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1609912292', 'edit', '1000097736', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1610005050', 'other', '1950880121', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1610181261', 'edit', '1129102495', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1611192812', 'edit', '1011292271', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1611908225', 'edit_detail', '1224466327', 'yusuf', '2021-07-26 02:00:32', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1612222661', 'add', '1600235073', 'yusuf', '2021-07-26 03:15:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1612372702', 'delete_detail', '1011292271', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1612462581', 'other', '1286157208', 'yusuf', '2021-07-26 01:59:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1612490501', 'delete_detail', '1121420498', 'yusuf', '2021-07-26 01:57:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1613227100', 'add', '1222677577', 'yusuf', '2021-07-26 01:59:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1619491805', 'other', '1769769322', 'yusuf', '2021-07-26 01:56:02', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1619621618', 'add', '1221060907', 'hasan', '2021-06-14 01:09:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1620012571', 'excel', '1334101020', 'hasan', '2021-06-17 02:28:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1620344011', 'print', '1505812801', 'hasan', '2021-06-14 06:53:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1621803510', 'edit_detail', '1017250168', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1622211270', 'add_detail', '1112261610', 'yusuf', '2021-07-26 01:54:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1622535184', 'delete', '1185160442', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1622902250', 'delete_detail', '1907978018', 'yusuf', '2021-07-26 01:55:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1625925094', 'add_detail', '1282111190', 'demo', '2021-06-19 02:33:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1626261211', 'edit', '1282111190', 'demo', '2021-06-19 02:33:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1626542221', 'add', '1700242224', 'hasan', '2021-06-22 01:19:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1626661684', 'edit_detail', '1260500658', 'hasan', '2021-06-26 05:34:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1627900804', 'delete', '1000158929', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1627904677', 'delete', '1026155190', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1628000002', 'delete', '1007428608', 'ikhsan', '2021-06-08 04:12:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1628267121', 'add', '1100611646', 'hasan', '2021-06-28 02:38:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1628772978', 'add', '1014326247', 'yusuf', '2021-07-26 03:26:32', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1629115013', 'add_detail', '1517980529', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1630298288', 'edit', '1073370089', 'yusuf', '2021-08-13 02:27:23', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1634781214', 'edit', '5', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1636202234', 'add_detail', '1202240502', 'yusuf', '2021-07-26 01:58:31', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1640190561', 'edit_detail', '1250004963', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1641862508', 'edit', '1416000366', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1647063188', 'edit_detail', '1486020261', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1648252051', 'edit', '1066299212', 'hasan', '2021-06-26 01:30:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1650701518', 'edit', '1110132150', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1652223256', 'delete_detail', '1224466327', 'yusuf', '2021-07-26 02:00:32', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1658601333', 'edit', '1702028049', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1660029807', 'add', '1228016090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1661028622', 'add_detail', '1260500658', 'hasan', '2021-06-26 05:34:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1661372021', 'edit', '1602121807', 'demo', '2021-07-09 02:13:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1662326299', 'edit_detail', '1331047383', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1663636500', 'add', '1224825953', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1665025511', 'edit', '1016991847', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1665210604', 'edit', '1661140126', 'hasan', '2021-06-23 02:22:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1672036569', 'add_detail', '1752026714', 'yusuf', '2021-07-16 02:18:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1672532505', 'edit_detail', '1526002026', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1675227201', 'edit', '1907978018', 'yusuf', '2021-07-26 01:55:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1675411062', 'delete_detail', '1086229022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1676181012', 'delete_detail', '1223021739', 'ikhsan', '2021-06-08 04:13:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1680100603', 'add', '1201100199', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1680743022', 'other', '1066604243', 'yusuf', '2021-07-26 01:59:58', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1682049679', 'edit_detail', '1075109184', 'yusuf', '2021-07-26 01:56:59', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1682146802', 'other', '1260500658', 'yusuf', '2021-07-14 01:24:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1685829726', 'edit_detail', '1121266816', 'yusuf', '2021-07-16 07:57:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1689512520', 'add', '1185160442', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1690025185', 'add_detail', '1486020261', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1690622865', 'print', '1907978018', 'yusuf', '2021-07-26 01:55:13', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1691546103', 'delete_detail', '1121266816', 'yusuf', '2021-07-16 07:57:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1693080071', 'print', '1998147029', 'demo', '2021-07-09 02:07:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1696808654', 'edit_detail', '1233567096', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1697009206', 'edit_detail', '1240040820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1700990578', 'add', '1998147029', 'demo', '2021-07-09 02:07:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1701102220', 'add', '1202655640', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1702476088', 'add_detail', '1217881228', 'yusuf', '2021-07-26 01:56:42', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1703066622', 'edit', '1221060907', 'hasan', '2021-06-14 01:09:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1703980211', 'edit_detail', '1996227032', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1704748236', 'edit', '1060220220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1705105194', 'add', '1173012735', 'demo', '2021-06-19 02:36:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1706760193', 'add', '1224466327', 'yusuf', '2021-07-26 02:00:32', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1707270101', 'add', '1000158929', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1708734114', 'delete_detail', '1202692212', 'yusuf', '2021-07-14 02:59:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1709222002', 'delete_detail', '1179046029', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1710008000', 'edit', '1486020261', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1711417909', 'edit', '1110171573', 'demo', '2021-07-13 01:39:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1712107856', 'other', '1331047383', 'demo', '2021-07-13 01:36:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1712382009', 'edit_detail', '1192151323', 'hasan', '2021-07-05 03:08:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1713141800', 'delete', '1998147029', 'demo', '2021-07-09 02:07:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1713228009', 'other', '1179900875', 'demo', '2021-07-13 01:39:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1718094129', 'add', '1971400207', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1718106170', 'delete', '1812421071', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1720706104', 'add_detail', '1221060907', 'hasan', '2021-06-14 01:09:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1722131223', 'add', '1221012408', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1722244010', 'edit', '1062606110', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1722619632', 'edit_detail', '1572314062', 'yusuf', '2021-07-26 01:52:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1722875425', 'other', '1952177682', 'yusuf', '2021-07-26 02:01:09', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('172401720', 'edit', '200229700', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1725316082', 'add', '1223021739', 'ikhsan', '2021-06-08 04:13:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1726090226', 'add', '1038077518', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1726540781', 'delete_detail', '1112261610', 'yusuf', '2021-07-26 01:54:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1726714432', 'edit', '1572314062', 'yusuf', '2021-07-26 01:52:55', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1727841102', 'edit', '1201221112', 'yusuf', '2021-07-26 01:53:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1728381920', 'add', '1192151323', 'hasan', '2021-07-05 03:08:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1728815095', 'edit', '1260500658', 'hasan', '2021-06-26 05:34:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1729341000', 'delete_detail', '1007220720', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1730069023', 'edit', '1049002186', 'hasan', '2021-06-09 01:48:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1732601122', 'add', '1210758910', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1734610037', 'edit', '1101404101', 'hasan', '2021-06-12 05:29:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1740172902', 'add_detail', '1066604243', 'yusuf', '2021-07-26 01:59:58', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1740202452', 'edit', '1942589385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1741076170', 'add', '1850008665', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1747792129', 'other', '1517980529', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1749403020', 'delete', '1007826209', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1750290192', 'add', '1418092328', 'ikhsan', '2021-06-08 06:50:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1752129042', 'edit', '1729720580', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1753127142', 'delete', '1122044314', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1756618634', 'delete', '1640260004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1761420860', 'edit', '1123006861', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1761692034', 'edit', '1702508008', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1762003313', 'edit', '1398100227', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1767401292', 'edit', '1121266816', 'yusuf', '2021-07-16 07:57:52', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1768077229', 'print', '1996227027', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1770100413', 'print', '1846029790', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1770197874', 'other', '1996226941', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1771027231', 'add', '1060872120', 'yusuf', '2021-07-13 04:37:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('177134828', 'add', '169369010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1772022064', 'delete', '1011020006', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1773226022', 'edit_detail', '1996226941', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1775249192', 'add', '1410618602', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1775770067', 'delete', '1217881228', 'yusuf', '2021-07-26 01:56:42', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1776044212', 'edit', '1100611646', 'hasan', '2021-06-28 02:38:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1780405908', 'add', '1290077081', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1782726020', 'add', '1416000366', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1787577720', 'edit_detail', '1728141022', 'demo', '2021-07-13 01:55:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1789255028', 'edit_detail', '1718246200', 'demo', '2021-07-13 02:02:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1792262012', 'add', '1846029790', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1792757406', 'delete', '1342211202', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1796723507', 'edit', '1007881332', 'yusuf', '2021-07-28 03:53:10', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1800424245', 'add_detail', '1996227022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1801000042', 'edit', '1240040820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1801024932', 'add', '1996227075', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1801200015', 'add_detail', '1996227034', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1802900800', 'delete_detail', '1846029790', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1803970992', 'edit_detail', '1562038055', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1806906607', 'delete_detail', '1202240502', 'yusuf', '2021-07-26 01:58:31', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1809000296', 'edit_detail', '1331047383', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1810101237', 'add', '1682361115', 'demo', '2021-07-13 01:56:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1810522609', 'edit', '1066604243', 'yusuf', '2021-07-26 01:59:58', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1811166293', 'add', '1071800010', 'yusuf', '2021-08-07 00:53:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1811270813', 'delete', '1060872120', 'yusuf', '2021-07-13 04:37:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1811507215', 'edit', '1011014645', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1811727025', 'edit_detail', '3', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1812209511', 'edit_detail', '1223021739', 'ikhsan', '2021-06-08 04:13:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1812229325', 'add_detail', '1996227032', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1812584724', 'edit', '1052064284', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('181282521', 'edit_detail', '169369010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1819060682', 'edit_detail', '1066299212', 'yusuf', '2021-08-06 04:26:33', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1819712452', 'add', '1702028049', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1820612567', 'edit', '1850061022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1821900061', 'edit_detail', '1201100199', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1822002256', 'add_detail', '1036018301', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1822188112', 'delete', '1222130205', 'yusuf', '2021-08-12 06:20:25', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1822208009', 'delete_detail', '1233025022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1822425065', 'add_detail', '1621204416', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1824026709', 'add_detail', '1222201738', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1827312270', 'other', '1996227078', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1829011000', 'delete', '1049002186', 'hasan', '2021-06-09 01:49:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1830081921', 'delete', '1179900875', 'demo', '2021-07-09 02:06:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1832502620', 'delete', '1222677577', 'yusuf', '2021-07-26 01:59:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('183750233', 'add', '960353212', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1839907204', 'delete', '1996227027', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1841915405', 'edit', '1640260004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1842072202', 'delete_detail', '1228016090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1849022112', 'add', '1628019051', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1852707076', 'edit_detail', '1071800010', 'yusuf', '2021-08-07 00:53:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1857918362', 'add', '1610023021', 'demo', '2021-06-19 02:38:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1860422242', 'edit', '1442281906', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1861800900', 'add_detail', '1071800010', 'yusuf', '2021-08-07 00:53:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1864200012', 'delete', '1123006861', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1868906872', 'add_detail', '1223021739', 'ikhsan', '2021-06-08 04:13:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1869432415', 'print', '1110171573', 'demo', '2021-07-13 01:39:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1870000007', 'edit', '1233567096', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1870030759', 'add', '1240040820', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1870519126', 'excel', '1728141022', 'demo', '2021-07-13 01:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1875090629', 'add', '1718246200', 'demo', '2021-07-13 02:02:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1879720839', 'delete_detail', '1190347025', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1885001207', 'add_detail', '1562038055', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('188814611', 'edit_detail', '421971259', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1888652271', 'add_detail', '1272200863', 'ikhsan', '2021-06-18 07:13:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1890771945', 'other', '1505812801', 'hasan', '2021-06-17 07:54:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1900200052', 'edit', '1430261688', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1900200992', 'add', '1006600280', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1900430227', 'edit', '1157390930', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1901228050', 'add', '1312600610', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1902511023', 'add', '1179046029', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1902622202', 'edit', '1160926824', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1906559612', 'add_detail', '1526002026', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1906890371', 'edit', '1518862186', 'demo', '2021-06-19 04:16:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1909071660', 'add', '1202240502', 'yusuf', '2021-07-26 01:58:31', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1909605329', 'add', '1036018301', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1912981218', 'add', '1321457611', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('191728000', 'delete_detail', '420020527', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1918315180', 'add', '1', 'demo', '2021-07-13 04:16:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1919532094', 'delete', '1221012408', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1920024055', 'add', '1240068220', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1920232022', 'edit', '1382079385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1921881182', 'delete_detail', '1201100199', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1922265099', 'delete', '1382079385', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1922293690', 'add', '1517980529', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1922831286', 'add', '1191169238', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1924772120', 'add_detail', '1222677577', 'yusuf', '2021-07-26 01:59:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1926002012', 'other', '1228016090', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1927217867', 'edit', '1026155190', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1929061900', 'add', '1034307209', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1932062352', 'add_detail', '1998147029', 'demo', '2021-07-09 02:07:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1932151635', 'edit', '1682361115', 'demo', '2021-07-13 01:56:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1932211081', 'edit', '1312600610', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1933423120', 'edit', '1996227024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1935230536', 'other', '1996227034', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1937811941', 'add_detail', '1017250168', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1941202183', 'edit_detail', '1996227028', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1946981160', 'delete', '1282111190', 'demo', '2021-06-19 02:33:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1949212013', 'edit_detail', '1191169238', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1951102400', 'edit_detail', '1146070097', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1951972182', 'print', '1272939041', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1952002004', 'add', '1222201738', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1953340120', 'add', '1129102495', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1957811228', 'edit', '1752026714', 'yusuf', '2021-07-16 02:18:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1960714619', 'print', '1221060907', 'hasan', '2021-06-16 01:07:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('196271122', 'edit', '296621255', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1964188030', 'add', '1032078415', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1965909836', 'edit_detail', '1282111190', 'demo', '2021-06-19 02:33:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1966620942', 'edit_detail', '1016819180', 'demo', '2021-06-19 03:02:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1973072470', 'edit_detail', '1286157208', 'yusuf', '2021-07-26 01:59:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1976102103', 'edit', '1661203071', 'hasan', '2021-06-09 02:14:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1980981821', 'edit_detail', '1202692212', 'yusuf', '2021-07-14 02:59:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1988706775', 'edit_detail', '1752026714', 'yusuf', '2021-07-16 02:18:47', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1989329622', 'add', '1075109184', 'yusuf', '2021-07-26 01:56:59', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('1990311017', 'add', '1011014645', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1992252500', 'delete', '1846029790', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1997220603', 'add', '1661140126', 'hasan', '2021-06-23 02:22:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1999907267', 'delete', '1286157208', 'yusuf', '2021-07-26 01:59:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('200012087', 'other', '922537022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('200150353', 'delete_detail', '451201877', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('200292040', 'delete', '221023024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('200735001', 'edit_detail', '090272705', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('200948031', 'add_detail', '512152022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('201006680', 'edit_detail', '006537592', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('201321207', 'delete_detail', '512152022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('203047024', 'delete', '149007870', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('203862422', 'add_detail', '420020527', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('204005463', 'edit_detail', '868324500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('206300608', 'add', '775020013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('208780602', 'add', '372527180', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('209200835', 'print', '149007870', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('212723202', 'add', '921592810', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('214020570', 'other', '77736-218', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('215622041', 'delete_detail', '247022302', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('219691957', 'edit', '819106275', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('220201073', 'edit_detail', '532006351', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('220620371', 'edit_detail', '221023024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('222000920', 'add_detail', '221023024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('222605293', 'excel', '695227481', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('224300002', 'delete_detail', '532006351', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('224996200', 'edit', '342224450', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('230063030', 'delete_detail', '612022925', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('231422208', 'edit', '549048000', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('233094322', 'add', '612022925', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('236783807', 'add', '149007870', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('237050280', 'add', '8', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('253212293', 'edit', '157510734', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('267983100', 'add_detail', '820943246', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('270024322', 'excel', '804746020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('280600042', 'print', '221023024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('281444228', 'add', '549048000', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('282075007', 'add', '206069772', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('284090225', 'add_detail', '006537592', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('287094123', 'add_detail', '169369010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('289698217', 'add', '247022302', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('290250510', 'edit', '006537592', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('292078922', 'delete', '532006351', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('292100208', 'add_detail', '465005232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('292526211', 'add', '261175001', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('293907024', 'delete', '418687500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('3', 'add', '5', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('300401287', 'other', '868324500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('301208066', 'add_detail', '451201877', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('302640084', 'edit', '922537022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('308285032', 'edit_detail', '242500775', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('309962882', 'edit', '77736-218', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('312162118', 'add_detail', '421971259', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('313265616', 'edit', '033062505', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('318032252', 'edit', '112136101', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('320392032', 'print', '242500775', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('321622119', 'edit', '820943246', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('324404633', 'print', '080421020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('326003480', 'other', '775020013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('330493406', 'add', '465005232', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('330590501', 'edit', '700002102', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('331438282', 'add_detail', '157510734', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('334221002', 'other', '033062505', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('345263729', 'edit_detail', '200229700', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('369528226', 'add_detail', '200229700', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('371220221', 'edit_detail', '420020527', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('384632203', 'delete', '242500775', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('4', 'add', '7', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('402200905', 'add', '006537592', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('404574424', 'other', '247022302', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('406090920', 'add_detail', '532006351', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('409002265', 'add', '090272705', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('411069346', 'edit', '451201877', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('411728728', 'edit', '7', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('412020260', 'delete', '549048000', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('412122402', 'edit', '532006351', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('420221042', 'delete', '072735800', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('420332682', 'delete_detail', '242500775', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('421210470', 'excel', '221023024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('440242333', 'edit', '072735800', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('444402804', 'delete_detail', '549048000', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('444685300', 'edit', '372527180', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('470202202', 'add_detail', '072735800', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('482197064', 'add', '302320500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('502284062', 'print', '804746020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('502983000', 'add', '451201877', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('510030001', 'edit_detail', '451201877', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('511576512', 'delete', '820943246', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('520220069', 'add', '420020527', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('521562532', 'other', '149007870', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('529242191', 'edit', '612022925', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('529315962', 'delete_detail', '418687500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('544013214', 'add_detail', '549048000', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('550619921', 'add', '112136101', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('553920932', 'add_detail', '418687500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('573220802', 'add', '072735800', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('580292073', 'delete', '922537022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('592352050', 'add', '934407072', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('602042244', 'edit', '512152022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('613932120', 'delete', '169369010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('623665390', 'delete_detail', '775020013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('624058772', 'edit_detail', '775020013', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('626211270', 'edit', '921592810', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('630992209', 'edit', '418687500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('644223622', 'edit', '026224004', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('649611825', 'delete', '819106275', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('650004926', 'other', '701595320', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('651272990', 'add', '601352116', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('661962002', 'delete_detail', '090272705', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('707532542', 'add', '695227481', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('720441480', 'edit', '302320500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('721307716', 'add', '000229540', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('727100451', 'add_detail', '922537022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('730392091', 'edit', '169369010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('730903213', 'delete', '700002102', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('732222295', 'edit', '420020527', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('750851426', 'add', '022064040', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('763006202', 'add_detail', '612022925', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('787878', 'edit', '8', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('801161016', 'delete', '302320500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('802402004', 'other', '022064040', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('802922326', 'add', '700002102', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('803704423', 'other', '006112282', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('805205020', 'other', '169369010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('820079972', 'delete', '006537592', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('820303151', 'delete_detail', '200229700', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('823502297', 'other', '804746020', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('828707230', 'edit', '695227481', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('833022051', 'delete_detail', '372527180', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('842378296', 'edit', '701595320', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ucp_site_menu_properties` (`id`, `prop`, `id_groupmenu`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('860007426', 'edit_detail', '612022925', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('869249010', 'delete_detail', '169369010', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('872216296', 'edit', '206069772', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('885705133', 'delete', '960353212', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('9', 'delete', '8', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('900023009', 'delete', '420020527', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('902217094', 'add', '294324062', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('902294097', 'print', '922537022', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('903442365', 'add', '418687500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('905280073', 'edit_detail', '418687500', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('909302300', 'other', '934407072', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('915736040', 'edit_detail', '149007870', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('916169819', 'edit_detail', '421971259', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('917119119', 'edit', '261175001', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('928340120', 'add', '532006351', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('970022900', 'edit', '171402272', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('971010962', 'other', '221023024', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('986238606', 'edit_detail', '072735800', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('990942373', 'edit', '960353212', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('995100187', 'edit', '294324062', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('GM008081301', 'add', '1998147032', 'yusuf', '2021-08-19 08:20:04', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM008980111', 'add', '1998147030', 'yusuf', '2021-08-19 08:00:08', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM011781830', 'edit_detail', '1998147032', 'yusuf', '2021-08-19 08:20:17', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM014002881', 'delete_detail', '1998147033', 'yusuf', '2021-08-20 08:26:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM018181218', 'delete', '1998147035', 'yusuf', '2021-08-23 11:06:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM022012380', 'delete_detail', '1998147035', 'yusuf', '2021-08-23 11:06:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM045235218', 'delete_detail', '1207725037', 'yusuf', '2021-08-20 08:55:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM072129180', 'edit_detail', '1998147036', 'yusuf', '2021-08-23 11:49:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM076862228', 'delete', '1998147033', 'yusuf', '2021-08-20 08:26:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM080135200', 'delete_detail', '1702028049', 'yusuf', '2021-08-18 16:09:32', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM080921027', 'add_detail', '1998147030', 'yusuf', '2021-08-19 08:00:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM101665506', 'delete_detail', 'GM758599199', 'yusuf', '2021-08-19 07:59:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM105699442', 'edit', 'GM226949271', 'yusuf', '2021-08-23 11:49:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM107851221', 'other', 'GM226949271', 'yusuf', '2021-08-23 11:49:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM109210187', 'add', '1998147046', 'yusuf', '2021-09-02 13:00:07', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM110295471', 'edit_detail', 'GM758599199', 'yusuf', '2021-08-19 07:59:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM112871927', 'edit', '1998147046', 'yusuf', '2021-09-02 13:00:07', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM115097734', 'delete_detail', '1998147036', 'yusuf', '2021-08-23 11:49:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM120928470', 'edit', '1998147061', 'yusuf', '2021-09-02 14:49:42', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM132184427', 'add_detail', 'GM287618035', 'yusuf', '2021-08-23 11:05:37', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM177834228', 'delete_detail', '1998147034', 'yusuf', '2021-08-21 08:43:12', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM181291115', 'edit', '1998147041', 'yusuf', '2021-09-02 11:47:05', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM200459291', 'delete', '1998147053', 'yusuf', '2021-09-02 14:41:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM201708444', 'other', '1998147033', 'yusuf', '2021-08-20 08:26:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM210180002', 'other', '1998147030', 'yusuf', '2021-08-19 08:00:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM211881383', 'delete', 'GM226949271', 'yusuf', '2021-08-23 11:49:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM212062021', 'other', '1998147035', 'yusuf', '2021-08-23 11:06:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM221170518', 'add', '1998147053', 'yusuf', '2021-09-02 14:41:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM225071015', 'delete_detail', 'GM287618035', 'yusuf', '2021-08-23 11:05:37', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM226000763', 'other', '1998147032', 'yusuf', '2021-08-19 08:20:17', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM241111092', 'delete', '1998147041', 'yusuf', '2021-09-02 11:47:10', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM247047204', 'delete', '1998147055', 'yusuf', '2021-09-02 14:42:24', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM253253000', 'print', 'GM226949271', 'yusuf', '2021-08-23 11:49:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM260902670', 'add', '1998147058', 'yusuf', '2021-09-02 14:44:23', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM261180740', 'add_detail', '1998147032', 'yusuf', '2021-08-19 08:20:17', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM262818700', 'add', '1998147033', 'yusuf', '2021-08-20 08:26:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM268299918', 'delete', '1998147061', 'yusuf', '2021-09-02 14:49:43', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM274050512', 'edit_detail', '1207725037', 'yusuf', '2021-08-20 08:55:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM280586651', 'edit_detail', '1998147033', 'yusuf', '2021-08-20 08:26:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM300261901', 'print', '1998147035', 'yusuf', '2021-08-23 11:06:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM301222002', 'delete', '1998147046', 'yusuf', '2021-09-02 13:00:07', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM317011428', 'add', '1998147036', 'yusuf', '2021-08-23 11:49:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM318380181', 'delete', '1998147034', 'yusuf', '2021-08-21 08:28:03', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM321041051', 'print', '1998147033', 'yusuf', '2021-08-20 08:26:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM323034433', 'other', '1998147036', 'yusuf', '2021-08-23 11:49:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM364427119', 'edit', 'GM287618035', 'yusuf', '2021-08-23 11:05:37', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM380450210', 'edit', '1998147062', 'yusuf', '2021-09-02 15:40:26', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM383733242', 'print', '1998147034', 'yusuf', '2021-08-23 10:03:36', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM384528158', 'add_detail', '1207725037', 'yusuf', '2021-08-20 08:55:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM404209010', 'delete_detail', '1998147032', 'yusuf', '2021-08-19 08:20:17', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM413106243', 'print', 'GM287618035', 'yusuf', '2021-08-23 11:05:37', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM421013550', 'add', 'GM226949271', 'yusuf', '2021-08-23 11:49:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM422290021', 'delete_detail', 'GM226949271', 'yusuf', '2021-08-23 11:49:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM424641611', 'delete', '1998147036', 'yusuf', '2021-08-23 11:49:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM445581682', 'add', '1998147034', 'yusuf', '2021-08-21 08:28:03', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM493146989', 'edit', '1998147036', 'yusuf', '2021-08-23 11:49:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM500100013', 'delete', '1998147058', 'yusuf', '2021-09-02 14:44:23', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM504005528', 'delete', '1998147030', 'yusuf', '2021-08-19 08:00:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM533833282', 'add_detail', '1998147036', 'yusuf', '2021-08-23 11:49:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM560054424', 'add', '1998147061', 'yusuf', '2021-09-02 14:49:42', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM570287131', 'edit_detail', 'GM287618035', 'yusuf', '2021-08-23 11:05:37', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM602220121', 'edit', '1998147055', 'yusuf', '2021-09-02 14:42:24', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM620097412', 'edit', '1998147035', 'yusuf', '2021-08-23 11:06:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM632221872', 'add_detail', '1998147033', 'yusuf', '2021-08-20 08:26:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM700998198', 'delete', 'GM758599199', 'yusuf', '2021-08-19 07:59:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM774570415', 'add', 'GM287618035', 'yusuf', '2021-08-23 11:05:37', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM776299922', 'add', '1998147055', 'yusuf', '2021-09-02 14:42:24', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM792951782', 'edit_detail', '1998147030', 'yusuf', '2021-08-19 08:00:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM805012222', 'edit', '1998147053', 'yusuf', '2021-09-02 14:41:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM805272812', 'delete', '1998147032', 'yusuf', '2021-08-19 08:20:17', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM816282163', 'add_detail', '1998147035', 'yusuf', '2021-08-23 11:06:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM823702372', 'edit_detail', '1998147035', 'yusuf', '2021-08-23 11:06:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM826119316', 'add_detail', 'GM758599199', 'yusuf', '2021-08-19 07:59:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM826230941', 'add_detail', '1998147034', 'yusuf', '2021-08-21 08:28:03', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM831829028', 'edit', '1998147034', 'yusuf', '2021-08-21 08:28:03', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM832220822', 'add', '1998147041', 'yusuf', '2021-09-02 11:28:18', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM841081962', 'print', '1998147036', 'yusuf', '2021-08-23 11:49:44', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM860153272', 'edit', '1998147032', 'yusuf', '2021-08-19 08:20:17', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM882621529', 'add', '1998147035', 'yusuf', '2021-08-23 11:06:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM900512388', 'other', 'GM758599199', 'yusuf', '2021-08-19 07:59:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM900615026', 'edit', '1998147030', 'yusuf', '2021-08-19 08:00:19', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM909268196', 'edit', 'GM758599199', 'yusuf', '2021-08-19 07:59:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM924712291', 'edit', '1998147033', 'yusuf', '2021-08-20 08:26:41', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM928671994', 'add_detail', 'GM226949271', 'yusuf', '2021-08-23 11:49:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM931702401', 'other', 'GM287618035', 'yusuf', '2021-08-23 11:05:37', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM943212044', 'edit', '1998147058', 'yusuf', '2021-09-02 14:44:23', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM962190228', 'edit_detail', 'GM226949271', 'yusuf', '2021-08-23 11:49:15', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM962218723', 'delete', 'GM287618035', 'yusuf', '2021-08-23 11:05:37', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('GM975028239', 'add', 'GM758599199', 'yusuf', '2021-08-19 07:59:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_prop`
--

CREATE TABLE `ucp_site_prop` (
  `id` int NOT NULL,
  `sys_name` varchar(200) NOT NULL,
  `company` varchar(300) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact_person` varchar(32) NOT NULL,
  `administrator` varchar(32) NOT NULL,
  `theme` varchar(32) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `2nd_currency` varchar(32) NOT NULL,
  `decimal_places` int NOT NULL,
  `ex_rat_post` varchar(6) NOT NULL,
  `ex_rate_period` varchar(32) NOT NULL,
  `outbox_email` varchar(32) NOT NULL,
  `rec_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_prop`
--

INSERT INTO `ucp_site_prop` (`id`, `sys_name`, `company`, `address`, `contact_person`, `administrator`, `theme`, `currency`, `2nd_currency`, `decimal_places`, `ex_rat_post`, `ex_rate_period`, `outbox_email`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
(1, 'SIF Erp', 'PT Sanjaya International', 'Menara 165', 'Bima', 'admin@admin.com', 'admin_lte', 'IDR', 'USD', 2, 'D', 'MONTHLY', 'YES', '', NULL, 'yusuf', '2021-07-15 03:39:41', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_prop_bdgt`
--

CREATE TABLE `ucp_site_prop_bdgt` (
  `id` int NOT NULL,
  `fiscal_year` int NOT NULL,
  `comp_id` varchar(32) NOT NULL,
  `rec_user` varchar(32) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) NOT NULL,
  `mod_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_session`
--

CREATE TABLE `ucp_site_session` (
  `id` varchar(128) NOT NULL,
  `session` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `userid` varchar(128) NOT NULL,
  `last_activity` datetime NOT NULL,
  `comp_id` varchar(32) NOT NULL,
  `department` varchar(32) NOT NULL,
  `position_id` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rec_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_session`
--

INSERT INTO `ucp_site_session` (`id`, `session`, `date`, `userid`, `last_activity`, `comp_id`, `department`, `position_id`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('117257070', 'ERP-2021-07-1725FFntvFkgu9z4HTOxdG', '2021-07-17 00:54:16', 'yusuf', '2021-07-17 00:54:16', '', '', '', 'yusuf', '2021-07-17 00:54:16', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('UM61112525', 'ERP-2021-09-02A6oODS8G8bTjzHMy1Hwn', '2021-09-02 10:56:51', 'yusuf', '2021-09-02 10:56:51', '', '', '', 'yusuf', '2021-09-02 10:56:51', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_usergroup`
--

CREATE TABLE `ucp_site_usergroup` (
  `id` varchar(128) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `id_group` varchar(32) NOT NULL,
  `main` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_usergroup`
--

INSERT INTO `ucp_site_usergroup` (`id`, `userid`, `id_group`, `main`, `rec_user`, `rec_date`, `mod_user`, `mod_date`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`) VALUES
('1', 'yusuf', '1', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('2', 'yusuf', '2', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('200800804', 'eko', '526020602', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('104294205', 'asraf', '526020602', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('900520289', 'fery', '1', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1647819320', 'aris', '1804178228', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1208657055', 'albi', '1804178228', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1000018590', 'franky', '1804178228', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1806186209', 'eko', '1', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1271060280', 'mcdonald', '1', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1495105506', 'febri', '1', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1221200222', 'prasetyo4040@gmail.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1370593128', 'yusuf.mundakir@gmail.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1453222003', 'cupicupke@gmail.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1027201726', 'hasan', '1', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1020637023', 'ptgenapjkt@gmail.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1406224552', 'inelar81@gmail.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1138232211', 'andikwiko@gmail.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1250124092', 'setiawandodi17@gmail.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1050622505', 'test@gmail.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1482077980', 'alfian.rpl23@yahoo.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1042164001', 'same@gmail.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('1176226200', 'yasih97335@dghetian.com', '682200550', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('158011120', 'testingh', '1', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('145907220', 'yugi', '1', '1', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
('179045800', 'ikhsan', '157205098', '1', 'hasan', '2021-06-08 04:03:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('126806010', 'ikhsan', '104219003', NULL, 'ikhsan', '2021-06-08 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('151432480', 'demo', 'GM46222372', '1', 'demo', '2021-06-10 06:30:50', 'yusuf', '2021-09-02 14:44:53', NULL, NULL, NULL, NULL, NULL),
('167762389', 'stockadmin', '182924764', '1', 'yusuf', '2021-07-26 02:02:29', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan'),
('UG83320022', 'john_doe', 'GM03125220', '1', 'yusuf', '2021-09-02 11:05:35', 'yusuf', '2021-09-02 11:37:36', 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_site_users`
--

CREATE TABLE `ucp_site_users` (
  `id` varchar(32) DEFAULT NULL,
  `userid` varchar(64) NOT NULL,
  `username` varchar(164) NOT NULL,
  `password` varchar(255) NOT NULL,
  `company` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `posisiton_code` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `image` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rec_date` datetime DEFAULT NULL,
  `rec_user` varchar(32) DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  `mod_user` varchar(32) DEFAULT NULL,
  `rec_comp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_dept` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rec_pos` varchar(32) DEFAULT NULL,
  `rec_emp_id` varchar(64) DEFAULT NULL,
  `rec_emp_name` varchar(128) DEFAULT NULL,
  `token` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_site_users`
--

INSERT INTO `ucp_site_users` (`id`, `userid`, `username`, `password`, `company`, `email`, `posisiton_code`, `image`, `rec_date`, `rec_user`, `mod_date`, `mod_user`, `rec_comp_id`, `rec_dept`, `rec_pos`, `rec_emp_id`, `rec_emp_name`, `token`) VALUES
('1', 'yusuf', 'yusuf', 'add3deb05fc6625aae939041e4131624', '', 'cupicupke@gmail.com', 'OPR', '', NULL, NULL, '2021-09-02 09:17:54', 'yusuf', NULL, NULL, NULL, NULL, NULL, 'ERP-2021-09-02qngJm6on0L6cRlwdYdKF'),
('21', 'john_doe', 'john_doe', 'da6b396b4cda189d1f6cb3814c653e91', NULL, 'john@gmail.com', NULL, NULL, NULL, NULL, '2021-09-02 11:09:22', 'yusuf', NULL, NULL, NULL, NULL, NULL, 'ERP-2021-09-02RO4pIyMMZOCvkMDNtIMV'),
('22', 'ikhsan', 'ikhsan maaa', 'd41d8cd98f00b204e9800998ecf8427e', NULL, 'ikhsan@gmail.com', NULL, NULL, '2021-06-08 03:39:19', 'hasan', '2021-06-30 02:04:54', 'hasan', NULL, NULL, NULL, NULL, NULL, ''),
('24', 'demo', 'demo', '62cc2d8b4bf2d8728120d052163a77df', NULL, 'demo@gmail.com', NULL, NULL, '2021-06-09 08:40:48', 'hasan', '2021-09-02 14:48:19', 'yusuf', NULL, NULL, NULL, NULL, NULL, 'ERP-2021-09-02Xi1eZ0NMg9nwF4LmnF10'),
('1282691020', 'ucup', 'ucup', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'cupicupke@gmail.com', NULL, NULL, '2021-07-16 06:32:50', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan', ''),
('1252626217', 'stockadmin', 'stockadmin', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'stockadmin@gmail.com', NULL, NULL, '2021-07-26 01:49:06', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan', ''),
('UM073950188', '', '', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '', NULL, NULL, '2021-09-02 10:55:32', 'yusuf', NULL, NULL, 'B-S025', 'CB', 'STAFF', '0077', 'Ikhsan', 'ERP-2021-09-020qvOTwSz88XUS5oeb0Hh');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_templ_manager`
--

CREATE TABLE `ucp_templ_manager` (
  `id` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `form_number` varchar(128) NOT NULL,
  `type` varchar(32) NOT NULL,
  `module_id` varchar(32) NOT NULL,
  `module_name` varchar(64) NOT NULL,
  `module_descr` varchar(86) NOT NULL,
  `module_parent` varchar(32) NOT NULL,
  `module_order` int NOT NULL,
  `coa_code` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_templ_manager`
--

INSERT INTO `ucp_templ_manager` (`id`, `name`, `form_number`, `type`, `module_id`, `module_name`, `module_descr`, `module_parent`, `module_order`, `coa_code`) VALUES
('1011280009', 'Travel Expense', '', 'TMPL', '1011280009', 'travel_expense', 'Travel Expense', '1220872807', 2, '6-151000'),
('1043714202', 'FORM CUTI ', 'FORM-CUTI-001', 'FORM', '1043714202', 'form_cuti_', 'FORM CUTI ', '1212025206', 0, ''),
('1229062611', 'Seminar', '', '', '1229062611', 'seminar', 'Seminar', '1220872807', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_templ_manager_dat`
--

CREATE TABLE `ucp_templ_manager_dat` (
  `id` int NOT NULL,
  `pid` varchar(32) NOT NULL,
  `orientation` varchar(32) NOT NULL,
  `row_num` int NOT NULL,
  `col_num` int NOT NULL,
  `col_ord` int NOT NULL,
  `variable_id` varchar(32) NOT NULL,
  `variable` varchar(32) NOT NULL,
  `value_type` varchar(32) NOT NULL,
  `value` varchar(128) NOT NULL,
  `col_repeat` varchar(12) NOT NULL,
  `row_sum` varchar(12) NOT NULL,
  `rtype` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ucp_templ_manager_dat`
--

INSERT INTO `ucp_templ_manager_dat` (`id`, `pid`, `orientation`, `row_num`, `col_num`, `col_ord`, `variable_id`, `variable`, `value_type`, `value`, `col_repeat`, `row_sum`, `rtype`) VALUES
(37, '1011280009', 'row', 1, 1, 1, '8', 'Designation', 'MST', 'MGR_PURCH', 'NO', 'NO', ''),
(38, '1011280009', 'row', 1, 1, 2, '9', 'Travel Purpose', 'VAL', 'Rekonsiliasi Pertamina', 'NO', 'NO', ''),
(39, '1011280009', 'row', 1, 1, 3, '10', 'Transport', 'VAL', '20000', 'NO', 'NO', ''),
(40, '1011280009', 'row', 1, 1, 4, '11', 'Ticket', 'VAL', '20000', 'NO', 'NO', ''),
(41, '1011280009', 'row', 1, 1, 5, '12', 'Daily Meal', 'VAL', '20000', 'NO', 'NO', ''),
(42, '1011280009', 'row', 1, 1, 6, '13', 'MTH', 'MST', 'JAN', 'YES', 'YES', ''),
(43, '1011280009', 'row', 1, 1, 7, '14', 'cost_per_month', 'VAL', '2000', 'YES', 'YES', ''),
(44, '1011280009', 'row', 1, 1, 8, '15', 'days', 'MST', 'day', 'YES', 'YES', ''),
(45, '1011280009', 'row', 1, 1, 9, '16', 'value_days', 'VAL', '1', 'YES', 'YES', ''),
(46, '1011280009', 'col', 1, 2, 1, '8', 'Designation', 'MST', 'MGR_PURCH', 'NO', 'NO', ''),
(47, '1011280009', 'col', 1, 2, 2, '9', 'Travel Purpose', 'VAL', 'Rekonsiliasi Pertamina', 'NO', 'NO', ''),
(48, '1011280009', 'col', 1, 2, 3, '10', 'Transport', 'VAL', '20000', 'NO', 'NO', ''),
(49, '1011280009', 'col', 1, 2, 4, '11', 'Ticket', 'VAL', '20000', 'NO', 'NO', ''),
(50, '1011280009', 'col', 1, 2, 5, '12', 'Daily Meal', 'VAL', '20000', 'NO', 'NO', ''),
(51, '1011280009', 'col', 1, 2, 6, '13', 'MTH', 'MST', 'FEB', 'YES', 'YES', ''),
(52, '1011280009', 'col', 1, 2, 7, '14', 'cost_per_month', 'VAL', '2000', 'YES', 'YES', ''),
(53, '1011280009', 'col', 1, 2, 8, '15', 'days', 'MST', 'day', 'YES', 'YES', ''),
(54, '1011280009', 'col', 1, 2, 9, '16', 'value_days', 'VAL', '1', 'YES', 'YES', ''),
(55, '1011280009', 'col', 1, 3, 1, '8', 'Designation', 'MST', 'MGR_PURCH', 'NO', 'NO', ''),
(56, '1011280009', 'col', 1, 3, 2, '9', 'Travel Purpose', 'VAL', 'Rekonsiliasi Pertamina', 'NO', 'NO', ''),
(57, '1011280009', 'col', 1, 3, 3, '10', 'Transport', 'VAL', '20000', 'NO', 'NO', ''),
(58, '1011280009', 'col', 1, 3, 4, '11', 'Ticket', 'VAL', '20000', 'NO', 'NO', ''),
(59, '1011280009', 'col', 1, 3, 5, '12', 'Daily Meal', 'VAL', '20000', 'NO', 'NO', ''),
(60, '1011280009', 'col', 1, 3, 6, '13', 'MTH', 'MST', 'MAR', 'YES', 'YES', ''),
(61, '1011280009', 'col', 1, 3, 7, '14', 'cost_per_month', 'VAL', '2000', 'YES', 'YES', ''),
(62, '1011280009', 'col', 1, 3, 8, '15', 'days', 'MST', 'day', 'YES', 'YES', ''),
(63, '1011280009', 'col', 1, 3, 9, '16', 'value_days', 'VAL', '1', 'YES', 'YES', ''),
(64, '1011280009', 'col', 1, 4, 1, '8', 'Designation', 'MST', 'MGR_PURCH', 'NO', 'NO', ''),
(65, '1011280009', 'col', 1, 4, 2, '9', 'Travel Purpose', 'VAL', 'Rekonsiliasi Pertamina', 'NO', 'NO', ''),
(66, '1011280009', 'col', 1, 4, 3, '10', 'Transport', 'VAL', '20000', 'NO', 'NO', ''),
(67, '1011280009', 'col', 1, 4, 4, '11', 'Ticket', 'VAL', '20000', 'NO', 'NO', ''),
(68, '1011280009', 'col', 1, 4, 5, '12', 'Daily Meal', 'VAL', '20000', 'NO', 'NO', ''),
(69, '1011280009', 'col', 1, 4, 6, '13', 'MTH', 'MST', 'APR', 'YES', 'YES', ''),
(70, '1011280009', 'col', 1, 4, 7, '14', 'cost_per_month', 'VAL', '2000', 'YES', 'YES', ''),
(71, '1011280009', 'col', 1, 4, 8, '15', 'days', 'MST', 'day', 'YES', 'YES', ''),
(72, '1011280009', 'col', 1, 4, 9, '16', 'value_days', 'VAL', '1', 'YES', 'YES', ''),
(73, '1091320050', 'row', 1, 1, 1, '3', 'Bussines Type', 'ITM', 'PK-BBJ-01', '', '', ''),
(74, '1091320050', 'row', 1, 1, 2, '4', 'MONTH', 'MST', 'JAN', 'YES', '', ''),
(75, '1091320050', 'row', 1, 1, 3, '5', 'value_month', 'VAL', '2000', 'YES', 'YES', ''),
(76, '1091320050', 'row', 1, 1, 4, '6', 'units', 'MST', 'day', 'YES', '', ''),
(77, '1091320050', 'row', 1, 1, 5, '7', 'value_unit', 'VAL', '2000', 'YES', '', ''),
(78, '1229062611', 'row', 1, 1, 1, '17', 'Description', 'VAL', 'Seminar For Team HCGA', 'NO', 'NO', ''),
(79, '1229062611', 'col', 1, 2, 1, '17', 'Description', 'VAL', 'Seminar For Team HCGA', 'NO', 'NO', ''),
(80, '1229062611', 'col', 1, 2, 2, '18', 'MTH', 'MST', 'JAN', 'YES', 'YES', ''),
(81, '1229062611', 'col', 1, 2, 3, '19', 'value_month', 'VAL', '6000000', 'YES', 'YES', ''),
(82, '1229062611', 'col', 1, 3, 1, '17', 'Description', 'VAL', 'Seminar For Team HCGA', 'NO', 'NO', ''),
(83, '1229062611', 'col', 1, 3, 2, '18', 'MTH', 'MST', 'FEB', 'YES', 'YES', ''),
(84, '1229062611', 'col', 1, 3, 3, '19', 'value_month', 'VAL', '6000000', 'YES', 'YES', ''),
(85, '1229062611', 'col', 1, 4, 1, '17', 'Description', 'VAL', 'Seminar For Team HCGA', 'NO', 'NO', ''),
(86, '1229062611', 'col', 1, 4, 2, '18', 'MTH', 'MST', 'MAR', 'YES', 'YES', ''),
(87, '1229062611', 'col', 1, 4, 3, '19', 'value_month', 'VAL', '6000000', 'YES', 'YES', ''),
(88, '1229062611', 'col', 1, 5, 1, '17', 'Description', 'VAL', 'Seminar For Team HCGA', 'NO', 'NO', ''),
(89, '1229062611', 'col', 1, 5, 2, '18', 'MTH', 'MST', 'APR', 'YES', 'YES', ''),
(90, '1229062611', 'col', 1, 5, 3, '19', 'value_month', 'VAL', '6000000', 'YES', 'YES', ''),
(91, '1229062611', 'col', 1, 6, 1, '17', 'Description', 'VAL', 'Seminar For Team HCGA', 'NO', 'NO', ''),
(92, '1229062611', 'col', 1, 6, 2, '18', 'MTH', 'MST', 'MAY', 'YES', 'YES', ''),
(93, '1229062611', 'col', 1, 6, 3, '19', 'value_month', 'VAL', '6000000', 'YES', 'YES', '');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_templ_manager_dtl`
--

CREATE TABLE `ucp_templ_manager_dtl` (
  `id` int NOT NULL,
  `pid` varchar(48) NOT NULL,
  `variable` varchar(32) NOT NULL,
  `type` varchar(48) NOT NULL,
  `datasource` varchar(200) NOT NULL,
  `funcref` varchar(128) NOT NULL,
  `form_model` varchar(32) NOT NULL,
  `accounting` varchar(32) NOT NULL,
  `inventory` varchar(32) NOT NULL,
  `col_ord` int NOT NULL,
  `col_repeat` varchar(12) NOT NULL,
  `row_sum` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_templ_manager_dtl`
--

INSERT INTO `ucp_templ_manager_dtl` (`id`, `pid`, `variable`, `type`, `datasource`, `funcref`, `form_model`, `accounting`, `inventory`, `col_ord`, `col_repeat`, `row_sum`) VALUES
(3, '1091320050', 'Bussines Type', 'ITM', 'function', 'selectItmCode', 'dropdown', '', '', 1, '', ''),
(4, '1091320050', 'MONTH', 'MST', 'function', 'getMonths', 'dropdown', '', '', 2, 'YES', ''),
(5, '1091320050', 'value_month', 'VAL', 'value', '', 'input_text', '', '', 3, 'YES', 'YES'),
(6, '1091320050', 'units', 'MST', 'function', 'selectUnits2', 'dropdown', '', '', 4, 'YES', ''),
(7, '1091320050', 'value_unit', 'VAL', 'value', '', 'input_text', '', '', 5, 'YES', ''),
(8, '1011280009', 'Designation', 'MST', 'function', 'selectPosition', 'dropdown', '', '', 1, 'NO', 'NO'),
(9, '1011280009', 'Travel Purpose', 'VAL', 'value', '', 'input_text', '', '', 2, 'NO', 'NO'),
(10, '1011280009', 'Transport', 'VAL', 'value', '', 'input_text', '', '', 3, 'NO', 'NO'),
(11, '1011280009', 'Ticket', 'VAL', 'value', '', 'input_text', '', '', 4, 'NO', 'NO'),
(12, '1011280009', 'Daily Meal', 'VAL', 'value', '', 'input_text', '', '', 5, 'NO', 'NO'),
(13, '1011280009', 'MTH', 'MST', 'function', 'getMonths', 'dropdown', '', '', 6, 'YES', 'YES'),
(14, '1011280009', 'cost_per_month', 'VAL', 'value', '', 'input_text', '', '', 7, 'YES', 'YES'),
(15, '1011280009', 'days', 'MST', 'function', 'selectUnits2', 'dropdown', '', '', 8, 'YES', 'YES'),
(16, '1011280009', 'value_days', 'VAL', 'value', '', 'input_text', '', '', 9, 'YES', 'YES'),
(17, '1229062611', 'Description', 'VAL', 'value', '', 'input_text', '', '', 1, 'NO', 'NO'),
(18, '1229062611', 'MTH', 'MST', 'function', 'getMonths', 'dropdown', '', '', 2, 'YES', 'YES'),
(19, '1229062611', 'value_month', 'VAL', 'value', '', 'input_text', '', '', 3, 'YES', 'YES'),
(20, '1043714202', 'Reason', 'ITM', 'value', '', 'input_text', '', '', 1, 'NO', 'NO'),
(21, '1043714202', 'start_date ', 'VAL', 'value', '', 'input_text', '', '', 2, 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_trs_import`
--

CREATE TABLE `ucp_trs_import` (
  `id` varchar(32) NOT NULL,
  `remark` varchar(32) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `id_imprt_set` varchar(32) NOT NULL,
  `userid` varchar(32) NOT NULL,
  `total_row` int NOT NULL,
  `datetime` datetime NOT NULL,
  `tb_name` varchar(128) NOT NULL,
  `post_status` varchar(3) NOT NULL,
  `post_date` datetime DEFAULT NULL,
  `updt` varchar(2) NOT NULL,
  `updt_col` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucp_trs_import`
--

INSERT INTO `ucp_trs_import` (`id`, `remark`, `filename`, `id_imprt_set`, `userid`, `total_row`, `datetime`, `tb_name`, `post_status`, `post_date`, `updt`, `updt_col`) VALUES
('1048101072', 'Budget Properties', '', '1060722302', 'yusuf', 0, '2020-09-24 09:15:41', '', '', NULL, '1', ''),
('1078750130', 'import rate', '', '1802233070', 'yusuf', 0, '2021-01-30 14:58:06', '', '', NULL, '1', ''),
('1233290071', 'Master COA', '', '1112650249', 'yusuf', 211, '2020-09-22 06:16:27', '', '', NULL, '1', ''),
('1731426240', 'Upload COA', '', '1112650249', 'yusuf', 0, '2020-11-11 13:25:46', '', '', NULL, '0', ''),
('1906101140', 'test', '', '1802233070', 'yusuf', 0, '2021-01-30 14:58:23', '', '', NULL, '1', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bio01_new`
--
ALTER TABLE `bio01_new`
  ADD PRIMARY KEY (`emp_code`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

--
-- Indexes for table `mst_biodata`
--
ALTER TABLE `mst_biodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comp_id` (`comp_id`);

--
-- Indexes for table `mst_buss_dept`
--
ALTER TABLE `mst_buss_dept`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `mst_buss_dept_comp`
--
ALTER TABLE `mst_buss_dept_comp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_buss_part`
--
ALTER TABLE `mst_buss_part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_buss_part_bank`
--
ALTER TABLE `mst_buss_part_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_buss_part_dev`
--
ALTER TABLE `mst_buss_part_dev`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `sub_type` (`sub_type`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `ppn` (`ppn`);

--
-- Indexes for table `mst_currency`
--
ALTER TABLE `mst_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `mst_docnum`
--
ALTER TABLE `mst_docnum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `mst_docnum_count`
--
ALTER TABLE `mst_docnum_count`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `docnum` (`docnum`),
  ADD KEY `lastnum` (`lastnum`),
  ADD KEY `sys` (`sys`);

--
-- Indexes for table `mst_docnum_dtl`
--
ALTER TABLE `mst_docnum_dtl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `row_order` (`row_order`),
  ADD KEY `col_type` (`col_type`);

--
-- Indexes for table `mst_itm_group`
--
ALTER TABLE `mst_itm_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUEID` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `mst_itm_mat`
--
ALTER TABLE `mst_itm_mat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`itm_code`),
  ADD KEY `id` (`id`),
  ADD KEY `itm_code` (`itm_code`),
  ADD KEY `name` (`name`),
  ADD KEY `fr_name` (`fr_name`),
  ADD KEY `itm_type` (`itm_type`),
  ADD KEY `itm_group` (`itm_group`),
  ADD KEY `uom` (`uom`);

--
-- Indexes for table `mst_itm_mat_dtl`
--
ALTER TABLE `mst_itm_mat_dtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_itm_mat_spec`
--
ALTER TABLE `mst_itm_mat_spec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_itm_mat_varian`
--
ALTER TABLE `mst_itm_mat_varian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `itm_code` (`itm_code`);

--
-- Indexes for table `mst_itm_mat_wh`
--
ALTER TABLE `mst_itm_mat_wh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_itm_price`
--
ALTER TABLE `mst_itm_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_itm_pricelist`
--
ALTER TABLE `mst_itm_pricelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trs_attachment`
--
ALTER TABLE `trs_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `module_name` (`module_name`),
  ADD KEY `trs_id` (`trs_id`),
  ADD KEY `trs_type` (`trs_type`),
  ADD KEY `comp_id` (`comp_id`);

--
-- Indexes for table `trs_his_position`
--
ALTER TABLE `trs_his_position`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `emp_number` (`emp_number`),
  ADD KEY `userid` (`userid`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `comp_id` (`comp_id`),
  ADD KEY `department` (`department`),
  ADD KEY `grade` (`grade`);

--
-- Indexes for table `trs_inv_log`
--
ALTER TABLE `trs_inv_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_function_list`
--
ALTER TABLE `ucp_function_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ucp_general_doc`
--
ALTER TABLE `ucp_general_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_module_sync`
--
ALTER TABLE `ucp_module_sync`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `ucp_site_companies`
--
ALTER TABLE `ucp_site_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_site_gl_determ`
--
ALTER TABLE `ucp_site_gl_determ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_site_gl_determ_dtl`
--
ALTER TABLE `ucp_site_gl_determ_dtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_site_group`
--
ALTER TABLE `ucp_site_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ucp_site_groupmenu`
--
ALTER TABLE `ucp_site_groupmenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `ucp_site_groupmenu_bak`
--
ALTER TABLE `ucp_site_groupmenu_bak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_site_header_set`
--
ALTER TABLE `ucp_site_header_set`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `ord` (`ord`),
  ADD KEY `userid` (`userid`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `ucp_site_importer`
--
ALTER TABLE `ucp_site_importer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_site_importer_dtl`
--
ALTER TABLE `ucp_site_importer_dtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_site_log`
--
ALTER TABLE `ucp_site_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_site_menu`
--
ALTER TABLE `ucp_site_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `urutan` (`urutan`),
  ADD KEY `type` (`type`),
  ADD KEY `docnum` (`docnum`);

--
-- Indexes for table `ucp_site_menu_properties`
--
ALTER TABLE `ucp_site_menu_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_groupmenu` (`id_groupmenu`);

--
-- Indexes for table `ucp_site_prop`
--
ALTER TABLE `ucp_site_prop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ucp_site_prop_bdgt`
--
ALTER TABLE `ucp_site_prop_bdgt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_site_session`
--
ALTER TABLE `ucp_site_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `session` (`session`),
  ADD KEY `userid` (`userid`),
  ADD KEY `comp_id` (`comp_id`);

--
-- Indexes for table `ucp_site_usergroup`
--
ALTER TABLE `ucp_site_usergroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `ucp_site_users`
--
ALTER TABLE `ucp_site_users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `id` (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ucp_templ_manager`
--
ALTER TABLE `ucp_templ_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_templ_manager_dat`
--
ALTER TABLE `ucp_templ_manager_dat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_templ_manager_dtl`
--
ALTER TABLE `ucp_templ_manager_dtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_trs_import`
--
ALTER TABLE `ucp_trs_import`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_buss_dept_comp`
--
ALTER TABLE `mst_buss_dept_comp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mst_buss_part_bank`
--
ALTER TABLE `mst_buss_part_bank`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mst_docnum_count`
--
ALTER TABLE `mst_docnum_count`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `mst_itm_mat_spec`
--
ALTER TABLE `mst_itm_mat_spec`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1471102939;

--
-- AUTO_INCREMENT for table `mst_itm_mat_varian`
--
ALTER TABLE `mst_itm_mat_varian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1903703768;

--
-- AUTO_INCREMENT for table `mst_itm_mat_wh`
--
ALTER TABLE `mst_itm_mat_wh`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_itm_price`
--
ALTER TABLE `mst_itm_price`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `mst_itm_pricelist`
--
ALTER TABLE `mst_itm_pricelist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trs_his_position`
--
ALTER TABLE `trs_his_position`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1992242724;

--
-- AUTO_INCREMENT for table `ucp_general_doc`
--
ALTER TABLE `ucp_general_doc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ucp_site_gl_determ`
--
ALTER TABLE `ucp_site_gl_determ`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ucp_site_gl_determ_dtl`
--
ALTER TABLE `ucp_site_gl_determ_dtl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ucp_site_groupmenu`
--
ALTER TABLE `ucp_site_groupmenu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1998147063;

--
-- AUTO_INCREMENT for table `ucp_site_groupmenu_bak`
--
ALTER TABLE `ucp_site_groupmenu_bak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1996226942;

--
-- AUTO_INCREMENT for table `ucp_site_log`
--
ALTER TABLE `ucp_site_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26184;

--
-- AUTO_INCREMENT for table `ucp_site_prop_bdgt`
--
ALTER TABLE `ucp_site_prop_bdgt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ucp_templ_manager_dat`
--
ALTER TABLE `ucp_templ_manager_dat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `ucp_templ_manager_dtl`
--
ALTER TABLE `ucp_templ_manager_dtl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
