-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 03, 2024 at 03:39 PM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u548081906_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `5d`
--

CREATE TABLE `5d` (
  `id` int(11) NOT NULL,
  `period` bigint(20) DEFAULT 0,
  `result` varchar(5) NOT NULL DEFAULT '0',
  `game` int(11) NOT NULL DEFAULT 1,
  `status` int(11) DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `5d`
--

INSERT INTO `5d` (`id`, `period`, `result`, `game`, `status`, `time`) VALUES
(322046, 2022070111578, '0', 10, 0, '1709743200940'),
(322056, 2022070113158, '0', 5, 0, '1717428901470'),
(322058, 2022070115268, '87129', 3, 1, '1717428961654'),
(322059, 2022070125811, '19928', 1, 1, '1717428961695'),
(322060, 2022070125812, '37817', 1, 1, '1717429021246'),
(322061, 2022070125813, '14614', 1, 1, '1717429081959'),
(322062, 2022070115269, '0', 3, 0, '1717429141506'),
(322063, 2022070125814, '0', 1, 0, '1717429141593');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `wingo1` text NOT NULL DEFAULT '-1',
  `wingo3` text NOT NULL DEFAULT '-1',
  `wingo5` text NOT NULL DEFAULT '-1',
  `wingo10` text NOT NULL DEFAULT '-1',
  `k5d` text NOT NULL DEFAULT '\'-1\'',
  `k5d3` text NOT NULL DEFAULT '\'-1\'',
  `k5d5` text DEFAULT '\'-1\'',
  `k5d10` text NOT NULL DEFAULT '\'-1\'',
  `k3d` text NOT NULL DEFAULT '\'-1\'',
  `k3d3` text NOT NULL DEFAULT '\'-1\'',
  `k3d5` text NOT NULL DEFAULT '\'-1\'',
  `k3d10` text NOT NULL DEFAULT '\'-1\'',
  `win_rate` int(11) NOT NULL DEFAULT 0,
  `telegram` varchar(100) NOT NULL DEFAULT '0',
  `cskh` varchar(100) NOT NULL DEFAULT '0',
  `app` text DEFAULT '0',
  `recharge_bonus` int(11) DEFAULT NULL,
  `recharge_bonus_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `wingo1`, `wingo3`, `wingo5`, `wingo10`, `k5d`, `k5d3`, `k5d5`, `k5d10`, `k3d`, `k3d3`, `k3d5`, `k3d10`, `win_rate`, `telegram`, `cskh`, `app`, `recharge_bonus`, `recharge_bonus_2`) VALUES
(1, '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, 'https://telegram.me/wizardo_qc', 'https://telegram.me/wizardo_qc', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `balance_transfer`
--

CREATE TABLE `balance_transfer` (
  `id` int(11) NOT NULL,
  `sender_phone` bigint(255) NOT NULL,
  `receiver_phone` bigint(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_recharge`
--

CREATE TABLE `bank_recharge` (
  `id` int(11) NOT NULL,
  `name_bank` varchar(50) NOT NULL DEFAULT '0',
  `name_user` varchar(100) NOT NULL DEFAULT '0',
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `qr_code_image` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'bank',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crashbetrecord`
--

CREATE TABLE `crashbetrecord` (
  `id` int(11) NOT NULL,
  `username` varchar(211) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(211) NOT NULL DEFAULT 'pending',
  `winpoint` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financial_details`
--

CREATE TABLE `financial_details` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `phone_used` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k3`
--

CREATE TABLE `k3` (
  `id` int(11) NOT NULL,
  `period` bigint(20) NOT NULL DEFAULT 0,
  `result` int(11) NOT NULL,
  `game` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `k3`
--

INSERT INTO `k3` (`id`, `period`, `result`, `game`, `status`, `time`) VALUES
(322108, 2022070111586, 0, 10, 0, '1709743201035'),
(322118, 2022070113170, 0, 5, 0, '1717428902628'),
(322120, 2022070115282, 434, 3, 1, '1717428962647'),
(322122, 2022070125843, 424, 1, 1, '1717429022245'),
(322123, 2022070125844, 221, 1, 1, '1717429084770'),
(322124, 2022070115283, 0, 3, 0, '1717429144702'),
(322125, 2022070125845, 0, 1, 0, '1717429144845');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `f1` varchar(50) NOT NULL,
  `f2` varchar(50) NOT NULL,
  `f3` varchar(50) NOT NULL,
  `f4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `f1`, `f2`, `f3`, `f4`) VALUES
(0, 0, '2', '1', '1', '1'),
(1, 1, '0.25', '0.25', '0.25', '0.25'),
(2, 2, '0.25', '0.25', '0.25', '0.25'),
(3, 3, '0.25', '0.25', '0.25', '0.25'),
(4, 4, '0.25', '0.25', '0.25', '0.25'),
(5, 5, '0.25', '0.25', '0.25', '0.25'),
(6, 6, '0.25', '0.25', '0.25', '0.25'),
(7, 7, '0.25', '0.25', '0.25', '0.25'),
(8, 8, '0.25', '0.25', '0.25', '0.25'),
(9, 9, '0.25', '0.25', '0.25', '0.25'),
(10, 10, '0.5', '0.5', '0.5', '0.5'),
(11, 11, '0.5', '0.5', '0.5', '0.5'),
(12, 12, '0.5', '0.05', '0.5', '0.5'),
(13, 13, '0.5', '0.5', '0.5', '0.5'),
(14, 14, '0.5', '0.5', '0.5', '0.5');

-- --------------------------------------------------------

--
-- Table structure for table `minutes_1`
--

CREATE TABLE `minutes_1` (
  `id` int(11) NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `stage` varchar(255) NOT NULL DEFAULT '0',
  `result` int(11) NOT NULL DEFAULT 0,
  `more` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `fee` int(11) NOT NULL DEFAULT 0,
  `get` int(11) NOT NULL DEFAULT 0,
  `game` varchar(50) NOT NULL DEFAULT '0',
  `bet` varchar(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `point_list`
--

CREATE TABLE `point_list` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `telegram` varchar(100) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `money_us` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `total1` int(11) NOT NULL DEFAULT 20,
  `total2` int(11) NOT NULL DEFAULT 50,
  `total3` int(11) NOT NULL DEFAULT 150,
  `total4` int(11) NOT NULL DEFAULT 350,
  `total5` int(11) NOT NULL DEFAULT 850,
  `total6` int(11) NOT NULL DEFAULT 5000,
  `total7` int(11) NOT NULL DEFAULT 18050,
  `total8` int(11) NOT NULL DEFAULT 20000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recharge`
--

CREATE TABLE `recharge` (
  `id` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL DEFAULT '0',
  `transaction_id` varchar(100) DEFAULT '0',
  `utr` bigint(255) DEFAULT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL DEFAULT 'bank',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` varchar(50) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `redenvelopes`
--

CREATE TABLE `redenvelopes` (
  `id` int(11) NOT NULL,
  `id_redenvelope` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `used` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `redenvelopes_used`
--

CREATE TABLE `redenvelopes_used` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `phone_used` varchar(50) NOT NULL DEFAULT '0',
  `id_redenvelops` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result_5d`
--

CREATE TABLE `result_5d` (
  `id` int(11) NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(20) DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `stage` bigint(20) DEFAULT 0,
  `result` varchar(5) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `fee` int(11) NOT NULL DEFAULT 0,
  `get` int(11) NOT NULL DEFAULT 0,
  `game` int(11) NOT NULL,
  `join_bet` varchar(10) NOT NULL DEFAULT '0',
  `bet` varchar(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result_k3`
--

CREATE TABLE `result_k3` (
  `id` int(11) NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '0',
  `invite` varchar(50) NOT NULL DEFAULT '0',
  `stage` varchar(50) NOT NULL DEFAULT '0',
  `result` varchar(5) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `fee` int(11) NOT NULL DEFAULT 0,
  `get` int(11) NOT NULL DEFAULT 0,
  `game` varchar(5) NOT NULL DEFAULT '0',
  `join_bet` varchar(100) NOT NULL DEFAULT '0',
  `typeGame` varchar(100) NOT NULL DEFAULT '0',
  `bet` varchar(100) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roses`
--

CREATE TABLE `roses` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '0',
  `invite` varchar(50) NOT NULL DEFAULT '0',
  `f1` int(11) NOT NULL DEFAULT 0,
  `f2` int(11) NOT NULL DEFAULT 0,
  `f3` int(11) NOT NULL DEFAULT 0,
  `f4` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `time` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `turn_over`
--

CREATE TABLE `turn_over` (
  `id` int(11) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `invite` varchar(250) NOT NULL,
  `daily_turn_over` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_turn_over` decimal(20,2) NOT NULL DEFAULT 0.00,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `token` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `plain_password` varchar(250) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL DEFAULT 0,
  `roses_f1` int(11) NOT NULL DEFAULT 0,
  `roses_f` int(11) NOT NULL DEFAULT 0,
  `roses_today` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `ctv` varchar(50) NOT NULL DEFAULT '0',
  `veri` int(11) NOT NULL DEFAULT 0,
  `otp` varchar(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` datetime NOT NULL DEFAULT current_timestamp(),
  `time` varchar(50) NOT NULL DEFAULT '0',
  `time_otp` varchar(50) NOT NULL DEFAULT '0',
  `user_level` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_user`, `phone`, `token`, `name_user`, `password`, `plain_password`, `money`, `total_money`, `roses_f1`, `roses_f`, `roses_today`, `level`, `rank`, `code`, `invite`, `ctv`, `veri`, `otp`, `ip_address`, `status`, `today`, `time`, `time_otp`, `user_level`) VALUES
(282, '26289', '9934605090', 'c7b6729e0502c41215ae115f01d49350', 'Member93658', 'ba9b0b975048a210426e8e2d5c820add', '89862903', 2522, 0, 0, 0, 0, 1, 1, 'uVxnY75353', 'SUTFD37284', '000000', 1, '964411', '::1', 1, '2024-02-25 18:41:52', '1708886512413', '0', 1),
(283, '78588', '0000000000', '0339658072fc5c42d61ae2ceb6bed44f', 'Member17215', '827ccb0eea8a706c4c34a16891f84e7b', '12345', 0, 0, 0, 0, 0, 0, 0, 'KxFiI79659', 'uVxnY75353', '000000', 1, '448487', '::1', 1, '2024-02-26 09:45:54', '1708940754735', '0', 0),
(284, '89708', '9999999999', '4bc78b070d8e6bd4813940fc554163f8', 'Member88772', 'e0ec043b3f9e198ec09041687e4d4e8d', '9999999999', 0, 0, 0, 0, 0, 0, 0, 'zDJEd83874', 'KxFiI79659', '000000', 1, '681537', '::1', 1, '2024-02-26 09:54:42', '1708941281792', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_bank`
--

CREATE TABLE `user_bank` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `name_bank` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(100) DEFAULT '0',
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `tp` varchar(100) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `sdt` varchar(20) DEFAULT '0',
  `tinh` varchar(100) NOT NULL DEFAULT '0',
  `chi_nhanh` varchar(100) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wingo`
--

CREATE TABLE `wingo` (
  `id` int(11) NOT NULL,
  `period` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `game` varchar(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `wingo`
--

INSERT INTO `wingo` (`id`, `period`, `amount`, `game`, `status`, `time`) VALUES
(323525, '2022070115146', 0, 'wingo3', 0, '1708952581312'),
(323527, '2022070115146', 0, 'wingo3', 0, '1708952582038'),
(323530, '2022070115146', 0, 'wingo3', 0, '1708952582080'),
(323927, '2022070111573', 0, 'wingo10', 0, '1709743200848'),
(323935, '2022070115065', 3, 'wingo3', 1, '1717428780864'),
(323937, '2022070113114', 0, 'wingo5', 0, '1717428900808'),
(323938, '2022070125596', 6, 'wingo', 1, '1717428900810'),
(323939, '2022070115066', 6, 'wingo3', 1, '1717428961031'),
(323940, '2022070125597', 2, 'wingo', 1, '1717428961031'),
(323941, '2022070125598', 2, 'wingo', 1, '1717429020601'),
(323942, '2022070125599', 3, 'wingo', 1, '1717429081107'),
(323943, '2022070115067', 0, 'wingo3', 0, '1717429140437'),
(323944, '2022070125600', 0, 'wingo', 0, '1717429140446');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `name_bank` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(100) NOT NULL DEFAULT '0',
  `ifsc` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL DEFAULT '0',
  `tp` varchar(211) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `5d`
--
ALTER TABLE `5d`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance_transfer`
--
ALTER TABLE `balance_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_recharge`
--
ALTER TABLE `bank_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crashbetrecord`
--
ALTER TABLE `crashbetrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_details`
--
ALTER TABLE `financial_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k3`
--
ALTER TABLE `k3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minutes_1`
--
ALTER TABLE `minutes_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point_list`
--
ALTER TABLE `point_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redenvelopes`
--
ALTER TABLE `redenvelopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redenvelopes_used`
--
ALTER TABLE `redenvelopes_used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_5d`
--
ALTER TABLE `result_5d`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_k3`
--
ALTER TABLE `result_k3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roses`
--
ALTER TABLE `roses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turn_over`
--
ALTER TABLE `turn_over`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bank`
--
ALTER TABLE `user_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wingo`
--
ALTER TABLE `wingo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `5d`
--
ALTER TABLE `5d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322064;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `balance_transfer`
--
ALTER TABLE `balance_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_recharge`
--
ALTER TABLE `bank_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crashbetrecord`
--
ALTER TABLE `crashbetrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_details`
--
ALTER TABLE `financial_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k3`
--
ALTER TABLE `k3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322126;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `minutes_1`
--
ALTER TABLE `minutes_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `point_list`
--
ALTER TABLE `point_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redenvelopes`
--
ALTER TABLE `redenvelopes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redenvelopes_used`
--
ALTER TABLE `redenvelopes_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_5d`
--
ALTER TABLE `result_5d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_k3`
--
ALTER TABLE `result_k3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roses`
--
ALTER TABLE `roses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turn_over`
--
ALTER TABLE `turn_over`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `user_bank`
--
ALTER TABLE `user_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wingo`
--
ALTER TABLE `wingo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323945;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
